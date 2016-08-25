; ModuleID = './_warnings.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@PyExc_RuntimeWarning = external global %struct._object*, align 8
@warningsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @warnings__doc__, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @warnings_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@_filters = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@_once_registry = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"_onceregistry\00", align 1
@_default_action = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"_defaultaction\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"__warningregistry__\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1
@_Py_ctype_tolower = external constant [256 x i8], align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@PyId_argv = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"'registry' must be a dict\00", align 1
@PyExc_Warning = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.17 = private unnamed_addr constant [50 x i8] c"Unrecognized action (%R) in warnings.filters:\0A %R\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"showwarning\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"warnings.showwarning() must be set to a callable\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"_warnings.filters must be a list\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"_warnings.filters item %zd isn't a 5-tuple\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"_warnings.defaultaction not found\00", align 1
@check_matched.PyId_match = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), %struct._object* null }, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"defaultaction\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"onceregistry\00", align 1
@get_warnings_attr.warnings_str = internal global %struct._object* null, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@show_warning.PyId___name__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* null }, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c":%d: \00", align 1
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct._object* null }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [17 x i8] c"lost sys.stderr\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"_warnings\00", align 1
@warnings__doc__ = internal global [108 x i8] c"_warnings provides basic warning filtering support.\0AIt is a helper module to speed up interpreter start-up.\00", align 16
@warnings_functions = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @warnings_warn to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @warn_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @warnings_warn_explicit to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @warn_explicit_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@warn_doc = internal global [59 x i8] c"Issue a warning, or maybe ignore it or raise an exception.\00", align 16
@.str.35 = private unnamed_addr constant [14 x i8] c"warn_explicit\00", align 1
@warn_explicit_doc = internal global [47 x i8] c"Low-level inferface to warnings functionality.\00", align 16
@warnings_warn.kw_list = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* null], align 16
@.str.36 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"stacklevel\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"O|On:warn\00", align 1
@PyExc_UserWarning = external global %struct._object*, align 8
@.str.40 = private unnamed_addr constant [38 x i8] c"category is not a subclass of Warning\00", align 1
@warnings_warn_explicit.kwd_list = internal global [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16
@.str.41 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"registry\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"module_globals\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"OOUi|OOO:warn_explicit\00", align 1
@warnings_warn_explicit.PyId_get_source = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %struct._object* null }, align 8
@.str.46 = private unnamed_addr constant [11 x i8] c"get_source\00", align 1
@warnings_warn_explicit.PyId_splitlines = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %struct._object* null }, align 8
@.str.47 = private unnamed_addr constant [11 x i8] c"splitlines\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@PyExc_PendingDeprecationWarning = external global %struct._object*, align 8
@PyExc_ImportWarning = external global %struct._object*, align 8
@Py_BytesWarningFlag = external global i32, align 4
@PyExc_BytesWarning = external global %struct._object*, align 8
@PyExc_ResourceWarning = external global %struct._object*, align 8
@create_filter.ignore_str = internal global %struct._object* null, align 8
@create_filter.error_str = internal global %struct._object* null, align 8
@create_filter.default_str = internal global %struct._object* null, align 8
@create_filter.always_str = internal global %struct._object* null, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"unknown action\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnFormat(%struct._object* %category, i64 %stack_level, i8* %format, ...) #0 {
entry:
  %category.addr = alloca %struct._object*, align 8
  %stack_level.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %message = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i64 %stack_level, i64* %stack_level.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call, %struct._object** %message, align 8
  %1 = load %struct._object*, %struct._object** %message, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %category.addr, align 8
  %3 = load %struct._object*, %struct._object** %message, align 8
  %4 = load i64, i64* %stack_level.addr, align 8
  %call3 = call i32 @warn_unicode(%struct._object* %2, %struct._object* %3, i64 %4)
  store i32 %call3, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.else.6:                                        ; preds = %entry
  store i32 -1, i32* %ret, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %do.end
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define internal i32 @warn_unicode(%struct._object* %category, %struct._object* %message, i64 %stack_level) #0 {
entry:
  %retval = alloca i32, align 4
  %category.addr = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object*, align 8
  %stack_level.addr = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store %struct._object* %message, %struct._object** %message.addr, align 8
  store i64 %stack_level, i64* %stack_level.addr, align 8
  %0 = load %struct._object*, %struct._object** %category.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  store %struct._object* %1, %struct._object** %category.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %message.addr, align 8
  %3 = load %struct._object*, %struct._object** %category.addr, align 8
  %4 = load i64, i64* %stack_level.addr, align 8
  %call = call %struct._object* @do_warn(%struct._object* %2, %struct._object* %3, i64 %4)
  store %struct._object* %call, %struct._object** %res, align 8
  %5 = load %struct._object*, %struct._object** %res, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnEx(%struct._object* %category, i8* %text, i64 %stack_level) #0 {
entry:
  %retval = alloca i32, align 4
  %category.addr = alloca %struct._object*, align 8
  %text.addr = alloca i8*, align 8
  %stack_level.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %message = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %stack_level, i64* %stack_level.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %message, align 8
  %1 = load %struct._object*, %struct._object** %message, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %category.addr, align 8
  %3 = load %struct._object*, %struct._object** %message, align 8
  %4 = load i64, i64* %stack_level.addr, align 8
  %call1 = call i32 @warn_unicode(%struct._object* %2, %struct._object* %3, i64 %4)
  store i32 %call1, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %message, align 8
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
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyErr_Warn(%struct._object* %category, i8* %text) #0 {
entry:
  %category.addr = alloca %struct._object*, align 8
  %text.addr = alloca i8*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %category.addr, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* %1, i64 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicitObject(%struct._object* %category, %struct._object* %message, %struct._object* %filename, i32 %lineno, %struct._object* %module, %struct._object* %registry) #0 {
entry:
  %retval = alloca i32, align 4
  %category.addr = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %registry.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store %struct._object* %message, %struct._object** %message.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  %0 = load %struct._object*, %struct._object** %category.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  store %struct._object* %1, %struct._object** %category.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %category.addr, align 8
  %3 = load %struct._object*, %struct._object** %message.addr, align 8
  %4 = load %struct._object*, %struct._object** %filename.addr, align 8
  %5 = load i32, i32* %lineno.addr, align 4
  %6 = load %struct._object*, %struct._object** %module.addr, align 8
  %7 = load %struct._object*, %struct._object** %registry.addr, align 8
  %call = call %struct._object* @warn_explicit(%struct._object* %2, %struct._object* %3, %struct._object* %4, i32 %5, %struct._object* %6, %struct._object* %7, %struct._object* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %8 = load %struct._object*, %struct._object** %res, align 8
  %cmp1 = icmp eq %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %res, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @warn_explicit(%struct._object* %category, %struct._object* %message, %struct._object* %filename, i32 %lineno, %struct._object* %module, %struct._object* %registry, %struct._object* %sourceline) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %registry.addr = alloca %struct._object*, align 8
  %sourceline.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %text = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %lineno_obj = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %action = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %show_fxn = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp160 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_xdecref_tmp199 = alloca %struct._object*, align 8
  %_py_decref_tmp204 = alloca %struct._object*, align 8
  %_py_xdecref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp223 = alloca %struct._object*, align 8
  %_py_xdecref_tmp237 = alloca %struct._object*, align 8
  %_py_decref_tmp242 = alloca %struct._object*, align 8
  %_py_decref_tmp256 = alloca %struct._object*, align 8
  %_py_xdecref_tmp268 = alloca %struct._object*, align 8
  %_py_decref_tmp273 = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store %struct._object* %message, %struct._object** %message.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  store %struct._object* %sourceline, %struct._object** %sourceline.addr, align 8
  store %struct._object* null, %struct._object** %key, align 8
  store %struct._object* null, %struct._object** %text, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %lineno_obj, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %item, align 8
  %0 = load %struct._object*, %struct._object** %module.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %registry.addr, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %registry.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.5, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp3 = icmp ne %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true.2
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  %8 = load %struct._object*, %struct._object** %module.addr, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call %struct._object* @normalize_module(%struct._object* %9)
  store %struct._object* %call, %struct._object** %module.addr, align 8
  %10 = load %struct._object*, %struct._object** %module.addr, align 8
  %cmp8 = icmp eq %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.7
  br label %if.end.12

if.else:                                          ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %module.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc11 = add i64 %12, 1
  store i64 %inc11, i64* %ob_refcnt, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.10
  %13 = load %struct._object*, %struct._object** %message.addr, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt13, align 8
  %inc14 = add i64 %14, 1
  store i64 %inc14, i64* %ob_refcnt13, align 8
  %15 = load %struct._object*, %struct._object** %message.addr, align 8
  %16 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call15 = call i32 @PyObject_IsInstance(%struct._object* %15, %struct._object* %16)
  store i32 %call15, i32* %rc, align 4
  %17 = load i32, i32* %rc, align 4
  %cmp16 = icmp eq i32 %17, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %18 = load i32, i32* %rc, align 4
  %cmp19 = icmp eq i32 %18, 1
  br i1 %cmp19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.end.18
  %19 = load %struct._object*, %struct._object** %message.addr, align 8
  %call21 = call %struct._object* @PyObject_Str(%struct._object* %19)
  store %struct._object* %call21, %struct._object** %text, align 8
  %20 = load %struct._object*, %struct._object** %text, align 8
  %cmp22 = icmp eq %struct._object* %20, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  br label %cleanup

if.end.24:                                        ; preds = %if.then.20
  %21 = load %struct._object*, %struct._object** %message.addr, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %23 = bitcast %struct._typeobject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %category.addr, align 8
  br label %if.end.31

if.else.26:                                       ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** %message.addr, align 8
  store %struct._object* %24, %struct._object** %text, align 8
  %25 = load %struct._object*, %struct._object** %category.addr, align 8
  %26 = load %struct._object*, %struct._object** %message.addr, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct._object* %26)
  store %struct._object* %call27, %struct._object** %message.addr, align 8
  %27 = load %struct._object*, %struct._object** %message.addr, align 8
  %cmp28 = icmp eq %struct._object* %27, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  br label %cleanup

if.end.30:                                        ; preds = %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.24
  %28 = load i32, i32* %lineno.addr, align 4
  %conv = sext i32 %28 to i64
  %call32 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call32, %struct._object** %lineno_obj, align 8
  %29 = load %struct._object*, %struct._object** %lineno_obj, align 8
  %cmp33 = icmp eq %struct._object* %29, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  %30 = load %struct._object*, %struct._object** %text, align 8
  %31 = load %struct._object*, %struct._object** %category.addr, align 8
  %32 = load %struct._object*, %struct._object** %lineno_obj, align 8
  %call37 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %30, %struct._object* %31, %struct._object* %32)
  store %struct._object* %call37, %struct._object** %key, align 8
  %33 = load %struct._object*, %struct._object** %key, align 8
  %cmp38 = icmp eq %struct._object* %33, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  br label %cleanup

if.end.41:                                        ; preds = %if.end.36
  %34 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp42 = icmp ne %struct._object* %34, null
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.58

land.lhs.true.44:                                 ; preds = %if.end.41
  %35 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp45 = icmp ne %struct._object* %35, @_Py_NoneStruct
  br i1 %cmp45, label %if.then.47, label %if.end.58

if.then.47:                                       ; preds = %land.lhs.true.44
  %36 = load %struct._object*, %struct._object** %registry.addr, align 8
  %37 = load %struct._object*, %struct._object** %key, align 8
  %call48 = call i32 @already_warned(%struct._object* %36, %struct._object* %37, i32 0)
  store i32 %call48, i32* %rc, align 4
  %38 = load i32, i32* %rc, align 4
  %cmp49 = icmp eq i32 %38, -1
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.then.47
  br label %cleanup

if.else.52:                                       ; preds = %if.then.47
  %39 = load i32, i32* %rc, align 4
  %cmp53 = icmp eq i32 %39, 1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.52
  br label %return_none

if.end.56:                                        ; preds = %if.else.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.44, %if.end.41
  %40 = load %struct._object*, %struct._object** %category.addr, align 8
  %41 = load %struct._object*, %struct._object** %text, align 8
  %42 = load i32, i32* %lineno.addr, align 4
  %conv59 = sext i32 %42 to i64
  %43 = load %struct._object*, %struct._object** %module.addr, align 8
  %call60 = call %struct._object* @get_filter(%struct._object* %40, %struct._object* %41, i64 %conv59, %struct._object* %43, %struct._object** %item)
  store %struct._object* %call60, %struct._object** %action, align 8
  %44 = load %struct._object*, %struct._object** %action, align 8
  %cmp61 = icmp eq %struct._object* %44, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  br label %cleanup

if.end.64:                                        ; preds = %if.end.58
  %45 = load %struct._object*, %struct._object** %action, align 8
  %call65 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  %46 = load %struct._object*, %struct._object** %category.addr, align 8
  %47 = load %struct._object*, %struct._object** %message.addr, align 8
  call void @PyErr_SetObject(%struct._object* %46, %struct._object* %47)
  br label %cleanup

if.end.69:                                        ; preds = %if.end.64
  store i32 0, i32* %rc, align 4
  %48 = load %struct._object*, %struct._object** %action, align 8
  %call70 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.130

if.then.73:                                       ; preds = %if.end.69
  %49 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp74 = icmp ne %struct._object* %49, null
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.84

land.lhs.true.76:                                 ; preds = %if.then.73
  %50 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp77 = icmp ne %struct._object* %50, @_Py_NoneStruct
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.84

land.lhs.true.79:                                 ; preds = %land.lhs.true.76
  %51 = load %struct._object*, %struct._object** %registry.addr, align 8
  %52 = load %struct._object*, %struct._object** %key, align 8
  %call80 = call i32 @PyDict_SetItem(%struct._object* %51, %struct._object* %52, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.79
  br label %cleanup

if.else.84:                                       ; preds = %land.lhs.true.79, %land.lhs.true.76, %if.then.73
  %53 = load %struct._object*, %struct._object** %action, align 8
  %call85 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.else.84
  br label %return_none

if.else.89:                                       ; preds = %if.else.84
  %54 = load %struct._object*, %struct._object** %action, align 8
  %call90 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.106

if.then.93:                                       ; preds = %if.else.89
  %55 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp94 = icmp eq %struct._object* %55, null
  br i1 %cmp94, label %if.then.98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.93
  %56 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp96 = icmp eq %struct._object* %56, @_Py_NoneStruct
  br i1 %cmp96, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %lor.lhs.false, %if.then.93
  %call99 = call %struct._object* @get_once_registry()
  store %struct._object* %call99, %struct._object** %registry.addr, align 8
  %57 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp100 = icmp eq %struct._object* %57, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.98
  br label %cleanup

if.end.103:                                       ; preds = %if.then.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %lor.lhs.false
  %58 = load %struct._object*, %struct._object** %registry.addr, align 8
  %59 = load %struct._object*, %struct._object** %text, align 8
  %60 = load %struct._object*, %struct._object** %category.addr, align 8
  %call105 = call i32 @update_registry(%struct._object* %58, %struct._object* %59, %struct._object* %60, i32 0)
  store i32 %call105, i32* %rc, align 4
  br label %if.end.127

if.else.106:                                      ; preds = %if.else.89
  %61 = load %struct._object*, %struct._object** %action, align 8
  %call107 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0))
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.else.106
  %62 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp111 = icmp ne %struct._object* %62, null
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.118

