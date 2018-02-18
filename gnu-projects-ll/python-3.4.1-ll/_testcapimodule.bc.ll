; ModuleID = './_testcapimodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, {}*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, {}*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyDateTime_CAPI = type { %struct._typeobject*, %struct._typeobject*, %struct._typeobject*, %struct._typeobject*, %struct._typeobject*, %struct._object* (i32, i32, i32, %struct._typeobject*)*, %struct._object* (i32, i32, i32, i32, i32, i32, i32, %struct._object*, %struct._typeobject*)*, %struct._object* (i32, i32, i32, i32, %struct._object*, %struct._typeobject*)*, %struct._object* (i32, i32, i32, i32, %struct._typeobject*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)* }
%struct.triple = type { i64, i64, i32 }
%struct.known_capsule = type { i8*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyCompilerFlags = type { i32 }
%struct.test_c_thread_t = type { i8*, i8*, %struct._object* }
%struct.alloc_hook_t = type { %struct.PyMemAllocator, i64, i8*, i64, i8* }
%struct.PyMemAllocator = type { i8*, i8* (i8*, i64)*, i8* (i8*, i8*, i64)*, void (i8*, i8*)* }
%struct.test_structmembers = type { %struct._object, %struct.all_structmembers }
%struct.all_structmembers = type { i8, i8, i8, i16, i16, i32, i32, i64, i64, i64, float, double, [6 x i8], i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_testcapimodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([101 x %struct.PyMethodDef], [101 x %struct.PyMethodDef]* bitcast (<{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @TestMethods to [101 x %struct.PyMethodDef]*), i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"_test_structmembersType\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CHAR_MAX\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CHAR_MIN\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"UCHAR_MAX\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SHRT_MAX\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SHRT_MIN\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"USHRT_MAX\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INT_MAX\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"INT_MIN\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"UINT_MAX\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"LONG_MAX\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"LONG_MIN\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ULONG_MAX\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"FLT_MAX\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"FLT_MIN\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"DBL_MAX\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"DBL_MIN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"LLONG_MAX\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"LLONG_MIN\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"ULLONG_MAX\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"PY_SSIZE_T_MAX\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"PY_SSIZE_T_MIN\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SIZEOF_PYGC_HEAD\00", align 1
@PyInstanceMethod_Type = external global %struct._typeobject, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"instancemethod\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"the_number_three\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"_testcapi.error\00", align 1
@TestError = internal global %struct._object* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"_testcapi\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"raise_exception\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"raise_memoryerror\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"test_config\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"test_sizeof_c_types\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"test_datetime_capi\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"test_list_api\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"test_dict_iteration\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"test_lazy_hash_inheritance\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"test_long_api\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"test_xincref_doesnt_leak\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"test_incref_doesnt_leak\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"test_xdecref_doesnt_leak\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"test_decref_doesnt_leak\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"test_incref_decref_API\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"test_long_and_overflow\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"test_long_as_double\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"test_long_as_size_t\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"test_long_numbits\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"test_k_code\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"test_empty_argparse\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"parse_tuple_and_keywords\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"test_null_strings\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"test_string_from_format\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"test_with_docstring\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"This is a pretty normal docstring.\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"test_string_to_double\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"test_unicode_compare_with_ascii\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"test_capsule\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"getargs_tuple\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"getargs_keywords\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"getargs_keyword_only\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"getargs_b\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"getargs_B\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"getargs_h\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"getargs_H\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"getargs_I\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"getargs_k\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"getargs_i\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"getargs_l\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"getargs_n\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"getargs_p\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"getargs_L\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"getargs_K\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"test_longlong_api\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"test_long_long_and_overflow\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"test_L_code\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"getargs_c\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"getargs_s\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"getargs_s_star\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"getargs_s_hash\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"getargs_z\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"getargs_z_star\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"getargs_z_hash\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"getargs_y\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"getargs_y_star\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"getargs_y_hash\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"getargs_u\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"getargs_u_hash\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"getargs_Z\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"getargs_Z_hash\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"getargs_w_star\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"codec_incrementalencoder\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"codec_incrementaldecoder\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"test_s_code\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"test_u_code\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"test_Z_code\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"test_widechar\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"unicode_aswidechar\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"unicode_aswidecharstring\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"unicode_encodedecimal\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"unicode_transformdecimaltoascii\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"unicode_legacy_string\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"_test_thread_state\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"_pending_threadfunc\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"profile_int\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"traceback_print\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"exception_print\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"set_exc_info\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"argparsing\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"code_newempty\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"make_exception_with_doc\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"make_memoryview_from_NULL_pointer\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"crash_no_current_thread\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"run_in_subinterp\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"pytime_object_to_time_t\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"pytime_object_to_timeval\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"pytime_object_to_timespec\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"with_tp_del\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"test_pymem\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"test_pymem_alloc0\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"test_pymem_setallocators\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"test_pyobject_setallocators\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"no_docstring\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"docstring_empty\00", align 1
@docstring_empty = internal global [1 x i8] zeroinitializer, align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"docstring_no_signature\00", align 1
@docstring_no_signature = internal global [33 x i8] c"This docstring has no signature.\00", align 16
@.str.124 = private unnamed_addr constant [33 x i8] c"docstring_with_invalid_signature\00", align 1
@docstring_with_invalid_signature = internal global [92 x i8] c"docstring_with_invalid_signature($module, /, boo)\0A\0AThis docstring has an invalid signature.\00", align 16
@.str.125 = private unnamed_addr constant [34 x i8] c"docstring_with_invalid_signature2\00", align 1
@docstring_with_invalid_signature2 = internal global [102 x i8] c"docstring_with_invalid_signature2($module, /, boo)\0A\0A--\0A\0AThis docstring also has an invalid signature.\00", align 16
@.str.126 = private unnamed_addr constant [25 x i8] c"docstring_with_signature\00", align 1
@docstring_with_signature = internal global [84 x i8] c"docstring_with_signature($module, /, sig)\0A--\0A\0AThis docstring has a valid signature.\00", align 16
@.str.127 = private unnamed_addr constant [44 x i8] c"docstring_with_signature_and_extra_newlines\00", align 1
@docstring_with_signature_and_extra_newlines = internal global [134 x i8] c"docstring_with_signature_and_extra_newlines($module, /, parameter)\0A--\0A\0A\0AThis docstring has a valid signature and some extra newlines.\00", align 16
@.str.128 = private unnamed_addr constant [39 x i8] c"docstring_with_signature_with_defaults\00", align 1
@docstring_with_signature_with_defaults = internal global [308 x i8] c"docstring_with_signature_with_defaults(module, s='avocado',\0A        b=b'bytes', d=3.14, i=35, n=None, t=True, f=False,\0A        local=the_number_three, sys=sys.maxsize,\0A        exp=sys.maxsize - 1)\0A--\0A\0A\0A\0AThis docstring has a valid signature with parameters,\0Aand the parameters take defaults of varying types.\00", align 16
@.str.129 = private unnamed_addr constant [27 x i8] c"call_in_temporary_c_thread\00", align 1
@.str.130 = private unnamed_addr constant [37 x i8] c"set_error_class(error_class) -> None\00", align 1
@TestMethods = internal global <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }> <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @raise_exception, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @raise_memoryerror to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_config to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_sizeof_c_types to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_datetime_capi, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_list_api to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_dict_iteration to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_lazy_hash_inheritance to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_api to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_xincref_doesnt_leak to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_incref_doesnt_leak to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_xdecref_doesnt_leak to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_decref_doesnt_leak to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_incref_decref_API to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_and_overflow to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_as_double to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_as_size_t to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_numbits to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_k_code to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_empty_argparse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @parse_tuple_and_keywords, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_null_strings to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_string_from_format, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_string_to_double to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_unicode_compare_with_ascii to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_capsule, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_tuple, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @getargs_keywords to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @getargs_keyword_only to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_b, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_B, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_h, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_H, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_I, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_k, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_i, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_l, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_n, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_p, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_L, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_K, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_longlong_api, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_long_long_and_overflow to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_L_code to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_c, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_s, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_s_star, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_s_hash, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_z, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_z_star, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_z_hash, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_y, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_y_star, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_y_hash, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_u, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_u_hash, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_Z, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_Z_hash, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getargs_w_star, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_incrementalencoder, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_incrementaldecoder, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_s_code to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_u_code to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_Z_code to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_widechar to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_aswidechar, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_aswidecharstring, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_encodedecimal, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_transformdecimaltoascii, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_legacy_string, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_thread_state, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pending_threadfunc, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @profile_int, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @traceback_print, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @exception_print, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_set_exc_info, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @argparsing, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @code_newempty, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @make_exception_with_doc to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.110, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @make_memoryview_from_NULL_pointer to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @crash_no_current_thread to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @run_in_subinterp, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.113, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_pytime_object_to_time_t, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_pytime_object_to_timeval, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.115, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @test_pytime_object_to_timespec, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @with_tp_del, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_pymem_alloc0 to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_pymem_setrawallocators to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.119, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_pymem_setallocators to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_pyobject_setallocators to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.122, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @docstring_empty, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @docstring_no_signature, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.124, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @docstring_with_invalid_signature, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.125, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @docstring_with_invalid_signature2, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.126, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @docstring_with_signature, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.127, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @docstring_with_signature_and_extra_newlines, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.128, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @test_with_docstring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([308 x i8], [308 x i8]* @docstring_with_signature_with_defaults, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @call_in_temporary_c_thread, i32 8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i32 0, i32 0) }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } zeroinitializer }>, align 16
@.str.131 = private unnamed_addr constant [19 x i8] c"Oi:raise_exception\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyDateTimeAPI = internal global %struct.PyDateTime_CAPI* null, align 8
@test_run_counter = internal global i32 0, align 4
@PyExc_AssertionError = external global %struct._object*, align 8
@.str.132 = private unnamed_addr constant [36 x i8] c"PyDateTime_CAPI somehow initialized\00", align 1
@.str.133 = private unnamed_addr constant [23 x i8] c"datetime.datetime_CAPI\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"test_list_api: reverse screwed up\00", align 1
@.str.135 = private unnamed_addr constant [48 x i8] c"test_dict_iteration: dict iteration went wrong \00", align 1
@.str.136 = private unnamed_addr constant [52 x i8] c"test_lazy_hash_inheritance: failed to create object\00", align 1
@.str.137 = private unnamed_addr constant [54 x i8] c"test_lazy_hash_inheritance: type initialised too soon\00", align 1
@.str.138 = private unnamed_addr constant [50 x i8] c"test_lazy_hash_inheritance: could not hash object\00", align 1
@.str.139 = private unnamed_addr constant [59 x i8] c"test_lazy_hash_inheritance: type not initialised by hash()\00", align 1
@.str.140 = private unnamed_addr constant [53 x i8] c"test_lazy_hash_inheritance: unexpected hash function\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"unsigned unexpected null result\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"unsigned unexpected -1 result\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"unsigned output != input\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"signed unexpected null result\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"signed unexpected -1 result\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"signed output != input\00", align 1
@.str.147 = private unnamed_addr constant [37 x i8] c"unexpected NULL from PyLong_FromLong\00", align 1
@.str.148 = private unnamed_addr constant [39 x i8] c"unexpected NULL from PyNumber_Negative\00", align 1
@.str.149 = private unnamed_addr constant [41 x i8] c"PyLong_AsUnsignedXXX(-1) didn't complain\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.150 = private unnamed_addr constant [67 x i8] c"PyLong_AsUnsignedXXX(-1) raised something other than OverflowError\00", align 1
@.str.151 = private unnamed_addr constant [37 x i8] c"unexpected NULL from PyNumber_Lshift\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"PyLong_AsUnsignedXXX(2**NBITS) didn't complain\00", align 1
@.str.153 = private unnamed_addr constant [73 x i8] c"PyLong_AsUnsignedXXX(2**NBITS) raised something other than OverflowError\00", align 1
@.str.154 = private unnamed_addr constant [37 x i8] c"unexpected NULL from PyNumber_Rshift\00", align 1
@.str.155 = private unnamed_addr constant [43 x i8] c"PyLong_AsXXX(2**(NBITS-1)) didn't complain\00", align 1
@.str.156 = private unnamed_addr constant [69 x i8] c"PyLong_AsXXX(2**(NBITS-1)) raised something other than OverflowError\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"unexpected NULL from PyNumber_Subtract\00", align 1
@.str.158 = private unnamed_addr constant [46 x i8] c"PyLong_AsXXX(-2**(NBITS-1)-1) didn't complain\00", align 1
@.str.159 = private unnamed_addr constant [72 x i8] c"PyLong_AsXXX(-2**(NBITS-1)-1) raised something other than OverflowError\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"PyLong_AsXXX(None) didn't complain\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.161 = private unnamed_addr constant [57 x i8] c"PyLong_AsXXX(None) raised something other than TypeError\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.163 = private unnamed_addr constant [25 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.164 = private unnamed_addr constant [31 x i8] c"return value was not set to -1\00", align 1
@.str.165 = private unnamed_addr constant [26 x i8] c"overflow was not set to 1\00", align 1
@.str.166 = private unnamed_addr constant [26 x i8] c"-FFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"overflow was not set to -1\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.169 = private unnamed_addr constant [27 x i8] c"expected return value 0xFF\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"overflow was not cleared\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"-FF\00", align 1
@.str.172 = private unnamed_addr constant [29 x i8] c"overflow was set incorrectly\00", align 1
@.str.173 = private unnamed_addr constant [31 x i8] c"expected return value LONG_MAX\00", align 1
@.str.174 = private unnamed_addr constant [31 x i8] c"expected return value LONG_MIN\00", align 1
@.str.175 = private unnamed_addr constant [38 x i8] c"PyLong_AsDouble(None) didn't complain\00", align 1
@.str.176 = private unnamed_addr constant [60 x i8] c"PyLong_AsDouble(None) raised something other than TypeError\00", align 1
@.str.177 = private unnamed_addr constant [38 x i8] c"PyLong_AsSize_t(None) didn't complain\00", align 1
@.str.178 = private unnamed_addr constant [60 x i8] c"PyLong_AsSize_t(None) raised something other than TypeError\00", align 1
@.str.179 = private unnamed_addr constant [39 x i8] c"PyLong_AsSsize_t(None) didn't complain\00", align 1
@.str.180 = private unnamed_addr constant [61 x i8] c"PyLong_AsSsize_t(None) raised something other than TypeError\00", align 1
@test_long_numbits.testcases = private unnamed_addr constant [15 x %struct.triple] [%struct.triple zeroinitializer, %struct.triple { i64 1, i64 1, i32 1 }, %struct.triple { i64 -1, i64 1, i32 -1 }, %struct.triple { i64 2, i64 2, i32 1 }, %struct.triple { i64 -2, i64 2, i32 -1 }, %struct.triple { i64 3, i64 2, i32 1 }, %struct.triple { i64 -3, i64 2, i32 -1 }, %struct.triple { i64 4, i64 3, i32 1 }, %struct.triple { i64 -4, i64 3, i32 -1 }, %struct.triple { i64 32767, i64 15, i32 1 }, %struct.triple { i64 -32767, i64 15, i32 -1 }, %struct.triple { i64 65535, i64 16, i32 1 }, %struct.triple { i64 -65535, i64 16, i32 -1 }, %struct.triple { i64 268435455, i64 28, i32 1 }, %struct.triple { i64 -268435455, i64 28, i32 -1 }], align 16
@.str.181 = private unnamed_addr constant [33 x i8] c"wrong result for _PyLong_NumBits\00", align 1
@.str.182 = private unnamed_addr constant [30 x i8] c"wrong result for _PyLong_Sign\00", align 1
@.str.183 = private unnamed_addr constant [70 x i8] c"PyLong_AsUnsignedLongMask() returned wrong value for long 0xFFF...FFF\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"k:test_k_code\00", align 1
@.str.185 = private unnamed_addr constant [49 x i8] c"k code returned wrong value for long 0xFFF...FFF\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"-FFFFFFFF000000000000000042\00", align 1
@.str.187 = private unnamed_addr constant [52 x i8] c"k code returned wrong value for long -0xFFF..000042\00", align 1
@test_empty_argparse.kwlist = internal global [1 x i8*] zeroinitializer, align 8
@.str.188 = private unnamed_addr constant [22 x i8] c"|:test_empty_argparse\00", align 1
@.str.189 = private unnamed_addr constant [30 x i8] c"OOyO:parse_tuple_and_keywords\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.190 = private unnamed_addr constant [68 x i8] c"parse_tuple_and_keywords: sub_keywords must be either list or tuple\00", align 1
@.str.191 = private unnamed_addr constant [60 x i8] c"parse_tuple_and_keywords: too many keywords in sub_keywords\00", align 1
@.str.192 = private unnamed_addr constant [75 x i8] c"parse_tuple_and_keywords: could not convert keywords[%zd] to narrow string\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"%d failed at 1\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"%ld failed at 1\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"%zd\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"%zd failed at 1\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"%u failed at 1\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"%lu failed at 1\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"%zu failed at 1\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"%llu failed at 1\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"%lld failed at 1\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.211 = private unnamed_addr constant [34 x i8] c"conversion of 0.1 to float failed\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"1.234\00", align 1
@.str.213 = private unnamed_addr constant [36 x i8] c"conversion of 1.234 to float failed\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"-1.35\00", align 1
@.str.215 = private unnamed_addr constant [36 x i8] c"conversion of -1.35 to float failed\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c".1e01\00", align 1
@.str.217 = private unnamed_addr constant [36 x i8] c"conversion of .1e01 to float failed\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"2.e-2\00", align 1
@.str.219 = private unnamed_addr constant [36 x i8] c"conversion of 2.e-2 to float failed\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c" 0.1\00", align 1
@.str.221 = private unnamed_addr constant [43 x i8] c"conversion of  0.1 didn't raise ValueError\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"\09\0A-3\00", align 1
@.str.223 = private unnamed_addr constant [43 x i8] c"conversion of \09\0A-3 didn't raise ValueError\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c".123 \00", align 1
@.str.225 = private unnamed_addr constant [44 x i8] c"conversion of .123  didn't raise ValueError\00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.227 = private unnamed_addr constant [41 x i8] c"conversion of 3\0A didn't raise ValueError\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"123abc\00", align 1
@.str.229 = private unnamed_addr constant [45 x i8] c"conversion of 123abc didn't raise ValueError\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"str\00\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.232 = private unnamed_addr constant [67 x i8] c"Python string ending in NULL should not compare equal to c string.\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"_socket.CAPI\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"_socket\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"CAPI\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"_curses._C_API\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"_curses\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"_C_API\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"datetime_CAPI\00", align 1
@test_capsule.known_capsules = private unnamed_addr constant [4 x %struct.known_capsule] [%struct.known_capsule { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i32 0, i32 0) }, %struct.known_capsule { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0) }, %struct.known_capsule { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.240, i32 0, i32 0) }, %struct.known_capsule zeroinitializer], align 16
@capsule_pointer = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.252, i32 0, i32 0), align 8
@capsule_name = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.253, i32 0, i32 0), align 8
@capsule_context = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.258, i32 0, i32 0), align 8
@capsule_error = internal global i8* null, align 8
@capsule_destructor_call_count = internal global i32 0, align 4
@.str.241 = private unnamed_addr constant [23 x i8] c"destructor not called!\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"the wrong name\00", align 1
@.str.244 = private unnamed_addr constant [53 x i8] c"PyCapsule_GetPointer should have failed but did not!\00", align 1
@.str.245 = private unnamed_addr constant [68 x i8] c"PyCapsule_GetPointer should not have returned the internal pointer!\00", align 1
@.str.246 = private unnamed_addr constant [68 x i8] c"PyCapsule_GetPointer should have returned NULL pointer but did not!\00", align 1
@.str.247 = private unnamed_addr constant [48 x i8] c"destructor called when it should not have been!\00", align 1
@test_capsule.buffer = internal global [256 x i8] zeroinitializer, align 16
@.str.248 = private unnamed_addr constant [32 x i8] c"%s module: \22%s\22 attribute: \22%s\22\00", align 1
@.str.249 = private unnamed_addr constant [49 x i8] c"PyCapsule_GetPointer returned NULL unexpectedly!\00", align 1
@.str.250 = private unnamed_addr constant [40 x i8] c"weebles wobble but they don't fall down\00", align 1
@.str.251 = private unnamed_addr constant [68 x i8] c"PyCapsule_GetPointer should not have returned its internal pointer!\00", align 1
@.str.252 = private unnamed_addr constant [16 x i8] c"capsule pointer\00", align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"capsule name\00", align 1
@.str.254 = private unnamed_addr constant [37 x i8] c"context did not match in destructor!\00", align 1
@.str.255 = private unnamed_addr constant [49 x i8] c"destructor did not match in destructor!  (woah!)\00", align 1
@.str.256 = private unnamed_addr constant [34 x i8] c"name did not match in destructor!\00", align 1
@.str.257 = private unnamed_addr constant [37 x i8] c"pointer did not match in destructor!\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"capsule context\00", align 1
@.str.259 = private unnamed_addr constant [6 x i8] c"i(ii)\00", align 1
@.str.260 = private unnamed_addr constant [4 x i8] c"iii\00", align 1
@getargs_keywords.keywords = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i32 0, i32 0), i8* null], align 16
@.str.261 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"arg3\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"arg4\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"arg5\00", align 1
@getargs_keywords.fmt = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.266, i32 0, i32 0), align 8
@.str.266 = private unnamed_addr constant [20 x i8] c"(ii)i|(i(ii))(iii)i\00", align 1
@getargs_keywords.int_args = private unnamed_addr constant [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.267 = private unnamed_addr constant [11 x i8] c"iiiiiiiiii\00", align 1
@getargs_keyword_only.keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.270, i32 0, i32 0), i8* null], align 16
@.str.268 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.269 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"keyword_only\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"i|i$i\00", align 1
@.str.272 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.273 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.274 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.275 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.276 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.277 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.278 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.279 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.280 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.281 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.282 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.283 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.284 = private unnamed_addr constant [35 x i8] c"expected return value PY_LLONG_MAX\00", align 1
@.str.285 = private unnamed_addr constant [35 x i8] c"expected return value PY_LLONG_MIN\00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"L:test_L_code\00", align 1
@.str.287 = private unnamed_addr constant [40 x i8] c"L code returned wrong value for long 42\00", align 1
@.str.288 = private unnamed_addr constant [39 x i8] c"L code returned wrong value for int 42\00", align 1
@.str.289 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.290 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.291 = private unnamed_addr constant [3 x i8] c"s*\00", align 1
@.str.292 = private unnamed_addr constant [3 x i8] c"s#\00", align 1
@.str.293 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.294 = private unnamed_addr constant [3 x i8] c"z*\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"z#\00", align 1
@.str.296 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"y*\00", align 1
@.str.298 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@.str.299 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.300 = private unnamed_addr constant [3 x i8] c"u#\00", align 1
@.str.301 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.302 = private unnamed_addr constant [3 x i8] c"Z#\00", align 1
@.str.303 = private unnamed_addr constant [18 x i8] c"w*:getargs_w_star\00", align 1
@.str.304 = private unnamed_addr constant [28 x i8] c"s|s:test_incrementalencoder\00", align 1
@.str.305 = private unnamed_addr constant [28 x i8] c"s|s:test_incrementaldecoder\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"t\EAte\00", align 1
@.str.307 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.308 = private unnamed_addr constant [15 x i8] c"s:test_s_code1\00", align 1
@.str.309 = private unnamed_addr constant [15 x i8] c"z:test_s_code2\00", align 1
@_Py_ascii_whitespace = external constant [0 x i8], align 1
@x = internal global i32 0, align 4
@.str.310 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"u:test_u_code\00", align 1
@.str.313 = private unnamed_addr constant [40 x i8] c"u code returned wrong value for u'test'\00", align 1
@.str.314 = private unnamed_addr constant [15 x i8] c"u#:test_u_code\00", align 1
@.str.315 = private unnamed_addr constant [42 x i8] c"u# code returned wrong values for u'test'\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"ZZ:test_Z_code\00", align 1
@.str.317 = private unnamed_addr constant [39 x i8] c"Z code returned wrong value for 'test'\00", align 1
@.str.318 = private unnamed_addr constant [37 x i8] c"Z code returned wrong value for None\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"Z#Z#:test_Z_code\00", align 1
@.str.320 = private unnamed_addr constant [41 x i8] c"Z# code returned wrong values for 'test'\00", align 1
@.str.321 = private unnamed_addr constant [40 x i8] c"Z# code returned wrong values for None'\00", align 1
@test_widechar.wtext = internal constant [2 x i32] [i32 1092557, i32 0], align 4
@test_widechar.invalid = internal constant [1 x i32] [i32 1114112], align 4
@.str.322 = private unnamed_addr constant [5 x i8] c"\F4\8A\AF\8D\00", align 1
@.str.323 = private unnamed_addr constant [50 x i8] c"wide string and utf8 string have different length\00", align 1
@.str.324 = private unnamed_addr constant [42 x i8] c"wide string and utf8 string are different\00", align 1
@.str.325 = private unnamed_addr constant [53 x i8] c"PyUnicode_FromWideChar(L\22\5CU00110000\22, 1) didn't fail\00", align 1
@.str.326 = private unnamed_addr constant [52 x i8] c"PyUnicode_FromUnicode(L\22\5CU00110000\22, 1) didn't fail\00", align 1
@.str.327 = private unnamed_addr constant [30 x i8] c"PyUnicode_Ready() didn't fail\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"Un\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"(Nn)\00", align 1
@.str.330 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.331 = private unnamed_addr constant [5 x i8] c"u#|s\00", align 1
@.str.332 = private unnamed_addr constant [20 x i8] c"O:test_thread_state\00", align 1
@.str.333 = private unnamed_addr constant [28 x i8] c"'%s' object is not callable\00", align 1
@thread_done = internal global i8* null, align 8
@.str.334 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.335 = private unnamed_addr constant [19 x i8] c"Test %d: %d.%06ds\0A\00", align 1
@.str.336 = private unnamed_addr constant [19 x i8] c"OO:traceback_print\00", align 1
@.str.337 = private unnamed_addr constant [18 x i8] c"O:exception_print\00", align 1
@.str.338 = private unnamed_addr constant [34 x i8] c"an exception instance is required\00", align 1
@.str.339 = private unnamed_addr constant [22 x i8] c"OOO:test_set_exc_info\00", align 1
@str2 = internal global %struct._object* null, align 8
@str1 = internal global %struct._object* null, align 8
@.str.340 = private unnamed_addr constant [5 x i8] c"O&O&\00", align 1
@.str.341 = private unnamed_addr constant [18 x i8] c"ssi:code_newempty\00", align 1
@make_exception_with_doc.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.345, i32 0, i32 0), i8* null], align 16
@.str.342 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.343 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.344 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.346 = private unnamed_addr constant [30 x i8] c"s|sOO:make_exception_with_doc\00", align 1
@.str.347 = private unnamed_addr constant [19 x i8] c"s:run_in_subinterp\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.348 = private unnamed_addr constant [32 x i8] c"sub-interpreter creation failed\00", align 1
@.str.349 = private unnamed_addr constant [27 x i8] c"Oi:pytime_object_to_time_t\00", align 1
@.str.350 = private unnamed_addr constant [17 x i8] c"invalid rounding\00", align 1
@.str.351 = private unnamed_addr constant [28 x i8] c"Oi:pytime_object_to_timeval\00", align 1
@.str.352 = private unnamed_addr constant [3 x i8] c"Nl\00", align 1
@.str.353 = private unnamed_addr constant [29 x i8] c"Oi:pytime_object_to_timespec\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"O:with_tp_del\00", align 1
@.str.355 = private unnamed_addr constant [27 x i8] c"heap type expected, got %R\00", align 1
@slot_tp_del.PyId___tp_del__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.356, i32 0, i32 0), %struct._object* null }, align 8
@.str.356 = private unnamed_addr constant [11 x i8] c"__tp_del__\00", align 1
@.str.357 = private unnamed_addr constant [29 x i8] c"PyMem_Malloc(0) returns NULL\00", align 1
@.str.358 = private unnamed_addr constant [32 x i8] c"PyObject_Malloc(0) returns NULL\00", align 1
@.str.359 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.360 = private unnamed_addr constant [20 x i8] c"malloc invalid size\00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@.str.362 = private unnamed_addr constant [27 x i8] c"realloc invalid parameters\00", align 1
@.str.363 = private unnamed_addr constant [21 x i8] c"free invalid pointer\00", align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"could not allocate lock\00", align 1
@.str.365 = private unnamed_addr constant [27 x i8] c"unable to start the thread\00", align 1
@.str.366 = private unnamed_addr constant [22 x i8] c"hashinheritancetester\00", align 1
@_HashInheritanceTester_Type = internal global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.366, i32 0, i32 0), i64 16, i64 0, void (%struct._object*)* bitcast (void (i8*)* @PyObject_Free to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.367 = private unnamed_addr constant [23 x i8] c"test_structmembersType\00", align 1
@.str.368 = private unnamed_addr constant [39 x i8] c"Type containing all structmember types\00", align 1
@test_members = internal global [16 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.369, i32 0, i32 0), i32 14, i64 16, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.370, i32 0, i32 0), i32 8, i64 17, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.371, i32 0, i32 0), i32 9, i64 18, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.372, i32 0, i32 0), i32 0, i64 20, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.373, i32 0, i32 0), i32 10, i64 22, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.374, i32 0, i32 0), i32 1, i64 24, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.375, i32 0, i32 0), i32 11, i64 28, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.376, i32 0, i32 0), i32 2, i64 32, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.377, i32 0, i32 0), i32 12, i64 40, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.378, i32 0, i32 0), i32 19, i64 48, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.379, i32 0, i32 0), i32 3, i64 56, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.380, i32 0, i32 0), i32 4, i64 64, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.381, i32 0, i32 0), i32 13, i64 72, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.382, i32 0, i32 0), i32 17, i64 80, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.383, i32 0, i32 0), i32 18, i64 88, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@test_structmembersType = internal global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.367, i32 0, i32 0), i64 96, i64 0, void (%struct._object*)* @test_structmembers_free, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.368, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([16 x %struct.PyMemberDef], [16 x %struct.PyMemberDef]* @test_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @test_structmembers_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.369 = private unnamed_addr constant [7 x i8] c"T_BOOL\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"T_BYTE\00", align 1
@.str.371 = private unnamed_addr constant [8 x i8] c"T_UBYTE\00", align 1
@.str.372 = private unnamed_addr constant [8 x i8] c"T_SHORT\00", align 1
@.str.373 = private unnamed_addr constant [9 x i8] c"T_USHORT\00", align 1
@.str.374 = private unnamed_addr constant [6 x i8] c"T_INT\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"T_UINT\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"T_LONG\00", align 1
@.str.377 = private unnamed_addr constant [8 x i8] c"T_ULONG\00", align 1
@.str.378 = private unnamed_addr constant [11 x i8] c"T_PYSSIZET\00", align 1
@.str.379 = private unnamed_addr constant [8 x i8] c"T_FLOAT\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"T_DOUBLE\00", align 1
@.str.381 = private unnamed_addr constant [17 x i8] c"T_STRING_INPLACE\00", align 1
@.str.382 = private unnamed_addr constant [11 x i8] c"T_LONGLONG\00", align 1
@.str.383 = private unnamed_addr constant [12 x i8] c"T_ULONGLONG\00", align 1
@test_structmembers_new.keywords = internal global [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.383, i32 0, i32 0), i8* null], align 16
@test_structmembers_new.fmt = internal global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.384, i32 0, i32 0), align 8
@.str.384 = private unnamed_addr constant [18 x i8] c"|bbBhHiIlknfds#LK\00", align 1
@.str.385 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @pending_threadfunc(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %callable = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), %struct._object** %callable)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %callable, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %3 = load %struct._object*, %struct._object** %callable, align 8
  %4 = bitcast %struct._object* %3 to i8*
  %call2 = call i32 @Py_AddPendingCall(i32 (i8*)* @_pending_callback, i8* %4)
  store i32 %call2, i32* %r, align 4
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  %6 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
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
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc9 = add i64 %14, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc11 = add i64 %15, 1
  store i64 %inc11, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @Py_AddPendingCall(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_pending_callback(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %callable = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %callable, align 8
  %2 = load %struct._object*, %struct._object** %callable, align 8
  %call = call %struct._object* @PyObject_CallObject(%struct._object* %2, %struct._object* null)
  store %struct._object* %call, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %do.body.1
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp5, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt6, align 8
  %dec7 = add i64 %14, -1
  store i64 %dec7, i64* %ob_refcnt6, align 8
  %cmp8 = icmp ne i64 %dec7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13

if.else.10:                                       ; preds = %do.body.4
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  call void %17(%struct._object* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %do.body.1
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %19 = load %struct._object*, %struct._object** %r, align 8
  %cmp17 = icmp ne %struct._object* %19, null
  %cond = select i1 %cmp17, i32 0, i32 -1
  ret i32 %cond
}

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__testcapi() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_testcapimodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_HashInheritanceTester_Type to %struct._typeobject*), i32 0, i32 0, i32 0, i32 1), align 8
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @test_structmembersType to %struct._typeobject*), i32 0, i32 0, i32 0, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @test_structmembersType to %struct._typeobject*), i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @test_structmembersType to %struct._typeobject*), i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @test_structmembersType to %struct._typeobject*), i32 0, i32 0, i32 0))
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 127)
  %call3 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* %call2)
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call4 = call %struct._object* @PyLong_FromLong(i64 -128)
  %call5 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* %call4)
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call6 = call %struct._object* @PyLong_FromLong(i64 255)
  %call7 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._object* %call6)
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call %struct._object* @PyLong_FromLong(i64 32767)
  %call9 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* %call8)
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call %struct._object* @PyLong_FromLong(i64 -32768)
  %call11 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* %call10)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call %struct._object* @PyLong_FromLong(i64 65535)
  %call13 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._object* %call12)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call %struct._object* @PyLong_FromLong(i64 2147483647)
  %call15 = call i32 @PyModule_AddObject(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._object* %call14)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call %struct._object* @PyLong_FromLong(i64 -2147483648)
  %call17 = call i32 @PyModule_AddObject(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* %call16)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 4294967295)
  %call19 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct._object* %call18)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call %struct._object* @PyLong_FromLong(i64 9223372036854775807)
  %call21 = call i32 @PyModule_AddObject(%struct._object* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._object* %call20)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call %struct._object* @PyLong_FromLong(i64 -9223372036854775808)
  %call23 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* %call22)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call %struct._object* @PyLong_FromUnsignedLong(i64 -1)
  %call25 = call i32 @PyModule_AddObject(%struct._object* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct._object* %call24)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call %struct._object* @PyFloat_FromDouble(double 0x47EFFFFFE0000000)
  %call27 = call i32 @PyModule_AddObject(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* %call26)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call %struct._object* @PyFloat_FromDouble(double 0x3810000000000000)
  %call29 = call i32 @PyModule_AddObject(%struct._object* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %call28)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call30 = call %struct._object* @PyFloat_FromDouble(double 0x7FEFFFFFFFFFFFFF)
  %call31 = call i32 @PyModule_AddObject(%struct._object* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* %call30)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call %struct._object* @PyFloat_FromDouble(double 0x10000000000000)
  %call33 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* %call32)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call %struct._object* @PyLong_FromLongLong(i64 9223372036854775807)
  %call35 = call i32 @PyModule_AddObject(%struct._object* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %call34)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call %struct._object* @PyLong_FromLongLong(i64 -9223372036854775808)
  %call37 = call i32 @PyModule_AddObject(%struct._object* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %struct._object* %call36)
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call38 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 -1)
  %call39 = call i32 @PyModule_AddObject(%struct._object* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %struct._object* %call38)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call40 = call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807)
  %call41 = call i32 @PyModule_AddObject(%struct._object* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._object* %call40)
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call42 = call %struct._object* @PyLong_FromSsize_t(i64 -9223372036854775808)
  %call43 = call i32 @PyModule_AddObject(%struct._object* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), %struct._object* %call42)
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call44 = call %struct._object* @PyLong_FromSsize_t(i64 24)
  %call45 = call i32 @PyModule_AddObject(%struct._object* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), %struct._object* %call44)
  %25 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyInstanceMethod_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc46 = add i64 %25, 1
  store i64 %inc46, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyInstanceMethod_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call47 = call i32 @PyModule_AddObject(%struct._object* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyInstanceMethod_Type, i32 0, i32 0, i32 0))
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i64 3)
  %call49 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call49, %struct._object** @TestError, align 8
  %28 = load %struct._object*, %struct._object** @TestError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %inc50 = add i64 %29, 1
  store i64 %inc50, i64* %ob_refcnt, align 8
  %30 = load %struct._object*, %struct._object** %m, align 8
  %31 = load %struct._object*, %struct._object** @TestError, align 8
  %call51 = call i32 @PyModule_AddObject(%struct._object* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* %31)
  %32 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @raise_exception(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %exc_args = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %num_args = alloca i32, align 4
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), %struct._object** %exc, i32* %num_args)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %num_args, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call1, %struct._object** %exc_args, align 8
  %2 = load %struct._object*, %struct._object** %exc_args, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_args, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv7 = sext i32 %5 to i64
  %call8 = call %struct._object* @PyLong_FromLong(i64 %conv7)
  store %struct._object* %call8, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %cmp9 = icmp eq %struct._object* %6, null
  br i1 %cmp9, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %7 = load %struct._object*, %struct._object** %exc_args, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %v, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._object*, %struct._object** %exc_args, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %14, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %exc, align 8
  %20 = load %struct._object*, %struct._object** %exc_args, align 8
  call void @PyErr_SetObject(%struct._object* %19, %struct._object* %20)
  br label %do.body.17

do.body.17:                                       ; preds = %for.end
  %21 = load %struct._object*, %struct._object** %exc_args, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.17
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.28, %do.end, %if.then.3, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raise_memoryerror(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyErr_NoMemory()
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_config(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_sizeof_c_types(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_datetime_capi(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyDateTime_CAPI*, %struct.PyDateTime_CAPI** @PyDateTimeAPI, align 8
  %tobool = icmp ne %struct.PyDateTime_CAPI* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @test_run_counter, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_AssertionError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.132, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @test_run_counter, align 4
  %inc3 = add i32 %4, 1
  store i32 %inc3, i32* @test_run_counter, align 4
  %call = call i8* @PyCapsule_Import(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i32 0, i32 0), i32 0)
  %5 = bitcast i8* %call to %struct.PyDateTime_CAPI*
  store %struct.PyDateTime_CAPI* %5, %struct.PyDateTime_CAPI** @PyDateTimeAPI, align 8
  %6 = load %struct.PyDateTime_CAPI*, %struct.PyDateTime_CAPI** @PyDateTimeAPI, align 8
  %tobool4 = icmp ne %struct.PyDateTime_CAPI* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.5, %if.else, %if.then.2
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_list_api(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %anint = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %anint32 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyList_New(i64 30)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 30
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %anint, align 8
  %3 = load %struct._object*, %struct._object** %anint, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %4 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %anint, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._object*, %struct._object** %list, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 %idxprom
  store %struct._object* %11, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._object*, %struct._object** %list, align 8
  %call11 = call i32 @PyList_Reverse(%struct._object* %17)
  store i32 %call11, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %cmp12 = icmp ne i32 %18, 0
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %for.end
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %21, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %24(%struct._object* %25)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.54, %if.end.27
  %26 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %26, 30
  br i1 %cmp29, label %for.body.31, label %for.end.56

for.body.31:                                      ; preds = %for.cond.28
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct._object*, %struct._object** %list, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyListObject*
  %ob_item34 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %29, i32 0, i32 1
  %30 = load %struct._object**, %struct._object*** %ob_item34, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %30, i64 %idxprom33
  %31 = load %struct._object*, %struct._object** %arrayidx35, align 8
  store %struct._object* %31, %struct._object** %anint32, align 8
  %32 = load %struct._object*, %struct._object** %anint32, align 8
  %call36 = call i64 @PyLong_AsLong(%struct._object* %32)
  %33 = load i32, i32* %i, align 4
  %sub = sub i32 29, %33
  %conv37 = sext i32 %sub to i64
  %cmp38 = icmp ne i64 %call36, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %for.body.31
  %34 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.134, i32 0, i32 0))
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %35 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp42, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %37, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %40(%struct._object* %41)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %for.body.31
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %42 = load i32, i32* %i, align 4
  %inc55 = add i32 %42, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.28

for.end.56:                                       ; preds = %for.cond.28
  br label %do.body.57

do.body.57:                                       ; preds = %for.end.56
  %43 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp58, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %45, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %48(%struct._object* %49)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %50 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc69 = add i64 %50, 1
  store i64 %inc69, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.68, %do.end.52, %do.end.26, %do.end, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_dict_iteration(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @test_dict_inner(i32 %1)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc2 = add i64 %3, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_lazy_hash_inheritance(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  %obj = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @_HashInheritanceTester_Type to %struct._typeobject*), %struct._typeobject** %type, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 31
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %3)
  store %struct._object* %call, %struct._object** %obj, align 8
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @PyErr_Clear()
  %5 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.136, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 31
  %7 = load %struct._object*, %struct._object** %tp_dict4, align 8
  %cmp5 = icmp ne %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.137, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %9 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %16 = load %struct._object*, %struct._object** %obj, align 8
  %call11 = call i64 @PyObject_Hash(%struct._object* %16)
  store i64 %call11, i64* %hash, align 8
  %17 = load i64, i64* %hash, align 8
  %cmp12 = icmp eq i64 %17, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.10
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call13, null
  br i1 %tobool, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %18 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.138, i32 0, i32 0))
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %21, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %24(%struct._object* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %if.end.10
  %26 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 31
  %27 = load %struct._object*, %struct._object** %tp_dict27, align 8
  %cmp28 = icmp eq %struct._object* %27, null
  br i1 %cmp28, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.139, i32 0, i32 0))
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %29 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp31, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %31, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %34(%struct._object* %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.26
  %36 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_hash = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 13
  %37 = load i64 (%struct._object*)*, i64 (%struct._object*)** %tp_hash, align 8
  %38 = load i64 (%struct._object*)*, i64 (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 13), align 8
  %cmp42 = icmp ne i64 (%struct._object*)* %37, %38
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %if.end.41
  %39 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.140, i32 0, i32 0))
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %40 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp45, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %42, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %45(%struct._object* %46)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.41
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  %47 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp57, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %49, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %52(%struct._object* %53)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %54 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc67 = add i64 %54, 1
  store i64 %inc67, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %do.end.54, %do.end.40, %do.end.25, %do.end, %if.then.2, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_api(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @test_long_api_inner(%struct._object* (i8*)* @raise_test_long_error)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_xincref_doesnt_leak(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %obj, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %obj, align 8
  %call1 = call %struct._object* @_test_incref(%struct._object* %0)
  store %struct._object* %call1, %struct._object** %_py_xincref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt3, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt3, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.2
  br label %if.end.6

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %11 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp9, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %13, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %16(%struct._object* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %20, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %23(%struct._object* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc30 = add i64 %25, 1
  store i64 %inc30, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_incref_doesnt_leak(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp4 = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %obj, align 8
  %0 = load %struct._object*, %struct._object** %obj, align 8
  %call1 = call %struct._object* @_test_incref(%struct._object* %0)
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt2, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt2, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %9 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp4, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp4, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt5, align 8
  %dec6 = add i64 %11, -1
  store i64 %dec6, i64* %ob_refcnt5, align 8
  %cmp7 = icmp ne i64 %dec6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.3
  br label %if.end.12

if.else.9:                                        ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp4, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc11, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp4, align 8
  call void %14(%struct._object* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.then.8
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %16 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp15, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %18, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %21(%struct._object* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %23, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_xdecref_doesnt_leak(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %_py_xdecref_tmp, align 8
  %0 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_decref_doesnt_leak(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %_py_decref_tmp, align 8
  %0 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 4
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %4(%struct._object* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_incref_decref_API(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %obj, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  call void @Py_IncRef(%struct._object* %0)
  %1 = load %struct._object*, %struct._object** %obj, align 8
  call void @Py_DecRef(%struct._object* %1)
  %2 = load %struct._object*, %struct._object** %obj, align 8
  call void @Py_DecRef(%struct._object* %2)
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_and_overflow(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %overflow = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp195 = alloca %struct._object*, align 8
  %_py_decref_tmp225 = alloca %struct._object*, align 8
  %_py_decref_tmp255 = alloca %struct._object*, align 8
  %_py_decref_tmp285 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.163, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call, %struct._object** %num, align 8
  %0 = load %struct._object*, %struct._object** %num, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1234, i32* %overflow, align 4
  %1 = load %struct._object*, %struct._object** %num, align 8
  %call1 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %1, i32* %overflow)
  store i64 %call1, i64* %value, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i64, i64* %value, align 8
  %cmp5 = icmp eq i64 %9, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %10 = load i64, i64* %value, align 8
  %cmp9 = icmp ne i64 %10, -1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %11 = load i32, i32* %overflow, align 4
  %cmp13 = icmp ne i32 %11, 1
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @PyLong_FromLong(i64 9223372036854775807)
  store %struct._object* %call17, %struct._object** %num, align 8
  %12 = load %struct._object*, %struct._object** %num, align 8
  %cmp18 = icmp eq %struct._object* %12, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %call21 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call21, %struct._object** %one, align 8
  %13 = load %struct._object*, %struct._object** %one, align 8
  %cmp22 = icmp eq %struct._object* %13, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %if.end.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %14 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp25, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %16, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %19(%struct._object* %20)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.20
  %21 = load %struct._object*, %struct._object** %num, align 8
  %22 = load %struct._object*, %struct._object** %one, align 8
  %call36 = call %struct._object* @PyNumber_Add(%struct._object* %21, %struct._object* %22)
  store %struct._object* %call36, %struct._object** %temp, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.35
  %23 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp38, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %25, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %28(%struct._object* %29)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %30 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp49, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %32, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %35(%struct._object* %36)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %37 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %37, %struct._object** %num, align 8
  %38 = load %struct._object*, %struct._object** %num, align 8
  %cmp59 = icmp eq %struct._object* %38, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %do.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %do.end.58
  store i32 0, i32* %overflow, align 4
  %39 = load %struct._object*, %struct._object** %num, align 8
  %call62 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %39, i32* %overflow)
  store i64 %call62, i64* %value, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.61
  %40 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp64, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %42, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %45(%struct._object* %46)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %47 = load i64, i64* %value, align 8
  %cmp74 = icmp eq i64 %47, -1
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %do.end.73
  %call76 = call %struct._object* @PyErr_Occurred()
  %tobool77 = icmp ne %struct._object* %call76, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %land.lhs.true.75, %do.end.73
  %48 = load i64, i64* %value, align 8
  %cmp80 = icmp ne i64 %48, -1
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %call82 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %49 = load i32, i32* %overflow, align 4
  %cmp84 = icmp ne i32 %49, 1
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.83
  %call86 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i32 0, i32 0))
  store %struct._object* %call86, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.83
  %call88 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.166, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call88, %struct._object** %num, align 8
  %50 = load %struct._object*, %struct._object** %num, align 8
  %cmp89 = icmp eq %struct._object* %50, null
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  store i32 1234, i32* %overflow, align 4
  %51 = load %struct._object*, %struct._object** %num, align 8
  %call92 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %51, i32* %overflow)
  store i64 %call92, i64* %value, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.91
  %52 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp94, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %54, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %57(%struct._object* %58)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %59 = load i64, i64* %value, align 8
  %cmp104 = icmp eq i64 %59, -1
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.109

land.lhs.true.105:                                ; preds = %do.end.103
  %call106 = call %struct._object* @PyErr_Occurred()
  %tobool107 = icmp ne %struct._object* %call106, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.105
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.109:                                       ; preds = %land.lhs.true.105, %do.end.103
  %60 = load i64, i64* %value, align 8
  %cmp110 = icmp ne i64 %60, -1
  br i1 %cmp110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.109
  %call112 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call112, %struct._object** %retval
  br label %return

if.end.113:                                       ; preds = %if.end.109
  %61 = load i32, i32* %overflow, align 4
  %cmp114 = icmp ne i32 %61, -1
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.113
  %call116 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i32 0, i32 0))
  store %struct._object* %call116, %struct._object** %retval
  br label %return

if.end.117:                                       ; preds = %if.end.113
  %call118 = call %struct._object* @PyLong_FromLong(i64 -9223372036854775808)
  store %struct._object* %call118, %struct._object** %num, align 8
  %62 = load %struct._object*, %struct._object** %num, align 8
  %cmp119 = icmp eq %struct._object* %62, null
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %if.end.117
  %call122 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call122, %struct._object** %one, align 8
  %63 = load %struct._object*, %struct._object** %one, align 8
  %cmp123 = icmp eq %struct._object* %63, null
  br i1 %cmp123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %if.end.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %64 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp126, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %66, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %69(%struct._object* %70)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.121
  %71 = load %struct._object*, %struct._object** %num, align 8
  %72 = load %struct._object*, %struct._object** %one, align 8
  %call137 = call %struct._object* @PyNumber_Subtract(%struct._object* %71, %struct._object* %72)
  store %struct._object* %call137, %struct._object** %temp, align 8
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.136
  %73 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp139, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %75, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.138
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.138
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %78(%struct._object* %79)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.end.148
  %80 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp150, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %82, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %85(%struct._object* %86)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  %87 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %87, %struct._object** %num, align 8
  %88 = load %struct._object*, %struct._object** %num, align 8
  %cmp160 = icmp eq %struct._object* %88, null
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %do.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.162:                                       ; preds = %do.end.159
  store i32 0, i32* %overflow, align 4
  %89 = load %struct._object*, %struct._object** %num, align 8
  %call163 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %89, i32* %overflow)
  store i64 %call163, i64* %value, align 8
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.162
  %90 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp165, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %92, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body.164
  br label %if.end.173

if.else.170:                                      ; preds = %do.body.164
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  call void %95(%struct._object* %96)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.169
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  %97 = load i64, i64* %value, align 8
  %cmp175 = icmp eq i64 %97, -1
  br i1 %cmp175, label %land.lhs.true.176, label %if.end.180

land.lhs.true.176:                                ; preds = %do.end.174
  %call177 = call %struct._object* @PyErr_Occurred()
  %tobool178 = icmp ne %struct._object* %call177, null
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %land.lhs.true.176
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.180:                                       ; preds = %land.lhs.true.176, %do.end.174
  %98 = load i64, i64* %value, align 8
  %cmp181 = icmp ne i64 %98, -1
  br i1 %cmp181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.180
  %call183 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call183, %struct._object** %retval
  br label %return

if.end.184:                                       ; preds = %if.end.180
  %99 = load i32, i32* %overflow, align 4
  %cmp185 = icmp ne i32 %99, -1
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.184
  %call187 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i32 0, i32 0))
  store %struct._object* %call187, %struct._object** %retval
  br label %return

if.end.188:                                       ; preds = %if.end.184
  %call189 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call189, %struct._object** %num, align 8
  %100 = load %struct._object*, %struct._object** %num, align 8
  %cmp190 = icmp eq %struct._object* %100, null
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.192:                                       ; preds = %if.end.188
  store i32 1234, i32* %overflow, align 4
  %101 = load %struct._object*, %struct._object** %num, align 8
  %call193 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %101, i32* %overflow)
  store i64 %call193, i64* %value, align 8
  br label %do.body.194

do.body.194:                                      ; preds = %if.end.192
  %102 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp195, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt196, align 8
  %dec197 = add i64 %104, -1
  store i64 %dec197, i64* %ob_refcnt196, align 8
  %cmp198 = icmp ne i64 %dec197, 0
  br i1 %cmp198, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %do.body.194
  br label %if.end.203

if.else.200:                                      ; preds = %do.body.194
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  %ob_type201 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type201, align 8
  %tp_dealloc202 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc202, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  call void %107(%struct._object* %108)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.199
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  %109 = load i64, i64* %value, align 8
  %cmp205 = icmp eq i64 %109, -1
  br i1 %cmp205, label %land.lhs.true.206, label %if.end.210

land.lhs.true.206:                                ; preds = %do.end.204
  %call207 = call %struct._object* @PyErr_Occurred()
  %tobool208 = icmp ne %struct._object* %call207, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %land.lhs.true.206
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.210:                                       ; preds = %land.lhs.true.206, %do.end.204
  %110 = load i64, i64* %value, align 8
  %cmp211 = icmp ne i64 %110, 255
  br i1 %cmp211, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %if.end.210
  %call213 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.169, i32 0, i32 0))
  store %struct._object* %call213, %struct._object** %retval
  br label %return

if.end.214:                                       ; preds = %if.end.210
  %111 = load i32, i32* %overflow, align 4
  %cmp215 = icmp ne i32 %111, 0
  br i1 %cmp215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.end.214
  %call217 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call217, %struct._object** %retval
  br label %return

if.end.218:                                       ; preds = %if.end.214
  %call219 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call219, %struct._object** %num, align 8
  %112 = load %struct._object*, %struct._object** %num, align 8
  %cmp220 = icmp eq %struct._object* %112, null
  br i1 %cmp220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.218
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.222:                                       ; preds = %if.end.218
  store i32 0, i32* %overflow, align 4
  %113 = load %struct._object*, %struct._object** %num, align 8
  %call223 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %113, i32* %overflow)
  store i64 %call223, i64* %value, align 8
  br label %do.body.224

do.body.224:                                      ; preds = %if.end.222
  %114 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp225, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_refcnt226 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt226, align 8
  %dec227 = add i64 %116, -1
  store i64 %dec227, i64* %ob_refcnt226, align 8
  %cmp228 = icmp ne i64 %dec227, 0
  br i1 %cmp228, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %do.body.224
  br label %if.end.233

if.else.230:                                      ; preds = %do.body.224
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  call void %119(%struct._object* %120)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  %121 = load i64, i64* %value, align 8
  %cmp235 = icmp eq i64 %121, -1
  br i1 %cmp235, label %land.lhs.true.236, label %if.end.240

land.lhs.true.236:                                ; preds = %do.end.234
  %call237 = call %struct._object* @PyErr_Occurred()
  %tobool238 = icmp ne %struct._object* %call237, null
  br i1 %tobool238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %land.lhs.true.236
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.240:                                       ; preds = %land.lhs.true.236, %do.end.234
  %122 = load i64, i64* %value, align 8
  %cmp241 = icmp ne i64 %122, -255
  br i1 %cmp241, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %if.end.240
  %call243 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.169, i32 0, i32 0))
  store %struct._object* %call243, %struct._object** %retval
  br label %return

if.end.244:                                       ; preds = %if.end.240
  %123 = load i32, i32* %overflow, align 4
  %cmp245 = icmp ne i32 %123, 0
  br i1 %cmp245, label %if.then.246, label %if.end.248

if.then.246:                                      ; preds = %if.end.244
  %call247 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  store %struct._object* %call247, %struct._object** %retval
  br label %return

if.end.248:                                       ; preds = %if.end.244
  %call249 = call %struct._object* @PyLong_FromLong(i64 9223372036854775807)
  store %struct._object* %call249, %struct._object** %num, align 8
  %124 = load %struct._object*, %struct._object** %num, align 8
  %cmp250 = icmp eq %struct._object* %124, null
  br i1 %cmp250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.end.248
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.252:                                       ; preds = %if.end.248
  store i32 1234, i32* %overflow, align 4
  %125 = load %struct._object*, %struct._object** %num, align 8
  %call253 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %125, i32* %overflow)
  store i64 %call253, i64* %value, align 8
  br label %do.body.254

do.body.254:                                      ; preds = %if.end.252
  %126 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp255, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_refcnt256 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt256, align 8
  %dec257 = add i64 %128, -1
  store i64 %dec257, i64* %ob_refcnt256, align 8
  %cmp258 = icmp ne i64 %dec257, 0
  br i1 %cmp258, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %do.body.254
  br label %if.end.263

if.else.260:                                      ; preds = %do.body.254
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_type261 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type261, align 8
  %tp_dealloc262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc262, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  call void %131(%struct._object* %132)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  %133 = load i64, i64* %value, align 8
  %cmp265 = icmp eq i64 %133, -1
  br i1 %cmp265, label %land.lhs.true.266, label %if.end.270

land.lhs.true.266:                                ; preds = %do.end.264
  %call267 = call %struct._object* @PyErr_Occurred()
  %tobool268 = icmp ne %struct._object* %call267, null
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %land.lhs.true.266
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.270:                                       ; preds = %land.lhs.true.266, %do.end.264
  %134 = load i64, i64* %value, align 8
  %cmp271 = icmp ne i64 %134, 9223372036854775807
  br i1 %cmp271, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.end.270
  %call273 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.173, i32 0, i32 0))
  store %struct._object* %call273, %struct._object** %retval
  br label %return

if.end.274:                                       ; preds = %if.end.270
  %135 = load i32, i32* %overflow, align 4
  %cmp275 = icmp ne i32 %135, 0
  br i1 %cmp275, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %if.end.274
  %call277 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call277, %struct._object** %retval
  br label %return

if.end.278:                                       ; preds = %if.end.274
  %call279 = call %struct._object* @PyLong_FromLong(i64 -9223372036854775808)
  store %struct._object* %call279, %struct._object** %num, align 8
  %136 = load %struct._object*, %struct._object** %num, align 8
  %cmp280 = icmp eq %struct._object* %136, null
  br i1 %cmp280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.end.278
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.282:                                       ; preds = %if.end.278
  store i32 0, i32* %overflow, align 4
  %137 = load %struct._object*, %struct._object** %num, align 8
  %call283 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %137, i32* %overflow)
  store i64 %call283, i64* %value, align 8
  br label %do.body.284

do.body.284:                                      ; preds = %if.end.282
  %138 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp285, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  %ob_refcnt286 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt286, align 8
  %dec287 = add i64 %140, -1
  store i64 %dec287, i64* %ob_refcnt286, align 8
  %cmp288 = icmp ne i64 %dec287, 0
  br i1 %cmp288, label %if.then.289, label %if.else.290

if.then.289:                                      ; preds = %do.body.284
  br label %if.end.293

if.else.290:                                      ; preds = %do.body.284
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  %ob_type291 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type291, align 8
  %tp_dealloc292 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc292, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  call void %143(%struct._object* %144)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.290, %if.then.289
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %145 = load i64, i64* %value, align 8
  %cmp295 = icmp eq i64 %145, -1
  br i1 %cmp295, label %land.lhs.true.296, label %if.end.300

land.lhs.true.296:                                ; preds = %do.end.294
  %call297 = call %struct._object* @PyErr_Occurred()
  %tobool298 = icmp ne %struct._object* %call297, null
  br i1 %tobool298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %land.lhs.true.296
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.300:                                       ; preds = %land.lhs.true.296, %do.end.294
  %146 = load i64, i64* %value, align 8
  %cmp301 = icmp ne i64 %146, -9223372036854775808
  br i1 %cmp301, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.300
  %call303 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.174, i32 0, i32 0))
  store %struct._object* %call303, %struct._object** %retval
  br label %return

if.end.304:                                       ; preds = %if.end.300
  %147 = load i32, i32* %overflow, align 4
  %cmp305 = icmp ne i32 %147, 0
  br i1 %cmp305, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.end.304
  %call307 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call307, %struct._object** %retval
  br label %return