land.lhs.true.113:                                ; preds = %if.then.110
  %63 = load %struct._object*, %struct._object** %registry.addr, align 8
  %cmp114 = icmp ne %struct._object* %63, @_Py_NoneStruct
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %land.lhs.true.113
  %64 = load %struct._object*, %struct._object** %registry.addr, align 8
  %65 = load %struct._object*, %struct._object** %text, align 8
  %66 = load %struct._object*, %struct._object** %category.addr, align 8
  %call117 = call i32 @update_registry(%struct._object* %64, %struct._object* %65, %struct._object* %66, i32 0)
  store i32 %call117, i32* %rc, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %land.lhs.true.113, %if.then.110
  br label %if.end.126

if.else.119:                                      ; preds = %if.else.106
  %67 = load %struct._object*, %struct._object** %action, align 8
  %call120 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %cmp121 = icmp ne i32 %call120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.else.119
  %68 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %69 = load %struct._object*, %struct._object** %action, align 8
  %70 = load %struct._object*, %struct._object** %item, align 8
  %call124 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0), %struct._object* %69, %struct._object* %70)
  br label %cleanup

if.end.125:                                       ; preds = %if.else.119
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.118
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.104
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.69
  %71 = load i32, i32* %rc, align 4
  %cmp131 = icmp eq i32 %71, 1
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  br label %return_none

if.end.134:                                       ; preds = %if.end.130
  %72 = load i32, i32* %rc, align 4
  %cmp135 = icmp eq i32 %72, 0
  br i1 %cmp135, label %if.then.137, label %if.else.194

if.then.137:                                      ; preds = %if.end.134
  %call138 = call %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* %call138, %struct._object** %show_fxn, align 8
  %73 = load %struct._object*, %struct._object** %show_fxn, align 8
  %cmp139 = icmp eq %struct._object* %73, null
  br i1 %cmp139, label %if.then.141, label %if.else.146

if.then.141:                                      ; preds = %if.then.137
  %call142 = call %struct._object* @PyErr_Occurred()
  %tobool143 = icmp ne %struct._object* %call142, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.then.141
  br label %cleanup

if.end.145:                                       ; preds = %if.then.141
  %74 = load %struct._object*, %struct._object** %filename.addr, align 8
  %75 = load i32, i32* %lineno.addr, align 4
  %76 = load %struct._object*, %struct._object** %text, align 8
  %77 = load %struct._object*, %struct._object** %category.addr, align 8
  %78 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  call void @show_warning(%struct._object* %74, i32 %75, %struct._object* %76, %struct._object* %77, %struct._object* %78)
  br label %if.end.193

if.else.146:                                      ; preds = %if.then.137
  %79 = load %struct._object*, %struct._object** %show_fxn, align 8
  %call147 = call i32 @PyCallable_Check(%struct._object* %79)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.157, label %if.then.149

if.then.149:                                      ; preds = %if.else.146
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.149
  %81 = load %struct._object*, %struct._object** %show_fxn, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt150, align 8
  %dec = add i64 %83, -1
  store i64 %dec, i64* %ob_refcnt150, align 8
  %cmp151 = icmp ne i64 %dec, 0
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body
  br label %if.end.156

if.else.154:                                      ; preds = %do.body
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %86(%struct._object* %87)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end

do.end:                                           ; preds = %if.end.156
  br label %cleanup

if.end.157:                                       ; preds = %if.else.146
  %88 = load %struct._object*, %struct._object** %show_fxn, align 8
  %89 = load %struct._object*, %struct._object** %message.addr, align 8
  %90 = load %struct._object*, %struct._object** %category.addr, align 8
  %91 = load %struct._object*, %struct._object** %filename.addr, align 8
  %92 = load %struct._object*, %struct._object** %lineno_obj, align 8
  %call158 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %88, %struct._object* %89, %struct._object* %90, %struct._object* %91, %struct._object* %92, i8* null)
  store %struct._object* %call158, %struct._object** %res, align 8
  br label %do.body.159

do.body.159:                                      ; preds = %if.end.157
  %93 = load %struct._object*, %struct._object** %show_fxn, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp160, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt161, align 8
  %dec162 = add i64 %95, -1
  store i64 %dec162, i64* %ob_refcnt161, align 8
  %cmp163 = icmp ne i64 %dec162, 0
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.159
  br label %if.end.169

if.else.166:                                      ; preds = %do.body.159
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  call void %98(%struct._object* %99)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %do.body.171

do.body.171:                                      ; preds = %do.end.170
  %100 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp172 = icmp ne %struct._object* %101, null
  br i1 %cmp172, label %if.then.174, label %if.end.187

if.then.174:                                      ; preds = %do.body.171
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp176, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %104, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %107(%struct._object* %108)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.body.171
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  %109 = load %struct._object*, %struct._object** %res, align 8
  %cmp189 = icmp eq %struct._object* %109, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %do.end.188
  br label %cleanup

if.end.192:                                       ; preds = %do.end.188
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.145
  br label %if.end.195

if.else.194:                                      ; preds = %if.end.134
  br label %cleanup

if.end.195:                                       ; preds = %if.end.193
  br label %return_none

return_none:                                      ; preds = %if.end.195, %if.then.133, %if.then.88, %if.then.55
  store %struct._object* @_Py_NoneStruct, %struct._object** %result, align 8
  %110 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt196, align 8
  %inc197 = add i64 %111, 1
  store i64 %inc197, i64* %ob_refcnt196, align 8
  br label %cleanup

cleanup:                                          ; preds = %return_none, %if.else.194, %if.then.191, %do.end, %if.then.144, %if.then.123, %if.then.102, %if.then.83, %if.then.68, %if.then.63, %if.then.51, %if.then.40, %if.then.35, %if.then.29, %if.then.23, %if.then.17
  br label %do.body.198

do.body.198:                                      ; preds = %cleanup
  %112 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %112, %struct._object** %_py_xdecref_tmp199, align 8
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp199, align 8
  %cmp200 = icmp ne %struct._object* %113, null
  br i1 %cmp200, label %if.then.202, label %if.end.215

if.then.202:                                      ; preds = %do.body.198
  br label %do.body.203

do.body.203:                                      ; preds = %if.then.202
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp199, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp204, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_refcnt205 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt205, align 8
  %dec206 = add i64 %116, -1
  store i64 %dec206, i64* %ob_refcnt205, align 8
  %cmp207 = icmp ne i64 %dec206, 0
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %do.body.203
  br label %if.end.213

if.else.210:                                      ; preds = %do.body.203
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_type211 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type211, align 8
  %tp_dealloc212 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc212, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  call void %119(%struct._object* %120)
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.210, %if.then.209
  br label %do.end.214

do.end.214:                                       ; preds = %if.end.213
  br label %if.end.215

if.end.215:                                       ; preds = %do.end.214, %do.body.198
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  br label %do.body.217

do.body.217:                                      ; preds = %do.end.216
  %121 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %121, %struct._object** %_py_xdecref_tmp218, align 8
  %122 = load %struct._object*, %struct._object** %_py_xdecref_tmp218, align 8
  %cmp219 = icmp ne %struct._object* %122, null
  br i1 %cmp219, label %if.then.221, label %if.end.234

if.then.221:                                      ; preds = %do.body.217
  br label %do.body.222

do.body.222:                                      ; preds = %if.then.221
  %123 = load %struct._object*, %struct._object** %_py_xdecref_tmp218, align 8
  store %struct._object* %123, %struct._object** %_py_decref_tmp223, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_refcnt224 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt224, align 8
  %dec225 = add i64 %125, -1
  store i64 %dec225, i64* %ob_refcnt224, align 8
  %cmp226 = icmp ne i64 %dec225, 0
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %do.body.222
  br label %if.end.232

if.else.229:                                      ; preds = %do.body.222
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  %ob_type230 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type230, align 8
  %tp_dealloc231 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc231, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8
  call void %128(%struct._object* %129)
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.229, %if.then.228
  br label %do.end.233

do.end.233:                                       ; preds = %if.end.232
  br label %if.end.234

if.end.234:                                       ; preds = %do.end.233, %do.body.217
  br label %do.end.235

do.end.235:                                       ; preds = %if.end.234
  br label %do.body.236

do.body.236:                                      ; preds = %do.end.235
  %130 = load %struct._object*, %struct._object** %lineno_obj, align 8
  store %struct._object* %130, %struct._object** %_py_xdecref_tmp237, align 8
  %131 = load %struct._object*, %struct._object** %_py_xdecref_tmp237, align 8
  %cmp238 = icmp ne %struct._object* %131, null
  br i1 %cmp238, label %if.then.240, label %if.end.253

if.then.240:                                      ; preds = %do.body.236
  br label %do.body.241

do.body.241:                                      ; preds = %if.then.240
  %132 = load %struct._object*, %struct._object** %_py_xdecref_tmp237, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp242, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_refcnt243 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt243, align 8
  %dec244 = add i64 %134, -1
  store i64 %dec244, i64* %ob_refcnt243, align 8
  %cmp245 = icmp ne i64 %dec244, 0
  br i1 %cmp245, label %if.then.247, label %if.else.248

if.then.247:                                      ; preds = %do.body.241
  br label %if.end.251

if.else.248:                                      ; preds = %do.body.241
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_type249 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type249, align 8
  %tp_dealloc250 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc250, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  call void %137(%struct._object* %138)
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.248, %if.then.247
  br label %do.end.252

do.end.252:                                       ; preds = %if.end.251
  br label %if.end.253

if.end.253:                                       ; preds = %do.end.252, %do.body.236
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.253
  br label %do.body.255

do.body.255:                                      ; preds = %do.end.254
  %139 = load %struct._object*, %struct._object** %module.addr, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp256, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_refcnt257 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt257, align 8
  %dec258 = add i64 %141, -1
  store i64 %dec258, i64* %ob_refcnt257, align 8
  %cmp259 = icmp ne i64 %dec258, 0
  br i1 %cmp259, label %if.then.261, label %if.else.262

if.then.261:                                      ; preds = %do.body.255
  br label %if.end.265

if.else.262:                                      ; preds = %do.body.255
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_type263 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type263, align 8
  %tp_dealloc264 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc264, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  call void %144(%struct._object* %145)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.262, %if.then.261
  br label %do.end.266

do.end.266:                                       ; preds = %if.end.265
  br label %do.body.267

do.body.267:                                      ; preds = %do.end.266
  %146 = load %struct._object*, %struct._object** %message.addr, align 8
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp268, align 8
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp268, align 8
  %cmp269 = icmp ne %struct._object* %147, null
  br i1 %cmp269, label %if.then.271, label %if.end.284

if.then.271:                                      ; preds = %do.body.267
  br label %do.body.272

do.body.272:                                      ; preds = %if.then.271
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp268, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp273, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_refcnt274 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt274, align 8
  %dec275 = add i64 %150, -1
  store i64 %dec275, i64* %ob_refcnt274, align 8
  %cmp276 = icmp ne i64 %dec275, 0
  br i1 %cmp276, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %do.body.272
  br label %if.end.282

if.else.279:                                      ; preds = %do.body.272
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_type280 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type280, align 8
  %tp_dealloc281 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc281, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  call void %153(%struct._object* %154)
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.279, %if.then.278
  br label %do.end.283

do.end.283:                                       ; preds = %if.end.282
  br label %if.end.284

if.end.284:                                       ; preds = %do.end.283, %do.body.267
  br label %do.end.285

do.end.285:                                       ; preds = %if.end.284
  %155 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %155, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.285, %if.then.9, %if.then.4, %if.then
  %156 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %156
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicit(%struct._object* %category, i8* %text, i8* %filename_str, i32 %lineno, i8* %module_str, %struct._object* %registry) #0 {
entry:
  %category.addr = alloca %struct._object*, align 8
  %text.addr = alloca i8*, align 8
  %filename_str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %module_str.addr = alloca i8*, align 8
  %registry.addr = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_xdecref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i8* %module_str, i8** %module_str.addr, align 8
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %message, align 8
  %1 = load i8*, i8** %filename_str.addr, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  store %struct._object* %call1, %struct._object** %filename, align 8
  store %struct._object* null, %struct._object** %module, align 8
  store i32 -1, i32* %ret, align 4
  %2 = load %struct._object*, %struct._object** %message, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %module_str.addr, align 8
  %cmp3 = icmp ne i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %module_str.addr, align 8
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %5)
  store %struct._object* %call5, %struct._object** %module, align 8
  %6 = load %struct._object*, %struct._object** %module, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  br label %exit

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %7 = load %struct._object*, %struct._object** %category.addr, align 8
  %8 = load %struct._object*, %struct._object** %message, align 8
  %9 = load %struct._object*, %struct._object** %filename, align 8
  %10 = load i32, i32* %lineno.addr, align 4
  %11 = load %struct._object*, %struct._object** %module, align 8
  %12 = load %struct._object*, %struct._object** %registry.addr, align 8
  %call10 = call i32 @PyErr_WarnExplicitObject(%struct._object* %7, %struct._object* %8, %struct._object* %9, i32 %10, %struct._object* %11, %struct._object* %12)
  store i32 %call10, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end.9, %if.then.7, %if.then
  br label %do.body

do.body:                                          ; preds = %exit
  %13 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.16