if.end.308:                                       ; preds = %if.end.304
  %148 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %148, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.308, %if.then.306, %if.then.302, %if.then.299, %if.then.281, %if.then.276, %if.then.272, %if.then.269, %if.then.251, %if.then.246, %if.then.242, %if.then.239, %if.then.221, %if.then.216, %if.then.212, %if.then.209, %if.then.191, %if.then.186, %if.then.182, %if.then.179, %if.then.161, %do.end.135, %if.then.120, %if.then.115, %if.then.111, %if.then.108, %if.then.90, %if.then.85, %if.then.81, %if.then.78, %if.then.60, %do.end.34, %if.then.19, %if.then.14, %if.then.10, %if.then.7, %if.then
  %149 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %149
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_as_double(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %out = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %call = call double @PyLong_AsDouble(%struct._object* @_Py_NoneStruct)
  store double %call, double* %out, align 8
  %1 = load double, double* %out, align 8
  %cmp = fcmp une double %1, -1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.175, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.176, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  call void @PyErr_Clear()
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_as_size_t(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %out_u = alloca i64, align 8
  %out_s = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %call = call i64 @PyLong_AsSize_t(%struct._object* @_Py_NoneStruct)
  store i64 %call, i64* %out_u, align 8
  %1 = load i64, i64* %out_u, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.177, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.178, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  call void @PyErr_Clear()
  %call8 = call i64 @PyLong_AsSsize_t(%struct._object* @_Py_NoneStruct)
  store i64 %call8, i64* %out_s, align 8
  %3 = load i64, i64* %out_s, align 8
  %cmp9 = icmp ne i64 %3, -1
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.7
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.end.7
  %call14 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.179, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.10
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call16 = call i32 @PyErr_ExceptionMatches(%struct._object* %4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %call19 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.180, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  call void @PyErr_Clear()
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.13, %if.then.5, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_numbits(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %testcases = alloca [15 x %struct.triple], align 16
  %i = alloca i32, align 4
  %nbits = alloca i64, align 8
  %sign = alloca i32, align 4
  %plong = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = bitcast [15 x %struct.triple]* %testcases to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([15 x %struct.triple]* @test_long_numbits.testcases to i8*), i64 360, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [15 x %struct.triple], [15 x %struct.triple]* %testcases, i32 0, i64 %idxprom
  %input = getelementptr inbounds %struct.triple, %struct.triple* %arrayidx, i32 0, i32 0
  %3 = load i64, i64* %input, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %3)
  store %struct._object* %call, %struct._object** %plong, align 8
  %4 = load %struct._object*, %struct._object** %plong, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %5 = load %struct._object*, %struct._object** %plong, align 8
  %call4 = call i64 @_PyLong_NumBits(%struct._object* %5)
  store i64 %call4, i64* %nbits, align 8
  %6 = load %struct._object*, %struct._object** %plong, align 8
  %call5 = call i32 @_PyLong_Sign(%struct._object* %6)
  store i32 %call5, i32* %sign, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %plong, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %14 = load i64, i64* %nbits, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr [15 x %struct.triple], [15 x %struct.triple]* %testcases, i32 0, i64 %idxprom10
  %nbits12 = getelementptr inbounds %struct.triple, %struct.triple* %arrayidx11, i32 0, i32 1
  %16 = load i64, i64* %nbits12, align 8
  %cmp13 = icmp ne i64 %14, %16
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %call16 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.181, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  %17 = load i32, i32* %sign, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr [15 x %struct.triple], [15 x %struct.triple]* %testcases, i32 0, i64 %idxprom18
  %sign20 = getelementptr inbounds %struct.triple, %struct.triple* %arrayidx19, i32 0, i32 2
  %19 = load i32, i32* %sign20, align 4
  %cmp21 = icmp ne i32 %17, %19
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.17
  %call24 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.182, i32 0, i32 0))
  store %struct._object* %call24, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc26 = add i64 %21, 1
  store i64 %inc26, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.then.15, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_k_code(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %0 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.163, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call1, %struct._object** %num, align 8
  %1 = load %struct._object*, %struct._object** %num, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %num, align 8
  %call5 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %2)
  store i64 %call5, i64* %value, align 8
  %3 = load i64, i64* %value, align 8
  %cmp6 = icmp ne i64 %3, -1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.183, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %num, align 8
  %5 = load %struct._object*, %struct._object** %tuple, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %4, %struct._object** %arrayidx, align 8
  store i64 0, i64* %value, align 8
  %7 = load %struct._object*, %struct._object** %tuple, align 8
  %call10 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i64* %value)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %8 = load i64, i64* %value, align 8
  %cmp14 = icmp ne i64 %8, -1
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %call16 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.185, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %9 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %call21 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call21, %struct._object** %num, align 8
  %16 = load %struct._object*, %struct._object** %num, align 8
  %cmp22 = icmp eq %struct._object* %16, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %do.end
  %17 = load %struct._object*, %struct._object** %num, align 8
  %call25 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %17)
  store i64 %call25, i64* %value, align 8
  %18 = load i64, i64* %value, align 8
  %cmp26 = icmp ne i64 %18, -66
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %call28 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.183, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %19 = load %struct._object*, %struct._object** %num, align 8
  %20 = load %struct._object*, %struct._object** %tuple, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 0
  store %struct._object* %19, %struct._object** %arrayidx31, align 8
  store i64 0, i64* %value, align 8
  %22 = load %struct._object*, %struct._object** %tuple, align 8
  %call32 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i64* %value)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.29
  %23 = load i64, i64* %value, align 8
  %cmp36 = icmp ne i64 %23, -66
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %call38 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.187, i32 0, i32 0))
  store %struct._object* %call38, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  %24 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp41, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %26, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %29(%struct._object* %30)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.50, %if.then.37, %if.then.34, %if.then.27, %if.then.23, %if.then.15, %if.then.12, %if.then.7, %if.then.3, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_empty_argparse(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* null, %struct._object** %dict, align 8
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %0 = load %struct._object*, %struct._object** %tuple, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %tuple, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.188, i32 0, i32 0))
  store i32 %call1, i32* %result, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %done

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New()
  store %struct._object* %call4, %struct._object** %dict, align 8
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %tobool5 = icmp ne %struct._object* %2, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  br label %done

if.end.7:                                         ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %tuple, align 8
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %call8 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.188, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @test_empty_argparse.kwlist, i32 0, i32 0))
  store i32 %call8, i32* %result, align 4
  br label %done

done:                                             ; preds = %if.end.7, %if.then.6, %if.then.2
  br label %do.body

do.body:                                          ; preds = %done
  %5 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %12 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %13, null
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %do.body.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.12
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %21 = load i32, i32* %result, align 4
  %cmp28 = icmp slt i32 %21, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.30:                                       ; preds = %do.end.27
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.30, %if.then.29, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parse_tuple_and_keywords(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sub_args = alloca %struct._object*, align 8
  %sub_kwargs = alloca %struct._object*, align 8
  %sub_format = alloca i8*, align 8
  %sub_keywords = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %keywords = alloca [9 x i8*], align 16
  %o = alloca %struct._object*, align 8
  %converted = alloca [8 x %struct._object*], align 16
  %result = alloca i32, align 4
  %return_value = alloca %struct._object*, align 8
  %buffers = alloca [8 x [4 x double]], align 16
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.189, i32 0, i32 0), %struct._object** %sub_args, %struct._object** %sub_kwargs, i8** %sub_format, %struct._object** %sub_keywords)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyList_Type
  br i1 %cmp, label %if.end.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyTuple_Type
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.190, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = bitcast [8 x [4 x double]]* %buffers to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 256, i32 16, i1 false)
  %7 = bitcast [8 x %struct._object*]* %converted to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 64, i32 16, i1 false)
  %8 = bitcast [9 x i8*]* %keywords to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 72, i32 16, i1 false)
  %9 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 33554432
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %17, %cond.false ]
  store i64 %cond, i64* %size, align 8
  %18 = load i64, i64* %size, align 8
  %cmp8 = icmp sgt i64 %18, 8
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.191, i32 0, i32 0))
  br label %exit

if.end.10:                                        ; preds = %cond.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %size, align 8
  %cmp11 = icmp slt i64 %20, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags13, align 8
  %and14 = and i64 %24, 33554432
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %for.body
  %25 = load i64, i64* %i, align 8
  %26 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %27, i32 0, i32 1
  %28 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %28, i64 %25
  %29 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.20

cond.false.17:                                    ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %sub_keywords, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %30
  %33 = load %struct._object*, %struct._object** %arrayidx19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi %struct._object* [ %29, %cond.true.16 ], [ %33, %cond.false.17 ]
  store %struct._object* %cond21, %struct._object** %o, align 8
  %34 = load %struct._object*, %struct._object** %o, align 8
  %arraydecay = getelementptr inbounds [8 x %struct._object*], [8 x %struct._object*]* %converted, i32 0, i32 0
  %35 = load i64, i64* %i, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %35
  %36 = bitcast %struct._object** %add.ptr to i8*
  %call22 = call i32 @PyUnicode_FSConverter(%struct._object* %34, i8* %36)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %cond.end.20
  %37 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %38 = load i64, i64* %i, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.192, i32 0, i32 0), i64 %38)
  br label %exit

if.end.26:                                        ; preds = %cond.end.20
  %39 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %converted, i32 0, i64 %39
  %40 = load %struct._object*, %struct._object** %arrayidx27, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %41, i32 0, i32 2
  %arraydecay28 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %42 = load i64, i64* %i, align 8
  %arrayidx29 = getelementptr [9 x i8*], [9 x i8*]* %keywords, i32 0, i64 %42
  store i8* %arraydecay28, i8** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %43 = load i64, i64* %i, align 8
  %inc = add i64 %43, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %sub_args, align 8
  %45 = load %struct._object*, %struct._object** %sub_kwargs, align 8
  %46 = load i8*, i8** %sub_format, align 8
  %arraydecay30 = getelementptr inbounds [9 x i8*], [9 x i8*]* %keywords, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr32 = getelementptr [4 x double], [4 x double]* %arraydecay31, i64 0
  %arraydecay33 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr34 = getelementptr [4 x double], [4 x double]* %arraydecay33, i64 1
  %arraydecay35 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr36 = getelementptr [4 x double], [4 x double]* %arraydecay35, i64 2
  %arraydecay37 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr38 = getelementptr [4 x double], [4 x double]* %arraydecay37, i64 3
  %arraydecay39 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr40 = getelementptr [4 x double], [4 x double]* %arraydecay39, i64 4
  %arraydecay41 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr42 = getelementptr [4 x double], [4 x double]* %arraydecay41, i64 5
  %arraydecay43 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr44 = getelementptr [4 x double], [4 x double]* %arraydecay43, i64 6
  %arraydecay45 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %buffers, i32 0, i32 0
  %add.ptr46 = getelementptr [4 x double], [4 x double]* %arraydecay45, i64 7
  %call47 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %44, %struct._object* %45, i8* %46, i8** %arraydecay30, [4 x double]* %add.ptr32, [4 x double]* %add.ptr34, [4 x double]* %add.ptr36, [4 x double]* %add.ptr38, [4 x double]* %add.ptr40, [4 x double]* %add.ptr42, [4 x double]* %add.ptr44, [4 x double]* %add.ptr46)
  store i32 %call47, i32* %result, align 4
  %47 = load i32, i32* %result, align 4
  %tobool48 = icmp ne i32 %47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %return_value, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc50 = add i64 %48, 1
  store i64 %inc50, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.end
  br label %exit

exit:                                             ; preds = %if.end.51, %if.then.24, %if.then.9
  store i64 8, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.65, %exit
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %size, align 8
  %cmp53 = icmp slt i64 %49, %50
  br i1 %cmp53, label %for.body.54, label %for.end.67

for.body.54:                                      ; preds = %for.cond.52
  br label %do.body

do.body:                                          ; preds = %for.body.54
  %51 = load i64, i64* %i, align 8
  %arrayidx55 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %converted, i32 0, i64 %51
  %52 = load %struct._object*, %struct._object** %arrayidx55, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp56 = icmp ne %struct._object* %53, null
  br i1 %cmp56, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %do.body
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %56, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp59 = icmp ne i64 %dec, 0
  br i1 %cmp59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %do.body.58
  br label %if.end.62

if.else:                                          ; preds = %do.body.58
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %59(%struct._object* %60)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.60
  br label %do.end

do.end:                                           ; preds = %if.end.62
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %do.body
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %for.inc.65

for.inc.65:                                       ; preds = %do.end.64
  %61 = load i64, i64* %i, align 8
  %inc66 = add i64 %61, 1
  store i64 %inc66, i64* %i, align 8
  br label %for.cond.52

for.end.67:                                       ; preds = %for.cond.52
  %62 = load %struct._object*, %struct._object** %return_value, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.67, %if.then.3, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_null_strings(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %o1 = alloca %struct._object*, align 8
  %o2 = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyObject_Str(%struct._object* null)
  store %struct._object* %call, %struct._object** %o1, align 8
  %call1 = call %struct._object* @PyObject_Str(%struct._object* null)
  store %struct._object* %call1, %struct._object** %o2, align 8
  %0 = load %struct._object*, %struct._object** %o1, align 8
  %1 = load %struct._object*, %struct._object** %o2, align 8
  %call2 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %0, %struct._object* %1)
  store %struct._object* %call2, %struct._object** %tuple, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o1, align 8
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %11 = load %struct._object*, %struct._object** %o2, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp9, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  %cmp10 = icmp ne %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %do.body.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp13, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.8
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %20 = load %struct._object*, %struct._object** %tuple, align 8
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_string_from_format(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %msg = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i32 0, i32 0), i32 1)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %result, align 8
  %call1 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %call7 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0), i64 1)
  store %struct._object* %call7, %struct._object** %result, align 8
  %9 = load %struct._object*, %struct._object** %result, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %result, align 8
  %call11 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.197, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.14:                                        ; preds = %if.end.10
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp16, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %13, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %16(%struct._object* %17)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %call26 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.198, i32 0, i32 0), i64 1)
  store %struct._object* %call26, %struct._object** %result, align 8
  %18 = load %struct._object*, %struct._object** %result, align 8
  %cmp27 = icmp eq %struct._object* %18, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %do.end.25
  %19 = load %struct._object*, %struct._object** %result, align 8
  %call30 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.199, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.33:                                        ; preds = %if.end.29
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp35, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %22, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %25(%struct._object* %26)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.200, i32 0, i32 0), i32 1)
  store %struct._object* %call45, %struct._object** %result, align 8
  %27 = load %struct._object*, %struct._object** %result, align 8
  %cmp46 = icmp eq %struct._object* %27, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %do.end.44
  %28 = load %struct._object*, %struct._object** %result, align 8
  %call49 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.201, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.52:                                        ; preds = %if.end.48
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.52
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp54, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %31, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %34(%struct._object* %35)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %call64 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i32 0, i32 0), i64 1)
  store %struct._object* %call64, %struct._object** %result, align 8
  %36 = load %struct._object*, %struct._object** %result, align 8
  %cmp65 = icmp eq %struct._object* %36, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %do.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %do.end.63
  %37 = load %struct._object*, %struct._object** %result, align 8
  %call68 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.71:                                        ; preds = %if.end.67
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.71
  %38 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp73, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %40, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %43(%struct._object* %44)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %call83 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i64 1)
  store %struct._object* %call83, %struct._object** %result, align 8
  %45 = load %struct._object*, %struct._object** %result, align 8
  %cmp84 = icmp eq %struct._object* %45, null
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %do.end.82
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %do.end.82
  %46 = load %struct._object*, %struct._object** %result, align 8
  %call87 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.205, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.90:                                        ; preds = %if.end.86
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  %47 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp92, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %49, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %52(%struct._object* %53)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  %call102 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.206, i32 0, i32 0), i64 1)
  store %struct._object* %call102, %struct._object** %result, align 8
  %54 = load %struct._object*, %struct._object** %result, align 8
  %cmp103 = icmp eq %struct._object* %54, null
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %do.end.101
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.105:                                       ; preds = %do.end.101
  %55 = load %struct._object*, %struct._object** %result, align 8
  %call106 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.207, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.109:                                       ; preds = %if.end.105
  br label %do.body.110

do.body.110:                                      ; preds = %if.end.109
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp111, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %58, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.110
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.110
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %61(%struct._object* %62)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  %call121 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i32 0, i32 0), i64 1)
  store %struct._object* %call121, %struct._object** %result, align 8
  %63 = load %struct._object*, %struct._object** %result, align 8
  %cmp122 = icmp eq %struct._object* %63, null
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %do.end.120
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.124:                                       ; preds = %do.end.120
  %64 = load %struct._object*, %struct._object** %result, align 8
  %call125 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0))
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0), i8** %msg, align 8
  br label %Fail

if.end.128:                                       ; preds = %if.end.124
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp130, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %67, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.129
  br label %if.end.138

if.else.135:                                      ; preds = %do.body.129
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type136 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type136, align 8
  %tp_dealloc137 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc137, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %70(%struct._object* %71)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %72 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %72, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

Fail:                                             ; preds = %if.then.127, %if.then.108, %if.then.89, %if.then.70, %if.then.51, %if.then.32, %if.then.13, %if.then.2
  br label %do.body.140

do.body.140:                                      ; preds = %Fail
  %73 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp141 = icmp ne %struct._object* %74, null
  br i1 %cmp141, label %if.then.142, label %if.end.154

if.then.142:                                      ; preds = %do.body.140
  br label %do.body.143

do.body.143:                                      ; preds = %if.then.142
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp144, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %77, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.143
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.143
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %80(%struct._object* %81)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.body.140
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  %82 = load i8*, i8** %msg, align 8
  %call156 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i8* %82)
  store %struct._object* %call156, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.155, %do.end.139, %if.then.123, %if.then.104, %if.then.85, %if.then.66, %if.then.47, %if.then.28, %if.then.9, %if.then
  %83 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_with_docstring(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_string_to_double(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %result = alloca double, align 8
  %msg = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call double @PyOS_string_to_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call, double* %result, align 8
  %0 = load double, double* %result, align 8
  %cmp = fcmp oeq double %0, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load double, double* %result, align 8
  %cmp2 = fcmp une double %1, 1.000000e-01
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.211, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.4:                                         ; preds = %if.end
  %call5 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.212, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call5, double* %result, align 8
  %2 = load double, double* %result, align 8
  %cmp6 = fcmp oeq double %2, -1.000000e+00
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.11

land.lhs.true.7:                                  ; preds = %if.end.4
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.7, %if.end.4
  %3 = load double, double* %result, align 8
  %cmp12 = fcmp une double %3, 1.234000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.213, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.14:                                        ; preds = %if.end.11
  %call15 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call15, double* %result, align 8
  %4 = load double, double* %result, align 8
  %cmp16 = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %if.end.14
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %if.end.14
  %5 = load double, double* %result, align 8
  %cmp22 = fcmp une double %5, -1.350000e+00
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.215, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.24:                                        ; preds = %if.end.21
  %call25 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.216, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call25, double* %result, align 8
  %6 = load double, double* %result, align 8
  %cmp26 = fcmp oeq double %6, -1.000000e+00
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.24
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.27, %if.end.24
  %7 = load double, double* %result, align 8
  %cmp32 = fcmp une double %7, 1.000000e+00
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.217, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.34:                                        ; preds = %if.end.31
  %call35 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call35, double* %result, align 8
  %8 = load double, double* %result, align 8
  %cmp36 = fcmp oeq double %8, -1.000000e+00
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.end.34
  %call38 = call %struct._object* @PyErr_Occurred()
  %tobool39 = icmp ne %struct._object* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.37, %if.end.34
  %9 = load double, double* %result, align 8
  %cmp42 = fcmp une double %9, 2.000000e-02
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.219, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.44:                                        ; preds = %if.end.41
  %call45 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call45, double* %result, align 8
  %10 = load double, double* %result, align 8
  %cmp46 = fcmp oeq double %10, -1.000000e+00
  br i1 %cmp46, label %land.lhs.true.47, label %if.else.55

land.lhs.true.47:                                 ; preds = %if.end.44
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %land.lhs.true.47
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call51 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.50
  call void @PyErr_Clear()
  br label %if.end.54

if.else:                                          ; preds = %if.then.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %if.then.53
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true.47, %if.end.44
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.221, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.56:                                        ; preds = %if.end.54
  %call57 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call57, double* %result, align 8
  %12 = load double, double* %result, align 8
  %cmp58 = fcmp oeq double %12, -1.000000e+00
  br i1 %cmp58, label %land.lhs.true.59, label %if.else.68

land.lhs.true.59:                                 ; preds = %if.end.56
  %call60 = call %struct._object* @PyErr_Occurred()
  %tobool61 = icmp ne %struct._object* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %land.lhs.true.59
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call63 = call i32 @PyErr_ExceptionMatches(%struct._object* %13)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.62
  call void @PyErr_Clear()
  br label %if.end.67

if.else.66:                                       ; preds = %if.then.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %if.end.69

if.else.68:                                       ; preds = %land.lhs.true.59, %if.end.56
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.223, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.69:                                        ; preds = %if.end.67
  %call70 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call70, double* %result, align 8
  %14 = load double, double* %result, align 8
  %cmp71 = fcmp oeq double %14, -1.000000e+00
  br i1 %cmp71, label %land.lhs.true.72, label %if.else.81

land.lhs.true.72:                                 ; preds = %if.end.69
  %call73 = call %struct._object* @PyErr_Occurred()
  %tobool74 = icmp ne %struct._object* %call73, null
  br i1 %tobool74, label %if.then.75, label %if.else.81

if.then.75:                                       ; preds = %land.lhs.true.72
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call76 = call i32 @PyErr_ExceptionMatches(%struct._object* %15)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.then.75
  call void @PyErr_Clear()
  br label %if.end.80

if.else.79:                                       ; preds = %if.then.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %if.end.82

if.else.81:                                       ; preds = %land.lhs.true.72, %if.end.69
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.225, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.82:                                        ; preds = %if.end.80
  %call83 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.226, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call83, double* %result, align 8
  %16 = load double, double* %result, align 8
  %cmp84 = fcmp oeq double %16, -1.000000e+00
  br i1 %cmp84, label %land.lhs.true.85, label %if.else.94

land.lhs.true.85:                                 ; preds = %if.end.82
  %call86 = call %struct._object* @PyErr_Occurred()
  %tobool87 = icmp ne %struct._object* %call86, null
  br i1 %tobool87, label %if.then.88, label %if.else.94

if.then.88:                                       ; preds = %land.lhs.true.85
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call89 = call i32 @PyErr_ExceptionMatches(%struct._object* %17)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.then.88
  call void @PyErr_Clear()
  br label %if.end.93

if.else.92:                                       ; preds = %if.then.88
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.93:                                        ; preds = %if.then.91
  br label %if.end.95

if.else.94:                                       ; preds = %land.lhs.true.85, %if.end.82
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.227, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.95:                                        ; preds = %if.end.93
  %call96 = call double @PyOS_string_to_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.228, i32 0, i32 0), i8** null, %struct._object* null)
  store double %call96, double* %result, align 8
  %18 = load double, double* %result, align 8
  %cmp97 = fcmp oeq double %18, -1.000000e+00
  br i1 %cmp97, label %land.lhs.true.98, label %if.else.107

land.lhs.true.98:                                 ; preds = %if.end.95
  %call99 = call %struct._object* @PyErr_Occurred()
  %tobool100 = icmp ne %struct._object* %call99, null
  br i1 %tobool100, label %if.then.101, label %if.else.107

if.then.101:                                      ; preds = %land.lhs.true.98
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call102 = call i32 @PyErr_ExceptionMatches(%struct._object* %19)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.then.101
  call void @PyErr_Clear()
  br label %if.end.106

if.else.105:                                      ; preds = %if.then.101
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %if.end.108

if.else.107:                                      ; preds = %land.lhs.true.98, %if.end.95
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.229, i32 0, i32 0), i8** %msg, align 8
  br label %fail

if.end.108:                                       ; preds = %if.end.106
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.else.107, %if.else.94, %if.else.81, %if.else.68, %if.else.55, %if.then.43, %if.then.33, %if.then.23, %if.then.13, %if.then.3
  %21 = load i8*, i8** %msg, align 8
  %call109 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i8* %21)
  store %struct._object* %call109, %struct._object** %retval
  br label %return

return:                                           ; preds = %fail, %if.end.108, %if.else.105, %if.else.92, %if.else.79, %if.else.66, %if.else, %if.then.40, %if.then.30, %if.then.20, %if.then.10, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_unicode_compare_with_ascii(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %py_s = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i64 4)
  store %struct._object* %call, %struct._object** %py_s, align 8
  %0 = load %struct._object*, %struct._object** %py_s, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %py_s, align 8
  %call1 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0))
  store i32 %call1, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %py_s, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.232, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_capsule(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %error = alloca i8*, align 8
  %pointer = alloca i8*, align 8
  %pointer2 = alloca i8*, align 8
  %known_capsules = alloca [4 x %struct.known_capsule], align 16
  %known = alloca %struct.known_capsule*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %module55 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_decref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %error, align 8
  %0 = bitcast [4 x %struct.known_capsule]* %known_capsules to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x %struct.known_capsule]* @test_capsule.known_capsules to i8*), i64 96, i32 16, i1 false)
  %arrayidx = getelementptr [4 x %struct.known_capsule], [4 x %struct.known_capsule]* %known_capsules, i32 0, i64 0
  store %struct.known_capsule* %arrayidx, %struct.known_capsule** %known, align 8
  %1 = load i8*, i8** @capsule_pointer, align 8
  %2 = load i8*, i8** @capsule_name, align 8
  %call = call %struct._object* @PyCapsule_New(i8* %1, i8* %2, void (%struct._object*)* @capsule_destructor)
  store %struct._object* %call, %struct._object** %object, align 8
  %3 = load %struct._object*, %struct._object** %object, align 8
  %4 = load i8*, i8** @capsule_context, align 8
  %call1 = call i32 @PyCapsule_SetContext(%struct._object* %3, i8* %4)
  %5 = load %struct._object*, %struct._object** %object, align 8
  call void @capsule_destructor(%struct._object* %5)
  %6 = load i8*, i8** @capsule_error, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @capsule_error, align 8
  store i8* %7, i8** %error, align 8
  br label %exit

if.else:                                          ; preds = %entry
  %8 = load i32, i32* @capsule_destructor_call_count, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.241, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* @capsule_destructor_call_count, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body
  br label %if.end.7

if.else.6:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %16 = load i8*, i8** @capsule_error, align 8
  %tobool8 = icmp ne i8* %16, null
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.end
  %17 = load i8*, i8** @capsule_error, align 8
  store i8* %17, i8** %error, align 8
  br label %exit

if.else.10:                                       ; preds = %do.end
  %18 = load i32, i32* @capsule_destructor_call_count, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.else.10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.241, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.13:                                        ; preds = %if.else.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  store i32 0, i32* @capsule_destructor_call_count, align 4
  %19 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %20 = bitcast %struct.known_capsule* %19 to i8*
  %call15 = call %struct._object* @PyCapsule_New(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.242, i32 0, i32 0), void (%struct._object*)* null)
  store %struct._object* %call15, %struct._object** %object, align 8
  %21 = load %struct._object*, %struct._object** %object, align 8
  %22 = load i8*, i8** @capsule_pointer, align 8
  %call16 = call i32 @PyCapsule_SetPointer(%struct._object* %21, i8* %22)
  %23 = load %struct._object*, %struct._object** %object, align 8
  %24 = load i8*, i8** @capsule_name, align 8
  %call17 = call i32 @PyCapsule_SetName(%struct._object* %23, i8* %24)
  %25 = load %struct._object*, %struct._object** %object, align 8
  %call18 = call i32 @PyCapsule_SetDestructor(%struct._object* %25, void (%struct._object*)* @capsule_destructor)
  %26 = load %struct._object*, %struct._object** %object, align 8
  %27 = load i8*, i8** @capsule_context, align 8
  %call19 = call i32 @PyCapsule_SetContext(%struct._object* %26, i8* %27)
  %28 = load %struct._object*, %struct._object** %object, align 8
  call void @capsule_destructor(%struct._object* %28)
  %29 = load i8*, i8** @capsule_error, align 8
  %tobool20 = icmp ne i8* %29, null
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.14
  %30 = load i8*, i8** @capsule_error, align 8
  store i8* %30, i8** %error, align 8
  br label %exit

if.else.22:                                       ; preds = %if.end.14
  %31 = load i32, i32* @capsule_destructor_call_count, align 4
  %tobool23 = icmp ne i32 %31, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.22
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.241, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.25:                                        ; preds = %if.else.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* @capsule_destructor_call_count, align 4
  %32 = load %struct._object*, %struct._object** %object, align 8
  %call27 = call i8* @PyCapsule_GetPointer(%struct._object* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.243, i32 0, i32 0))
  store i8* %call27, i8** %pointer2, align 8
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.26
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.244, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.31:                                        ; preds = %if.end.26
  call void @PyErr_Clear()
  %33 = load i8*, i8** %pointer2, align 8
  %tobool32 = icmp ne i8* %33, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.31
  %34 = load i8*, i8** %pointer2, align 8
  %35 = load i8*, i8** @capsule_pointer, align 8
  %cmp34 = icmp eq i8* %34, %35
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.then.33
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.245, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.else.36:                                       ; preds = %if.then.33
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.246, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.37:                                        ; preds = %if.end.31
  %36 = load %struct._object*, %struct._object** %object, align 8
  %call38 = call i32 @PyCapsule_SetDestructor(%struct._object* %36, void (%struct._object*)* null)
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp40, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %39, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %42(%struct._object* %43)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %44 = load i32, i32* @capsule_destructor_call_count, align 4
  %tobool50 = icmp ne i32 %44, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.end.49
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.247, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.52:                                        ; preds = %do.end.49
  %arrayidx53 = getelementptr [4 x %struct.known_capsule], [4 x %struct.known_capsule]* %known_capsules, i32 0, i64 0
  store %struct.known_capsule* %arrayidx53, %struct.known_capsule** %known, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %45 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %45, i32 0, i32 1
  %46 = load i8*, i8** %module, align 8
  %cmp54 = icmp ne i8* %46, null
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module56 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %47, i32 0, i32 1
  %48 = load i8*, i8** %module56, align 8
  %call57 = call %struct._object* @PyImport_ImportModule(i8* %48)
  store %struct._object* %call57, %struct._object** %module55, align 8
  %49 = load %struct._object*, %struct._object** %module55, align 8
  %tobool58 = icmp ne %struct._object* %49, null
  br i1 %tobool58, label %if.then.59, label %if.else.179

if.then.59:                                       ; preds = %for.body
  %50 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %name = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %50, i32 0, i32 0
  %51 = load i8*, i8** %name, align 8
  %call60 = call i8* @PyCapsule_Import(i8* %51, i32 0)
  store i8* %call60, i8** %pointer, align 8
  %52 = load i8*, i8** %pointer, align 8
  %tobool61 = icmp ne i8* %52, null
  br i1 %tobool61, label %if.end.76, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %53 = load %struct._object*, %struct._object** %module55, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp64, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %55, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %58(%struct._object* %59)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %60 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module74 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %60, i32 0, i32 1
  %61 = load i8*, i8** %module74, align 8
  %62 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %attribute = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %62, i32 0, i32 2
  %63 = load i8*, i8** %attribute, align 8
  %call75 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.249, i32 0, i32 0), i8* %61, i8* %63) #2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.76:                                        ; preds = %if.then.59
  %64 = load %struct._object*, %struct._object** %module55, align 8
  %65 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %attribute77 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %65, i32 0, i32 2
  %66 = load i8*, i8** %attribute77, align 8
  %call78 = call %struct._object* @PyObject_GetAttrString(%struct._object* %64, i8* %66)
  store %struct._object* %call78, %struct._object** %object, align 8
  %67 = load %struct._object*, %struct._object** %object, align 8
  %tobool79 = icmp ne %struct._object* %67, null
  br i1 %tobool79, label %if.end.92, label %if.then.80

if.then.80:                                       ; preds = %if.end.76
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %68 = load %struct._object*, %struct._object** %module55, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp82, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %70, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %73(%struct._object* %74)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.76
  %75 = load %struct._object*, %struct._object** %object, align 8
  %call93 = call i8* @PyCapsule_GetPointer(%struct._object* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.250, i32 0, i32 0))
  store i8* %call93, i8** %pointer2, align 8
  %call94 = call %struct._object* @PyErr_Occurred()
  %tobool95 = icmp ne %struct._object* %call94, null
  br i1 %tobool95, label %if.end.122, label %if.then.96

if.then.96:                                       ; preds = %if.end.92
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %76 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp98, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %78, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.97
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.97
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %81(%struct._object* %82)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %83 = load %struct._object*, %struct._object** %module55, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp109, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %85, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.108
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %88(%struct._object* %89)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %90 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module119 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %90, i32 0, i32 1
  %91 = load i8*, i8** %module119, align 8
  %92 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %attribute120 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %92, i32 0, i32 2
  %93 = load i8*, i8** %attribute120, align 8
  %call121 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.244, i32 0, i32 0), i8* %91, i8* %93) #2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.122:                                       ; preds = %if.end.92
  call void @PyErr_Clear()
  %94 = load i8*, i8** %pointer2, align 8
  %tobool123 = icmp ne i8* %94, null
  br i1 %tobool123, label %if.then.124, label %if.end.156

if.then.124:                                      ; preds = %if.end.122
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %95 = load %struct._object*, %struct._object** %module55, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp126, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %97, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %100(%struct._object* %101)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  br label %do.body.136

do.body.136:                                      ; preds = %do.end.135
  %102 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp137, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %104, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %107(%struct._object* %108)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  %109 = load i8*, i8** %pointer2, align 8
  %110 = load i8*, i8** %pointer, align 8
  %cmp147 = icmp eq i8* %109, %110
  br i1 %cmp147, label %if.then.148, label %if.else.152

if.then.148:                                      ; preds = %do.end.146
  %111 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module149 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %111, i32 0, i32 1
  %112 = load i8*, i8** %module149, align 8
  %113 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %attribute150 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %113, i32 0, i32 2
  %114 = load i8*, i8** %attribute150, align 8
  %call151 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.251, i32 0, i32 0), i8* %112, i8* %114) #2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.else.152:                                      ; preds = %do.end.146
  %115 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %module153 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %115, i32 0, i32 1
  %116 = load i8*, i8** %module153, align 8
  %117 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %attribute154 = getelementptr inbounds %struct.known_capsule, %struct.known_capsule* %117, i32 0, i32 2
  %118 = load i8*, i8** %attribute154, align 8
  %call155 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.246, i32 0, i32 0), i8* %116, i8* %118) #2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_capsule.buffer, i32 0, i32 0), i8** %error, align 8
  br label %exit

if.end.156:                                       ; preds = %if.end.122
  br label %do.body.157

do.body.157:                                      ; preds = %if.end.156
  %119 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %119, %struct._object** %_py_decref_tmp158, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0
  %121 = load i64, i64* %ob_refcnt159, align 8
  %dec160 = add i64 %121, -1
  store i64 %dec160, i64* %ob_refcnt159, align 8
  %cmp161 = icmp ne i64 %dec160, 0
  br i1 %cmp161, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.157
  br label %if.end.166

if.else.163:                                      ; preds = %do.body.157
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_type164 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type164, align 8
  %tp_dealloc165 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc165, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  call void %124(%struct._object* %125)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.end.167
  %126 = load %struct._object*, %struct._object** %module55, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp169, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %128, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.168
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.168
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %131(%struct._object* %132)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %if.end.180

if.else.179:                                      ; preds = %for.body
  call void @PyErr_Clear()
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.179, %do.end.178
  br label %for.inc

for.inc:                                          ; preds = %if.end.180
  %133 = load %struct.known_capsule*, %struct.known_capsule** %known, align 8
  %incdec.ptr = getelementptr %struct.known_capsule, %struct.known_capsule* %133, i32 1
  store %struct.known_capsule* %incdec.ptr, %struct.known_capsule** %known, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.else.152, %if.then.148, %do.end.118, %do.end.73, %if.then.51, %if.else.36, %if.then.35, %if.then.30, %if.then.24, %if.then.21, %if.then.12, %if.then.9, %if.then.3, %if.then
  %134 = load i8*, i8** %error, align 8
  %tobool181 = icmp ne i8* %134, null
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %exit
  %135 = load i8*, i8** %error, align 8
  %call183 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* %135)
  store %struct._object* %call183, %struct._object** %retval
  br label %return

if.end.184:                                       ; preds = %exit
  %136 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %136, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.then.182, %do.end.91
  %137 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %137
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_tuple(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.259, i32 0, i32 0), i32* %a, i32* %b, i32* %c)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %c, align 4
  %call1 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i32 %1, i32 %2, i32 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_keywords(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %int_args = alloca [10 x i32], align 16
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = bitcast [10 x i32]* %int_args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([10 x i32]* @getargs_keywords.int_args to i8*), i64 40, i32 16, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %3 = load i8*, i8** @getargs_keywords.fmt, align 8
  %arrayidx = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 0
  %arrayidx1 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 1
  %arrayidx2 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 2
  %arrayidx3 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 3
  %arrayidx4 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 4
  %arrayidx5 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 5
  %arrayidx6 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 6
  %arrayidx7 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 7
  %arrayidx8 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 8
  %arrayidx9 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 9
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* %3, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @getargs_keywords.keywords, i32 0, i32 0), i32* %arrayidx, i32* %arrayidx1, i32* %arrayidx2, i32* %arrayidx3, i32* %arrayidx4, i32* %arrayidx5, i32* %arrayidx6, i32* %arrayidx7, i32* %arrayidx8, i32* %arrayidx9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx10 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 0
  %4 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 1
  %5 = load i32, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 2
  %6 = load i32, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 3
  %7 = load i32, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 4
  %8 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 5
  %9 = load i32, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 6
  %10 = load i32, i32* %arrayidx16, align 4
  %arrayidx17 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 7
  %11 = load i32, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 8
  %12 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr [10 x i32], [10 x i32]* %int_args, i32 0, i64 9
  %13 = load i32, i32* %arrayidx19, align 4
  %call20 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.267, i32 0, i32 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_keyword_only(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %required = alloca i32, align 4
  %optional = alloca i32, align 4
  %keyword_only = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 -1, i32* %required, align 4
  store i32 -1, i32* %optional, align 4
  store i32 -1, i32* %keyword_only, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @getargs_keyword_only.keywords, i32 0, i32 0), i32* %required, i32* %optional, i32* %keyword_only)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %required, align 4
  %3 = load i32, i32* %optional, align 4
  %4 = load i32, i32* %keyword_only, align 4
  %call1 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i32 %2, i32 %3, i32 %4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_b(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.272, i32 0, i32 0), i8* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %value, align 1
  %conv = zext i8 %1 to i64
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_B(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.273, i32 0, i32 0), i8* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %value, align 1
  %conv = zext i8 %1 to i64
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_h(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.274, i32 0, i32 0), i16* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, i16* %value, align 2
  %conv = sext i16 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_H(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.275, i32 0, i32 0), i16* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, i16* %value, align 2
  %conv = zext i16 %1 to i64
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_I(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i32 0, i32 0), i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %value, align 4
  %conv = zext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_k(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.277, i32 0, i32 0), i64* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %value, align 8
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_i(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.278, i32 0, i32 0), i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %value, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_l(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.279, i32 0, i32 0), i64* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %value, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_n(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.280, i32 0, i32 0), i64* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %value, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_p(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.281, i32 0, i32 0), i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %value, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_L(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.282, i32 0, i32 0), i64* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %value, align 8
  %call1 = call %struct._object* @PyLong_FromLongLong(i64 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_K(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0), i64* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %value, align 8
  %call1 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_longlong_api(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @test_longlong_api_inner(%struct._object* (i8*)* @raise_test_longlong_error)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_long_and_overflow(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %overflow = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp195 = alloca %struct._object*, align 8
  %_py_decref_tmp225 = alloca %struct._object*, align 8
  %_py_decref_tmp255 = alloca %struct._object*, align 8
  %_py_decref_tmp285 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.163, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call, %struct._object** %num, align 8
  %0 = load %struct._object*, %struct._object** %num, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1234, i32* %overflow, align 4
  %1 = load %struct._object*, %struct._object** %num, align 8
  %call1 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %1, i32* %overflow)
  store i64 %call1, i64* %value, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i64, i64* %value, align 8
  %cmp5 = icmp eq i64 %9, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %10 = load i64, i64* %value, align 8
  %cmp9 = icmp ne i64 %10, -1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %11 = load i32, i32* %overflow, align 4
  %cmp13 = icmp ne i32 %11, 1
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @PyLong_FromLongLong(i64 9223372036854775807)
  store %struct._object* %call17, %struct._object** %num, align 8
  %12 = load %struct._object*, %struct._object** %num, align 8
  %cmp18 = icmp eq %struct._object* %12, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %call21 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call21, %struct._object** %one, align 8
  %13 = load %struct._object*, %struct._object** %one, align 8
  %cmp22 = icmp eq %struct._object* %13, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %if.end.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %14 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp25, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %16, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %19(%struct._object* %20)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.20
  %21 = load %struct._object*, %struct._object** %num, align 8
  %22 = load %struct._object*, %struct._object** %one, align 8
  %call36 = call %struct._object* @PyNumber_Add(%struct._object* %21, %struct._object* %22)
  store %struct._object* %call36, %struct._object** %temp, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.35
  %23 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp38, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %25, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %28(%struct._object* %29)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %30 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp49, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %32, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %35(%struct._object* %36)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %37 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %37, %struct._object** %num, align 8
  %38 = load %struct._object*, %struct._object** %num, align 8
  %cmp59 = icmp eq %struct._object* %38, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %do.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %do.end.58
  store i32 0, i32* %overflow, align 4
  %39 = load %struct._object*, %struct._object** %num, align 8
  %call62 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %39, i32* %overflow)
  store i64 %call62, i64* %value, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.61
  %40 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp64, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %42, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %45(%struct._object* %46)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %47 = load i64, i64* %value, align 8
  %cmp74 = icmp eq i64 %47, -1
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %do.end.73
  %call76 = call %struct._object* @PyErr_Occurred()
  %tobool77 = icmp ne %struct._object* %call76, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %land.lhs.true.75, %do.end.73
  %48 = load i64, i64* %value, align 8
  %cmp80 = icmp ne i64 %48, -1
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %call82 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %49 = load i32, i32* %overflow, align 4
  %cmp84 = icmp ne i32 %49, 1
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.83
  %call86 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i32 0, i32 0))
  store %struct._object* %call86, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.83
  %call88 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.166, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call88, %struct._object** %num, align 8
  %50 = load %struct._object*, %struct._object** %num, align 8
  %cmp89 = icmp eq %struct._object* %50, null
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  store i32 1234, i32* %overflow, align 4
  %51 = load %struct._object*, %struct._object** %num, align 8
  %call92 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %51, i32* %overflow)
  store i64 %call92, i64* %value, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.91
  %52 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp94, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %54, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %57(%struct._object* %58)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %59 = load i64, i64* %value, align 8
  %cmp104 = icmp eq i64 %59, -1
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.109

land.lhs.true.105:                                ; preds = %do.end.103
  %call106 = call %struct._object* @PyErr_Occurred()
  %tobool107 = icmp ne %struct._object* %call106, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.105
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.109:                                       ; preds = %land.lhs.true.105, %do.end.103
  %60 = load i64, i64* %value, align 8
  %cmp110 = icmp ne i64 %60, -1
  br i1 %cmp110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.109
  %call112 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call112, %struct._object** %retval
  br label %return

if.end.113:                                       ; preds = %if.end.109
  %61 = load i32, i32* %overflow, align 4
  %cmp114 = icmp ne i32 %61, -1
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.113
  %call116 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i32 0, i32 0))
  store %struct._object* %call116, %struct._object** %retval
  br label %return

if.end.117:                                       ; preds = %if.end.113
  %call118 = call %struct._object* @PyLong_FromLongLong(i64 -9223372036854775808)
  store %struct._object* %call118, %struct._object** %num, align 8
  %62 = load %struct._object*, %struct._object** %num, align 8
  %cmp119 = icmp eq %struct._object* %62, null
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %if.end.117
  %call122 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call122, %struct._object** %one, align 8
  %63 = load %struct._object*, %struct._object** %one, align 8
  %cmp123 = icmp eq %struct._object* %63, null
  br i1 %cmp123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %if.end.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %64 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp126, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %66, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %69(%struct._object* %70)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.121
  %71 = load %struct._object*, %struct._object** %num, align 8
  %72 = load %struct._object*, %struct._object** %one, align 8
  %call137 = call %struct._object* @PyNumber_Subtract(%struct._object* %71, %struct._object* %72)
  store %struct._object* %call137, %struct._object** %temp, align 8
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.136
  %73 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp139, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %75, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.138
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.138
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %78(%struct._object* %79)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.end.148
  %80 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp150, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %82, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %85(%struct._object* %86)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  %87 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %87, %struct._object** %num, align 8
  %88 = load %struct._object*, %struct._object** %num, align 8
  %cmp160 = icmp eq %struct._object* %88, null
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %do.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.162:                                       ; preds = %do.end.159
  store i32 0, i32* %overflow, align 4
  %89 = load %struct._object*, %struct._object** %num, align 8
  %call163 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %89, i32* %overflow)
  store i64 %call163, i64* %value, align 8
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.162
  %90 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp165, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %92, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body.164
  br label %if.end.173

if.else.170:                                      ; preds = %do.body.164
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  call void %95(%struct._object* %96)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.169
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  %97 = load i64, i64* %value, align 8
  %cmp175 = icmp eq i64 %97, -1
  br i1 %cmp175, label %land.lhs.true.176, label %if.end.180

land.lhs.true.176:                                ; preds = %do.end.174
  %call177 = call %struct._object* @PyErr_Occurred()
  %tobool178 = icmp ne %struct._object* %call177, null
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %land.lhs.true.176
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.180:                                       ; preds = %land.lhs.true.176, %do.end.174
  %98 = load i64, i64* %value, align 8
  %cmp181 = icmp ne i64 %98, -1
  br i1 %cmp181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.180
  %call183 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.164, i32 0, i32 0))
  store %struct._object* %call183, %struct._object** %retval
  br label %return

if.end.184:                                       ; preds = %if.end.180
  %99 = load i32, i32* %overflow, align 4
  %cmp185 = icmp ne i32 %99, -1
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.184
  %call187 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i32 0, i32 0))
  store %struct._object* %call187, %struct._object** %retval
  br label %return

if.end.188:                                       ; preds = %if.end.184
  %call189 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call189, %struct._object** %num, align 8
  %100 = load %struct._object*, %struct._object** %num, align 8
  %cmp190 = icmp eq %struct._object* %100, null
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.192:                                       ; preds = %if.end.188
  store i32 1234, i32* %overflow, align 4
  %101 = load %struct._object*, %struct._object** %num, align 8
  %call193 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %101, i32* %overflow)
  store i64 %call193, i64* %value, align 8
  br label %do.body.194

do.body.194:                                      ; preds = %if.end.192
  %102 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp195, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt196, align 8
  %dec197 = add i64 %104, -1
  store i64 %dec197, i64* %ob_refcnt196, align 8
  %cmp198 = icmp ne i64 %dec197, 0
  br i1 %cmp198, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %do.body.194
  br label %if.end.203

if.else.200:                                      ; preds = %do.body.194
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  %ob_type201 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type201, align 8
  %tp_dealloc202 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc202, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp195, align 8
  call void %107(%struct._object* %108)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.199
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  %109 = load i64, i64* %value, align 8
  %cmp205 = icmp eq i64 %109, -1
  br i1 %cmp205, label %land.lhs.true.206, label %if.end.210

land.lhs.true.206:                                ; preds = %do.end.204
  %call207 = call %struct._object* @PyErr_Occurred()
  %tobool208 = icmp ne %struct._object* %call207, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %land.lhs.true.206
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.210:                                       ; preds = %land.lhs.true.206, %do.end.204
  %110 = load i64, i64* %value, align 8
  %cmp211 = icmp ne i64 %110, 255
  br i1 %cmp211, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %if.end.210
  %call213 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.169, i32 0, i32 0))
  store %struct._object* %call213, %struct._object** %retval
  br label %return

if.end.214:                                       ; preds = %if.end.210
  %111 = load i32, i32* %overflow, align 4
  %cmp215 = icmp ne i32 %111, 0
  br i1 %cmp215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.end.214
  %call217 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call217, %struct._object** %retval
  br label %return

if.end.218:                                       ; preds = %if.end.214
  %call219 = call %struct._object* @PyLong_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0), i8** null, i32 16)
  store %struct._object* %call219, %struct._object** %num, align 8
  %112 = load %struct._object*, %struct._object** %num, align 8
  %cmp220 = icmp eq %struct._object* %112, null
  br i1 %cmp220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.218
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.222:                                       ; preds = %if.end.218
  store i32 0, i32* %overflow, align 4
  %113 = load %struct._object*, %struct._object** %num, align 8
  %call223 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %113, i32* %overflow)
  store i64 %call223, i64* %value, align 8
  br label %do.body.224

do.body.224:                                      ; preds = %if.end.222
  %114 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp225, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_refcnt226 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt226, align 8
  %dec227 = add i64 %116, -1
  store i64 %dec227, i64* %ob_refcnt226, align 8
  %cmp228 = icmp ne i64 %dec227, 0
  br i1 %cmp228, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %do.body.224
  br label %if.end.233

if.else.230:                                      ; preds = %do.body.224
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  call void %119(%struct._object* %120)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  %121 = load i64, i64* %value, align 8
  %cmp235 = icmp eq i64 %121, -1
  br i1 %cmp235, label %land.lhs.true.236, label %if.end.240

land.lhs.true.236:                                ; preds = %do.end.234
  %call237 = call %struct._object* @PyErr_Occurred()
  %tobool238 = icmp ne %struct._object* %call237, null
  br i1 %tobool238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %land.lhs.true.236
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.240:                                       ; preds = %land.lhs.true.236, %do.end.234
  %122 = load i64, i64* %value, align 8
  %cmp241 = icmp ne i64 %122, -255
  br i1 %cmp241, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %if.end.240
  %call243 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.169, i32 0, i32 0))
  store %struct._object* %call243, %struct._object** %retval
  br label %return

if.end.244:                                       ; preds = %if.end.240
  %123 = load i32, i32* %overflow, align 4
  %cmp245 = icmp ne i32 %123, 0
  br i1 %cmp245, label %if.then.246, label %if.end.248

if.then.246:                                      ; preds = %if.end.244
  %call247 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  store %struct._object* %call247, %struct._object** %retval
  br label %return

if.end.248:                                       ; preds = %if.end.244
  %call249 = call %struct._object* @PyLong_FromLongLong(i64 9223372036854775807)
  store %struct._object* %call249, %struct._object** %num, align 8
  %124 = load %struct._object*, %struct._object** %num, align 8
  %cmp250 = icmp eq %struct._object* %124, null
  br i1 %cmp250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.end.248
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.252:                                       ; preds = %if.end.248
  store i32 1234, i32* %overflow, align 4
  %125 = load %struct._object*, %struct._object** %num, align 8
  %call253 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %125, i32* %overflow)
  store i64 %call253, i64* %value, align 8
  br label %do.body.254

do.body.254:                                      ; preds = %if.end.252
  %126 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp255, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_refcnt256 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt256, align 8
  %dec257 = add i64 %128, -1
  store i64 %dec257, i64* %ob_refcnt256, align 8
  %cmp258 = icmp ne i64 %dec257, 0
  br i1 %cmp258, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %do.body.254
  br label %if.end.263

if.else.260:                                      ; preds = %do.body.254
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_type261 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type261, align 8
  %tp_dealloc262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc262, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  call void %131(%struct._object* %132)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  %133 = load i64, i64* %value, align 8
  %cmp265 = icmp eq i64 %133, -1
  br i1 %cmp265, label %land.lhs.true.266, label %if.end.270

land.lhs.true.266:                                ; preds = %do.end.264
  %call267 = call %struct._object* @PyErr_Occurred()
  %tobool268 = icmp ne %struct._object* %call267, null
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %land.lhs.true.266
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.270:                                       ; preds = %land.lhs.true.266, %do.end.264
  %134 = load i64, i64* %value, align 8
  %cmp271 = icmp ne i64 %134, 9223372036854775807
  br i1 %cmp271, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.end.270
  %call273 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.284, i32 0, i32 0))
  store %struct._object* %call273, %struct._object** %retval
  br label %return

if.end.274:                                       ; preds = %if.end.270
  %135 = load i32, i32* %overflow, align 4
  %cmp275 = icmp ne i32 %135, 0
  br i1 %cmp275, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %if.end.274
  %call277 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call277, %struct._object** %retval
  br label %return

if.end.278:                                       ; preds = %if.end.274
  %call279 = call %struct._object* @PyLong_FromLongLong(i64 -9223372036854775808)
  store %struct._object* %call279, %struct._object** %num, align 8
  %136 = load %struct._object*, %struct._object** %num, align 8
  %cmp280 = icmp eq %struct._object* %136, null
  br i1 %cmp280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.end.278
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.282:                                       ; preds = %if.end.278
  store i32 0, i32* %overflow, align 4
  %137 = load %struct._object*, %struct._object** %num, align 8
  %call283 = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %137, i32* %overflow)
  store i64 %call283, i64* %value, align 8
  br label %do.body.284

do.body.284:                                      ; preds = %if.end.282
  %138 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp285, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  %ob_refcnt286 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt286, align 8
  %dec287 = add i64 %140, -1
  store i64 %dec287, i64* %ob_refcnt286, align 8
  %cmp288 = icmp ne i64 %dec287, 0
  br i1 %cmp288, label %if.then.289, label %if.else.290

if.then.289:                                      ; preds = %do.body.284
  br label %if.end.293

if.else.290:                                      ; preds = %do.body.284
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  %ob_type291 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type291, align 8
  %tp_dealloc292 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc292, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8
  call void %143(%struct._object* %144)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.290, %if.then.289
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %145 = load i64, i64* %value, align 8
  %cmp295 = icmp eq i64 %145, -1
  br i1 %cmp295, label %land.lhs.true.296, label %if.end.300

land.lhs.true.296:                                ; preds = %do.end.294
  %call297 = call %struct._object* @PyErr_Occurred()
  %tobool298 = icmp ne %struct._object* %call297, null
  br i1 %tobool298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %land.lhs.true.296
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.300:                                       ; preds = %land.lhs.true.296, %do.end.294
  %146 = load i64, i64* %value, align 8
  %cmp301 = icmp ne i64 %146, -9223372036854775808
  br i1 %cmp301, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.300
  %call303 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.285, i32 0, i32 0))
  store %struct._object* %call303, %struct._object** %retval
  br label %return

if.end.304:                                       ; preds = %if.end.300
  %147 = load i32, i32* %overflow, align 4
  %cmp305 = icmp ne i32 %147, 0
  br i1 %cmp305, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.end.304
  %call307 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* %call307, %struct._object** %retval
  br label %return

if.end.308:                                       ; preds = %if.end.304
  %148 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %148, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.308, %if.then.306, %if.then.302, %if.then.299, %if.then.281, %if.then.276, %if.then.272, %if.then.269, %if.then.251, %if.then.246, %if.then.242, %if.then.239, %if.then.221, %if.then.216, %if.then.212, %if.then.209, %if.then.191, %if.then.186, %if.then.182, %if.then.179, %if.then.161, %do.end.135, %if.then.120, %if.then.115, %if.then.111, %if.then.108, %if.then.90, %if.then.85, %if.then.81, %if.then.78, %if.then.60, %do.end.34, %if.then.19, %if.then.14, %if.then.10, %if.then.7, %if.then
  %149 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %149
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_L_code(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %num = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %0 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyLong_FromLong(i64 42)
  store %struct._object* %call1, %struct._object** %num, align 8
  %1 = load %struct._object*, %struct._object** %num, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %num, align 8
  %3 = load %struct._object*, %struct._object** %tuple, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %2, %struct._object** %arrayidx, align 8
  store i64 -1, i64* %value, align 8
  %5 = load %struct._object*, %struct._object** %tuple, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.286, i32 0, i32 0), i64* %value)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i64, i64* %value, align 8
  %cmp9 = icmp ne i64 %6, 42
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.287, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %7 = load %struct._object*, %struct._object** %num, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %call16 = call %struct._object* @PyLong_FromLong(i64 42)
  store %struct._object* %call16, %struct._object** %num, align 8
  %14 = load %struct._object*, %struct._object** %num, align 8
  %cmp17 = icmp eq %struct._object* %14, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %num, align 8
  %16 = load %struct._object*, %struct._object** %tuple, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 0
  store %struct._object* %15, %struct._object** %arrayidx21, align 8
  store i64 -1, i64* %value, align 8
  %18 = load %struct._object*, %struct._object** %tuple, align 8
  %call22 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.286, i32 0, i32 0), i64* %value)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %19 = load i64, i64* %value, align 8
  %cmp26 = icmp ne i64 %19, 42
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %call28 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.288, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %20 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp31, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %22, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %25(%struct._object* %26)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %27 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.40, %if.then.27, %if.then.24, %if.then.18, %if.then.10, %if.then.7, %if.then.3, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_c(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %c = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i8* %c)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %c, i64 1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_s(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i32 0, i32 0), i8** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %call1 = call %struct._object* @PyBytes_FromString(i8* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_s_star(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  %bytes = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.291, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %bytes, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %buffer)
  %3 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_s_hash(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.292, i32 0, i32 0), i8** %str, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %2 = load i64, i64* %size, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_z(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.293, i32 0, i32 0), i8** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %str, align 8
  %call2 = call %struct._object* @PyBytes_FromString(i8* %2)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_z_star(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  %bytes = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.294, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %buf2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %2 = load i8*, i8** %buf2, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* %2, i64 %3)
  store %struct._object* %call3, %struct._object** %bytes, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %bytes, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  call void @PyBuffer_Release(%struct.bufferinfo* %buffer)
  %5 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_z_hash(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.295, i32 0, i32 0), i8** %str, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %str, align 8
  %3 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* %2, i64 %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_y(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.296, i32 0, i32 0), i8** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %call1 = call %struct._object* @PyBytes_FromString(i8* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_y_star(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  %bytes = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.297, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %bytes, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %buffer)
  %3 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_y_hash(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i32 0, i32 0), i8** %str, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %2 = load i64, i64* %size, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_u(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i32*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.299, i32 0, i32 0), i32** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %str, align 8
  %call1 = call i64 @Py_UNICODE_strlen(i32* %1)
  store i64 %call1, i64* %size, align 8
  %2 = load i32*, i32** %str, align 8
  %3 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @PyUnicode_FromUnicode(i32* %2, i64 %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_u_hash(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i32*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.300, i32 0, i32 0), i32** %str, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %str, align 8
  %2 = load i64, i64* %size, align 8
  %call1 = call %struct._object* @PyUnicode_FromUnicode(i32* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_Z(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i32*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.301, i32 0, i32 0), i32** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %str, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load i32*, i32** %str, align 8
  %call2 = call i64 @Py_UNICODE_strlen(i32* %2)
  store i64 %call2, i64* %size, align 8
  %3 = load i32*, i32** %str, align 8
  %4 = load i64, i64* %size, align 8
  %call3 = call %struct._object* @PyUnicode_FromUnicode(i32* %3, i64 %4)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_Z_hash(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i32*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.302, i32 0, i32 0), i32** %str, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %str, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load i32*, i32** %str, align 8
  %3 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @PyUnicode_FromUnicode(i32* %2, i64 %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getargs_w_star(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.303, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp sle i64 2, %1
  br i1 %cmp, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  store i8* %2, i8** %str, align 8
  %3 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 0
  store i8 91, i8* %arrayidx, align 1
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %4 = load i64, i64* %len2, align 8
  %sub = sub i64 %4, 1
  %5 = load i8*, i8** %str, align 8
  %arrayidx3 = getelementptr i8, i8* %5, i64 %sub
  store i8 93, i8* %arrayidx3, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %if.end
  %buf5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 0
  %6 = load i8*, i8** %buf5, align 8
  %len6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buffer, i32 0, i32 2
  %7 = load i64, i64* %len6, align 8
  %call7 = call %struct._object* @PyBytes_FromStringAndSize(i8* %6, i64 %7)
  store %struct._object* %call7, %struct._object** %result, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %buffer)
  %8 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_incrementalencoder(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.304, i32 0, i32 0), i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8
  %2 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyCodec_IncrementalEncoder(i8* %1, i8* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_incrementaldecoder(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.305, i32 0, i32 0), i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8
  %2 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyCodec_IncrementalDecoder(i8* %1, i8* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_s_code(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %value = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %0 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyUnicode_Decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.306, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.307, i32 0, i32 0), i8* null)
  store %struct._object* %call1, %struct._object** %obj, align 8
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %tuple, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %2, %struct._object** %arrayidx, align 8
  %5 = load %struct._object*, %struct._object** %tuple, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.308, i32 0, i32 0), i8** %value)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %tuple, align 8
  %call9 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.309, i32 0, i32 0), i8** %value)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %7 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then.7, %if.then.3, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_u_code(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %value = alloca i32*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_ascii_whitespace, i32 0, i64 25), align 1
  %conv = zext i8 %0 to i32
  store volatile i32 %conv, i32* @x, align 4
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %1 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyUnicode_Decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.310, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.311, i32 0, i32 0), i8* null)
  store %struct._object* %call2, %struct._object** %obj, align 8
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %4 = load %struct._object*, %struct._object** %tuple, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %3, %struct._object** %arrayidx, align 8
  store i32* null, i32** %value, align 8
  %6 = load %struct._object*, %struct._object** %tuple, align 8
  %call7 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.312, i32 0, i32 0), i32** %value)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %7 = load i32*, i32** %value, align 8
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %wstr = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 4
  %10 = load i32*, i32** %wstr, align 8
  %tobool = icmp ne i32* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %11 = load %struct._object*, %struct._object** %obj, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %wstr12 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 4
  %13 = load i32*, i32** %wstr12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %obj, align 8
  %call13 = call i32* @PyUnicode_AsUnicode(%struct._object* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %13, %cond.true ], [ %call13, %cond.false ]
  %cmp14 = icmp ne i32* %7, %cond
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end
  %call17 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.313, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  store i32* null, i32** %value, align 8
  %15 = load %struct._object*, %struct._object** %tuple, align 8
  %call19 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.314, i32 0, i32 0), i32** %value, i64* %len)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %16 = load i32*, i32** %value, align 8
  %17 = load %struct._object*, %struct._object** %obj, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %wstr24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 4
  %19 = load i32*, i32** %wstr24, align 8
  %tobool25 = icmp ne i32* %19, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %if.end.23
  %20 = load %struct._object*, %struct._object** %obj, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %wstr27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 4
  %22 = load i32*, i32** %wstr27, align 8
  br label %cond.end.30