if.else:                                          ; preds = %do.body.13
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %22 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp20, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp20, align 8
  %cmp21 = icmp ne %struct._object* %23, null
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %do.body.19
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp20, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp24, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %26, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %29(%struct._object* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %do.body.19
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %31 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp37, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8
  %cmp38 = icmp ne %struct._object* %32, null
  br i1 %cmp38, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp37, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp41, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %35, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %38(%struct._object* %39)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %40 = load i32, i32* %ret, align 4
  ret i32 %40
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicitFormat(%struct._object* %category, i8* %filename_str, i32 %lineno, i8* %module_str, %struct._object* %registry, i8* %format, ...) #0 {
entry:
  %category.addr = alloca %struct._object*, align 8
  %filename_str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %module_str.addr = alloca i8*, align 8
  %registry.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %message = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i8* %module_str, i8** %module_str.addr, align 8
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._object* null, %struct._object** %module, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  store i32 -1, i32* %ret, align 4
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %module_str.addr, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %module_str.addr, align 8
  %call3 = call %struct._object* @PyUnicode_FromString(i8* %3)
  store %struct._object* %call3, %struct._object** %module, align 8
  %4 = load %struct._object*, %struct._object** %module, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  br label %exit

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay8 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay8)
  %5 = load i8*, i8** %format.addr, align 8
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call10 = call %struct._object* @PyUnicode_FromFormatV(i8* %5, %struct.__va_list_tag* %arraydecay9)
  store %struct._object* %call10, %struct._object** %message, align 8
  %6 = load %struct._object*, %struct._object** %message, align 8
  %cmp11 = icmp ne %struct._object* %6, null
  br i1 %cmp11, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** %category.addr, align 8
  %8 = load %struct._object*, %struct._object** %message, align 8
  %9 = load %struct._object*, %struct._object** %filename, align 8
  %10 = load i32, i32* %lineno.addr, align 4
  %11 = load %struct._object*, %struct._object** %module, align 8
  %12 = load %struct._object*, %struct._object** %registry.addr, align 8
  %call13 = call %struct._object* @warn_explicit(%struct._object* %7, %struct._object* %8, %struct._object* %9, i32 %10, %struct._object* %11, %struct._object* %12, %struct._object* null)
  store %struct._object* %call13, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %13 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** %res, align 8
  %cmp17 = icmp ne %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %do.end
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %23, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %26(%struct._object* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  store i32 0, i32* %ret, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.7
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay3233 = bitcast %struct.__va_list_tag* %arraydecay32 to i8*
  call void @llvm.va_end(i8* %arraydecay3233)
  br label %exit

exit:                                             ; preds = %if.end.31, %if.then.5, %if.then
  br label %do.body.34

do.body.34:                                       ; preds = %exit
  %28 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %29, null
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %do.body.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp38, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %32, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %35(%struct._object* %36)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.34
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %37 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp51, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  %cmp52 = icmp ne %struct._object* %38, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp55, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %41, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %44(%struct._object* %45)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.50
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %46 = load i32, i32* %ret, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyWarnings_Init() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @warningsmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @_filters, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @init_filters()
  store %struct._object* %call3, %struct._object** @_filters, align 8
  %2 = load %struct._object*, %struct._object** @_filters, align 8
  %cmp4 = icmp eq %struct._object* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load %struct._object*, %struct._object** @_filters, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %m, align 8
  %6 = load %struct._object*, %struct._object** @_filters, align 8
  %call8 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* %6)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @_once_registry, align 8
  %cmp12 = icmp eq %struct._object* %7, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._object* @PyDict_New()
  store %struct._object* %call14, %struct._object** @_once_registry, align 8
  %8 = load %struct._object*, %struct._object** @_once_registry, align 8
  %cmp15 = icmp eq %struct._object* %8, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %9 = load %struct._object*, %struct._object** @_once_registry, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %10, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  %11 = load %struct._object*, %struct._object** %m, align 8
  %12 = load %struct._object*, %struct._object** @_once_registry, align 8
  %call21 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* %12)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %13 = load %struct._object*, %struct._object** @_default_action, align 8
  %cmp25 = icmp eq %struct._object* %13, null
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.24
  %call27 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call27, %struct._object** @_default_action, align 8
  %14 = load %struct._object*, %struct._object** @_default_action, align 8
  %cmp28 = icmp eq %struct._object* %14, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.24
  %15 = load %struct._object*, %struct._object** @_default_action, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %16, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  %17 = load %struct._object*, %struct._object** %m, align 8
  %18 = load %struct._object*, %struct._object** @_default_action, align 8
  %call34 = call i32 @PyModule_AddObject(%struct._object* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct._object* %18)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.31
  %19 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.36, %if.then.29, %if.then.23, %if.then.16, %if.then.10, %if.then.5, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @init_filters() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filters = alloca %struct._object*, align 8
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %bytes_action = alloca i8*, align 8
  %resource_action = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyList_New(i64 5)
  store %struct._object* %call, %struct._object** %filters, align 8
  store i32 0, i32* %pos, align 4
  %0 = load %struct._object*, %struct._object** %filters, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call1 = call %struct._object* @create_filter(%struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %2 = load i32, i32* %pos, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._object*, %struct._object** %filters, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %4, i32 0, i32 1
  %5 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %5, i64 %idxprom
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %6 = load %struct._object*, %struct._object** @PyExc_PendingDeprecationWarning, align 8
  %call2 = call %struct._object* @create_filter(%struct._object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %7 = load i32, i32* %pos, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, i32* %pos, align 4
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %filters, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyListObject*
  %ob_item5 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %ob_item5, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %10, i64 %idxprom4
  store %struct._object* %call2, %struct._object** %arrayidx6, align 8
  %11 = load %struct._object*, %struct._object** @PyExc_ImportWarning, align 8
  %call7 = call %struct._object* @create_filter(%struct._object* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %12 = load i32, i32* %pos, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, i32* %pos, align 4
  %idxprom9 = zext i32 %12 to i64
  %13 = load %struct._object*, %struct._object** %filters, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item10 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item10, align 8
  %arrayidx11 = getelementptr %struct._object*, %struct._object** %15, i64 %idxprom9
  store %struct._object* %call7, %struct._object** %arrayidx11, align 8
  %16 = load i32, i32* @Py_BytesWarningFlag, align 4
  %cmp12 = icmp sgt i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8** %bytes_action, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* @Py_BytesWarningFlag, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %bytes_action, align 8
  br label %if.end.16

if.else.15:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8** %bytes_action, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.13
  %18 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %19 = load i8*, i8** %bytes_action, align 8
  %call18 = call %struct._object* @create_filter(%struct._object* %18, i8* %19)
  %20 = load i32, i32* %pos, align 4
  %inc19 = add i32 %20, 1
  store i32 %inc19, i32* %pos, align 4
  %idxprom20 = zext i32 %20 to i64
  %21 = load %struct._object*, %struct._object** %filters, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyListObject*
  %ob_item21 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item21, align 8
  %arrayidx22 = getelementptr %struct._object*, %struct._object** %23, i64 %idxprom20
  store %struct._object* %call18, %struct._object** %arrayidx22, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8** %resource_action, align 8
  %24 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %25 = load i8*, i8** %resource_action, align 8
  %call23 = call %struct._object* @create_filter(%struct._object* %24, i8* %25)
  %26 = load i32, i32* %pos, align 4
  %inc24 = add i32 %26, 1
  store i32 %inc24, i32* %pos, align 4
  %idxprom25 = zext i32 %26 to i64
  %27 = load %struct._object*, %struct._object** %filters, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyListObject*
  %ob_item26 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %28, i32 0, i32 1
  %29 = load %struct._object**, %struct._object*** %ob_item26, align 8
  %arrayidx27 = getelementptr %struct._object*, %struct._object** %29, i64 %idxprom25
  store %struct._object* %call23, %struct._object** %arrayidx27, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %pos, align 4
  %cmp28 = icmp ult i32 %30, %31
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %x, align 4
  %idxprom29 = zext i32 %32 to i64
  %33 = load %struct._object*, %struct._object** %filters, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyListObject*
  %ob_item30 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %34, i32 0, i32 1
  %35 = load %struct._object**, %struct._object*** %ob_item30, align 8
  %arrayidx31 = getelementptr %struct._object*, %struct._object** %35, i64 %idxprom29
  %36 = load %struct._object*, %struct._object** %arrayidx31, align 8
  %cmp32 = icmp eq %struct._object* %36, null
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %37 = load %struct._object*, %struct._object** %filters, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp34 = icmp ne i64 %dec, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body
  br label %if.end.37

if.else.36:                                       ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end

do.end:                                           ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %44 = load i32, i32* %x, align 4
  %add = add i32 %44, 1
  store i32 %add, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._object*, %struct._object** %filters, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

declare %struct._object* @PyDict_New() #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_warn(%struct._object* %message, %struct._object* %category, i64 %stack_level) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %stack_level.addr = alloca i64, align 8
  %filename = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %registry = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %message, %struct._object** %message.addr, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i64 %stack_level, i64* %stack_level.addr, align 8
  %0 = load i64, i64* %stack_level.addr, align 8
  %call = call i32 @setup_context(i64 %0, %struct._object** %filename, i32* %lineno, %struct._object** %module, %struct._object** %registry)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %category.addr, align 8
  %2 = load %struct._object*, %struct._object** %message.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i32, i32* %lineno, align 4
  %5 = load %struct._object*, %struct._object** %module, align 8
  %6 = load %struct._object*, %struct._object** %registry, align 8
  %call1 = call %struct._object* @warn_explicit(%struct._object* %1, %struct._object* %2, %struct._object* %3, i32 %4, %struct._object* %5, %struct._object* %6, %struct._object* null)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %registry, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp5, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt6, align 8
  %dec7 = add i64 %16, -1
  store i64 %dec7, i64* %ob_refcnt6, align 8
  %cmp8 = icmp ne i64 %dec7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13

if.else.10:                                       ; preds = %do.body.4
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  call void %19(%struct._object* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %21 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp16, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %23, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %26(%struct._object* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.25, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal i32 @setup_context(i64 %stack_level, %struct._object** %filename, i32* %lineno, %struct._object** %module, %struct._object** %registry) #0 {
entry:
  %retval = alloca i32, align 4
  %stack_level.addr = alloca i64, align 8
  %filename.addr = alloca %struct._object**, align 8
  %lineno.addr = alloca i32*, align 8
  %module.addr = alloca %struct._object**, align 8
  %registry.addr = alloca %struct._object**, align 8
  %globals = alloca %struct._object*, align 8
  %f = alloca %struct._frame*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %rc = alloca i32, align 4
  %len = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %argv = alloca %struct._object*, align 8
  %is_true = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp358 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp398 = alloca %struct._object*, align 8
  %_py_xdecref_tmp413 = alloca %struct._object*, align 8
  %_py_decref_tmp419 = alloca %struct._object*, align 8
  store i64 %stack_level, i64* %stack_level.addr, align 8
  store %struct._object** %filename, %struct._object*** %filename.addr, align 8
  store i32* %lineno, i32** %lineno.addr, align 8
  store %struct._object** %module, %struct._object*** %module.addr, align 8
  store %struct._object** %registry, %struct._object*** %registry.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 3
  %11 = load %struct._frame*, %struct._frame** %frame, align 8
  store %struct._frame* %11, %struct._frame** %f, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.3
  %12 = load i64, i64* %stack_level.addr, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %stack_level.addr, align 8
  %cmp = icmp sgt i64 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp4 = icmp ne %struct._frame* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 1
  %16 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %16, %struct._frame** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp5 = icmp eq %struct._frame* %17, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call = call %struct._ts* @PyThreadState_Get()
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call, i32 0, i32 2
  %18 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %18, i32 0, i32 4
  %19 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %19, %struct._object** %globals, align 8
  %20 = load i32*, i32** %lineno.addr, align 8
  store i32 1, i32* %20, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %21 = load %struct._frame*, %struct._frame** %f, align 8
  %f_globals = getelementptr inbounds %struct._frame, %struct._frame* %21, i32 0, i32 4
  %22 = load %struct._object*, %struct._object** %f_globals, align 8
  store %struct._object* %22, %struct._object** %globals, align 8
  %23 = load %struct._frame*, %struct._frame** %f, align 8
  %call6 = call i32 @PyFrame_GetLineNumber(%struct._frame* %23)
  %24 = load i32*, i32** %lineno.addr, align 8
  store i32 %call6, i32* %24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct._object**, %struct._object*** %module.addr, align 8
  store %struct._object* null, %struct._object** %25, align 8
  %26 = load %struct._object*, %struct._object** %globals, align 8
  %call7 = call %struct._object* @PyDict_GetItemString(%struct._object* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %27 = load %struct._object**, %struct._object*** %registry.addr, align 8
  store %struct._object* %call7, %struct._object** %27, align 8
  %28 = load %struct._object**, %struct._object*** %registry.addr, align 8
  %29 = load %struct._object*, %struct._object** %28, align 8
  %cmp8 = icmp eq %struct._object* %29, null
  br i1 %cmp8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.end
  %call11 = call %struct._object* @PyDict_New()
  %30 = load %struct._object**, %struct._object*** %registry.addr, align 8
  store %struct._object* %call11, %struct._object** %30, align 8
  %31 = load %struct._object**, %struct._object*** %registry.addr, align 8
  %32 = load %struct._object*, %struct._object** %31, align 8
  %cmp12 = icmp eq %struct._object* %32, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  %33 = load %struct._object*, %struct._object** %globals, align 8
  %34 = load %struct._object**, %struct._object*** %registry.addr, align 8
  %35 = load %struct._object*, %struct._object** %34, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct._object* %35)
  store i32 %call15, i32* %rc, align 4
  %36 = load i32, i32* %rc, align 4
  %cmp16 = icmp slt i32 %36, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %handle_error

if.end.18:                                        ; preds = %if.end.14
  br label %if.end.20

if.else.19:                                       ; preds = %if.end
  %37 = load %struct._object**, %struct._object*** %registry.addr, align 8
  %38 = load %struct._object*, %struct._object** %37, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.end.18
  %40 = load %struct._object*, %struct._object** %globals, align 8
  %call21 = call %struct._object* @PyDict_GetItemString(%struct._object* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  %41 = load %struct._object**, %struct._object*** %module.addr, align 8
  store %struct._object* %call21, %struct._object** %41, align 8
  %42 = load %struct._object**, %struct._object*** %module.addr, align 8
  %43 = load %struct._object*, %struct._object** %42, align 8
  %cmp22 = icmp eq %struct._object* %43, null
  br i1 %cmp22, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.end.20
  %call24 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %44 = load %struct._object**, %struct._object*** %module.addr, align 8
  store %struct._object* %call24, %struct._object** %44, align 8
  %45 = load %struct._object**, %struct._object*** %module.addr, align 8
  %46 = load %struct._object*, %struct._object** %45, align 8
  %cmp25 = icmp eq %struct._object* %46, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  br label %handle_error

if.end.27:                                        ; preds = %if.then.23
  br label %if.end.31

if.else.28:                                       ; preds = %if.end.20
  %47 = load %struct._object**, %struct._object*** %module.addr, align 8
  %48 = load %struct._object*, %struct._object** %47, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %49, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.end.27
  %50 = load %struct._object*, %struct._object** %globals, align 8
  %call32 = call %struct._object* @PyDict_GetItemString(%struct._object* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %51 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call32, %struct._object** %51, align 8
  %52 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %53 = load %struct._object*, %struct._object** %52, align 8
  %cmp33 = icmp ne %struct._object* %53, null
  br i1 %cmp33, label %land.lhs.true, label %if.else.313

land.lhs.true:                                    ; preds = %if.end.31
  %54 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %55 = load %struct._object*, %struct._object** %54, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 19
  %57 = load i64, i64* %tp_flags, align 8
  %and = and i64 %57, 268435456
  %cmp34 = icmp ne i64 %and, 0
  br i1 %cmp34, label %if.then.35, label %if.else.313

if.then.35:                                       ; preds = %land.lhs.true
  %58 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %59 = load %struct._object*, %struct._object** %58, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3
  %61 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %61, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %62 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %63 = load %struct._object*, %struct._object** %62, align 8
  %call39 = call i32 @_PyUnicode_Ready(%struct._object* %63)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call39, %cond.false ]
  %tobool40 = icmp ne i32 %cond, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %cond.end
  br label %handle_error

if.end.42:                                        ; preds = %cond.end
  %64 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %65 = load %struct._object*, %struct._object** %64, align 8
  %call43 = call i64 @PyUnicode_GetLength(%struct._object* %65)
  store i64 %call43, i64* %len, align 8
  %66 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %67 = load %struct._object*, %struct._object** %66, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %state44 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3
  %69 = bitcast %struct.anon* %state44 to i32*
  %bf.load45 = load i32, i32* %69, align 4
  %bf.lshr46 = lshr i32 %bf.load45, 2
  %bf.clear47 = and i32 %bf.lshr46, 7
  store i32 %bf.clear47, i32* %kind, align 4
  %70 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %71 = load %struct._object*, %struct._object** %70, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*
  %state48 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 3
  %73 = bitcast %struct.anon* %state48 to i32*
  %bf.load49 = load i32, i32* %73, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 5
  %bf.clear51 = and i32 %bf.lshr50, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.64

cond.true.53:                                     ; preds = %if.end.42
  %74 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %75 = load %struct._object*, %struct._object** %74, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyASCIIObject*
  %state54 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %76, i32 0, i32 3
  %77 = bitcast %struct.anon* %state54 to i32*
  %bf.load55 = load i32, i32* %77, align 4
  %bf.lshr56 = lshr i32 %bf.load55, 6
  %bf.clear57 = and i32 %bf.lshr56, 1
  %tobool58 = icmp ne i32 %bf.clear57, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.true.53
  %78 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %79 = load %struct._object*, %struct._object** %78, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %80, i64 1
  %81 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.62

cond.false.60:                                    ; preds = %cond.true.53
  %82 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %83 = load %struct._object*, %struct._object** %82, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyCompactUnicodeObject*
  %add.ptr61 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %84, i64 1
  %85 = bitcast %struct.PyCompactUnicodeObject* %add.ptr61 to i8*
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i8* [ %81, %cond.true.59 ], [ %85, %cond.false.60 ]
  br label %cond.end.66

cond.false.64:                                    ; preds = %if.end.42
  %86 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %87 = load %struct._object*, %struct._object** %86, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyUnicodeObject*
  %data65 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %88, i32 0, i32 1
  %any = bitcast %union.anon* %data65 to i8**
  %89 = load i8*, i8** %any, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.end.62
  %cond67 = phi i8* [ %cond63, %cond.end.62 ], [ %89, %cond.false.64 ]
  store i8* %cond67, i8** %data, align 8
  %90 = load i64, i64* %len, align 8
  %cmp68 = icmp sge i64 %90, 4
  br i1 %cmp68, label %land.lhs.true.69, label %if.else.309

land.lhs.true.69:                                 ; preds = %cond.end.66
  %91 = load i32, i32* %kind, align 4
  %cmp70 = icmp eq i32 %91, 1
  br i1 %cmp70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %land.lhs.true.69
  %92 = load i64, i64* %len, align 8
  %sub = sub i64 %92, 4
  %93 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %93, i64 %sub
  %94 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %94 to i32
  br label %cond.end.84

cond.false.72:                                    ; preds = %land.lhs.true.69
  %95 = load i32, i32* %kind, align 4
  %cmp73 = icmp eq i32 %95, 2
  br i1 %cmp73, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %cond.false.72
  %96 = load i64, i64* %len, align 8
  %sub76 = sub i64 %96, 4
  %97 = load i8*, i8** %data, align 8
  %98 = bitcast i8* %97 to i16*
  %arrayidx77 = getelementptr i16, i16* %98, i64 %sub76
  %99 = load i16, i16* %arrayidx77, align 2
  %conv78 = zext i16 %99 to i32
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.72
  %100 = load i64, i64* %len, align 8
  %sub80 = sub i64 %100, 4
  %101 = load i8*, i8** %data, align 8
  %102 = bitcast i8* %101 to i32*
  %arrayidx81 = getelementptr i32, i32* %102, i64 %sub80
  %103 = load i32, i32* %arrayidx81, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.75
  %cond83 = phi i32 [ %conv78, %cond.true.75 ], [ %103, %cond.false.79 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.71
  %cond85 = phi i32 [ %conv, %cond.true.71 ], [ %cond83, %cond.end.82 ]
  %cmp86 = icmp eq i32 %cond85, 46
  br i1 %cmp86, label %land.lhs.true.88, label %if.else.309

land.lhs.true.88:                                 ; preds = %cond.end.84
  %104 = load i32, i32* %kind, align 4
  %cmp89 = icmp eq i32 %104, 1
  br i1 %cmp89, label %cond.true.91, label %cond.false.95

cond.true.91:                                     ; preds = %land.lhs.true.88
  %105 = load i64, i64* %len, align 8
  %sub92 = sub i64 %105, 3
  %106 = load i8*, i8** %data, align 8
  %arrayidx93 = getelementptr i8, i8* %106, i64 %sub92
  %107 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %107 to i32
  br label %cond.end.107

cond.false.95:                                    ; preds = %land.lhs.true.88
  %108 = load i32, i32* %kind, align 4
  %cmp96 = icmp eq i32 %108, 2
  br i1 %cmp96, label %cond.true.98, label %cond.false.102

cond.true.98:                                     ; preds = %cond.false.95
  %109 = load i64, i64* %len, align 8
  %sub99 = sub i64 %109, 3
  %110 = load i8*, i8** %data, align 8
  %111 = bitcast i8* %110 to i16*
  %arrayidx100 = getelementptr i16, i16* %111, i64 %sub99
  %112 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %112 to i32
  br label %cond.end.105

cond.false.102:                                   ; preds = %cond.false.95
  %113 = load i64, i64* %len, align 8
  %sub103 = sub i64 %113, 3
  %114 = load i8*, i8** %data, align 8
  %115 = bitcast i8* %114 to i32*
  %arrayidx104 = getelementptr i32, i32* %115, i64 %sub103
  %116 = load i32, i32* %arrayidx104, align 4
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.102, %cond.true.98
  %cond106 = phi i32 [ %conv101, %cond.true.98 ], [ %116, %cond.false.102 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %cond.true.91
  %cond108 = phi i32 [ %conv94, %cond.true.91 ], [ %cond106, %cond.end.105 ]
  %cmp109 = icmp ule i32 %cond108, 127
  br i1 %cmp109, label %cond.true.111, label %cond.false.136

cond.true.111:                                    ; preds = %cond.end.107
  %117 = load i32, i32* %kind, align 4
  %cmp112 = icmp eq i32 %117, 1
  br i1 %cmp112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.true.111
  %118 = load i64, i64* %len, align 8
  %sub115 = sub i64 %118, 3
  %119 = load i8*, i8** %data, align 8
  %arrayidx116 = getelementptr i8, i8* %119, i64 %sub115
  %120 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %120 to i32
  br label %cond.end.130

cond.false.118:                                   ; preds = %cond.true.111
  %121 = load i32, i32* %kind, align 4
  %cmp119 = icmp eq i32 %121, 2
  br i1 %cmp119, label %cond.true.121, label %cond.false.125

cond.true.121:                                    ; preds = %cond.false.118
  %122 = load i64, i64* %len, align 8
  %sub122 = sub i64 %122, 3
  %123 = load i8*, i8** %data, align 8
  %124 = bitcast i8* %123 to i16*
  %arrayidx123 = getelementptr i16, i16* %124, i64 %sub122
  %125 = load i16, i16* %arrayidx123, align 2
  %conv124 = zext i16 %125 to i32
  br label %cond.end.128

cond.false.125:                                   ; preds = %cond.false.118
  %126 = load i64, i64* %len, align 8
  %sub126 = sub i64 %126, 3
  %127 = load i8*, i8** %data, align 8
  %128 = bitcast i8* %127 to i32*
  %arrayidx127 = getelementptr i32, i32* %128, i64 %sub126
  %129 = load i32, i32* %arrayidx127, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.125, %cond.true.121
  %cond129 = phi i32 [ %conv124, %cond.true.121 ], [ %129, %cond.false.125 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.114
  %cond131 = phi i32 [ %conv117, %cond.true.114 ], [ %cond129, %cond.end.128 ]
  %and132 = and i32 %cond131, 255
  %conv133 = trunc i32 %and132 to i8
  %idxprom = zext i8 %conv133 to i64
  %arrayidx134 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom
  %130 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %130 to i32
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end.107
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.end.130
  %cond138 = phi i32 [ %conv135, %cond.end.130 ], [ 0, %cond.false.136 ]
  %cmp139 = icmp eq i32 %cond138, 112
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.309

land.lhs.true.141:                                ; preds = %cond.end.137
  %131 = load i32, i32* %kind, align 4
  %cmp142 = icmp eq i32 %131, 1
  br i1 %cmp142, label %cond.true.144, label %cond.false.148

cond.true.144:                                    ; preds = %land.lhs.true.141
  %132 = load i64, i64* %len, align 8
  %sub145 = sub i64 %132, 2
  %133 = load i8*, i8** %data, align 8
  %arrayidx146 = getelementptr i8, i8* %133, i64 %sub145
  %134 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %134 to i32
  br label %cond.end.160

cond.false.148:                                   ; preds = %land.lhs.true.141
  %135 = load i32, i32* %kind, align 4
  %cmp149 = icmp eq i32 %135, 2
  br i1 %cmp149, label %cond.true.151, label %cond.false.155

cond.true.151:                                    ; preds = %cond.false.148
  %136 = load i64, i64* %len, align 8
  %sub152 = sub i64 %136, 2
  %137 = load i8*, i8** %data, align 8
  %138 = bitcast i8* %137 to i16*
  %arrayidx153 = getelementptr i16, i16* %138, i64 %sub152
  %139 = load i16, i16* %arrayidx153, align 2
  %conv154 = zext i16 %139 to i32
  br label %cond.end.158

cond.false.155:                                   ; preds = %cond.false.148
  %140 = load i64, i64* %len, align 8
  %sub156 = sub i64 %140, 2
  %141 = load i8*, i8** %data, align 8
  %142 = bitcast i8* %141 to i32*
  %arrayidx157 = getelementptr i32, i32* %142, i64 %sub156
  %143 = load i32, i32* %arrayidx157, align 4
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.155, %cond.true.151
  %cond159 = phi i32 [ %conv154, %cond.true.151 ], [ %143, %cond.false.155 ]
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.end.158, %cond.true.144
  %cond161 = phi i32 [ %conv147, %cond.true.144 ], [ %cond159, %cond.end.158 ]
  %cmp162 = icmp ule i32 %cond161, 127
  br i1 %cmp162, label %cond.true.164, label %cond.false.190

cond.true.164:                                    ; preds = %cond.end.160
  %144 = load i32, i32* %kind, align 4
  %cmp165 = icmp eq i32 %144, 1
  br i1 %cmp165, label %cond.true.167, label %cond.false.171

cond.true.167:                                    ; preds = %cond.true.164
  %145 = load i64, i64* %len, align 8
  %sub168 = sub i64 %145, 2
  %146 = load i8*, i8** %data, align 8
  %arrayidx169 = getelementptr i8, i8* %146, i64 %sub168
  %147 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %147 to i32
  br label %cond.end.183

cond.false.171:                                   ; preds = %cond.true.164
  %148 = load i32, i32* %kind, align 4
  %cmp172 = icmp eq i32 %148, 2
  br i1 %cmp172, label %cond.true.174, label %cond.false.178

cond.true.174:                                    ; preds = %cond.false.171
  %149 = load i64, i64* %len, align 8
  %sub175 = sub i64 %149, 2
  %150 = load i8*, i8** %data, align 8
  %151 = bitcast i8* %150 to i16*
  %arrayidx176 = getelementptr i16, i16* %151, i64 %sub175
  %152 = load i16, i16* %arrayidx176, align 2
  %conv177 = zext i16 %152 to i32
  br label %cond.end.181

cond.false.178:                                   ; preds = %cond.false.171
  %153 = load i64, i64* %len, align 8
  %sub179 = sub i64 %153, 2
  %154 = load i8*, i8** %data, align 8
  %155 = bitcast i8* %154 to i32*
  %arrayidx180 = getelementptr i32, i32* %155, i64 %sub179
  %156 = load i32, i32* %arrayidx180, align 4
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.178, %cond.true.174
  %cond182 = phi i32 [ %conv177, %cond.true.174 ], [ %156, %cond.false.178 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end.181, %cond.true.167
  %cond184 = phi i32 [ %conv170, %cond.true.167 ], [ %cond182, %cond.end.181 ]
  %and185 = and i32 %cond184, 255
  %conv186 = trunc i32 %and185 to i8
  %idxprom187 = zext i8 %conv186 to i64
  %arrayidx188 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom187
  %157 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %157 to i32
  br label %cond.end.191

cond.false.190:                                   ; preds = %cond.end.160
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.end.183
  %cond192 = phi i32 [ %conv189, %cond.end.183 ], [ 0, %cond.false.190 ]
  %cmp193 = icmp eq i32 %cond192, 121
  br i1 %cmp193, label %land.lhs.true.195, label %if.else.309

land.lhs.true.195:                                ; preds = %cond.end.191
  %158 = load i32, i32* %kind, align 4
  %cmp196 = icmp eq i32 %158, 1
  br i1 %cmp196, label %cond.true.198, label %cond.false.202

cond.true.198:                                    ; preds = %land.lhs.true.195
  %159 = load i64, i64* %len, align 8
  %sub199 = sub i64 %159, 1
  %160 = load i8*, i8** %data, align 8
  %arrayidx200 = getelementptr i8, i8* %160, i64 %sub199
  %161 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %161 to i32
  br label %cond.end.214

cond.false.202:                                   ; preds = %land.lhs.true.195
  %162 = load i32, i32* %kind, align 4
  %cmp203 = icmp eq i32 %162, 2
  br i1 %cmp203, label %cond.true.205, label %cond.false.209

cond.true.205:                                    ; preds = %cond.false.202
  %163 = load i64, i64* %len, align 8
  %sub206 = sub i64 %163, 1
  %164 = load i8*, i8** %data, align 8
  %165 = bitcast i8* %164 to i16*
  %arrayidx207 = getelementptr i16, i16* %165, i64 %sub206
  %166 = load i16, i16* %arrayidx207, align 2
  %conv208 = zext i16 %166 to i32
  br label %cond.end.212

cond.false.209:                                   ; preds = %cond.false.202
  %167 = load i64, i64* %len, align 8
  %sub210 = sub i64 %167, 1
  %168 = load i8*, i8** %data, align 8
  %169 = bitcast i8* %168 to i32*
  %arrayidx211 = getelementptr i32, i32* %169, i64 %sub210
  %170 = load i32, i32* %arrayidx211, align 4
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.209, %cond.true.205
  %cond213 = phi i32 [ %conv208, %cond.true.205 ], [ %170, %cond.false.209 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.198
  %cond215 = phi i32 [ %conv201, %cond.true.198 ], [ %cond213, %cond.end.212 ]
  %cmp216 = icmp ule i32 %cond215, 127
  br i1 %cmp216, label %cond.true.218, label %cond.false.244

cond.true.218:                                    ; preds = %cond.end.214
  %171 = load i32, i32* %kind, align 4
  %cmp219 = icmp eq i32 %171, 1
  br i1 %cmp219, label %cond.true.221, label %cond.false.225

cond.true.221:                                    ; preds = %cond.true.218
  %172 = load i64, i64* %len, align 8
  %sub222 = sub i64 %172, 1
  %173 = load i8*, i8** %data, align 8
  %arrayidx223 = getelementptr i8, i8* %173, i64 %sub222
  %174 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %174 to i32
  br label %cond.end.237

cond.false.225:                                   ; preds = %cond.true.218
  %175 = load i32, i32* %kind, align 4
  %cmp226 = icmp eq i32 %175, 2
  br i1 %cmp226, label %cond.true.228, label %cond.false.232

cond.true.228:                                    ; preds = %cond.false.225
  %176 = load i64, i64* %len, align 8
  %sub229 = sub i64 %176, 1
  %177 = load i8*, i8** %data, align 8
  %178 = bitcast i8* %177 to i16*
  %arrayidx230 = getelementptr i16, i16* %178, i64 %sub229
  %179 = load i16, i16* %arrayidx230, align 2
  %conv231 = zext i16 %179 to i32
  br label %cond.end.235

cond.false.232:                                   ; preds = %cond.false.225
  %180 = load i64, i64* %len, align 8
  %sub233 = sub i64 %180, 1
  %181 = load i8*, i8** %data, align 8
  %182 = bitcast i8* %181 to i32*
  %arrayidx234 = getelementptr i32, i32* %182, i64 %sub233
  %183 = load i32, i32* %arrayidx234, align 4
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.232, %cond.true.228
  %cond236 = phi i32 [ %conv231, %cond.true.228 ], [ %183, %cond.false.232 ]
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.end.235, %cond.true.221
  %cond238 = phi i32 [ %conv224, %cond.true.221 ], [ %cond236, %cond.end.235 ]
  %and239 = and i32 %cond238, 255
  %conv240 = trunc i32 %and239 to i8
  %idxprom241 = zext i8 %conv240 to i64
  %arrayidx242 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom241
  %184 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %184 to i32
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.214
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.end.237
  %cond246 = phi i32 [ %conv243, %cond.end.237 ], [ 0, %cond.false.244 ]
  %cmp247 = icmp eq i32 %cond246, 99
  br i1 %cmp247, label %if.then.302, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.245
  %185 = load i32, i32* %kind, align 4
  %cmp249 = icmp eq i32 %185, 1
  br i1 %cmp249, label %cond.true.251, label %cond.false.255

cond.true.251:                                    ; preds = %lor.lhs.false
  %186 = load i64, i64* %len, align 8
  %sub252 = sub i64 %186, 1
  %187 = load i8*, i8** %data, align 8
  %arrayidx253 = getelementptr i8, i8* %187, i64 %sub252
  %188 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %188 to i32
  br label %cond.end.267

cond.false.255:                                   ; preds = %lor.lhs.false
  %189 = load i32, i32* %kind, align 4
  %cmp256 = icmp eq i32 %189, 2
  br i1 %cmp256, label %cond.true.258, label %cond.false.262

cond.true.258:                                    ; preds = %cond.false.255
  %190 = load i64, i64* %len, align 8
  %sub259 = sub i64 %190, 1
  %191 = load i8*, i8** %data, align 8
  %192 = bitcast i8* %191 to i16*
  %arrayidx260 = getelementptr i16, i16* %192, i64 %sub259
  %193 = load i16, i16* %arrayidx260, align 2
  %conv261 = zext i16 %193 to i32
  br label %cond.end.265

cond.false.262:                                   ; preds = %cond.false.255
  %194 = load i64, i64* %len, align 8
  %sub263 = sub i64 %194, 1
  %195 = load i8*, i8** %data, align 8
  %196 = bitcast i8* %195 to i32*
  %arrayidx264 = getelementptr i32, i32* %196, i64 %sub263
  %197 = load i32, i32* %arrayidx264, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.true.258
  %cond266 = phi i32 [ %conv261, %cond.true.258 ], [ %197, %cond.false.262 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %cond.true.251
  %cond268 = phi i32 [ %conv254, %cond.true.251 ], [ %cond266, %cond.end.265 ]
  %cmp269 = icmp ule i32 %cond268, 127
  br i1 %cmp269, label %cond.true.271, label %cond.false.297

cond.true.271:                                    ; preds = %cond.end.267
  %198 = load i32, i32* %kind, align 4
  %cmp272 = icmp eq i32 %198, 1
  br i1 %cmp272, label %cond.true.274, label %cond.false.278

cond.true.274:                                    ; preds = %cond.true.271
  %199 = load i64, i64* %len, align 8
  %sub275 = sub i64 %199, 1
  %200 = load i8*, i8** %data, align 8
  %arrayidx276 = getelementptr i8, i8* %200, i64 %sub275
  %201 = load i8, i8* %arrayidx276, align 1
  %conv277 = zext i8 %201 to i32
  br label %cond.end.290

cond.false.278:                                   ; preds = %cond.true.271
  %202 = load i32, i32* %kind, align 4
  %cmp279 = icmp eq i32 %202, 2
  br i1 %cmp279, label %cond.true.281, label %cond.false.285

cond.true.281:                                    ; preds = %cond.false.278
  %203 = load i64, i64* %len, align 8
  %sub282 = sub i64 %203, 1
  %204 = load i8*, i8** %data, align 8
  %205 = bitcast i8* %204 to i16*
  %arrayidx283 = getelementptr i16, i16* %205, i64 %sub282
  %206 = load i16, i16* %arrayidx283, align 2
  %conv284 = zext i16 %206 to i32
  br label %cond.end.288

cond.false.285:                                   ; preds = %cond.false.278
  %207 = load i64, i64* %len, align 8
  %sub286 = sub i64 %207, 1
  %208 = load i8*, i8** %data, align 8
  %209 = bitcast i8* %208 to i32*
  %arrayidx287 = getelementptr i32, i32* %209, i64 %sub286
  %210 = load i32, i32* %arrayidx287, align 4
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.285, %cond.true.281
  %cond289 = phi i32 [ %conv284, %cond.true.281 ], [ %210, %cond.false.285 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.274
  %cond291 = phi i32 [ %conv277, %cond.true.274 ], [ %cond289, %cond.end.288 ]
  %and292 = and i32 %cond291, 255
  %conv293 = trunc i32 %and292 to i8
  %idxprom294 = zext i8 %conv293 to i64
  %arrayidx295 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom294
  %211 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %211 to i32
  br label %cond.end.298

cond.false.297:                                   ; preds = %cond.end.267
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.297, %cond.end.290
  %cond299 = phi i32 [ %conv296, %cond.end.290 ], [ 0, %cond.false.297 ]
  %cmp300 = icmp eq i32 %cond299, 111
  br i1 %cmp300, label %if.then.302, label %if.else.309

if.then.302:                                      ; preds = %cond.end.298, %cond.end.245
  %212 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %213 = load %struct._object*, %struct._object** %212, align 8
  %214 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %215 = load %struct._object*, %struct._object** %214, align 8
  %216 = bitcast %struct._object* %215 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %216, i32 0, i32 1
  %217 = load i64, i64* %length, align 8
  %sub303 = sub i64 %217, 1
  %call304 = call %struct._object* @PyUnicode_Substring(%struct._object* %213, i64 0, i64 %sub303)
  %218 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call304, %struct._object** %218, align 8
  %219 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %220 = load %struct._object*, %struct._object** %219, align 8
  %cmp305 = icmp eq %struct._object* %220, null
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.then.302
  br label %handle_error

if.end.308:                                       ; preds = %if.then.302
  br label %if.end.312

if.else.309:                                      ; preds = %cond.end.298, %cond.end.191, %cond.end.137, %cond.end.84, %cond.end.66
  %221 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %222 = load %struct._object*, %struct._object** %221, align 8
  %ob_refcnt310 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 0
  %223 = load i64, i64* %ob_refcnt310, align 8
  %inc311 = add i64 %223, 1
  store i64 %inc311, i64* %ob_refcnt310, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.309, %if.end.308
  br label %if.end.390

if.else.313:                                      ; preds = %land.lhs.true, %if.end.31
  %224 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* null, %struct._object** %224, align 8
  %225 = load %struct._object**, %struct._object*** %module.addr, align 8
  %226 = load %struct._object*, %struct._object** %225, align 8
  %cmp314 = icmp ne %struct._object* %226, @_Py_NoneStruct
  br i1 %cmp314, label %land.lhs.true.316, label %if.end.383

land.lhs.true.316:                                ; preds = %if.else.313
  %227 = load %struct._object**, %struct._object*** %module.addr, align 8
  %228 = load %struct._object*, %struct._object** %227, align 8
  %call317 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %cmp318 = icmp eq i32 %call317, 0
  br i1 %cmp318, label %if.then.320, label %if.end.383

if.then.320:                                      ; preds = %land.lhs.true.316
  %call322 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_argv)
  store %struct._object* %call322, %struct._object** %argv, align 8
  %229 = load %struct._object*, %struct._object** %argv, align 8
  %cmp323 = icmp ne %struct._object* %229, null
  br i1 %cmp323, label %land.lhs.true.325, label %if.else.376

land.lhs.true.325:                                ; preds = %if.then.320
  %230 = load %struct._object*, %struct._object** %argv, align 8
  %ob_type326 = getelementptr inbounds %struct._object, %struct._object* %230, i32 0, i32 1
  %231 = load %struct._typeobject*, %struct._typeobject** %ob_type326, align 8
  %tp_flags327 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %231, i32 0, i32 19
  %232 = load i64, i64* %tp_flags327, align 8
  %and328 = and i64 %232, 33554432
  %cmp329 = icmp ne i64 %and328, 0
  br i1 %cmp329, label %land.lhs.true.331, label %if.else.376

land.lhs.true.331:                                ; preds = %land.lhs.true.325
  %233 = load %struct._object*, %struct._object** %argv, align 8
  %call332 = call i64 @PyList_Size(%struct._object* %233)
  %cmp333 = icmp sgt i64 %call332, 0
  br i1 %cmp333, label %if.then.335, label %if.else.376

if.then.335:                                      ; preds = %land.lhs.true.331
  %234 = load %struct._object*, %struct._object** %argv, align 8
  %call337 = call %struct._object* @PyList_GetItem(%struct._object* %234, i64 0)
  %235 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call337, %struct._object** %235, align 8
  %236 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %237 = load %struct._object*, %struct._object** %236, align 8
  %ob_refcnt338 = getelementptr inbounds %struct._object, %struct._object* %237, i32 0, i32 0
  %238 = load i64, i64* %ob_refcnt338, align 8
  %inc339 = add i64 %238, 1
  store i64 %inc339, i64* %ob_refcnt338, align 8
  %239 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %240 = load %struct._object*, %struct._object** %239, align 8
  %call340 = call i32 @PyObject_IsTrue(%struct._object* %240)
  store i32 %call340, i32* %is_true, align 4
  %241 = load i32, i32* %is_true, align 4
  %cmp341 = icmp slt i32 %241, 0
  br i1 %cmp341, label %if.then.343, label %if.else.353

if.then.343:                                      ; preds = %if.then.335
  br label %do.body

do.body:                                          ; preds = %if.then.343
  %242 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %243 = load %struct._object*, %struct._object** %242, align 8
  store %struct._object* %243, %struct._object** %_py_decref_tmp, align 8
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt345 = getelementptr inbounds %struct._object, %struct._object* %244, i32 0, i32 0
  %245 = load i64, i64* %ob_refcnt345, align 8
  %dec346 = add i64 %245, -1
  store i64 %dec346, i64* %ob_refcnt345, align 8
  %cmp347 = icmp ne i64 %dec346, 0
  br i1 %cmp347, label %if.then.349, label %if.else.350

if.then.349:                                      ; preds = %do.body
  br label %if.end.352

if.else.350:                                      ; preds = %do.body
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type351 = getelementptr inbounds %struct._object, %struct._object* %246, i32 0, i32 1
  %247 = load %struct._typeobject*, %struct._typeobject** %ob_type351, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %247, i32 0, i32 4
  %248 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %249 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %248(%struct._object* %249)
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.350, %if.then.349
  br label %do.end

do.end:                                           ; preds = %if.end.352
  br label %handle_error

if.else.353:                                      ; preds = %if.then.335
  %250 = load i32, i32* %is_true, align 4
  %tobool354 = icmp ne i32 %250, 0
  br i1 %tobool354, label %if.end.374, label %if.then.355

if.then.355:                                      ; preds = %if.else.353
  br label %do.body.356

do.body.356:                                      ; preds = %if.then.355
  %251 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %252 = load %struct._object*, %struct._object** %251, align 8
  store %struct._object* %252, %struct._object** %_py_decref_tmp358, align 8
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp358, align 8
  %ob_refcnt359 = getelementptr inbounds %struct._object, %struct._object* %253, i32 0, i32 0
  %254 = load i64, i64* %ob_refcnt359, align 8
  %dec360 = add i64 %254, -1
  store i64 %dec360, i64* %ob_refcnt359, align 8
  %cmp361 = icmp ne i64 %dec360, 0
  br i1 %cmp361, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %do.body.356
  br label %if.end.367

if.else.364:                                      ; preds = %do.body.356
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp358, align 8
  %ob_type365 = getelementptr inbounds %struct._object, %struct._object* %255, i32 0, i32 1
  %256 = load %struct._typeobject*, %struct._typeobject** %ob_type365, align 8
  %tp_dealloc366 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %256, i32 0, i32 4
  %257 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc366, align 8
  %258 = load %struct._object*, %struct._object** %_py_decref_tmp358, align 8
  call void %257(%struct._object* %258)
  br label %if.end.367

if.end.367:                                       ; preds = %if.else.364, %if.then.363
  br label %do.end.368

do.end.368:                                       ; preds = %if.end.367
  %call369 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %259 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call369, %struct._object** %259, align 8
  %260 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %261 = load %struct._object*, %struct._object** %260, align 8
  %cmp370 = icmp eq %struct._object* %261, null
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %do.end.368
  br label %handle_error

if.end.373:                                       ; preds = %do.end.368
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.else.353
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374
  br label %if.end.382

if.else.376:                                      ; preds = %land.lhs.true.331, %land.lhs.true.325, %if.then.320
  %call377 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %262 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call377, %struct._object** %262, align 8
  %263 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %264 = load %struct._object*, %struct._object** %263, align 8
  %cmp378 = icmp eq %struct._object* %264, null
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %if.else.376
  br label %handle_error

if.end.381:                                       ; preds = %if.else.376
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.375
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %land.lhs.true.316, %if.else.313
  %265 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %266 = load %struct._object*, %struct._object** %265, align 8
  %cmp384 = icmp eq %struct._object* %266, null
  br i1 %cmp384, label %if.then.386, label %if.end.389

if.then.386:                                      ; preds = %if.end.383
  %267 = load %struct._object**, %struct._object*** %module.addr, align 8
  %268 = load %struct._object*, %struct._object** %267, align 8
  %269 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %268, %struct._object** %269, align 8
  %270 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %271 = load %struct._object*, %struct._object** %270, align 8
  %ob_refcnt387 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0
  %272 = load i64, i64* %ob_refcnt387, align 8
  %inc388 = add i64 %272, 1
  store i64 %inc388, i64* %ob_refcnt387, align 8
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.386, %if.end.383
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.end.312
  store i32 1, i32* %retval
  br label %return

handle_error:                                     ; preds = %if.then.380, %if.then.372, %do.end, %if.then.307, %if.then.41, %if.then.26, %if.then.17
  br label %do.body.391

do.body.391:                                      ; preds = %handle_error
  %273 = load %struct._object**, %struct._object*** %registry.addr, align 8
  %274 = load %struct._object*, %struct._object** %273, align 8
  store %struct._object* %274, %struct._object** %_py_xdecref_tmp, align 8
  %275 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp393 = icmp ne %struct._object* %275, null
  br i1 %cmp393, label %if.then.395, label %if.end.409

if.then.395:                                      ; preds = %do.body.391
  br label %do.body.396

do.body.396:                                      ; preds = %if.then.395
  %276 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %276, %struct._object** %_py_decref_tmp398, align 8
  %277 = load %struct._object*, %struct._object** %_py_decref_tmp398, align 8
  %ob_refcnt399 = getelementptr inbounds %struct._object, %struct._object* %277, i32 0, i32 0
  %278 = load i64, i64* %ob_refcnt399, align 8
  %dec400 = add i64 %278, -1
  store i64 %dec400, i64* %ob_refcnt399, align 8
  %cmp401 = icmp ne i64 %dec400, 0
  br i1 %cmp401, label %if.then.403, label %if.else.404

if.then.403:                                      ; preds = %do.body.396
  br label %if.end.407

if.else.404:                                      ; preds = %do.body.396
  %279 = load %struct._object*, %struct._object** %_py_decref_tmp398, align 8
  %ob_type405 = getelementptr inbounds %struct._object, %struct._object* %279, i32 0, i32 1
  %280 = load %struct._typeobject*, %struct._typeobject** %ob_type405, align 8
  %tp_dealloc406 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %280, i32 0, i32 4
  %281 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc406, align 8
  %282 = load %struct._object*, %struct._object** %_py_decref_tmp398, align 8
  call void %281(%struct._object* %282)
  br label %if.end.407

if.end.407:                                       ; preds = %if.else.404, %if.then.403
  br label %do.end.408

do.end.408:                                       ; preds = %if.end.407
  br label %if.end.409

if.end.409:                                       ; preds = %do.end.408, %do.body.391
  br label %do.end.410

do.end.410:                                       ; preds = %if.end.409
  br label %do.body.411

do.body.411:                                      ; preds = %do.end.410
  %283 = load %struct._object**, %struct._object*** %module.addr, align 8
  %284 = load %struct._object*, %struct._object** %283, align 8
  store %struct._object* %284, %struct._object** %_py_xdecref_tmp413, align 8
  %285 = load %struct._object*, %struct._object** %_py_xdecref_tmp413, align 8
  %cmp414 = icmp ne %struct._object* %285, null
  br i1 %cmp414, label %if.then.416, label %if.end.430

if.then.416:                                      ; preds = %do.body.411
  br label %do.body.417

do.body.417:                                      ; preds = %if.then.416
  %286 = load %struct._object*, %struct._object** %_py_xdecref_tmp413, align 8
  store %struct._object* %286, %struct._object** %_py_decref_tmp419, align 8
  %287 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_refcnt420 = getelementptr inbounds %struct._object, %struct._object* %287, i32 0, i32 0
  %288 = load i64, i64* %ob_refcnt420, align 8
  %dec421 = add i64 %288, -1
  store i64 %dec421, i64* %ob_refcnt420, align 8
  %cmp422 = icmp ne i64 %dec421, 0
  br i1 %cmp422, label %if.then.424, label %if.else.425

if.then.424:                                      ; preds = %do.body.417
  br label %if.end.428

if.else.425:                                      ; preds = %do.body.417
  %289 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  %ob_type426 = getelementptr inbounds %struct._object, %struct._object* %289, i32 0, i32 1
  %290 = load %struct._typeobject*, %struct._typeobject** %ob_type426, align 8
  %tp_dealloc427 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %290, i32 0, i32 4
  %291 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc427, align 8
  %292 = load %struct._object*, %struct._object** %_py_decref_tmp419, align 8
  call void %291(%struct._object* %292)
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.425, %if.then.424
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.428
  br label %if.end.430

if.end.430:                                       ; preds = %do.end.429, %do.body.411
  br label %do.end.431

do.end.431:                                       ; preds = %if.end.430
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.431, %if.end.390, %if.then.13
  %293 = load i32, i32* %retval
  ret i32 %293
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._ts* @PyThreadState_Get() #2

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #2

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #2

declare i64 @PyUnicode_GetLength(%struct._object*) #2

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #2

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #2

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #2

declare i64 @PyList_Size(%struct._object*) #2

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @normalize_module(%struct._object* %filename) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %0 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call i64 @PyUnicode_GetLength(%struct._object* %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %len, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %filename.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %6 = load %struct._object*, %struct._object** %filename.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3
  %8 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %8, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 5
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %filename.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3
  %11 = bitcast %struct.anon* %state9 to i32*
  %bf.load10 = load i32, i32* %11, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 6
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true
  %12 = load %struct._object*, %struct._object** %filename.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i64 1
  %14 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load %struct._object*, %struct._object** %filename.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyCompactUnicodeObject*
  %add.ptr15 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %16, i64 1
  %17 = bitcast %struct.PyCompactUnicodeObject* %add.ptr15 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi i8* [ %14, %cond.true.14 ], [ %17, %cond.false ]
  br label %cond.end.18

cond.false.16:                                    ; preds = %if.end.4
  %18 = load %struct._object*, %struct._object** %filename.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyUnicodeObject*
  %data17 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %19, i32 0, i32 1
  %any = bitcast %union.anon* %data17 to i8**
  %20 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.end
  %cond19 = phi i8* [ %cond, %cond.end ], [ %20, %cond.false.16 ]
  store i8* %cond19, i8** %data, align 8
  %21 = load i64, i64* %len, align 8
  %cmp20 = icmp sge i64 %21, 3
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.18
  %22 = load i32, i32* %kind, align 4
  %cmp21 = icmp eq i32 %22, 1
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %land.lhs.true
  %23 = load i64, i64* %len, align 8
  %sub = sub i64 %23, 3
  %24 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %24, i64 %sub
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  br label %cond.end.35

cond.false.23:                                    ; preds = %land.lhs.true
  %26 = load i32, i32* %kind, align 4
  %cmp24 = icmp eq i32 %26, 2
  br i1 %cmp24, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.false.23
  %27 = load i64, i64* %len, align 8
  %sub27 = sub i64 %27, 3
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to i16*
  %arrayidx28 = getelementptr i16, i16* %29, i64 %sub27
  %30 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %30 to i32
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.false.23
  %31 = load i64, i64* %len, align 8
  %sub31 = sub i64 %31, 3
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to i32*
  %arrayidx32 = getelementptr i32, i32* %33, i64 %sub31
  %34 = load i32, i32* %arrayidx32, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.26
  %cond34 = phi i32 [ %conv29, %cond.true.26 ], [ %34, %cond.false.30 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.22
  %cond36 = phi i32 [ %conv, %cond.true.22 ], [ %cond34, %cond.end.33 ]
  %cmp37 = icmp eq i32 %cond36, 46
  br i1 %cmp37, label %land.lhs.true.39, label %if.else

land.lhs.true.39:                                 ; preds = %cond.end.35
  %35 = load i32, i32* %kind, align 4
  %cmp40 = icmp eq i32 %35, 1
  br i1 %cmp40, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %land.lhs.true.39
  %36 = load i64, i64* %len, align 8
  %sub43 = sub i64 %36, 2
  %37 = load i8*, i8** %data, align 8
  %arrayidx44 = getelementptr i8, i8* %37, i64 %sub43
  %38 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %38 to i32
  br label %cond.end.58

cond.false.46:                                    ; preds = %land.lhs.true.39
  %39 = load i32, i32* %kind, align 4
  %cmp47 = icmp eq i32 %39, 2
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.false.46
  %40 = load i64, i64* %len, align 8
  %sub50 = sub i64 %40, 2
  %41 = load i8*, i8** %data, align 8
  %42 = bitcast i8* %41 to i16*
  %arrayidx51 = getelementptr i16, i16* %42, i64 %sub50
  %43 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %43 to i32
  br label %cond.end.56

cond.false.53:                                    ; preds = %cond.false.46
  %44 = load i64, i64* %len, align 8
  %sub54 = sub i64 %44, 2
  %45 = load i8*, i8** %data, align 8
  %46 = bitcast i8* %45 to i32*
  %arrayidx55 = getelementptr i32, i32* %46, i64 %sub54
  %47 = load i32, i32* %arrayidx55, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.49
  %cond57 = phi i32 [ %conv52, %cond.true.49 ], [ %47, %cond.false.53 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.42
  %cond59 = phi i32 [ %conv45, %cond.true.42 ], [ %cond57, %cond.end.56 ]
  %cmp60 = icmp eq i32 %cond59, 112
  br i1 %cmp60, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %cond.end.58
  %48 = load i32, i32* %kind, align 4
  %cmp63 = icmp eq i32 %48, 1
  br i1 %cmp63, label %cond.true.65, label %cond.false.69

cond.true.65:                                     ; preds = %land.lhs.true.62
  %49 = load i64, i64* %len, align 8
  %sub66 = sub i64 %49, 1
  %50 = load i8*, i8** %data, align 8
  %arrayidx67 = getelementptr i8, i8* %50, i64 %sub66
  %51 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  br label %cond.end.81

cond.false.69:                                    ; preds = %land.lhs.true.62
  %52 = load i32, i32* %kind, align 4
  %cmp70 = icmp eq i32 %52, 2
  br i1 %cmp70, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %cond.false.69
  %53 = load i64, i64* %len, align 8
  %sub73 = sub i64 %53, 1
  %54 = load i8*, i8** %data, align 8
  %55 = bitcast i8* %54 to i16*
  %arrayidx74 = getelementptr i16, i16* %55, i64 %sub73
  %56 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %56 to i32
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.false.69
  %57 = load i64, i64* %len, align 8
  %sub77 = sub i64 %57, 1
  %58 = load i8*, i8** %data, align 8
  %59 = bitcast i8* %58 to i32*
  %arrayidx78 = getelementptr i32, i32* %59, i64 %sub77
  %60 = load i32, i32* %arrayidx78, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.72
  %cond80 = phi i32 [ %conv75, %cond.true.72 ], [ %60, %cond.false.76 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.65
  %cond82 = phi i32 [ %conv68, %cond.true.65 ], [ %cond80, %cond.end.79 ]
  %cmp83 = icmp eq i32 %cond82, 121
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %cond.end.81
  %61 = load %struct._object*, %struct._object** %filename.addr, align 8
  %62 = load i64, i64* %len, align 8
  %sub86 = sub i64 %62, 3
  %call87 = call %struct._object* @PyUnicode_Substring(%struct._object* %61, i64 0, i64 %sub86)
  store %struct._object* %call87, %struct._object** %module, align 8
  br label %if.end.88

if.else:                                          ; preds = %cond.end.81, %cond.end.58, %cond.end.35, %cond.end.18
  %63 = load %struct._object*, %struct._object** %filename.addr, align 8
  store %struct._object* %63, %struct._object** %module, align 8
  %64 = load %struct._object*, %struct._object** %module, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %65, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.85
  %66 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %66, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.2, %if.then
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_Str(%struct._object*) #2

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #2

declare %struct._object* @PyLong_FromLong(i64) #2

declare %struct._object* @PyTuple_Pack(i64, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @already_warned(%struct._object* %registry, %struct._object* %key, i32 %should_set) #0 {
entry:
  %retval = alloca i32, align 4
  %registry.addr = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %should_set.addr = alloca i32, align 4
  %already_warned = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i32 %should_set, i32* %should_set.addr, align 4
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %registry.addr, align 8
  %2 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %already_warned, align 8
  %3 = load %struct._object*, %struct._object** %already_warned, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %already_warned, align 8
  %call3 = call i32 @PyObject_IsTrue(%struct._object* %4)
  store i32 %call3, i32* %rc, align 4
  %5 = load i32, i32* %rc, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %6 = load i32, i32* %rc, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %7 = load i32, i32* %should_set.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %registry.addr, align 8
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %8, %struct._object* %9, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_filter(%struct._object* %category, %struct._object* %text, i64 %lineno, %struct._object* %module, %struct._object** %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %text.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i64, align 8
  %module.addr = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object**, align 8
  %action = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %warnings_filters = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tmp_item = alloca %struct._object*, align 8
  %action14 = alloca %struct._object*, align 8
  %msg = alloca %struct._object*, align 8
  %cat = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %ln_obj = alloca %struct._object*, align 8
  %ln = alloca i64, align 8
  %is_subclass = alloca i32, align 4
  %good_msg = alloca i32, align 4
  %good_mod = alloca i32, align 4
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  store i64 %lineno, i64* %lineno.addr, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object** %item, %struct._object*** %item.addr, align 8
  %call = call %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %warnings_filters, align 8
  %0 = load %struct._object*, %struct._object** %warnings_filters, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %1 = load %struct._object*, %struct._object** @_filters, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body
  br label %if.end.6

if.else.5:                                        ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %warnings_filters, align 8
  store %struct._object* %8, %struct._object** @_filters, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %if.end
  %9 = load %struct._object*, %struct._object** @_filters, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** @_filters, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 33554432
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i64, i64* %i, align 8
  %15 = load %struct._object*, %struct._object** @_filters, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  %cmp13 = icmp slt i64 %14, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %19 = load %struct._object*, %struct._object** @_filters, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %20, i32 0, i32 1
  %21 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 %18
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  %23 = load %struct._object**, %struct._object*** %item.addr, align 8
  store %struct._object* %22, %struct._object** %23, align 8
  store %struct._object* %22, %struct._object** %tmp_item, align 8
  %24 = load %struct._object*, %struct._object** %tmp_item, align 8
  %call15 = call i64 @PyTuple_Size(%struct._object* %24)
  %cmp16 = icmp ne i64 %call15, 5
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %26 = load i64, i64* %i, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0), i64 %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  %27 = load %struct._object*, %struct._object** %tmp_item, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 0
  %29 = load %struct._object*, %struct._object** %arrayidx21, align 8
  store %struct._object* %29, %struct._object** %action14, align 8
  %30 = load %struct._object*, %struct._object** %tmp_item, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 1
  %32 = load %struct._object*, %struct._object** %arrayidx23, align 8
  store %struct._object* %32, %struct._object** %msg, align 8
  %33 = load %struct._object*, %struct._object** %tmp_item, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 2
  %35 = load %struct._object*, %struct._object** %arrayidx25, align 8
  store %struct._object* %35, %struct._object** %cat, align 8
  %36 = load %struct._object*, %struct._object** %tmp_item, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 3
  %38 = load %struct._object*, %struct._object** %arrayidx27, align 8
  store %struct._object* %38, %struct._object** %mod, align 8
  %39 = load %struct._object*, %struct._object** %tmp_item, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 4
  %41 = load %struct._object*, %struct._object** %arrayidx29, align 8
  store %struct._object* %41, %struct._object** %ln_obj, align 8
  %42 = load %struct._object*, %struct._object** %msg, align 8
  %43 = load %struct._object*, %struct._object** %text.addr, align 8
  %call30 = call i32 @check_matched(%struct._object* %42, %struct._object* %43)
  store i32 %call30, i32* %good_msg, align 4
  %44 = load i32, i32* %good_msg, align 4
  %cmp31 = icmp eq i32 %44, -1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.19
  %45 = load %struct._object*, %struct._object** %mod, align 8
  %46 = load %struct._object*, %struct._object** %module.addr, align 8
  %call34 = call i32 @check_matched(%struct._object* %45, %struct._object* %46)
  store i32 %call34, i32* %good_mod, align 4
  %47 = load i32, i32* %good_mod, align 4
  %cmp35 = icmp eq i32 %47, -1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  %48 = load %struct._object*, %struct._object** %category.addr, align 8
  %49 = load %struct._object*, %struct._object** %cat, align 8
  %call38 = call i32 @PyObject_IsSubclass(%struct._object* %48, %struct._object* %49)
  store i32 %call38, i32* %is_subclass, align 4
  %50 = load i32, i32* %is_subclass, align 4
  %cmp39 = icmp eq i32 %50, -1
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %51 = load %struct._object*, %struct._object** %ln_obj, align 8
  %call42 = call i64 @PyLong_AsSsize_t(%struct._object* %51)
  store i64 %call42, i64* %ln, align 8
  %52 = load i64, i64* %ln, align 8
  %cmp43 = icmp eq i64 %52, -1
  br i1 %cmp43, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.41
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool45 = icmp ne %struct._object* %call44, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %if.end.41
  %53 = load i32, i32* %good_msg, align 4
  %tobool48 = icmp ne i32 %53, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %if.end.47
  %54 = load i32, i32* %is_subclass, align 4
  %tobool50 = icmp ne i32 %54, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.58

land.lhs.true.51:                                 ; preds = %land.lhs.true.49
  %55 = load i32, i32* %good_mod, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %land.lhs.true.51
  %56 = load i64, i64* %ln, align 8
  %cmp54 = icmp eq i64 %56, 0
  br i1 %cmp54, label %if.then.57, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %57 = load i64, i64* %lineno.addr, align 8
  %58 = load i64, i64* %ln, align 8
  %cmp56 = icmp eq i64 %57, %58
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.55, %land.lhs.true.53
  %59 = load %struct._object*, %struct._object** %action14, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.55, %land.lhs.true.51, %land.lhs.true.49, %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %60 = load i64, i64* %i, align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call59 = call %struct._object* @get_default_action()
  store %struct._object* %call59, %struct._object** %action, align 8
  %61 = load %struct._object*, %struct._object** %action, align 8
  %cmp60 = icmp ne %struct._object* %61, null
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.end
  %62 = load %struct._object*, %struct._object** %action, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %for.end
  %63 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.61, %if.then.57, %if.then.46, %if.then.40, %if.then.36, %if.then.32, %if.then.17, %if.then.11, %if.then.2
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_once_registry() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %registry = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %registry, align 8
  %0 = load %struct._object*, %struct._object** %registry, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @_once_registry, align 8
  store %struct._object* %1, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @_once_registry, align 8
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
  %9 = load %struct._object*, %struct._object** %registry, align 8
  store %struct._object* %9, %struct._object** @_once_registry, align 8
  %10 = load %struct._object*, %struct._object** %registry, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then.2
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @update_registry(%struct._object* %registry, %struct._object* %text, %struct._object* %category, i32 %add_zero) #0 {
entry:
  %retval = alloca i32, align 4
  %registry.addr = alloca %struct._object*, align 8
  %text.addr = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %add_zero.addr = alloca i32, align 4
  %altkey = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %registry, %struct._object** %registry.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i32 %add_zero, i32* %add_zero.addr, align 4
  store %struct._object* null, %struct._object** %zero, align 8
  %0 = load i32, i32* %add_zero.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call, %struct._object** %zero, align 8
  %1 = load %struct._object*, %struct._object** %zero, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %text.addr, align 8
  %3 = load %struct._object*, %struct._object** %category.addr, align 8
  %4 = load %struct._object*, %struct._object** %zero, align 8
  %call2 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %2, %struct._object* %3, %struct._object* %4)
  store %struct._object* %call2, %struct._object** %altkey, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %text.addr, align 8
  %6 = load %struct._object*, %struct._object** %category.addr, align 8
  %call3 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %5, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %altkey, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %7 = load %struct._object*, %struct._object** %registry.addr, align 8
  %8 = load %struct._object*, %struct._object** %altkey, align 8
  %call5 = call i32 @already_warned(%struct._object* %7, %struct._object* %8, i32 1)
  store i32 %call5, i32* %rc, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %9, %struct._object** %_py_xdecref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %do.body
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %18 = load %struct._object*, %struct._object** %altkey, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp16, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %19, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %do.body.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.15
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %27 = load i32, i32* %rc, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %do.end.31, %if.then.1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_warnings_attr(i8* %attr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %attr.addr = alloca i8*, align 8
  %all_modules = alloca %struct._object*, align 8
  %warnings_module = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  store i8* %attr, i8** %attr.addr, align 8
  %0 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @get_warnings_attr.warnings_str, align 8
  %1 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call4, %struct._object** %all_modules, align 8
  %2 = load %struct._object*, %struct._object** %all_modules, align 8
  %3 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8
  %call5 = call i32 @PyDict_Contains(%struct._object* %2, %struct._object* %3)
  store i32 %call5, i32* %result, align 4
  %4 = load i32, i32* %result, align 4
  %cmp6 = icmp eq i32 %4, -1
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %5 = load i32, i32* %result, align 4
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %all_modules, align 8
  %7 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8
  %call10 = call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call10, %struct._object** %warnings_module, align 8
  %8 = load %struct._object*, %struct._object** %warnings_module, align 8
  %9 = load i8*, i8** %attr.addr, align 8
  %call11 = call i32 @PyObject_HasAttrString(%struct._object* %8, i8* %9)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %warnings_module, align 8
  %11 = load i8*, i8** %attr.addr, align 8
  %call14 = call %struct._object* @PyObject_GetAttrString(%struct._object* %10, i8* %11)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.8, %if.then.2
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define internal void @show_warning(%struct._object* %filename, i32 %lineno, %struct._object* %text, %struct._object* %category, %struct._object* %sourceline) #0 {
entry:
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %text.addr = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %sourceline.addr = alloca %struct._object*, align 8
  %f_stderr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %lineno_str = alloca [128 x i8], align 16
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %ch = alloca i32, align 4
  %truncated = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store %struct._object* %text, %struct._object** %text.addr, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store %struct._object* %sourceline, %struct._object** %sourceline.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %lineno_str, i32 0, i32 0
  %0 = load i32, i32* %lineno.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %0)
  %1 = load %struct._object*, %struct._object** %category.addr, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @show_warning.PyId___name__)
  store %struct._object* %call1, %struct._object** %name, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call2, %struct._object** %f_stderr, align 8
  %3 = load %struct._object*, %struct._object** %f_stderr, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  br label %error

if.end.6:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %filename.addr, align 8
  %6 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call7 = call i32 @PyFile_WriteObject(%struct._object* %5, %struct._object* %6, i32 1)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %error

if.end.10:                                        ; preds = %if.end.6
  %arraydecay11 = getelementptr inbounds [128 x i8], [128 x i8]* %lineno_str, i32 0, i32 0
  %7 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call12 = call i32 @PyFile_WriteString(i8* %arraydecay11, %struct._object* %7)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  br label %error

if.end.15:                                        ; preds = %if.end.10
  %8 = load %struct._object*, %struct._object** %name, align 8
  %9 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call16 = call i32 @PyFile_WriteObject(%struct._object* %8, %struct._object* %9, i32 1)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  br label %error

if.end.19:                                        ; preds = %if.end.15
  %10 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call20 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._object* %10)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  br label %error

if.end.23:                                        ; preds = %if.end.19
  %11 = load %struct._object*, %struct._object** %text.addr, align 8
  %12 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call24 = call i32 @PyFile_WriteObject(%struct._object* %11, %struct._object* %12, i32 1)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %error

if.end.27:                                        ; preds = %if.end.23
  %13 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call28 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), %struct._object* %13)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  br label %error

if.end.31:                                        ; preds = %if.end.27
  br label %do.body

do.body:                                          ; preds = %if.end.31
  %14 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %14, %struct._object** %_py_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp32 = icmp ne %struct._object* %15, null
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %name, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %do.body.34
  br label %if.end.37

if.else:                                          ; preds = %do.body.34
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.37
  br label %if.end.38

if.end.38:                                        ; preds = %do.end, %do.body
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %23 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %tobool = icmp ne %struct._object* %23, null
  br i1 %tobool, label %if.then.40, label %if.else.113

if.then.40:                                       ; preds = %do.end.39
  %24 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3
  %26 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %26, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool41 = icmp ne i32 %bf.clear, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.40
  br label %cond.end

cond.false:                                       ; preds = %if.then.40
  %27 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %call42 = call i32 @_PyUnicode_Ready(%struct._object* %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call42, %cond.false ]
  %cmp43 = icmp slt i32 %cond, 1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %cond.end
  br label %error

if.end.45:                                        ; preds = %cond.end
  %28 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %state46 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon* %state46 to i32*
  %bf.load47 = load i32, i32* %30, align 4
  %bf.lshr48 = lshr i32 %bf.load47, 2
  %bf.clear49 = and i32 %bf.lshr48, 7
  store i32 %bf.clear49, i32* %kind, align 4
  %31 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*
  %state50 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 3
  %33 = bitcast %struct.anon* %state50 to i32*
  %bf.load51 = load i32, i32* %33, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 5
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.66

cond.true.55:                                     ; preds = %if.end.45
  %34 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 3
  %36 = bitcast %struct.anon* %state56 to i32*
  %bf.load57 = load i32, i32* %36, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 6
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.true.55
  %37 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i64 1
  %39 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.64

cond.false.62:                                    ; preds = %cond.true.55
  %40 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyCompactUnicodeObject*
  %add.ptr63 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %41, i64 1
  %42 = bitcast %struct.PyCompactUnicodeObject* %add.ptr63 to i8*
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.61
  %cond65 = phi i8* [ %39, %cond.true.61 ], [ %42, %cond.false.62 ]
  br label %cond.end.68

cond.false.66:                                    ; preds = %if.end.45
  %43 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyUnicodeObject*
  %data67 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %44, i32 0, i32 1
  %any = bitcast %union.anon* %data67 to i8**
  %45 = load i8*, i8** %any, align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.66, %cond.end.64
  %cond69 = phi i8* [ %cond65, %cond.end.64 ], [ %45, %cond.false.66 ]
  store i8* %cond69, i8** %data, align 8
  %46 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 1
  %48 = load i64, i64* %length, align 8
  store i64 %48, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.68
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %len, align 8
  %cmp70 = icmp slt i64 %49, %50
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %kind, align 4
  %cmp71 = icmp eq i32 %51, 1
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %for.body
  %52 = load i64, i64* %i, align 8
  %53 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %53, i64 %52
  %54 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %54 to i32
  br label %cond.end.83

cond.false.73:                                    ; preds = %for.body
  %55 = load i32, i32* %kind, align 4
  %cmp74 = icmp eq i32 %55, 2
  br i1 %cmp74, label %cond.true.76, label %cond.false.79

cond.true.76:                                     ; preds = %cond.false.73
  %56 = load i64, i64* %i, align 8
  %57 = load i8*, i8** %data, align 8
  %58 = bitcast i8* %57 to i16*
  %arrayidx77 = getelementptr i16, i16* %58, i64 %56
  %59 = load i16, i16* %arrayidx77, align 2
  %conv78 = zext i16 %59 to i32
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.false.73
  %60 = load i64, i64* %i, align 8
  %61 = load i8*, i8** %data, align 8
  %62 = bitcast i8* %61 to i32*
  %arrayidx80 = getelementptr i32, i32* %62, i64 %60
  %63 = load i32, i32* %arrayidx80, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.76
  %cond82 = phi i32 [ %conv78, %cond.true.76 ], [ %63, %cond.false.79 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.72
  %cond84 = phi i32 [ %conv, %cond.true.72 ], [ %cond82, %cond.end.81 ]
  store i32 %cond84, i32* %ch, align 4
  %64 = load i32, i32* %ch, align 4
  %cmp85 = icmp ne i32 %64, 32
  br i1 %cmp85, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %cond.end.83
  %65 = load i32, i32* %ch, align 4
  %cmp87 = icmp ne i32 %65, 9
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.93

land.lhs.true.89:                                 ; preds = %land.lhs.true
  %66 = load i32, i32* %ch, align 4
  %cmp90 = icmp ne i32 %66, 12
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.89
  br label %for.end

if.end.93:                                        ; preds = %land.lhs.true.89, %land.lhs.true, %cond.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %67 = load i64, i64* %i, align 8
  %inc = add i64 %67, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.92, %for.cond
  %68 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %len, align 8
  %call94 = call %struct._object* @PyUnicode_Substring(%struct._object* %68, i64 %69, i64 %70)
  store %struct._object* %call94, %struct._object** %truncated, align 8
  %71 = load %struct._object*, %struct._object** %truncated, align 8
  %cmp95 = icmp eq %struct._object* %71, null
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %for.end
  br label %error

if.end.98:                                        ; preds = %for.end
  %72 = load %struct._object*, %struct._object** %sourceline.addr, align 8
  %73 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call99 = call i32 @PyFile_WriteObject(%struct._object* %72, %struct._object* %73, i32 1)
  br label %do.body.100

do.body.100:                                      ; preds = %if.end.98
  %74 = load %struct._object*, %struct._object** %truncated, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp101, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %76, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.100
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %79(%struct._object* %80)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %81 = load %struct._object*, %struct._object** %f_stderr, align 8
  %call112 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), %struct._object* %81)
  br label %if.end.115

if.else.113:                                      ; preds = %do.end.39
  %82 = load %struct._object*, %struct._object** %f_stderr, align 8
  %83 = load %struct._object*, %struct._object** %filename.addr, align 8
  %84 = load i32, i32* %lineno.addr, align 4
  %call114 = call i32 @_Py_DisplaySourceLine(%struct._object* %82, %struct._object* %83, i32 %84, i32 2)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %do.end.111
  br label %error

error:                                            ; preds = %if.end.115, %if.then.97, %if.then.44, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.14, %if.then.9, %if.then.4, %if.then
  br label %do.body.116

do.body.116:                                      ; preds = %error
  %85 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %85, %struct._object** %_py_xdecref_tmp, align 8
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp117 = icmp ne %struct._object* %86, null
  br i1 %cmp117, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %do.body.116
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp121, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %89, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.120
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %92(%struct._object* %93)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.116
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  call void @PyErr_Clear()
  ret void
}

declare i32 @PyCallable_Check(%struct._object*) #2

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #2

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #2

declare i64 @PyTuple_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_matched(%struct._object* %obj, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @check_matched.PyId_match, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct._object* %2)
  store %struct._object* %call, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %result, align 8
  %call4 = call i32 @PyObject_IsTrue(%struct._object* %4)
  store i32 %call4, i32* %rc, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %result, align 8
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
  %12 = load i32, i32* %rc, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #2

declare i64 @PyLong_AsSsize_t(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_default_action() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %default_action = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %default_action, align 8
  %0 = load %struct._object*, %struct._object** %default_action, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @_default_action, align 8
  store %struct._object* %1, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @_default_action, align 8
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
  %9 = load %struct._object*, %struct._object** %default_action, align 8
  store %struct._object* %9, %struct._object** @_default_action, align 8
  %10 = load %struct._object*, %struct._object** %default_action, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then.2
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare %struct._object* @PyUnicode_InternFromString(i8*) #2

declare %struct._object* @PyImport_GetModuleDict() #2

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #2

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #2

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #2

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #2

declare i32 @PyFile_WriteString(i8*, %struct._object*) #2

declare i32 @_Py_DisplaySourceLine(%struct._object*, %struct._object*, i32, i32) #2

declare void @PyErr_Clear() #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @warnings_warn(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %category = alloca %struct._object*, align 8
  %stack_level = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %category, align 8
  store i64 1, i64* %stack_level, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @warnings_warn.kw_list, i32 0, i32 0), %struct._object** %message, %struct._object** %category, i64* %stack_level)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %message, align 8
  %3 = load %struct._object*, %struct._object** %category, align 8
  %call1 = call %struct._object* @get_category(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %category, align 8
  %4 = load %struct._object*, %struct._object** %category, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %message, align 8
  %6 = load %struct._object*, %struct._object** %category, align 8
  %7 = load i64, i64* %stack_level, align 8
  %call4 = call %struct._object* @do_warn(%struct._object* %5, %struct._object* %6, i64 %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @warnings_warn_explicit(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %category = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %module = alloca %struct._object*, align 8
  %registry = alloca %struct._object*, align 8
  %module_globals = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %loader = alloca %struct._object*, align 8
  %module_name = alloca %struct._object*, align 8
  %source = alloca %struct._object*, align 8
  %source_list = alloca %struct._object*, align 8
  %source_line = alloca %struct._object*, align 8
  %returned = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %module, align 8
  store %struct._object* null, %struct._object** %registry, align 8
  store %struct._object* null, %struct._object** %module_globals, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @warnings_warn_explicit.kwd_list, i32 0, i32 0), %struct._object** %message, %struct._object** %category, %struct._object** %filename, i32* %lineno, %struct._object** %module, %struct._object** %registry, %struct._object** %module_globals)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %module_globals, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.85

if.then.2:                                        ; preds = %if.end
  %call9 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @warnings_warn_explicit.PyId_get_source)
  store %struct._object* %call9, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %call9, null
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.2
  %call12 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @warnings_warn_explicit.PyId_splitlines)
  store %struct._object* %call12, %struct._object** %tmp, align 8
  %cmp13 = icmp eq %struct._object* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %3 = load %struct._object*, %struct._object** %module_globals, align 8
  %call16 = call %struct._object* @PyDict_GetItemString(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %loader, align 8
  %4 = load %struct._object*, %struct._object** %module_globals, align 8
  %call17 = call %struct._object* @PyDict_GetItemString(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %module_name, align 8
  %5 = load %struct._object*, %struct._object** %loader, align 8
  %cmp18 = icmp eq %struct._object* %5, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %6 = load %struct._object*, %struct._object** %module_name, align 8
  %cmp19 = icmp eq %struct._object* %6, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %standard_call

if.end.21:                                        ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %loader, align 8
  %call22 = call i32 @_PyObject_HasAttrId(%struct._object* %7, %struct._Py_Identifier* @warnings_warn_explicit.PyId_get_source)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %standard_call

if.end.25:                                        ; preds = %if.end.21
  %8 = load %struct._object*, %struct._object** %loader, align 8
  %9 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @warnings_warn_explicit.PyId_get_source, i32 0, i32 2), align 8
  %10 = load %struct._object*, %struct._object** %module_name, align 8
  %call26 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %8, %struct._object* %9, %struct._object* %10, i8* null)
  store %struct._object* %call26, %struct._object** %source, align 8
  %11 = load %struct._object*, %struct._object** %source, align 8
  %tobool27 = icmp ne %struct._object* %11, null
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.25
  %12 = load %struct._object*, %struct._object** %source, align 8
  %cmp29 = icmp eq %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.30
  store %struct._object* @_Py_NoneStruct, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.35

if.else.34:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %standard_call

if.end.36:                                        ; preds = %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  %19 = load %struct._object*, %struct._object** %source, align 8
  %20 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @warnings_warn_explicit.PyId_splitlines, i32 0, i32 2), align 8
  %call38 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %19, %struct._object* %20, i8* null)
  store %struct._object* %call38, %struct._object** %source_list, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.37
  %21 = load %struct._object*, %struct._object** %source, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp41, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %23, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %26(%struct._object* %27)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %28 = load %struct._object*, %struct._object** %source_list, align 8
  %tobool51 = icmp ne %struct._object* %28, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %do.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %do.end.50
  %29 = load %struct._object*, %struct._object** %source_list, align 8
  %30 = load i32, i32* %lineno, align 4
  %sub = sub i32 %30, 1
  %conv = sext i32 %sub to i64
  %call54 = call %struct._object* @PyList_GetItem(%struct._object* %29, i64 %conv)
  store %struct._object* %call54, %struct._object** %source_line, align 8
  %31 = load %struct._object*, %struct._object** %source_line, align 8
  %tobool55 = icmp ne %struct._object* %31, null
  br i1 %tobool55, label %if.end.70, label %if.then.56

if.then.56:                                       ; preds = %if.end.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %32 = load %struct._object*, %struct._object** %source_list, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp59, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %34, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.57
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.57
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %37(%struct._object* %38)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.53
  %39 = load %struct._object*, %struct._object** %category, align 8
  %40 = load %struct._object*, %struct._object** %message, align 8
  %41 = load %struct._object*, %struct._object** %filename, align 8
  %42 = load i32, i32* %lineno, align 4
  %43 = load %struct._object*, %struct._object** %module, align 8
  %44 = load %struct._object*, %struct._object** %registry, align 8
  %45 = load %struct._object*, %struct._object** %source_line, align 8
  %call71 = call %struct._object* @warn_explicit(%struct._object* %39, %struct._object* %40, %struct._object* %41, i32 %42, %struct._object* %43, %struct._object* %44, %struct._object* %45)
  store %struct._object* %call71, %struct._object** %returned, align 8
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.70
  %46 = load %struct._object*, %struct._object** %source_list, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp74, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %48, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.72
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.72
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %51(%struct._object* %52)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %53 = load %struct._object*, %struct._object** %returned, align 8
  store %struct._object* %53, %struct._object** %retval
  br label %return

if.end.85:                                        ; preds = %if.end
  br label %standard_call

standard_call:                                    ; preds = %if.end.85, %do.end, %if.then.24, %if.then.20
  %54 = load %struct._object*, %struct._object** %category, align 8
  %55 = load %struct._object*, %struct._object** %message, align 8
  %56 = load %struct._object*, %struct._object** %filename, align 8
  %57 = load i32, i32* %lineno, align 4
  %58 = load %struct._object*, %struct._object** %module, align 8
  %59 = load %struct._object*, %struct._object** %registry, align 8
  %call86 = call %struct._object* @warn_explicit(%struct._object* %54, %struct._object* %55, %struct._object* %56, i32 %57, %struct._object* %58, %struct._object* %59, %struct._object* null)
  store %struct._object* %call86, %struct._object** %retval
  br label %return

return:                                           ; preds = %standard_call, %do.end.84, %do.end.69, %if.then.52, %if.then.28, %if.then.14, %if.then.10, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_category(%struct._object* %message, %struct._object* %category) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  store %struct._object* %message, %struct._object** %message.addr, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  %0 = load %struct._object*, %struct._object** %message.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* %1)
  store i32 %call, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %rc, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %message.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %6 = bitcast %struct._typeobject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %category.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %category.addr, align 8
  %cmp3 = icmp eq %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_UserWarning, align 8
  store %struct._object* %8, %struct._object** %category.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.2
  %9 = load %struct._object*, %struct._object** %category.addr, align 8
  %10 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call7 = call i32 @PyObject_IsSubclass(%struct._object* %9, %struct._object* %10)
  store i32 %call7, i32* %rc, align 4
  %11 = load i32, i32* %rc, align 4
  %cmp8 = icmp eq i32 %11, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %12 = load i32, i32* %rc, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** %category.addr, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.9, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #2

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #2

declare %struct._object* @PyList_New(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @create_filter(%struct._object* %category, i8* %action) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %category.addr = alloca %struct._object*, align 8
  %action.addr = alloca i8*, align 8
  %action_obj = alloca %struct._object*, align 8
  %lineno = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %category, %struct._object** %category.addr, align 8
  store i8* %action, i8** %action.addr, align 8
  store %struct._object* null, %struct._object** %action_obj, align 8
  %0 = load i8*, i8** %action.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @create_filter.ignore_str, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.then
  %call2 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** @create_filter.ignore_str, align 8
  %2 = load %struct._object*, %struct._object** @create_filter.ignore_str, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** @create_filter.ignore_str, align 8
  store %struct._object* %3, %struct._object** %action_obj, align 8
  br label %if.end.42

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %action.addr, align 8
  %call6 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.16, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @create_filter.error_str, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.then.8
  %call11 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** @create_filter.error_str, align 8
  %6 = load %struct._object*, %struct._object** @create_filter.error_str, align 8
  %cmp12 = icmp eq %struct._object* %6, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %7 = load %struct._object*, %struct._object** @create_filter.error_str, align 8
  store %struct._object* %7, %struct._object** %action_obj, align 8
  br label %if.end.41

if.else.16:                                       ; preds = %if.else
  %8 = load i8*, i8** %action.addr, align 8
  %call17 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.27, label %if.then.19

if.then.19:                                       ; preds = %if.else.16
  %9 = load %struct._object*, %struct._object** @create_filter.default_str, align 8
  %cmp20 = icmp eq %struct._object* %9, null
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.then.19
  %call22 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call22, %struct._object** @create_filter.default_str, align 8
  %10 = load %struct._object*, %struct._object** @create_filter.default_str, align 8
  %cmp23 = icmp eq %struct._object* %10, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  %11 = load %struct._object*, %struct._object** @create_filter.default_str, align 8
  store %struct._object* %11, %struct._object** %action_obj, align 8
  br label %if.end.40

if.else.27:                                       ; preds = %if.else.16
  %12 = load i8*, i8** %action.addr, align 8
  %call28 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.38, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  %13 = load %struct._object*, %struct._object** @create_filter.always_str, align 8
  %cmp31 = icmp eq %struct._object* %13, null
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.then.30
  %call33 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* %call33, %struct._object** @create_filter.always_str, align 8
  %14 = load %struct._object*, %struct._object** @create_filter.always_str, align 8
  %cmp34 = icmp eq %struct._object* %14, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.30
  %15 = load %struct._object*, %struct._object** @create_filter.always_str, align 8
  store %struct._object* %15, %struct._object** %action_obj, align 8
  br label %if.end.39

if.else.38:                                       ; preds = %if.else.27
  call void @Py_FatalError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #7
  unreachable

if.end.39:                                        ; preds = %if.end.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.26
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.15
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.5
  %call43 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call43, %struct._object** %lineno, align 8
  %16 = load %struct._object*, %struct._object** %lineno, align 8
  %cmp44 = icmp eq %struct._object* %16, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %17 = load %struct._object*, %struct._object** %action_obj, align 8
  %18 = load %struct._object*, %struct._object** %category.addr, align 8
  %19 = load %struct._object*, %struct._object** %lineno, align 8
  %call47 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 5, %struct._object* %17, %struct._object* @_Py_NoneStruct, %struct._object* %18, %struct._object* @_Py_NoneStruct, %struct._object* %19)
  store %struct._object* %call47, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %20 = load %struct._object*, %struct._object** %lineno, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp48 = icmp ne i64 %dec, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body
  br label %if.end.51

if.else.50:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end

do.end:                                           ; preds = %if.end.51
  %27 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.45, %if.then.35, %if.then.24, %if.then.13, %if.then.4
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139694}
!2 = !{i32 139534}