cond.false.28:                                    ; preds = %if.end.23
  %23 = load %struct._object*, %struct._object** %obj, align 8
  %call29 = call i32* @PyUnicode_AsUnicode(%struct._object* %23)
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.26
  %cond31 = phi i32* [ %22, %cond.true.26 ], [ %call29, %cond.false.28 ]
  %cmp32 = icmp ne i32* %16, %cond31
  br i1 %cmp32, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.30
  %24 = load i64, i64* %len, align 8
  %25 = load %struct._object*, %struct._object** %obj, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*
  %wstr34 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 4
  %27 = load i32*, i32** %wstr34, align 8
  %tobool35 = icmp ne i32* %27, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.47

cond.true.36:                                     ; preds = %lor.lhs.false
  %28 = load %struct._object*, %struct._object** %obj, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %30, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool37 = icmp ne i32 %bf.clear, 0
  br i1 %tobool37, label %land.lhs.true, label %cond.false.44

land.lhs.true:                                    ; preds = %cond.true.36
  %31 = load %struct._object*, %struct._object** %obj, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*
  %state38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 3
  %33 = bitcast %struct.anon* %state38 to i32*
  %bf.load39 = load i32, i32* %33, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 5
  %bf.clear41 = and i32 %bf.lshr40, 1
  %tobool42 = icmp ne i32 %bf.clear41, 0
  br i1 %tobool42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %land.lhs.true
  %34 = load %struct._object*, %struct._object** %obj, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 1
  %36 = load i64, i64* %length, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %land.lhs.true, %cond.true.36
  %37 = load %struct._object*, %struct._object** %obj, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyCompactUnicodeObject*
  %wstr_length = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %38, i32 0, i32 3
  %39 = load i64, i64* %wstr_length, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i64 [ %36, %cond.true.43 ], [ %39, %cond.false.44 ]
  br label %cond.end.66

cond.false.47:                                    ; preds = %lor.lhs.false
  %40 = load %struct._object*, %struct._object** %obj, align 8
  %call48 = call i32* @PyUnicode_AsUnicode(%struct._object* %40)
  %41 = load %struct._object*, %struct._object** %obj, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*
  %state49 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 3
  %43 = bitcast %struct.anon* %state49 to i32*
  %bf.load50 = load i32, i32* %43, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 6
  %bf.clear52 = and i32 %bf.lshr51, 1
  %tobool53 = icmp ne i32 %bf.clear52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %cond.false.62

land.lhs.true.54:                                 ; preds = %cond.false.47
  %44 = load %struct._object*, %struct._object** %obj, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state55 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon* %state55 to i32*
  %bf.load56 = load i32, i32* %46, align 4
  %bf.lshr57 = lshr i32 %bf.load56, 5
  %bf.clear58 = and i32 %bf.lshr57, 1
  %tobool59 = icmp ne i32 %bf.clear58, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %land.lhs.true.54
  %47 = load %struct._object*, %struct._object** %obj, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %length61 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 1
  %49 = load i64, i64* %length61, align 8
  br label %cond.end.64

cond.false.62:                                    ; preds = %land.lhs.true.54, %cond.false.47
  %50 = load %struct._object*, %struct._object** %obj, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyCompactUnicodeObject*
  %wstr_length63 = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %51, i32 0, i32 3
  %52 = load i64, i64* %wstr_length63, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.60
  %cond65 = phi i64 [ %49, %cond.true.60 ], [ %52, %cond.false.62 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.end.45
  %cond67 = phi i64 [ %cond46, %cond.end.45 ], [ %cond65, %cond.end.64 ]
  %cmp68 = icmp ne i64 %24, %cond67
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %cond.end.66, %cond.end.30
  %call71 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.315, i32 0, i32 0))
  store %struct._object* %call71, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %cond.end.66
  br label %do.body

do.body:                                          ; preds = %if.end.72
  %53 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp73 = icmp ne i64 %dec, 0
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %do.body
  br label %if.end.76

if.else:                                          ; preds = %do.body
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.75
  br label %do.end

do.end:                                           ; preds = %if.end.76
  %60 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.70, %if.then.22, %if.then.16, %if.then.10, %if.then.5, %if.then
  %61 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %61
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_Z_code(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %value1 = alloca i32*, align 8
  %value2 = alloca i32*, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %tuple, align 8
  %0 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.310, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %obj, align 8
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load %struct._object*, %struct._object** %tuple, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %1, %struct._object** %arrayidx, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %5 = load %struct._object*, %struct._object** %tuple, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 1
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx3, align 8
  store i32* null, i32** %value1, align 8
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %wstr = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 4
  %9 = load i32*, i32** %wstr, align 8
  %tobool = icmp ne i32* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %wstr4 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 4
  %12 = load i32*, i32** %wstr4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %obj, align 8
  %call5 = call i32* @PyUnicode_AsUnicode(%struct._object* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %12, %cond.true ], [ %call5, %cond.false ]
  store i32* %cond, i32** %value2, align 8
  %14 = load %struct._object*, %struct._object** %tuple, align 8
  %call6 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.316, i32 0, i32 0), i32** %value1, i32** %value2)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %cond.end
  %15 = load i32*, i32** %value1, align 8
  %16 = load %struct._object*, %struct._object** %obj, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*
  %wstr10 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 4
  %18 = load i32*, i32** %wstr10, align 8
  %tobool11 = icmp ne i32* %18, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %wstr13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 4
  %21 = load i32*, i32** %wstr13, align 8
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.end.9
  %22 = load %struct._object*, %struct._object** %obj, align 8
  %call15 = call i32* @PyUnicode_AsUnicode(%struct._object* %22)
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.12
  %cond17 = phi i32* [ %21, %cond.true.12 ], [ %call15, %cond.false.14 ]
  %cmp18 = icmp ne i32* %15, %cond17
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %cond.end.16
  %call20 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.317, i32 0, i32 0))
  store %struct._object* %call20, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %cond.end.16
  %23 = load i32*, i32** %value2, align 8
  %cmp22 = icmp ne i32* %23, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %call24 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.318, i32 0, i32 0))
  store %struct._object* %call24, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  store i32* null, i32** %value1, align 8
  %24 = load %struct._object*, %struct._object** %obj, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %wstr26 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 4
  %26 = load i32*, i32** %wstr26, align 8
  %tobool27 = icmp ne i32* %26, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %if.end.25
  %27 = load %struct._object*, %struct._object** %obj, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %wstr29 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 4
  %29 = load i32*, i32** %wstr29, align 8
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.end.25
  %30 = load %struct._object*, %struct._object** %obj, align 8
  %call31 = call i32* @PyUnicode_AsUnicode(%struct._object* %30)
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi i32* [ %29, %cond.true.28 ], [ %call31, %cond.false.30 ]
  store i32* %cond33, i32** %value2, align 8
  store i64 -1, i64* %len1, align 8
  store i64 -1, i64* %len2, align 8
  %31 = load %struct._object*, %struct._object** %tuple, align 8
  %call34 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.319, i32 0, i32 0), i32** %value1, i64* %len1, i32** %value2, i64* %len2)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %cond.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %cond.end.32
  %32 = load i32*, i32** %value1, align 8
  %33 = load %struct._object*, %struct._object** %obj, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %wstr38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 4
  %35 = load i32*, i32** %wstr38, align 8
  %tobool39 = icmp ne i32* %35, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.end.37
  %36 = load %struct._object*, %struct._object** %obj, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %wstr41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 4
  %38 = load i32*, i32** %wstr41, align 8
  br label %cond.end.44

cond.false.42:                                    ; preds = %if.end.37
  %39 = load %struct._object*, %struct._object** %obj, align 8
  %call43 = call i32* @PyUnicode_AsUnicode(%struct._object* %39)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.40
  %cond45 = phi i32* [ %38, %cond.true.40 ], [ %call43, %cond.false.42 ]
  %cmp46 = icmp ne i32* %32, %cond45
  br i1 %cmp46, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.44
  %40 = load i64, i64* %len1, align 8
  %41 = load %struct._object*, %struct._object** %obj, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*
  %wstr47 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 4
  %43 = load i32*, i32** %wstr47, align 8
  %tobool48 = icmp ne i32* %43, null
  br i1 %tobool48, label %cond.true.49, label %cond.false.60

cond.true.49:                                     ; preds = %lor.lhs.false
  %44 = load %struct._object*, %struct._object** %obj, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %46, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool50 = icmp ne i32 %bf.clear, 0
  br i1 %tobool50, label %land.lhs.true, label %cond.false.57

land.lhs.true:                                    ; preds = %cond.true.49
  %47 = load %struct._object*, %struct._object** %obj, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3
  %49 = bitcast %struct.anon* %state51 to i32*
  %bf.load52 = load i32, i32* %49, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 5
  %bf.clear54 = and i32 %bf.lshr53, 1
  %tobool55 = icmp ne i32 %bf.clear54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %land.lhs.true
  %50 = load %struct._object*, %struct._object** %obj, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 1
  %52 = load i64, i64* %length, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %land.lhs.true, %cond.true.49
  %53 = load %struct._object*, %struct._object** %obj, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyCompactUnicodeObject*
  %wstr_length = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %54, i32 0, i32 3
  %55 = load i64, i64* %wstr_length, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i64 [ %52, %cond.true.56 ], [ %55, %cond.false.57 ]
  br label %cond.end.79

cond.false.60:                                    ; preds = %lor.lhs.false
  %56 = load %struct._object*, %struct._object** %obj, align 8
  %call61 = call i32* @PyUnicode_AsUnicode(%struct._object* %56)
  %57 = load %struct._object*, %struct._object** %obj, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %58, i32 0, i32 3
  %59 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %59, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 6
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %cond.false.75

land.lhs.true.67:                                 ; preds = %cond.false.60
  %60 = load %struct._object*, %struct._object** %obj, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %61, i32 0, i32 3
  %62 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %62, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 5
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %land.lhs.true.67
  %63 = load %struct._object*, %struct._object** %obj, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyASCIIObject*
  %length74 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %64, i32 0, i32 1
  %65 = load i64, i64* %length74, align 8
  br label %cond.end.77

cond.false.75:                                    ; preds = %land.lhs.true.67, %cond.false.60
  %66 = load %struct._object*, %struct._object** %obj, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyCompactUnicodeObject*
  %wstr_length76 = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %67, i32 0, i32 3
  %68 = load i64, i64* %wstr_length76, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i64 [ %65, %cond.true.73 ], [ %68, %cond.false.75 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.end.58
  %cond80 = phi i64 [ %cond59, %cond.end.58 ], [ %cond78, %cond.end.77 ]
  %cmp81 = icmp ne i64 %40, %cond80
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %cond.end.79, %cond.end.44
  %call83 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.320, i32 0, i32 0))
  store %struct._object* %call83, %struct._object** %retval
  br label %return

if.end.84:                                        ; preds = %cond.end.79
  %69 = load i32*, i32** %value2, align 8
  %cmp85 = icmp ne i32* %69, null
  br i1 %cmp85, label %if.then.88, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.end.84
  %70 = load i64, i64* %len2, align 8
  %cmp87 = icmp ne i64 %70, 0
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %lor.lhs.false.86, %if.end.84
  %call89 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.321, i32 0, i32 0))
  store %struct._object* %call89, %struct._object** %retval
  br label %return

if.end.90:                                        ; preds = %lor.lhs.false.86
  br label %do.body

do.body:                                          ; preds = %if.end.90
  %71 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %73, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp91 = icmp ne i64 %dec, 0
  br i1 %cmp91, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %do.body
  br label %if.end.93

if.else:                                          ; preds = %do.body
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %76(%struct._object* %77)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else, %if.then.92
  br label %do.end

do.end:                                           ; preds = %if.end.93
  %78 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc94 = add i64 %78, 1
  store i64 %inc94, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.88, %if.then.82, %if.then.36, %if.then.23, %if.then.19, %if.then.8, %if.then
  %79 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %79
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_widechar(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %wtextlen = alloca i64, align 8
  %wide = alloca %struct._object*, align 8
  %utf8 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i64 1, i64* %wtextlen, align 8
  %0 = load i64, i64* %wtextlen, align 8
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_widechar.wtext, i32 0, i32 0), i64 %0)
  store %struct._object* %call, %struct._object** %wide, align 8
  %1 = load %struct._object*, %struct._object** %wide, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.322, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %utf8, align 8
  %2 = load %struct._object*, %struct._object** %utf8, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %3 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %wide, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 1
  %12 = load i64, i64* %length, align 8
  %13 = load %struct._object*, %struct._object** %utf8, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %length8 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 1
  %15 = load i64, i64* %length8, align 8
  %cmp9 = icmp ne i64 %12, %15
  br i1 %cmp9, label %if.then.10, label %if.end.34

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %16 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp12, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %18, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %23 = load %struct._object*, %struct._object** %utf8, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp23, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %25, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %28(%struct._object* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %call33 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.323, i32 0, i32 0))
  store %struct._object* %call33, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.7
  %30 = load %struct._object*, %struct._object** %wide, align 8
  %31 = load %struct._object*, %struct._object** %utf8, align 8
  %call35 = call i32 @PyUnicode_Compare(%struct._object* %30, %struct._object* %31)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.36, label %if.end.64

if.then.36:                                       ; preds = %if.end.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %32 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp38, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %34, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %37(%struct._object* %38)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %39 = load %struct._object*, %struct._object** %utf8, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp49, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %41, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %44(%struct._object* %45)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %call59 = call %struct._object* @PyErr_Occurred()
  %tobool60 = icmp ne %struct._object* %call59, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %do.end.58
  %call63 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.324, i32 0, i32 0))
  store %struct._object* %call63, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.34
  br label %do.body.65

do.body.65:                                       ; preds = %if.end.64
  %46 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp66, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %48, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %51(%struct._object* %52)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %53 = load %struct._object*, %struct._object** %utf8, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp77, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %55, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %58(%struct._object* %59)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %call87 = call %struct._object* @PyUnicode_FromWideChar(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_widechar.invalid, i32 0, i32 0), i64 1)
  store %struct._object* %call87, %struct._object** %wide, align 8
  %60 = load %struct._object*, %struct._object** %wide, align 8
  %cmp88 = icmp eq %struct._object* %60, null
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.end.86
  call void @PyErr_Clear()
  br label %if.end.92

if.else.90:                                       ; preds = %do.end.86
  %call91 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.325, i32 0, i32 0))
  store %struct._object* %call91, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.then.89
  %call93 = call %struct._object* @PyUnicode_FromUnicode(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_widechar.invalid, i32 0, i32 0), i64 1)
  store %struct._object* %call93, %struct._object** %wide, align 8
  %61 = load %struct._object*, %struct._object** %wide, align 8
  %cmp94 = icmp eq %struct._object* %61, null
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.92
  call void @PyErr_Clear()
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.92
  %call97 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.326, i32 0, i32 0))
  store %struct._object* %call97, %struct._object** %retval
  br label %return

if.end.98:                                        ; preds = %if.then.95
  %call99 = call %struct._object* @PyUnicode_FromUnicode(i32* null, i64 1)
  store %struct._object* %call99, %struct._object** %wide, align 8
  %62 = load %struct._object*, %struct._object** %wide, align 8
  %cmp100 = icmp eq %struct._object* %62, null
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.102:                                       ; preds = %if.end.98
  %63 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_widechar.invalid, i32 0, i64 0), align 4
  %64 = load %struct._object*, %struct._object** %wide, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %wstr = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i32 0, i32 4
  %66 = load i32*, i32** %wstr, align 8
  %tobool103 = icmp ne i32* %66, null
  br i1 %tobool103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.102
  %67 = load %struct._object*, %struct._object** %wide, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %wstr104 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 4
  %69 = load i32*, i32** %wstr104, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.102
  %70 = load %struct._object*, %struct._object** %wide, align 8
  %call105 = call i32* @PyUnicode_AsUnicode(%struct._object* %70)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %69, %cond.true ], [ %call105, %cond.false ]
  %arrayidx = getelementptr i32, i32* %cond, i64 0
  store i32 %63, i32* %arrayidx, align 4
  %71 = load %struct._object*, %struct._object** %wide, align 8
  %call106 = call i32 @_PyUnicode_Ready(%struct._object* %71)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.120

if.then.108:                                      ; preds = %cond.end
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  %72 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp110, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %74, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.109
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.109
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %77(%struct._object* %78)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  call void @PyErr_Clear()
  br label %if.end.133

if.else.120:                                      ; preds = %cond.end
  br label %do.body.121

do.body.121:                                      ; preds = %if.else.120
  %79 = load %struct._object*, %struct._object** %wide, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp122, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %81, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.121
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.121
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %84(%struct._object* %85)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  %call132 = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.327, i32 0, i32 0))
  store %struct._object* %call132, %struct._object** %retval
  br label %return

if.end.133:                                       ; preds = %do.end.119
  %86 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %86, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.133, %do.end.131, %if.then.101, %if.else.96, %if.else.90, %if.end.62, %if.then.61, %do.end.32, %do.end, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_aswidechar(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %unicode = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %buflen = alloca i64, align 8
  %size = alloca i64, align 8
  %buffer = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.328, i32 0, i32 0), %struct._object** %unicode, i64* %buflen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %buflen, align 8
  %mul = mul i64 %1, 4
  %call1 = call i8* @PyMem_Malloc(i64 %mul)
  %2 = bitcast i8* %call1 to i32*
  store i32* %2, i32** %buffer, align 8
  %3 = load i32*, i32** %buffer, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %5 = load i32*, i32** %buffer, align 8
  %6 = load i64, i64* %buflen, align 8
  %call5 = call i64 @PyUnicode_AsWideChar(%struct._object* %4, i32* %5, i64 %6)
  store i64 %call5, i64* %size, align 8
  %7 = load i64, i64* %size, align 8
  %cmp6 = icmp eq i64 %7, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %8 = load i32*, i32** %buffer, align 8
  %9 = bitcast i32* %8 to i8*
  call void @PyMem_Free(i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %10 = load i64, i64* %size, align 8
  %11 = load i64, i64* %buflen, align 8
  %cmp9 = icmp slt i64 %10, %11
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %12 = load i64, i64* %size, align 8
  %add = add i64 %12, 1
  store i64 %add, i64* %buflen, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.8
  %13 = load i64, i64* %size, align 8
  store i64 %13, i64* %buflen, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %14 = load i32*, i32** %buffer, align 8
  %15 = load i64, i64* %buflen, align 8
  %call12 = call %struct._object* @PyUnicode_FromWideChar(i32* %14, i64 %15)
  store %struct._object* %call12, %struct._object** %result, align 8
  %16 = load i32*, i32** %buffer, align 8
  %17 = bitcast i32* %16 to i8*
  call void @PyMem_Free(i8* %17)
  %18 = load %struct._object*, %struct._object** %result, align 8
  %cmp13 = icmp eq %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %19 = load %struct._object*, %struct._object** %result, align 8
  %20 = load i64, i64* %size, align 8
  %call16 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.329, i32 0, i32 0), %struct._object* %19, i64 %20)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.7, %if.then.2, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_aswidecharstring(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %unicode = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %buffer = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.330, i32 0, i32 0), %struct._object** %unicode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %unicode, align 8
  %call1 = call i32* @PyUnicode_AsWideCharString(%struct._object* %1, i64* %size)
  store i32* %call1, i32** %buffer, align 8
  %2 = load i32*, i32** %buffer, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32*, i32** %buffer, align 8
  %4 = load i64, i64* %size, align 8
  %add = add i64 %4, 1
  %call4 = call %struct._object* @PyUnicode_FromWideChar(i32* %3, i64 %add)
  store %struct._object* %call4, %struct._object** %result, align 8
  %5 = load i32*, i32** %buffer, align 8
  %6 = bitcast i32* %5 to i8*
  call void @PyMem_Free(i8* %6)
  %7 = load %struct._object*, %struct._object** %result, align 8
  %cmp5 = icmp eq %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %result, align 8
  %9 = load i64, i64* %size, align 8
  %call8 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.329, i32 0, i32 0), %struct._object* %8, i64 %9)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_encodedecimal(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %unicode = alloca i32*, align 8
  %length = alloca i64, align 8
  %errors = alloca i8*, align 8
  %decimal = alloca %struct._object*, align 8
  %decimal_length = alloca i64, align 8
  %new_length = alloca i64, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.331, i32 0, i32 0), i32** %unicode, i64* %length, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %length, align 8
  %mul = mul i64 %1, 7
  store i64 %mul, i64* %decimal_length, align 8
  %2 = load i64, i64* %decimal_length, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call1, %struct._object** %decimal, align 8
  %3 = load %struct._object*, %struct._object** %decimal, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32*, i32** %unicode, align 8
  %5 = load i64, i64* %length, align 8
  %6 = load %struct._object*, %struct._object** %decimal, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %8 = load i8*, i8** %errors, align 8
  %call4 = call i32 @PyUnicode_EncodeDecimal(i32* %4, i64 %5, i8* %arraydecay, i8* %8)
  store i32 %call4, i32* %res, align 4
  %9 = load i32, i32* %res, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %10 = load %struct._object*, %struct._object** %decimal, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %decimal, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyBytesObject*
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %18, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #5
  store i64 %call13, i64* %new_length, align 8
  %19 = load i64, i64* %new_length, align 8
  %call14 = call i32 @_PyBytes_Resize(%struct._object** %decimal, i64 %19)
  store i32 %call14, i32* %res, align 4
  %20 = load i32, i32* %res, align 4
  %cmp15 = icmp slt i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %21 = load %struct._object*, %struct._object** %decimal, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %do.end, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_transformdecimaltoascii(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %unicode = alloca i32*, align 8
  %length = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.331, i32 0, i32 0), i32** %unicode, i64* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %unicode, align 8
  %2 = load i64, i64* %length, align 8
  %call1 = call %struct._object* @PyUnicode_TransformDecimalToASCII(i32* %1, i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_legacy_string(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %data = alloca i32*, align 8
  %len = alloca i64, align 8
  %u = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.300, i32 0, i32 0), i32** %data, i64* %len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len, align 8
  %call1 = call %struct._object* @PyUnicode_FromUnicode(i32* null, i64 %1)
  store %struct._object* %call1, %struct._object** %u, align 8
  %2 = load %struct._object*, %struct._object** %u, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %u, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %wstr = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 4
  %5 = load i32*, i32** %wstr, align 8
  %tobool4 = icmp ne i32* %5, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %u, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*
  %wstr5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 4
  %8 = load i32*, i32** %wstr5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %u, align 8
  %call6 = call i32* @PyUnicode_AsUnicode(%struct._object* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %8, %cond.true ], [ %call6, %cond.false ]
  %10 = bitcast i32* %cond to i8*
  %11 = load i32*, i32** %data, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load i64, i64* %len, align 8
  %mul = mul i64 %13, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 4, i1 false)
  %14 = load i64, i64* %len, align 8
  %cmp7 = icmp sgt i64 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %cond.end
  %15 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_thread_state(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fn = alloca %struct._object*, align 8
  %success = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save17 = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.332, i32 0, i32 0), %struct._object** %fn)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %fn, align 8
  %call1 = call i32 @PyCallable_Check(%struct._object* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %3 = load %struct._object*, %struct._object** %fn, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %tp_name, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.333, i32 0, i32 0), i8* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  call void @PyEval_InitThreads()
  %call6 = call i8* @PyThread_allocate_lock()
  store i8* %call6, i8** @thread_done, align 8
  %6 = load i8*, i8** @thread_done, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %7 = load i8*, i8** @thread_done, align 8
  %call10 = call i32 @PyThread_acquire_lock(i8* %7, i32 1)
  %8 = load %struct._object*, %struct._object** %fn, align 8
  %9 = bitcast %struct._object* %8 to i8*
  %call11 = call i64 @PyThread_start_new_thread(void (i8*)* @_make_call_from_thread, i8* %9)
  %10 = load %struct._object*, %struct._object** %fn, align 8
  %11 = bitcast %struct._object* %10 to i8*
  %call12 = call i32 @_make_call(i8* %11)
  %12 = load i32, i32* %success, align 4
  %and = and i32 %12, %call12
  store i32 %and, i32* %success, align 4
  %call13 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call13, %struct._ts** %_save, align 8
  %13 = load %struct._object*, %struct._object** %fn, align 8
  %14 = bitcast %struct._object* %13 to i8*
  %call14 = call i32 @_make_call(i8* %14)
  %15 = load i32, i32* %success, align 4
  %and15 = and i32 %15, %call14
  store i32 %and15, i32* %success, align 4
  %16 = load i8*, i8** @thread_done, align 8
  %call16 = call i32 @PyThread_acquire_lock(i8* %16, i32 1)
  %17 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %17)
  %call18 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call18, %struct._ts** %_save17, align 8
  %18 = load %struct._object*, %struct._object** %fn, align 8
  %19 = bitcast %struct._object* %18 to i8*
  %call19 = call i64 @PyThread_start_new_thread(void (i8*)* @_make_call_from_thread, i8* %19)
  %20 = load %struct._object*, %struct._object** %fn, align 8
  %21 = bitcast %struct._object* %20 to i8*
  %call20 = call i32 @_make_call(i8* %21)
  %22 = load i32, i32* %success, align 4
  %and21 = and i32 %22, %call20
  store i32 %and21, i32* %success, align 4
  %23 = load i8*, i8** @thread_done, align 8
  %call22 = call i32 @PyThread_acquire_lock(i8* %23, i32 1)
  %24 = load %struct._ts*, %struct._ts** %_save17, align 8
  call void @PyEval_RestoreThread(%struct._ts* %24)
  %25 = load i8*, i8** @thread_done, align 8
  call void @PyThread_release_lock(i8* %25)
  %26 = load i8*, i8** @thread_done, align 8
  call void @PyThread_free_lock(i8* %26)
  %27 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.9
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.7, %if.then.3, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @profile_int(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %single = alloca %struct._object*, align 8
  %multiple = alloca %struct._object**, align 8
  %op1 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  %_py_decref_tmp191 = alloca %struct._object*, align 8
  %_py_decref_tmp207 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp234 = alloca %struct._object*, align 8
  %_py_decref_tmp252 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 20000
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call4, %struct._object** %single, align 8
  br label %do.body

do.body:                                          ; preds = %for.body.3
  %3 = load %struct._object*, %struct._object** %single, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %11 = load i32, i32* %k, align 4
  %inc8 = add i32 %11, 1
  store i32 %inc8, i32* %k, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %call10 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  call void @print_delta(i32 1, %struct.timeval* %start, %struct.timeval* %stop)
  %call11 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.37, %for.end.9
  %12 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %12, 20000
  br i1 %cmp13, label %for.body.15, label %for.end.39

for.body.15:                                      ; preds = %for.cond.12
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.34, %for.body.15
  %13 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %13, 1000
  br i1 %cmp17, label %for.body.19, label %for.end.36

for.body.19:                                      ; preds = %for.cond.16
  %14 = load i32, i32* %i, align 4
  %add = add i32 %14, 1000000
  %conv20 = sext i32 %add to i64
  %call21 = call %struct._object* @PyLong_FromLong(i64 %conv20)
  store %struct._object* %call21, %struct._object** %single, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %for.body.19
  %15 = load %struct._object*, %struct._object** %single, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp23, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %17, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.22
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.22
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %20(%struct._object* %21)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %for.inc.34

for.inc.34:                                       ; preds = %do.end.33
  %22 = load i32, i32* %i, align 4
  %inc35 = add i32 %22, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.16

for.end.36:                                       ; preds = %for.cond.16
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %23 = load i32, i32* %k, align 4
  %inc38 = add i32 %23, 1
  store i32 %inc38, i32* %k, align 4
  br label %for.cond.12

for.end.39:                                       ; preds = %for.cond.12
  %call40 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  call void @print_delta(i32 2, %struct.timeval* %start, %struct.timeval* %stop)
  %call41 = call noalias i8* @malloc(i64 8000) #2
  %24 = bitcast i8* %call41 to %struct._object**
  store %struct._object** %24, %struct._object*** %multiple, align 8
  %25 = load %struct._object**, %struct._object*** %multiple, align 8
  %cmp42 = icmp eq %struct._object** %25, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.end.39
  %call45 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call45, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %for.end.39
  %call47 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %k, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.83, %if.end.46
  %26 = load i32, i32* %k, align 4
  %cmp49 = icmp slt i32 %26, 20000
  br i1 %cmp49, label %for.body.51, label %for.end.85

for.body.51:                                      ; preds = %for.cond.48
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %for.body.51
  %27 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %27, 1000
  br i1 %cmp53, label %for.body.55, label %for.end.61

for.body.55:                                      ; preds = %for.cond.52
  %28 = load i32, i32* %i, align 4
  %add56 = add i32 %28, 1000000
  %conv57 = sext i32 %add56 to i64
  %call58 = call %struct._object* @PyLong_FromLong(i64 %conv57)
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %30, i64 %idxprom
  store %struct._object* %call58, %struct._object** %arrayidx, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.55
  %31 = load i32, i32* %i, align 4
  %inc60 = add i32 %31, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.80, %for.end.61
  %32 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %32, 1000
  br i1 %cmp63, label %for.body.65, label %for.end.82

for.body.65:                                      ; preds = %for.cond.62
  br label %do.body.66

do.body.66:                                       ; preds = %for.body.65
  %33 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %33 to i64
  %34 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx69 = getelementptr %struct._object*, %struct._object** %34, i64 %idxprom68
  %35 = load %struct._object*, %struct._object** %arrayidx69, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp67, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %37, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.66
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.66
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %40(%struct._object* %41)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %for.inc.80

for.inc.80:                                       ; preds = %do.end.79
  %42 = load i32, i32* %i, align 4
  %inc81 = add i32 %42, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.62

for.end.82:                                       ; preds = %for.cond.62
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %43 = load i32, i32* %k, align 4
  %inc84 = add i32 %43, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.48

for.end.85:                                       ; preds = %for.cond.48
  %call86 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  call void @print_delta(i32 3, %struct.timeval* %start, %struct.timeval* %stop)
  %44 = load %struct._object**, %struct._object*** %multiple, align 8
  %45 = bitcast %struct._object** %44 to i8*
  call void @free(i8* %45) #2
  %call87 = call noalias i8* @malloc(i64 8000000) #2
  %46 = bitcast i8* %call87 to %struct._object**
  store %struct._object** %46, %struct._object*** %multiple, align 8
  %47 = load %struct._object**, %struct._object*** %multiple, align 8
  %cmp88 = icmp eq %struct._object** %47, null
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %for.end.85
  %call91 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call91, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %for.end.85
  %call93 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %k, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.131, %if.end.92
  %48 = load i32, i32* %k, align 4
  %cmp95 = icmp slt i32 %48, 20
  br i1 %cmp95, label %for.body.97, label %for.end.133

for.body.97:                                      ; preds = %for.cond.94
  store i32 0, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.107, %for.body.97
  %49 = load i32, i32* %i, align 4
  %cmp99 = icmp slt i32 %49, 1000000
  br i1 %cmp99, label %for.body.101, label %for.end.109

for.body.101:                                     ; preds = %for.cond.98
  %50 = load i32, i32* %i, align 4
  %add102 = add i32 %50, 1000000
  %conv103 = sext i32 %add102 to i64
  %call104 = call %struct._object* @PyLong_FromLong(i64 %conv103)
  %51 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %51 to i64
  %52 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx106 = getelementptr %struct._object*, %struct._object** %52, i64 %idxprom105
  store %struct._object* %call104, %struct._object** %arrayidx106, align 8
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.101
  %53 = load i32, i32* %i, align 4
  %inc108 = add i32 %53, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond.98

for.end.109:                                      ; preds = %for.cond.98
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.128, %for.end.109
  %54 = load i32, i32* %i, align 4
  %cmp111 = icmp slt i32 %54, 1000000
  br i1 %cmp111, label %for.body.113, label %for.end.130

for.body.113:                                     ; preds = %for.cond.110
  br label %do.body.114

do.body.114:                                      ; preds = %for.body.113
  %55 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %55 to i64
  %56 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx117 = getelementptr %struct._object*, %struct._object** %56, i64 %idxprom116
  %57 = load %struct._object*, %struct._object** %arrayidx117, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp115, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt118, align 8
  %dec119 = add i64 %59, -1
  store i64 %dec119, i64* %ob_refcnt118, align 8
  %cmp120 = icmp ne i64 %dec119, 0
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.114
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.114
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %62(%struct._object* %63)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %for.inc.128

for.inc.128:                                      ; preds = %do.end.127
  %64 = load i32, i32* %i, align 4
  %inc129 = add i32 %64, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.110

for.end.130:                                      ; preds = %for.cond.110
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %65 = load i32, i32* %k, align 4
  %inc132 = add i32 %65, 1
  store i32 %inc132, i32* %k, align 4
  br label %for.cond.94

for.end.133:                                      ; preds = %for.cond.94
  %call134 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  call void @print_delta(i32 4, %struct.timeval* %start, %struct.timeval* %stop)
  %66 = load %struct._object**, %struct._object*** %multiple, align 8
  %67 = bitcast %struct._object** %66 to i8*
  call void @free(i8* %67) #2
  %call135 = call noalias i8* @malloc(i64 8000000) #2
  %68 = bitcast i8* %call135 to %struct._object**
  store %struct._object** %68, %struct._object*** %multiple, align 8
  %69 = load %struct._object**, %struct._object*** %multiple, align 8
  %cmp136 = icmp eq %struct._object** %69, null
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %for.end.133
  %call139 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call139, %struct._object** %retval
  br label %return

if.end.140:                                       ; preds = %for.end.133
  %call141 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %k, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.179, %if.end.140
  %70 = load i32, i32* %k, align 4
  %cmp143 = icmp slt i32 %70, 10
  br i1 %cmp143, label %for.body.145, label %for.end.181

for.body.145:                                     ; preds = %for.cond.142
  store i32 0, i32* %i, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.155, %for.body.145
  %71 = load i32, i32* %i, align 4
  %cmp147 = icmp slt i32 %71, 1000000
  br i1 %cmp147, label %for.body.149, label %for.end.157

for.body.149:                                     ; preds = %for.cond.146
  %72 = load i32, i32* %i, align 4
  %add150 = add i32 %72, 1000
  %conv151 = sext i32 %add150 to i64
  %call152 = call %struct._object* @PyLong_FromLong(i64 %conv151)
  %73 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %73 to i64
  %74 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx154 = getelementptr %struct._object*, %struct._object** %74, i64 %idxprom153
  store %struct._object* %call152, %struct._object** %arrayidx154, align 8
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.149
  %75 = load i32, i32* %i, align 4
  %inc156 = add i32 %75, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.146

for.end.157:                                      ; preds = %for.cond.146
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.176, %for.end.157
  %76 = load i32, i32* %i, align 4
  %cmp159 = icmp slt i32 %76, 1000000
  br i1 %cmp159, label %for.body.161, label %for.end.178

for.body.161:                                     ; preds = %for.cond.158
  br label %do.body.162

do.body.162:                                      ; preds = %for.body.161
  %77 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %77 to i64
  %78 = load %struct._object**, %struct._object*** %multiple, align 8
  %arrayidx165 = getelementptr %struct._object*, %struct._object** %78, i64 %idxprom164
  %79 = load %struct._object*, %struct._object** %arrayidx165, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp163, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %81, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.162
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.162
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %84(%struct._object* %85)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  br label %for.inc.176

for.inc.176:                                      ; preds = %do.end.175
  %86 = load i32, i32* %i, align 4
  %inc177 = add i32 %86, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.158

for.end.178:                                      ; preds = %for.cond.158
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %87 = load i32, i32* %k, align 4
  %inc180 = add i32 %87, 1
  store i32 %inc180, i32* %k, align 4
  br label %for.cond.142

for.end.181:                                      ; preds = %for.cond.142
  %call182 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  call void @print_delta(i32 5, %struct.timeval* %start, %struct.timeval* %stop)
  %88 = load %struct._object**, %struct._object*** %multiple, align 8
  %89 = bitcast %struct._object** %88 to i8*
  call void @free(i8* %89) #2
  %call183 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call183, %struct._object** %op1, align 8
  %call184 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.202, %for.end.181
  %90 = load i32, i32* %i, align 4
  %cmp186 = icmp slt i32 %90, 10000000
  br i1 %cmp186, label %for.body.188, label %for.end.204

for.body.188:                                     ; preds = %for.cond.185
  %91 = load %struct._object*, %struct._object** %op1, align 8
  %92 = load %struct._object*, %struct._object** %op1, align 8
  %call189 = call %struct._object* @PyNumber_Add(%struct._object* %91, %struct._object* %92)
  store %struct._object* %call189, %struct._object** %result, align 8
  br label %do.body.190

do.body.190:                                      ; preds = %for.body.188
  %93 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp191, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8
  %ob_refcnt192 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt192, align 8
  %dec193 = add i64 %95, -1
  store i64 %dec193, i64* %ob_refcnt192, align 8
  %cmp194 = icmp ne i64 %dec193, 0
  br i1 %cmp194, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %do.body.190
  br label %if.end.200

if.else.197:                                      ; preds = %do.body.190
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8
  %tp_dealloc199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc199, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8
  call void %98(%struct._object* %99)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197, %if.then.196
  br label %do.end.201

do.end.201:                                       ; preds = %if.end.200
  br label %for.inc.202

for.inc.202:                                      ; preds = %do.end.201
  %100 = load i32, i32* %i, align 4
  %inc203 = add i32 %100, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond.185

for.end.204:                                      ; preds = %for.cond.185
  %call205 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  br label %do.body.206

do.body.206:                                      ; preds = %for.end.204
  %101 = load %struct._object*, %struct._object** %op1, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp207, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt208, align 8
  %dec209 = add i64 %103, -1
  store i64 %dec209, i64* %ob_refcnt208, align 8
  %cmp210 = icmp ne i64 %dec209, 0
  br i1 %cmp210, label %if.then.212, label %if.else.213

if.then.212:                                      ; preds = %do.body.206
  br label %if.end.216

if.else.213:                                      ; preds = %do.body.206
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  call void %106(%struct._object* %107)
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.213, %if.then.212
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  call void @print_delta(i32 6, %struct.timeval* %start, %struct.timeval* %stop)
  %call218 = call %struct._object* @PyLong_FromLong(i64 1000)
  store %struct._object* %call218, %struct._object** %op1, align 8
  %108 = load %struct._object*, %struct._object** %op1, align 8
  %cmp219 = icmp eq %struct._object* %108, null
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %do.end.217
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.222:                                       ; preds = %do.end.217
  %call223 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #2
  store i32 0, i32* %i, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.247, %if.end.222
  %109 = load i32, i32* %i, align 4
  %cmp225 = icmp slt i32 %109, 10000000
  br i1 %cmp225, label %for.body.227, label %for.end.249

for.body.227:                                     ; preds = %for.cond.224
  %110 = load %struct._object*, %struct._object** %op1, align 8
  %111 = load %struct._object*, %struct._object** %op1, align 8
  %call228 = call %struct._object* @PyNumber_Add(%struct._object* %110, %struct._object* %111)
  store %struct._object* %call228, %struct._object** %result, align 8
  br label %do.body.229

do.body.229:                                      ; preds = %for.body.227
  %112 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %112, %struct._object** %_py_xdecref_tmp, align 8
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp230 = icmp ne %struct._object* %113, null
  br i1 %cmp230, label %if.then.232, label %if.end.245

if.then.232:                                      ; preds = %do.body.229
  br label %do.body.233

do.body.233:                                      ; preds = %if.then.232
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp234, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  %ob_refcnt235 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt235, align 8
  %dec236 = add i64 %116, -1
  store i64 %dec236, i64* %ob_refcnt235, align 8
  %cmp237 = icmp ne i64 %dec236, 0
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %do.body.233
  br label %if.end.243

if.else.240:                                      ; preds = %do.body.233
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  %ob_type241 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type241, align 8
  %tp_dealloc242 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc242, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  call void %119(%struct._object* %120)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.240, %if.then.239
  br label %do.end.244

do.end.244:                                       ; preds = %if.end.243
  br label %if.end.245

if.end.245:                                       ; preds = %do.end.244, %do.body.229
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %for.inc.247

for.inc.247:                                      ; preds = %do.end.246
  %121 = load i32, i32* %i, align 4
  %inc248 = add i32 %121, 1
  store i32 %inc248, i32* %i, align 4
  br label %for.cond.224

for.end.249:                                      ; preds = %for.cond.224
  %call250 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #2
  br label %do.body.251

do.body.251:                                      ; preds = %for.end.249
  %122 = load %struct._object*, %struct._object** %op1, align 8
  store %struct._object* %122, %struct._object** %_py_decref_tmp252, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  %ob_refcnt253 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt253, align 8
  %dec254 = add i64 %124, -1
  store i64 %dec254, i64* %ob_refcnt253, align 8
  %cmp255 = icmp ne i64 %dec254, 0
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.251
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.251
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8
  call void %127(%struct._object* %128)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  call void @print_delta(i32 7, %struct.timeval* %start, %struct.timeval* %stop)
  %129 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc263 = add i64 %129, 1
  store i64 %inc263, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.262, %if.then.221, %if.then.138, %if.then.90, %if.then.44
  %130 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %130
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @traceback_print(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.336, i32 0, i32 0), %struct._object** %traceback, %struct._object** %file)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %traceback, align 8
  %2 = load %struct._object*, %struct._object** %file, align 8
  %call1 = call i32 @PyTraceBack_Print(%struct._object* %1, %struct._object* %2)
  store i32 %call1, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @exception_print(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.337, i32 0, i32 0), %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %value, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 1073741824
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.338, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %value, align 8
  %call4 = call %struct._object* @PyException_GetTraceback(%struct._object* %5)
  store %struct._object* %call4, %struct._object** %tb, align 8
  %6 = load %struct._object*, %struct._object** %value, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %9 = load %struct._object*, %struct._object** %value, align 8
  %10 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Display(%struct._object* %8, %struct._object* %9, %struct._object* %10)
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else:                                          ; preds = %do.body.8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %do.body
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.14, %if.then.1, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_set_exc_info(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %orig_exc = alloca %struct._object*, align 8
  %new_type = alloca %struct._object*, align 8
  %new_value = alloca %struct._object*, align 8
  %new_tb = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_xdecref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.339, i32 0, i32 0), %struct._object** %new_type, %struct._object** %new_value, %struct._object** %new_tb)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @PyErr_GetExcInfo(%struct._object** %type, %struct._object** %value, %struct._object** %tb)
  %1 = load %struct._object*, %struct._object** %new_type, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %new_value, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt1, align 8
  %inc2 = add i64 %4, 1
  store i64 %inc2, i64* %ob_refcnt1, align 8
  %5 = load %struct._object*, %struct._object** %new_tb, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt3, align 8
  %inc4 = add i64 %6, 1
  store i64 %inc4, i64* %ob_refcnt3, align 8
  %7 = load %struct._object*, %struct._object** %new_type, align 8
  %8 = load %struct._object*, %struct._object** %new_value, align 8
  %9 = load %struct._object*, %struct._object** %new_tb, align 8
  call void @PyErr_SetExcInfo(%struct._object* %7, %struct._object* %8, %struct._object* %9)
  %10 = load %struct._object*, %struct._object** %type, align 8
  %tobool5 = icmp ne %struct._object* %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %type, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %11, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %12 = load %struct._object*, %struct._object** %value, align 8
  %tobool6 = icmp ne %struct._object* %12, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %value, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct._object* [ %13, %cond.true.7 ], [ @_Py_NoneStruct, %cond.false.8 ]
  %14 = load %struct._object*, %struct._object** %tb, align 8
  %tobool11 = icmp ne %struct._object* %14, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  %15 = load %struct._object*, %struct._object** %tb, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end.9
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi %struct._object* [ %15, %cond.true.12 ], [ @_Py_NoneStruct, %cond.false.13 ]
  %call16 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %cond, %struct._object* %cond10, %struct._object* %cond15)
  store %struct._object* %call16, %struct._object** %orig_exc, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.14
  %16 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt19, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt19, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.22

if.else:                                          ; preds = %do.body.18
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %25 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %do.body.25
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp26, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp30, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %29, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %32(%struct._object* %33)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.body.25
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %34 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp43, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp43, align 8
  %cmp44 = icmp ne %struct._object* %35, null
  br i1 %cmp44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %do.body.42
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp43, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp47, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %38, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %41(%struct._object* %42)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.body.42
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %43 = load %struct._object*, %struct._object** %orig_exc, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.58, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @argparsing(%struct._object* %o, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** @str2, align 8
  store %struct._object* null, %struct._object** @str1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.340, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSConverter, %struct._object** @str1, i32 (%struct._object*, i8*)* @failing_converter, %struct._object** @str2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @str2, align 8
  %tobool1 = icmp ne %struct._object* %1, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @str2, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %call3 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call3, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @str2, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else

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
  call void @PyErr_Clear()
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %do.end, %if.then.2
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @code_newempty(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %filename = alloca i8*, align 8
  %funcname = alloca i8*, align 8
  %firstlineno = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.341, i32 0, i32 0), i8** %filename, i8** %funcname, i32* %firstlineno)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %filename, align 8
  %2 = load i8*, i8** %funcname, align 8
  %3 = load i32, i32* %firstlineno, align 4
  %call1 = call %struct.PyCodeObject* @PyCode_NewEmpty(i8* %1, i8* %2, i32 %3)
  %4 = bitcast %struct.PyCodeObject* %call1 to %struct._object*
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_exception_with_doc(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %doc = alloca i8*, align 8
  %base = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %doc, align 8
  store %struct._object* null, %struct._object** %base, align 8
  store %struct._object* null, %struct._object** %dict, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.346, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @make_exception_with_doc.kwlist, i32 0, i32 0), i8** %name, i8** %doc, %struct._object** %base, %struct._object** %dict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name, align 8
  %3 = load i8*, i8** %doc, align 8
  %4 = load %struct._object*, %struct._object** %base, align 8
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %call1 = call %struct._object* @PyErr_NewExceptionWithDoc(i8* %2, i8* %3, %struct._object* %4, %struct._object* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_memoryview_from_NULL_pointer(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %info = alloca %struct.bufferinfo, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %info, %struct._object* null, i8* null, i64 1, i32 1, i32 284)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %info)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @crash_no_current_thread(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %call1 = call %struct._ts* @PyThreadState_Get()
  %0 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %0)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @run_in_subinterp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %code = alloca i8*, align 8
  %r = alloca i32, align 4
  %substate = alloca %struct._ts*, align 8
  %mainstate = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.347, i32 0, i32 0), i8** %code)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call1, %struct._ts** %mainstate, align 8
  %call2 = call %struct._ts* @PyThreadState_Swap(%struct._ts* null)
  %call3 = call %struct._ts* @Py_NewInterpreter()
  store %struct._ts* %call3, %struct._ts** %substate, align 8
  %1 = load %struct._ts*, %struct._ts** %substate, align 8
  %cmp = icmp eq %struct._ts* %1, null
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %2 = load %struct._ts*, %struct._ts** %mainstate, align 8
  %call5 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %2)
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.348, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %code, align 8
  %call7 = call i32 @PyRun_SimpleStringFlags(i8* %4, %struct.PyCompilerFlags* null)
  store i32 %call7, i32* %r, align 4
  %5 = load %struct._ts*, %struct._ts** %substate, align 8
  call void @Py_EndInterpreter(%struct._ts* %5)
  %6 = load %struct._ts*, %struct._ts** %mainstate, align 8
  %call8 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %6)
  %7 = load i32, i32* %r, align 4
  %conv = sext i32 %7 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pytime_object_to_time_t(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %sec = alloca i64, align 8
  %round = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.349, i32 0, i32 0), %struct._object** %obj, i32* %round)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %round, align 4
  %call1 = call i32 @check_time_rounding(i32 %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %3 = load i32, i32* %round, align 4
  %call4 = call i32 @_PyTime_ObjectToTime_t(%struct._object* %2, i64* %sec, i32 %3)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i64, i64* %sec, align 8
  %call8 = call %struct._object* @_PyLong_FromTime_t(i64 %4)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pytime_object_to_timeval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %sec = alloca i64, align 8
  %usec = alloca i64, align 8
  %round = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.351, i32 0, i32 0), %struct._object** %obj, i32* %round)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %round, align 4
  %call1 = call i32 @check_time_rounding(i32 %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %3 = load i32, i32* %round, align 4
  %call4 = call i32 @_PyTime_ObjectToTimeval(%struct._object* %2, i64* %sec, i64* %usec, i32 %3)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i64, i64* %sec, align 8
  %call8 = call %struct._object* @_PyLong_FromTime_t(i64 %4)
  %5 = load i64, i64* %usec, align 8
  %call9 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i32 0, i32 0), %struct._object* %call8, i64 %5)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pytime_object_to_timespec(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %sec = alloca i64, align 8
  %nsec = alloca i64, align 8
  %round = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.353, i32 0, i32 0), %struct._object** %obj, i32* %round)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %round, align 4
  %call1 = call i32 @check_time_rounding(i32 %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %3 = load i32, i32* %round, align 4
  %call4 = call i32 @_PyTime_ObjectToTimespec(%struct._object* %2, i64* %sec, i64* %nsec, i32 %3)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i64, i64* %sec, align 8
  %call8 = call %struct._object* @_PyLong_FromTime_t(i64 %4)
  %5 = load i64, i64* %nsec, align 8
  %call9 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i32 0, i32 0), %struct._object* %call8, i64 %5)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @with_tp_del(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.354, i32 0, i32 0), %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = bitcast %struct._object* %1 to %struct._typeobject*
  store %struct._typeobject* %2, %struct._typeobject** %tp, align 8
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 2147483648
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_flags1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags1, align 8
  %and2 = and i64 %7, 512
  %cmp3 = icmp ne i64 %and2, 0
  br i1 %cmp3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.355, i32 0, i32 0), %struct._object* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %10 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %tp_del = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 45
  store void (%struct._object*)* @slot_tp_del, void (%struct._object*)** %tp_del, align 8
  %11 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pymem_alloc0(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %ptr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i8* @PyMem_Malloc(i64 0)
  store i8* %call, i8** %ptr, align 8
  %0 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.357, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8
  call void @PyMem_Free(i8* %2)
  %call1 = call i8* @PyObject_Malloc(i64 0)
  store i8* %call1, i8** %ptr, align 8
  %3 = load i8*, i8** %ptr, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.358, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %ptr, align 8
  call void @PyObject_Free(i8* %5)
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pymem_setrawallocators(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @test_setallocators(i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pymem_setallocators(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @test_setallocators(i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_pyobject_setallocators(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @test_setallocators(i32 2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @call_in_temporary_c_thread(%struct._object* %self, %struct._object* %callback) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %test_c_thread = alloca %struct.test_c_thread_t, align 8
  %thread = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  call void @PyEval_InitThreads()
  %call = call i8* @PyThread_allocate_lock()
  %start_event = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  store i8* %call, i8** %start_event, align 8
  %call1 = call i8* @PyThread_allocate_lock()
  %exit_event = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  store i8* %call1, i8** %exit_event, align 8
  %callback2 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 2
  store %struct._object* null, %struct._object** %callback2, align 8
  %start_event3 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %0 = load i8*, i8** %start_event3, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %exit_event4 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %1 = load i8*, i8** %exit_event4, align 8
  %tobool5 = icmp ne i8* %1, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.364, i32 0, i32 0))
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %callback.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %callback.addr, align 8
  %callback6 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 2
  store %struct._object* %5, %struct._object** %callback6, align 8
  %start_event7 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %6 = load i8*, i8** %start_event7, align 8
  %call8 = call i32 @PyThread_acquire_lock(i8* %6, i32 1)
  %exit_event9 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %7 = load i8*, i8** %exit_event9, align 8
  %call10 = call i32 @PyThread_acquire_lock(i8* %7, i32 1)
  %8 = bitcast %struct.test_c_thread_t* %test_c_thread to i8*
  %call11 = call i64 @PyThread_start_new_thread(void (i8*)* @temporary_c_thread, i8* %8)
  store i64 %call11, i64* %thread, align 8
  %9 = load i64, i64* %thread, align 8
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.365, i32 0, i32 0))
  %start_event13 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %11 = load i8*, i8** %start_event13, align 8
  call void @PyThread_release_lock(i8* %11)
  %exit_event14 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %12 = load i8*, i8** %exit_event14, align 8
  call void @PyThread_release_lock(i8* %12)
  br label %exit

if.end.15:                                        ; preds = %if.end
  %start_event16 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %13 = load i8*, i8** %start_event16, align 8
  %call17 = call i32 @PyThread_acquire_lock(i8* %13, i32 1)
  %start_event18 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %14 = load i8*, i8** %start_event18, align 8
  call void @PyThread_release_lock(i8* %14)
  %call19 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call19, %struct._ts** %_save, align 8
  %exit_event20 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %15 = load i8*, i8** %exit_event20, align 8
  %call21 = call i32 @PyThread_acquire_lock(i8* %15, i32 1)
  %exit_event22 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %16 = load i8*, i8** %exit_event22, align 8
  call void @PyThread_release_lock(i8* %16)
  %17 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %17)
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc23 = add i64 %18, 1
  store i64 %inc23, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %res, align 8
  br label %exit

exit:                                             ; preds = %if.end.15, %if.then.12, %if.then
  br label %do.body

do.body:                                          ; preds = %exit
  %callback24 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %callback24, align 8
  store %struct._object* %19, %struct._object** %_py_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp25 = icmp ne %struct._object* %20, null
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %do.body
  %callback27 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 2
  store %struct._object* null, %struct._object** %callback27, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.26
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body.28
  br label %if.end.32

if.else:                                          ; preds = %do.body.28
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %start_event35 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %28 = load i8*, i8** %start_event35, align 8
  %tobool36 = icmp ne i8* %28, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %do.end.34
  %start_event38 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 0
  %29 = load i8*, i8** %start_event38, align 8
  call void @PyThread_free_lock(i8* %29)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %do.end.34
  %exit_event40 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %30 = load i8*, i8** %exit_event40, align 8
  %tobool41 = icmp ne i8* %30, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %exit_event43 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %test_c_thread, i32 0, i32 1
  %31 = load i8*, i8** %exit_event43, align 8
  call void @PyThread_free_lock(i8* %31)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  %32 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %32
}

declare %struct._object* @PyTuple_New(i64) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @PyCapsule_Import(i8*, i32) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Reverse(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_dict_inner(i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %iterations = alloca i64, align 8
  %i = alloca i32, align 4
  %dict = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %k = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %iterations, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %dict, align 8
  %0 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %call7 = call i32 @PyDict_SetItem(%struct._object* %5, %struct._object* %6, %struct._object* %7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %8 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.6
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp17, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %17, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.16
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.16
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %20(%struct._object* %21)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %for.inc

for.inc:                                          ; preds = %do.end.27
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end.66, %for.end
  %23 = load %struct._object*, %struct._object** %dict, align 8
  %call28 = call i32 @PyDict_Next(%struct._object* %23, i64* %pos, %struct._object** %k, %struct._object** %v)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %iterations, align 8
  %inc29 = add i64 %24, 1
  store i64 %inc29, i64* %iterations, align 8
  %25 = load %struct._object*, %struct._object** %v, align 8
  %call30 = call i64 @PyLong_AsLong(%struct._object* %25)
  %add = add i64 %call30, 1
  %conv31 = trunc i64 %add to i32
  store i32 %conv31, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %conv32 = sext i32 %26 to i64
  %call33 = call %struct._object* @PyLong_FromLong(i64 %conv32)
  store %struct._object* %call33, %struct._object** %o, align 8
  %27 = load %struct._object*, %struct._object** %o, align 8
  %cmp34 = icmp eq %struct._object* %27, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %while.body
  %28 = load %struct._object*, %struct._object** %dict, align 8
  %29 = load %struct._object*, %struct._object** %k, align 8
  %30 = load %struct._object*, %struct._object** %o, align 8
  %call38 = call i32 @PyDict_SetItem(%struct._object* %28, %struct._object* %29, %struct._object* %30)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %if.end.37
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %31 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp43, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %33, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.42
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.42
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %36(%struct._object* %37)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.37
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.54
  %38 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp56, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %40, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %43(%struct._object* %44)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.67

do.body.67:                                       ; preds = %while.end
  %45 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp68, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %47, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %50(%struct._object* %51)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %52 = load i64, i64* %iterations, align 8
  %53 = load i32, i32* %count.addr, align 4
  %conv79 = sext i32 %53 to i64
  %cmp80 = icmp ne i64 %52, %conv79
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.end.78
  %54 = load %struct._object*, %struct._object** @TestError, align 8
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.135, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.83:                                       ; preds = %do.end.78
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.83, %if.then.82, %do.end.53, %if.then.36, %do.end, %if.then.5, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare %struct._object* @PyDict_New() #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare void @PyErr_Clear() #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_long_api_inner(%struct._object* (i8*)* %error) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %error.addr = alloca %struct._object* (i8*)*, align 8
  %NBITS = alloca i32, align 4
  %base = alloca i64, align 8
  %pyresult = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %uin = alloca i64, align 8
  %uout = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %y = alloca %struct._object*, align 8
  %out60 = alloca i64, align 8
  %uout61 = alloca i64, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp220 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  %_py_xdecref_tmp250 = alloca %struct._object*, align 8
  %_py_decref_tmp255 = alloca %struct._object*, align 8
  %_py_decref_tmp269 = alloca %struct._object*, align 8
  %out280 = alloca i64, align 8
  %uout281 = alloca i64, align 8
  %_py_decref_tmp312 = alloca %struct._object*, align 8
  store %struct._object* (i8*)* %error, %struct._object* (i8*)** %error.addr, align 8
  store i32 64, i32* %NBITS, align 4
  store i64 1, i64* %base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %2, 3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %3 = load i64, i64* %base, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %4 = load i64, i64* %base, align 8
  %sub = sub i64 0, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %uin, align 8
  %5 = load i32, i32* %j, align 4
  %rem = srem i32 %5, 3
  %sub5 = sub i32 %rem, 1
  %conv = sext i32 %sub5 to i64
  %6 = load i64, i64* %uin, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %uin, align 8
  %7 = load i64, i64* %uin, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %7)
  store %struct._object* %call, %struct._object** %pyresult, align 8
  %8 = load %struct._object*, %struct._object** %pyresult, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call8 = call %struct._object* %9(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.141, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load %struct._object*, %struct._object** %pyresult, align 8
  %call9 = call i64 @PyLong_AsUnsignedLong(%struct._object* %10)
  store i64 %call9, i64* %uout, align 8
  %11 = load i64, i64* %uout, align 8
  %cmp10 = icmp eq i64 %11, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call12, null
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call14 = call %struct._object* %12(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %13 = load i64, i64* %uout, align 8
  %14 = load i64, i64* %uin, align 8
  %cmp16 = icmp ne i64 %13, %14
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %15 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call19 = call %struct._object* %15(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.143, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %16 = load %struct._object*, %struct._object** %pyresult, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  store %struct._object* null, %struct._object** %pyresult, align 8
  %23 = load i64, i64* %uin, align 8
  store i64 %23, i64* %in, align 8
  %24 = load i64, i64* %in, align 8
  %call25 = call %struct._object* @PyLong_FromLong(i64 %24)
  store %struct._object* %call25, %struct._object** %pyresult, align 8
  %25 = load %struct._object*, %struct._object** %pyresult, align 8
  %cmp26 = icmp eq %struct._object* %25, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.end
  %26 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call29 = call %struct._object* %26(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i32 0, i32 0))
  store %struct._object* %call29, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %do.end
  %27 = load %struct._object*, %struct._object** %pyresult, align 8
  %call31 = call i64 @PyLong_AsLong(%struct._object* %27)
  store i64 %call31, i64* %out, align 8
  %28 = load i64, i64* %out, align 8
  %cmp32 = icmp eq i64 %28, -1
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %if.end.30
  %call35 = call %struct._object* @PyErr_Occurred()
  %tobool36 = icmp ne %struct._object* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true.34
  %29 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call38 = call %struct._object* %29(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0))
  store %struct._object* %call38, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.34, %if.end.30
  %30 = load i64, i64* %out, align 8
  %31 = load i64, i64* %in, align 8
  %cmp40 = icmp ne i64 %30, %31
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %32 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call43 = call %struct._object* %32(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i32 0, i32 0))
  store %struct._object* %call43, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.44
  %33 = load %struct._object*, %struct._object** %pyresult, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp46, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %35, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.45
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %38(%struct._object* %39)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  store %struct._object* null, %struct._object** %pyresult, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.56
  %40 = load i32, i32* %j, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc58 = add i32 %41, 1
  store i32 %inc58, i32* %i, align 4
  %42 = load i64, i64* %base, align 8
  %shl = shl i64 %42, 1
  store i64 %shl, i64* %base, align 8
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %call62 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call62, %struct._object** %one, align 8
  %43 = load %struct._object*, %struct._object** %one, align 8
  %cmp63 = icmp eq %struct._object* %43, null
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %for.end.59
  %44 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call66 = call %struct._object* %44(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* %call66, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %for.end.59
  %45 = load %struct._object*, %struct._object** %one, align 8
  %call68 = call %struct._object* @PyNumber_Negative(%struct._object* %45)
  store %struct._object* %call68, %struct._object** %x, align 8
  %46 = load %struct._object*, %struct._object** %x, align 8
  %cmp69 = icmp eq %struct._object* %46, null
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.67
  %47 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call72 = call %struct._object* %47(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i32 0, i32 0))
  store %struct._object* %call72, %struct._object** %retval
  br label %return

if.end.73:                                        ; preds = %if.end.67
  %48 = load %struct._object*, %struct._object** %x, align 8
  %call74 = call i64 @PyLong_AsUnsignedLong(%struct._object* %48)
  store i64 %call74, i64* %uout61, align 8
  %49 = load i64, i64* %uout61, align 8
  %cmp75 = icmp ne i64 %49, -1
  br i1 %cmp75, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.73
  %call77 = call %struct._object* @PyErr_Occurred()
  %tobool78 = icmp ne %struct._object* %call77, null
  br i1 %tobool78, label %if.end.81, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false, %if.end.73
  %50 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call80 = call %struct._object* %50(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.149, i32 0, i32 0))
  store %struct._object* %call80, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false
  %51 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call82 = call i32 @PyErr_ExceptionMatches(%struct._object* %51)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %if.end.81
  %52 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call85 = call %struct._object* %52(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.150, i32 0, i32 0))
  store %struct._object* %call85, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.81
  call void @PyErr_Clear()
  br label %do.body.87

do.body.87:                                       ; preds = %if.end.86
  %53 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp88, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %55, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.87
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %58(%struct._object* %59)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  store %struct._object* null, %struct._object** %x, align 8
  %call99 = call %struct._object* @PyLong_FromLong(i64 64)
  store %struct._object* %call99, %struct._object** %y, align 8
  %60 = load %struct._object*, %struct._object** %y, align 8
  %cmp100 = icmp eq %struct._object* %60, null
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %do.end.98
  %61 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call103 = call %struct._object* %61(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* %call103, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %do.end.98
  %62 = load %struct._object*, %struct._object** %one, align 8
  %63 = load %struct._object*, %struct._object** %y, align 8
  %call105 = call %struct._object* @PyNumber_Lshift(%struct._object* %62, %struct._object* %63)
  store %struct._object* %call105, %struct._object** %x, align 8
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.104
  %64 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp107, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %66, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.106
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.106
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %69(%struct._object* %70)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  store %struct._object* null, %struct._object** %y, align 8
  %71 = load %struct._object*, %struct._object** %x, align 8
  %cmp118 = icmp eq %struct._object* %71, null
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %do.end.117
  %72 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call121 = call %struct._object* %72(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.151, i32 0, i32 0))
  store %struct._object* %call121, %struct._object** %retval
  br label %return

if.end.122:                                       ; preds = %do.end.117
  %73 = load %struct._object*, %struct._object** %x, align 8
  %call123 = call i64 @PyLong_AsUnsignedLong(%struct._object* %73)
  store i64 %call123, i64* %uout61, align 8
  %74 = load i64, i64* %uout61, align 8
  %cmp124 = icmp ne i64 %74, -1
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.122
  %call127 = call %struct._object* @PyErr_Occurred()
  %tobool128 = icmp ne %struct._object* %call127, null
  br i1 %tobool128, label %if.end.131, label %if.then.129

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.end.122
  %75 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call130 = call %struct._object* %75(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.152, i32 0, i32 0))
  store %struct._object* %call130, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %lor.lhs.false.126
  %76 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call132 = call i32 @PyErr_ExceptionMatches(%struct._object* %76)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %if.end.131
  %77 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call135 = call %struct._object* %77(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.153, i32 0, i32 0))
  store %struct._object* %call135, %struct._object** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.131
  call void @PyErr_Clear()
  %78 = load %struct._object*, %struct._object** %x, align 8
  %79 = load %struct._object*, %struct._object** %one, align 8
  %call137 = call %struct._object* @PyNumber_Rshift(%struct._object* %78, %struct._object* %79)
  store %struct._object* %call137, %struct._object** %y, align 8
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.136
  %80 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp139, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %82, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %85(%struct._object* %86)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  store %struct._object* null, %struct._object** %x, align 8
  %87 = load %struct._object*, %struct._object** %y, align 8
  %cmp150 = icmp eq %struct._object* %87, null
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %do.end.149
  %88 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call153 = call %struct._object* %88(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.154, i32 0, i32 0))
  store %struct._object* %call153, %struct._object** %retval
  br label %return

if.end.154:                                       ; preds = %do.end.149
  %89 = load %struct._object*, %struct._object** %y, align 8
  %call155 = call i64 @PyLong_AsLong(%struct._object* %89)
  store i64 %call155, i64* %out60, align 8
  %90 = load i64, i64* %out60, align 8
  %cmp156 = icmp ne i64 %90, -1
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %if.end.154
  %call159 = call %struct._object* @PyErr_Occurred()
  %tobool160 = icmp ne %struct._object* %call159, null
  br i1 %tobool160, label %if.end.163, label %if.then.161

if.then.161:                                      ; preds = %lor.lhs.false.158, %if.end.154
  %91 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call162 = call %struct._object* %91(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.155, i32 0, i32 0))
  store %struct._object* %call162, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %lor.lhs.false.158
  %92 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call164 = call i32 @PyErr_ExceptionMatches(%struct._object* %92)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end.168, label %if.then.166

if.then.166:                                      ; preds = %if.end.163
  %93 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call167 = call %struct._object* %93(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.156, i32 0, i32 0))
  store %struct._object* %call167, %struct._object** %retval
  br label %return

if.end.168:                                       ; preds = %if.end.163
  call void @PyErr_Clear()
  %94 = load %struct._object*, %struct._object** %y, align 8
  %call169 = call %struct._object* @PyNumber_Negative(%struct._object* %94)
  store %struct._object* %call169, %struct._object** %x, align 8
  br label %do.body.170

do.body.170:                                      ; preds = %if.end.168
  %95 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp171, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_refcnt172 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt172, align 8
  %dec173 = add i64 %97, -1
  store i64 %dec173, i64* %ob_refcnt172, align 8
  %cmp174 = icmp ne i64 %dec173, 0
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %do.body.170
  br label %if.end.180

if.else.177:                                      ; preds = %do.body.170
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc179, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  call void %100(%struct._object* %101)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.176
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  store %struct._object* null, %struct._object** %y, align 8
  %102 = load %struct._object*, %struct._object** %x, align 8
  %cmp182 = icmp eq %struct._object* %102, null
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %do.end.181
  %103 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call185 = call %struct._object* %103(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i32 0, i32 0))
  store %struct._object* %call185, %struct._object** %retval
  br label %return

if.end.186:                                       ; preds = %do.end.181
  %104 = load %struct._object*, %struct._object** %x, align 8
  %105 = load %struct._object*, %struct._object** %one, align 8
  %call187 = call %struct._object* @PyNumber_Subtract(%struct._object* %104, %struct._object* %105)
  store %struct._object* %call187, %struct._object** %y, align 8
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.186
  %106 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp189, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %108, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.188
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.188
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %111(%struct._object* %112)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  store %struct._object* null, %struct._object** %x, align 8
  %113 = load %struct._object*, %struct._object** %y, align 8
  %cmp200 = icmp eq %struct._object* %113, null
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %do.end.199
  %114 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call203 = call %struct._object* %114(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i32 0, i32 0))
  store %struct._object* %call203, %struct._object** %retval
  br label %return

if.end.204:                                       ; preds = %do.end.199
  %115 = load %struct._object*, %struct._object** %y, align 8
  %call205 = call i64 @PyLong_AsLong(%struct._object* %115)
  store i64 %call205, i64* %out60, align 8
  %116 = load i64, i64* %out60, align 8
  %cmp206 = icmp ne i64 %116, -1
  br i1 %cmp206, label %if.then.211, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %if.end.204
  %call209 = call %struct._object* @PyErr_Occurred()
  %tobool210 = icmp ne %struct._object* %call209, null
  br i1 %tobool210, label %if.end.213, label %if.then.211

if.then.211:                                      ; preds = %lor.lhs.false.208, %if.end.204
  %117 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call212 = call %struct._object* %117(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.158, i32 0, i32 0))
  store %struct._object* %call212, %struct._object** %retval
  br label %return

if.end.213:                                       ; preds = %lor.lhs.false.208
  %118 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call214 = call i32 @PyErr_ExceptionMatches(%struct._object* %118)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.end.218, label %if.then.216

if.then.216:                                      ; preds = %if.end.213
  %119 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call217 = call %struct._object* %119(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.159, i32 0, i32 0))
  store %struct._object* %call217, %struct._object** %retval
  br label %return

if.end.218:                                       ; preds = %if.end.213
  call void @PyErr_Clear()
  br label %do.body.219

do.body.219:                                      ; preds = %if.end.218
  %120 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp220, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt221, align 8
  %dec222 = add i64 %122, -1
  store i64 %dec222, i64* %ob_refcnt221, align 8
  %cmp223 = icmp ne i64 %dec222, 0
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %do.body.219
  br label %if.end.229

if.else.226:                                      ; preds = %do.body.219
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  call void %125(%struct._object* %126)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  store %struct._object* null, %struct._object** %y, align 8
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %127 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp, align 8
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp232 = icmp ne %struct._object* %128, null
  br i1 %cmp232, label %if.then.234, label %if.end.247

if.then.234:                                      ; preds = %do.body.231
  br label %do.body.235

do.body.235:                                      ; preds = %if.then.234
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp236, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %131, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %do.body.235
  br label %if.end.245

if.else.242:                                      ; preds = %do.body.235
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %134(%struct._object* %135)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %do.body.231
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.248
  %136 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %136, %struct._object** %_py_xdecref_tmp250, align 8
  %137 = load %struct._object*, %struct._object** %_py_xdecref_tmp250, align 8
  %cmp251 = icmp ne %struct._object* %137, null
  br i1 %cmp251, label %if.then.253, label %if.end.266

if.then.253:                                      ; preds = %do.body.249
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.253
  %138 = load %struct._object*, %struct._object** %_py_xdecref_tmp250, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp255, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_refcnt256 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt256, align 8
  %dec257 = add i64 %140, -1
  store i64 %dec257, i64* %ob_refcnt256, align 8
  %cmp258 = icmp ne i64 %dec257, 0
  br i1 %cmp258, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %do.body.254
  br label %if.end.264

if.else.261:                                      ; preds = %do.body.254
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_type262 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type262, align 8
  %tp_dealloc263 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc263, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  call void %143(%struct._object* %144)
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.261, %if.then.260
  br label %do.end.265

do.end.265:                                       ; preds = %if.end.264
  br label %if.end.266

if.end.266:                                       ; preds = %do.end.265, %do.body.249
  br label %do.end.267

do.end.267:                                       ; preds = %if.end.266
  br label %do.body.268

do.body.268:                                      ; preds = %do.end.267
  %145 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp269, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_refcnt270 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt270, align 8
  %dec271 = add i64 %147, -1
  store i64 %dec271, i64* %ob_refcnt270, align 8
  %cmp272 = icmp ne i64 %dec271, 0
  br i1 %cmp272, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %do.body.268
  br label %if.end.278

if.else.275:                                      ; preds = %do.body.268
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  call void %150(%struct._object* %151)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.then.274
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc282 = add i64 %152, 1
  store i64 %inc282, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %call283 = call i64 @PyLong_AsLong(%struct._object* @_Py_NoneStruct)
  store i64 %call283, i64* %out280, align 8
  %153 = load i64, i64* %out280, align 8
  %cmp284 = icmp ne i64 %153, -1
  br i1 %cmp284, label %if.then.289, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %do.end.279
  %call287 = call %struct._object* @PyErr_Occurred()
  %tobool288 = icmp ne %struct._object* %call287, null
  br i1 %tobool288, label %if.end.291, label %if.then.289

if.then.289:                                      ; preds = %lor.lhs.false.286, %do.end.279
  %154 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call290 = call %struct._object* %154(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i32 0, i32 0))
  store %struct._object* %call290, %struct._object** %retval
  br label %return

if.end.291:                                       ; preds = %lor.lhs.false.286
  %155 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call292 = call i32 @PyErr_ExceptionMatches(%struct._object* %155)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.end.296, label %if.then.294

if.then.294:                                      ; preds = %if.end.291
  %156 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call295 = call %struct._object* %156(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.161, i32 0, i32 0))
  store %struct._object* %call295, %struct._object** %retval
  br label %return

if.end.296:                                       ; preds = %if.end.291
  call void @PyErr_Clear()
  %call297 = call i64 @PyLong_AsUnsignedLong(%struct._object* @_Py_NoneStruct)
  store i64 %call297, i64* %uout281, align 8
  %157 = load i64, i64* %uout281, align 8
  %cmp298 = icmp ne i64 %157, -1
  br i1 %cmp298, label %if.then.303, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.end.296
  %call301 = call %struct._object* @PyErr_Occurred()
  %tobool302 = icmp ne %struct._object* %call301, null
  br i1 %tobool302, label %if.end.305, label %if.then.303

if.then.303:                                      ; preds = %lor.lhs.false.300, %if.end.296
  %158 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call304 = call %struct._object* %158(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i32 0, i32 0))
  store %struct._object* %call304, %struct._object** %retval
  br label %return

if.end.305:                                       ; preds = %lor.lhs.false.300
  %159 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call306 = call i32 @PyErr_ExceptionMatches(%struct._object* %159)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.end.310, label %if.then.308

if.then.308:                                      ; preds = %if.end.305
  %160 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call309 = call %struct._object* %160(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.161, i32 0, i32 0))
  store %struct._object* %call309, %struct._object** %retval
  br label %return

if.end.310:                                       ; preds = %if.end.305
  call void @PyErr_Clear()
  br label %do.body.311

do.body.311:                                      ; preds = %if.end.310
  store %struct._object* @_Py_NoneStruct, %struct._object** %_py_decref_tmp312, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  %ob_refcnt313 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0
  %162 = load i64, i64* %ob_refcnt313, align 8
  %dec314 = add i64 %162, -1
  store i64 %dec314, i64* %ob_refcnt313, align 8
  %cmp315 = icmp ne i64 %dec314, 0
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %do.body.311
  br label %if.end.321

if.else.318:                                      ; preds = %do.body.311
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  %ob_type319 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type319, align 8
  %tp_dealloc320 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc320, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  call void %165(%struct._object* %166)
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.then.317
  br label %do.end.322

do.end.322:                                       ; preds = %if.end.321
  %167 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc323 = add i64 %167, 1
  store i64 %inc323, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.322, %if.then.308, %if.then.303, %if.then.294, %if.then.289, %if.then.216, %if.then.211, %if.then.202, %if.then.184, %if.then.166, %if.then.161, %if.then.152, %if.then.134, %if.then.129, %if.then.120, %if.then.102, %if.then.84, %if.then.79, %if.then.71, %if.then.65, %if.then.42, %if.then.37, %if.then.28, %if.then.18, %if.then.13, %if.then
  %168 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %168
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raise_test_long_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %call = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* %0)
  ret %struct._object* %call
}

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @raiseTestError(i8* %test_name, i8* %msg) #0 {
entry:
  %test_name.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  store i8* %test_name, i8** %test_name.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._object*, %struct._object** @TestError, align 8
  %1 = load i8*, i8** %test_name.addr, align 8
  %2 = load i8*, i8** %msg.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.162, i32 0, i32 0), i8* %1, i8* %2)
  ret %struct._object* null
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_test_incref(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %2 = load %struct._object*, %struct._object** %ob.addr, align 8
  ret %struct._object* %2
}

declare void @Py_IncRef(%struct._object*) #1

declare void @Py_DecRef(%struct._object*) #1

declare %struct._object* @PyLong_FromString(i8*, i8**, i32) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare double @PyLong_AsDouble(%struct._object*) #1

declare i64 @PyLong_AsSize_t(%struct._object*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @_PyLong_NumBits(%struct._object*) #1

declare i32 @_PyLong_Sign(%struct._object*) #1

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

; Function Attrs: nounwind uwtable
define internal void @capsule_destructor(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load i32, i32* @capsule_destructor_call_count, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @capsule_destructor_call_count, align 4
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i8* @PyCapsule_GetContext(%struct._object* %1)
  %2 = load i8*, i8** @capsule_context, align 8
  %cmp = icmp ne i8* %call, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.254, i32 0, i32 0), i8** @capsule_error, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call void (%struct._object*)* @PyCapsule_GetDestructor(%struct._object* %3)
  %cmp2 = icmp ne void (%struct._object*)* %call1, @capsule_destructor
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.255, i32 0, i32 0), i8** @capsule_error, align 8
  br label %if.end.13

if.else.4:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %call5 = call i8* @PyCapsule_GetName(%struct._object* %4)
  %5 = load i8*, i8** @capsule_name, align 8
  %cmp6 = icmp ne i8* %call5, %5
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.256, i32 0, i32 0), i8** @capsule_error, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %if.else.4
  %6 = load %struct._object*, %struct._object** %o.addr, align 8
  %7 = load i8*, i8** @capsule_name, align 8
  %call9 = call i8* @PyCapsule_GetPointer(%struct._object* %6, i8* %7)
  %8 = load i8*, i8** @capsule_pointer, align 8
  %cmp10 = icmp ne i8* %call9, %8
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.257, i32 0, i32 0), i8** @capsule_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.3
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  ret void
}

declare i32 @PyCapsule_SetContext(%struct._object*, i8*) #1

declare i32 @PyCapsule_SetPointer(%struct._object*, i8*) #1

declare i32 @PyCapsule_SetName(%struct._object*, i8*) #1

declare i32 @PyCapsule_SetDestructor(%struct._object*, void (%struct._object*)*) #1

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare i8* @PyCapsule_GetContext(%struct._object*) #1

declare void (%struct._object*)* @PyCapsule_GetDestructor(%struct._object*) #1

declare i8* @PyCapsule_GetName(%struct._object*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_longlong_api_inner(%struct._object* (i8*)* %error) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %error.addr = alloca %struct._object* (i8*)*, align 8
  %NBITS = alloca i32, align 4
  %base = alloca i64, align 8
  %pyresult = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %uin = alloca i64, align 8
  %uout = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %y = alloca %struct._object*, align 8
  %out60 = alloca i64, align 8
  %uout61 = alloca i64, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp220 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  %_py_xdecref_tmp250 = alloca %struct._object*, align 8
  %_py_decref_tmp255 = alloca %struct._object*, align 8
  %_py_decref_tmp269 = alloca %struct._object*, align 8
  %out280 = alloca i64, align 8
  %uout281 = alloca i64, align 8
  %_py_decref_tmp312 = alloca %struct._object*, align 8
  store %struct._object* (i8*)* %error, %struct._object* (i8*)** %error.addr, align 8
  store i32 64, i32* %NBITS, align 4
  store i64 1, i64* %base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %2, 3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %3 = load i64, i64* %base, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %4 = load i64, i64* %base, align 8
  %sub = sub i64 0, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %uin, align 8
  %5 = load i32, i32* %j, align 4
  %rem = srem i32 %5, 3
  %sub5 = sub i32 %rem, 1
  %conv = sext i32 %sub5 to i64
  %6 = load i64, i64* %uin, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %uin, align 8
  %7 = load i64, i64* %uin, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %7)
  store %struct._object* %call, %struct._object** %pyresult, align 8
  %8 = load %struct._object*, %struct._object** %pyresult, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call8 = call %struct._object* %9(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.141, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load %struct._object*, %struct._object** %pyresult, align 8
  %call9 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %10)
  store i64 %call9, i64* %uout, align 8
  %11 = load i64, i64* %uout, align 8
  %cmp10 = icmp eq i64 %11, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call12, null
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call14 = call %struct._object* %12(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %13 = load i64, i64* %uout, align 8
  %14 = load i64, i64* %uin, align 8
  %cmp16 = icmp ne i64 %13, %14
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %15 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call19 = call %struct._object* %15(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.143, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %16 = load %struct._object*, %struct._object** %pyresult, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  store %struct._object* null, %struct._object** %pyresult, align 8
  %23 = load i64, i64* %uin, align 8
  store i64 %23, i64* %in, align 8
  %24 = load i64, i64* %in, align 8
  %call25 = call %struct._object* @PyLong_FromLongLong(i64 %24)
  store %struct._object* %call25, %struct._object** %pyresult, align 8
  %25 = load %struct._object*, %struct._object** %pyresult, align 8
  %cmp26 = icmp eq %struct._object* %25, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.end
  %26 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call29 = call %struct._object* %26(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i32 0, i32 0))
  store %struct._object* %call29, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %do.end
  %27 = load %struct._object*, %struct._object** %pyresult, align 8
  %call31 = call i64 @PyLong_AsLongLong(%struct._object* %27)
  store i64 %call31, i64* %out, align 8
  %28 = load i64, i64* %out, align 8
  %cmp32 = icmp eq i64 %28, -1
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %if.end.30
  %call35 = call %struct._object* @PyErr_Occurred()
  %tobool36 = icmp ne %struct._object* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true.34
  %29 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call38 = call %struct._object* %29(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0))
  store %struct._object* %call38, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.34, %if.end.30
  %30 = load i64, i64* %out, align 8
  %31 = load i64, i64* %in, align 8
  %cmp40 = icmp ne i64 %30, %31
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %32 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call43 = call %struct._object* %32(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i32 0, i32 0))
  store %struct._object* %call43, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.44
  %33 = load %struct._object*, %struct._object** %pyresult, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp46, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %35, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.45
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %38(%struct._object* %39)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  store %struct._object* null, %struct._object** %pyresult, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.56
  %40 = load i32, i32* %j, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc58 = add i32 %41, 1
  store i32 %inc58, i32* %i, align 4
  %42 = load i64, i64* %base, align 8
  %shl = shl i64 %42, 1
  store i64 %shl, i64* %base, align 8
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %call62 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call62, %struct._object** %one, align 8
  %43 = load %struct._object*, %struct._object** %one, align 8
  %cmp63 = icmp eq %struct._object* %43, null
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %for.end.59
  %44 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call66 = call %struct._object* %44(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* %call66, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %for.end.59
  %45 = load %struct._object*, %struct._object** %one, align 8
  %call68 = call %struct._object* @PyNumber_Negative(%struct._object* %45)
  store %struct._object* %call68, %struct._object** %x, align 8
  %46 = load %struct._object*, %struct._object** %x, align 8
  %cmp69 = icmp eq %struct._object* %46, null
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.67
  %47 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call72 = call %struct._object* %47(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i32 0, i32 0))
  store %struct._object* %call72, %struct._object** %retval
  br label %return

if.end.73:                                        ; preds = %if.end.67
  %48 = load %struct._object*, %struct._object** %x, align 8
  %call74 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %48)
  store i64 %call74, i64* %uout61, align 8
  %49 = load i64, i64* %uout61, align 8
  %cmp75 = icmp ne i64 %49, -1
  br i1 %cmp75, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.73
  %call77 = call %struct._object* @PyErr_Occurred()
  %tobool78 = icmp ne %struct._object* %call77, null
  br i1 %tobool78, label %if.end.81, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false, %if.end.73
  %50 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call80 = call %struct._object* %50(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.149, i32 0, i32 0))
  store %struct._object* %call80, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false
  %51 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call82 = call i32 @PyErr_ExceptionMatches(%struct._object* %51)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %if.end.81
  %52 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call85 = call %struct._object* %52(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.150, i32 0, i32 0))
  store %struct._object* %call85, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.81
  call void @PyErr_Clear()
  br label %do.body.87

do.body.87:                                       ; preds = %if.end.86
  %53 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp88, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %55, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.87
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %58(%struct._object* %59)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  store %struct._object* null, %struct._object** %x, align 8
  %call99 = call %struct._object* @PyLong_FromLong(i64 64)
  store %struct._object* %call99, %struct._object** %y, align 8
  %60 = load %struct._object*, %struct._object** %y, align 8
  %cmp100 = icmp eq %struct._object* %60, null
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %do.end.98
  %61 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call103 = call %struct._object* %61(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* %call103, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %do.end.98
  %62 = load %struct._object*, %struct._object** %one, align 8
  %63 = load %struct._object*, %struct._object** %y, align 8
  %call105 = call %struct._object* @PyNumber_Lshift(%struct._object* %62, %struct._object* %63)
  store %struct._object* %call105, %struct._object** %x, align 8
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.104
  %64 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp107, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %66, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.106
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.106
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %69(%struct._object* %70)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  store %struct._object* null, %struct._object** %y, align 8
  %71 = load %struct._object*, %struct._object** %x, align 8
  %cmp118 = icmp eq %struct._object* %71, null
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %do.end.117
  %72 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call121 = call %struct._object* %72(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.151, i32 0, i32 0))
  store %struct._object* %call121, %struct._object** %retval
  br label %return

if.end.122:                                       ; preds = %do.end.117
  %73 = load %struct._object*, %struct._object** %x, align 8
  %call123 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %73)
  store i64 %call123, i64* %uout61, align 8
  %74 = load i64, i64* %uout61, align 8
  %cmp124 = icmp ne i64 %74, -1
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.122
  %call127 = call %struct._object* @PyErr_Occurred()
  %tobool128 = icmp ne %struct._object* %call127, null
  br i1 %tobool128, label %if.end.131, label %if.then.129

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.end.122
  %75 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call130 = call %struct._object* %75(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.152, i32 0, i32 0))
  store %struct._object* %call130, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %lor.lhs.false.126
  %76 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call132 = call i32 @PyErr_ExceptionMatches(%struct._object* %76)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %if.end.131
  %77 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call135 = call %struct._object* %77(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.153, i32 0, i32 0))
  store %struct._object* %call135, %struct._object** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.131
  call void @PyErr_Clear()
  %78 = load %struct._object*, %struct._object** %x, align 8
  %79 = load %struct._object*, %struct._object** %one, align 8
  %call137 = call %struct._object* @PyNumber_Rshift(%struct._object* %78, %struct._object* %79)
  store %struct._object* %call137, %struct._object** %y, align 8
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.136
  %80 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp139, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %82, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %85(%struct._object* %86)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  store %struct._object* null, %struct._object** %x, align 8
  %87 = load %struct._object*, %struct._object** %y, align 8
  %cmp150 = icmp eq %struct._object* %87, null
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %do.end.149
  %88 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call153 = call %struct._object* %88(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.154, i32 0, i32 0))
  store %struct._object* %call153, %struct._object** %retval
  br label %return

if.end.154:                                       ; preds = %do.end.149
  %89 = load %struct._object*, %struct._object** %y, align 8
  %call155 = call i64 @PyLong_AsLongLong(%struct._object* %89)
  store i64 %call155, i64* %out60, align 8
  %90 = load i64, i64* %out60, align 8
  %cmp156 = icmp ne i64 %90, -1
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %if.end.154
  %call159 = call %struct._object* @PyErr_Occurred()
  %tobool160 = icmp ne %struct._object* %call159, null
  br i1 %tobool160, label %if.end.163, label %if.then.161

if.then.161:                                      ; preds = %lor.lhs.false.158, %if.end.154
  %91 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call162 = call %struct._object* %91(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.155, i32 0, i32 0))
  store %struct._object* %call162, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %lor.lhs.false.158
  %92 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call164 = call i32 @PyErr_ExceptionMatches(%struct._object* %92)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end.168, label %if.then.166

if.then.166:                                      ; preds = %if.end.163
  %93 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call167 = call %struct._object* %93(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.156, i32 0, i32 0))
  store %struct._object* %call167, %struct._object** %retval
  br label %return

if.end.168:                                       ; preds = %if.end.163
  call void @PyErr_Clear()
  %94 = load %struct._object*, %struct._object** %y, align 8
  %call169 = call %struct._object* @PyNumber_Negative(%struct._object* %94)
  store %struct._object* %call169, %struct._object** %x, align 8
  br label %do.body.170

do.body.170:                                      ; preds = %if.end.168
  %95 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp171, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_refcnt172 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt172, align 8
  %dec173 = add i64 %97, -1
  store i64 %dec173, i64* %ob_refcnt172, align 8
  %cmp174 = icmp ne i64 %dec173, 0
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %do.body.170
  br label %if.end.180

if.else.177:                                      ; preds = %do.body.170
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc179, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8
  call void %100(%struct._object* %101)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.176
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  store %struct._object* null, %struct._object** %y, align 8
  %102 = load %struct._object*, %struct._object** %x, align 8
  %cmp182 = icmp eq %struct._object* %102, null
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %do.end.181
  %103 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call185 = call %struct._object* %103(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i32 0, i32 0))
  store %struct._object* %call185, %struct._object** %retval
  br label %return

if.end.186:                                       ; preds = %do.end.181
  %104 = load %struct._object*, %struct._object** %x, align 8
  %105 = load %struct._object*, %struct._object** %one, align 8
  %call187 = call %struct._object* @PyNumber_Subtract(%struct._object* %104, %struct._object* %105)
  store %struct._object* %call187, %struct._object** %y, align 8
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.186
  %106 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp189, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %108, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.188
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.188
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %111(%struct._object* %112)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  store %struct._object* null, %struct._object** %x, align 8
  %113 = load %struct._object*, %struct._object** %y, align 8
  %cmp200 = icmp eq %struct._object* %113, null
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %do.end.199
  %114 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call203 = call %struct._object* %114(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i32 0, i32 0))
  store %struct._object* %call203, %struct._object** %retval
  br label %return

if.end.204:                                       ; preds = %do.end.199
  %115 = load %struct._object*, %struct._object** %y, align 8
  %call205 = call i64 @PyLong_AsLongLong(%struct._object* %115)
  store i64 %call205, i64* %out60, align 8
  %116 = load i64, i64* %out60, align 8
  %cmp206 = icmp ne i64 %116, -1
  br i1 %cmp206, label %if.then.211, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %if.end.204
  %call209 = call %struct._object* @PyErr_Occurred()
  %tobool210 = icmp ne %struct._object* %call209, null
  br i1 %tobool210, label %if.end.213, label %if.then.211

if.then.211:                                      ; preds = %lor.lhs.false.208, %if.end.204
  %117 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call212 = call %struct._object* %117(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.158, i32 0, i32 0))
  store %struct._object* %call212, %struct._object** %retval
  br label %return

if.end.213:                                       ; preds = %lor.lhs.false.208
  %118 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call214 = call i32 @PyErr_ExceptionMatches(%struct._object* %118)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.end.218, label %if.then.216

if.then.216:                                      ; preds = %if.end.213
  %119 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call217 = call %struct._object* %119(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.159, i32 0, i32 0))
  store %struct._object* %call217, %struct._object** %retval
  br label %return

if.end.218:                                       ; preds = %if.end.213
  call void @PyErr_Clear()
  br label %do.body.219

do.body.219:                                      ; preds = %if.end.218
  %120 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp220, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt221, align 8
  %dec222 = add i64 %122, -1
  store i64 %dec222, i64* %ob_refcnt221, align 8
  %cmp223 = icmp ne i64 %dec222, 0
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %do.body.219
  br label %if.end.229

if.else.226:                                      ; preds = %do.body.219
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  call void %125(%struct._object* %126)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  store %struct._object* null, %struct._object** %y, align 8
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %127 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp, align 8
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp232 = icmp ne %struct._object* %128, null
  br i1 %cmp232, label %if.then.234, label %if.end.247

if.then.234:                                      ; preds = %do.body.231
  br label %do.body.235

do.body.235:                                      ; preds = %if.then.234
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp236, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %131, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %do.body.235
  br label %if.end.245

if.else.242:                                      ; preds = %do.body.235
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %134(%struct._object* %135)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %do.body.231
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.248
  %136 = load %struct._object*, %struct._object** %y, align 8
  store %struct._object* %136, %struct._object** %_py_xdecref_tmp250, align 8
  %137 = load %struct._object*, %struct._object** %_py_xdecref_tmp250, align 8
  %cmp251 = icmp ne %struct._object* %137, null
  br i1 %cmp251, label %if.then.253, label %if.end.266

if.then.253:                                      ; preds = %do.body.249
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.253
  %138 = load %struct._object*, %struct._object** %_py_xdecref_tmp250, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp255, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_refcnt256 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt256, align 8
  %dec257 = add i64 %140, -1
  store i64 %dec257, i64* %ob_refcnt256, align 8
  %cmp258 = icmp ne i64 %dec257, 0
  br i1 %cmp258, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %do.body.254
  br label %if.end.264

if.else.261:                                      ; preds = %do.body.254
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  %ob_type262 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type262, align 8
  %tp_dealloc263 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc263, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp255, align 8
  call void %143(%struct._object* %144)
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.261, %if.then.260
  br label %do.end.265

do.end.265:                                       ; preds = %if.end.264
  br label %if.end.266

if.end.266:                                       ; preds = %do.end.265, %do.body.249
  br label %do.end.267

do.end.267:                                       ; preds = %if.end.266
  br label %do.body.268

do.body.268:                                      ; preds = %do.end.267
  %145 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp269, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_refcnt270 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt270, align 8
  %dec271 = add i64 %147, -1
  store i64 %dec271, i64* %ob_refcnt270, align 8
  %cmp272 = icmp ne i64 %dec271, 0
  br i1 %cmp272, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %do.body.268
  br label %if.end.278

if.else.275:                                      ; preds = %do.body.268
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp269, align 8
  call void %150(%struct._object* %151)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.then.274
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc282 = add i64 %152, 1
  store i64 %inc282, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %call283 = call i64 @PyLong_AsLongLong(%struct._object* @_Py_NoneStruct)
  store i64 %call283, i64* %out280, align 8
  %153 = load i64, i64* %out280, align 8
  %cmp284 = icmp ne i64 %153, -1
  br i1 %cmp284, label %if.then.289, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %do.end.279
  %call287 = call %struct._object* @PyErr_Occurred()
  %tobool288 = icmp ne %struct._object* %call287, null
  br i1 %tobool288, label %if.end.291, label %if.then.289

if.then.289:                                      ; preds = %lor.lhs.false.286, %do.end.279
  %154 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call290 = call %struct._object* %154(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i32 0, i32 0))
  store %struct._object* %call290, %struct._object** %retval
  br label %return

if.end.291:                                       ; preds = %lor.lhs.false.286
  %155 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call292 = call i32 @PyErr_ExceptionMatches(%struct._object* %155)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.end.296, label %if.then.294

if.then.294:                                      ; preds = %if.end.291
  %156 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call295 = call %struct._object* %156(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.161, i32 0, i32 0))
  store %struct._object* %call295, %struct._object** %retval
  br label %return

if.end.296:                                       ; preds = %if.end.291
  call void @PyErr_Clear()
  %call297 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* @_Py_NoneStruct)
  store i64 %call297, i64* %uout281, align 8
  %157 = load i64, i64* %uout281, align 8
  %cmp298 = icmp ne i64 %157, -1
  br i1 %cmp298, label %if.then.303, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.end.296
  %call301 = call %struct._object* @PyErr_Occurred()
  %tobool302 = icmp ne %struct._object* %call301, null
  br i1 %tobool302, label %if.end.305, label %if.then.303

if.then.303:                                      ; preds = %lor.lhs.false.300, %if.end.296
  %158 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call304 = call %struct._object* %158(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i32 0, i32 0))
  store %struct._object* %call304, %struct._object** %retval
  br label %return

if.end.305:                                       ; preds = %lor.lhs.false.300
  %159 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call306 = call i32 @PyErr_ExceptionMatches(%struct._object* %159)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.end.310, label %if.then.308

if.then.308:                                      ; preds = %if.end.305
  %160 = load %struct._object* (i8*)*, %struct._object* (i8*)** %error.addr, align 8
  %call309 = call %struct._object* %160(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.161, i32 0, i32 0))
  store %struct._object* %call309, %struct._object** %retval
  br label %return

if.end.310:                                       ; preds = %if.end.305
  call void @PyErr_Clear()
  br label %do.body.311

do.body.311:                                      ; preds = %if.end.310
  store %struct._object* @_Py_NoneStruct, %struct._object** %_py_decref_tmp312, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  %ob_refcnt313 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0
  %162 = load i64, i64* %ob_refcnt313, align 8
  %dec314 = add i64 %162, -1
  store i64 %dec314, i64* %ob_refcnt313, align 8
  %cmp315 = icmp ne i64 %dec314, 0
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %do.body.311
  br label %if.end.321

if.else.318:                                      ; preds = %do.body.311
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  %ob_type319 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type319, align 8
  %tp_dealloc320 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc320, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp312, align 8
  call void %165(%struct._object* %166)
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.then.317
  br label %do.end.322

do.end.322:                                       ; preds = %if.end.321
  %167 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc323 = add i64 %167, 1
  store i64 %inc323, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.322, %if.then.308, %if.then.303, %if.then.294, %if.then.289, %if.then.216, %if.then.211, %if.then.202, %if.then.184, %if.then.166, %if.then.161, %if.then.152, %if.then.134, %if.then.129, %if.then.120, %if.then.102, %if.then.84, %if.then.79, %if.then.71, %if.then.65, %if.then.42, %if.then.37, %if.then.28, %if.then.18, %if.then.13, %if.then
  %168 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %168
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raise_test_longlong_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %call = call %struct._object* @raiseTestError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8* %0)
  ret %struct._object* %call
}

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #1

declare i64 @PyLong_AsLongLong(%struct._object*) #1

declare i64 @PyLong_AsLongLongAndOverflow(%struct._object*, i32*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyBytes_FromString(i8*) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare i64 @Py_UNICODE_strlen(i32*) #1

declare %struct._object* @PyUnicode_FromUnicode(i32*, i64) #1

declare %struct._object* @PyCodec_IncrementalEncoder(i8*, i8*) #1

declare %struct._object* @PyCodec_IncrementalDecoder(i8*, i8*) #1

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #1

declare i32* @PyUnicode_AsUnicode(%struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #1

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #1

declare void @PyMem_Free(i8*) #1

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

declare i32 @PyUnicode_EncodeDecimal(i32*, i64, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare %struct._object* @PyUnicode_TransformDecimalToASCII(i32*, i64) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare void @PyEval_InitThreads() #1

declare i8* @PyThread_allocate_lock() #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @_make_call_from_thread(i8* %callable) #0 {
entry:
  %callable.addr = alloca i8*, align 8
  store i8* %callable, i8** %callable.addr, align 8
  %0 = load i8*, i8** %callable.addr, align 8
  %call = call i32 @_make_call(i8* %0)
  %1 = load i8*, i8** @thread_done, align 8
  call void @PyThread_release_lock(i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_make_call(i8* %callable) #0 {
entry:
  %callable.addr = alloca i8*, align 8
  %rc = alloca %struct._object*, align 8
  %success = alloca i32, align 4
  %s = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %callable, i8** %callable.addr, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %s, align 4
  %0 = load i8*, i8** %callable.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.334, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %rc, align 8
  %2 = load %struct._object*, %struct._object** %rc, align 8
  %cmp = icmp ne %struct._object* %2, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %rc, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %4, null
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %12 = load i32, i32* %s, align 4
  call void @PyGILState_Release(i32 %12)
  %13 = load i32, i32* %success, align 4
  ret i32 %13
}

declare void @PyThread_release_lock(i8*) #1

declare void @PyThread_free_lock(i8*) #1

declare i32 @PyGILState_Ensure() #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare void @PyGILState_Release(i32) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define internal void @print_delta(i32 %test, %struct.timeval* %s, %struct.timeval* %e) #0 {
entry:
  %test.addr = alloca i32, align 4
  %s.addr = alloca %struct.timeval*, align 8
  %e.addr = alloca %struct.timeval*, align 8
  store i32 %test, i32* %test.addr, align 4
  store %struct.timeval* %s, %struct.timeval** %s.addr, align 8
  store %struct.timeval* %e, %struct.timeval** %e.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %s.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %0, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %2 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %3 = load i64, i64* %tv_sec1, align 8
  %sub = sub i64 %3, %1
  store i64 %sub, i64* %tv_sec1, align 8
  %4 = load %struct.timeval*, %struct.timeval** %s.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %5 = load i64, i64* %tv_usec, align 8
  %6 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_usec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %7 = load i64, i64* %tv_usec2, align 8
  %sub3 = sub i64 %7, %5
  store i64 %sub3, i64* %tv_usec2, align 8
  %8 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_usec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %9 = load i64, i64* %tv_usec4, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_sec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %11 = load i64, i64* %tv_sec5, align 8
  %sub6 = sub i64 %11, 1
  store i64 %sub6, i64* %tv_sec5, align 8
  %12 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_usec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %13 = load i64, i64* %tv_usec7, align 8
  %add = add i64 %13, 1000000
  store i64 %add, i64* %tv_usec7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %test.addr, align 4
  %15 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_sec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %16 = load i64, i64* %tv_sec8, align 8
  %conv = trunc i64 %16 to i32
  %17 = load %struct.timeval*, %struct.timeval** %e.addr, align 8
  %tv_usec9 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %18 = load i64, i64* %tv_usec9, align 8
  %conv10 = trunc i64 %18 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.335, i32 0, i32 0), i32 %14, i32 %conv, i32 %conv10)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @printf(i8*, ...) #1

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #1

declare %struct._object* @PyException_GetTraceback(%struct._object*) #1

declare void @PyErr_Display(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_GetExcInfo(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_SetExcInfo(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @failing_converter(%struct._object* %obj, i8* %arg) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %arg.addr = alloca i8*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** @str1, align 8
  store %struct._object* %0, %struct._object** @str2, align 8
  %1 = load %struct._object*, %struct._object** @str2, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  ret i32 0
}

declare %struct.PyCodeObject* @PyCode_NewEmpty(i8*, i8*, i32) #1

declare %struct._object* @PyErr_NewExceptionWithDoc(i8*, i8*, %struct._object*, %struct._object*) #1

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

declare %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo*) #1

declare %struct._ts* @PyThreadState_Get() #1

declare %struct._ts* @PyThreadState_Swap(%struct._ts*) #1

declare %struct._ts* @Py_NewInterpreter() #1

declare i32 @PyRun_SimpleStringFlags(i8*, %struct.PyCompilerFlags*) #1

declare void @Py_EndInterpreter(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_time_rounding(i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %round.addr = alloca i32, align 4
  store i32 %round, i32* %round.addr, align 4
  %0 = load i32, i32* %round.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %round.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.350, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @_PyTime_ObjectToTime_t(%struct._object*, i64*, i32) #1

declare %struct._object* @_PyLong_FromTime_t(i64) #1

declare i32 @_PyTime_ObjectToTimeval(%struct._object*, i64*, i64*, i32) #1

declare i32 @_PyTime_ObjectToTimespec(%struct._object*, i64*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @slot_tp_del(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %del = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  %refcnt = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %1, %struct._Py_Identifier* @slot_tp_del.PyId___tp_del__)
  store %struct._object* %call, %struct._object** %del, align 8
  %2 = load %struct._object*, %struct._object** %del, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %del, align 8
  %call1 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %3, %struct._object* null, %struct._object* null)
  store %struct._object* %call1, %struct._object** %res, align 8
  %4 = load %struct._object*, %struct._object** %res, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %del, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %5)
  br label %if.end.8

if.else:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else.7:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %if.then.3
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %del, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp10, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %15, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %18(%struct._object* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %entry
  %20 = load %struct._object*, %struct._object** %error_type, align 8
  %21 = load %struct._object*, %struct._object** %error_value, align 8
  %22 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %24, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp eq i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt26, align 8
  store i64 %26, i64* %refcnt, align 8
  %27 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  store i64 1, i64* %ob_refcnt27, align 8
  %28 = load i64, i64* %refcnt, align 8
  %29 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  store i64 %28, i64* %ob_refcnt28, align 8
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare i8* @PyObject_Malloc(i64) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_setallocators(i32 %domain) #0 {
entry:
  %domain.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %error_msg = alloca i8*, align 8
  %hook = alloca %struct.alloc_hook_t, align 8
  %alloc = alloca %struct.PyMemAllocator, align 8
  %size = alloca i64, align 8
  %size2 = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %ptr2 = alloca i8*, align 8
  store i32 %domain, i32* %domain.addr, align 4
  store %struct._object* null, %struct._object** %res, align 8
  %malloc_size = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 1
  store i64 0, i64* %malloc_size, align 8
  %realloc_ptr = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 2
  store i8* null, i8** %realloc_ptr, align 8
  %realloc_new_size = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 3
  store i64 0, i64* %realloc_new_size, align 8
  %free_ptr = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 4
  store i8* null, i8** %free_ptr, align 8
  %0 = bitcast %struct.alloc_hook_t* %hook to i8*
  %ctx = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 0
  store i8* %0, i8** %ctx, align 8
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1
  store i8* (i8*, i64)* @hook_malloc, i8* (i8*, i64)** %malloc, align 8
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2
  store i8* (i8*, i8*, i64)* @hook_realloc, i8* (i8*, i8*, i64)** %realloc, align 8
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3
  store void (i8*, i8*)* @hook_free, void (i8*, i8*)** %free, align 8
  %1 = load i32, i32* %domain.addr, align 4
  %alloc1 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 0
  call void @PyMem_GetAllocator(i32 %1, %struct.PyMemAllocator* %alloc1)
  %2 = load i32, i32* %domain.addr, align 4
  call void @PyMem_SetAllocator(i32 %2, %struct.PyMemAllocator* %alloc)
  store i64 42, i64* %size, align 8
  %3 = load i32, i32* %domain.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i64, i64* %size, align 8
  %call = call i8* @PyMem_RawMalloc(i64 %4)
  store i8* %call, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load i64, i64* %size, align 8
  %call3 = call i8* @PyMem_Malloc(i64 %5)
  store i8* %call3, i8** %ptr, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load i64, i64* %size, align 8
  %call5 = call i8* @PyObject_Malloc(i64 %6)
  store i8* %call5, i8** %ptr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* null, i8** %ptr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb.2, %sw.bb
  %7 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.359, i32 0, i32 0), i8** %error_msg, align 8
  br label %fail

if.end:                                           ; preds = %sw.epilog
  %malloc_size6 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 1
  %8 = load i64, i64* %malloc_size6, align 8
  %9 = load i64, i64* %size, align 8
  %cmp7 = icmp ne i64 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.360, i32 0, i32 0), i8** %error_msg, align 8
  br label %fail

if.end.9:                                         ; preds = %if.end
  store i64 200, i64* %size2, align 8
  %10 = load i32, i32* %domain.addr, align 4
  switch i32 %10, label %sw.default.16 [
    i32 0, label %sw.bb.10
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.14
  ]

sw.bb.10:                                         ; preds = %if.end.9
  %11 = load i8*, i8** %ptr, align 8
  %12 = load i64, i64* %size2, align 8
  %call11 = call i8* @PyMem_RawRealloc(i8* %11, i64 %12)
  store i8* %call11, i8** %ptr2, align 8
  br label %sw.epilog.17

sw.bb.12:                                         ; preds = %if.end.9
  %13 = load i8*, i8** %ptr, align 8
  %14 = load i64, i64* %size2, align 8
  %call13 = call i8* @PyMem_Realloc(i8* %13, i64 %14)
  store i8* %call13, i8** %ptr2, align 8
  br label %sw.epilog.17

sw.bb.14:                                         ; preds = %if.end.9
  %15 = load i8*, i8** %ptr, align 8
  %16 = load i64, i64* %size2, align 8
  %call15 = call i8* @PyObject_Realloc(i8* %15, i64 %16)
  store i8* %call15, i8** %ptr2, align 8
  br label %sw.epilog.17

sw.default.16:                                    ; preds = %if.end.9
  store i8* null, i8** %ptr2, align 8
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default.16, %sw.bb.14, %sw.bb.12, %sw.bb.10
  %17 = load i8*, i8** %ptr2, align 8
  %cmp18 = icmp eq i8* %17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.epilog.17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i8** %error_msg, align 8
  br label %fail

if.end.20:                                        ; preds = %sw.epilog.17
  %realloc_ptr21 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 2
  %18 = load i8*, i8** %realloc_ptr21, align 8
  %19 = load i8*, i8** %ptr, align 8
  %cmp22 = icmp ne i8* %18, %19
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %realloc_new_size23 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 3
  %20 = load i64, i64* %realloc_new_size23, align 8
  %21 = load i64, i64* %size2, align 8
  %cmp24 = icmp ne i64 %20, %21
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.20
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.362, i32 0, i32 0), i8** %error_msg, align 8
  br label %fail

if.end.26:                                        ; preds = %lor.lhs.false
  %22 = load i32, i32* %domain.addr, align 4
  switch i32 %22, label %sw.epilog.30 [
    i32 0, label %sw.bb.27
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.29
  ]

sw.bb.27:                                         ; preds = %if.end.26
  %23 = load i8*, i8** %ptr2, align 8
  call void @PyMem_RawFree(i8* %23)
  br label %sw.epilog.30

sw.bb.28:                                         ; preds = %if.end.26
  %24 = load i8*, i8** %ptr2, align 8
  call void @PyMem_Free(i8* %24)
  br label %sw.epilog.30

sw.bb.29:                                         ; preds = %if.end.26
  %25 = load i8*, i8** %ptr2, align 8
  call void @PyObject_Free(i8* %25)
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %if.end.26, %sw.bb.29, %sw.bb.28, %sw.bb.27
  %free_ptr31 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 4
  %26 = load i8*, i8** %free_ptr31, align 8
  %27 = load i8*, i8** %ptr2, align 8
  %cmp32 = icmp ne i8* %26, %27
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.epilog.30
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.363, i32 0, i32 0), i8** %error_msg, align 8
  br label %fail

if.end.34:                                        ; preds = %sw.epilog.30
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %res, align 8
  br label %finally

fail:                                             ; preds = %if.then.33, %if.then.25, %if.then.19, %if.then.8, %if.then
  %29 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %30 = load i8*, i8** %error_msg, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* %30)
  br label %finally

finally:                                          ; preds = %fail, %if.end.34
  %31 = load i32, i32* %domain.addr, align 4
  %alloc35 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %hook, i32 0, i32 0
  call void @PyMem_SetAllocator(i32 %31, %struct.PyMemAllocator* %alloc35)
  %32 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal i8* @hook_malloc(i8* %ctx, i64 %size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %hook = alloca %struct.alloc_hook_t*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.alloc_hook_t*
  store %struct.alloc_hook_t* %1, %struct.alloc_hook_t** %hook, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %malloc_size = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %3, i32 0, i32 1
  store i64 %2, i64* %malloc_size, align 8
  %4 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %4, i32 0, i32 0
  %malloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 1
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** %malloc, align 8
  %6 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc1 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %6, i32 0, i32 0
  %ctx2 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc1, i32 0, i32 0
  %7 = load i8*, i8** %ctx2, align 8
  %8 = load i64, i64* %size.addr, align 8
  %call = call i8* %5(i8* %7, i64 %8)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @hook_realloc(i8* %ctx, i8* %ptr, i64 %new_size) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %hook = alloca %struct.alloc_hook_t*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.alloc_hook_t*
  store %struct.alloc_hook_t* %1, %struct.alloc_hook_t** %hook, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %realloc_ptr = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %3, i32 0, i32 2
  store i8* %2, i8** %realloc_ptr, align 8
  %4 = load i64, i64* %new_size.addr, align 8
  %5 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %realloc_new_size = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %5, i32 0, i32 3
  store i64 %4, i64* %realloc_new_size, align 8
  %6 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %6, i32 0, i32 0
  %realloc = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 2
  %7 = load i8* (i8*, i8*, i64)*, i8* (i8*, i8*, i64)** %realloc, align 8
  %8 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc1 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %8, i32 0, i32 0
  %ctx2 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc1, i32 0, i32 0
  %9 = load i8*, i8** %ctx2, align 8
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i64, i64* %new_size.addr, align 8
  %call = call i8* %7(i8* %9, i8* %10, i64 %11)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @hook_free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %hook = alloca %struct.alloc_hook_t*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.alloc_hook_t*
  store %struct.alloc_hook_t* %1, %struct.alloc_hook_t** %hook, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %free_ptr = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %3, i32 0, i32 4
  store i8* %2, i8** %free_ptr, align 8
  %4 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %4, i32 0, i32 0
  %free = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc, i32 0, i32 3
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %free, align 8
  %6 = load %struct.alloc_hook_t*, %struct.alloc_hook_t** %hook, align 8
  %alloc1 = getelementptr inbounds %struct.alloc_hook_t, %struct.alloc_hook_t* %6, i32 0, i32 0
  %ctx2 = getelementptr inbounds %struct.PyMemAllocator, %struct.PyMemAllocator* %alloc1, i32 0, i32 0
  %7 = load i8*, i8** %ctx2, align 8
  %8 = load i8*, i8** %ptr.addr, align 8
  call void %5(i8* %7, i8* %8)
  ret void
}

declare void @PyMem_GetAllocator(i32, %struct.PyMemAllocator*) #1

declare void @PyMem_SetAllocator(i32, %struct.PyMemAllocator*) #1

declare i8* @PyMem_RawMalloc(i64) #1

declare i8* @PyMem_RawRealloc(i8*, i64) #1

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i8* @PyObject_Realloc(i8*, i64) #1

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @temporary_c_thread(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %test_c_thread = alloca %struct.test_c_thread_t*, align 8
  %state = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.test_c_thread_t*
  store %struct.test_c_thread_t* %1, %struct.test_c_thread_t** %test_c_thread, align 8
  %2 = load %struct.test_c_thread_t*, %struct.test_c_thread_t** %test_c_thread, align 8
  %start_event = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %2, i32 0, i32 0
  %3 = load i8*, i8** %start_event, align 8
  call void @PyThread_release_lock(i8* %3)
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %state, align 4
  %4 = load %struct.test_c_thread_t*, %struct.test_c_thread_t** %test_c_thread, align 8
  %callback = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %callback, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.334, i32 0, i32 0), i8* null)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.test_c_thread_t*, %struct.test_c_thread_t** %test_c_thread, align 8
  %callback2 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %callback2, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %9 = load %struct.test_c_thread_t*, %struct.test_c_thread_t** %test_c_thread, align 8
  %callback3 = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %9, i32 0, i32 2
  store %struct._object* null, %struct._object** %callback3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %res, align 8
  %cmp9 = icmp eq %struct._object* %17, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.end.8
  call void @PyErr_Print()
  br label %if.end.23

if.else.11:                                       ; preds = %do.end.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.else.11
  %18 = load %struct._object*, %struct._object** %res, align 8
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
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %if.then.10
  %25 = load i32, i32* %state, align 4
  call void @PyGILState_Release(i32 %25)
  %26 = load %struct.test_c_thread_t*, %struct.test_c_thread_t** %test_c_thread, align 8
  %exit_event = getelementptr inbounds %struct.test_c_thread_t, %struct.test_c_thread_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %exit_event, align 8
  call void @PyThread_release_lock(i8* %27)
  call void @PyThread_exit_thread()
  ret void
}

declare void @PyErr_Print() #1

declare void @PyThread_exit_thread() #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @test_structmembers_free(%struct._object* %ob) #0 {
entry:
  %ob.addr = alloca %struct._object*, align 8
  store %struct._object* %ob, %struct._object** %ob.addr, align 8
  %0 = load %struct._object*, %struct._object** %ob.addr, align 8
  %1 = bitcast %struct._object* %0 to i8*
  call void @PyObject_Free(i8* %1)
  ret void
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @test_structmembers_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %ob = alloca %struct.test_structmembers*, align 8
  %s = alloca i8*, align 8
  %string_len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %s, align 8
  store i64 0, i64* %string_len, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %0)
  %1 = bitcast %struct._object* %call to %struct.test_structmembers*
  store %struct.test_structmembers* %1, %struct.test_structmembers** %ob, align 8
  %2 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %cmp = icmp eq %struct.test_structmembers* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %3, i32 0, i32 1
  %4 = bitcast %struct.all_structmembers* %structmembers to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 80, i32 8, i1 false)
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %7 = load i8*, i8** @test_structmembers_new.fmt, align 8
  %8 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers1 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %8, i32 0, i32 1
  %bool_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers1, i32 0, i32 0
  %9 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers2 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %9, i32 0, i32 1
  %byte_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers2, i32 0, i32 1
  %10 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers3 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %10, i32 0, i32 1
  %ubyte_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers3, i32 0, i32 2
  %11 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers4 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %11, i32 0, i32 1
  %short_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers4, i32 0, i32 3
  %12 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers5 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %12, i32 0, i32 1
  %ushort_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers5, i32 0, i32 4
  %13 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers6 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %13, i32 0, i32 1
  %int_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers6, i32 0, i32 5
  %14 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers7 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %14, i32 0, i32 1
  %uint_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers7, i32 0, i32 6
  %15 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers8 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %15, i32 0, i32 1
  %long_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers8, i32 0, i32 7
  %16 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers9 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %16, i32 0, i32 1
  %ulong_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers9, i32 0, i32 8
  %17 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers10 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %17, i32 0, i32 1
  %pyssizet_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers10, i32 0, i32 9
  %18 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers11 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %18, i32 0, i32 1
  %float_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers11, i32 0, i32 10
  %19 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers12 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %19, i32 0, i32 1
  %double_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers12, i32 0, i32 11
  %20 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers13 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %20, i32 0, i32 1
  %longlong_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers13, i32 0, i32 13
  %21 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers14 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %21, i32 0, i32 1
  %ulonglong_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers14, i32 0, i32 14
  %call15 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %5, %struct._object* %6, i8* %7, i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @test_structmembers_new.keywords, i32 0, i32 0), i8* %bool_member, i8* %byte_member, i8* %ubyte_member, i16* %short_member, i16* %ushort_member, i32* %int_member, i32* %uint_member, i64* %long_member, i64* %ulong_member, i64* %pyssizet_member, float* %float_member, double* %double_member, i8** %s, i64* %string_len, i64* %longlong_member, i64* %ulonglong_member)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %22 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %23 = bitcast %struct.test_structmembers* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  %30 = load i8*, i8** %s, align 8
  %cmp21 = icmp ne i8* %30, null
  br i1 %cmp21, label %if.then.22, label %if.else.39

if.then.22:                                       ; preds = %if.end.20
  %31 = load i64, i64* %string_len, align 8
  %cmp23 = icmp sgt i64 %31, 5
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.then.22
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %32 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %33 = bitcast %struct.test_structmembers* %32 to %struct._object*
  store %struct._object* %33, %struct._object** %_py_decref_tmp26, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %35, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %38(%struct._object* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.385, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.then.22
  %41 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers37 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %41, i32 0, i32 1
  %inplace_member = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers37, i32 0, i32 12
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %inplace_member, i32 0, i32 0
  %42 = load i8*, i8** %s, align 8
  %call38 = call i8* @strcpy(i8* %arraydecay, i8* %42) #2
  br label %if.end.44

if.else.39:                                       ; preds = %if.end.20
  %43 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %structmembers40 = getelementptr inbounds %struct.test_structmembers, %struct.test_structmembers* %43, i32 0, i32 1
  %inplace_member41 = getelementptr inbounds %struct.all_structmembers, %struct.all_structmembers* %structmembers40, i32 0, i32 12
  %arraydecay42 = getelementptr inbounds [6 x i8], [6 x i8]* %inplace_member41, i32 0, i32 0
  %call43 = call i8* @strcpy(i8* %arraydecay42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.334, i32 0, i32 0)) #2
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39, %if.end.36
  %44 = load %struct.test_structmembers*, %struct.test_structmembers** %ob, align 8
  %45 = bitcast %struct.test_structmembers* %44 to %struct._object*
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %do.end.35, %do.end, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
