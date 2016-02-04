; ModuleID = '_warnings.o.bc'
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
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }

@PyExc_RuntimeWarning = external global %struct._object*, align 8
@warningsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @warnings__doc__, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @warnings_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@_filters = internal unnamed_addr global %struct._object* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@_once_registry = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"_onceregistry\00", align 1
@_default_action = internal unnamed_addr global %struct._object* null, align 8
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
@get_warnings_attr.warnings_str = internal unnamed_addr global %struct._object* null, align 8
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
@create_filter.ignore_str = internal unnamed_addr global %struct._object* null, align 8
@create_filter.error_str = internal unnamed_addr global %struct._object* null, align 8
@create_filter.default_str = internal unnamed_addr global %struct._object* null, align 8
@create_filter.always_str = internal unnamed_addr global %struct._object* null, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"unknown action\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnFormat(%struct._object* %category, i64 %stack_level, i8* %format, ...) #0 {
entry:
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !547, metadata !1131), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !548, metadata !1131), !dbg !1133
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !549, metadata !1131), !dbg !1134
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1135
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !552, metadata !1131), !dbg !1136
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !1137
  call void @llvm.va_start(i8* %0), !dbg !1137
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %format, %struct.__va_list_tag* %arraydecay) #2, !dbg !1138
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !551, metadata !1131), !dbg !1139
  %cmp = icmp eq %struct._object* %call, null, !dbg !1140
  br i1 %cmp, label %if.end.7, label %if.then, !dbg !1141

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !671, metadata !1131) #2, !dbg !1142
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !672, metadata !1131) #2, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !673, metadata !1131) #2, !dbg !1145
  %cmp.i = icmp eq %struct._object* %category, null, !dbg !1146
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1148, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !671, metadata !1131) #2, !dbg !1142
  %.category.i = select i1 %cmp.i, %struct._object* %1, %struct._object* %category, !dbg !1153
  %call.i = call fastcc %struct._object* @do_warn(%struct._object* %call, %struct._object* %.category.i, i64 %stack_level) #2, !dbg !1154
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !674, metadata !1131) #2, !dbg !1155
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !1156
  br i1 %cmp1.i, label %warn_unicode.exit, label %do.body.i, !dbg !1158

do.body.i:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !675, metadata !1131) #2, !dbg !1159
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1161
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1161, !tbaa !1163
  %dec.i = add i64 %2, -1, !dbg !1161
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1161, !tbaa !1163
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !1161
  br i1 %cmp4.i, label %if.else.i, label %warn_unicode.exit, !dbg !1166

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1167
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1167, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1167
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1167, !tbaa !1170
  call void %4(%struct._object* %call.i) #2, !dbg !1167
  br label %warn_unicode.exit, !dbg !1174

warn_unicode.exit:                                ; preds = %if.then, %do.body.i, %if.else.i
  %retval.0.i = phi i32 [ -1, %if.then ], [ 0, %do.body.i ], [ 0, %if.else.i ], !dbg !1174
  call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !550, metadata !1131), !dbg !1175
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !565, metadata !1131), !dbg !1176
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1178
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1178, !tbaa !1163
  %dec = add i64 %5, -1, !dbg !1178
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1178, !tbaa !1163
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1178
  br i1 %cmp4, label %if.else, label %if.end.7, !dbg !1180

if.else:                                          ; preds = %warn_unicode.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1181
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1181, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1181
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1181, !tbaa !1170
  call void %7(%struct._object* %call) #2, !dbg !1181
  br label %if.end.7

if.end.7:                                         ; preds = %entry, %if.else, %warn_unicode.exit
  %ret.0 = phi i32 [ %retval.0.i, %warn_unicode.exit ], [ %retval.0.i, %if.else ], [ -1, %entry ]
  call void @llvm.va_end(i8* %0), !dbg !1183
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1184
  ret i32 %ret.0, !dbg !1185
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnEx(%struct._object* %category, i8* %text, i64 %stack_level) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !573, metadata !1131), !dbg !1186
  tail call void @llvm.dbg.value(metadata i8* %text, i64 0, metadata !574, metadata !1131), !dbg !1187
  tail call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !575, metadata !1131), !dbg !1188
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %text) #2, !dbg !1189
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !577, metadata !1131), !dbg !1190
  %cmp = icmp eq %struct._object* %call, null, !dbg !1191
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1193

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !671, metadata !1131) #2, !dbg !1194
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !672, metadata !1131) #2, !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !673, metadata !1131) #2, !dbg !1197
  %cmp.i = icmp eq %struct._object* %category, null, !dbg !1198
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1199, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !671, metadata !1131) #2, !dbg !1194
  %.category.i = select i1 %cmp.i, %struct._object* %0, %struct._object* %category, !dbg !1200
  %call.i = tail call fastcc %struct._object* @do_warn(%struct._object* %call, %struct._object* %.category.i, i64 %stack_level) #2, !dbg !1201
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !674, metadata !1131) #2, !dbg !1202
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !1203
  br i1 %cmp1.i, label %warn_unicode.exit, label %do.body.i, !dbg !1204

do.body.i:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !675, metadata !1131) #2, !dbg !1205
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1206
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1206, !tbaa !1163
  %dec.i = add i64 %1, -1, !dbg !1206
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1206, !tbaa !1163
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !1206
  br i1 %cmp4.i, label %if.else.i, label %warn_unicode.exit, !dbg !1207

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1208
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1208, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1208
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1208, !tbaa !1170
  tail call void %3(%struct._object* %call.i) #2, !dbg !1208
  br label %warn_unicode.exit, !dbg !1209

warn_unicode.exit:                                ; preds = %if.end, %do.body.i, %if.else.i
  %retval.0.i = phi i32 [ -1, %if.end ], [ 0, %do.body.i ], [ 0, %if.else.i ], !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !576, metadata !1131), !dbg !1210
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !578, metadata !1131), !dbg !1211
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1213
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1213, !tbaa !1163
  %dec = add i64 %4, -1, !dbg !1213
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1213, !tbaa !1163
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1213
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1215

if.else:                                          ; preds = %warn_unicode.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1216
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1216, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1216
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1216, !tbaa !1170
  tail call void %6(%struct._object* %call) #2, !dbg !1216
  br label %cleanup

cleanup:                                          ; preds = %if.else, %warn_unicode.exit, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %retval.0.i, %warn_unicode.exit ], [ %retval.0.i, %if.else ]
  ret i32 %retval.0, !dbg !1218
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyErr_Warn(%struct._object* %category, i8* %text) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !584, metadata !1131), !dbg !1219
  tail call void @llvm.dbg.value(metadata i8* %text, i64 0, metadata !585, metadata !1131), !dbg !1220
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !573, metadata !1131) #2, !dbg !1221
  tail call void @llvm.dbg.value(metadata i8* %text, i64 0, metadata !574, metadata !1131) #2, !dbg !1223
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !575, metadata !1131) #2, !dbg !1224
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* %text) #2, !dbg !1225
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !577, metadata !1131) #2, !dbg !1226
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1227
  br i1 %cmp.i, label %PyErr_WarnEx.exit, label %if.end.i, !dbg !1228

if.end.i:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !671, metadata !1131) #2, !dbg !1229
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !672, metadata !1131) #2, !dbg !1231
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !673, metadata !1131) #2, !dbg !1232
  %cmp.i.i = icmp eq %struct._object* %category, null, !dbg !1233
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1234, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !671, metadata !1131) #2, !dbg !1229
  %.category.i.i = select i1 %cmp.i.i, %struct._object* %0, %struct._object* %category, !dbg !1235
  %call.i.i = tail call fastcc %struct._object* @do_warn(%struct._object* %call.i, %struct._object* %.category.i.i, i64 1) #2, !dbg !1236
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !674, metadata !1131) #2, !dbg !1237
  %cmp1.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1238
  br i1 %cmp1.i.i, label %warn_unicode.exit.i, label %do.body.i.i, !dbg !1239

do.body.i.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !675, metadata !1131) #2, !dbg !1240
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1241
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1241, !tbaa !1163
  %dec.i.i = add i64 %1, -1, !dbg !1241
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1241, !tbaa !1163
  %cmp4.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1241
  br i1 %cmp4.i.i, label %if.else.i.i, label %warn_unicode.exit.i, !dbg !1242

if.else.i.i:                                      ; preds = %do.body.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1243
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1243, !tbaa !1169
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1243
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1243, !tbaa !1170
  tail call void %3(%struct._object* %call.i.i) #2, !dbg !1243
  br label %warn_unicode.exit.i, !dbg !1244

warn_unicode.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i, %if.end.i
  %retval.0.i.i = phi i32 [ -1, %if.end.i ], [ 0, %do.body.i.i ], [ 0, %if.else.i.i ], !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %retval.0.i.i, i64 0, metadata !576, metadata !1131) #2, !dbg !1245
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !578, metadata !1131) #2, !dbg !1246
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1247
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1247, !tbaa !1163
  %dec.i = add i64 %4, -1, !dbg !1247
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1247, !tbaa !1163
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1247
  br i1 %cmp2.i, label %if.else.i, label %PyErr_WarnEx.exit, !dbg !1248

if.else.i:                                        ; preds = %warn_unicode.exit.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1249
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1249, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1249
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1249, !tbaa !1170
  tail call void %6(%struct._object* %call.i) #2, !dbg !1249
  br label %PyErr_WarnEx.exit, !dbg !1250

PyErr_WarnEx.exit:                                ; preds = %entry, %warn_unicode.exit.i, %if.else.i
  %retval.0.i = phi i32 [ -1, %entry ], [ %retval.0.i.i, %warn_unicode.exit.i ], [ %retval.0.i.i, %if.else.i ], !dbg !1250
  ret i32 %retval.0.i, !dbg !1251
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicitObject(%struct._object* %category, %struct._object* %message, %struct._object* %filename, i32 %lineno, %struct._object* %module, %struct._object* %registry) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !590, metadata !1131), !dbg !1252
  tail call void @llvm.dbg.value(metadata %struct._object* %message, i64 0, metadata !591, metadata !1131), !dbg !1253
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !592, metadata !1131), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !593, metadata !1131), !dbg !1255
  tail call void @llvm.dbg.value(metadata %struct._object* %module, i64 0, metadata !594, metadata !1131), !dbg !1256
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !595, metadata !1131), !dbg !1257
  %cmp = icmp eq %struct._object* %category, null, !dbg !1258
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1260, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !590, metadata !1131), !dbg !1252
  %.category = select i1 %cmp, %struct._object* %0, %struct._object* %category, !dbg !1261
  %call = tail call fastcc %struct._object* @warn_explicit(%struct._object* %.category, %struct._object* %message, %struct._object* %filename, i32 %lineno, %struct._object* %module, %struct._object* %registry, %struct._object* null), !dbg !1262
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !596, metadata !1131), !dbg !1263
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1264
  br i1 %cmp1, label %cleanup, label %do.body, !dbg !1266

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !597, metadata !1131), !dbg !1267
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1269
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1163
  %dec = add i64 %1, -1, !dbg !1269
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1163
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1269
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !1271

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1272
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1272, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1272
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1272, !tbaa !1170
  tail call void %3(%struct._object* %call) #2, !dbg !1272
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %do.body ], [ 0, %if.else ]
  ret i32 %retval.0, !dbg !1274
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @warn_explicit(%struct._object* %category, %struct._object* %message, %struct._object* %filename, i32 %lineno, %struct._object* %module, %struct._object* %registry, %struct._object* %sourceline) #0 {
entry:
  %lineno_str.i = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !776, metadata !1131), !dbg !1275
  tail call void @llvm.dbg.value(metadata %struct._object* %message, i64 0, metadata !777, metadata !1131), !dbg !1276
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !778, metadata !1131), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !779, metadata !1131), !dbg !1278
  tail call void @llvm.dbg.value(metadata %struct._object* %module, i64 0, metadata !780, metadata !1131), !dbg !1279
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !781, metadata !1131), !dbg !1280
  tail call void @llvm.dbg.value(metadata %struct._object* %sourceline, i64 0, metadata !782, metadata !1131), !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !783, metadata !1131), !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !784, metadata !1131), !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !785, metadata !1131), !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !786, metadata !1131), !dbg !1285
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !787, metadata !1131), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !855, metadata !1131), !dbg !1287
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !787, metadata !1131), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !787, metadata !1131), !dbg !1286
  %cmp = icmp eq %struct._object* %module, @_Py_NoneStruct, !dbg !1289
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %lineno_str.i, metadata !934, metadata !1131), !dbg !1291
  br i1 %cmp, label %if.then, label %if.end, !dbg !1294

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1295, !tbaa !1163
  %inc = add i64 %0, 1, !dbg !1295
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1295, !tbaa !1163
  br label %cleanup.302, !dbg !1295

if.end:                                           ; preds = %entry
  %tobool = icmp ne %struct._object* %registry, null, !dbg !1296
  br i1 %tobool, label %land.lhs.true, label %if.end.5, !dbg !1298

land.lhs.true:                                    ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %registry, i64 0, i32 1, !dbg !1299
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1299, !tbaa !1169
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1299
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1299, !tbaa !1301
  %and = and i64 %2, 536870912, !dbg !1299
  %cmp1 = icmp eq i64 %and, 0, !dbg !1299
  %cmp3 = icmp ne %struct._object* %registry, @_Py_NoneStruct, !dbg !1302
  %or.cond = and i1 %cmp3, %cmp1, !dbg !1303
  br i1 %or.cond, label %if.then.4, label %if.end.5, !dbg !1303

if.then.4:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1304, !tbaa !1149
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !1306
  br label %cleanup.302, !dbg !1307

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %cmp6 = icmp eq %struct._object* %module, null, !dbg !1308
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1310

if.then.7:                                        ; preds = %if.end.5
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !831, metadata !1131) #2, !dbg !1311
  %call.i = tail call i64 @PyUnicode_GetLength(%struct._object* %filename) #2, !dbg !1314
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !835, metadata !1131) #2, !dbg !1315
  %cmp.i = icmp slt i64 %call.i, 0, !dbg !1316
  br i1 %cmp.i, label %cleanup.302, label %if.end.i, !dbg !1318

if.end.i:                                         ; preds = %if.then.7
  %cmp1.i = icmp eq i64 %call.i, 0, !dbg !1319
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.4.i, !dbg !1321

if.then.2.i:                                      ; preds = %if.end.i
  %call3.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #2, !dbg !1322
  br label %normalize_module.exit, !dbg !1323

if.end.4.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %filename, i64 2, !dbg !1324
  %4 = bitcast %struct._object* %state.i to i32*, !dbg !1324
  %bf.load.i = load i32, i32* %4, align 4, !dbg !1324
  %bf.lshr.i = lshr i32 %bf.load.i, 2, !dbg !1324
  %bf.clear.i = and i32 %bf.lshr.i, 7, !dbg !1324
  tail call void @llvm.dbg.value(metadata i32 %bf.clear.i, i64 0, metadata !833, metadata !1131) #2, !dbg !1325
  %bf.clear8.i = and i32 %bf.load.i, 32, !dbg !1326
  %tobool.i = icmp eq i32 %bf.clear8.i, 0, !dbg !1326
  br i1 %tobool.i, label %cond.false.16.i, label %cond.true.i, !dbg !1326

cond.true.i:                                      ; preds = %if.end.4.i
  %bf.clear12.i = and i32 %bf.load.i, 64, !dbg !1327
  %tobool13.i = icmp ne i32 %bf.clear12.i, 0, !dbg !1327
  %add.ptr.i = getelementptr %struct._object, %struct._object* %filename, i64 3, !dbg !1329
  %5 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !1329
  %add.ptr15.i = getelementptr %struct._object, %struct._object* %filename, i64 4, i32 1, !dbg !1331
  %6 = bitcast %struct._typeobject** %add.ptr15.i to i8*, !dbg !1331
  %cond.i = select i1 %tobool13.i, i8* %5, i8* %6, !dbg !1327
  br label %cond.end.18.i, !dbg !1327

cond.false.16.i:                                  ; preds = %if.end.4.i
  %data17.i = getelementptr inbounds %struct._object, %struct._object* %filename, i64 4, i32 1, !dbg !1333
  %any.i = bitcast %struct._typeobject** %data17.i to i8**, !dbg !1333
  %7 = load i8*, i8** %any.i, align 8, !dbg !1333, !tbaa !1149
  br label %cond.end.18.i, !dbg !1333

cond.end.18.i:                                    ; preds = %cond.false.16.i, %cond.true.i
  %cond19.i = phi i8* [ %7, %cond.false.16.i ], [ %cond.i, %cond.true.i ], !dbg !1326
  tail call void @llvm.dbg.value(metadata i8* %cond19.i, i64 0, metadata !834, metadata !1131) #2, !dbg !1335
  %cmp20.i = icmp sgt i64 %call.i, 2, !dbg !1336
  br i1 %cmp20.i, label %land.lhs.true.i, label %normalize_module.exit.thread509, !dbg !1338

land.lhs.true.i:                                  ; preds = %cond.end.18.i
  %cmp21.i = icmp eq i32 %bf.clear.i, 1, !dbg !1339
  br i1 %cmp21.i, label %cond.true.22.i, label %cond.false.23.i, !dbg !1339

cond.true.22.i:                                   ; preds = %land.lhs.true.i
  %sub.i = add i64 %call.i, -3, !dbg !1340
  %arrayidx.i = getelementptr i8, i8* %cond19.i, i64 %sub.i, !dbg !1340
  %8 = load i8, i8* %arrayidx.i, align 1, !dbg !1340, !tbaa !1342
  %conv.i = zext i8 %8 to i32, !dbg !1340
  br label %cond.end.35.i, !dbg !1340

cond.false.23.i:                                  ; preds = %land.lhs.true.i
  %cmp24.i = icmp eq i32 %bf.clear.i, 2, !dbg !1343
  %sub27.i = add i64 %call.i, -3, !dbg !1345
  br i1 %cmp24.i, label %cond.true.26.i, label %cond.false.30.i, !dbg !1343

cond.true.26.i:                                   ; preds = %cond.false.23.i
  %9 = bitcast i8* %cond19.i to i16*, !dbg !1345
  %arrayidx28.i = getelementptr i16, i16* %9, i64 %sub27.i, !dbg !1345
  %10 = load i16, i16* %arrayidx28.i, align 2, !dbg !1345, !tbaa !1347
  %conv29.i = zext i16 %10 to i32, !dbg !1345
  br label %cond.end.35.i, !dbg !1345

cond.false.30.i:                                  ; preds = %cond.false.23.i
  %11 = bitcast i8* %cond19.i to i32*, !dbg !1349
  %arrayidx32.i = getelementptr i32, i32* %11, i64 %sub27.i, !dbg !1349
  %12 = load i32, i32* %arrayidx32.i, align 4, !dbg !1349, !tbaa !1351
  br label %cond.end.35.i, !dbg !1349

cond.end.35.i:                                    ; preds = %cond.false.30.i, %cond.true.26.i, %cond.true.22.i
  %cond36.i = phi i32 [ %conv.i, %cond.true.22.i ], [ %conv29.i, %cond.true.26.i ], [ %12, %cond.false.30.i ], !dbg !1339
  %cmp37.i = icmp eq i32 %cond36.i, 46, !dbg !1352
  br i1 %cmp37.i, label %land.lhs.true.39.i, label %normalize_module.exit.thread509, !dbg !1355

land.lhs.true.39.i:                               ; preds = %cond.end.35.i
  br i1 %cmp21.i, label %cond.true.42.i, label %cond.false.46.i, !dbg !1356

cond.true.42.i:                                   ; preds = %land.lhs.true.39.i
  %sub43.i = add i64 %call.i, -2, !dbg !1357
  %arrayidx44.i = getelementptr i8, i8* %cond19.i, i64 %sub43.i, !dbg !1357
  %13 = load i8, i8* %arrayidx44.i, align 1, !dbg !1357, !tbaa !1342
  %conv45.i = zext i8 %13 to i32, !dbg !1357
  br label %cond.end.58.i, !dbg !1357

cond.false.46.i:                                  ; preds = %land.lhs.true.39.i
  %cmp47.i = icmp eq i32 %bf.clear.i, 2, !dbg !1358
  %sub50.i = add i64 %call.i, -2, !dbg !1359
  br i1 %cmp47.i, label %cond.true.49.i, label %cond.false.53.i, !dbg !1358

cond.true.49.i:                                   ; preds = %cond.false.46.i
  %14 = bitcast i8* %cond19.i to i16*, !dbg !1359
  %arrayidx51.i = getelementptr i16, i16* %14, i64 %sub50.i, !dbg !1359
  %15 = load i16, i16* %arrayidx51.i, align 2, !dbg !1359, !tbaa !1347
  %conv52.i = zext i16 %15 to i32, !dbg !1359
  br label %cond.end.58.i, !dbg !1359

cond.false.53.i:                                  ; preds = %cond.false.46.i
  %16 = bitcast i8* %cond19.i to i32*, !dbg !1360
  %arrayidx55.i = getelementptr i32, i32* %16, i64 %sub50.i, !dbg !1360
  %17 = load i32, i32* %arrayidx55.i, align 4, !dbg !1360, !tbaa !1351
  br label %cond.end.58.i, !dbg !1360

cond.end.58.i:                                    ; preds = %cond.false.53.i, %cond.true.49.i, %cond.true.42.i
  %cond59.i = phi i32 [ %conv45.i, %cond.true.42.i ], [ %conv52.i, %cond.true.49.i ], [ %17, %cond.false.53.i ], !dbg !1356
  %cmp60.i = icmp eq i32 %cond59.i, 112, !dbg !1361
  br i1 %cmp60.i, label %land.lhs.true.62.i, label %normalize_module.exit.thread509, !dbg !1362

land.lhs.true.62.i:                               ; preds = %cond.end.58.i
  br i1 %cmp21.i, label %cond.true.65.i, label %cond.false.69.i, !dbg !1363

cond.true.65.i:                                   ; preds = %land.lhs.true.62.i
  %sub66.i = add i64 %call.i, -1, !dbg !1364
  %arrayidx67.i = getelementptr i8, i8* %cond19.i, i64 %sub66.i, !dbg !1364
  %18 = load i8, i8* %arrayidx67.i, align 1, !dbg !1364, !tbaa !1342
  %conv68.i = zext i8 %18 to i32, !dbg !1364
  br label %cond.end.81.i, !dbg !1364

cond.false.69.i:                                  ; preds = %land.lhs.true.62.i
  %cmp70.i = icmp eq i32 %bf.clear.i, 2, !dbg !1365
  %sub73.i = add i64 %call.i, -1, !dbg !1366
  br i1 %cmp70.i, label %cond.true.72.i, label %cond.false.76.i, !dbg !1365

cond.true.72.i:                                   ; preds = %cond.false.69.i
  %19 = bitcast i8* %cond19.i to i16*, !dbg !1366
  %arrayidx74.i = getelementptr i16, i16* %19, i64 %sub73.i, !dbg !1366
  %20 = load i16, i16* %arrayidx74.i, align 2, !dbg !1366, !tbaa !1347
  %conv75.i = zext i16 %20 to i32, !dbg !1366
  br label %cond.end.81.i, !dbg !1366

cond.false.76.i:                                  ; preds = %cond.false.69.i
  %21 = bitcast i8* %cond19.i to i32*, !dbg !1367
  %arrayidx78.i = getelementptr i32, i32* %21, i64 %sub73.i, !dbg !1367
  %22 = load i32, i32* %arrayidx78.i, align 4, !dbg !1367, !tbaa !1351
  br label %cond.end.81.i, !dbg !1367

cond.end.81.i:                                    ; preds = %cond.false.76.i, %cond.true.72.i, %cond.true.65.i
  %cond82.i = phi i32 [ %conv68.i, %cond.true.65.i ], [ %conv75.i, %cond.true.72.i ], [ %22, %cond.false.76.i ], !dbg !1363
  %cmp83.i = icmp eq i32 %cond82.i, 121, !dbg !1368
  br i1 %cmp83.i, label %if.then.85.i, label %normalize_module.exit.thread509, !dbg !1369

if.then.85.i:                                     ; preds = %cond.end.81.i
  %sub86.i = add i64 %call.i, -3, !dbg !1370
  %call87.i = tail call %struct._object* @PyUnicode_Substring(%struct._object* %filename, i64 0, i64 %sub86.i) #2, !dbg !1372
  tail call void @llvm.dbg.value(metadata %struct._object* %call87.i, i64 0, metadata !832, metadata !1131) #2, !dbg !1373
  br label %normalize_module.exit, !dbg !1374

normalize_module.exit.thread509:                  ; preds = %cond.end.18.i, %cond.end.35.i, %cond.end.58.i, %cond.end.81.i
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !832, metadata !1131) #2, !dbg !1373
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %filename, i64 0, i32 0, !dbg !1375
  %23 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1375, !tbaa !1163
  %inc.i = add i64 %23, 1, !dbg !1375
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1375, !tbaa !1163
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !780, metadata !1131), !dbg !1279
  br label %if.end.12, !dbg !1377

normalize_module.exit:                            ; preds = %if.then.2.i, %if.then.85.i
  %retval.0.i = phi %struct._object* [ %call3.i, %if.then.2.i ], [ %call87.i, %if.then.85.i ], !dbg !1378
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !780, metadata !1131), !dbg !1279
  %cmp8 = icmp eq %struct._object* %retval.0.i, null, !dbg !1379
  br i1 %cmp8, label %cleanup.302, label %if.end.12, !dbg !1377

if.else:                                          ; preds = %if.end.5
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %module, i64 0, i32 0, !dbg !1381
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1381, !tbaa !1163
  %inc11 = add i64 %24, 1, !dbg !1381
  store i64 %inc11, i64* %ob_refcnt, align 8, !dbg !1381, !tbaa !1163
  br label %if.end.12

if.end.12:                                        ; preds = %normalize_module.exit.thread509, %normalize_module.exit, %if.else
  %module.addr.0 = phi %struct._object* [ %retval.0.i, %normalize_module.exit ], [ %module, %if.else ], [ %filename, %normalize_module.exit.thread509 ]
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %message, i64 0, i32 0, !dbg !1382
  %25 = load i64, i64* %ob_refcnt13, align 8, !dbg !1382, !tbaa !1163
  %inc14 = add i64 %25, 1, !dbg !1382
  store i64 %inc14, i64* %ob_refcnt13, align 8, !dbg !1382, !tbaa !1163
  %26 = load %struct._object*, %struct._object** @PyExc_Warning, align 8, !dbg !1383, !tbaa !1149
  %call15 = tail call i32 @PyObject_IsInstance(%struct._object* %message, %struct._object* %26) #2, !dbg !1384
  tail call void @llvm.dbg.value(metadata i32 %call15, i64 0, metadata !789, metadata !1131), !dbg !1385
  switch i32 %call15, label %if.else.26 [
    i32 -1, label %if.end.265
    i32 1, label %if.then.20
  ], !dbg !1386

if.then.20:                                       ; preds = %if.end.12
  %call21 = tail call %struct._object* @PyObject_Str(%struct._object* %message) #2, !dbg !1387
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !784, metadata !1131), !dbg !1283
  %cmp22 = icmp eq %struct._object* %call21, null, !dbg !1390
  br i1 %cmp22, label %if.end.265, label %if.end.24, !dbg !1392

if.end.24:                                        ; preds = %if.then.20
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %message, i64 0, i32 1, !dbg !1393
  %27 = bitcast %struct._typeobject** %ob_type25 to %struct._object**, !dbg !1393
  %28 = load %struct._object*, %struct._object** %27, align 8, !dbg !1393, !tbaa !1169
  tail call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !776, metadata !1131), !dbg !1275
  br label %if.end.31, !dbg !1394

if.else.26:                                       ; preds = %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %message, i64 0, metadata !784, metadata !1131), !dbg !1283
  %call27 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %category, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct._object* %message) #2, !dbg !1395
  tail call void @llvm.dbg.value(metadata %struct._object* %call27, i64 0, metadata !777, metadata !1131), !dbg !1276
  %cmp28 = icmp eq %struct._object* %call27, null, !dbg !1397
  br i1 %cmp28, label %do.body.231, label %if.end.31, !dbg !1399

if.end.31:                                        ; preds = %if.else.26, %if.end.24
  %text.0 = phi %struct._object* [ %call21, %if.end.24 ], [ %message, %if.else.26 ]
  %message.addr.0 = phi %struct._object* [ %message, %if.end.24 ], [ %call27, %if.else.26 ]
  %category.addr.0 = phi %struct._object* [ %28, %if.end.24 ], [ %category, %if.else.26 ]
  %conv = sext i32 %lineno to i64, !dbg !1400
  %call32 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !1401
  tail call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !786, metadata !1131), !dbg !1285
  %cmp33 = icmp eq %struct._object* %call32, null, !dbg !1402
  br i1 %cmp33, label %do.body.231, label %if.end.36, !dbg !1404

if.end.36:                                        ; preds = %if.end.31
  %call37 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %text.0, %struct._object* %category.addr.0, %struct._object* %call32) #2, !dbg !1405
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !783, metadata !1131), !dbg !1282
  %cmp38 = icmp eq %struct._object* %call37, null, !dbg !1406
  br i1 %cmp38, label %do.body.231, label %if.end.41, !dbg !1408

if.end.41:                                        ; preds = %if.end.36
  %cmp45 = icmp ne %struct._object* %registry, @_Py_NoneStruct, !dbg !1409
  %or.cond309 = and i1 %tobool, %cmp45, !dbg !1411
  br i1 %or.cond309, label %if.end.i.429, label %if.end.58, !dbg !1411

if.end.i.429:                                     ; preds = %if.end.41
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !840, metadata !1131) #2, !dbg !1412
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !841, metadata !1131) #2, !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !842, metadata !1131) #2, !dbg !1416
  %call.i.427 = tail call %struct._object* @PyDict_GetItem(%struct._object* %registry, %struct._object* %call37) #2, !dbg !1417
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.427, i64 0, metadata !843, metadata !1131) #2, !dbg !1418
  %cmp1.i.428 = icmp eq %struct._object* %call.i.427, null, !dbg !1419
  br i1 %cmp1.i.428, label %if.end.58, label %if.then.2.i.431, !dbg !1420

if.then.2.i.431:                                  ; preds = %if.end.i.429
  %call3.i.430 = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.427) #2, !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %call3.i.430, i64 0, metadata !844, metadata !1131) #2, !dbg !1422
  switch i32 %call3.i.430, label %if.end.58 [
    i32 1, label %return_none
    i32 -1, label %do.body.210
  ], !dbg !1423

if.end.58:                                        ; preds = %if.then.2.i.431, %if.end.i.429, %if.end.41
  tail call void @llvm.dbg.value(metadata %struct._object* %category.addr.0, i64 0, metadata !851, metadata !1131) #2, !dbg !1424
  tail call void @llvm.dbg.value(metadata %struct._object* %text.0, i64 0, metadata !852, metadata !1131) #2, !dbg !1425
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !853, metadata !1131) #2, !dbg !1426
  tail call void @llvm.dbg.value(metadata %struct._object* %module.addr.0, i64 0, metadata !854, metadata !1131) #2, !dbg !1427
  %call.i.432 = tail call fastcc %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1428
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.432, i64 0, metadata !858, metadata !1131) #2, !dbg !1429
  %cmp.i.433 = icmp eq %struct._object* %call.i.432, null, !dbg !1430
  br i1 %cmp.i.433, label %if.then.i, label %do.body.i, !dbg !1431

if.then.i:                                        ; preds = %if.end.58
  %call1.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1432
  %tobool.i.434 = icmp eq %struct._object* %call1.i, null, !dbg !1432
  br i1 %tobool.i.434, label %if.end.7.i.436, label %do.body.210, !dbg !1435

do.body.i:                                        ; preds = %if.end.58
  %29 = load %struct._object*, %struct._object** @_filters, align 8, !dbg !1436, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !859, metadata !1131) #2, !dbg !1436
  %ob_refcnt.i.435 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1438
  %30 = load i64, i64* %ob_refcnt.i.435, align 8, !dbg !1438, !tbaa !1163
  %dec.i = add i64 %30, -1, !dbg !1438
  store i64 %dec.i, i64* %ob_refcnt.i.435, align 8, !dbg !1438, !tbaa !1163
  %cmp3.i = icmp eq i64 %dec.i, 0, !dbg !1438
  br i1 %cmp3.i, label %if.else.5.i, label %if.end.7.i.436.thread, !dbg !1440

if.else.5.i:                                      ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1441
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1441, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1441
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1441, !tbaa !1170
  tail call void %32(%struct._object* %29) #2, !dbg !1441
  br label %if.end.7.i.436.thread, !dbg !1443

if.end.7.i.436.thread:                            ; preds = %do.body.i, %if.else.5.i
  store %struct._object* %call.i.432, %struct._object** @_filters, align 8, !dbg !1444, !tbaa !1149
  br label %lor.lhs.false.i, !dbg !1445

if.end.7.i.436:                                   ; preds = %if.then.i
  %.pr.i = load %struct._object*, %struct._object** @_filters, align 8, !dbg !1447, !tbaa !1149
  %cmp8.i = icmp eq %struct._object* %.pr.i, null, !dbg !1448
  br i1 %cmp8.i, label %if.then.11.i, label %lor.lhs.false.i, !dbg !1445

lor.lhs.false.i:                                  ; preds = %if.end.7.i.436.thread, %if.end.7.i.436
  %33 = phi %struct._object* [ %call.i.432, %if.end.7.i.436.thread ], [ %.pr.i, %if.end.7.i.436 ]
  %ob_type9.i = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 1, !dbg !1449
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type9.i, align 8, !dbg !1449, !tbaa !1169
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 19, !dbg !1449
  %35 = load i64, i64* %tp_flags.i, align 8, !dbg !1449, !tbaa !1301
  %and.i = and i64 %35, 33554432, !dbg !1449
  %cmp10.i = icmp eq i64 %and.i, 0, !dbg !1449
  br i1 %cmp10.i, label %if.then.11.i, label %for.cond.preheader.i, !dbg !1451

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %36 = getelementptr inbounds %struct._object, %struct._object* %33, i64 1, i32 0, !dbg !1452
  %37 = load i64, i64* %36, align 8, !dbg !1452, !tbaa !1453
  %cmp13.144.i = icmp sgt i64 %37, 0, !dbg !1454
  br i1 %cmp13.144.i, label %for.body.i.preheader, label %for.end.i, !dbg !1455

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !1456

if.then.11.i:                                     ; preds = %lor.lhs.false.i, %if.end.7.i.436
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1457, !tbaa !1149
  tail call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #2, !dbg !1459
  br label %do.body.210, !dbg !1460

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %39 = phi %struct._object* [ %59, %for.inc.i ], [ %33, %for.body.i.preheader ], !dbg !1443
  %i.0145.i = phi i64 [ %inc.i.439, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !1443
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %39, i64 1, i32 1, !dbg !1456
  %40 = bitcast %struct._typeobject** %ob_item.i to %struct._object***, !dbg !1456
  %41 = load %struct._object**, %struct._object*** %40, align 8, !dbg !1456, !tbaa !1461
  %arrayidx.i.437 = getelementptr %struct._object*, %struct._object** %41, i64 %i.0145.i, !dbg !1456
  %42 = load %struct._object*, %struct._object** %arrayidx.i.437, align 8, !dbg !1456, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !855, metadata !1131), !dbg !1287
  tail call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !787, metadata !1131), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !787, metadata !1131), !dbg !1286
  tail call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !863, metadata !1131) #2, !dbg !1463
  %call15.i = tail call i64 @PyTuple_Size(%struct._object* %42) #2, !dbg !1464
  %cmp16.i = icmp eq i64 %call15.i, 5, !dbg !1466
  br i1 %cmp16.i, label %if.end.19.i, label %if.then.17.i, !dbg !1467

if.then.17.i:                                     ; preds = %for.body.i
  %i.0145.i.lcssa = phi i64 [ %i.0145.i, %for.body.i ]
  %43 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1468, !tbaa !1149
  %call18.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i64 %i.0145.i.lcssa) #2, !dbg !1470
  br label %do.body.210, !dbg !1471

if.end.19.i:                                      ; preds = %for.body.i
  %ob_item20.i = getelementptr inbounds %struct._object, %struct._object* %42, i64 1, i32 1, !dbg !1472
  %arrayidx21.i = bitcast %struct._typeobject** %ob_item20.i to %struct._object**, !dbg !1472
  %44 = load %struct._object*, %struct._object** %arrayidx21.i, align 8, !dbg !1472, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %44, i64 0, metadata !867, metadata !1131) #2, !dbg !1473
  %arrayidx23.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item20.i, i64 1, !dbg !1474
  %45 = bitcast %struct._typeobject** %arrayidx23.i to %struct._object**, !dbg !1474
  %46 = load %struct._object*, %struct._object** %45, align 8, !dbg !1474, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %46, i64 0, metadata !868, metadata !1131) #2, !dbg !1475
  %arrayidx25.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item20.i, i64 2, !dbg !1476
  %47 = bitcast %struct._typeobject** %arrayidx25.i to %struct._object**, !dbg !1476
  %48 = load %struct._object*, %struct._object** %47, align 8, !dbg !1476, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %48, i64 0, metadata !869, metadata !1131) #2, !dbg !1477
  %arrayidx27.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item20.i, i64 3, !dbg !1478
  %49 = bitcast %struct._typeobject** %arrayidx27.i to %struct._object**, !dbg !1478
  %50 = load %struct._object*, %struct._object** %49, align 8, !dbg !1478, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %50, i64 0, metadata !870, metadata !1131) #2, !dbg !1479
  %arrayidx29.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item20.i, i64 4, !dbg !1480
  %51 = bitcast %struct._typeobject** %arrayidx29.i to %struct._object**, !dbg !1480
  %52 = load %struct._object*, %struct._object** %51, align 8, !dbg !1480, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %52, i64 0, metadata !871, metadata !1131) #2, !dbg !1481
  tail call void @llvm.dbg.value(metadata %struct._object* %46, i64 0, metadata !878, metadata !1131) #2, !dbg !1482
  tail call void @llvm.dbg.value(metadata %struct._object* %text.0, i64 0, metadata !879, metadata !1131) #2, !dbg !1484
  %cmp.i.i = icmp eq %struct._object* %46, @_Py_NoneStruct, !dbg !1485
  br i1 %cmp.i.i, label %if.end.33.i, label %if.end.i.i, !dbg !1487

if.end.i.i:                                       ; preds = %if.end.19.i
  %call.i.i = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %46, %struct._Py_Identifier* nonnull @check_matched.PyId_match, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct._object* %text.0) #2, !dbg !1488
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !880, metadata !1131) #2, !dbg !1489
  %cmp1.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1490
  br i1 %cmp1.i.i, label %do.body.210.loopexit, label %if.end.3.i.i, !dbg !1492

if.end.3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i) #2, !dbg !1493
  tail call void @llvm.dbg.value(metadata i32 %call4.i.i, i64 0, metadata !881, metadata !1131) #2, !dbg !1494
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !882, metadata !1131) #2, !dbg !1495
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1497
  %53 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1497, !tbaa !1163
  %dec.i.i = add i64 %53, -1, !dbg !1497
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1497, !tbaa !1163
  %cmp5.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1497
  br i1 %cmp5.i.i, label %if.else.i.i, label %check_matched.exit.i, !dbg !1499

if.else.i.i:                                      ; preds = %if.end.3.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1500
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1500, !tbaa !1169
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 4, !dbg !1500
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1500, !tbaa !1170
  tail call void %55(%struct._object* %call.i.i) #2, !dbg !1500
  br label %check_matched.exit.i, !dbg !1502

check_matched.exit.i:                             ; preds = %if.else.i.i, %if.end.3.i.i
  tail call void @llvm.dbg.value(metadata i32 %call4.i.i, i64 0, metadata !874, metadata !1131) #2, !dbg !1503
  %cmp31.i = icmp eq i32 %call4.i.i, -1, !dbg !1504
  br i1 %cmp31.i, label %do.body.210.loopexit, label %if.end.33.i, !dbg !1506

if.end.33.i:                                      ; preds = %check_matched.exit.i, %if.end.19.i
  %retval.0.i133.i = phi i32 [ %call4.i.i, %check_matched.exit.i ], [ 1, %if.end.19.i ], !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct._object* %50, i64 0, metadata !878, metadata !1131) #2, !dbg !1507
  tail call void @llvm.dbg.value(metadata %struct._object* %module.addr.0, i64 0, metadata !879, metadata !1131) #2, !dbg !1509
  %cmp.i.108.i = icmp eq %struct._object* %50, @_Py_NoneStruct, !dbg !1510
  br i1 %cmp.i.108.i, label %if.end.37.i, label %if.end.i.111.i, !dbg !1511

if.end.i.111.i:                                   ; preds = %if.end.33.i
  %call.i.109.i = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %50, %struct._Py_Identifier* nonnull @check_matched.PyId_match, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct._object* %module.addr.0) #2, !dbg !1512
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.109.i, i64 0, metadata !880, metadata !1131) #2, !dbg !1513
  %cmp1.i.110.i = icmp eq %struct._object* %call.i.109.i, null, !dbg !1514
  br i1 %cmp1.i.110.i, label %do.body.210.loopexit, label %if.end.3.i.116.i, !dbg !1515

if.end.3.i.116.i:                                 ; preds = %if.end.i.111.i
  %call4.i.112.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.109.i) #2, !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %call4.i.112.i, i64 0, metadata !881, metadata !1131) #2, !dbg !1517
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.109.i, i64 0, metadata !882, metadata !1131) #2, !dbg !1518
  %ob_refcnt.i.113.i = getelementptr inbounds %struct._object, %struct._object* %call.i.109.i, i64 0, i32 0, !dbg !1519
  %56 = load i64, i64* %ob_refcnt.i.113.i, align 8, !dbg !1519, !tbaa !1163
  %dec.i.114.i = add i64 %56, -1, !dbg !1519
  store i64 %dec.i.114.i, i64* %ob_refcnt.i.113.i, align 8, !dbg !1519, !tbaa !1163
  %cmp5.i.115.i = icmp eq i64 %dec.i.114.i, 0, !dbg !1519
  br i1 %cmp5.i.115.i, label %if.else.i.119.i, label %check_matched.exit121.i, !dbg !1520

if.else.i.119.i:                                  ; preds = %if.end.3.i.116.i
  %ob_type.i.117.i = getelementptr inbounds %struct._object, %struct._object* %call.i.109.i, i64 0, i32 1, !dbg !1521
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.117.i, align 8, !dbg !1521, !tbaa !1169
  %tp_dealloc.i.118.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !1521
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.118.i, align 8, !dbg !1521, !tbaa !1170
  tail call void %58(%struct._object* %call.i.109.i) #2, !dbg !1521
  br label %check_matched.exit121.i, !dbg !1522

check_matched.exit121.i:                          ; preds = %if.else.i.119.i, %if.end.3.i.116.i
  tail call void @llvm.dbg.value(metadata i32 %call4.i.112.i, i64 0, metadata !875, metadata !1131) #2, !dbg !1523
  %cmp35.i = icmp eq i32 %call4.i.112.i, -1, !dbg !1524
  br i1 %cmp35.i, label %do.body.210.loopexit, label %if.end.37.i, !dbg !1526

if.end.37.i:                                      ; preds = %check_matched.exit121.i, %if.end.33.i
  %retval.0.i.120137.i = phi i32 [ %call4.i.112.i, %check_matched.exit121.i ], [ 1, %if.end.33.i ], !dbg !1443
  %call38.i = tail call i32 @PyObject_IsSubclass(%struct._object* %category.addr.0, %struct._object* %48) #2, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %call38.i, i64 0, metadata !873, metadata !1131) #2, !dbg !1528
  %cmp39.i = icmp eq i32 %call38.i, -1, !dbg !1529
  br i1 %cmp39.i, label %do.body.210.loopexit, label %if.end.41.i, !dbg !1531

if.end.41.i:                                      ; preds = %if.end.37.i
  %call42.i = tail call i64 @PyLong_AsSsize_t(%struct._object* %52) #2, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %call42.i, i64 0, metadata !872, metadata !1131) #2, !dbg !1533
  %cmp43.i = icmp eq i64 %call42.i, -1, !dbg !1534
  br i1 %cmp43.i, label %land.lhs.true.i.438, label %if.end.47.i, !dbg !1536

land.lhs.true.i.438:                              ; preds = %if.end.41.i
  %call44.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1537
  %tobool45.i = icmp eq %struct._object* %call44.i, null, !dbg !1537
  br i1 %tobool45.i, label %if.end.47.i, label %do.body.210.loopexit, !dbg !1539

if.end.47.i:                                      ; preds = %land.lhs.true.i.438, %if.end.41.i
  %tobool48.i = icmp ne i32 %retval.0.i133.i, 0, !dbg !1540
  %tobool50.i = icmp ne i32 %call38.i, 0, !dbg !1542
  %or.cond.i = and i1 %tobool48.i, %tobool50.i, !dbg !1544
  %tobool52.i = icmp ne i32 %retval.0.i.120137.i, 0, !dbg !1545
  %or.cond75.i = and i1 %tobool52.i, %or.cond.i, !dbg !1544
  br i1 %or.cond75.i, label %land.lhs.true.53.i, label %for.inc.i, !dbg !1544

land.lhs.true.53.i:                               ; preds = %if.end.47.i
  %cmp54.i = icmp eq i64 %call42.i, 0, !dbg !1547
  %cmp56.i = icmp eq i64 %call42.i, %conv, !dbg !1548
  %or.cond107.i = or i1 %cmp54.i, %cmp56.i, !dbg !1549
  br i1 %or.cond107.i, label %get_filter.exit.loopexit, label %for.inc.i, !dbg !1549

for.inc.i:                                        ; preds = %land.lhs.true.53.i, %if.end.47.i
  %inc.i.439 = add i64 %i.0145.i, 1, !dbg !1550
  tail call void @llvm.dbg.value(metadata i64 %inc.i.439, i64 0, metadata !857, metadata !1131) #2, !dbg !1551
  %59 = load %struct._object*, %struct._object** @_filters, align 8, !dbg !1452, !tbaa !1149
  %60 = getelementptr inbounds %struct._object, %struct._object* %59, i64 1, i32 0, !dbg !1452
  %61 = load i64, i64* %60, align 8, !dbg !1452, !tbaa !1453
  %cmp13.i = icmp slt i64 %inc.i.439, %61, !dbg !1454
  br i1 %cmp13.i, label %for.body.i, label %for.end.i.loopexit, !dbg !1455

for.end.i.loopexit:                               ; preds = %for.inc.i
  %.lcssa614 = phi %struct._object* [ %42, %for.inc.i ]
  br label %for.end.i, !dbg !1552

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i
  %_Py_NoneStruct507 = phi %struct._object* [ @_Py_NoneStruct, %for.cond.preheader.i ], [ %.lcssa614, %for.end.i.loopexit ]
  %call.i.122.i = tail call fastcc %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0)) #2, !dbg !1552
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.122.i, i64 0, metadata !886, metadata !1131) #2, !dbg !1554
  %cmp.i.123.i = icmp eq %struct._object* %call.i.122.i, null, !dbg !1555
  br i1 %cmp.i.123.i, label %if.then.i.i, label %do.body.i.i, !dbg !1557

if.then.i.i:                                      ; preds = %for.end.i
  %call1.i.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1558
  %tobool.i.i = icmp ne %struct._object* %call1.i.i, null, !dbg !1558
  %62 = load %struct._object*, %struct._object** @_default_action, align 8, !dbg !1561, !tbaa !1149
  %cmp69.i = icmp eq %struct._object* %62, null, !dbg !1562
  %or.cond141.i = or i1 %tobool.i.i, %cmp69.i, !dbg !1443
  br i1 %or.cond141.i, label %if.end.71.i, label %get_filter.exit, !dbg !1443

do.body.i.i:                                      ; preds = %for.end.i
  %63 = load %struct._object*, %struct._object** @_default_action, align 8, !dbg !1564, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %63, i64 0, metadata !887, metadata !1131) #2, !dbg !1564
  %ob_refcnt.i.124.i = getelementptr inbounds %struct._object, %struct._object* %63, i64 0, i32 0, !dbg !1566
  %64 = load i64, i64* %ob_refcnt.i.124.i, align 8, !dbg !1566, !tbaa !1163
  %dec.i.125.i = add i64 %64, -1, !dbg !1566
  store i64 %dec.i.125.i, i64* %ob_refcnt.i.124.i, align 8, !dbg !1566, !tbaa !1163
  %cmp4.i.i = icmp eq i64 %dec.i.125.i, 0, !dbg !1566
  br i1 %cmp4.i.i, label %if.else.i.128.i, label %get_filter.exit.thread513, !dbg !1568

if.else.i.128.i:                                  ; preds = %do.body.i.i
  %ob_type.i.126.i = getelementptr inbounds %struct._object, %struct._object* %63, i64 0, i32 1, !dbg !1569
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.126.i, align 8, !dbg !1569, !tbaa !1169
  %tp_dealloc.i.127.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i64 0, i32 4, !dbg !1569
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.127.i, align 8, !dbg !1569, !tbaa !1170
  tail call void %66(%struct._object* %63) #2, !dbg !1569
  br label %get_filter.exit.thread513, !dbg !1571

get_filter.exit.thread513:                        ; preds = %do.body.i.i, %if.else.i.128.i
  store %struct._object* %call.i.122.i, %struct._object** @_default_action, align 8, !dbg !1572, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.2.i, i64 0, metadata !788, metadata !1131), !dbg !1573
  br label %if.end.64, !dbg !1574

if.end.71.i:                                      ; preds = %if.then.i.i
  %67 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1575, !tbaa !1149
  tail call void @PyErr_SetString(%struct._object* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #2, !dbg !1576
  br label %do.body.210, !dbg !1577

get_filter.exit.loopexit:                         ; preds = %land.lhs.true.53.i
  %.lcssa615 = phi %struct._object* [ %44, %land.lhs.true.53.i ]
  %.lcssa613 = phi %struct._object* [ %42, %land.lhs.true.53.i ]
  br label %get_filter.exit, !dbg !1573

get_filter.exit:                                  ; preds = %get_filter.exit.loopexit, %if.then.i.i
  %_Py_NoneStruct = phi %struct._object* [ %_Py_NoneStruct507, %if.then.i.i ], [ %.lcssa613, %get_filter.exit.loopexit ]
  %retval.2.i = phi %struct._object* [ %62, %if.then.i.i ], [ %.lcssa615, %get_filter.exit.loopexit ], !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.2.i, i64 0, metadata !788, metadata !1131), !dbg !1573
  %cmp61 = icmp eq %struct._object* %retval.2.i, null, !dbg !1578
  br i1 %cmp61, label %do.body.210, label %if.end.64, !dbg !1574

if.end.64:                                        ; preds = %get_filter.exit.thread513, %get_filter.exit
  %retval.2.i516 = phi %struct._object* [ %call.i.122.i, %get_filter.exit.thread513 ], [ %retval.2.i, %get_filter.exit ]
  %_Py_NoneStruct515 = phi %struct._object* [ %_Py_NoneStruct507, %get_filter.exit.thread513 ], [ %_Py_NoneStruct, %get_filter.exit ]
  %call65 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !1580
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1582
  br i1 %cmp66, label %if.then.68, label %if.end.69, !dbg !1583

if.then.68:                                       ; preds = %if.end.64
  tail call void @PyErr_SetObject(%struct._object* %category.addr.0, %struct._object* %message.addr.0) #2, !dbg !1584
  br label %do.body.210, !dbg !1586

if.end.69:                                        ; preds = %if.end.64
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !789, metadata !1131), !dbg !1385
  %call70 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !1587
  %cmp71 = icmp eq i32 %call70, 0, !dbg !1589
  br i1 %cmp71, label %if.then.137, label %if.then.73, !dbg !1590

if.then.73:                                       ; preds = %if.end.69
  br i1 %or.cond309, label %land.lhs.true.79, label %if.else.84, !dbg !1591

land.lhs.true.79:                                 ; preds = %if.then.73
  %call80 = tail call i32 @PyDict_SetItem(%struct._object* %registry, %struct._object* %call37, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1594
  %cmp81 = icmp slt i32 %call80, 0, !dbg !1595
  br i1 %cmp81, label %do.body.210, label %if.else.84, !dbg !1596

if.else.84:                                       ; preds = %land.lhs.true.79, %if.then.73
  %call85 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !1597
  %cmp86 = icmp eq i32 %call85, 0, !dbg !1599
  br i1 %cmp86, label %return_none, label %if.else.89, !dbg !1600

if.else.89:                                       ; preds = %if.else.84
  %call90 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !1601
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1603
  br i1 %cmp91, label %if.then.93, label %if.else.106, !dbg !1604

if.then.93:                                       ; preds = %if.else.89
  %cmp94 = icmp eq %struct._object* %registry, null, !dbg !1605
  %cmp96 = icmp eq %struct._object* %registry, @_Py_NoneStruct, !dbg !1608
  %or.cond311 = or i1 %cmp94, %cmp96, !dbg !1609
  br i1 %or.cond311, label %if.then.98, label %if.end.104, !dbg !1609

if.then.98:                                       ; preds = %if.then.93
  %call.i.440 = tail call fastcc %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #2, !dbg !1610
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.440, i64 0, metadata !891, metadata !1131) #2, !dbg !1613
  %cmp.i.441 = icmp eq %struct._object* %call.i.440, null, !dbg !1614
  br i1 %cmp.i.441, label %if.then.i.444, label %do.body.i.448, !dbg !1616

if.then.i.444:                                    ; preds = %if.then.98
  %call1.i.442 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1617
  %tobool.i.443 = icmp ne %struct._object* %call1.i.442, null, !dbg !1617
  %68 = load %struct._object*, %struct._object** @_once_registry, align 8, !dbg !1620, !tbaa !1149
  %cmp100 = icmp eq %struct._object* %68, null, !dbg !1621
  %or.cond551 = or i1 %tobool.i.443, %cmp100
  tail call void @llvm.dbg.value(metadata %struct._object* %68, i64 0, metadata !781, metadata !1131), !dbg !1280
  br i1 %or.cond551, label %do.body.210, label %if.end.104

do.body.i.448:                                    ; preds = %if.then.98
  %69 = load %struct._object*, %struct._object** @_once_registry, align 8, !dbg !1623, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %69, i64 0, metadata !892, metadata !1131) #2, !dbg !1623
  %ob_refcnt.i.445 = getelementptr inbounds %struct._object, %struct._object* %69, i64 0, i32 0, !dbg !1625
  %70 = load i64, i64* %ob_refcnt.i.445, align 8, !dbg !1625, !tbaa !1163
  %dec.i.446 = add i64 %70, -1, !dbg !1625
  store i64 %dec.i.446, i64* %ob_refcnt.i.445, align 8, !dbg !1625, !tbaa !1163
  %cmp4.i.447 = icmp eq i64 %dec.i.446, 0, !dbg !1625
  br i1 %cmp4.i.447, label %if.else.i.451, label %get_once_registry.exit.thread518, !dbg !1627

if.else.i.451:                                    ; preds = %do.body.i.448
  %ob_type.i.449 = getelementptr inbounds %struct._object, %struct._object* %69, i64 0, i32 1, !dbg !1628
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.449, align 8, !dbg !1628, !tbaa !1169
  %tp_dealloc.i.450 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i64 0, i32 4, !dbg !1628
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.450, align 8, !dbg !1628, !tbaa !1170
  tail call void %72(%struct._object* %69) #2, !dbg !1628
  br label %get_once_registry.exit.thread518, !dbg !1630

get_once_registry.exit.thread518:                 ; preds = %do.body.i.448, %if.else.i.451
  store %struct._object* %call.i.440, %struct._object** @_once_registry, align 8, !dbg !1631, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %68, i64 0, metadata !781, metadata !1131), !dbg !1280
  br label %if.end.104, !dbg !1632

if.end.104:                                       ; preds = %if.then.i.444, %get_once_registry.exit.thread518, %if.then.93
  %registry.addr.0 = phi %struct._object* [ %registry, %if.then.93 ], [ %call.i.440, %get_once_registry.exit.thread518 ], [ %68, %if.then.i.444 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !901, metadata !1131) #2, !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !903, metadata !1131) #2, !dbg !1635
  %call3.i.454 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %text.0, %struct._object* %category.addr.0) #2, !dbg !1636
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.454, i64 0, metadata !902, metadata !1131) #2, !dbg !1638
  tail call void @llvm.dbg.value(metadata %struct._object* %registry.addr.0, i64 0, metadata !840, metadata !1131) #2, !dbg !1639
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.454, i64 0, metadata !841, metadata !1131) #2, !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !842, metadata !1131) #2, !dbg !1642
  %cmp.i.i.455 = icmp eq %struct._object* %call3.i.454, null, !dbg !1643
  br i1 %cmp.i.i.455, label %do.body.210, label %if.end.i.i.458, !dbg !1645

if.end.i.i.458:                                   ; preds = %if.end.104
  %call.i.i.456 = tail call %struct._object* @PyDict_GetItem(%struct._object* %registry.addr.0, %struct._object* %call3.i.454) #2, !dbg !1646
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i.456, i64 0, metadata !843, metadata !1131) #2, !dbg !1647
  %cmp1.i.i.457 = icmp eq %struct._object* %call.i.i.456, null, !dbg !1648
  br i1 %cmp1.i.i.457, label %if.end.7.i.i, label %if.then.2.i.i, !dbg !1649

if.then.2.i.i:                                    ; preds = %if.end.i.i.458
  %call3.i.i = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i.456) #2, !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %call3.i.i, i64 0, metadata !844, metadata !1131) #2, !dbg !1651
  %cmp4.i.i.459 = icmp eq i32 %call3.i.i, 0, !dbg !1652
  br i1 %cmp4.i.i.459, label %if.end.7.i.i, label %do.body.20.i, !dbg !1654

if.end.7.i.i:                                     ; preds = %if.then.2.i.i, %if.end.i.i.458
  %call9.i.i = tail call i32 @PyDict_SetItem(%struct._object* %registry.addr.0, %struct._object* %call3.i.454, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1655
  br label %do.body.20.i, !dbg !1657

do.body.20.i:                                     ; preds = %if.end.7.i.i, %if.then.2.i.i
  %retval.1.i.ph.i = phi i32 [ %call3.i.i, %if.then.2.i.i ], [ %call9.i.i, %if.end.7.i.i ], !dbg !1658
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !905, metadata !1131) #2, !dbg !1659
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.454, i64 0, metadata !910, metadata !1131) #2, !dbg !1661
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.454, i64 0, metadata !912, metadata !1131) #2, !dbg !1663
  %ob_refcnt22.i = getelementptr inbounds %struct._object, %struct._object* %call3.i.454, i64 0, i32 0, !dbg !1665
  %73 = load i64, i64* %ob_refcnt22.i, align 8, !dbg !1665, !tbaa !1163
  %dec23.i = add i64 %73, -1, !dbg !1665
  store i64 %dec23.i, i64* %ob_refcnt22.i, align 8, !dbg !1665, !tbaa !1163
  %cmp24.i.460 = icmp eq i64 %dec23.i, 0, !dbg !1665
  br i1 %cmp24.i.460, label %if.else.26.i, label %if.end.130, !dbg !1667

if.else.26.i:                                     ; preds = %do.body.20.i
  %ob_type27.i = getelementptr inbounds %struct._object, %struct._object* %call3.i.454, i64 0, i32 1, !dbg !1668
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type27.i, align 8, !dbg !1668, !tbaa !1169
  %tp_dealloc28.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !1668
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28.i, align 8, !dbg !1668, !tbaa !1170
  tail call void %75(%struct._object* %call3.i.454) #2, !dbg !1668
  br label %if.end.130, !dbg !1658

if.else.106:                                      ; preds = %if.else.89
  %call107 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #2, !dbg !1670
  %cmp108 = icmp eq i32 %call107, 0, !dbg !1672
  br i1 %cmp108, label %if.then.110, label %if.else.119, !dbg !1673

if.then.110:                                      ; preds = %if.else.106
  br i1 %or.cond309, label %if.then.116, label %if.then.137, !dbg !1674

if.then.116:                                      ; preds = %if.then.110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !901, metadata !1131) #2, !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !903, metadata !1131) #2, !dbg !1679
  %call3.i.461 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %text.0, %struct._object* %category.addr.0) #2, !dbg !1680
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.461, i64 0, metadata !902, metadata !1131) #2, !dbg !1681
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !840, metadata !1131) #2, !dbg !1682
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.461, i64 0, metadata !841, metadata !1131) #2, !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !842, metadata !1131) #2, !dbg !1685
  %cmp.i.i.462 = icmp eq %struct._object* %call3.i.461, null, !dbg !1686
  br i1 %cmp.i.i.462, label %do.body.210, label %if.end.i.i.465, !dbg !1687

if.end.i.i.465:                                   ; preds = %if.then.116
  %call.i.i.463 = tail call %struct._object* @PyDict_GetItem(%struct._object* %registry, %struct._object* %call3.i.461) #2, !dbg !1688
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i.463, i64 0, metadata !843, metadata !1131) #2, !dbg !1689
  %cmp1.i.i.464 = icmp eq %struct._object* %call.i.i.463, null, !dbg !1690
  br i1 %cmp1.i.i.464, label %if.end.7.i.i.470, label %if.then.2.i.i.468, !dbg !1691

if.then.2.i.i.468:                                ; preds = %if.end.i.i.465
  %call3.i.i.466 = tail call i32 @PyObject_IsTrue(%struct._object* %call.i.i.463) #2, !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %call3.i.i.466, i64 0, metadata !844, metadata !1131) #2, !dbg !1693
  %cmp4.i.i.467 = icmp eq i32 %call3.i.i.466, 0, !dbg !1694
  br i1 %cmp4.i.i.467, label %if.end.7.i.i.470, label %do.body.20.i.475, !dbg !1695

if.end.7.i.i.470:                                 ; preds = %if.then.2.i.i.468, %if.end.i.i.465
  %call9.i.i.469 = tail call i32 @PyDict_SetItem(%struct._object* %registry, %struct._object* %call3.i.461, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)) #2, !dbg !1696
  br label %do.body.20.i.475, !dbg !1697

do.body.20.i.475:                                 ; preds = %if.end.7.i.i.470, %if.then.2.i.i.468
  %retval.1.i.ph.i.471 = phi i32 [ %call3.i.i.466, %if.then.2.i.i.468 ], [ %call9.i.i.469, %if.end.7.i.i.470 ], !dbg !1698
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !905, metadata !1131) #2, !dbg !1699
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.461, i64 0, metadata !910, metadata !1131) #2, !dbg !1700
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i.461, i64 0, metadata !912, metadata !1131) #2, !dbg !1701
  %ob_refcnt22.i.472 = getelementptr inbounds %struct._object, %struct._object* %call3.i.461, i64 0, i32 0, !dbg !1702
  %76 = load i64, i64* %ob_refcnt22.i.472, align 8, !dbg !1702, !tbaa !1163
  %dec23.i.473 = add i64 %76, -1, !dbg !1702
  store i64 %dec23.i.473, i64* %ob_refcnt22.i.472, align 8, !dbg !1702, !tbaa !1163
  %cmp24.i.474 = icmp eq i64 %dec23.i.473, 0, !dbg !1702
  br i1 %cmp24.i.474, label %if.else.26.i.478, label %if.end.130, !dbg !1703

if.else.26.i.478:                                 ; preds = %do.body.20.i.475
  %ob_type27.i.476 = getelementptr inbounds %struct._object, %struct._object* %call3.i.461, i64 0, i32 1, !dbg !1704
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type27.i.476, align 8, !dbg !1704, !tbaa !1169
  %tp_dealloc28.i.477 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i64 0, i32 4, !dbg !1704
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28.i.477, align 8, !dbg !1704, !tbaa !1170
  tail call void %78(%struct._object* %call3.i.461) #2, !dbg !1704
  br label %if.end.130, !dbg !1698

if.else.119:                                      ; preds = %if.else.106
  %call120 = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %retval.2.i516, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1705
  %cmp121 = icmp eq i32 %call120, 0, !dbg !1707
  br i1 %cmp121, label %if.then.137, label %if.then.123, !dbg !1708

if.then.123:                                      ; preds = %if.else.119
  %79 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1709, !tbaa !1149
  %call124 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), %struct._object* %retval.2.i516, %struct._object* %_Py_NoneStruct515) #2, !dbg !1711
  br label %do.body.210, !dbg !1712

if.end.130:                                       ; preds = %if.else.26.i.478, %do.body.20.i.475, %if.else.26.i, %do.body.20.i
  %rc.0 = phi i32 [ %retval.1.i.ph.i, %do.body.20.i ], [ %retval.1.i.ph.i, %if.else.26.i ], [ %retval.1.i.ph.i.471, %do.body.20.i.475 ], [ %retval.1.i.ph.i.471, %if.else.26.i.478 ]
  switch i32 %rc.0, label %do.body.210 [
    i32 1, label %return_none
    i32 0, label %if.then.137
  ], !dbg !1713

if.then.137:                                      ; preds = %if.end.69, %if.else.119, %if.then.110, %if.end.130
  %call138 = tail call fastcc %struct._object* @get_warnings_attr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)), !dbg !1714
  tail call void @llvm.dbg.value(metadata %struct._object* %call138, i64 0, metadata !790, metadata !1131), !dbg !1715
  %cmp139 = icmp eq %struct._object* %call138, null, !dbg !1716
  br i1 %cmp139, label %if.then.141, label %if.else.146, !dbg !1717

if.then.141:                                      ; preds = %if.then.137
  %call142 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1718
  %tobool143 = icmp eq %struct._object* %call142, null, !dbg !1718
  br i1 %tobool143, label %if.end.145, label %do.body.210, !dbg !1720

if.end.145:                                       ; preds = %if.then.141
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !927, metadata !1131) #2, !dbg !1721
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !928, metadata !1131) #2, !dbg !1722
  tail call void @llvm.dbg.value(metadata %struct._object* %text.0, i64 0, metadata !929, metadata !1131) #2, !dbg !1723
  tail call void @llvm.dbg.value(metadata %struct._object* %category.addr.0, i64 0, metadata !930, metadata !1131) #2, !dbg !1724
  tail call void @llvm.dbg.value(metadata %struct._object* %sourceline, i64 0, metadata !931, metadata !1131) #2, !dbg !1725
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %lineno_str.i, i64 0, i64 0, !dbg !1726
  call void @llvm.lifetime.start(i64 128, i8* %80) #2, !dbg !1726
  %call.i.481 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %80, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %lineno) #2, !dbg !1727
  %call1.i.482 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %category.addr.0, %struct._Py_Identifier* nonnull @show_warning.PyId___name__) #2, !dbg !1728
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.482, i64 0, metadata !933, metadata !1131) #2, !dbg !1729
  %cmp.i.483 = icmp eq %struct._object* %call1.i.482, null, !dbg !1730
  br i1 %cmp.i.483, label %show_warning.exit, label %if.end.i.485, !dbg !1732

if.end.i.485:                                     ; preds = %if.end.145
  %call2.i = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* nonnull @PyId_stderr) #2, !dbg !1733
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !932, metadata !1131) #2, !dbg !1734
  %cmp3.i.484 = icmp eq %struct._object* %call2.i, null, !dbg !1735
  br i1 %cmp3.i.484, label %if.then.4.i, label %if.end.6.i.487, !dbg !1737

if.then.4.i:                                      ; preds = %if.end.i.485
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1738, !tbaa !1149
  %82 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %81) #6, !dbg !1740
  br label %do.body.127.i, !dbg !1741

if.end.6.i.487:                                   ; preds = %if.end.i.485
  %call7.i = call i32 @PyFile_WriteObject(%struct._object* %filename, %struct._object* %call2.i, i32 1) #2, !dbg !1742
  %cmp8.i.486 = icmp slt i32 %call7.i, 0, !dbg !1744
  br i1 %cmp8.i.486, label %do.body.127.i, label %if.end.10.i, !dbg !1745

if.end.10.i:                                      ; preds = %if.end.6.i.487
  %call12.i = call i32 @PyFile_WriteString(i8* %80, %struct._object* %call2.i) #2, !dbg !1746
  %cmp13.i.488 = icmp slt i32 %call12.i, 0, !dbg !1748
  br i1 %cmp13.i.488, label %do.body.127.i, label %if.end.15.i, !dbg !1749

if.end.15.i:                                      ; preds = %if.end.10.i
  %call16.i = call i32 @PyFile_WriteObject(%struct._object* %call1.i.482, %struct._object* %call2.i, i32 1) #2, !dbg !1750
  %cmp17.i = icmp slt i32 %call16.i, 0, !dbg !1752
  br i1 %cmp17.i, label %do.body.127.i, label %if.end.19.i.490, !dbg !1753

if.end.19.i.490:                                  ; preds = %if.end.15.i
  %call20.i = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %struct._object* %call2.i) #2, !dbg !1754
  %cmp21.i.489 = icmp slt i32 %call20.i, 0, !dbg !1756
  br i1 %cmp21.i.489, label %do.body.127.i, label %if.end.23.i, !dbg !1757

if.end.23.i:                                      ; preds = %if.end.19.i.490
  %call24.i = call i32 @PyFile_WriteObject(%struct._object* %text.0, %struct._object* %call2.i, i32 1) #2, !dbg !1758
  %cmp25.i = icmp slt i32 %call24.i, 0, !dbg !1760
  br i1 %cmp25.i, label %do.body.127.i, label %if.end.27.i, !dbg !1761

if.end.27.i:                                      ; preds = %if.end.23.i
  %call28.i = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %struct._object* %call2.i) #2, !dbg !1762
  %cmp29.i = icmp slt i32 %call28.i, 0, !dbg !1764
  br i1 %cmp29.i, label %do.body.127.i, label %if.then.33.i, !dbg !1765

if.then.33.i:                                     ; preds = %if.end.27.i
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.482, i64 0, metadata !938, metadata !1131) #2, !dbg !1766
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !933, metadata !1131) #2, !dbg !1729
  call void @llvm.dbg.value(metadata %struct._object* %call1.i.482, i64 0, metadata !940, metadata !1131) #2, !dbg !1768
  %ob_refcnt.i.491 = getelementptr inbounds %struct._object, %struct._object* %call1.i.482, i64 0, i32 0, !dbg !1770
  %83 = load i64, i64* %ob_refcnt.i.491, align 8, !dbg !1770, !tbaa !1163
  %dec.i.492 = add i64 %83, -1, !dbg !1770
  store i64 %dec.i.492, i64* %ob_refcnt.i.491, align 8, !dbg !1770, !tbaa !1163
  %cmp35.i.493 = icmp eq i64 %dec.i.492, 0, !dbg !1770
  br i1 %cmp35.i.493, label %if.else.i.496, label %if.end.38.i, !dbg !1772

if.else.i.496:                                    ; preds = %if.then.33.i
  %ob_type.i.494 = getelementptr inbounds %struct._object, %struct._object* %call1.i.482, i64 0, i32 1, !dbg !1773
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.494, align 8, !dbg !1773, !tbaa !1169
  %tp_dealloc.i.495 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i64 0, i32 4, !dbg !1773
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.495, align 8, !dbg !1773, !tbaa !1170
  call void %85(%struct._object* %call1.i.482) #2, !dbg !1773
  br label %if.end.38.i, !dbg !1775

if.end.38.i:                                      ; preds = %if.else.i.496, %if.then.33.i
  %tobool.i.497 = icmp eq %struct._object* %sourceline, null, !dbg !1776
  br i1 %tobool.i.497, label %if.else.120.i, label %if.then.41.i, !dbg !1777

if.then.41.i:                                     ; preds = %if.end.38.i
  %state.i.498 = getelementptr inbounds %struct._object, %struct._object* %sourceline, i64 2, !dbg !1778
  %86 = bitcast %struct._object* %state.i.498 to i32*, !dbg !1778
  %bf.load.i.499 = load i32, i32* %86, align 4, !dbg !1778
  %bf.clear.i.500 = and i32 %bf.load.i.499, 128, !dbg !1778
  %tobool42.i = icmp eq i32 %bf.clear.i.500, 0, !dbg !1778
  br i1 %tobool42.i, label %cond.false.i, label %show_warning.exit, !dbg !1778

cond.false.i:                                     ; preds = %if.then.41.i
  %call43.i = call i32 @_PyUnicode_Ready(%struct._object* %sourceline) #2, !dbg !1780
  %phitmp.i = icmp slt i32 %call43.i, 1, !dbg !1780
  br i1 %phitmp.i, label %show_warning.exit, label %if.end.46.i, !dbg !1782

if.end.46.i:                                      ; preds = %cond.false.i
  %bf.load48.i = load i32, i32* %86, align 4, !dbg !1783
  %bf.lshr49.i = lshr i32 %bf.load48.i, 2, !dbg !1783
  %bf.clear50.i = and i32 %bf.lshr49.i, 7, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %bf.clear50.i, i64 0, metadata !944, metadata !1131) #2, !dbg !1784
  %bf.clear54.i = and i32 %bf.load48.i, 32, !dbg !1785
  %tobool55.i = icmp eq i32 %bf.clear54.i, 0, !dbg !1785
  br i1 %tobool55.i, label %cond.false.67.i, label %cond.true.56.i, !dbg !1785

cond.true.56.i:                                   ; preds = %if.end.46.i
  %bf.clear60.i = and i32 %bf.load48.i, 64, !dbg !1786
  %tobool61.i = icmp ne i32 %bf.clear60.i, 0, !dbg !1786
  %add.ptr.i.501 = getelementptr %struct._object, %struct._object* %sourceline, i64 3, !dbg !1788
  %87 = bitcast %struct._object* %add.ptr.i.501 to i8*, !dbg !1788
  %add.ptr64.i = getelementptr %struct._object, %struct._object* %sourceline, i64 4, i32 1, !dbg !1790
  %88 = bitcast %struct._typeobject** %add.ptr64.i to i8*, !dbg !1790
  %cond66.i = select i1 %tobool61.i, i8* %87, i8* %88, !dbg !1786
  br label %cond.end.69.i, !dbg !1786

cond.false.67.i:                                  ; preds = %if.end.46.i
  %data68.i = getelementptr inbounds %struct._object, %struct._object* %sourceline, i64 4, i32 1, !dbg !1792
  %any.i.502 = bitcast %struct._typeobject** %data68.i to i8**, !dbg !1792
  %89 = load i8*, i8** %any.i.502, align 8, !dbg !1792, !tbaa !1149
  br label %cond.end.69.i, !dbg !1792

cond.end.69.i:                                    ; preds = %cond.false.67.i, %cond.true.56.i
  %cond70.i = phi i8* [ %89, %cond.false.67.i ], [ %cond66.i, %cond.true.56.i ], !dbg !1785
  call void @llvm.dbg.value(metadata i8* %cond70.i, i64 0, metadata !947, metadata !1131) #2, !dbg !1794
  %90 = getelementptr inbounds %struct._object, %struct._object* %sourceline, i64 1, i32 0, !dbg !1795
  %91 = load i64, i64* %90, align 8, !dbg !1795, !tbaa !1796
  call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !949, metadata !1131) #2, !dbg !1799
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !948, metadata !1131) #2, !dbg !1800
  %cmp71.203.i = icmp sgt i64 %91, 0, !dbg !1801
  br i1 %cmp71.203.i, label %for.body.lr.ph.i, label %for.end.i.505, !dbg !1804

for.body.lr.ph.i:                                 ; preds = %cond.end.69.i
  %92 = bitcast i8* %cond70.i to i32*, !dbg !1805
  %93 = bitcast i8* %cond70.i to i16*, !dbg !1808
  switch i32 %bf.clear50.i, label %cond.end.84.i.preheader [
    i32 1, label %cond.end.84.us.i.preheader
    i32 2, label %cond.end.84.us214.i.preheader
  ], !dbg !1775

cond.end.84.us214.i.preheader:                    ; preds = %for.body.lr.ph.i
  br label %cond.end.84.us214.i, !dbg !1808

cond.end.84.us.i.preheader:                       ; preds = %for.body.lr.ph.i
  br label %cond.end.84.us.i, !dbg !1810

cond.end.84.i.preheader:                          ; preds = %for.body.lr.ph.i
  br label %cond.end.84.i, !dbg !1805

cond.end.84.us.i:                                 ; preds = %cond.end.84.us.i.preheader, %for.inc.us.i
  %i.0204.us.i = phi i64 [ %inc.us.i, %for.inc.us.i ], [ 0, %cond.end.84.us.i.preheader ], !dbg !1775
  %arrayidx.us.i = getelementptr i8, i8* %cond70.i, i64 %i.0204.us.i, !dbg !1810
  %94 = load i8, i8* %arrayidx.us.i, align 1, !dbg !1810, !tbaa !1342
  %conv.us.i = zext i8 %94 to i32, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %conv.us.i, i64 0, metadata !950, metadata !1131) #2, !dbg !1812
  switch i32 %conv.us.i, label %for.end.i.505.loopexit597 [
    i32 32, label %for.inc.us.i
    i32 12, label %for.inc.us.i
    i32 9, label %for.inc.us.i
  ], !dbg !1813

for.inc.us.i:                                     ; preds = %cond.end.84.us.i, %cond.end.84.us.i, %cond.end.84.us.i
  %inc.us.i = add nuw nsw i64 %i.0204.us.i, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %inc.us.i, i64 0, metadata !948, metadata !1131) #2, !dbg !1800
  %cmp71.us.i = icmp slt i64 %inc.us.i, %91, !dbg !1801
  br i1 %cmp71.us.i, label %cond.end.84.us.i, label %for.end.i.505.loopexit597, !dbg !1804

cond.end.84.us214.i:                              ; preds = %cond.end.84.us214.i.preheader, %for.inc.us216.i
  %i.0204.us.207.i = phi i64 [ %inc.us.217.i, %for.inc.us216.i ], [ 0, %cond.end.84.us214.i.preheader ], !dbg !1775
  %arrayidx78.us.209.i = getelementptr i16, i16* %93, i64 %i.0204.us.207.i, !dbg !1808
  %95 = load i16, i16* %arrayidx78.us.209.i, align 2, !dbg !1808, !tbaa !1347
  %conv79.us.210.i = zext i16 %95 to i32, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %conv79.us.210.i, i64 0, metadata !950, metadata !1131) #2, !dbg !1812
  switch i32 %conv79.us.210.i, label %for.end.i.505.loopexit599 [
    i32 32, label %for.inc.us216.i
    i32 12, label %for.inc.us216.i
    i32 9, label %for.inc.us216.i
  ], !dbg !1813

for.inc.us216.i:                                  ; preds = %cond.end.84.us214.i, %cond.end.84.us214.i, %cond.end.84.us214.i
  %inc.us.217.i = add nuw nsw i64 %i.0204.us.207.i, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %inc.us.217.i, i64 0, metadata !948, metadata !1131) #2, !dbg !1800
  %cmp71.us.218.i = icmp slt i64 %inc.us.217.i, %91, !dbg !1801
  br i1 %cmp71.us.218.i, label %cond.end.84.us214.i, label %for.end.i.505.loopexit599, !dbg !1804

cond.end.84.i:                                    ; preds = %cond.end.84.i.preheader, %for.inc.i.504
  %i.0204.i = phi i64 [ %inc.i.503, %for.inc.i.504 ], [ 0, %cond.end.84.i.preheader ], !dbg !1775
  %arrayidx81.i = getelementptr i32, i32* %92, i64 %i.0204.i, !dbg !1805
  %96 = load i32, i32* %arrayidx81.i, align 4, !dbg !1805, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !950, metadata !1131) #2, !dbg !1812
  switch i32 %96, label %for.end.i.505.loopexit [
    i32 32, label %for.inc.i.504
    i32 12, label %for.inc.i.504
    i32 9, label %for.inc.i.504
  ], !dbg !1813

for.inc.i.504:                                    ; preds = %cond.end.84.i, %cond.end.84.i, %cond.end.84.i
  %inc.i.503 = add nuw nsw i64 %i.0204.i, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %inc.i.503, i64 0, metadata !948, metadata !1131) #2, !dbg !1800
  %cmp71.i = icmp slt i64 %inc.i.503, %91, !dbg !1801
  br i1 %cmp71.i, label %cond.end.84.i, label %for.end.i.505.loopexit, !dbg !1804

for.end.i.505.loopexit:                           ; preds = %cond.end.84.i, %for.inc.i.504
  %i.0.lcssa.i.ph = phi i64 [ %inc.i.503, %for.inc.i.504 ], [ %i.0204.i, %cond.end.84.i ]
  br label %for.end.i.505, !dbg !1816

for.end.i.505.loopexit597:                        ; preds = %cond.end.84.us.i, %for.inc.us.i
  %i.0.lcssa.i.ph598 = phi i64 [ %inc.us.i, %for.inc.us.i ], [ %i.0204.us.i, %cond.end.84.us.i ]
  br label %for.end.i.505, !dbg !1816

for.end.i.505.loopexit599:                        ; preds = %cond.end.84.us214.i, %for.inc.us216.i
  %i.0.lcssa.i.ph600 = phi i64 [ %inc.us.217.i, %for.inc.us216.i ], [ %i.0204.us.207.i, %cond.end.84.us214.i ]
  br label %for.end.i.505, !dbg !1816

for.end.i.505:                                    ; preds = %for.end.i.505.loopexit599, %for.end.i.505.loopexit597, %for.end.i.505.loopexit, %cond.end.69.i
  %i.0.lcssa.i = phi i64 [ 0, %cond.end.69.i ], [ %i.0.lcssa.i.ph, %for.end.i.505.loopexit ], [ %i.0.lcssa.i.ph598, %for.end.i.505.loopexit597 ], [ %i.0.lcssa.i.ph600, %for.end.i.505.loopexit599 ], !dbg !1775
  %call95.i = call %struct._object* @PyUnicode_Substring(%struct._object* %sourceline, i64 %i.0.lcssa.i, i64 %91) #2, !dbg !1816
  call void @llvm.dbg.value(metadata %struct._object* %call95.i, i64 0, metadata !951, metadata !1131) #2, !dbg !1817
  %cmp96.i = icmp eq %struct._object* %call95.i, null, !dbg !1818
  br i1 %cmp96.i, label %show_warning.exit, label %if.end.99.i, !dbg !1820

if.end.99.i:                                      ; preds = %for.end.i.505
  %call100.i = call i32 @PyFile_WriteObject(%struct._object* %sourceline, %struct._object* %call2.i, i32 1) #2, !dbg !1821
  call void @llvm.dbg.value(metadata %struct._object* %call95.i, i64 0, metadata !952, metadata !1131) #2, !dbg !1822
  %ob_refcnt103.i = getelementptr inbounds %struct._object, %struct._object* %call95.i, i64 0, i32 0, !dbg !1824
  %97 = load i64, i64* %ob_refcnt103.i, align 8, !dbg !1824, !tbaa !1163
  %dec104.i = add i64 %97, -1, !dbg !1824
  store i64 %dec104.i, i64* %ob_refcnt103.i, align 8, !dbg !1824, !tbaa !1163
  %cmp105.i = icmp eq i64 %dec104.i, 0, !dbg !1824
  br i1 %cmp105.i, label %if.else.108.i, label %if.end.111.i, !dbg !1826

if.else.108.i:                                    ; preds = %if.end.99.i
  %ob_type109.i = getelementptr inbounds %struct._object, %struct._object* %call95.i, i64 0, i32 1, !dbg !1827
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type109.i, align 8, !dbg !1827, !tbaa !1169
  %tp_dealloc110.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i64 0, i32 4, !dbg !1827
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110.i, align 8, !dbg !1827, !tbaa !1170
  call void %99(%struct._object* %call95.i) #2, !dbg !1827
  br label %if.end.111.i, !dbg !1775

if.end.111.i:                                     ; preds = %if.else.108.i, %if.end.99.i
  %call114.i = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %struct._object* %call2.i) #2, !dbg !1829
  br label %show_warning.exit, !dbg !1830

if.else.120.i:                                    ; preds = %if.end.38.i
  %call121.i = call i32 @_Py_DisplaySourceLine(%struct._object* %call2.i, %struct._object* %filename, i32 %lineno, i32 2) #2, !dbg !1831
  br label %show_warning.exit, !dbg !1775

do.body.127.i:                                    ; preds = %if.end.27.i, %if.end.23.i, %if.end.19.i.490, %if.end.15.i, %if.end.10.i, %if.end.6.i.487, %if.then.4.i
  %ob_refcnt129.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.482, i64 0, i32 0, !dbg !1833
  %100 = load i64, i64* %ob_refcnt129.i, align 8, !dbg !1833, !tbaa !1163
  %dec130.i = add i64 %100, -1, !dbg !1833
  store i64 %dec130.i, i64* %ob_refcnt129.i, align 8, !dbg !1833, !tbaa !1163
  %cmp131.i = icmp eq i64 %dec130.i, 0, !dbg !1833
  br i1 %cmp131.i, label %if.else.134.i, label %show_warning.exit, !dbg !1835

if.else.134.i:                                    ; preds = %do.body.127.i
  %ob_type135.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.482, i64 0, i32 1, !dbg !1836
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type135.i, align 8, !dbg !1836, !tbaa !1169
  %tp_dealloc136.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i64 0, i32 4, !dbg !1836
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136.i, align 8, !dbg !1836, !tbaa !1170
  call void %102(%struct._object* %call1.i.482) #2, !dbg !1836
  br label %show_warning.exit, !dbg !1775

show_warning.exit:                                ; preds = %if.end.145, %if.then.41.i, %cond.false.i, %for.end.i.505, %if.end.111.i, %if.else.120.i, %do.body.127.i, %if.else.134.i
  call void @PyErr_Clear() #2, !dbg !1838
  call void @llvm.lifetime.end(i64 128, i8* %80) #2, !dbg !1839
  br label %return_none, !dbg !1840

if.else.146:                                      ; preds = %if.then.137
  %call147 = tail call i32 @PyCallable_Check(%struct._object* %call138) #2, !dbg !1841
  %tobool148 = icmp eq i32 %call147, 0, !dbg !1841
  br i1 %tobool148, label %if.then.149, label %if.end.157, !dbg !1842

if.then.149:                                      ; preds = %if.else.146
  %103 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1843, !tbaa !1149
  tail call void @PyErr_SetString(%struct._object* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0)) #2, !dbg !1844
  tail call void @llvm.dbg.value(metadata %struct._object* %call138, i64 0, metadata !796, metadata !1131), !dbg !1845
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %call138, i64 0, i32 0, !dbg !1847
  %104 = load i64, i64* %ob_refcnt150, align 8, !dbg !1847, !tbaa !1163
  %dec = add i64 %104, -1, !dbg !1847
  store i64 %dec, i64* %ob_refcnt150, align 8, !dbg !1847, !tbaa !1163
  %cmp151 = icmp eq i64 %dec, 0, !dbg !1847
  br i1 %cmp151, label %if.else.154, label %do.body.210, !dbg !1849

if.else.154:                                      ; preds = %if.then.149
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %call138, i64 0, i32 1, !dbg !1850
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8, !dbg !1850, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i64 0, i32 4, !dbg !1850
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1850, !tbaa !1170
  tail call void %106(%struct._object* %call138) #2, !dbg !1850
  br label %do.body.210

if.end.157:                                       ; preds = %if.else.146
  %call158 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %call138, %struct._object* %message.addr.0, %struct._object* %category.addr.0, %struct._object* %filename, %struct._object* %call32, i8* null) #2, !dbg !1852
  tail call void @llvm.dbg.value(metadata %struct._object* %call158, i64 0, metadata !793, metadata !1131), !dbg !1853
  tail call void @llvm.dbg.value(metadata %struct._object* %call138, i64 0, metadata !800, metadata !1131), !dbg !1854
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %call138, i64 0, i32 0, !dbg !1856
  %107 = load i64, i64* %ob_refcnt161, align 8, !dbg !1856, !tbaa !1163
  %dec162 = add i64 %107, -1, !dbg !1856
  store i64 %dec162, i64* %ob_refcnt161, align 8, !dbg !1856, !tbaa !1163
  %cmp163 = icmp eq i64 %dec162, 0, !dbg !1856
  br i1 %cmp163, label %if.else.166, label %if.end.169, !dbg !1858

if.else.166:                                      ; preds = %if.end.157
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %call138, i64 0, i32 1, !dbg !1859
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8, !dbg !1859, !tbaa !1169
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i64 0, i32 4, !dbg !1859
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8, !dbg !1859, !tbaa !1170
  tail call void %109(%struct._object* %call138) #2, !dbg !1859
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.157, %if.else.166
  tail call void @llvm.dbg.value(metadata %struct._object* %call158, i64 0, metadata !802, metadata !1131), !dbg !1861
  %cond425 = icmp eq %struct._object* %call158, null, !dbg !1863
  br i1 %cond425, label %do.body.210, label %do.body.176, !dbg !1863

do.body.176:                                      ; preds = %if.end.169
  tail call void @llvm.dbg.value(metadata %struct._object* %call158, i64 0, metadata !804, metadata !1131), !dbg !1864
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %call158, i64 0, i32 0, !dbg !1866
  %110 = load i64, i64* %ob_refcnt178, align 8, !dbg !1866, !tbaa !1163
  %dec179 = add i64 %110, -1, !dbg !1866
  store i64 %dec179, i64* %ob_refcnt178, align 8, !dbg !1866, !tbaa !1163
  %cmp180 = icmp eq i64 %dec179, 0, !dbg !1866
  br i1 %cmp180, label %if.else.183, label %return_none, !dbg !1868

if.else.183:                                      ; preds = %do.body.176
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %call158, i64 0, i32 1, !dbg !1869
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8, !dbg !1869, !tbaa !1169
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i64 0, i32 4, !dbg !1869
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8, !dbg !1869, !tbaa !1170
  tail call void %112(%struct._object* %call158) #2, !dbg !1869
  br label %return_none

return_none:                                      ; preds = %if.then.2.i.431, %if.else.183, %do.body.176, %show_warning.exit, %if.end.130, %if.else.84
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !785, metadata !1131), !dbg !1284
  %113 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1871, !tbaa !1163
  %inc203 = add i64 %113, 1, !dbg !1871
  store i64 %inc203, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1871, !tbaa !1163
  br label %do.body.210, !dbg !1871

do.body.210.loopexit:                             ; preds = %if.end.i.111.i, %if.end.i.i, %check_matched.exit.i, %check_matched.exit121.i, %if.end.37.i, %land.lhs.true.i.438
  br label %do.body.210, !dbg !1872

do.body.210:                                      ; preds = %do.body.210.loopexit, %land.lhs.true.79, %get_filter.exit, %return_none, %if.then.123, %if.then.68, %if.end.130, %if.then.141, %if.end.71.i, %if.then.17.i, %if.end.104, %if.then.116, %if.then.149, %if.else.154, %if.end.169, %if.then.i.444, %if.then.2.i.431, %if.then.i, %if.then.11.i
  %result.0533 = phi %struct._object* [ null, %if.then.11.i ], [ null, %if.then.i ], [ null, %if.then.2.i.431 ], [ @_Py_NoneStruct, %return_none ], [ null, %get_filter.exit ], [ null, %if.then.68 ], [ null, %land.lhs.true.79 ], [ null, %if.then.123 ], [ null, %if.end.130 ], [ null, %if.then.141 ], [ null, %if.end.71.i ], [ null, %if.then.17.i ], [ null, %if.then.i.444 ], [ null, %if.end.104 ], [ null, %if.then.116 ], [ null, %if.then.149 ], [ null, %if.else.154 ], [ null, %if.end.169 ], [ null, %do.body.210.loopexit ]
  call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !809, metadata !1131), !dbg !1872
  %ob_refcnt212 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 0, !dbg !1874
  %114 = load i64, i64* %ob_refcnt212, align 8, !dbg !1874, !tbaa !1163
  %dec213 = add i64 %114, -1, !dbg !1874
  store i64 %dec213, i64* %ob_refcnt212, align 8, !dbg !1874, !tbaa !1163
  %cmp214 = icmp eq i64 %dec213, 0, !dbg !1874
  br i1 %cmp214, label %if.else.217, label %if.end.223, !dbg !1876

if.else.217:                                      ; preds = %do.body.210
  %ob_type218 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 1, !dbg !1877
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type218, align 8, !dbg !1877, !tbaa !1169
  %tp_dealloc219 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i64 0, i32 4, !dbg !1877
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc219, align 8, !dbg !1877, !tbaa !1170
  call void %116(%struct._object* %call37) #2, !dbg !1877
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.217, %do.body.210
  call void @llvm.dbg.value(metadata %struct._object* %text.0, i64 0, metadata !812, metadata !1131), !dbg !1879
  %cmp228 = icmp eq %struct._object* %text.0, null, !dbg !1881
  br i1 %cmp228, label %if.end.244, label %do.body.231, !dbg !1882

do.body.231:                                      ; preds = %if.end.31, %if.end.36, %if.else.26, %if.end.223
  %lineno_obj.0526547 = phi %struct._object* [ %call32, %if.end.223 ], [ null, %if.else.26 ], [ %call32, %if.end.36 ], [ null, %if.end.31 ]
  %result.0527546 = phi %struct._object* [ %result.0533, %if.end.223 ], [ null, %if.else.26 ], [ null, %if.end.36 ], [ null, %if.end.31 ]
  %text.1528545 = phi %struct._object* [ %text.0, %if.end.223 ], [ %message, %if.else.26 ], [ %text.0, %if.end.36 ], [ %text.0, %if.end.31 ]
  %message.addr.1529544 = phi %struct._object* [ %message.addr.0, %if.end.223 ], [ null, %if.else.26 ], [ %message.addr.0, %if.end.36 ], [ %message.addr.0, %if.end.31 ]
  call void @llvm.dbg.value(metadata %struct._object* %text.0, i64 0, metadata !814, metadata !1131), !dbg !1883
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %text.1528545, i64 0, i32 0, !dbg !1885
  %117 = load i64, i64* %ob_refcnt233, align 8, !dbg !1885, !tbaa !1163
  %dec234 = add i64 %117, -1, !dbg !1885
  store i64 %dec234, i64* %ob_refcnt233, align 8, !dbg !1885, !tbaa !1163
  %cmp235 = icmp eq i64 %dec234, 0, !dbg !1885
  br i1 %cmp235, label %if.else.238, label %if.end.244, !dbg !1887

if.else.238:                                      ; preds = %do.body.231
  %ob_type239 = getelementptr inbounds %struct._object, %struct._object* %text.1528545, i64 0, i32 1, !dbg !1888
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type239, align 8, !dbg !1888, !tbaa !1169
  %tp_dealloc240 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i64 0, i32 4, !dbg !1888
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc240, align 8, !dbg !1888, !tbaa !1170
  call void %119(%struct._object* %text.1528545) #2, !dbg !1888
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.238, %do.body.231, %if.end.223
  %lineno_obj.0526541 = phi %struct._object* [ %lineno_obj.0526547, %if.else.238 ], [ %lineno_obj.0526547, %do.body.231 ], [ %call32, %if.end.223 ]
  %result.0527540 = phi %struct._object* [ %result.0527546, %if.else.238 ], [ %result.0527546, %do.body.231 ], [ %result.0533, %if.end.223 ]
  %message.addr.1529539 = phi %struct._object* [ %message.addr.1529544, %if.else.238 ], [ %message.addr.1529544, %do.body.231 ], [ %message.addr.0, %if.end.223 ]
  call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !817, metadata !1131), !dbg !1890
  %cmp249 = icmp eq %struct._object* %lineno_obj.0526541, null, !dbg !1892
  br i1 %cmp249, label %if.end.265, label %do.body.252, !dbg !1893

do.body.252:                                      ; preds = %if.end.244
  call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !819, metadata !1131), !dbg !1894
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %lineno_obj.0526541, i64 0, i32 0, !dbg !1896
  %120 = load i64, i64* %ob_refcnt254, align 8, !dbg !1896, !tbaa !1163
  %dec255 = add i64 %120, -1, !dbg !1896
  store i64 %dec255, i64* %ob_refcnt254, align 8, !dbg !1896, !tbaa !1163
  %cmp256 = icmp eq i64 %dec255, 0, !dbg !1896
  br i1 %cmp256, label %if.else.259, label %if.end.265, !dbg !1898

if.else.259:                                      ; preds = %do.body.252
  %ob_type260 = getelementptr inbounds %struct._object, %struct._object* %lineno_obj.0526541, i64 0, i32 1, !dbg !1899
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type260, align 8, !dbg !1899, !tbaa !1169
  %tp_dealloc261 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i64 0, i32 4, !dbg !1899
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc261, align 8, !dbg !1899, !tbaa !1170
  call void %122(%struct._object* %lineno_obj.0526541) #2, !dbg !1899
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.20, %if.end.12, %if.else.259, %do.body.252, %if.end.244
  %message.addr.1529539550 = phi %struct._object* [ %message.addr.1529539, %if.else.259 ], [ %message.addr.1529539, %do.body.252 ], [ %message.addr.1529539, %if.end.244 ], [ %message, %if.end.12 ], [ %message, %if.then.20 ]
  %result.0527540549 = phi %struct._object* [ %result.0527540, %if.else.259 ], [ %result.0527540, %do.body.252 ], [ %result.0527540, %if.end.244 ], [ null, %if.end.12 ], [ null, %if.then.20 ]
  call void @llvm.dbg.value(metadata %struct._object* %module.addr.0, i64 0, metadata !822, metadata !1131), !dbg !1901
  %ob_refcnt270 = getelementptr inbounds %struct._object, %struct._object* %module.addr.0, i64 0, i32 0, !dbg !1903
  %123 = load i64, i64* %ob_refcnt270, align 8, !dbg !1903, !tbaa !1163
  %dec271 = add i64 %123, -1, !dbg !1903
  store i64 %dec271, i64* %ob_refcnt270, align 8, !dbg !1903, !tbaa !1163
  %cmp272 = icmp eq i64 %dec271, 0, !dbg !1903
  br i1 %cmp272, label %if.else.275, label %if.end.278, !dbg !1905

if.else.275:                                      ; preds = %if.end.265
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %module.addr.0, i64 0, i32 1, !dbg !1906
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8, !dbg !1906, !tbaa !1169
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i64 0, i32 4, !dbg !1906
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8, !dbg !1906, !tbaa !1170
  call void %125(%struct._object* %module.addr.0) #2, !dbg !1906
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.265, %if.else.275
  call void @llvm.dbg.value(metadata %struct._object* %message.addr.0, i64 0, metadata !824, metadata !1131), !dbg !1908
  %cmp283 = icmp eq %struct._object* %message.addr.1529539550, null, !dbg !1910
  br i1 %cmp283, label %cleanup.302, label %do.body.286, !dbg !1911

do.body.286:                                      ; preds = %if.end.278
  call void @llvm.dbg.value(metadata %struct._object* %message.addr.0, i64 0, metadata !826, metadata !1131), !dbg !1912
  %ob_refcnt288 = getelementptr inbounds %struct._object, %struct._object* %message.addr.1529539550, i64 0, i32 0, !dbg !1914
  %126 = load i64, i64* %ob_refcnt288, align 8, !dbg !1914, !tbaa !1163
  %dec289 = add i64 %126, -1, !dbg !1914
  store i64 %dec289, i64* %ob_refcnt288, align 8, !dbg !1914, !tbaa !1163
  %cmp290 = icmp eq i64 %dec289, 0, !dbg !1914
  br i1 %cmp290, label %if.else.293, label %cleanup.302, !dbg !1916

if.else.293:                                      ; preds = %do.body.286
  %ob_type294 = getelementptr inbounds %struct._object, %struct._object* %message.addr.1529539550, i64 0, i32 1, !dbg !1917
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type294, align 8, !dbg !1917, !tbaa !1169
  %tp_dealloc295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i64 0, i32 4, !dbg !1917
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc295, align 8, !dbg !1917, !tbaa !1170
  call void %128(%struct._object* %message.addr.1529539550) #2, !dbg !1917
  br label %cleanup.302

cleanup.302:                                      ; preds = %if.then.7, %if.end.278, %do.body.286, %if.else.293, %normalize_module.exit, %if.then.4, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ null, %if.then.4 ], [ null, %normalize_module.exit ], [ %result.0527540549, %if.else.293 ], [ %result.0527540549, %do.body.286 ], [ %result.0527540549, %if.end.278 ], [ null, %if.then.7 ]
  ret %struct._object* %retval.0, !dbg !1919
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicit(%struct._object* %category, i8* %text, i8* %filename_str, i32 %lineno, i8* %module_str, %struct._object* %registry) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !603, metadata !1131), !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %text, i64 0, metadata !604, metadata !1131), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8* %filename_str, i64 0, metadata !605, metadata !1131), !dbg !1922
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !606, metadata !1131), !dbg !1923
  tail call void @llvm.dbg.value(metadata i8* %module_str, i64 0, metadata !607, metadata !1131), !dbg !1924
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !608, metadata !1131), !dbg !1925
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %text) #2, !dbg !1926
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !609, metadata !1131), !dbg !1927
  %call1 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename_str) #2, !dbg !1928
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !610, metadata !1131), !dbg !1929
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !611, metadata !1131), !dbg !1930
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !612, metadata !1131), !dbg !1931
  %cmp = icmp eq %struct._object* %call, null, !dbg !1932
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1934
  %or.cond = or i1 %cmp, %cmp2, !dbg !1935
  br i1 %or.cond, label %do.body, label %if.end, !dbg !1935

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i8* %module_str, null, !dbg !1936
  br i1 %cmp3, label %if.end.9, label %if.then.4, !dbg !1938

if.then.4:                                        ; preds = %if.end
  %call5 = tail call %struct._object* @PyUnicode_FromString(i8* %module_str) #2, !dbg !1939
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !611, metadata !1131), !dbg !1930
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1941
  br i1 %cmp6, label %do.body, label %if.end.9, !dbg !1943

if.end.9:                                         ; preds = %if.end, %if.then.4
  %module.0 = phi %struct._object* [ %call5, %if.then.4 ], [ null, %if.end ]
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !590, metadata !1131) #2, !dbg !1944
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !591, metadata !1131) #2, !dbg !1946
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !592, metadata !1131) #2, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !593, metadata !1131) #2, !dbg !1948
  tail call void @llvm.dbg.value(metadata %struct._object* %module.0, i64 0, metadata !594, metadata !1131) #2, !dbg !1949
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !595, metadata !1131) #2, !dbg !1950
  %cmp.i = icmp eq %struct._object* %category, null, !dbg !1951
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !1952, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !590, metadata !1131) #2, !dbg !1944
  %.category.i = select i1 %cmp.i, %struct._object* %0, %struct._object* %category, !dbg !1953
  %call.i = tail call fastcc %struct._object* @warn_explicit(%struct._object* %.category.i, %struct._object* %call, %struct._object* %call1, i32 %lineno, %struct._object* %module.0, %struct._object* %registry, %struct._object* null) #2, !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !596, metadata !1131) #2, !dbg !1955
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !1956
  br i1 %cmp1.i, label %do.body, label %do.body.i, !dbg !1957

do.body.i:                                        ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !597, metadata !1131) #2, !dbg !1958
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1959
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1959, !tbaa !1163
  %dec.i = add i64 %1, -1, !dbg !1959
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1959, !tbaa !1163
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !1959
  br i1 %cmp4.i, label %if.else.i, label %do.body, !dbg !1960

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1961
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1961, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1961
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1961, !tbaa !1170
  tail call void %3(%struct._object* %call.i) #2, !dbg !1961
  br label %do.body, !dbg !1962

do.body:                                          ; preds = %if.else.i, %do.body.i, %if.end.9, %entry, %if.then.4
  %ret.0 = phi i32 [ -1, %entry ], [ -1, %if.then.4 ], [ -1, %if.end.9 ], [ 0, %do.body.i ], [ 0, %if.else.i ]
  %module.1 = phi %struct._object* [ null, %entry ], [ null, %if.then.4 ], [ %module.0, %if.end.9 ], [ %module.0, %do.body.i ], [ %module.0, %if.else.i ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !613, metadata !1131), !dbg !1963
  br i1 %cmp, label %if.end.17, label %do.body.13, !dbg !1965

do.body.13:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !615, metadata !1131), !dbg !1966
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1968
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1968, !tbaa !1163
  %dec = add i64 %4, -1, !dbg !1968
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1968, !tbaa !1163
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1968
  br i1 %cmp14, label %if.else, label %if.end.17, !dbg !1970

if.else:                                          ; preds = %do.body.13
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1971
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1971, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1971
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1971, !tbaa !1170
  tail call void %6(%struct._object* %call) #2, !dbg !1971
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %do.body.13, %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %module.1, i64 0, metadata !618, metadata !1131), !dbg !1973
  %cmp22 = icmp eq %struct._object* %module.1, null, !dbg !1975
  br i1 %cmp22, label %if.end.36, label %do.body.24, !dbg !1976

do.body.24:                                       ; preds = %if.end.17
  tail call void @llvm.dbg.value(metadata %struct._object* %module.1, i64 0, metadata !620, metadata !1131), !dbg !1977
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %module.1, i64 0, i32 0, !dbg !1979
  %7 = load i64, i64* %ob_refcnt26, align 8, !dbg !1979, !tbaa !1163
  %dec27 = add i64 %7, -1, !dbg !1979
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1979, !tbaa !1163
  %cmp28 = icmp eq i64 %dec27, 0, !dbg !1979
  br i1 %cmp28, label %if.else.30, label %if.end.36, !dbg !1981

if.else.30:                                       ; preds = %do.body.24
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %module.1, i64 0, i32 1, !dbg !1982
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1982, !tbaa !1169
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1982
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1982, !tbaa !1170
  tail call void %9(%struct._object* %module.1) #2, !dbg !1982
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.30, %do.body.24, %if.end.17
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !623, metadata !1131), !dbg !1984
  br i1 %cmp2, label %if.end.55, label %do.body.43, !dbg !1986

do.body.43:                                       ; preds = %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !625, metadata !1131), !dbg !1987
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1989
  %10 = load i64, i64* %ob_refcnt45, align 8, !dbg !1989, !tbaa !1163
  %dec46 = add i64 %10, -1, !dbg !1989
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !1989, !tbaa !1163
  %cmp47 = icmp eq i64 %dec46, 0, !dbg !1989
  br i1 %cmp47, label %if.else.49, label %if.end.55, !dbg !1991

if.else.49:                                       ; preds = %do.body.43
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1992
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !1992, !tbaa !1169
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1992
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !1992, !tbaa !1170
  tail call void %12(%struct._object* %call1) #2, !dbg !1992
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.49, %do.body.43, %if.end.36
  ret i32 %ret.0, !dbg !1994
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyErr_WarnExplicitFormat(%struct._object* %category, i8* %filename_str, i32 %lineno, i8* %module_str, %struct._object* %registry, i8* %format, ...) #0 {
entry:
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !632, metadata !1131), !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %filename_str, i64 0, metadata !633, metadata !1131), !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !634, metadata !1131), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8* %module_str, i64 0, metadata !635, metadata !1131), !dbg !1998
  tail call void @llvm.dbg.value(metadata %struct._object* %registry, i64 0, metadata !636, metadata !1131), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !637, metadata !1131), !dbg !2000
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !639, metadata !1131), !dbg !2001
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename_str) #2, !dbg !2002
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !640, metadata !1131), !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !641, metadata !1131), !dbg !2004
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !2005
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !642, metadata !1131), !dbg !2006
  %cmp = icmp eq %struct._object* %call, null, !dbg !2007
  br i1 %cmp, label %if.end.69, label %if.end, !dbg !2009

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %module_str, null, !dbg !2010
  br i1 %cmp1, label %if.end.7, label %if.then.2, !dbg !2012

if.then.2:                                        ; preds = %if.end
  %call3 = tail call %struct._object* @PyUnicode_FromString(i8* %module_str) #2, !dbg !2013
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !639, metadata !1131), !dbg !2001
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !2015
  br i1 %cmp4, label %do.body.57, label %if.end.7, !dbg !2017

if.end.7:                                         ; preds = %if.end, %if.then.2
  %module.0 = phi %struct._object* [ %call3, %if.then.2 ], [ null, %if.end ]
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !2018
  call void @llvm.va_start(i8* %0), !dbg !2018
  %call10 = call %struct._object* @PyUnicode_FromFormatV(i8* %format, %struct.__va_list_tag* %arraydecay) #2, !dbg !2019
  call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !638, metadata !1131), !dbg !2020
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !2021
  br i1 %cmp11, label %do.body.35, label %if.then.12, !dbg !2022

if.then.12:                                       ; preds = %if.end.7
  %call13 = call fastcc %struct._object* @warn_explicit(%struct._object* %category, %struct._object* %call10, %struct._object* %call, i32 %lineno, %struct._object* %module.0, %struct._object* %registry, %struct._object* null), !dbg !2023
  call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !643, metadata !1131), !dbg !2024
  call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !646, metadata !1131), !dbg !2025
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !2027
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2027, !tbaa !1163
  %dec = add i64 %1, -1, !dbg !2027
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2027, !tbaa !1163
  %cmp14 = icmp eq i64 %dec, 0, !dbg !2027
  br i1 %cmp14, label %if.else, label %if.end.16, !dbg !2029

if.else:                                          ; preds = %if.then.12
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !2030
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2030, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2030
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2030, !tbaa !1170
  call void %3(%struct._object* %call10) #2, !dbg !2030
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.else
  %cmp17 = icmp eq %struct._object* %call13, null, !dbg !2032
  br i1 %cmp17, label %do.body.35, label %do.body.19, !dbg !2033

do.body.19:                                       ; preds = %if.end.16
  call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !648, metadata !1131), !dbg !2034
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 0, !dbg !2036
  %4 = load i64, i64* %ob_refcnt21, align 8, !dbg !2036, !tbaa !1163
  %dec22 = add i64 %4, -1, !dbg !2036
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2036, !tbaa !1163
  %cmp23 = icmp eq i64 %dec22, 0, !dbg !2036
  br i1 %cmp23, label %if.else.25, label %do.body.35, !dbg !2038

if.else.25:                                       ; preds = %do.body.19
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call13, i64 0, i32 1, !dbg !2039
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2039, !tbaa !1169
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2039
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2039, !tbaa !1170
  call void %6(%struct._object* %call13) #2, !dbg !2039
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.7, %if.else.25, %do.body.19, %if.end.16
  %ret.1 = phi i32 [ -1, %if.end.7 ], [ -1, %if.end.16 ], [ 0, %do.body.19 ], [ 0, %if.else.25 ]
  call void @llvm.va_end(i8* %0), !dbg !2041
  call void @llvm.dbg.value(metadata %struct._object* %module.0, i64 0, metadata !652, metadata !1131), !dbg !2042
  %cmp36 = icmp eq %struct._object* %module.0, null, !dbg !2044
  br i1 %cmp36, label %do.body.57, label %do.body.38, !dbg !2045

do.body.38:                                       ; preds = %do.body.35
  call void @llvm.dbg.value(metadata %struct._object* %module.0, i64 0, metadata !654, metadata !1131), !dbg !2046
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %module.0, i64 0, i32 0, !dbg !2048
  %7 = load i64, i64* %ob_refcnt40, align 8, !dbg !2048, !tbaa !1163
  %dec41 = add i64 %7, -1, !dbg !2048
  store i64 %dec41, i64* %ob_refcnt40, align 8, !dbg !2048, !tbaa !1163
  %cmp42 = icmp eq i64 %dec41, 0, !dbg !2048
  br i1 %cmp42, label %if.else.44, label %do.body.57, !dbg !2050

if.else.44:                                       ; preds = %do.body.38
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %module.0, i64 0, i32 1, !dbg !2051
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !2051, !tbaa !1169
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2051
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8, !dbg !2051, !tbaa !1170
  call void %9(%struct._object* %module.0) #2, !dbg !2051
  br label %do.body.57

do.body.57:                                       ; preds = %do.body.35, %do.body.38, %if.else.44, %if.then.2
  %ret.2102105 = phi i32 [ -1, %if.then.2 ], [ %ret.1, %if.else.44 ], [ %ret.1, %do.body.38 ], [ %ret.1, %do.body.35 ]
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !659, metadata !1131), !dbg !2053
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2055
  %10 = load i64, i64* %ob_refcnt59, align 8, !dbg !2055, !tbaa !1163
  %dec60 = add i64 %10, -1, !dbg !2055
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !2055, !tbaa !1163
  %cmp61 = icmp eq i64 %dec60, 0, !dbg !2055
  br i1 %cmp61, label %if.else.63, label %if.end.69, !dbg !2057

if.else.63:                                       ; preds = %do.body.57
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2058
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2058, !tbaa !1169
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2058
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2058, !tbaa !1170
  call void %12(%struct._object* %call) #2, !dbg !2058
  br label %if.end.69

if.end.69:                                        ; preds = %entry, %if.else.63, %do.body.57
  %ret.2102103 = phi i32 [ %ret.2102105, %if.else.63 ], [ %ret.2102105, %do.body.57 ], [ -1, %entry ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !2060
  ret i32 %ret.2102103, !dbg !2061
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyWarnings_Init() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @warningsmodule, i32 1013) #2, !dbg !2062
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !666, metadata !1131), !dbg !2063
  %cmp = icmp eq %struct._object* %call, null, !dbg !2064
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2066

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** @_filters, align 8, !dbg !2067, !tbaa !1149
  %cmp1 = icmp eq %struct._object* %0, null, !dbg !2069
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !2070

if.then.2:                                        ; preds = %if.end
  %call.i = tail call %struct._object* @PyList_New(i64 5) #2, !dbg !2071
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1008, metadata !1131) #2, !dbg !2074
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2076
  br i1 %cmp.i, label %init_filters.exit.thread, label %if.end.i, !dbg !2078

if.end.i:                                         ; preds = %if.then.2
  %1 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8, !dbg !2079, !tbaa !1149
  %call1.i = tail call fastcc %struct._object* @create_filter(%struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2079
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2079
  %2 = bitcast %struct._typeobject** %ob_item.i to %struct._object***, !dbg !2079
  %3 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2079, !tbaa !1461
  store %struct._object* %call1.i, %struct._object** %3, align 8, !dbg !2079, !tbaa !1149
  %4 = load %struct._object*, %struct._object** @PyExc_PendingDeprecationWarning, align 8, !dbg !2080, !tbaa !1149
  %call2.i = tail call fastcc %struct._object* @create_filter(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %5 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2080, !tbaa !1461
  %arrayidx6.i = getelementptr %struct._object*, %struct._object** %5, i64 1, !dbg !2080
  store %struct._object* %call2.i, %struct._object** %arrayidx6.i, align 8, !dbg !2080, !tbaa !1149
  %6 = load %struct._object*, %struct._object** @PyExc_ImportWarning, align 8, !dbg !2081, !tbaa !1149
  %call7.i = tail call fastcc %struct._object* @create_filter(%struct._object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %7 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2081, !tbaa !1461
  %arrayidx11.i = getelementptr %struct._object*, %struct._object** %7, i64 2, !dbg !2081
  store %struct._object* %call7.i, %struct._object** %arrayidx11.i, align 8, !dbg !2081, !tbaa !1149
  %8 = load i32, i32* @Py_BytesWarningFlag, align 4, !dbg !2082, !tbaa !1351
  %cmp12.i = icmp sgt i32 %8, 1, !dbg !2084
  %tobool.i = icmp eq i32 %8, 0, !dbg !2085
  %..i = select i1 %tobool.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), !dbg !2087
  %bytes_action.0.i = select i1 %cmp12.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %..i, !dbg !2088
  %9 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8, !dbg !2089, !tbaa !1149
  %call18.i = tail call fastcc %struct._object* @create_filter(%struct._object* %9, i8* %bytes_action.0.i) #2, !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %10 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2089, !tbaa !1461
  %arrayidx22.i = getelementptr %struct._object*, %struct._object** %10, i64 3, !dbg !2089
  store %struct._object* %call18.i, %struct._object** %arrayidx22.i, align 8, !dbg !2089, !tbaa !1149
  tail call void @llvm.dbg.value(metadata !2090, i64 0, metadata !1012, metadata !1131) #2, !dbg !2091
  %11 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8, !dbg !2092, !tbaa !1149
  %call23.i = tail call fastcc %struct._object* @create_filter(%struct._object* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1009, metadata !1131) #2, !dbg !2075
  %12 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2092, !tbaa !1461
  %arrayidx27.i = getelementptr %struct._object*, %struct._object** %12, i64 4, !dbg !2092
  store %struct._object* %call23.i, %struct._object** %arrayidx27.i, align 8, !dbg !2092, !tbaa !1149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  %13 = load %struct._object**, %struct._object*** %2, align 8, !dbg !2094, !tbaa !1461
  %14 = load %struct._object*, %struct._object** %13, align 8, !dbg !2094, !tbaa !1149
  %cmp32.i = icmp eq %struct._object* %14, null, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  br i1 %cmp32.i, label %do.body.i, label %for.cond.i, !dbg !2096

for.cond.i:                                       ; preds = %if.end.i
  %arrayidx31.1.i = getelementptr %struct._object*, %struct._object** %13, i64 1, !dbg !2094
  %15 = load %struct._object*, %struct._object** %arrayidx31.1.i, align 8, !dbg !2094, !tbaa !1149
  %cmp32.1.i = icmp eq %struct._object* %15, null, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  br i1 %cmp32.1.i, label %do.body.i, label %for.cond.1.i, !dbg !2096

do.body.i:                                        ; preds = %for.cond.3.i, %for.cond.2.i, %for.cond.1.i, %for.cond.i, %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1013, metadata !1131) #2, !dbg !2097
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2099
  %16 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2099, !tbaa !1163
  %dec.i = add i64 %16, -1, !dbg !2099
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2099, !tbaa !1163
  %cmp34.i = icmp eq i64 %dec.i, 0, !dbg !2099
  br i1 %cmp34.i, label %if.else.36.i, label %init_filters.exit.thread, !dbg !2101

if.else.36.i:                                     ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2102
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2102, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2102
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2102, !tbaa !1170
  tail call void %18(%struct._object* %call.i) #2, !dbg !2102
  br label %init_filters.exit.thread, !dbg !2087

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx31.2.i = getelementptr %struct._object*, %struct._object** %13, i64 2, !dbg !2094
  %19 = load %struct._object*, %struct._object** %arrayidx31.2.i, align 8, !dbg !2094, !tbaa !1149
  %cmp32.2.i = icmp eq %struct._object* %19, null, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  br i1 %cmp32.2.i, label %do.body.i, label %for.cond.2.i, !dbg !2096

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx31.3.i = getelementptr %struct._object*, %struct._object** %13, i64 3, !dbg !2094
  %20 = load %struct._object*, %struct._object** %arrayidx31.3.i, align 8, !dbg !2094, !tbaa !1149
  %cmp32.3.i = icmp eq %struct._object* %20, null, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  br i1 %cmp32.3.i, label %do.body.i, label %for.cond.3.i, !dbg !2096

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx31.4.i = getelementptr %struct._object*, %struct._object** %13, i64 4, !dbg !2094
  %21 = load %struct._object*, %struct._object** %arrayidx31.4.i, align 8, !dbg !2094, !tbaa !1149
  %cmp32.4.i = icmp eq %struct._object* %21, null, !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1010, metadata !1131) #2, !dbg !2093
  br i1 %cmp32.4.i, label %do.body.i, label %init_filters.exit.thread44, !dbg !2096

init_filters.exit.thread44:                       ; preds = %for.cond.3.i
  store %struct._object* %call.i, %struct._object** @_filters, align 8, !dbg !2104, !tbaa !1149
  br label %if.end.7, !dbg !2105

init_filters.exit.thread:                         ; preds = %if.then.2, %do.body.i, %if.else.36.i
  store %struct._object* null, %struct._object** @_filters, align 8, !dbg !2104, !tbaa !1149
  br label %cleanup, !dbg !2105

if.end.7:                                         ; preds = %init_filters.exit.thread44, %if.end
  %22 = phi %struct._object* [ %call.i, %init_filters.exit.thread44 ], [ %0, %if.end ], !dbg !2106
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 0, !dbg !2108
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !2108, !tbaa !1163
  %inc = add i64 %23, 1, !dbg !2108
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2108, !tbaa !1163
  %call8 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct._object* %22) #2, !dbg !2109
  %cmp9 = icmp slt i32 %call8, 0, !dbg !2110
  br i1 %cmp9, label %cleanup, label %if.end.11, !dbg !2111

if.end.11:                                        ; preds = %if.end.7
  %24 = load %struct._object*, %struct._object** @_once_registry, align 8, !dbg !2112, !tbaa !1149
  %cmp12 = icmp eq %struct._object* %24, null, !dbg !2114
  br i1 %cmp12, label %if.then.13, label %if.end.18, !dbg !2115

if.then.13:                                       ; preds = %if.end.11
  %call14 = tail call %struct._object* @PyDict_New() #2, !dbg !2116
  store %struct._object* %call14, %struct._object** @_once_registry, align 8, !dbg !2118, !tbaa !1149
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !2119
  br i1 %cmp15, label %cleanup, label %if.end.18, !dbg !2121

if.end.18:                                        ; preds = %if.then.13, %if.end.11
  %25 = phi %struct._object* [ %call14, %if.then.13 ], [ %24, %if.end.11 ], !dbg !2122
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !2124
  %26 = load i64, i64* %ob_refcnt19, align 8, !dbg !2124, !tbaa !1163
  %inc20 = add i64 %26, 1, !dbg !2124
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !2124, !tbaa !1163
  %call21 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct._object* %25) #2, !dbg !2125
  %cmp22 = icmp slt i32 %call21, 0, !dbg !2126
  br i1 %cmp22, label %cleanup, label %if.end.24, !dbg !2127

if.end.24:                                        ; preds = %if.end.18
  %27 = load %struct._object*, %struct._object** @_default_action, align 8, !dbg !2128, !tbaa !1149
  %cmp25 = icmp eq %struct._object* %27, null, !dbg !2130
  br i1 %cmp25, label %if.then.26, label %if.end.31, !dbg !2131

if.then.26:                                       ; preds = %if.end.24
  %call27 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !2132
  store %struct._object* %call27, %struct._object** @_default_action, align 8, !dbg !2134, !tbaa !1149
  %cmp28 = icmp eq %struct._object* %call27, null, !dbg !2135
  br i1 %cmp28, label %cleanup, label %if.end.31, !dbg !2137

if.end.31:                                        ; preds = %if.then.26, %if.end.24
  %28 = phi %struct._object* [ %call27, %if.then.26 ], [ %27, %if.end.24 ], !dbg !2138
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !2140
  %29 = load i64, i64* %ob_refcnt32, align 8, !dbg !2140, !tbaa !1163
  %inc33 = add i64 %29, 1, !dbg !2140
  store i64 %inc33, i64* %ob_refcnt32, align 8, !dbg !2140, !tbaa !1163
  %call34 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct._object* %28) #2, !dbg !2141
  %cmp35 = icmp slt i32 %call34, 0, !dbg !2142
  %.call = select i1 %cmp35, %struct._object* null, %struct._object* %call, !dbg !2143
  br label %cleanup, !dbg !2143

cleanup:                                          ; preds = %init_filters.exit.thread, %if.end.31, %if.then.26, %if.end.18, %if.then.13, %if.end.7, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end.7 ], [ null, %if.then.13 ], [ null, %if.end.18 ], [ null, %if.then.26 ], [ %.call, %if.end.31 ], [ null, %init_filters.exit.thread ]
  ret %struct._object* %retval.0, !dbg !2144
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @do_warn(%struct._object* %message, %struct._object* %category, i64 %stack_level) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %message, i64 0, metadata !681, metadata !1131), !dbg !2145
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !682, metadata !1131), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !683, metadata !1131), !dbg !2147
  tail call void @llvm.dbg.value(metadata i64 %stack_level, i64 0, metadata !700, metadata !1131) #2, !dbg !2148
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !709, metadata !1131) #2, !dbg !2151
  tail call void @llvm.dbg.value(metadata !2090, i64 0, metadata !717, metadata !1131) #2, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !720, metadata !1131) #2, !dbg !2151
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2152, !tbaa !1149
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !716, metadata !1131) #2, !dbg !2151
  %frame.i = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2155
  %1 = bitcast i8* %frame.i to %struct._frame**, !dbg !2155
  br label %while.cond.i, !dbg !2156

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %f.0.in.i = phi %struct._frame** [ %1, %entry ], [ %f_back.i, %while.cond.i ], !dbg !2157
  %stack_level.addr.0.i = phi i64 [ %stack_level, %entry ], [ %dec.i, %while.cond.i ], !dbg !2157
  %f.0.i = load %struct._frame*, %struct._frame** %f.0.in.i, align 8, !dbg !2155
  %dec.i = add i64 %stack_level.addr.0.i, -1, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64 %dec.i, i64 0, metadata !700, metadata !1131) #2, !dbg !2148
  %cmp.i = icmp sgt i64 %dec.i, 0, !dbg !2161
  %cmp4.i = icmp ne %struct._frame* %f.0.i, null, !dbg !2162
  %2 = and i1 %cmp.i, %cmp4.i, !dbg !2163
  %f_back.i = getelementptr inbounds %struct._frame, %struct._frame* %f.0.i, i64 0, i32 1, !dbg !2164
  br i1 %2, label %while.cond.i, label %while.end.i, !dbg !2165

while.end.i:                                      ; preds = %while.cond.i
  %f.0.i.lcssa = phi %struct._frame* [ %f.0.i, %while.cond.i ]
  %cmp5.i = icmp eq %struct._frame* %f.0.i.lcssa, null, !dbg !2167
  br i1 %cmp5.i, label %if.then.i, label %if.else.i, !dbg !2169

if.then.i:                                        ; preds = %while.end.i
  %call.i = tail call %struct._ts* @PyThreadState_Get() #2, !dbg !2170
  %interp.i = getelementptr inbounds %struct._ts, %struct._ts* %call.i, i64 0, i32 2, !dbg !2172
  %3 = load %struct._is*, %struct._is** %interp.i, align 8, !dbg !2172, !tbaa !2173
  %sysdict.i = getelementptr inbounds %struct._is, %struct._is* %3, i64 0, i32 4, !dbg !2175
  %4 = load %struct._object*, %struct._object** %sysdict.i, align 8, !dbg !2175, !tbaa !2176
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !705, metadata !1131) #2, !dbg !2178
  br label %if.end.i, !dbg !2179

if.else.i:                                        ; preds = %while.end.i
  %f_globals.i = getelementptr inbounds %struct._frame, %struct._frame* %f.0.i.lcssa, i64 0, i32 4, !dbg !2180
  %5 = load %struct._object*, %struct._object** %f_globals.i, align 8, !dbg !2180, !tbaa !2182
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !705, metadata !1131) #2, !dbg !2178
  %call6.i = tail call i32 @PyFrame_GetLineNumber(%struct._frame* %f.0.i.lcssa) #2, !dbg !2184
  br label %if.end.i, !dbg !2157

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %call6.i, %if.else.i ], [ 1, %if.then.i ], !dbg !2157
  %globals.0.i = phi %struct._object* [ %5, %if.else.i ], [ %4, %if.then.i ], !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %storemerge.i, i64 0, metadata !702, metadata !1131), !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %storemerge.i, i64 0, metadata !688, metadata !1131), !dbg !2186
  tail call void @llvm.dbg.value(metadata i32 %storemerge.i, i64 0, metadata !688, metadata !1131), !dbg !2186
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !703, metadata !1131), !dbg !2187
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !685, metadata !1131), !dbg !2188
  %call7.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %globals.0.i, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !2189
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !704, metadata !1131), !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  %cmp8.i = icmp eq %struct._object* %call7.i, null, !dbg !2192
  br i1 %cmp8.i, label %if.then.9.i, label %if.else.19.i, !dbg !2193

if.then.9.i:                                      ; preds = %if.end.i
  %call11.i = tail call %struct._object* @PyDict_New() #2, !dbg !2194
  tail call void @llvm.dbg.value(metadata %struct._object* %call11.i, i64 0, metadata !704, metadata !1131), !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct._object* %call11.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct._object* %call11.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct._object* %call11.i, i64 0, metadata !686, metadata !1131), !dbg !2191
  %cmp12.i = icmp eq %struct._object* %call11.i, null, !dbg !2195
  br i1 %cmp12.i, label %cleanup, label %cleanup.i, !dbg !2197

cleanup.i:                                        ; preds = %if.then.9.i
  %call15.i = tail call i32 @PyDict_SetItemString(%struct._object* %globals.0.i, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct._object* %call11.i) #2, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %call15.i, i64 0, metadata !722, metadata !1131) #2, !dbg !2199
  %cmp16.i = icmp slt i32 %call15.i, 0, !dbg !2200
  br i1 %cmp16.i, label %do.body.408.i, label %if.end.20.i, !dbg !2157

if.else.19.i:                                     ; preds = %if.end.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call7.i, i64 0, i32 0, !dbg !2202
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2202, !tbaa !1163
  %inc.i = add i64 %6, 1, !dbg !2202
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2202, !tbaa !1163
  br label %if.end.20.i, !dbg !2157

if.end.20.i:                                      ; preds = %if.else.19.i, %cleanup.i
  %registry.0.55 = phi %struct._object* [ %call7.i, %if.else.19.i ], [ %call11.i, %cleanup.i ]
  %call21.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %globals.0.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !2203
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !703, metadata !1131), !dbg !2187
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  %cmp22.i = icmp eq %struct._object* %call21.i, null, !dbg !2204
  br i1 %cmp22.i, label %if.then.23.i, label %if.else.28.i, !dbg !2206

if.then.23.i:                                     ; preds = %if.end.20.i
  %call24.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !2207
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !703, metadata !1131), !dbg !2187
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !685, metadata !1131), !dbg !2188
  %cmp25.i = icmp eq %struct._object* %call24.i, null, !dbg !2209
  br i1 %cmp25.i, label %do.body.408.i, label %if.end.31.i, !dbg !2211

if.else.28.i:                                     ; preds = %if.end.20.i
  %ob_refcnt29.i = getelementptr inbounds %struct._object, %struct._object* %call21.i, i64 0, i32 0, !dbg !2212
  %7 = load i64, i64* %ob_refcnt29.i, align 8, !dbg !2212, !tbaa !1163
  %inc30.i = add i64 %7, 1, !dbg !2212
  store i64 %inc30.i, i64* %ob_refcnt29.i, align 8, !dbg !2212, !tbaa !1163
  br label %if.end.31.i, !dbg !2157

if.end.31.i:                                      ; preds = %if.else.28.i, %if.then.23.i
  %module.0.59 = phi %struct._object* [ %call21.i, %if.else.28.i ], [ %call24.i, %if.then.23.i ]
  %call32.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %globals.0.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !2213
  tail call void @llvm.dbg.value(metadata %struct._object* %call32.i, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %call32.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call32.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call32.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  %cmp33.i = icmp eq %struct._object* %call32.i, null, !dbg !2216
  br i1 %cmp33.i, label %if.else.318.i, label %land.lhs.true.i, !dbg !2217

land.lhs.true.i:                                  ; preds = %if.end.31.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call32.i, i64 0, i32 1, !dbg !2218
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2218, !tbaa !1169
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 19, !dbg !2218
  %9 = load i64, i64* %tp_flags.i, align 8, !dbg !2218, !tbaa !1301
  %and.i = and i64 %9, 268435456, !dbg !2218
  %cmp34.i = icmp eq i64 %and.i, 0, !dbg !2218
  br i1 %cmp34.i, label %if.else.318.i, label %if.then.35.i, !dbg !2220

if.then.35.i:                                     ; preds = %land.lhs.true.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call32.i, i64 2, !dbg !2221
  %10 = bitcast %struct._object* %state.i to i32*, !dbg !2221
  %bf.load.i = load i32, i32* %10, align 4, !dbg !2221
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !2221
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !2221
  br i1 %tobool.i, label %cond.end.i, label %if.end.42.i, !dbg !2221

cond.end.i:                                       ; preds = %if.then.35.i
  %call39.i = tail call i32 @_PyUnicode_Ready(%struct._object* %call32.i) #2, !dbg !2223
  %tobool40.i = icmp eq i32 %call39.i, 0, !dbg !2225
  br i1 %tobool40.i, label %if.end.42.i, label %do.body.408.i, !dbg !2228

if.end.42.i:                                      ; preds = %cond.end.i, %if.then.35.i
  %call43.i = tail call i64 @PyUnicode_GetLength(%struct._object* %call32.i) #2, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %call43.i, i64 0, metadata !725, metadata !1131) #2, !dbg !2230
  %bf.load45.i = load i32, i32* %10, align 4, !dbg !2231
  %bf.lshr46.i = lshr i32 %bf.load45.i, 2, !dbg !2231
  %bf.clear47.i = and i32 %bf.lshr46.i, 7, !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 %bf.clear47.i, i64 0, metadata !728, metadata !1131) #2, !dbg !2232
  %bf.clear51.i = and i32 %bf.load45.i, 32, !dbg !2233
  %tobool52.i = icmp eq i32 %bf.clear51.i, 0, !dbg !2233
  br i1 %tobool52.i, label %cond.false.64.i, label %cond.true.53.i, !dbg !2233

cond.true.53.i:                                   ; preds = %if.end.42.i
  %bf.clear57.i = and i32 %bf.load45.i, 64, !dbg !2234
  %tobool58.i = icmp ne i32 %bf.clear57.i, 0, !dbg !2234
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call32.i, i64 3, !dbg !2236
  %11 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !2236
  %add.ptr61.i = getelementptr %struct._object, %struct._object* %call32.i, i64 4, i32 1, !dbg !2238
  %12 = bitcast %struct._typeobject** %add.ptr61.i to i8*, !dbg !2238
  %cond63.i = select i1 %tobool58.i, i8* %11, i8* %12, !dbg !2234
  br label %cond.end.66.i, !dbg !2234

cond.false.64.i:                                  ; preds = %if.end.42.i
  %data65.i = getelementptr inbounds %struct._object, %struct._object* %call32.i, i64 4, i32 1, !dbg !2240
  %any.i = bitcast %struct._typeobject** %data65.i to i8**, !dbg !2240
  %13 = load i8*, i8** %any.i, align 8, !dbg !2240, !tbaa !1149
  br label %cond.end.66.i, !dbg !2240

cond.end.66.i:                                    ; preds = %cond.false.64.i, %cond.true.53.i
  %cond67.i = phi i8* [ %13, %cond.false.64.i ], [ %cond63.i, %cond.true.53.i ], !dbg !2233
  tail call void @llvm.dbg.value(metadata i8* %cond67.i, i64 0, metadata !729, metadata !1131) #2, !dbg !2242
  %cmp68.i = icmp sgt i64 %call43.i, 3, !dbg !2243
  br i1 %cmp68.i, label %land.lhs.true.69.i, label %if.else.309.i, !dbg !2245

land.lhs.true.69.i:                               ; preds = %cond.end.66.i
  %cmp70.i = icmp eq i32 %bf.clear47.i, 1, !dbg !2246
  br i1 %cmp70.i, label %cond.true.71.i, label %cond.false.72.i, !dbg !2246

cond.true.71.i:                                   ; preds = %land.lhs.true.69.i
  %sub.i = add i64 %call43.i, -4, !dbg !2247
  %arrayidx.i = getelementptr i8, i8* %cond67.i, i64 %sub.i, !dbg !2247
  %14 = load i8, i8* %arrayidx.i, align 1, !dbg !2247, !tbaa !1342
  %conv.i = zext i8 %14 to i32, !dbg !2247
  br label %cond.end.84.i, !dbg !2247

cond.false.72.i:                                  ; preds = %land.lhs.true.69.i
  %cmp73.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2249
  %sub76.i = add i64 %call43.i, -4, !dbg !2251
  br i1 %cmp73.i, label %cond.true.75.i, label %cond.false.79.i, !dbg !2249

cond.true.75.i:                                   ; preds = %cond.false.72.i
  %15 = bitcast i8* %cond67.i to i16*, !dbg !2251
  %arrayidx77.i = getelementptr i16, i16* %15, i64 %sub76.i, !dbg !2251
  %16 = load i16, i16* %arrayidx77.i, align 2, !dbg !2251, !tbaa !1347
  %conv78.i = zext i16 %16 to i32, !dbg !2251
  br label %cond.end.84.i, !dbg !2251

cond.false.79.i:                                  ; preds = %cond.false.72.i
  %17 = bitcast i8* %cond67.i to i32*, !dbg !2253
  %arrayidx81.i = getelementptr i32, i32* %17, i64 %sub76.i, !dbg !2253
  %18 = load i32, i32* %arrayidx81.i, align 4, !dbg !2253, !tbaa !1351
  br label %cond.end.84.i, !dbg !2253

cond.end.84.i:                                    ; preds = %cond.false.79.i, %cond.true.75.i, %cond.true.71.i
  %cond85.i = phi i32 [ %conv.i, %cond.true.71.i ], [ %conv78.i, %cond.true.75.i ], [ %18, %cond.false.79.i ], !dbg !2246
  %cmp86.i = icmp eq i32 %cond85.i, 46, !dbg !2255
  br i1 %cmp86.i, label %land.lhs.true.88.i, label %if.else.309.i, !dbg !2258

land.lhs.true.88.i:                               ; preds = %cond.end.84.i
  br i1 %cmp70.i, label %cond.true.91.i, label %cond.false.95.i, !dbg !2259

cond.true.91.i:                                   ; preds = %land.lhs.true.88.i
  %sub92.i = add i64 %call43.i, -3, !dbg !2260
  %arrayidx93.i = getelementptr i8, i8* %cond67.i, i64 %sub92.i, !dbg !2260
  %19 = load i8, i8* %arrayidx93.i, align 1, !dbg !2260, !tbaa !1342
  %conv94.i = zext i8 %19 to i32, !dbg !2260
  br label %cond.end.107.i, !dbg !2260

cond.false.95.i:                                  ; preds = %land.lhs.true.88.i
  %cmp96.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2261
  %sub99.i = add i64 %call43.i, -3, !dbg !2262
  br i1 %cmp96.i, label %cond.true.98.i, label %cond.false.102.i, !dbg !2261

cond.true.98.i:                                   ; preds = %cond.false.95.i
  %20 = bitcast i8* %cond67.i to i16*, !dbg !2262
  %arrayidx100.i = getelementptr i16, i16* %20, i64 %sub99.i, !dbg !2262
  %21 = load i16, i16* %arrayidx100.i, align 2, !dbg !2262, !tbaa !1347
  %conv101.i = zext i16 %21 to i32, !dbg !2262
  br label %cond.end.107.i, !dbg !2262

cond.false.102.i:                                 ; preds = %cond.false.95.i
  %22 = bitcast i8* %cond67.i to i32*, !dbg !2263
  %arrayidx104.i = getelementptr i32, i32* %22, i64 %sub99.i, !dbg !2263
  %23 = load i32, i32* %arrayidx104.i, align 4, !dbg !2263, !tbaa !1351
  br label %cond.end.107.i, !dbg !2263

cond.end.107.i:                                   ; preds = %cond.false.102.i, %cond.true.98.i, %cond.true.91.i
  %cond108.i = phi i32 [ %conv94.i, %cond.true.91.i ], [ %conv101.i, %cond.true.98.i ], [ %23, %cond.false.102.i ], !dbg !2259
  %cmp109.i = icmp ult i32 %cond108.i, 128, !dbg !2264
  br i1 %cmp109.i, label %cond.true.111.i, label %if.else.309.i, !dbg !2264

cond.true.111.i:                                  ; preds = %cond.end.107.i
  br i1 %cmp70.i, label %cond.true.114.i, label %cond.false.118.i, !dbg !2265

cond.true.114.i:                                  ; preds = %cond.true.111.i
  %sub115.i = add i64 %call43.i, -3, !dbg !2267
  %arrayidx116.i = getelementptr i8, i8* %cond67.i, i64 %sub115.i, !dbg !2267
  %24 = load i8, i8* %arrayidx116.i, align 1, !dbg !2267, !tbaa !1342
  %conv117.i = zext i8 %24 to i32, !dbg !2267
  br label %cond.end.137.i, !dbg !2267

cond.false.118.i:                                 ; preds = %cond.true.111.i
  %cmp119.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2269
  %sub122.i = add i64 %call43.i, -3, !dbg !2271
  br i1 %cmp119.i, label %cond.true.121.i, label %cond.false.125.i, !dbg !2269

cond.true.121.i:                                  ; preds = %cond.false.118.i
  %25 = bitcast i8* %cond67.i to i16*, !dbg !2271
  %arrayidx123.i = getelementptr i16, i16* %25, i64 %sub122.i, !dbg !2271
  %26 = load i16, i16* %arrayidx123.i, align 2, !dbg !2271, !tbaa !1347
  %conv124.i = zext i16 %26 to i32, !dbg !2271
  br label %cond.end.137.i, !dbg !2271

cond.false.125.i:                                 ; preds = %cond.false.118.i
  %27 = bitcast i8* %cond67.i to i32*, !dbg !2273
  %arrayidx127.i = getelementptr i32, i32* %27, i64 %sub122.i, !dbg !2273
  %28 = load i32, i32* %arrayidx127.i, align 4, !dbg !2273, !tbaa !1351
  br label %cond.end.137.i, !dbg !2273

cond.end.137.i:                                   ; preds = %cond.false.125.i, %cond.true.121.i, %cond.true.114.i
  %cond131.i = phi i32 [ %conv117.i, %cond.true.114.i ], [ %conv124.i, %cond.true.121.i ], [ %28, %cond.false.125.i ], !dbg !2259
  %conv133.i = zext i32 %cond131.i to i64, !dbg !2275
  %idxprom.i = and i64 %conv133.i, 255, !dbg !2275
  %arrayidx134.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i, !dbg !2275
  %29 = load i8, i8* %arrayidx134.i, align 1, !dbg !2275, !tbaa !1342
  %cmp139.i = icmp eq i8 %29, 112, !dbg !2278
  br i1 %cmp139.i, label %land.lhs.true.141.i, label %if.else.309.i, !dbg !2281

land.lhs.true.141.i:                              ; preds = %cond.end.137.i
  br i1 %cmp70.i, label %cond.true.144.i, label %cond.false.148.i, !dbg !2282

cond.true.144.i:                                  ; preds = %land.lhs.true.141.i
  %sub145.i = add i64 %call43.i, -2, !dbg !2283
  %arrayidx146.i = getelementptr i8, i8* %cond67.i, i64 %sub145.i, !dbg !2283
  %30 = load i8, i8* %arrayidx146.i, align 1, !dbg !2283, !tbaa !1342
  %conv147.i = zext i8 %30 to i32, !dbg !2283
  br label %cond.end.160.i, !dbg !2283

cond.false.148.i:                                 ; preds = %land.lhs.true.141.i
  %cmp149.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2284
  %sub152.i = add i64 %call43.i, -2, !dbg !2285
  br i1 %cmp149.i, label %cond.true.151.i, label %cond.false.155.i, !dbg !2284

cond.true.151.i:                                  ; preds = %cond.false.148.i
  %31 = bitcast i8* %cond67.i to i16*, !dbg !2285
  %arrayidx153.i = getelementptr i16, i16* %31, i64 %sub152.i, !dbg !2285
  %32 = load i16, i16* %arrayidx153.i, align 2, !dbg !2285, !tbaa !1347
  %conv154.i = zext i16 %32 to i32, !dbg !2285
  br label %cond.end.160.i, !dbg !2285

cond.false.155.i:                                 ; preds = %cond.false.148.i
  %33 = bitcast i8* %cond67.i to i32*, !dbg !2286
  %arrayidx157.i = getelementptr i32, i32* %33, i64 %sub152.i, !dbg !2286
  %34 = load i32, i32* %arrayidx157.i, align 4, !dbg !2286, !tbaa !1351
  br label %cond.end.160.i, !dbg !2286

cond.end.160.i:                                   ; preds = %cond.false.155.i, %cond.true.151.i, %cond.true.144.i
  %cond161.i = phi i32 [ %conv147.i, %cond.true.144.i ], [ %conv154.i, %cond.true.151.i ], [ %34, %cond.false.155.i ], !dbg !2282
  %cmp162.i = icmp ult i32 %cond161.i, 128, !dbg !2287
  br i1 %cmp162.i, label %cond.true.164.i, label %if.else.309.i, !dbg !2287

cond.true.164.i:                                  ; preds = %cond.end.160.i
  br i1 %cmp70.i, label %cond.true.167.i, label %cond.false.171.i, !dbg !2288

cond.true.167.i:                                  ; preds = %cond.true.164.i
  %sub168.i = add i64 %call43.i, -2, !dbg !2289
  %arrayidx169.i = getelementptr i8, i8* %cond67.i, i64 %sub168.i, !dbg !2289
  %35 = load i8, i8* %arrayidx169.i, align 1, !dbg !2289, !tbaa !1342
  %conv170.i = zext i8 %35 to i32, !dbg !2289
  br label %cond.end.191.i, !dbg !2289

cond.false.171.i:                                 ; preds = %cond.true.164.i
  %cmp172.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2290
  %sub175.i = add i64 %call43.i, -2, !dbg !2291
  br i1 %cmp172.i, label %cond.true.174.i, label %cond.false.178.i, !dbg !2290

cond.true.174.i:                                  ; preds = %cond.false.171.i
  %36 = bitcast i8* %cond67.i to i16*, !dbg !2291
  %arrayidx176.i = getelementptr i16, i16* %36, i64 %sub175.i, !dbg !2291
  %37 = load i16, i16* %arrayidx176.i, align 2, !dbg !2291, !tbaa !1347
  %conv177.i = zext i16 %37 to i32, !dbg !2291
  br label %cond.end.191.i, !dbg !2291

cond.false.178.i:                                 ; preds = %cond.false.171.i
  %38 = bitcast i8* %cond67.i to i32*, !dbg !2292
  %arrayidx180.i = getelementptr i32, i32* %38, i64 %sub175.i, !dbg !2292
  %39 = load i32, i32* %arrayidx180.i, align 4, !dbg !2292, !tbaa !1351
  br label %cond.end.191.i, !dbg !2292

cond.end.191.i:                                   ; preds = %cond.false.178.i, %cond.true.174.i, %cond.true.167.i
  %cond184.i = phi i32 [ %conv170.i, %cond.true.167.i ], [ %conv177.i, %cond.true.174.i ], [ %39, %cond.false.178.i ], !dbg !2282
  %conv186.i = zext i32 %cond184.i to i64, !dbg !2293
  %idxprom187.i = and i64 %conv186.i, 255, !dbg !2293
  %arrayidx188.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom187.i, !dbg !2293
  %40 = load i8, i8* %arrayidx188.i, align 1, !dbg !2293, !tbaa !1342
  %cmp193.i = icmp eq i8 %40, 121, !dbg !2294
  br i1 %cmp193.i, label %land.lhs.true.195.i, label %if.else.309.i, !dbg !2295

land.lhs.true.195.i:                              ; preds = %cond.end.191.i
  br i1 %cmp70.i, label %cond.true.198.i, label %cond.false.202.i, !dbg !2296

cond.true.198.i:                                  ; preds = %land.lhs.true.195.i
  %sub199.i = add i64 %call43.i, -1, !dbg !2297
  %arrayidx200.i = getelementptr i8, i8* %cond67.i, i64 %sub199.i, !dbg !2297
  %41 = load i8, i8* %arrayidx200.i, align 1, !dbg !2297, !tbaa !1342
  %conv201.i = zext i8 %41 to i32, !dbg !2297
  br label %cond.end.214.i, !dbg !2297

cond.false.202.i:                                 ; preds = %land.lhs.true.195.i
  %cmp203.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2298
  %sub206.i = add i64 %call43.i, -1, !dbg !2299
  br i1 %cmp203.i, label %cond.true.205.i, label %cond.false.209.i, !dbg !2298

cond.true.205.i:                                  ; preds = %cond.false.202.i
  %42 = bitcast i8* %cond67.i to i16*, !dbg !2299
  %arrayidx207.i = getelementptr i16, i16* %42, i64 %sub206.i, !dbg !2299
  %43 = load i16, i16* %arrayidx207.i, align 2, !dbg !2299, !tbaa !1347
  %conv208.i = zext i16 %43 to i32, !dbg !2299
  br label %cond.end.214.i, !dbg !2299

cond.false.209.i:                                 ; preds = %cond.false.202.i
  %44 = bitcast i8* %cond67.i to i32*, !dbg !2300
  %arrayidx211.i = getelementptr i32, i32* %44, i64 %sub206.i, !dbg !2300
  %45 = load i32, i32* %arrayidx211.i, align 4, !dbg !2300, !tbaa !1351
  br label %cond.end.214.i, !dbg !2300

cond.end.214.i:                                   ; preds = %cond.false.209.i, %cond.true.205.i, %cond.true.198.i
  %cond215.i = phi i32 [ %conv201.i, %cond.true.198.i ], [ %conv208.i, %cond.true.205.i ], [ %45, %cond.false.209.i ], !dbg !2296
  %cmp216.i = icmp ult i32 %cond215.i, 128, !dbg !2301
  br i1 %cmp216.i, label %cond.true.218.i, label %lor.lhs.false.i, !dbg !2301

cond.true.218.i:                                  ; preds = %cond.end.214.i
  br i1 %cmp70.i, label %cond.true.221.i, label %cond.false.225.i, !dbg !2302

cond.true.221.i:                                  ; preds = %cond.true.218.i
  %sub222.i = add i64 %call43.i, -1, !dbg !2303
  %arrayidx223.i = getelementptr i8, i8* %cond67.i, i64 %sub222.i, !dbg !2303
  %46 = load i8, i8* %arrayidx223.i, align 1, !dbg !2303, !tbaa !1342
  %conv224.i = zext i8 %46 to i32, !dbg !2303
  br label %cond.end.237.i, !dbg !2303

cond.false.225.i:                                 ; preds = %cond.true.218.i
  %cmp226.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2304
  %sub229.i = add i64 %call43.i, -1, !dbg !2305
  br i1 %cmp226.i, label %cond.true.228.i, label %cond.false.232.i, !dbg !2304

cond.true.228.i:                                  ; preds = %cond.false.225.i
  %47 = bitcast i8* %cond67.i to i16*, !dbg !2305
  %arrayidx230.i = getelementptr i16, i16* %47, i64 %sub229.i, !dbg !2305
  %48 = load i16, i16* %arrayidx230.i, align 2, !dbg !2305, !tbaa !1347
  %conv231.i = zext i16 %48 to i32, !dbg !2305
  br label %cond.end.237.i, !dbg !2305

cond.false.232.i:                                 ; preds = %cond.false.225.i
  %49 = bitcast i8* %cond67.i to i32*, !dbg !2306
  %arrayidx234.i = getelementptr i32, i32* %49, i64 %sub229.i, !dbg !2306
  %50 = load i32, i32* %arrayidx234.i, align 4, !dbg !2306, !tbaa !1351
  br label %cond.end.237.i, !dbg !2306

cond.end.237.i:                                   ; preds = %cond.false.232.i, %cond.true.228.i, %cond.true.221.i
  %cond238.i = phi i32 [ %conv224.i, %cond.true.221.i ], [ %conv231.i, %cond.true.228.i ], [ %50, %cond.false.232.i ], !dbg !2296
  %conv240.i = zext i32 %cond238.i to i64, !dbg !2307
  %idxprom241.i = and i64 %conv240.i, 255, !dbg !2307
  %arrayidx242.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom241.i, !dbg !2307
  %51 = load i8, i8* %arrayidx242.i, align 1, !dbg !2307, !tbaa !1342
  %phitmp.i = icmp eq i8 %51, 99, !dbg !2307
  br i1 %phitmp.i, label %if.then.302.i, label %lor.lhs.false.i, !dbg !2308

lor.lhs.false.i:                                  ; preds = %cond.end.237.i, %cond.end.214.i
  br i1 %cmp70.i, label %cond.true.251.i, label %cond.false.255.i, !dbg !2309

cond.true.251.i:                                  ; preds = %lor.lhs.false.i
  %sub252.i = add i64 %call43.i, -1, !dbg !2310
  %arrayidx253.i = getelementptr i8, i8* %cond67.i, i64 %sub252.i, !dbg !2310
  %52 = load i8, i8* %arrayidx253.i, align 1, !dbg !2310, !tbaa !1342
  %conv254.i = zext i8 %52 to i32, !dbg !2310
  br label %cond.end.267.i, !dbg !2310

cond.false.255.i:                                 ; preds = %lor.lhs.false.i
  %cmp256.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2311
  %sub259.i = add i64 %call43.i, -1, !dbg !2312
  br i1 %cmp256.i, label %cond.true.258.i, label %cond.false.262.i, !dbg !2311

cond.true.258.i:                                  ; preds = %cond.false.255.i
  %53 = bitcast i8* %cond67.i to i16*, !dbg !2312
  %arrayidx260.i = getelementptr i16, i16* %53, i64 %sub259.i, !dbg !2312
  %54 = load i16, i16* %arrayidx260.i, align 2, !dbg !2312, !tbaa !1347
  %conv261.i = zext i16 %54 to i32, !dbg !2312
  br label %cond.end.267.i, !dbg !2312

cond.false.262.i:                                 ; preds = %cond.false.255.i
  %55 = bitcast i8* %cond67.i to i32*, !dbg !2313
  %arrayidx264.i = getelementptr i32, i32* %55, i64 %sub259.i, !dbg !2313
  %56 = load i32, i32* %arrayidx264.i, align 4, !dbg !2313, !tbaa !1351
  br label %cond.end.267.i, !dbg !2313

cond.end.267.i:                                   ; preds = %cond.false.262.i, %cond.true.258.i, %cond.true.251.i
  %cond268.i = phi i32 [ %conv254.i, %cond.true.251.i ], [ %conv261.i, %cond.true.258.i ], [ %56, %cond.false.262.i ], !dbg !2309
  %cmp269.i = icmp ult i32 %cond268.i, 128, !dbg !2314
  br i1 %cmp269.i, label %cond.true.271.i, label %if.else.309.i, !dbg !2314

cond.true.271.i:                                  ; preds = %cond.end.267.i
  br i1 %cmp70.i, label %cond.true.274.i, label %cond.false.278.i, !dbg !2315

cond.true.274.i:                                  ; preds = %cond.true.271.i
  %sub275.i = add i64 %call43.i, -1, !dbg !2316
  %arrayidx276.i = getelementptr i8, i8* %cond67.i, i64 %sub275.i, !dbg !2316
  %57 = load i8, i8* %arrayidx276.i, align 1, !dbg !2316, !tbaa !1342
  %conv277.i = zext i8 %57 to i32, !dbg !2316
  br label %cond.end.290.i, !dbg !2316

cond.false.278.i:                                 ; preds = %cond.true.271.i
  %cmp279.i = icmp eq i32 %bf.clear47.i, 2, !dbg !2317
  %sub282.i = add i64 %call43.i, -1, !dbg !2318
  br i1 %cmp279.i, label %cond.true.281.i, label %cond.false.285.i, !dbg !2317

cond.true.281.i:                                  ; preds = %cond.false.278.i
  %58 = bitcast i8* %cond67.i to i16*, !dbg !2318
  %arrayidx283.i = getelementptr i16, i16* %58, i64 %sub282.i, !dbg !2318
  %59 = load i16, i16* %arrayidx283.i, align 2, !dbg !2318, !tbaa !1347
  %conv284.i = zext i16 %59 to i32, !dbg !2318
  br label %cond.end.290.i, !dbg !2318

cond.false.285.i:                                 ; preds = %cond.false.278.i
  %60 = bitcast i8* %cond67.i to i32*, !dbg !2319
  %arrayidx287.i = getelementptr i32, i32* %60, i64 %sub282.i, !dbg !2319
  %61 = load i32, i32* %arrayidx287.i, align 4, !dbg !2319, !tbaa !1351
  br label %cond.end.290.i, !dbg !2319

cond.end.290.i:                                   ; preds = %cond.false.285.i, %cond.true.281.i, %cond.true.274.i
  %cond291.i = phi i32 [ %conv277.i, %cond.true.274.i ], [ %conv284.i, %cond.true.281.i ], [ %61, %cond.false.285.i ], !dbg !2309
  %conv293.i = zext i32 %cond291.i to i64, !dbg !2320
  %idxprom294.i = and i64 %conv293.i, 255, !dbg !2320
  %arrayidx295.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom294.i, !dbg !2320
  %62 = load i8, i8* %arrayidx295.i, align 1, !dbg !2320, !tbaa !1342
  %phitmp590.i = icmp eq i8 %62, 111, !dbg !2320
  br i1 %phitmp590.i, label %if.then.302.i, label %if.else.309.i, !dbg !2321

if.then.302.i:                                    ; preds = %cond.end.290.i, %cond.end.237.i
  %63 = getelementptr inbounds %struct._object, %struct._object* %call32.i, i64 1, i32 0, !dbg !2322
  %64 = load i64, i64* %63, align 8, !dbg !2322, !tbaa !1796
  %sub303.i = add i64 %64, -1, !dbg !2324
  %call304.i = tail call %struct._object* @PyUnicode_Substring(%struct._object* %call32.i, i64 0, i64 %sub303.i) #2, !dbg !2325
  tail call void @llvm.dbg.value(metadata %struct._object* %call304.i, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %call304.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call304.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call304.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  %cmp305.i = icmp eq %struct._object* %call304.i, null, !dbg !2326
  br i1 %cmp305.i, label %do.body.408.i, label %if.end, !dbg !2328

if.else.309.i:                                    ; preds = %cond.end.290.i, %cond.end.267.i, %cond.end.191.i, %cond.end.160.i, %cond.end.137.i, %cond.end.107.i, %cond.end.84.i, %cond.end.66.i
  %ob_refcnt310.i = getelementptr inbounds %struct._object, %struct._object* %call32.i, i64 0, i32 0, !dbg !2329
  %65 = load i64, i64* %ob_refcnt310.i, align 8, !dbg !2329, !tbaa !1163
  %inc311.i = add i64 %65, 1, !dbg !2329
  store i64 %inc311.i, i64* %ob_refcnt310.i, align 8, !dbg !2329, !tbaa !1163
  br label %if.end, !dbg !2157

if.else.318.i:                                    ; preds = %land.lhs.true.i, %if.end.31.i
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !684, metadata !1131), !dbg !2215
  %cmp319.i = icmp eq %struct._object* %module.0.59, @_Py_NoneStruct, !dbg !2330
  br i1 %cmp319.i, label %if.then.398.i, label %land.lhs.true.321.i, !dbg !2331

land.lhs.true.321.i:                              ; preds = %if.else.318.i
  %call322.i = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %module.0.59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !2332
  %cmp323.i = icmp eq i32 %call322.i, 0, !dbg !2333
  br i1 %cmp323.i, label %if.then.325.i, label %if.then.398.i, !dbg !2334

if.then.325.i:                                    ; preds = %land.lhs.true.321.i
  %call327.i = tail call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* nonnull @PyId_argv) #2, !dbg !2335
  tail call void @llvm.dbg.value(metadata %struct._object* %call327.i, i64 0, metadata !730, metadata !1131) #2, !dbg !2336
  %cmp328.i = icmp eq %struct._object* %call327.i, null, !dbg !2337
  br i1 %cmp328.i, label %if.else.385.i, label %land.lhs.true.330.i, !dbg !2338

land.lhs.true.330.i:                              ; preds = %if.then.325.i
  %ob_type331.i = getelementptr inbounds %struct._object, %struct._object* %call327.i, i64 0, i32 1, !dbg !2339
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type331.i, align 8, !dbg !2339, !tbaa !1169
  %tp_flags332.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i64 0, i32 19, !dbg !2339
  %67 = load i64, i64* %tp_flags332.i, align 8, !dbg !2339, !tbaa !1301
  %and333.i = and i64 %67, 33554432, !dbg !2339
  %cmp334.i = icmp eq i64 %and333.i, 0, !dbg !2339
  br i1 %cmp334.i, label %if.else.385.i, label %land.lhs.true.336.i, !dbg !2341

land.lhs.true.336.i:                              ; preds = %land.lhs.true.330.i
  %call337.i = tail call i64 @PyList_Size(%struct._object* %call327.i) #2, !dbg !2342
  %cmp338.i = icmp sgt i64 %call337.i, 0, !dbg !2343
  br i1 %cmp338.i, label %if.then.340.i, label %if.else.385.i, !dbg !2344

if.then.340.i:                                    ; preds = %land.lhs.true.336.i
  %call342.i = tail call %struct._object* @PyList_GetItem(%struct._object* %call327.i, i64 0) #2, !dbg !2345
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  %ob_refcnt343.i = getelementptr inbounds %struct._object, %struct._object* %call342.i, i64 0, i32 0, !dbg !2346
  %68 = load i64, i64* %ob_refcnt343.i, align 8, !dbg !2346, !tbaa !1163
  %inc344.i = add i64 %68, 1, !dbg !2346
  store i64 %inc344.i, i64* %ob_refcnt343.i, align 8, !dbg !2346, !tbaa !1163
  %call345.i = tail call i32 @PyObject_IsTrue(%struct._object* %call342.i) #2, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %call345.i, i64 0, metadata !734, metadata !1131) #2, !dbg !2348
  %cmp346.i = icmp slt i32 %call345.i, 0, !dbg !2349
  br i1 %cmp346.i, label %do.body.i, label %if.else.358.i, !dbg !2350

do.body.i:                                        ; preds = %if.then.340.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !737, metadata !1131) #2, !dbg !2351
  %69 = load i64, i64* %ob_refcnt343.i, align 8, !dbg !2353, !tbaa !1163
  %dec351.i = add i64 %69, -1, !dbg !2353
  store i64 %dec351.i, i64* %ob_refcnt343.i, align 8, !dbg !2353, !tbaa !1163
  %cmp352.i = icmp eq i64 %dec351.i, 0, !dbg !2353
  br i1 %cmp352.i, label %if.else.355.i, label %do.body.408.i, !dbg !2355

if.else.355.i:                                    ; preds = %do.body.i
  %ob_type356.i = getelementptr inbounds %struct._object, %struct._object* %call342.i, i64 0, i32 1, !dbg !2356
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type356.i, align 8, !dbg !2356, !tbaa !1169
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !2356
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2356, !tbaa !1170
  tail call void %71(%struct._object* %call342.i) #2, !dbg !2356
  br label %do.body.408.i, !dbg !2157

if.else.358.i:                                    ; preds = %if.then.340.i
  %tobool359.i = icmp eq i32 %call345.i, 0, !dbg !2358
  br i1 %tobool359.i, label %do.body.361.i, label %if.end.395.i, !dbg !2359

do.body.361.i:                                    ; preds = %if.else.358.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call342.i, i64 0, metadata !741, metadata !1131) #2, !dbg !2360
  %72 = load i64, i64* %ob_refcnt343.i, align 8, !dbg !2362, !tbaa !1163
  %dec365.i = add i64 %72, -1, !dbg !2362
  store i64 %dec365.i, i64* %ob_refcnt343.i, align 8, !dbg !2362, !tbaa !1163
  %cmp366.i = icmp eq i64 %dec365.i, 0, !dbg !2362
  br i1 %cmp366.i, label %if.else.369.i, label %if.end.372.i, !dbg !2364

if.else.369.i:                                    ; preds = %do.body.361.i
  %ob_type370.i = getelementptr inbounds %struct._object, %struct._object* %call342.i, i64 0, i32 1, !dbg !2365
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type370.i, align 8, !dbg !2365, !tbaa !1169
  %tp_dealloc371.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i64 0, i32 4, !dbg !2365
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc371.i, align 8, !dbg !2365, !tbaa !1170
  tail call void %74(%struct._object* %call342.i) #2, !dbg !2365
  br label %if.end.372.i, !dbg !2157

if.end.372.i:                                     ; preds = %if.else.369.i, %do.body.361.i
  %call375.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct._object* %call375.i, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %call375.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call375.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call375.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  %cmp376.i = icmp eq %struct._object* %call375.i, null, !dbg !2368
  br i1 %cmp376.i, label %do.body.408.i, label %if.end, !dbg !2370

if.else.385.i:                                    ; preds = %land.lhs.true.336.i, %land.lhs.true.330.i, %if.then.325.i
  %call386.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !2371
  tail call void @llvm.dbg.value(metadata %struct._object* %call386.i, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %call386.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call386.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %call386.i, i64 0, metadata !684, metadata !1131), !dbg !2215
  %cmp387.i = icmp eq %struct._object* %call386.i, null, !dbg !2373
  br i1 %cmp387.i, label %do.body.408.i, label %if.end, !dbg !2375

if.end.395.i:                                     ; preds = %if.else.358.i
  %cmp396.i = icmp eq %struct._object* %call342.i, null, !dbg !2376
  br i1 %cmp396.i, label %if.then.398.i, label %if.end, !dbg !2378

if.then.398.i:                                    ; preds = %land.lhs.true.321.i, %if.end.395.i, %if.else.318.i
  %75 = phi %struct._object* [ @_Py_NoneStruct, %if.else.318.i ], [ %module.0.59, %if.end.395.i ], [ %module.0.59, %land.lhs.true.321.i ], !dbg !2379
  tail call void @llvm.dbg.value(metadata %struct._object* %75, i64 0, metadata !701, metadata !1131), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %75, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %75, i64 0, metadata !684, metadata !1131), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %75, i64 0, metadata !684, metadata !1131), !dbg !2215
  %ob_refcnt399.i = getelementptr inbounds %struct._object, %struct._object* %75, i64 0, i32 0, !dbg !2381
  %76 = load i64, i64* %ob_refcnt399.i, align 8, !dbg !2381, !tbaa !1163
  %inc400.i = add i64 %76, 1, !dbg !2381
  store i64 %inc400.i, i64* %ob_refcnt399.i, align 8, !dbg !2381, !tbaa !1163
  br label %if.end, !dbg !2382

do.body.408.i:                                    ; preds = %if.else.385.i, %if.end.372.i, %if.else.355.i, %do.body.i, %if.then.302.i, %cond.end.i, %if.then.23.i, %cleanup.i
  %module.0.60.ph = phi %struct._object* [ null, %cleanup.i ], [ null, %if.then.23.i ], [ %module.0.59, %cond.end.i ], [ %module.0.59, %if.then.302.i ], [ %module.0.59, %do.body.i ], [ %module.0.59, %if.else.355.i ], [ %module.0.59, %if.end.372.i ], [ %module.0.59, %if.else.385.i ]
  %registry.0.56.ph = phi %struct._object* [ %call11.i, %cleanup.i ], [ %registry.0.55, %if.then.23.i ], [ %registry.0.55, %cond.end.i ], [ %registry.0.55, %if.then.302.i ], [ %registry.0.55, %do.body.i ], [ %registry.0.55, %if.else.355.i ], [ %registry.0.55, %if.end.372.i ], [ %registry.0.55, %if.else.385.i ]
  %ob_refcnt411.i = getelementptr inbounds %struct._object, %struct._object* %registry.0.56.ph, i64 0, i32 0, !dbg !2383
  %77 = load i64, i64* %ob_refcnt411.i, align 8, !dbg !2383, !tbaa !1163
  %dec412.i = add i64 %77, -1, !dbg !2383
  store i64 %dec412.i, i64* %ob_refcnt411.i, align 8, !dbg !2383, !tbaa !1163
  %cmp413.i = icmp eq i64 %dec412.i, 0, !dbg !2383
  br i1 %cmp413.i, label %if.else.416.i, label %if.end.422.i, !dbg !2385

if.else.416.i:                                    ; preds = %do.body.408.i
  %ob_type417.i = getelementptr inbounds %struct._object, %struct._object* %registry.0.56.ph, i64 0, i32 1, !dbg !2386
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type417.i, align 8, !dbg !2386, !tbaa !1169
  %tp_dealloc418.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i64 0, i32 4, !dbg !2386
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc418.i, align 8, !dbg !2386, !tbaa !1170
  tail call void %79(%struct._object* %registry.0.56.ph) #2, !dbg !2386
  br label %if.end.422.i, !dbg !2157

if.end.422.i:                                     ; preds = %if.else.416.i, %do.body.408.i
  %cmp428.i = icmp eq %struct._object* %module.0.60.ph, null, !dbg !2388
  br i1 %cmp428.i, label %cleanup, label %do.body.431.i, !dbg !2389

do.body.431.i:                                    ; preds = %if.end.422.i
  %ob_refcnt434.i = getelementptr inbounds %struct._object, %struct._object* %module.0.60.ph, i64 0, i32 0, !dbg !2390
  %80 = load i64, i64* %ob_refcnt434.i, align 8, !dbg !2390, !tbaa !1163
  %dec435.i = add i64 %80, -1, !dbg !2390
  store i64 %dec435.i, i64* %ob_refcnt434.i, align 8, !dbg !2390, !tbaa !1163
  %cmp436.i = icmp eq i64 %dec435.i, 0, !dbg !2390
  br i1 %cmp436.i, label %if.else.439.i, label %cleanup, !dbg !2392

if.else.439.i:                                    ; preds = %do.body.431.i
  %ob_type440.i = getelementptr inbounds %struct._object, %struct._object* %module.0.60.ph, i64 0, i32 1, !dbg !2393
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type440.i, align 8, !dbg !2393, !tbaa !1169
  %tp_dealloc441.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i64 0, i32 4, !dbg !2393
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc441.i, align 8, !dbg !2393, !tbaa !1170
  tail call void %82(%struct._object* %module.0.60.ph) #2, !dbg !2393
  br label %cleanup, !dbg !2157

if.end:                                           ; preds = %if.then.302.i, %if.else.309.i, %if.end.395.i, %if.then.398.i, %if.end.372.i, %if.else.385.i
  %filename.0.61.ph = phi %struct._object* [ %call386.i, %if.else.385.i ], [ %call375.i, %if.end.372.i ], [ %75, %if.then.398.i ], [ %call342.i, %if.end.395.i ], [ %call32.i, %if.else.309.i ], [ %call304.i, %if.then.302.i ]
  %call1 = tail call fastcc %struct._object* @warn_explicit(%struct._object* %category, %struct._object* %message, %struct._object* %filename.0.61.ph, i32 %storemerge.i, %struct._object* %module.0.59, %struct._object* %registry.0.55, %struct._object* null), !dbg !2395
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !687, metadata !1131), !dbg !2396
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %filename.0.61.ph, i64 0, i32 0, !dbg !2397
  %83 = load i64, i64* %ob_refcnt, align 8, !dbg !2397, !tbaa !1163
  %dec = add i64 %83, -1, !dbg !2397
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2397, !tbaa !1163
  %cmp = icmp eq i64 %dec, 0, !dbg !2397
  br i1 %cmp, label %if.else, label %if.end.3, !dbg !2399

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %filename.0.61.ph, i64 0, i32 1, !dbg !2400
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2400, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i64 0, i32 4, !dbg !2400
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2400, !tbaa !1170
  tail call void %85(%struct._object* %filename.0.61.ph) #2, !dbg !2400
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.else
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %registry.0.55, i64 0, i32 0, !dbg !2402
  %86 = load i64, i64* %ob_refcnt6, align 8, !dbg !2402, !tbaa !1163
  %dec7 = add i64 %86, -1, !dbg !2402
  store i64 %dec7, i64* %ob_refcnt6, align 8, !dbg !2402, !tbaa !1163
  %cmp8 = icmp eq i64 %dec7, 0, !dbg !2402
  br i1 %cmp8, label %if.else.10, label %if.end.13, !dbg !2404

if.else.10:                                       ; preds = %if.end.3
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %registry.0.55, i64 0, i32 1, !dbg !2405
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !2405, !tbaa !1169
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i64 0, i32 4, !dbg !2405
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8, !dbg !2405, !tbaa !1170
  tail call void %88(%struct._object* %registry.0.55) #2, !dbg !2405
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.3, %if.else.10
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %module.0.59, i64 0, i32 0, !dbg !2407
  %89 = load i64, i64* %ob_refcnt18, align 8, !dbg !2407, !tbaa !1163
  %dec19 = add i64 %89, -1, !dbg !2407
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !2407, !tbaa !1163
  %cmp20 = icmp eq i64 %dec19, 0, !dbg !2407
  br i1 %cmp20, label %if.else.22, label %cleanup, !dbg !2409

if.else.22:                                       ; preds = %if.end.13
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %module.0.59, i64 0, i32 1, !dbg !2410
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2410, !tbaa !1169
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i64 0, i32 4, !dbg !2410
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !2410, !tbaa !1170
  tail call void %91(%struct._object* %module.0.59) #2, !dbg !2410
  br label %cleanup

cleanup:                                          ; preds = %if.then.9.i, %if.end.422.i, %do.body.431.i, %if.else.439.i, %if.else.22, %if.end.13
  %retval.0 = phi %struct._object* [ %call1, %if.end.13 ], [ %call1, %if.else.22 ], [ null, %if.else.439.i ], [ null, %do.body.431.i ], [ null, %if.end.422.i ], [ null, %if.then.9.i ]
  ret %struct._object* %retval.0, !dbg !2412
}

declare %struct._ts* @PyThreadState_Get() #3

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i64 @PyUnicode_GetLength(%struct._object*) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #3

declare i64 @PyList_Size(%struct._object*) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_Str(%struct._object*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyTuple_Pack(i64, ...) #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @get_warnings_attr(i8* %attr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %attr, i64 0, metadata !919, metadata !1131), !dbg !2413
  %0 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8, !dbg !2414, !tbaa !1149
  %cmp = icmp eq %struct._object* %0, null, !dbg !2416
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2417

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !2418
  store %struct._object* %call, %struct._object** @get_warnings_attr.warnings_str, align 8, !dbg !2420, !tbaa !1149
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2421
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2423

if.end.3:                                         ; preds = %if.then, %entry
  %call4 = tail call %struct._object* @PyImport_GetModuleDict() #2, !dbg !2424
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !920, metadata !1131), !dbg !2425
  %1 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8, !dbg !2426, !tbaa !1149
  %call5 = tail call i32 @PyDict_Contains(%struct._object* %call4, %struct._object* %1) #2, !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 %call5, i64 0, metadata !922, metadata !1131), !dbg !2428
  switch i32 %call5, label %if.end.9 [
    i32 -1, label %cleanup
    i32 0, label %cleanup
  ], !dbg !2429

if.end.9:                                         ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @get_warnings_attr.warnings_str, align 8, !dbg !2431, !tbaa !1149
  %call10 = tail call %struct._object* @PyDict_GetItem(%struct._object* %call4, %struct._object* %2) #2, !dbg !2432
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !921, metadata !1131), !dbg !2433
  %call11 = tail call i32 @PyObject_HasAttrString(%struct._object* %call10, i8* %attr) #2, !dbg !2434
  %tobool = icmp eq i32 %call11, 0, !dbg !2434
  br i1 %tobool, label %cleanup, label %if.end.13, !dbg !2436

if.end.13:                                        ; preds = %if.end.9
  %call14 = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %call10, i8* %attr) #2, !dbg !2437
  br label %cleanup, !dbg !2438

cleanup:                                          ; preds = %if.end.9, %if.end.3, %if.end.3, %if.then, %if.end.13
  %retval.0 = phi %struct._object* [ %call14, %if.end.13 ], [ null, %if.then ], [ null, %if.end.3 ], [ null, %if.end.3 ], [ null, %if.end.9 ]
  ret %struct._object* %retval.0, !dbg !2439
}

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare i64 @PyTuple_Size(%struct._object*) #3

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

declare %struct._object* @PyImport_GetModuleDict() #3

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #3

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #3

declare i32 @PyFile_WriteString(i8*, %struct._object*) #3

declare i32 @_Py_DisplaySourceLine(%struct._object*, %struct._object*, i32, i32) #3

declare void @PyErr_Clear() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @warnings_warn(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %message = alloca %struct._object*, align 8
  %category = alloca %struct._object*, align 8
  %stack_level = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !961, metadata !1131), !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !962, metadata !1131), !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !963, metadata !1131), !dbg !2442
  %0 = bitcast %struct._object** %message to i8*, !dbg !2443
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2443
  %1 = bitcast %struct._object** %category to i8*, !dbg !2443
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !965, metadata !1131), !dbg !2444
  store %struct._object* null, %struct._object** %category, align 8, !dbg !2444, !tbaa !1149
  %2 = bitcast i64* %stack_level to i8*, !dbg !2445
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !966, metadata !1131), !dbg !2446
  store i64 1, i64* %stack_level, align 8, !dbg !2446, !tbaa !2447
  tail call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !964, metadata !1131), !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct._object** %category, i64 0, metadata !965, metadata !1131), !dbg !2444
  tail call void @llvm.dbg.value(metadata i64* %stack_level, i64 0, metadata !966, metadata !1131), !dbg !2446
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @warnings_warn.kw_list, i64 0, i64 0), %struct._object** nonnull %message, %struct._object** nonnull %category, i64* nonnull %stack_level) #2, !dbg !2449
  %tobool = icmp eq i32 %call, 0, !dbg !2449
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2451

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !964, metadata !1131), !dbg !2448
  %3 = load %struct._object*, %struct._object** %message, align 8, !dbg !2452, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %category, i64 0, metadata !965, metadata !1131), !dbg !2444
  %4 = load %struct._object*, %struct._object** %category, align 8, !dbg !2453, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !969, metadata !1131) #2, !dbg !2454
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !970, metadata !1131) #2, !dbg !2456
  %5 = load %struct._object*, %struct._object** @PyExc_Warning, align 8, !dbg !2457, !tbaa !1149
  %call.i = call i32 @PyObject_IsInstance(%struct._object* %3, %struct._object* %5) #2, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !971, metadata !1131) #2, !dbg !2459
  switch i32 %call.i, label %if.else.i [
    i32 -1, label %get_category.exit.thread
    i32 1, label %if.then.2.i
  ], !dbg !2460

if.then.2.i:                                      ; preds = %if.end
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !2461
  %6 = bitcast %struct._typeobject** %ob_type.i to %struct._object**, !dbg !2461
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !2461, !tbaa !1169
  call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !970, metadata !1131) #2, !dbg !2456
  br label %if.end.6.i, !dbg !2463

if.else.i:                                        ; preds = %if.end
  %cmp3.i = icmp eq %struct._object* %4, null, !dbg !2464
  %8 = load %struct._object*, %struct._object** @PyExc_UserWarning, align 8, !dbg !2466, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !970, metadata !1131) #2, !dbg !2456
  %.category.i = select i1 %cmp3.i, %struct._object* %8, %struct._object* %4, !dbg !2467
  br label %if.end.6.i, !dbg !2467

if.end.6.i:                                       ; preds = %if.else.i, %if.then.2.i
  %category.addr.0.i = phi %struct._object* [ %7, %if.then.2.i ], [ %.category.i, %if.else.i ], !dbg !2468
  %9 = load %struct._object*, %struct._object** @PyExc_Warning, align 8, !dbg !2469, !tbaa !1149
  %call7.i = call i32 @PyObject_IsSubclass(%struct._object* %category.addr.0.i, %struct._object* %9) #2, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %call7.i, i64 0, metadata !971, metadata !1131) #2, !dbg !2459
  switch i32 %call7.i, label %get_category.exit [
    i32 -1, label %get_category.exit.thread
    i32 0, label %if.then.12.i
  ], !dbg !2471

if.then.12.i:                                     ; preds = %if.end.6.i
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2472, !tbaa !1149
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0)) #2, !dbg !2475
  br label %get_category.exit.thread, !dbg !2476

get_category.exit.thread:                         ; preds = %if.then.12.i, %if.end, %if.end.6.i
  call void @llvm.dbg.value(metadata %struct._object* %category.addr.0.i, i64 0, metadata !965, metadata !1131), !dbg !2444
  store %struct._object* null, %struct._object** %category, align 8, !dbg !2477, !tbaa !1149
  br label %cleanup, !dbg !2478

get_category.exit:                                ; preds = %if.end.6.i
  call void @llvm.dbg.value(metadata %struct._object* %category.addr.0.i, i64 0, metadata !965, metadata !1131), !dbg !2444
  store %struct._object* %category.addr.0.i, %struct._object** %category, align 8, !dbg !2477, !tbaa !1149
  %cmp = icmp eq %struct._object* %category.addr.0.i, null, !dbg !2479
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !2478

if.end.3:                                         ; preds = %get_category.exit
  call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !964, metadata !1131), !dbg !2448
  %11 = load %struct._object*, %struct._object** %message, align 8, !dbg !2481, !tbaa !1149
  call void @llvm.dbg.value(metadata i64* %stack_level, i64 0, metadata !966, metadata !1131), !dbg !2446
  %12 = load i64, i64* %stack_level, align 8, !dbg !2482, !tbaa !2447
  %call4 = call fastcc %struct._object* @do_warn(%struct._object* %11, %struct._object* %category.addr.0.i, i64 %12), !dbg !2483
  br label %cleanup, !dbg !2484

cleanup:                                          ; preds = %get_category.exit.thread, %get_category.exit, %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %entry ], [ null, %get_category.exit ], [ null, %get_category.exit.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2485
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2485
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2485
  ret %struct._object* %retval.0, !dbg !2485
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @warnings_warn_explicit(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %message = alloca %struct._object*, align 8
  %category = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %module = alloca %struct._object*, align 8
  %registry = alloca %struct._object*, align 8
  %module_globals = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !974, metadata !1131), !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !975, metadata !1131), !dbg !2487
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !976, metadata !1131), !dbg !2488
  %0 = bitcast %struct._object** %message to i8*, !dbg !2489
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2489
  %1 = bitcast %struct._object** %category to i8*, !dbg !2490
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2490
  %2 = bitcast %struct._object** %filename to i8*, !dbg !2491
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2491
  %3 = bitcast i32* %lineno to i8*, !dbg !2492
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !2492
  %4 = bitcast %struct._object** %module to i8*, !dbg !2493
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2493
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !981, metadata !1131), !dbg !2494
  store %struct._object* null, %struct._object** %module, align 8, !dbg !2494, !tbaa !1149
  %5 = bitcast %struct._object** %registry to i8*, !dbg !2495
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2495
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !982, metadata !1131), !dbg !2496
  store %struct._object* null, %struct._object** %registry, align 8, !dbg !2496, !tbaa !1149
  %6 = bitcast %struct._object** %module_globals to i8*, !dbg !2497
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !983, metadata !1131), !dbg !2498
  store %struct._object* null, %struct._object** %module_globals, align 8, !dbg !2498, !tbaa !1149
  tail call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !977, metadata !1131), !dbg !2499
  tail call void @llvm.dbg.value(metadata %struct._object** %category, i64 0, metadata !978, metadata !1131), !dbg !2500
  tail call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !979, metadata !1131), !dbg !2501
  tail call void @llvm.dbg.value(metadata i32* %lineno, i64 0, metadata !980, metadata !1131), !dbg !2502
  tail call void @llvm.dbg.value(metadata %struct._object** %module, i64 0, metadata !981, metadata !1131), !dbg !2494
  tail call void @llvm.dbg.value(metadata %struct._object** %registry, i64 0, metadata !982, metadata !1131), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct._object** %module_globals, i64 0, metadata !983, metadata !1131), !dbg !2498
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @warnings_warn_explicit.kwd_list, i64 0, i64 0), %struct._object** nonnull %message, %struct._object** nonnull %category, %struct._object** nonnull %filename, i32* nonnull %lineno, %struct._object** nonnull %module, %struct._object** nonnull %registry, %struct._object** nonnull %module_globals) #2, !dbg !2503
  %tobool = icmp eq i32 %call, 0, !dbg !2503
  br i1 %tobool, label %cleanup.96, label %if.end, !dbg !2505

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %module_globals, i64 0, metadata !983, metadata !1131), !dbg !2498
  %7 = load %struct._object*, %struct._object** %module_globals, align 8, !dbg !2506, !tbaa !1149
  %tobool1 = icmp eq %struct._object* %7, null, !dbg !2506
  br i1 %tobool1, label %standard_call, label %if.then.2, !dbg !2507

if.then.2:                                        ; preds = %if.end
  %call9 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @warnings_warn_explicit.PyId_get_source) #2, !dbg !2508
  call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !984, metadata !1131), !dbg !2510
  %cmp = icmp eq %struct._object* %call9, null, !dbg !2511
  br i1 %cmp, label %cleanup.96, label %if.end.11, !dbg !2512

if.end.11:                                        ; preds = %if.then.2
  %call12 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @warnings_warn_explicit.PyId_splitlines) #2, !dbg !2513
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !984, metadata !1131), !dbg !2510
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !2515
  br i1 %cmp13, label %cleanup.96, label %if.end.15, !dbg !2516

if.end.15:                                        ; preds = %if.end.11
  call void @llvm.dbg.value(metadata %struct._object** %module_globals, i64 0, metadata !983, metadata !1131), !dbg !2498
  %8 = load %struct._object*, %struct._object** %module_globals, align 8, !dbg !2517, !tbaa !1149
  %call16 = call %struct._object* @PyDict_GetItemString(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0)) #2, !dbg !2518
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !987, metadata !1131), !dbg !2519
  call void @llvm.dbg.value(metadata %struct._object** %module_globals, i64 0, metadata !983, metadata !1131), !dbg !2498
  %9 = load %struct._object*, %struct._object** %module_globals, align 8, !dbg !2520, !tbaa !1149
  %call17 = call %struct._object* @PyDict_GetItemString(%struct._object* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !2521
  call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !988, metadata !1131), !dbg !2522
  %cmp18 = icmp eq %struct._object* %call16, null, !dbg !2523
  %cmp19 = icmp eq %struct._object* %call17, null, !dbg !2525
  %or.cond = or i1 %cmp18, %cmp19, !dbg !2526
  br i1 %or.cond, label %standard_call, label %if.end.21, !dbg !2526

if.end.21:                                        ; preds = %if.end.15
  %call22 = call i32 @_PyObject_HasAttrId(%struct._object* %call16, %struct._Py_Identifier* nonnull @warnings_warn_explicit.PyId_get_source) #2, !dbg !2527
  %tobool23 = icmp eq i32 %call22, 0, !dbg !2527
  br i1 %tobool23, label %standard_call, label %if.end.25, !dbg !2529

if.end.25:                                        ; preds = %if.end.21
  %10 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @warnings_warn_explicit.PyId_get_source, i64 0, i32 2), align 8, !dbg !2530, !tbaa !2531
  %call26 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %call16, %struct._object* %10, %struct._object* %call17, i8* null) #2, !dbg !2533
  call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !989, metadata !1131), !dbg !2534
  %tobool27 = icmp eq %struct._object* %call26, null, !dbg !2535
  br i1 %tobool27, label %cleanup.96, label %if.else, !dbg !2536

if.else:                                          ; preds = %if.end.25
  %cmp29 = icmp eq %struct._object* %call26, @_Py_NoneStruct, !dbg !2537
  br i1 %cmp29, label %do.body, label %if.end.37, !dbg !2538

do.body:                                          ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !993, metadata !1131), !dbg !2539
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2541, !tbaa !1163
  %dec = add i64 %11, -1, !dbg !2541
  store i64 %dec, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2541, !tbaa !1163
  %cmp32 = icmp eq i64 %dec, 0, !dbg !2541
  br i1 %cmp32, label %if.else.34, label %standard_call, !dbg !2543

if.else.34:                                       ; preds = %do.body
  %12 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 1), align 8, !dbg !2544, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2544
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2544, !tbaa !1170
  call void %13(%struct._object* nonnull @_Py_NoneStruct) #2, !dbg !2544
  br label %standard_call

if.end.37:                                        ; preds = %if.else
  %14 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @warnings_warn_explicit.PyId_splitlines, i64 0, i32 2), align 8, !dbg !2546, !tbaa !2531
  %call38 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %call26, %struct._object* %14, i8* null) #2, !dbg !2547
  call void @llvm.dbg.value(metadata %struct._object* %call38, i64 0, metadata !990, metadata !1131), !dbg !2548
  call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !998, metadata !1131), !dbg !2549
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 0, !dbg !2551
  %15 = load i64, i64* %ob_refcnt42, align 8, !dbg !2551, !tbaa !1163
  %dec43 = add i64 %15, -1, !dbg !2551
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !2551, !tbaa !1163
  %cmp44 = icmp eq i64 %dec43, 0, !dbg !2551
  br i1 %cmp44, label %if.else.46, label %if.end.49, !dbg !2553

if.else.46:                                       ; preds = %if.end.37
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 1, !dbg !2554
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2554, !tbaa !1169
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2554
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !2554, !tbaa !1170
  call void %17(%struct._object* %call26) #2, !dbg !2554
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.37, %if.else.46
  %tobool52 = icmp eq %struct._object* %call38, null, !dbg !2556
  br i1 %tobool52, label %cleanup.96, label %if.end.54, !dbg !2558

if.end.54:                                        ; preds = %if.end.49
  call void @llvm.dbg.value(metadata i32* %lineno, i64 0, metadata !980, metadata !1131), !dbg !2502
  %18 = load i32, i32* %lineno, align 4, !dbg !2559, !tbaa !1351
  %sub = add i32 %18, -1, !dbg !2560
  %conv = sext i32 %sub to i64, !dbg !2559
  %call55 = call %struct._object* @PyList_GetItem(%struct._object* %call38, i64 %conv) #2, !dbg !2561
  call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !991, metadata !1131), !dbg !2562
  %tobool56 = icmp eq %struct._object* %call55, null, !dbg !2563
  br i1 %tobool56, label %do.body.58, label %if.end.72, !dbg !2564

do.body.58:                                       ; preds = %if.end.54
  call void @llvm.dbg.value(metadata %struct._object* %call38, i64 0, metadata !1000, metadata !1131), !dbg !2565
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %call38, i64 0, i32 0, !dbg !2567
  %19 = load i64, i64* %ob_refcnt61, align 8, !dbg !2567, !tbaa !1163
  %dec62 = add i64 %19, -1, !dbg !2567
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !2567, !tbaa !1163
  %cmp63 = icmp eq i64 %dec62, 0, !dbg !2567
  br i1 %cmp63, label %if.else.66, label %cleanup.96, !dbg !2569

if.else.66:                                       ; preds = %do.body.58
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %call38, i64 0, i32 1, !dbg !2570
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2570, !tbaa !1169
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2570
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !2570, !tbaa !1170
  call void %21(%struct._object* %call38) #2, !dbg !2570
  br label %cleanup.96

if.end.72:                                        ; preds = %if.end.54
  call void @llvm.dbg.value(metadata %struct._object** %category, i64 0, metadata !978, metadata !1131), !dbg !2500
  %22 = load %struct._object*, %struct._object** %category, align 8, !dbg !2572, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !977, metadata !1131), !dbg !2499
  %23 = load %struct._object*, %struct._object** %message, align 8, !dbg !2573, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !979, metadata !1131), !dbg !2501
  %24 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2574, !tbaa !1149
  call void @llvm.dbg.value(metadata i32* %lineno, i64 0, metadata !980, metadata !1131), !dbg !2502
  %25 = load i32, i32* %lineno, align 4, !dbg !2575, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct._object** %module, i64 0, metadata !981, metadata !1131), !dbg !2494
  %26 = load %struct._object*, %struct._object** %module, align 8, !dbg !2576, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %registry, i64 0, metadata !982, metadata !1131), !dbg !2496
  %27 = load %struct._object*, %struct._object** %registry, align 8, !dbg !2577, !tbaa !1149
  %call73 = call fastcc %struct._object* @warn_explicit(%struct._object* %22, %struct._object* %23, %struct._object* %24, i32 %25, %struct._object* %26, %struct._object* %27, %struct._object* %call55), !dbg !2578
  call void @llvm.dbg.value(metadata %struct._object* %call73, i64 0, metadata !992, metadata !1131), !dbg !2579
  call void @llvm.dbg.value(metadata %struct._object* %call38, i64 0, metadata !1004, metadata !1131), !dbg !2580
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %call38, i64 0, i32 0, !dbg !2582
  %28 = load i64, i64* %ob_refcnt77, align 8, !dbg !2582, !tbaa !1163
  %dec78 = add i64 %28, -1, !dbg !2582
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !2582, !tbaa !1163
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !2582
  br i1 %cmp79, label %if.else.82, label %cleanup.96, !dbg !2584

if.else.82:                                       ; preds = %if.end.72
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %call38, i64 0, i32 1, !dbg !2585
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !2585, !tbaa !1169
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !2585
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !2585, !tbaa !1170
  call void %30(%struct._object* %call38) #2, !dbg !2585
  br label %cleanup.96

standard_call:                                    ; preds = %if.end.15, %if.end.21, %do.body, %if.else.34, %if.end
  call void @llvm.dbg.value(metadata %struct._object** %category, i64 0, metadata !978, metadata !1131), !dbg !2500
  %31 = load %struct._object*, %struct._object** %category, align 8, !dbg !2587, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %message, i64 0, metadata !977, metadata !1131), !dbg !2499
  %32 = load %struct._object*, %struct._object** %message, align 8, !dbg !2588, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !979, metadata !1131), !dbg !2501
  %33 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2589, !tbaa !1149
  call void @llvm.dbg.value(metadata i32* %lineno, i64 0, metadata !980, metadata !1131), !dbg !2502
  %34 = load i32, i32* %lineno, align 4, !dbg !2590, !tbaa !1351
  call void @llvm.dbg.value(metadata %struct._object** %module, i64 0, metadata !981, metadata !1131), !dbg !2494
  %35 = load %struct._object*, %struct._object** %module, align 8, !dbg !2591, !tbaa !1149
  call void @llvm.dbg.value(metadata %struct._object** %registry, i64 0, metadata !982, metadata !1131), !dbg !2496
  %36 = load %struct._object*, %struct._object** %registry, align 8, !dbg !2592, !tbaa !1149
  %call95 = call fastcc %struct._object* @warn_explicit(%struct._object* %31, %struct._object* %32, %struct._object* %33, i32 %34, %struct._object* %35, %struct._object* %36, %struct._object* null), !dbg !2593
  br label %cleanup.96, !dbg !2594

cleanup.96:                                       ; preds = %if.else.82, %if.end.72, %if.else.66, %do.body.58, %if.end.49, %if.end.25, %if.end.11, %if.then.2, %entry, %standard_call
  %retval.1 = phi %struct._object* [ %call95, %standard_call ], [ null, %entry ], [ %call73, %if.else.82 ], [ %call73, %if.end.72 ], [ null, %if.else.66 ], [ null, %do.body.58 ], [ null, %if.end.49 ], [ null, %if.end.25 ], [ null, %if.end.11 ], [ null, %if.then.2 ]
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2595
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2595
  ret %struct._object* %retval.1, !dbg !2595
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #3

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #3

declare %struct._object* @PyList_New(i64) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @create_filter(%struct._object* %category, i8* nocapture readonly %action) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %category, i64 0, metadata !1024, metadata !1131), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %action, i64 0, metadata !1025, metadata !1131), !dbg !2597
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1026, metadata !1131), !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !1032, metadata !1131), !dbg !2599
  %call = tail call i32 @strcmp(i8* %action, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2600
  %tobool = icmp eq i32 %call, 0, !dbg !2603
  br i1 %tobool, label %if.then.36, label %cond.false.97, !dbg !2604

if.then.36:                                       ; preds = %entry
  %0 = load %struct._object*, %struct._object** @create_filter.ignore_str, align 8, !dbg !2605, !tbaa !1149
  %cmp37 = icmp eq %struct._object* %0, null, !dbg !2608
  br i1 %cmp37, label %if.then.39, label %if.end.250, !dbg !2609

if.then.39:                                       ; preds = %if.then.36
  %call40 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2610
  store %struct._object* %call40, %struct._object** @create_filter.ignore_str, align 8, !dbg !2612, !tbaa !1149
  %cmp41 = icmp eq %struct._object* %call40, null, !dbg !2613
  br i1 %cmp41, label %cleanup, label %if.end.250, !dbg !2615

cond.false.97:                                    ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !1039, metadata !1131), !dbg !2616
  %call98 = tail call i32 @strcmp(i8* %action, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2617
  %tobool101 = icmp eq i32 %call98, 0, !dbg !2620
  br i1 %tobool101, label %if.then.102, label %cond.false.164, !dbg !2621

if.then.102:                                      ; preds = %cond.false.97
  %1 = load %struct._object*, %struct._object** @create_filter.error_str, align 8, !dbg !2622, !tbaa !1149
  %cmp103 = icmp eq %struct._object* %1, null, !dbg !2625
  br i1 %cmp103, label %if.then.105, label %if.end.250, !dbg !2626

if.then.105:                                      ; preds = %if.then.102
  %call106 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2627
  store %struct._object* %call106, %struct._object** @create_filter.error_str, align 8, !dbg !2629, !tbaa !1149
  %cmp107 = icmp eq %struct._object* %call106, null, !dbg !2630
  br i1 %cmp107, label %cleanup, label %if.end.250, !dbg !2632

cond.false.164:                                   ; preds = %cond.false.97
  tail call void @llvm.dbg.value(metadata i64 7, i64 0, metadata !1046, metadata !1131), !dbg !2633
  %call165 = tail call i32 @strcmp(i8* %action, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !2634
  %tobool168 = icmp eq i32 %call165, 0, !dbg !2637
  br i1 %tobool168, label %if.then.169, label %cond.false.231, !dbg !2638

if.then.169:                                      ; preds = %cond.false.164
  %2 = load %struct._object*, %struct._object** @create_filter.default_str, align 8, !dbg !2639, !tbaa !1149
  %cmp170 = icmp eq %struct._object* %2, null, !dbg !2642
  br i1 %cmp170, label %if.then.172, label %if.end.250, !dbg !2643

if.then.172:                                      ; preds = %if.then.169
  %call173 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !2644
  store %struct._object* %call173, %struct._object** @create_filter.default_str, align 8, !dbg !2646, !tbaa !1149
  %cmp174 = icmp eq %struct._object* %call173, null, !dbg !2647
  br i1 %cmp174, label %cleanup, label %if.end.250, !dbg !2649

cond.false.231:                                   ; preds = %cond.false.164
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !1053, metadata !1131), !dbg !2650
  %call232 = tail call i32 @strcmp(i8* %action, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !2651
  %tobool235 = icmp eq i32 %call232, 0, !dbg !2654
  br i1 %tobool235, label %if.then.236, label %if.else.246, !dbg !2655

if.then.236:                                      ; preds = %cond.false.231
  %3 = load %struct._object*, %struct._object** @create_filter.always_str, align 8, !dbg !2656, !tbaa !1149
  %cmp237 = icmp eq %struct._object* %3, null, !dbg !2659
  br i1 %cmp237, label %if.then.239, label %if.end.250, !dbg !2660

if.then.239:                                      ; preds = %if.then.236
  %call240 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !2661
  store %struct._object* %call240, %struct._object** @create_filter.always_str, align 8, !dbg !2663, !tbaa !1149
  %cmp241 = icmp eq %struct._object* %call240, null, !dbg !2664
  br i1 %cmp241, label %cleanup, label %if.end.250, !dbg !2666

if.else.246:                                      ; preds = %cond.false.231
  tail call void @Py_FatalError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !2667
  unreachable, !dbg !2667

if.end.250:                                       ; preds = %if.then.236, %if.then.239, %if.then.169, %if.then.172, %if.then.102, %if.then.105, %if.then.36, %if.then.39
  %action_obj.0 = phi %struct._object* [ %call40, %if.then.39 ], [ %0, %if.then.36 ], [ %call106, %if.then.105 ], [ %1, %if.then.102 ], [ %call173, %if.then.172 ], [ %2, %if.then.169 ], [ %call240, %if.then.239 ], [ %3, %if.then.236 ], !dbg !2669
  %call251 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !2670
  tail call void @llvm.dbg.value(metadata %struct._object* %call251, i64 0, metadata !1027, metadata !1131), !dbg !2671
  %cmp252 = icmp eq %struct._object* %call251, null, !dbg !2672
  br i1 %cmp252, label %cleanup, label %if.end.255, !dbg !2674

if.end.255:                                       ; preds = %if.end.250
  %call256 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 5, %struct._object* %action_obj.0, %struct._object* nonnull @_Py_NoneStruct, %struct._object* %category, %struct._object* nonnull @_Py_NoneStruct, %struct._object* %call251) #2, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct._object* %call256, i64 0, metadata !1028, metadata !1131), !dbg !2676
  tail call void @llvm.dbg.value(metadata %struct._object* %call251, i64 0, metadata !1057, metadata !1131), !dbg !2677
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call251, i64 0, i32 0, !dbg !2679
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2679, !tbaa !1163
  %dec = add i64 %4, -1, !dbg !2679
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2679, !tbaa !1163
  %cmp258 = icmp eq i64 %dec, 0, !dbg !2679
  br i1 %cmp258, label %if.else.261, label %cleanup, !dbg !2681

if.else.261:                                      ; preds = %if.end.255
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call251, i64 0, i32 1, !dbg !2682
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2682, !tbaa !1169
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2682
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2682, !tbaa !1170
  tail call void %6(%struct._object* %call251) #2, !dbg !2682
  br label %cleanup

cleanup:                                          ; preds = %if.else.261, %if.end.255, %if.end.250, %if.then.239, %if.then.172, %if.then.105, %if.then.39
  %retval.0 = phi %struct._object* [ null, %if.then.39 ], [ null, %if.then.105 ], [ null, %if.then.172 ], [ null, %if.then.239 ], [ null, %if.end.250 ], [ %call256, %if.end.255 ], [ %call256, %if.else.261 ]
  ret %struct._object* %retval.0, !dbg !2684
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1128, !1129}
!llvm.ident = !{!1130}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !542, globals: !1059)
!1 = !DIFile(filename: "Python/_warnings.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !12, line: 451, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!15 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!16 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!17 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!18 = !{!19, !20, !358, !472, !490, !498, !515, !516, !518, !520, !413, !522, !523, !531, !109, !538, !540, !44}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !22, line: 109, baseType: !23)
!22 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !22, line: 105, size: 128, align: 64, elements: !24)
!24 = !{!25, !33}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !23, file: !22, line: 107, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !27, line: 177, baseType: !28)
!27 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !29, line: 102, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !31, line: 181, baseType: !32)
!31 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!32 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !23, file: !22, line: 108, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !22, line: 334, size: 3200, align: 64, elements: !36)
!36 = !{!37, !43, !47, !48, !49, !54, !117, !122, !127, !128, !133, !185, !216, !228, !234, !235, !236, !238, !240, !271, !272, !273, !282, !283, !288, !289, !291, !293, !303, !306, !324, !325, !326, !328, !330, !331, !333, !338, !343, !348, !349, !350, !351, !352, !353, !354, !355, !357}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !22, line: 335, baseType: !38, size: 192, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !22, line: 114, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 111, size: 192, align: 64, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !39, file: !22, line: 112, baseType: !21, size: 128, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !39, file: !22, line: 113, baseType: !26, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !35, file: !22, line: 336, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !35, file: !22, line: 337, baseType: !26, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !35, file: !22, line: 337, baseType: !26, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !35, file: !22, line: 341, baseType: !50, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !22, line: 308, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !20}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !35, file: !22, line: 342, baseType: !55, size: 64, align: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !22, line: 314, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !20, !60, !59}
!59 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 48, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 246, size: 1728, align: 64, elements: !64)
!63 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!64 = !{!65, !66, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !86, !87, !88, !89, !91, !93, !95, !99, !102, !104, !105, !106, !107, !108, !112, !113}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !62, file: !63, line: 247, baseType: !59, size: 32, align: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !62, file: !63, line: 252, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !62, file: !63, line: 253, baseType: !67, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !62, file: !63, line: 254, baseType: !67, size: 64, align: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !62, file: !63, line: 255, baseType: !67, size: 64, align: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !62, file: !63, line: 256, baseType: !67, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !62, file: !63, line: 257, baseType: !67, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !62, file: !63, line: 258, baseType: !67, size: 64, align: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !62, file: !63, line: 259, baseType: !67, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !62, file: !63, line: 261, baseType: !67, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !62, file: !63, line: 262, baseType: !67, size: 64, align: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !62, file: !63, line: 263, baseType: !67, size: 64, align: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !62, file: !63, line: 265, baseType: !79, size: 64, align: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !63, line: 161, size: 192, align: 64, elements: !81)
!81 = !{!82, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !80, file: !63, line: 162, baseType: !79, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !80, file: !63, line: 163, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !80, file: !63, line: 167, baseType: !59, size: 32, align: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !62, file: !63, line: 267, baseType: !84, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !62, file: !63, line: 269, baseType: !59, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !62, file: !63, line: 273, baseType: !59, size: 32, align: 32, offset: 928)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !62, file: !63, line: 275, baseType: !90, size: 64, align: 64, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 140, baseType: !32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !62, file: !63, line: 279, baseType: !92, size: 16, align: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !62, file: !63, line: 280, baseType: !94, size: 8, align: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !62, file: !63, line: 281, baseType: !96, size: 8, align: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !62, file: !63, line: 285, baseType: !100, size: 64, align: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !63, line: 155, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !62, file: !63, line: 294, baseType: !103, size: 64, align: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 141, baseType: !32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !62, file: !63, line: 303, baseType: !19, size: 64, align: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !62, file: !63, line: 304, baseType: !19, size: 64, align: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !62, file: !63, line: 305, baseType: !19, size: 64, align: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !62, file: !63, line: 306, baseType: !19, size: 64, align: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !62, file: !63, line: 307, baseType: !109, size: 64, align: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 62, baseType: !111)
!110 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!111 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !62, file: !63, line: 309, baseType: !59, size: 32, align: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !62, file: !63, line: 311, baseType: !114, size: 160, align: 8, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !35, file: !22, line: 343, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !22, line: 316, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!20, !20, !67}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !35, file: !22, line: 344, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !22, line: 318, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!59, !20, !67, !20}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !35, file: !22, line: 345, baseType: !19, size: 64, align: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !35, file: !22, line: 346, baseType: !129, size: 64, align: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !22, line: 320, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!20, !20}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !35, file: !22, line: 350, baseType: !134, size: 64, align: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !22, line: 278, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 236, size: 2176, align: 64, elements: !137)
!137 = !{!138, !143, !144, !145, !146, !147, !152, !154, !155, !156, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !136, file: !22, line: 241, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !22, line: 166, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!20, !20, !20}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !136, file: !22, line: 242, baseType: !139, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !136, file: !22, line: 243, baseType: !139, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !136, file: !22, line: 244, baseType: !139, size: 64, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !136, file: !22, line: 245, baseType: !139, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !136, file: !22, line: 246, baseType: !148, size: 64, align: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !22, line: 167, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!20, !20, !20, !20}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !136, file: !22, line: 247, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !22, line: 165, baseType: !130)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !136, file: !22, line: 248, baseType: !153, size: 64, align: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !136, file: !22, line: 249, baseType: !153, size: 64, align: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !136, file: !22, line: 250, baseType: !157, size: 64, align: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !22, line: 168, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!59, !20}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !136, file: !22, line: 251, baseType: !153, size: 64, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !136, file: !22, line: 252, baseType: !139, size: 64, align: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !136, file: !22, line: 253, baseType: !139, size: 64, align: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !136, file: !22, line: 254, baseType: !139, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !136, file: !22, line: 255, baseType: !139, size: 64, align: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !136, file: !22, line: 256, baseType: !139, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !136, file: !22, line: 257, baseType: !153, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !136, file: !22, line: 258, baseType: !19, size: 64, align: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !136, file: !22, line: 259, baseType: !153, size: 64, align: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !136, file: !22, line: 261, baseType: !139, size: 64, align: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !136, file: !22, line: 262, baseType: !139, size: 64, align: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !136, file: !22, line: 263, baseType: !139, size: 64, align: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !136, file: !22, line: 264, baseType: !139, size: 64, align: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !136, file: !22, line: 265, baseType: !148, size: 64, align: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !136, file: !22, line: 266, baseType: !139, size: 64, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !136, file: !22, line: 267, baseType: !139, size: 64, align: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !136, file: !22, line: 268, baseType: !139, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !136, file: !22, line: 269, baseType: !139, size: 64, align: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !136, file: !22, line: 270, baseType: !139, size: 64, align: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !136, file: !22, line: 272, baseType: !139, size: 64, align: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !136, file: !22, line: 273, baseType: !139, size: 64, align: 64, offset: 1920)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !136, file: !22, line: 274, baseType: !139, size: 64, align: 64, offset: 1984)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !136, file: !22, line: 275, baseType: !139, size: 64, align: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !136, file: !22, line: 277, baseType: !153, size: 64, align: 64, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !35, file: !22, line: 351, baseType: !186, size: 64, align: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !22, line: 292, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 280, size: 640, align: 64, elements: !189)
!189 = !{!190, !195, !196, !201, !202, !203, !208, !209, !214, !215}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !188, file: !22, line: 281, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !22, line: 169, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!26, !20}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !188, file: !22, line: 282, baseType: !139, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !188, file: !22, line: 283, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !22, line: 170, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!20, !20, !26}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !188, file: !22, line: 284, baseType: !197, size: 64, align: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !188, file: !22, line: 285, baseType: !19, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !188, file: !22, line: 286, baseType: !204, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !22, line: 172, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!59, !20, !26, !20}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !188, file: !22, line: 287, baseType: !19, size: 64, align: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !188, file: !22, line: 288, baseType: !210, size: 64, align: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !22, line: 231, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!59, !20, !20}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !188, file: !22, line: 290, baseType: !139, size: 64, align: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !188, file: !22, line: 291, baseType: !197, size: 64, align: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !35, file: !22, line: 352, baseType: !217, size: 64, align: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !22, line: 298, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 294, size: 192, align: 64, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !219, file: !22, line: 295, baseType: !191, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !219, file: !22, line: 296, baseType: !139, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !219, file: !22, line: 297, baseType: !224, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !22, line: 174, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!59, !20, !20, !20}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !35, file: !22, line: 356, baseType: !229, size: 64, align: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !22, line: 321, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !20}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !27, line: 186, baseType: !26)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !35, file: !22, line: 357, baseType: !148, size: 64, align: 64, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !35, file: !22, line: 358, baseType: !129, size: 64, align: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !35, file: !22, line: 359, baseType: !237, size: 64, align: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !22, line: 317, baseType: !140)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !35, file: !22, line: 360, baseType: !239, size: 64, align: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !22, line: 319, baseType: !225)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !35, file: !22, line: 363, baseType: !241, size: 64, align: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !22, line: 304, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 301, size: 128, align: 64, elements: !244)
!244 = !{!245, !266}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !243, file: !22, line: 302, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !22, line: 193, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!59, !20, !250, !59}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !22, line: 191, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !22, line: 178, size: 640, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !263, !264, !265}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !252, file: !22, line: 179, baseType: !19, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !252, file: !22, line: 180, baseType: !20, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !252, file: !22, line: 181, baseType: !26, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !252, file: !22, line: 182, baseType: !26, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !252, file: !22, line: 184, baseType: !59, size: 32, align: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !252, file: !22, line: 185, baseType: !59, size: 32, align: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !252, file: !22, line: 186, baseType: !67, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !252, file: !22, line: 187, baseType: !262, size: 64, align: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !252, file: !22, line: 188, baseType: !262, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !252, file: !22, line: 189, baseType: !262, size: 64, align: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !252, file: !22, line: 190, baseType: !19, size: 64, align: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !243, file: !22, line: 303, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !22, line: 194, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !20, !250}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !35, file: !22, line: 366, baseType: !111, size: 64, align: 64, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !35, file: !22, line: 368, baseType: !44, size: 64, align: 64, offset: 1408)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !35, file: !22, line: 372, baseType: !274, size: 64, align: 64, offset: 1472)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !22, line: 233, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!59, !20, !278, !19}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !22, line: 232, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!59, !20, !19}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !35, file: !22, line: 375, baseType: !157, size: 64, align: 64, offset: 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !35, file: !22, line: 379, baseType: !284, size: 64, align: 64, offset: 1600)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !22, line: 322, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!20, !20, !20, !59}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !35, file: !22, line: 382, baseType: !26, size: 64, align: 64, offset: 1664)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !35, file: !22, line: 385, baseType: !290, size: 64, align: 64, offset: 1728)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !22, line: 323, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !35, file: !22, line: 386, baseType: !292, size: 64, align: 64, offset: 1792)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !22, line: 324, baseType: !130)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !35, file: !22, line: 389, baseType: !294, size: 64, align: 64, offset: 1856)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !296, line: 40, size: 256, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !295, file: !296, line: 41, baseType: !44, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !295, file: !296, line: 42, baseType: !300, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !296, line: 18, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !295, file: !296, line: 43, baseType: !59, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !295, file: !296, line: 45, baseType: !44, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !35, file: !22, line: 390, baseType: !304, size: 64, align: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !22, line: 390, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !35, file: !22, line: 391, baseType: !307, size: 64, align: 64, offset: 1984)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !309, line: 11, size: 320, align: 64, elements: !310)
!309 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!310 = !{!311, !312, !317, !322, !323}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 12, baseType: !67, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !308, file: !309, line: 13, baseType: !313, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !309, line: 8, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!20, !20, !19}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !308, file: !309, line: 14, baseType: !318, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !309, line: 9, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!59, !20, !20, !19}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !308, file: !309, line: 15, baseType: !67, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !308, file: !309, line: 16, baseType: !19, size: 64, align: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !35, file: !22, line: 392, baseType: !34, size: 64, align: 64, offset: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !35, file: !22, line: 393, baseType: !20, size: 64, align: 64, offset: 2112)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !35, file: !22, line: 394, baseType: !327, size: 64, align: 64, offset: 2176)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !22, line: 325, baseType: !149)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !35, file: !22, line: 395, baseType: !329, size: 64, align: 64, offset: 2240)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !22, line: 326, baseType: !225)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !35, file: !22, line: 396, baseType: !26, size: 64, align: 64, offset: 2304)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !35, file: !22, line: 397, baseType: !332, size: 64, align: 64, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !22, line: 327, baseType: !225)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !35, file: !22, line: 398, baseType: !334, size: 64, align: 64, offset: 2432)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !22, line: 329, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!20, !34, !26}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !35, file: !22, line: 399, baseType: !339, size: 64, align: 64, offset: 2496)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !22, line: 328, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!20, !34, !20, !20}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !35, file: !22, line: 400, baseType: !344, size: 64, align: 64, offset: 2560)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !22, line: 307, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !19}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !35, file: !22, line: 401, baseType: !157, size: 64, align: 64, offset: 2624)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !35, file: !22, line: 402, baseType: !20, size: 64, align: 64, offset: 2688)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !35, file: !22, line: 403, baseType: !20, size: 64, align: 64, offset: 2752)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !35, file: !22, line: 404, baseType: !20, size: 64, align: 64, offset: 2816)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !35, file: !22, line: 405, baseType: !20, size: 64, align: 64, offset: 2880)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !35, file: !22, line: 406, baseType: !20, size: 64, align: 64, offset: 2944)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !35, file: !22, line: 407, baseType: !50, size: 64, align: 64, offset: 3008)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !35, file: !22, line: 410, baseType: !356, size: 32, align: 32, offset: 3072)
!356 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !35, file: !22, line: 412, baseType: !50, size: 64, align: 64, offset: 3136)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !360, line: 139, baseType: !361)
!360 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !360, line: 69, size: 1536, align: 64, elements: !362)
!362 = !{!363, !365, !366, !386, !445, !446, !447, !448, !449, !450, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !361, file: !360, line: 72, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !360, line: 73, baseType: !364, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !361, file: !360, line: 74, baseType: !367, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !360, line: 44, baseType: !369)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !360, line: 19, size: 832, align: 64, elements: !370)
!370 = !{!371, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !360, line: 21, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !369, file: !360, line: 22, baseType: !364, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !369, file: !360, line: 24, baseType: !20, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !369, file: !360, line: 25, baseType: !20, size: 64, align: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !369, file: !360, line: 26, baseType: !20, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !369, file: !360, line: 27, baseType: !20, size: 64, align: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !369, file: !360, line: 28, baseType: !20, size: 64, align: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !369, file: !360, line: 30, baseType: !20, size: 64, align: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !369, file: !360, line: 31, baseType: !20, size: 64, align: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !369, file: !360, line: 32, baseType: !20, size: 64, align: 64, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !369, file: !360, line: 33, baseType: !59, size: 32, align: 32, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !369, file: !360, line: 34, baseType: !59, size: 32, align: 32, offset: 672)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !369, file: !360, line: 37, baseType: !59, size: 32, align: 32, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !369, file: !360, line: 43, baseType: !20, size: 64, align: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !361, file: !360, line: 76, baseType: !387, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !389, line: 17, size: 3072, align: 64, elements: !390)
!389 = !DIFile(filename: "Include/frameobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!390 = !{!391, !392, !393, !420, !421, !422, !423, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !443}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !388, file: !389, line: 18, baseType: !38, size: 192, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !388, file: !389, line: 19, baseType: !387, size: 64, align: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !388, file: !389, line: 20, baseType: !394, size: 64, align: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !396, line: 33, baseType: !397)
!396 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!397 = !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 11, size: 1152, align: 64, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !414, !415, !416, !417, !418, !419}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !397, file: !396, line: 12, baseType: !21, size: 128, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !397, file: !396, line: 13, baseType: !59, size: 32, align: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !397, file: !396, line: 14, baseType: !59, size: 32, align: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !397, file: !396, line: 15, baseType: !59, size: 32, align: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !397, file: !396, line: 16, baseType: !59, size: 32, align: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !397, file: !396, line: 17, baseType: !59, size: 32, align: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !397, file: !396, line: 18, baseType: !20, size: 64, align: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !397, file: !396, line: 19, baseType: !20, size: 64, align: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !397, file: !396, line: 20, baseType: !20, size: 64, align: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !397, file: !396, line: 21, baseType: !20, size: 64, align: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !397, file: !396, line: 22, baseType: !20, size: 64, align: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !397, file: !396, line: 23, baseType: !20, size: 64, align: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !397, file: !396, line: 25, baseType: !412, size: 64, align: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !397, file: !396, line: 26, baseType: !20, size: 64, align: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !397, file: !396, line: 27, baseType: !20, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !397, file: !396, line: 28, baseType: !59, size: 32, align: 32, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !397, file: !396, line: 29, baseType: !20, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !397, file: !396, line: 31, baseType: !19, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !397, file: !396, line: 32, baseType: !20, size: 64, align: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !388, file: !389, line: 21, baseType: !20, size: 64, align: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !388, file: !389, line: 22, baseType: !20, size: 64, align: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !388, file: !389, line: 23, baseType: !20, size: 64, align: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !388, file: !389, line: 24, baseType: !424, size: 64, align: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !388, file: !389, line: 28, baseType: !424, size: 64, align: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !388, file: !389, line: 29, baseType: !20, size: 64, align: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !388, file: !389, line: 38, baseType: !20, size: 64, align: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !388, file: !389, line: 38, baseType: !20, size: 64, align: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !388, file: !389, line: 38, baseType: !20, size: 64, align: 64, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !388, file: !389, line: 40, baseType: !20, size: 64, align: 64, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !388, file: !389, line: 42, baseType: !59, size: 32, align: 32, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !388, file: !389, line: 48, baseType: !59, size: 32, align: 32, offset: 992)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !388, file: !389, line: 49, baseType: !59, size: 32, align: 32, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !388, file: !389, line: 50, baseType: !46, size: 8, align: 8, offset: 1056)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !388, file: !389, line: 51, baseType: !436, size: 1920, align: 32, offset: 1088)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1920, align: 32, elements: !115)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !389, line: 15, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 11, size: 96, align: 32, elements: !439)
!439 = !{!440, !441, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !438, file: !389, line: 12, baseType: !59, size: 32, align: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !438, file: !389, line: 13, baseType: !59, size: 32, align: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !438, file: !389, line: 14, baseType: !59, size: 32, align: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !388, file: !389, line: 52, baseType: !444, size: 64, align: 64, offset: 3008)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, align: 64, elements: !97)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !361, file: !360, line: 77, baseType: !59, size: 32, align: 32, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !361, file: !360, line: 78, baseType: !46, size: 8, align: 8, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !361, file: !360, line: 80, baseType: !46, size: 8, align: 8, offset: 296)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !361, file: !360, line: 85, baseType: !59, size: 32, align: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !361, file: !360, line: 86, baseType: !59, size: 32, align: 32, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !361, file: !360, line: 88, baseType: !451, size: 64, align: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !360, line: 54, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!59, !20, !387, !59, !20}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !361, file: !360, line: 89, baseType: !451, size: 64, align: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !361, file: !360, line: 90, baseType: !20, size: 64, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !361, file: !360, line: 91, baseType: !20, size: 64, align: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !361, file: !360, line: 93, baseType: !20, size: 64, align: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !361, file: !360, line: 94, baseType: !20, size: 64, align: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !361, file: !360, line: 95, baseType: !20, size: 64, align: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !361, file: !360, line: 97, baseType: !20, size: 64, align: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !361, file: !360, line: 98, baseType: !20, size: 64, align: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !361, file: !360, line: 99, baseType: !20, size: 64, align: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !361, file: !360, line: 101, baseType: !20, size: 64, align: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !361, file: !360, line: 103, baseType: !59, size: 32, align: 32, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !361, file: !360, line: 105, baseType: !20, size: 64, align: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !361, file: !360, line: 106, baseType: !32, size: 64, align: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !361, file: !360, line: 108, baseType: !59, size: 32, align: 32, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !361, file: !360, line: 109, baseType: !20, size: 64, align: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !361, file: !360, line: 134, baseType: !345, size: 64, align: 64, offset: 1408)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !361, file: !360, line: 135, baseType: !19, size: 64, align: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !12, line: 351, baseType: !474)
!474 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 217, size: 384, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479, !487}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !474, file: !12, line: 291, baseType: !21, size: 128, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !474, file: !12, line: 292, baseType: !26, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !474, file: !12, line: 293, baseType: !233, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !474, file: !12, line: 349, baseType: !480, size: 32, align: 32, offset: 256)
!480 = !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !12, line: 294, size: 32, align: 32, elements: !481)
!481 = !{!482, !483, !484, !485, !486}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !480, file: !12, line: 303, baseType: !356, size: 2, align: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !480, file: !12, line: 331, baseType: !356, size: 3, align: 32, offset: 2)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !480, file: !12, line: 336, baseType: !356, size: 1, align: 32, offset: 5)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !480, file: !12, line: 340, baseType: !356, size: 1, align: 32, offset: 6)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !480, file: !12, line: 345, baseType: !356, size: 1, align: 32, offset: 7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !474, file: !12, line: 350, baseType: !488, size: 64, align: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !110, line: 90, baseType: !59)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !12, line: 363, baseType: !492)
!492 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 356, size: 576, align: 64, elements: !493)
!493 = !{!494, !495, !496, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !492, file: !12, line: 357, baseType: !473, size: 384, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !492, file: !12, line: 358, baseType: !26, size: 64, align: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !492, file: !12, line: 360, baseType: !67, size: 64, align: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !492, file: !12, line: 361, baseType: !26, size: 64, align: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !12, line: 376, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 368, size: 640, align: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !500, file: !12, line: 369, baseType: !491, size: 576, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !500, file: !12, line: 375, baseType: !504, size: 64, align: 64, offset: 576)
!504 = !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !12, line: 370, size: 64, align: 64, elements: !505)
!505 = !{!506, !507, !510, !513}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !504, file: !12, line: 371, baseType: !19, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !504, file: !12, line: 372, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !12, line: 134, baseType: !413)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !504, file: !12, line: 373, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !12, line: 129, baseType: !92)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !504, file: !12, line: 374, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !12, line: 121, baseType: !356)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !525, line: 40, baseType: !526)
!525 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!526 = !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 23, size: 320, align: 64, elements: !527)
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !526, file: !525, line: 24, baseType: !38, size: 192, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !526, file: !525, line: 26, baseType: !424, size: 64, align: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !526, file: !525, line: 39, baseType: !26, size: 64, align: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !533, line: 33, baseType: !534)
!533 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!534 = !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 25, size: 256, align: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !534, file: !533, line: 26, baseType: !38, size: 192, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !534, file: !533, line: 27, baseType: !444, size: 64, align: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!542 = !{!543, !569, !580, !586, !599, !628, !662, !667, !677, !695, !755, !764, !769, !772, !829, !836, !847, !876, !884, !889, !894, !915, !923, !959, !967, !972, !1006, !1020}
!543 = !DISubprogram(name: "PyErr_WarnFormat", scope: !1, file: !1, line: 774, type: !544, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i8*, ...)* @PyErr_WarnFormat, variables: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!59, !20, !26, !44, null}
!546 = !{!547, !548, !549, !550, !551, !552, !565}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !543, file: !1, line: 774, type: !20)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack_level", arg: 2, scope: !543, file: !1, line: 774, type: !26)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !543, file: !1, line: 775, type: !44)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !543, file: !1, line: 777, type: !59)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !543, file: !1, line: 778, type: !20)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !543, file: !1, line: 779, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !29, line: 79, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !555, line: 50, baseType: !556)
!555 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 779, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 192, align: 64, elements: !97)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 779, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 779, size: 192, align: 64, elements: !560)
!560 = !{!561, !562, !563, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !559, file: !1, line: 779, baseType: !356, size: 32, align: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !559, file: !1, line: 779, baseType: !356, size: 32, align: 32, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !559, file: !1, line: 779, baseType: !19, size: 64, align: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !559, file: !1, line: 779, baseType: !19, size: 64, align: 64, offset: 128)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !566, file: !1, line: 789, type: !20)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 789, column: 9)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 787, column: 26)
!568 = distinct !DILexicalBlock(scope: !543, file: !1, line: 787, column: 9)
!569 = !DISubprogram(name: "PyErr_WarnEx", scope: !1, file: !1, line: 798, type: !570, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i64)* @PyErr_WarnEx, variables: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!59, !20, !44, !26}
!572 = !{!573, !574, !575, !576, !577, !578}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !569, file: !1, line: 798, type: !20)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 2, scope: !569, file: !1, line: 798, type: !44)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack_level", arg: 3, scope: !569, file: !1, line: 798, type: !26)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !569, file: !1, line: 800, type: !59)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !569, file: !1, line: 801, type: !20)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !1, line: 805, type: !20)
!579 = distinct !DILexicalBlock(scope: !569, file: !1, line: 805, column: 5)
!580 = !DISubprogram(name: "PyErr_Warn", scope: !1, file: !1, line: 815, type: !581, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyErr_Warn, variables: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!59, !20, !67}
!583 = !{!584, !585}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !580, file: !1, line: 815, type: !20)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 2, scope: !580, file: !1, line: 815, type: !67)
!586 = !DISubprogram(name: "PyErr_WarnExplicitObject", scope: !1, file: !1, line: 822, type: !587, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct._object*)* @PyErr_WarnExplicitObject, variables: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{!59, !20, !20, !20, !59, !20, !20}
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !586, file: !1, line: 822, type: !20)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 2, scope: !586, file: !1, line: 822, type: !20)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !586, file: !1, line: 823, type: !20)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !586, file: !1, line: 823, type: !59)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 5, scope: !586, file: !1, line: 824, type: !20)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 6, scope: !586, file: !1, line: 824, type: !20)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !586, file: !1, line: 826, type: !20)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !1, line: 833, type: !20)
!598 = distinct !DILexicalBlock(scope: !586, file: !1, line: 833, column: 5)
!599 = !DISubprogram(name: "PyErr_WarnExplicit", scope: !1, file: !1, line: 838, type: !600, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i8*, i32, i8*, %struct._object*)* @PyErr_WarnExplicit, variables: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!59, !20, !44, !44, !59, !44, !20}
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !615, !618, !620, !623, !625}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !599, file: !1, line: 838, type: !20)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 2, scope: !599, file: !1, line: 838, type: !44)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename_str", arg: 3, scope: !599, file: !1, line: 839, type: !44)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !599, file: !1, line: 839, type: !59)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_str", arg: 5, scope: !599, file: !1, line: 840, type: !44)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 6, scope: !599, file: !1, line: 840, type: !20)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !599, file: !1, line: 842, type: !20)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !599, file: !1, line: 843, type: !20)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !599, file: !1, line: 844, type: !20)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !599, file: !1, line: 845, type: !59)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !614, file: !1, line: 859, type: !20)
!614 = distinct !DILexicalBlock(scope: !599, file: !1, line: 859, column: 5)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !1, line: 859, type: !20)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 859, column: 5)
!617 = distinct !DILexicalBlock(scope: !614, file: !1, line: 859, column: 5)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !619, file: !1, line: 860, type: !20)
!619 = distinct !DILexicalBlock(scope: !599, file: !1, line: 860, column: 5)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !621, file: !1, line: 860, type: !20)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 860, column: 5)
!622 = distinct !DILexicalBlock(scope: !619, file: !1, line: 860, column: 5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !624, file: !1, line: 861, type: !20)
!624 = distinct !DILexicalBlock(scope: !599, file: !1, line: 861, column: 5)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !626, file: !1, line: 861, type: !20)
!626 = distinct !DILexicalBlock(scope: !627, file: !1, line: 861, column: 5)
!627 = distinct !DILexicalBlock(scope: !624, file: !1, line: 861, column: 5)
!628 = !DISubprogram(name: "PyErr_WarnExplicitFormat", scope: !1, file: !1, line: 866, type: !629, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i32, i8*, %struct._object*, i8*, ...)* @PyErr_WarnExplicitFormat, variables: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!59, !20, !44, !59, !44, !20, !44, null}
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !646, !648, !652, !654, !657, !659}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !628, file: !1, line: 866, type: !20)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename_str", arg: 2, scope: !628, file: !1, line: 867, type: !44)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 3, scope: !628, file: !1, line: 867, type: !59)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_str", arg: 4, scope: !628, file: !1, line: 868, type: !44)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 5, scope: !628, file: !1, line: 868, type: !20)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 6, scope: !628, file: !1, line: 869, type: !44)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !628, file: !1, line: 871, type: !20)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !628, file: !1, line: 872, type: !20)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !628, file: !1, line: 873, type: !20)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !628, file: !1, line: 874, type: !59)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !628, file: !1, line: 875, type: !553)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !644, file: !1, line: 892, type: !20)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 891, column: 26)
!645 = distinct !DILexicalBlock(scope: !628, file: !1, line: 891, column: 9)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !1, line: 895, type: !20)
!647 = distinct !DILexicalBlock(scope: !644, file: !1, line: 895, column: 9)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !649, file: !1, line: 897, type: !20)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 897, column: 13)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 896, column: 26)
!651 = distinct !DILexicalBlock(scope: !644, file: !1, line: 896, column: 13)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !653, file: !1, line: 903, type: !20)
!653 = distinct !DILexicalBlock(scope: !628, file: !1, line: 903, column: 5)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !655, file: !1, line: 903, type: !20)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 903, column: 5)
!656 = distinct !DILexicalBlock(scope: !653, file: !1, line: 903, column: 5)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !658, file: !1, line: 904, type: !20)
!658 = distinct !DILexicalBlock(scope: !628, file: !1, line: 904, column: 5)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !1, line: 904, type: !20)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 904, column: 5)
!661 = distinct !DILexicalBlock(scope: !658, file: !1, line: 904, column: 5)
!662 = !DISubprogram(name: "_PyWarnings_Init", scope: !1, file: !1, line: 1038, type: !663, isLocal: false, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @_PyWarnings_Init, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!20}
!665 = !{!666}
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !662, file: !1, line: 1040, type: !20)
!667 = !DISubprogram(name: "warn_unicode", scope: !1, file: !1, line: 757, type: !668, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, variables: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!59, !20, !20, !26}
!670 = !{!671, !672, !673, !674, !675}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !667, file: !1, line: 757, type: !20)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 2, scope: !667, file: !1, line: 757, type: !20)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack_level", arg: 3, scope: !667, file: !1, line: 758, type: !26)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !667, file: !1, line: 760, type: !20)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !1, line: 768, type: !20)
!676 = distinct !DILexicalBlock(scope: !667, file: !1, line: 768, column: 5)
!677 = !DISubprogram(name: "do_warn", scope: !1, file: !1, line: 639, type: !678, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i64)* @do_warn, variables: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!20, !20, !20, !26}
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !691, !693}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 1, scope: !677, file: !1, line: 639, type: !20)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 2, scope: !677, file: !1, line: 639, type: !20)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack_level", arg: 3, scope: !677, file: !1, line: 639, type: !26)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !677, file: !1, line: 641, type: !20)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !677, file: !1, line: 641, type: !20)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registry", scope: !677, file: !1, line: 641, type: !20)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !677, file: !1, line: 641, type: !20)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !677, file: !1, line: 642, type: !59)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !690, file: !1, line: 649, type: !20)
!690 = distinct !DILexicalBlock(scope: !677, file: !1, line: 649, column: 5)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !1, line: 650, type: !20)
!692 = distinct !DILexicalBlock(scope: !677, file: !1, line: 650, column: 5)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !1, line: 651, type: !20)
!694 = distinct !DILexicalBlock(scope: !677, file: !1, line: 651, column: 5)
!695 = !DISubprogram(name: "setup_context", scope: !1, file: !1, line: 484, type: !696, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, variables: !699)
!696 = !DISubroutineType(types: !697)
!697 = !{!59, !26, !424, !698, !424, !424}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !709, !716, !717, !720, !722, !725, !728, !729, !730, !734, !737, !741, !745, !747, !750, !752}
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack_level", arg: 1, scope: !695, file: !1, line: 484, type: !26)
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !695, file: !1, line: 484, type: !424)
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 3, scope: !695, file: !1, line: 484, type: !698)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 4, scope: !695, file: !1, line: 485, type: !424)
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 5, scope: !695, file: !1, line: 485, type: !424)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "globals", scope: !695, file: !1, line: 487, type: !20)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !695, file: !1, line: 490, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !389, line: 53, baseType: !388)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !710, file: !1, line: 490, type: !711)
!710 = distinct !DILexicalBlock(scope: !695, file: !1, line: 490, column: 24)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !713)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !713, file: !4, line: 32, baseType: !19, size: 64, align: 64)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !710, file: !1, line: 490, type: !19)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !710, file: !1, line: 490, type: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !710, file: !1, line: 490, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !723, file: !1, line: 510, type: !59)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 509, column: 28)
!724 = distinct !DILexicalBlock(scope: !695, file: !1, line: 509, column: 9)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !726, file: !1, line: 536, type: !26)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 535, column: 58)
!727 = distinct !DILexicalBlock(scope: !695, file: !1, line: 535, column: 9)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !726, file: !1, line: 537, type: !59)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !726, file: !1, line: 538, type: !19)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv", scope: !731, file: !1, line: 567, type: !20)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 566, column: 95)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 566, column: 13)
!733 = distinct !DILexicalBlock(scope: !727, file: !1, line: 564, column: 10)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_true", scope: !735, file: !1, line: 571, type: !59)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 570, column: 78)
!736 = distinct !DILexicalBlock(scope: !731, file: !1, line: 570, column: 17)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !1, line: 577, type: !20)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 577, column: 21)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 576, column: 34)
!740 = distinct !DILexicalBlock(scope: !735, file: !1, line: 576, column: 21)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !742, file: !1, line: 581, type: !20)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 581, column: 21)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 580, column: 36)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 580, column: 26)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !746, file: !1, line: 605, type: !20)
!746 = distinct !DILexicalBlock(scope: !695, file: !1, line: 605, column: 5)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !748, file: !1, line: 605, type: !20)
!748 = distinct !DILexicalBlock(scope: !749, file: !1, line: 605, column: 5)
!749 = distinct !DILexicalBlock(scope: !746, file: !1, line: 605, column: 5)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !751, file: !1, line: 606, type: !20)
!751 = distinct !DILexicalBlock(scope: !695, file: !1, line: 606, column: 5)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !753, file: !1, line: 606, type: !20)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 606, column: 5)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 606, column: 5)
!755 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !756, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !761)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !758, !721}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!761 = !{!762, !763}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !755, file: !4, line: 59, type: !758)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !755, file: !4, line: 59, type: !721)
!764 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !765, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !721}
!767 = !{!768}
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !764, file: !4, line: 51, type: !721)
!769 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !765, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !770)
!770 = !{!771}
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !769, file: !4, line: 44, type: !721)
!772 = !DISubprogram(name: "warn_explicit", scope: !1, file: !1, line: 329, type: !773, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct._object*, %struct._object*)* @warn_explicit, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!20, !20, !20, !20, !59, !20, !20, !20}
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !793, !796, !800, !802, !804, !807, !809, !812, !814, !817, !819, !822, !824, !826}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !772, file: !1, line: 329, type: !20)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 2, scope: !772, file: !1, line: 329, type: !20)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !772, file: !1, line: 330, type: !20)
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !772, file: !1, line: 330, type: !59)
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 5, scope: !772, file: !1, line: 331, type: !20)
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 6, scope: !772, file: !1, line: 331, type: !20)
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sourceline", arg: 7, scope: !772, file: !1, line: 331, type: !20)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !772, file: !1, line: 333, type: !20)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !772, file: !1, line: 333, type: !20)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !772, file: !1, line: 333, type: !20)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno_obj", scope: !772, file: !1, line: 333, type: !20)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !772, file: !1, line: 334, type: !20)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !772, file: !1, line: 335, type: !20)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !772, file: !1, line: 336, type: !59)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "show_fxn", scope: !791, file: !1, line: 439, type: !20)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 438, column: 18)
!792 = distinct !DILexicalBlock(scope: !772, file: !1, line: 438, column: 9)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !794, file: !1, line: 446, type: !20)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 445, column: 14)
!795 = distinct !DILexicalBlock(scope: !791, file: !1, line: 440, column: 13)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !797, file: !1, line: 452, type: !20)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 452, column: 17)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 448, column: 46)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 448, column: 17)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !801, file: !1, line: 459, type: !20)
!801 = distinct !DILexicalBlock(scope: !794, file: !1, line: 459, column: 13)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !803, file: !1, line: 460, type: !20)
!803 = distinct !DILexicalBlock(scope: !794, file: !1, line: 460, column: 13)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !805, file: !1, line: 460, type: !20)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 460, column: 13)
!806 = distinct !DILexicalBlock(scope: !803, file: !1, line: 460, column: 13)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !808, file: !1, line: 473, type: !20)
!808 = distinct !DILexicalBlock(scope: !772, file: !1, line: 473, column: 5)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !810, file: !1, line: 473, type: !20)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 473, column: 5)
!811 = distinct !DILexicalBlock(scope: !808, file: !1, line: 473, column: 5)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !813, file: !1, line: 474, type: !20)
!813 = distinct !DILexicalBlock(scope: !772, file: !1, line: 474, column: 5)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !1, line: 474, type: !20)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 474, column: 5)
!816 = distinct !DILexicalBlock(scope: !813, file: !1, line: 474, column: 5)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !818, file: !1, line: 475, type: !20)
!818 = distinct !DILexicalBlock(scope: !772, file: !1, line: 475, column: 5)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !820, file: !1, line: 475, type: !20)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 475, column: 5)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 475, column: 5)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !823, file: !1, line: 476, type: !20)
!823 = distinct !DILexicalBlock(scope: !772, file: !1, line: 476, column: 5)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !825, file: !1, line: 477, type: !20)
!825 = distinct !DILexicalBlock(scope: !772, file: !1, line: 477, column: 5)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !827, file: !1, line: 477, type: !20)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 477, column: 5)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 477, column: 5)
!829 = !DISubprogram(name: "normalize_module", scope: !1, file: !1, line: 201, type: !131, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, variables: !830)
!830 = !{!831, !832, !833, !834, !835}
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !829, file: !1, line: 201, type: !20)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !829, file: !1, line: 203, type: !20)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !829, file: !1, line: 204, type: !59)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !829, file: !1, line: 205, type: !19)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !829, file: !1, line: 206, type: !26)
!836 = !DISubprogram(name: "already_warned", scope: !1, file: !1, line: 179, type: !837, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, variables: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!59, !20, !20, !59}
!839 = !{!840, !841, !842, !843, !844}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 1, scope: !836, file: !1, line: 179, type: !20)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !836, file: !1, line: 179, type: !20)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "should_set", arg: 3, scope: !836, file: !1, line: 179, type: !59)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "already_warned", scope: !836, file: !1, line: 181, type: !20)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !845, file: !1, line: 188, type: !59)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 187, column: 33)
!846 = distinct !DILexicalBlock(scope: !836, file: !1, line: 187, column: 9)
!847 = !DISubprogram(name: "get_filter", scope: !1, file: !1, line: 105, type: !848, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, variables: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!20, !20, !20, !26, !20, !424}
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !863, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !847, file: !1, line: 105, type: !20)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 2, scope: !847, file: !1, line: 105, type: !20)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 3, scope: !847, file: !1, line: 105, type: !26)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 4, scope: !847, file: !1, line: 106, type: !20)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 5, scope: !847, file: !1, line: 106, type: !424)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !847, file: !1, line: 108, type: !20)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !847, file: !1, line: 109, type: !26)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "warnings_filters", scope: !847, file: !1, line: 110, type: !20)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !860, file: !1, line: 118, type: !20)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 118, column: 9)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 117, column: 10)
!862 = distinct !DILexicalBlock(scope: !847, file: !1, line: 113, column: 9)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_item", scope: !864, file: !1, line: 130, type: !20)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 129, column: 53)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 129, column: 5)
!866 = distinct !DILexicalBlock(scope: !847, file: !1, line: 129, column: 5)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !864, file: !1, line: 130, type: !20)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !864, file: !1, line: 130, type: !20)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cat", scope: !864, file: !1, line: 130, type: !20)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !864, file: !1, line: 130, type: !20)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ln_obj", scope: !864, file: !1, line: 130, type: !20)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ln", scope: !864, file: !1, line: 131, type: !26)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_subclass", scope: !864, file: !1, line: 132, type: !59)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "good_msg", scope: !864, file: !1, line: 132, type: !59)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "good_mod", scope: !864, file: !1, line: 132, type: !59)
!876 = !DISubprogram(name: "check_matched", scope: !1, file: !1, line: 20, type: !212, isLocal: true, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, variables: !877)
!877 = !{!878, !879, !880, !881, !882}
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !876, file: !1, line: 20, type: !20)
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !876, file: !1, line: 20, type: !20)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !876, file: !1, line: 22, type: !20)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !876, file: !1, line: 24, type: !59)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !883, file: !1, line: 33, type: !20)
!883 = distinct !DILexicalBlock(scope: !876, file: !1, line: 33, column: 5)
!884 = !DISubprogram(name: "get_default_action", scope: !1, file: !1, line: 85, type: !663, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, variables: !885)
!885 = !{!886, !887}
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "default_action", scope: !884, file: !1, line: 87, type: !20)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !888, file: !1, line: 97, type: !20)
!888 = distinct !DILexicalBlock(scope: !884, file: !1, line: 97, column: 5)
!889 = !DISubprogram(name: "get_once_registry", scope: !1, file: !1, line: 68, type: !663, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, variables: !890)
!890 = !{!891, !892}
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registry", scope: !889, file: !1, line: 70, type: !20)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !893, file: !1, line: 78, type: !20)
!893 = distinct !DILexicalBlock(scope: !889, file: !1, line: 78, column: 5)
!894 = !DISubprogram(name: "update_registry", scope: !1, file: !1, line: 234, type: !895, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, variables: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!59, !20, !20, !20, !59}
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !907, !910, !912}
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "registry", arg: 1, scope: !894, file: !1, line: 234, type: !20)
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 2, scope: !894, file: !1, line: 234, type: !20)
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 3, scope: !894, file: !1, line: 234, type: !20)
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "add_zero", arg: 4, scope: !894, file: !1, line: 235, type: !59)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "altkey", scope: !894, file: !1, line: 237, type: !20)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zero", scope: !894, file: !1, line: 237, type: !20)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !894, file: !1, line: 238, type: !59)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !906, file: !1, line: 250, type: !20)
!906 = distinct !DILexicalBlock(scope: !894, file: !1, line: 250, column: 5)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !908, file: !1, line: 250, type: !20)
!908 = distinct !DILexicalBlock(scope: !909, file: !1, line: 250, column: 5)
!909 = distinct !DILexicalBlock(scope: !906, file: !1, line: 250, column: 5)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !911, file: !1, line: 251, type: !20)
!911 = distinct !DILexicalBlock(scope: !894, file: !1, line: 251, column: 5)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !913, file: !1, line: 251, type: !20)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 251, column: 5)
!914 = distinct !DILexicalBlock(scope: !911, file: !1, line: 251, column: 5)
!915 = !DISubprogram(name: "get_warnings_attr", scope: !1, file: !1, line: 42, type: !916, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @get_warnings_attr, variables: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{!20, !44}
!918 = !{!919, !920, !921, !922}
!919 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attr", arg: 1, scope: !915, file: !1, line: 42, type: !44)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_modules", scope: !915, file: !1, line: 45, type: !20)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "warnings_module", scope: !915, file: !1, line: 46, type: !20)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !915, file: !1, line: 47, type: !59)
!923 = !DISubprogram(name: "show_warning", scope: !1, file: !1, line: 256, type: !924, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, variables: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !20, !59, !20, !20, !20}
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !938, !940, !944, !947, !948, !949, !950, !951, !952, !954, !956}
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !923, file: !1, line: 256, type: !20)
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !923, file: !1, line: 256, type: !59)
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 3, scope: !923, file: !1, line: 256, type: !20)
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 4, scope: !923, file: !1, line: 257, type: !20)
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sourceline", arg: 5, scope: !923, file: !1, line: 257, type: !20)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f_stderr", scope: !923, file: !1, line: 259, type: !20)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !923, file: !1, line: 260, type: !20)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno_str", scope: !923, file: !1, line: 261, type: !935)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, align: 8, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 128)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !939, file: !1, line: 289, type: !20)
!939 = distinct !DILexicalBlock(scope: !923, file: !1, line: 289, column: 5)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !941, file: !1, line: 289, type: !20)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 289, column: 5)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 289, column: 5)
!943 = distinct !DILexicalBlock(scope: !939, file: !1, line: 289, column: 5)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !945, file: !1, line: 293, type: !59)
!945 = distinct !DILexicalBlock(scope: !946, file: !1, line: 292, column: 21)
!946 = distinct !DILexicalBlock(scope: !923, file: !1, line: 292, column: 9)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !945, file: !1, line: 294, type: !19)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !945, file: !1, line: 295, type: !26)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !945, file: !1, line: 295, type: !26)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !945, file: !1, line: 296, type: !515)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "truncated", scope: !945, file: !1, line: 297, type: !20)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !953, file: !1, line: 316, type: !20)
!953 = distinct !DILexicalBlock(scope: !945, file: !1, line: 316, column: 9)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !955, file: !1, line: 324, type: !20)
!955 = distinct !DILexicalBlock(scope: !923, file: !1, line: 324, column: 5)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !957, file: !1, line: 324, type: !20)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 324, column: 5)
!958 = distinct !DILexicalBlock(scope: !955, file: !1, line: 324, column: 5)
!959 = !DISubprogram(name: "warnings_warn", scope: !1, file: !1, line: 656, type: !150, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @warnings_warn, variables: !960)
!960 = !{!961, !962, !963, !964, !965, !966}
!961 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !959, file: !1, line: 656, type: !20)
!962 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !959, file: !1, line: 656, type: !20)
!963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !959, file: !1, line: 656, type: !20)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !959, file: !1, line: 659, type: !20)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "category", scope: !959, file: !1, line: 659, type: !20)
!966 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stack_level", scope: !959, file: !1, line: 660, type: !26)
!967 = !DISubprogram(name: "get_category", scope: !1, file: !1, line: 611, type: !141, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: true, variables: !968)
!968 = !{!969, !970, !971}
!969 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 1, scope: !967, file: !1, line: 611, type: !20)
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 2, scope: !967, file: !1, line: 611, type: !20)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !967, file: !1, line: 613, type: !59)
!972 = !DISubprogram(name: "warnings_warn_explicit", scope: !1, file: !1, line: 673, type: !150, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @warnings_warn_explicit, variables: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !987, !988, !989, !990, !991, !992, !993, !998, !1000, !1004}
!974 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !972, file: !1, line: 673, type: !20)
!975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !972, file: !1, line: 673, type: !20)
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !972, file: !1, line: 673, type: !20)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !972, file: !1, line: 677, type: !20)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "category", scope: !972, file: !1, line: 678, type: !20)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !972, file: !1, line: 679, type: !20)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !972, file: !1, line: 680, type: !59)
!981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !972, file: !1, line: 681, type: !20)
!982 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registry", scope: !972, file: !1, line: 682, type: !20)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module_globals", scope: !972, file: !1, line: 683, type: !20)
!984 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !985, file: !1, line: 693, type: !20)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 690, column: 25)
!986 = distinct !DILexicalBlock(scope: !972, file: !1, line: 690, column: 9)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loader", scope: !985, file: !1, line: 694, type: !20)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module_name", scope: !985, file: !1, line: 695, type: !20)
!989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source", scope: !985, file: !1, line: 696, type: !20)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source_list", scope: !985, file: !1, line: 697, type: !20)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source_line", scope: !985, file: !1, line: 698, type: !20)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returned", scope: !985, file: !1, line: 699, type: !20)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !994, file: !1, line: 722, type: !20)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 722, column: 13)
!995 = distinct !DILexicalBlock(scope: !996, file: !1, line: 721, column: 37)
!996 = distinct !DILexicalBlock(scope: !997, file: !1, line: 721, column: 18)
!997 = distinct !DILexicalBlock(scope: !985, file: !1, line: 719, column: 13)
!998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !999, file: !1, line: 730, type: !20)
!999 = distinct !DILexicalBlock(scope: !985, file: !1, line: 730, column: 9)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1001, file: !1, line: 737, type: !20)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 737, column: 13)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 736, column: 27)
!1003 = distinct !DILexicalBlock(scope: !985, file: !1, line: 736, column: 13)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1005, file: !1, line: 744, type: !20)
!1005 = distinct !DILexicalBlock(scope: !985, file: !1, line: 744, column: 9)
!1006 = !DISubprogram(name: "init_filters", scope: !1, file: !1, line: 982, type: !663, isLocal: true, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, variables: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013}
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filters", scope: !1006, file: !1, line: 984, type: !20)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !1006, file: !1, line: 985, type: !356)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1006, file: !1, line: 986, type: !356)
!1011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_action", scope: !1006, file: !1, line: 987, type: !44)
!1012 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resource_action", scope: !1006, file: !1, line: 987, type: !44)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1014, file: !1, line: 1016, type: !20)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 1016, column: 13)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 1015, column: 50)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 1015, column: 13)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1014, column: 34)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 1014, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 1014, column: 5)
!1020 = !DISubprogram(name: "create_filter", scope: !1, file: !1, line: 927, type: !1021, isLocal: true, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @create_filter, variables: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!20, !20, !44}
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1032, !1033, !1035, !1036, !1039, !1040, !1042, !1043, !1046, !1047, !1049, !1050, !1053, !1054, !1056, !1057}
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "category", arg: 1, scope: !1020, file: !1, line: 927, type: !20)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "action", arg: 2, scope: !1020, file: !1, line: 927, type: !44)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action_obj", scope: !1020, file: !1, line: 933, type: !20)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !1020, file: !1, line: 934, type: !20)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1020, file: !1, line: 934, type: !20)
!1029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1030, file: !1, line: 936, type: !109)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 936, column: 10)
!1031 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 936, column: 9)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1030, file: !1, line: 936, type: !109)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1034, file: !1, line: 936, type: !540)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 936, column: 10)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1034, file: !1, line: 936, type: !59)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1037, file: !1, line: 944, type: !109)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 944, column: 15)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 944, column: 14)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1037, file: !1, line: 944, type: !109)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1041, file: !1, line: 944, type: !540)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 944, column: 15)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1041, file: !1, line: 944, type: !59)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1044, file: !1, line: 952, type: !109)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 952, column: 15)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 952, column: 14)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1044, file: !1, line: 952, type: !109)
!1047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1048, file: !1, line: 952, type: !540)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 952, column: 15)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1048, file: !1, line: 952, type: !59)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !1051, file: !1, line: 960, type: !109)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 960, column: 15)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 960, column: 14)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !1051, file: !1, line: 960, type: !109)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !1055, file: !1, line: 960, type: !540)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 960, column: 15)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !1055, file: !1, line: 960, type: !59)
!1057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1058, file: !1, line: 977, type: !20)
!1058 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 977, column: 5)
!1059 = !{!1060, !1061, !1062, !1063, !1071, !1072, !1073, !1074, !1075, !1098, !1102, !1106, !1110, !1114, !1118, !1119, !1120, !1124, !1125, !1126, !1127}
!1060 = !DIGlobalVariable(name: "_filters", scope: !0, file: !1, line: 12, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @_filters)
!1061 = !DIGlobalVariable(name: "_once_registry", scope: !0, file: !1, line: 13, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @_once_registry)
!1062 = !DIGlobalVariable(name: "_default_action", scope: !0, file: !1, line: 14, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @_default_action)
!1063 = !DIGlobalVariable(name: "PyId_argv", scope: !0, file: !1, line: 16, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_argv)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !22, line: 144, baseType: !1065)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !22, line: 140, size: 192, align: 64, elements: !1066)
!1066 = !{!1067, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !22, line: 141, baseType: !1068, size: 64, align: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1065, file: !22, line: 142, baseType: !44, size: 64, align: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1065, file: !22, line: 143, baseType: !20, size: 64, align: 64, offset: 128)
!1071 = !DIGlobalVariable(name: "PyId_match", scope: !876, file: !1, line: 23, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @check_matched.PyId_match)
!1072 = !DIGlobalVariable(name: "warnings_str", scope: !915, file: !1, line: 44, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @get_warnings_attr.warnings_str)
!1073 = !DIGlobalVariable(name: "PyId___name__", scope: !923, file: !1, line: 262, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @show_warning.PyId___name__)
!1074 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !1, line: 17, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!1075 = !DIGlobalVariable(name: "warningsmodule", scope: !0, file: !1, line: 1024, type: !1076, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @warningsmodule)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1077, line: 47, size: 832, align: 64, elements: !1078)
!1077 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1078 = !{!1079, !1088, !1089, !1090, !1091, !1094, !1095, !1096, !1097}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1076, file: !1077, line: 48, baseType: !1080, size: 320, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1077, line: 38, baseType: !1081)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1077, line: 33, size: 320, align: 64, elements: !1082)
!1082 = !{!1083, !1084, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1081, file: !1077, line: 34, baseType: !21, size: 128, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1081, file: !1077, line: 35, baseType: !1085, size: 64, align: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1081, file: !1077, line: 36, baseType: !26, size: 64, align: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1081, file: !1077, line: 37, baseType: !20, size: 64, align: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1076, file: !1077, line: 49, baseType: !44, size: 64, align: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1076, file: !1077, line: 50, baseType: !44, size: 64, align: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1076, file: !1077, line: 51, baseType: !26, size: 64, align: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1076, file: !1077, line: 52, baseType: !1092, size: 64, align: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !296, line: 47, baseType: !295)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1076, file: !1077, line: 53, baseType: !157, size: 64, align: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1076, file: !1077, line: 54, baseType: !274, size: 64, align: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1076, file: !1077, line: 55, baseType: !157, size: 64, align: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1076, file: !1077, line: 56, baseType: !344, size: 64, align: 64, offset: 768)
!1098 = !DIGlobalVariable(name: "warnings__doc__", scope: !0, file: !1, line: 6, type: !1099, isLocal: true, isDefinition: true, variable: [108 x i8]* @warnings__doc__)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 864, align: 8, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 108)
!1102 = !DIGlobalVariable(name: "warnings_functions", scope: !0, file: !1, line: 915, type: !1103, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @warnings_functions)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 768, align: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 3)
!1106 = !DIGlobalVariable(name: "kw_list", scope: !959, file: !1, line: 658, type: !1107, isLocal: true, isDefinition: true, variable: [4 x i8*]* @warnings_warn.kw_list)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, align: 64, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 4)
!1110 = !DIGlobalVariable(name: "warn_doc", scope: !0, file: !1, line: 909, type: !1111, isLocal: true, isDefinition: true, variable: [59 x i8]* @warn_doc)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 472, align: 8, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 59)
!1114 = !DIGlobalVariable(name: "kwd_list", scope: !972, file: !1, line: 675, type: !1115, isLocal: true, isDefinition: true, variable: [8 x i8*]* @warnings_warn_explicit.kwd_list)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 512, align: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 8)
!1118 = !DIGlobalVariable(name: "PyId_get_source", scope: !972, file: !1, line: 691, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @warnings_warn_explicit.PyId_get_source)
!1119 = !DIGlobalVariable(name: "PyId_splitlines", scope: !972, file: !1, line: 692, type: !1064, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @warnings_warn_explicit.PyId_splitlines)
!1120 = !DIGlobalVariable(name: "warn_explicit_doc", scope: !0, file: !1, line: 912, type: !1121, isLocal: true, isDefinition: true, variable: [47 x i8]* @warn_explicit_doc)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, align: 8, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 47)
!1124 = !DIGlobalVariable(name: "ignore_str", scope: !1020, file: !1, line: 929, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @create_filter.ignore_str)
!1125 = !DIGlobalVariable(name: "error_str", scope: !1020, file: !1, line: 930, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @create_filter.error_str)
!1126 = !DIGlobalVariable(name: "default_str", scope: !1020, file: !1, line: 931, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @create_filter.default_str)
!1127 = !DIGlobalVariable(name: "always_str", scope: !1020, file: !1, line: 932, type: !20, isLocal: true, isDefinition: true, variable: %struct._object** @create_filter.always_str)
!1128 = !{i32 2, !"Dwarf Version", i32 4}
!1129 = !{i32 2, !"Debug Info Version", i32 3}
!1130 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1131 = !DIExpression()
!1132 = !DILocation(line: 774, column: 28, scope: !543)
!1133 = !DILocation(line: 774, column: 49, scope: !543)
!1134 = !DILocation(line: 775, column: 30, scope: !543)
!1135 = !DILocation(line: 779, column: 5, scope: !543)
!1136 = !DILocation(line: 779, column: 13, scope: !543)
!1137 = !DILocation(line: 782, column: 5, scope: !543)
!1138 = !DILocation(line: 786, column: 15, scope: !543)
!1139 = !DILocation(line: 778, column: 15, scope: !543)
!1140 = !DILocation(line: 787, column: 17, scope: !568)
!1141 = !DILocation(line: 787, column: 9, scope: !543)
!1142 = !DILocation(line: 757, column: 24, scope: !667, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 788, column: 15, scope: !567)
!1144 = !DILocation(line: 757, column: 44, scope: !667, inlinedAt: !1143)
!1145 = !DILocation(line: 758, column: 25, scope: !667, inlinedAt: !1143)
!1146 = !DILocation(line: 762, column: 18, scope: !1147, inlinedAt: !1143)
!1147 = distinct !DILexicalBlock(scope: !667, file: !1, line: 762, column: 9)
!1148 = !DILocation(line: 763, column: 20, scope: !1147, inlinedAt: !1143)
!1149 = !{!1150, !1150, i64 0}
!1150 = !{!"any pointer", !1151, i64 0}
!1151 = !{!"omnipotent char", !1152, i64 0}
!1152 = !{!"Simple C/C++ TBAA"}
!1153 = !DILocation(line: 762, column: 9, scope: !667, inlinedAt: !1143)
!1154 = !DILocation(line: 765, column: 11, scope: !667, inlinedAt: !1143)
!1155 = !DILocation(line: 760, column: 15, scope: !667, inlinedAt: !1143)
!1156 = !DILocation(line: 766, column: 13, scope: !1157, inlinedAt: !1143)
!1157 = distinct !DILexicalBlock(scope: !667, file: !1, line: 766, column: 9)
!1158 = !DILocation(line: 766, column: 9, scope: !667, inlinedAt: !1143)
!1159 = !DILocation(line: 768, column: 5, scope: !1160, inlinedAt: !1143)
!1160 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!1161 = !DILocation(line: 768, column: 5, scope: !1162, inlinedAt: !1143)
!1162 = distinct !DILexicalBlock(scope: !676, file: !1, line: 768, column: 5)
!1163 = !{!1164, !1165, i64 0}
!1164 = !{!"_object", !1165, i64 0, !1150, i64 8}
!1165 = !{!"long", !1151, i64 0}
!1166 = !DILocation(line: 768, column: 5, scope: !676, inlinedAt: !1143)
!1167 = !DILocation(line: 768, column: 5, scope: !1168, inlinedAt: !1143)
!1168 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 3)
!1169 = !{!1164, !1150, i64 8}
!1170 = !{!1171, !1150, i64 48}
!1171 = !{!"_typeobject", !1172, i64 0, !1150, i64 24, !1165, i64 32, !1165, i64 40, !1150, i64 48, !1150, i64 56, !1150, i64 64, !1150, i64 72, !1150, i64 80, !1150, i64 88, !1150, i64 96, !1150, i64 104, !1150, i64 112, !1150, i64 120, !1150, i64 128, !1150, i64 136, !1150, i64 144, !1150, i64 152, !1150, i64 160, !1165, i64 168, !1150, i64 176, !1150, i64 184, !1150, i64 192, !1150, i64 200, !1165, i64 208, !1150, i64 216, !1150, i64 224, !1150, i64 232, !1150, i64 240, !1150, i64 248, !1150, i64 256, !1150, i64 264, !1150, i64 272, !1150, i64 280, !1165, i64 288, !1150, i64 296, !1150, i64 304, !1150, i64 312, !1150, i64 320, !1150, i64 328, !1150, i64 336, !1150, i64 344, !1150, i64 352, !1150, i64 360, !1150, i64 368, !1150, i64 376, !1173, i64 384, !1150, i64 392}
!1172 = !{!"", !1164, i64 0, !1165, i64 16}
!1173 = !{!"int", !1151, i64 0}
!1174 = !DILocation(line: 788, column: 15, scope: !567)
!1175 = !DILocation(line: 777, column: 9, scope: !543)
!1176 = !DILocation(line: 789, column: 9, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !566, file: !1, discriminator: 1)
!1178 = !DILocation(line: 789, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !566, file: !1, line: 789, column: 9)
!1180 = !DILocation(line: 789, column: 9, scope: !566)
!1181 = !DILocation(line: 789, column: 9, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1179, file: !1, discriminator: 3)
!1183 = !DILocation(line: 793, column: 5, scope: !543)
!1184 = !DILocation(line: 795, column: 1, scope: !543)
!1185 = !DILocation(line: 794, column: 5, scope: !543)
!1186 = !DILocation(line: 798, column: 24, scope: !569)
!1187 = !DILocation(line: 798, column: 46, scope: !569)
!1188 = !DILocation(line: 798, column: 63, scope: !569)
!1189 = !DILocation(line: 801, column: 25, scope: !569)
!1190 = !DILocation(line: 801, column: 15, scope: !569)
!1191 = !DILocation(line: 802, column: 17, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !569, file: !1, line: 802, column: 9)
!1193 = !DILocation(line: 802, column: 9, scope: !569)
!1194 = !DILocation(line: 757, column: 24, scope: !667, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 804, column: 11, scope: !569)
!1196 = !DILocation(line: 757, column: 44, scope: !667, inlinedAt: !1195)
!1197 = !DILocation(line: 758, column: 25, scope: !667, inlinedAt: !1195)
!1198 = !DILocation(line: 762, column: 18, scope: !1147, inlinedAt: !1195)
!1199 = !DILocation(line: 763, column: 20, scope: !1147, inlinedAt: !1195)
!1200 = !DILocation(line: 762, column: 9, scope: !667, inlinedAt: !1195)
!1201 = !DILocation(line: 765, column: 11, scope: !667, inlinedAt: !1195)
!1202 = !DILocation(line: 760, column: 15, scope: !667, inlinedAt: !1195)
!1203 = !DILocation(line: 766, column: 13, scope: !1157, inlinedAt: !1195)
!1204 = !DILocation(line: 766, column: 9, scope: !667, inlinedAt: !1195)
!1205 = !DILocation(line: 768, column: 5, scope: !1160, inlinedAt: !1195)
!1206 = !DILocation(line: 768, column: 5, scope: !1162, inlinedAt: !1195)
!1207 = !DILocation(line: 768, column: 5, scope: !676, inlinedAt: !1195)
!1208 = !DILocation(line: 768, column: 5, scope: !1168, inlinedAt: !1195)
!1209 = !DILocation(line: 804, column: 11, scope: !569)
!1210 = !DILocation(line: 800, column: 9, scope: !569)
!1211 = !DILocation(line: 805, column: 5, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!1213 = !DILocation(line: 805, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !579, file: !1, line: 805, column: 5)
!1215 = !DILocation(line: 805, column: 5, scope: !579)
!1216 = !DILocation(line: 805, column: 5, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1214, file: !1, discriminator: 3)
!1218 = !DILocation(line: 807, column: 1, scope: !569)
!1219 = !DILocation(line: 815, column: 22, scope: !580)
!1220 = !DILocation(line: 815, column: 38, scope: !580)
!1221 = !DILocation(line: 798, column: 24, scope: !569, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 817, column: 12, scope: !580)
!1223 = !DILocation(line: 798, column: 46, scope: !569, inlinedAt: !1222)
!1224 = !DILocation(line: 798, column: 63, scope: !569, inlinedAt: !1222)
!1225 = !DILocation(line: 801, column: 25, scope: !569, inlinedAt: !1222)
!1226 = !DILocation(line: 801, column: 15, scope: !569, inlinedAt: !1222)
!1227 = !DILocation(line: 802, column: 17, scope: !1192, inlinedAt: !1222)
!1228 = !DILocation(line: 802, column: 9, scope: !569, inlinedAt: !1222)
!1229 = !DILocation(line: 757, column: 24, scope: !667, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 804, column: 11, scope: !569, inlinedAt: !1222)
!1231 = !DILocation(line: 757, column: 44, scope: !667, inlinedAt: !1230)
!1232 = !DILocation(line: 758, column: 25, scope: !667, inlinedAt: !1230)
!1233 = !DILocation(line: 762, column: 18, scope: !1147, inlinedAt: !1230)
!1234 = !DILocation(line: 763, column: 20, scope: !1147, inlinedAt: !1230)
!1235 = !DILocation(line: 762, column: 9, scope: !667, inlinedAt: !1230)
!1236 = !DILocation(line: 765, column: 11, scope: !667, inlinedAt: !1230)
!1237 = !DILocation(line: 760, column: 15, scope: !667, inlinedAt: !1230)
!1238 = !DILocation(line: 766, column: 13, scope: !1157, inlinedAt: !1230)
!1239 = !DILocation(line: 766, column: 9, scope: !667, inlinedAt: !1230)
!1240 = !DILocation(line: 768, column: 5, scope: !1160, inlinedAt: !1230)
!1241 = !DILocation(line: 768, column: 5, scope: !1162, inlinedAt: !1230)
!1242 = !DILocation(line: 768, column: 5, scope: !676, inlinedAt: !1230)
!1243 = !DILocation(line: 768, column: 5, scope: !1168, inlinedAt: !1230)
!1244 = !DILocation(line: 804, column: 11, scope: !569, inlinedAt: !1222)
!1245 = !DILocation(line: 800, column: 9, scope: !569, inlinedAt: !1222)
!1246 = !DILocation(line: 805, column: 5, scope: !1212, inlinedAt: !1222)
!1247 = !DILocation(line: 805, column: 5, scope: !1214, inlinedAt: !1222)
!1248 = !DILocation(line: 805, column: 5, scope: !579, inlinedAt: !1222)
!1249 = !DILocation(line: 805, column: 5, scope: !1217, inlinedAt: !1222)
!1250 = !DILocation(line: 817, column: 12, scope: !580)
!1251 = !DILocation(line: 817, column: 5, scope: !580)
!1252 = !DILocation(line: 822, column: 36, scope: !586)
!1253 = !DILocation(line: 822, column: 56, scope: !586)
!1254 = !DILocation(line: 823, column: 36, scope: !586)
!1255 = !DILocation(line: 823, column: 50, scope: !586)
!1256 = !DILocation(line: 824, column: 36, scope: !586)
!1257 = !DILocation(line: 824, column: 54, scope: !586)
!1258 = !DILocation(line: 827, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !586, file: !1, line: 827, column: 9)
!1260 = !DILocation(line: 828, column: 20, scope: !1259)
!1261 = !DILocation(line: 827, column: 9, scope: !586)
!1262 = !DILocation(line: 829, column: 11, scope: !586)
!1263 = !DILocation(line: 826, column: 15, scope: !586)
!1264 = !DILocation(line: 831, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !586, file: !1, line: 831, column: 9)
!1266 = !DILocation(line: 831, column: 9, scope: !586)
!1267 = !DILocation(line: 833, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!1269 = !DILocation(line: 833, column: 5, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !598, file: !1, line: 833, column: 5)
!1271 = !DILocation(line: 833, column: 5, scope: !598)
!1272 = !DILocation(line: 833, column: 5, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1270, file: !1, discriminator: 3)
!1274 = !DILocation(line: 835, column: 1, scope: !586)
!1275 = !DILocation(line: 329, column: 25, scope: !772)
!1276 = !DILocation(line: 329, column: 45, scope: !772)
!1277 = !DILocation(line: 330, column: 25, scope: !772)
!1278 = !DILocation(line: 330, column: 39, scope: !772)
!1279 = !DILocation(line: 331, column: 25, scope: !772)
!1280 = !DILocation(line: 331, column: 43, scope: !772)
!1281 = !DILocation(line: 331, column: 63, scope: !772)
!1282 = !DILocation(line: 333, column: 15, scope: !772)
!1283 = !DILocation(line: 333, column: 28, scope: !772)
!1284 = !DILocation(line: 333, column: 42, scope: !772)
!1285 = !DILocation(line: 333, column: 58, scope: !772)
!1286 = !DILocation(line: 334, column: 15, scope: !772)
!1287 = !DILocation(line: 106, column: 41, scope: !847, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 396, column: 14, scope: !772)
!1289 = !DILocation(line: 342, column: 16, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !772, file: !1, line: 342, column: 9)
!1291 = !DILocation(line: 261, column: 10, scope: !923, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 443, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !795, file: !1, line: 440, column: 31)
!1294 = !DILocation(line: 342, column: 9, scope: !772)
!1295 = !DILocation(line: 343, column: 9, scope: !1290)
!1296 = !DILocation(line: 345, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !772, file: !1, line: 345, column: 9)
!1298 = !DILocation(line: 345, column: 18, scope: !1297)
!1299 = !DILocation(line: 345, column: 22, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 1)
!1301 = !{!1171, !1165, i64 168}
!1302 = !DILocation(line: 345, column: 58, scope: !1297)
!1303 = !DILocation(line: 345, column: 45, scope: !1297)
!1304 = !DILocation(line: 346, column: 25, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 345, column: 71)
!1306 = !DILocation(line: 346, column: 9, scope: !1305)
!1307 = !DILocation(line: 347, column: 9, scope: !1305)
!1308 = !DILocation(line: 351, column: 16, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !772, file: !1, line: 351, column: 9)
!1310 = !DILocation(line: 351, column: 9, scope: !772)
!1311 = !DILocation(line: 201, column: 28, scope: !829, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 352, column: 18, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 351, column: 25)
!1314 = !DILocation(line: 208, column: 11, scope: !829, inlinedAt: !1312)
!1315 = !DILocation(line: 206, column: 16, scope: !829, inlinedAt: !1312)
!1316 = !DILocation(line: 209, column: 13, scope: !1317, inlinedAt: !1312)
!1317 = distinct !DILexicalBlock(scope: !829, file: !1, line: 209, column: 9)
!1318 = !DILocation(line: 209, column: 9, scope: !829, inlinedAt: !1312)
!1319 = !DILocation(line: 212, column: 13, scope: !1320, inlinedAt: !1312)
!1320 = distinct !DILexicalBlock(scope: !829, file: !1, line: 212, column: 9)
!1321 = !DILocation(line: 212, column: 9, scope: !829, inlinedAt: !1312)
!1322 = !DILocation(line: 213, column: 16, scope: !1320, inlinedAt: !1312)
!1323 = !DILocation(line: 213, column: 9, scope: !1320, inlinedAt: !1312)
!1324 = !DILocation(line: 215, column: 12, scope: !829, inlinedAt: !1312)
!1325 = !DILocation(line: 204, column: 9, scope: !829, inlinedAt: !1312)
!1326 = !DILocation(line: 216, column: 12, scope: !829, inlinedAt: !1312)
!1327 = !DILocation(line: 216, column: 12, scope: !1328, inlinedAt: !1312)
!1328 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 1)
!1329 = !DILocation(line: 216, column: 12, scope: !1330, inlinedAt: !1312)
!1330 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 3)
!1331 = !DILocation(line: 216, column: 12, scope: !1332, inlinedAt: !1312)
!1332 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 4)
!1333 = !DILocation(line: 216, column: 12, scope: !1334, inlinedAt: !1312)
!1334 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 2)
!1335 = !DILocation(line: 205, column: 11, scope: !829, inlinedAt: !1312)
!1336 = !DILocation(line: 219, column: 13, scope: !1337, inlinedAt: !1312)
!1337 = distinct !DILexicalBlock(scope: !829, file: !1, line: 219, column: 9)
!1338 = !DILocation(line: 219, column: 18, scope: !1337, inlinedAt: !1312)
!1339 = !DILocation(line: 220, column: 9, scope: !1337, inlinedAt: !1312)
!1340 = !DILocation(line: 220, column: 9, scope: !1341, inlinedAt: !1312)
!1341 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 1)
!1342 = !{!1151, !1151, i64 0}
!1343 = !DILocation(line: 220, column: 9, scope: !1344, inlinedAt: !1312)
!1344 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 2)
!1345 = !DILocation(line: 220, column: 9, scope: !1346, inlinedAt: !1312)
!1346 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 4)
!1347 = !{!1348, !1348, i64 0}
!1348 = !{!"short", !1151, i64 0}
!1349 = !DILocation(line: 220, column: 9, scope: !1350, inlinedAt: !1312)
!1350 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 5)
!1351 = !{!1173, !1173, i64 0}
!1352 = !DILocation(line: 220, column: 43, scope: !1353, inlinedAt: !1312)
!1353 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 8)
!1354 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 3)
!1355 = !DILocation(line: 220, column: 50, scope: !1337, inlinedAt: !1312)
!1356 = !DILocation(line: 221, column: 9, scope: !1337, inlinedAt: !1312)
!1357 = !DILocation(line: 221, column: 9, scope: !1341, inlinedAt: !1312)
!1358 = !DILocation(line: 221, column: 9, scope: !1344, inlinedAt: !1312)
!1359 = !DILocation(line: 221, column: 9, scope: !1346, inlinedAt: !1312)
!1360 = !DILocation(line: 221, column: 9, scope: !1350, inlinedAt: !1312)
!1361 = !DILocation(line: 221, column: 43, scope: !1353, inlinedAt: !1312)
!1362 = !DILocation(line: 221, column: 50, scope: !1337, inlinedAt: !1312)
!1363 = !DILocation(line: 222, column: 9, scope: !1337, inlinedAt: !1312)
!1364 = !DILocation(line: 222, column: 9, scope: !1341, inlinedAt: !1312)
!1365 = !DILocation(line: 222, column: 9, scope: !1344, inlinedAt: !1312)
!1366 = !DILocation(line: 222, column: 9, scope: !1346, inlinedAt: !1312)
!1367 = !DILocation(line: 222, column: 9, scope: !1350, inlinedAt: !1312)
!1368 = !DILocation(line: 222, column: 43, scope: !1353, inlinedAt: !1312)
!1369 = !DILocation(line: 219, column: 9, scope: !829, inlinedAt: !1312)
!1370 = !DILocation(line: 224, column: 54, scope: !1371, inlinedAt: !1312)
!1371 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 223, column: 5)
!1372 = !DILocation(line: 224, column: 18, scope: !1371, inlinedAt: !1312)
!1373 = !DILocation(line: 203, column: 15, scope: !829, inlinedAt: !1312)
!1374 = !DILocation(line: 225, column: 5, scope: !1371, inlinedAt: !1312)
!1375 = !DILocation(line: 228, column: 9, scope: !1376, inlinedAt: !1312)
!1376 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 226, column: 10)
!1377 = !DILocation(line: 353, column: 13, scope: !1313)
!1378 = !DILocation(line: 352, column: 18, scope: !1313)
!1379 = !DILocation(line: 353, column: 20, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 353, column: 13)
!1381 = !DILocation(line: 357, column: 9, scope: !1309)
!1382 = !DILocation(line: 360, column: 5, scope: !772)
!1383 = !DILocation(line: 361, column: 39, scope: !772)
!1384 = !DILocation(line: 361, column: 10, scope: !772)
!1385 = !DILocation(line: 336, column: 9, scope: !772)
!1386 = !DILocation(line: 362, column: 9, scope: !772)
!1387 = !DILocation(line: 366, column: 16, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 365, column: 18)
!1389 = distinct !DILexicalBlock(scope: !772, file: !1, line: 365, column: 9)
!1390 = !DILocation(line: 367, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 367, column: 13)
!1392 = !DILocation(line: 367, column: 13, scope: !1388)
!1393 = !DILocation(line: 369, column: 40, scope: !1388)
!1394 = !DILocation(line: 370, column: 5, scope: !1388)
!1395 = !DILocation(line: 373, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 371, column: 10)
!1397 = !DILocation(line: 374, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 374, column: 13)
!1399 = !DILocation(line: 374, column: 13, scope: !1396)
!1400 = !DILocation(line: 378, column: 34, scope: !772)
!1401 = !DILocation(line: 378, column: 18, scope: !772)
!1402 = !DILocation(line: 379, column: 20, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !772, file: !1, line: 379, column: 9)
!1404 = !DILocation(line: 379, column: 9, scope: !772)
!1405 = !DILocation(line: 383, column: 11, scope: !772)
!1406 = !DILocation(line: 384, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !772, file: !1, line: 384, column: 9)
!1408 = !DILocation(line: 384, column: 9, scope: !772)
!1409 = !DILocation(line: 387, column: 41, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !772, file: !1, line: 387, column: 9)
!1411 = !DILocation(line: 387, column: 28, scope: !1410)
!1412 = !DILocation(line: 179, column: 26, scope: !836, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 388, column: 14, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 387, column: 54)
!1415 = !DILocation(line: 179, column: 46, scope: !836, inlinedAt: !1413)
!1416 = !DILocation(line: 179, column: 55, scope: !836, inlinedAt: !1413)
!1417 = !DILocation(line: 186, column: 22, scope: !836, inlinedAt: !1413)
!1418 = !DILocation(line: 181, column: 15, scope: !836, inlinedAt: !1413)
!1419 = !DILocation(line: 187, column: 24, scope: !846, inlinedAt: !1413)
!1420 = !DILocation(line: 187, column: 9, scope: !836, inlinedAt: !1413)
!1421 = !DILocation(line: 188, column: 18, scope: !845, inlinedAt: !1413)
!1422 = !DILocation(line: 188, column: 13, scope: !845, inlinedAt: !1413)
!1423 = !DILocation(line: 388, column: 14, scope: !1414)
!1424 = !DILocation(line: 105, column: 22, scope: !847, inlinedAt: !1288)
!1425 = !DILocation(line: 105, column: 42, scope: !847, inlinedAt: !1288)
!1426 = !DILocation(line: 105, column: 59, scope: !847, inlinedAt: !1288)
!1427 = !DILocation(line: 106, column: 22, scope: !847, inlinedAt: !1288)
!1428 = !DILocation(line: 112, column: 24, scope: !847, inlinedAt: !1288)
!1429 = !DILocation(line: 110, column: 15, scope: !847, inlinedAt: !1288)
!1430 = !DILocation(line: 113, column: 26, scope: !862, inlinedAt: !1288)
!1431 = !DILocation(line: 113, column: 9, scope: !847, inlinedAt: !1288)
!1432 = !DILocation(line: 114, column: 13, scope: !1433, inlinedAt: !1288)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 114, column: 13)
!1434 = distinct !DILexicalBlock(scope: !862, file: !1, line: 113, column: 35)
!1435 = !DILocation(line: 114, column: 13, scope: !1434, inlinedAt: !1288)
!1436 = !DILocation(line: 118, column: 9, scope: !1437, inlinedAt: !1288)
!1437 = !DILexicalBlockFile(scope: !860, file: !1, discriminator: 1)
!1438 = !DILocation(line: 118, column: 9, scope: !1439, inlinedAt: !1288)
!1439 = distinct !DILexicalBlock(scope: !860, file: !1, line: 118, column: 9)
!1440 = !DILocation(line: 118, column: 9, scope: !860, inlinedAt: !1288)
!1441 = !DILocation(line: 118, column: 9, scope: !1442, inlinedAt: !1288)
!1442 = !DILexicalBlockFile(scope: !1439, file: !1, discriminator: 3)
!1443 = !DILocation(line: 396, column: 14, scope: !772)
!1444 = !DILocation(line: 119, column: 18, scope: !861, inlinedAt: !1288)
!1445 = !DILocation(line: 122, column: 26, scope: !1446, inlinedAt: !1288)
!1446 = distinct !DILexicalBlock(scope: !847, file: !1, line: 122, column: 9)
!1447 = !DILocation(line: 122, column: 9, scope: !1446, inlinedAt: !1288)
!1448 = !DILocation(line: 122, column: 18, scope: !1446, inlinedAt: !1288)
!1449 = !DILocation(line: 122, column: 30, scope: !1450, inlinedAt: !1288)
!1450 = !DILexicalBlockFile(scope: !1446, file: !1, discriminator: 1)
!1451 = !DILocation(line: 122, column: 9, scope: !847, inlinedAt: !1288)
!1452 = !DILocation(line: 129, column: 21, scope: !865, inlinedAt: !1288)
!1453 = !{!1172, !1165, i64 16}
!1454 = !DILocation(line: 129, column: 19, scope: !865, inlinedAt: !1288)
!1455 = !DILocation(line: 129, column: 5, scope: !866, inlinedAt: !1288)
!1456 = !DILocation(line: 134, column: 28, scope: !864, inlinedAt: !1288)
!1457 = !DILocation(line: 123, column: 25, scope: !1458, inlinedAt: !1288)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 122, column: 54)
!1459 = !DILocation(line: 123, column: 9, scope: !1458, inlinedAt: !1288)
!1460 = !DILocation(line: 125, column: 9, scope: !1458, inlinedAt: !1288)
!1461 = !{!1462, !1150, i64 24}
!1462 = !{!"", !1172, i64 0, !1150, i64 24, !1165, i64 32}
!1463 = !DILocation(line: 130, column: 19, scope: !864, inlinedAt: !1288)
!1464 = !DILocation(line: 135, column: 13, scope: !1465, inlinedAt: !1288)
!1465 = distinct !DILexicalBlock(scope: !864, file: !1, line: 135, column: 13)
!1466 = !DILocation(line: 135, column: 36, scope: !1465, inlinedAt: !1288)
!1467 = !DILocation(line: 135, column: 13, scope: !864, inlinedAt: !1288)
!1468 = !DILocation(line: 136, column: 26, scope: !1469, inlinedAt: !1288)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 135, column: 42)
!1470 = !DILocation(line: 136, column: 13, scope: !1469, inlinedAt: !1288)
!1471 = !DILocation(line: 138, column: 13, scope: !1469, inlinedAt: !1288)
!1472 = !DILocation(line: 142, column: 18, scope: !864, inlinedAt: !1288)
!1473 = !DILocation(line: 130, column: 30, scope: !864, inlinedAt: !1288)
!1474 = !DILocation(line: 143, column: 15, scope: !864, inlinedAt: !1288)
!1475 = !DILocation(line: 130, column: 39, scope: !864, inlinedAt: !1288)
!1476 = !DILocation(line: 144, column: 15, scope: !864, inlinedAt: !1288)
!1477 = !DILocation(line: 130, column: 45, scope: !864, inlinedAt: !1288)
!1478 = !DILocation(line: 145, column: 15, scope: !864, inlinedAt: !1288)
!1479 = !DILocation(line: 130, column: 51, scope: !864, inlinedAt: !1288)
!1480 = !DILocation(line: 146, column: 18, scope: !864, inlinedAt: !1288)
!1481 = !DILocation(line: 130, column: 57, scope: !864, inlinedAt: !1288)
!1482 = !DILocation(line: 20, column: 25, scope: !876, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 148, column: 20, scope: !864, inlinedAt: !1288)
!1484 = !DILocation(line: 20, column: 40, scope: !876, inlinedAt: !1483)
!1485 = !DILocation(line: 26, column: 13, scope: !1486, inlinedAt: !1483)
!1486 = distinct !DILexicalBlock(scope: !876, file: !1, line: 26, column: 9)
!1487 = !DILocation(line: 26, column: 9, scope: !876, inlinedAt: !1483)
!1488 = !DILocation(line: 28, column: 14, scope: !876, inlinedAt: !1483)
!1489 = !DILocation(line: 22, column: 15, scope: !876, inlinedAt: !1483)
!1490 = !DILocation(line: 29, column: 16, scope: !1491, inlinedAt: !1483)
!1491 = distinct !DILexicalBlock(scope: !876, file: !1, line: 29, column: 9)
!1492 = !DILocation(line: 29, column: 9, scope: !876, inlinedAt: !1483)
!1493 = !DILocation(line: 32, column: 10, scope: !876, inlinedAt: !1483)
!1494 = !DILocation(line: 24, column: 9, scope: !876, inlinedAt: !1483)
!1495 = !DILocation(line: 33, column: 5, scope: !1496, inlinedAt: !1483)
!1496 = !DILexicalBlockFile(scope: !883, file: !1, discriminator: 1)
!1497 = !DILocation(line: 33, column: 5, scope: !1498, inlinedAt: !1483)
!1498 = distinct !DILexicalBlock(scope: !883, file: !1, line: 33, column: 5)
!1499 = !DILocation(line: 33, column: 5, scope: !883, inlinedAt: !1483)
!1500 = !DILocation(line: 33, column: 5, scope: !1501, inlinedAt: !1483)
!1501 = !DILexicalBlockFile(scope: !1498, file: !1, discriminator: 3)
!1502 = !DILocation(line: 148, column: 20, scope: !864, inlinedAt: !1288)
!1503 = !DILocation(line: 132, column: 26, scope: !864, inlinedAt: !1288)
!1504 = !DILocation(line: 149, column: 22, scope: !1505, inlinedAt: !1288)
!1505 = distinct !DILexicalBlock(scope: !864, file: !1, line: 149, column: 13)
!1506 = !DILocation(line: 149, column: 13, scope: !864, inlinedAt: !1288)
!1507 = !DILocation(line: 20, column: 25, scope: !876, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 152, column: 20, scope: !864, inlinedAt: !1288)
!1509 = !DILocation(line: 20, column: 40, scope: !876, inlinedAt: !1508)
!1510 = !DILocation(line: 26, column: 13, scope: !1486, inlinedAt: !1508)
!1511 = !DILocation(line: 26, column: 9, scope: !876, inlinedAt: !1508)
!1512 = !DILocation(line: 28, column: 14, scope: !876, inlinedAt: !1508)
!1513 = !DILocation(line: 22, column: 15, scope: !876, inlinedAt: !1508)
!1514 = !DILocation(line: 29, column: 16, scope: !1491, inlinedAt: !1508)
!1515 = !DILocation(line: 29, column: 9, scope: !876, inlinedAt: !1508)
!1516 = !DILocation(line: 32, column: 10, scope: !876, inlinedAt: !1508)
!1517 = !DILocation(line: 24, column: 9, scope: !876, inlinedAt: !1508)
!1518 = !DILocation(line: 33, column: 5, scope: !1496, inlinedAt: !1508)
!1519 = !DILocation(line: 33, column: 5, scope: !1498, inlinedAt: !1508)
!1520 = !DILocation(line: 33, column: 5, scope: !883, inlinedAt: !1508)
!1521 = !DILocation(line: 33, column: 5, scope: !1501, inlinedAt: !1508)
!1522 = !DILocation(line: 152, column: 20, scope: !864, inlinedAt: !1288)
!1523 = !DILocation(line: 132, column: 36, scope: !864, inlinedAt: !1288)
!1524 = !DILocation(line: 153, column: 22, scope: !1525, inlinedAt: !1288)
!1525 = distinct !DILexicalBlock(scope: !864, file: !1, line: 153, column: 13)
!1526 = !DILocation(line: 153, column: 13, scope: !864, inlinedAt: !1288)
!1527 = !DILocation(line: 156, column: 23, scope: !864, inlinedAt: !1288)
!1528 = !DILocation(line: 132, column: 13, scope: !864, inlinedAt: !1288)
!1529 = !DILocation(line: 157, column: 25, scope: !1530, inlinedAt: !1288)
!1530 = distinct !DILexicalBlock(scope: !864, file: !1, line: 157, column: 13)
!1531 = !DILocation(line: 157, column: 13, scope: !864, inlinedAt: !1288)
!1532 = !DILocation(line: 160, column: 14, scope: !864, inlinedAt: !1288)
!1533 = !DILocation(line: 131, column: 20, scope: !864, inlinedAt: !1288)
!1534 = !DILocation(line: 161, column: 16, scope: !1535, inlinedAt: !1288)
!1535 = distinct !DILexicalBlock(scope: !864, file: !1, line: 161, column: 13)
!1536 = !DILocation(line: 161, column: 22, scope: !1535, inlinedAt: !1288)
!1537 = !DILocation(line: 161, column: 25, scope: !1538, inlinedAt: !1288)
!1538 = !DILexicalBlockFile(scope: !1535, file: !1, discriminator: 1)
!1539 = !DILocation(line: 161, column: 13, scope: !864, inlinedAt: !1288)
!1540 = !DILocation(line: 164, column: 13, scope: !1541, inlinedAt: !1288)
!1541 = distinct !DILexicalBlock(scope: !864, file: !1, line: 164, column: 13)
!1542 = !DILocation(line: 164, column: 25, scope: !1543, inlinedAt: !1288)
!1543 = !DILexicalBlockFile(scope: !1541, file: !1, discriminator: 1)
!1544 = !DILocation(line: 164, column: 22, scope: !1541, inlinedAt: !1288)
!1545 = !DILocation(line: 164, column: 40, scope: !1546, inlinedAt: !1288)
!1546 = !DILexicalBlockFile(scope: !1541, file: !1, discriminator: 2)
!1547 = !DILocation(line: 164, column: 56, scope: !1541, inlinedAt: !1288)
!1548 = !DILocation(line: 164, column: 71, scope: !1541, inlinedAt: !1288)
!1549 = !DILocation(line: 164, column: 61, scope: !1541, inlinedAt: !1288)
!1550 = !DILocation(line: 129, column: 49, scope: !865, inlinedAt: !1288)
!1551 = !DILocation(line: 109, column: 16, scope: !847, inlinedAt: !1288)
!1552 = !DILocation(line: 89, column: 22, scope: !884, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 168, column: 14, scope: !847, inlinedAt: !1288)
!1554 = !DILocation(line: 87, column: 15, scope: !884, inlinedAt: !1553)
!1555 = !DILocation(line: 90, column: 24, scope: !1556, inlinedAt: !1553)
!1556 = distinct !DILexicalBlock(scope: !884, file: !1, line: 90, column: 9)
!1557 = !DILocation(line: 90, column: 9, scope: !884, inlinedAt: !1553)
!1558 = !DILocation(line: 91, column: 13, scope: !1559, inlinedAt: !1553)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 91, column: 13)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 90, column: 33)
!1561 = !DILocation(line: 94, column: 16, scope: !1560, inlinedAt: !1553)
!1562 = !DILocation(line: 169, column: 16, scope: !1563, inlinedAt: !1288)
!1563 = distinct !DILexicalBlock(scope: !847, file: !1, line: 169, column: 9)
!1564 = !DILocation(line: 97, column: 5, scope: !1565, inlinedAt: !1553)
!1565 = !DILexicalBlockFile(scope: !888, file: !1, discriminator: 1)
!1566 = !DILocation(line: 97, column: 5, scope: !1567, inlinedAt: !1553)
!1567 = distinct !DILexicalBlock(scope: !888, file: !1, line: 97, column: 5)
!1568 = !DILocation(line: 97, column: 5, scope: !888, inlinedAt: !1553)
!1569 = !DILocation(line: 97, column: 5, scope: !1570, inlinedAt: !1553)
!1570 = !DILexicalBlockFile(scope: !1567, file: !1, discriminator: 3)
!1571 = !DILocation(line: 168, column: 14, scope: !847, inlinedAt: !1288)
!1572 = !DILocation(line: 98, column: 21, scope: !884, inlinedAt: !1553)
!1573 = !DILocation(line: 335, column: 15, scope: !772)
!1574 = !DILocation(line: 397, column: 9, scope: !772)
!1575 = !DILocation(line: 172, column: 21, scope: !847, inlinedAt: !1288)
!1576 = !DILocation(line: 172, column: 5, scope: !847, inlinedAt: !1288)
!1577 = !DILocation(line: 174, column: 5, scope: !847, inlinedAt: !1288)
!1578 = !DILocation(line: 397, column: 16, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !772, file: !1, line: 397, column: 9)
!1580 = !DILocation(line: 400, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !772, file: !1, line: 400, column: 9)
!1582 = !DILocation(line: 400, column: 59, scope: !1581)
!1583 = !DILocation(line: 400, column: 9, scope: !772)
!1584 = !DILocation(line: 401, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 400, column: 65)
!1586 = !DILocation(line: 402, column: 9, scope: !1585)
!1587 = !DILocation(line: 408, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !772, file: !1, line: 408, column: 9)
!1589 = !DILocation(line: 408, column: 60, scope: !1588)
!1590 = !DILocation(line: 408, column: 9, scope: !772)
!1591 = !DILocation(line: 409, column: 30, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 409, column: 13)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 408, column: 66)
!1594 = !DILocation(line: 410, column: 17, scope: !1592)
!1595 = !DILocation(line: 410, column: 56, scope: !1592)
!1596 = !DILocation(line: 409, column: 13, scope: !1593)
!1597 = !DILocation(line: 412, column: 18, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 412, column: 18)
!1599 = !DILocation(line: 412, column: 69, scope: !1598)
!1600 = !DILocation(line: 412, column: 18, scope: !1592)
!1601 = !DILocation(line: 414, column: 18, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 414, column: 18)
!1603 = !DILocation(line: 414, column: 67, scope: !1602)
!1604 = !DILocation(line: 414, column: 18, scope: !1598)
!1605 = !DILocation(line: 415, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 415, column: 17)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 414, column: 73)
!1608 = !DILocation(line: 415, column: 46, scope: !1606)
!1609 = !DILocation(line: 415, column: 34, scope: !1606)
!1610 = !DILocation(line: 72, column: 16, scope: !889, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 416, column: 28, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 415, column: 58)
!1613 = !DILocation(line: 70, column: 15, scope: !889, inlinedAt: !1611)
!1614 = !DILocation(line: 73, column: 18, scope: !1615, inlinedAt: !1611)
!1615 = distinct !DILexicalBlock(scope: !889, file: !1, line: 73, column: 9)
!1616 = !DILocation(line: 73, column: 9, scope: !889, inlinedAt: !1611)
!1617 = !DILocation(line: 74, column: 13, scope: !1618, inlinedAt: !1611)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 74, column: 13)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 73, column: 27)
!1620 = !DILocation(line: 76, column: 16, scope: !1619, inlinedAt: !1611)
!1621 = !DILocation(line: 417, column: 30, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 417, column: 21)
!1623 = !DILocation(line: 78, column: 5, scope: !1624, inlinedAt: !1611)
!1624 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!1625 = !DILocation(line: 78, column: 5, scope: !1626, inlinedAt: !1611)
!1626 = distinct !DILexicalBlock(scope: !893, file: !1, line: 78, column: 5)
!1627 = !DILocation(line: 78, column: 5, scope: !893, inlinedAt: !1611)
!1628 = !DILocation(line: 78, column: 5, scope: !1629, inlinedAt: !1611)
!1629 = !DILexicalBlockFile(scope: !1626, file: !1, discriminator: 3)
!1630 = !DILocation(line: 416, column: 28, scope: !1612)
!1631 = !DILocation(line: 79, column: 20, scope: !889, inlinedAt: !1611)
!1632 = !DILocation(line: 417, column: 21, scope: !1612)
!1633 = !DILocation(line: 235, column: 21, scope: !894, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 421, column: 18, scope: !1607)
!1635 = !DILocation(line: 237, column: 24, scope: !894, inlinedAt: !1634)
!1636 = !DILocation(line: 247, column: 18, scope: !1637, inlinedAt: !1634)
!1637 = distinct !DILexicalBlock(scope: !894, file: !1, line: 240, column: 9)
!1638 = !DILocation(line: 237, column: 15, scope: !894, inlinedAt: !1634)
!1639 = !DILocation(line: 179, column: 26, scope: !836, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 249, column: 10, scope: !894, inlinedAt: !1634)
!1641 = !DILocation(line: 179, column: 46, scope: !836, inlinedAt: !1640)
!1642 = !DILocation(line: 179, column: 55, scope: !836, inlinedAt: !1640)
!1643 = !DILocation(line: 183, column: 13, scope: !1644, inlinedAt: !1640)
!1644 = distinct !DILexicalBlock(scope: !836, file: !1, line: 183, column: 9)
!1645 = !DILocation(line: 183, column: 9, scope: !836, inlinedAt: !1640)
!1646 = !DILocation(line: 186, column: 22, scope: !836, inlinedAt: !1640)
!1647 = !DILocation(line: 181, column: 15, scope: !836, inlinedAt: !1640)
!1648 = !DILocation(line: 187, column: 24, scope: !846, inlinedAt: !1640)
!1649 = !DILocation(line: 187, column: 9, scope: !836, inlinedAt: !1640)
!1650 = !DILocation(line: 188, column: 18, scope: !845, inlinedAt: !1640)
!1651 = !DILocation(line: 188, column: 13, scope: !845, inlinedAt: !1640)
!1652 = !DILocation(line: 189, column: 16, scope: !1653, inlinedAt: !1640)
!1653 = distinct !DILexicalBlock(scope: !845, file: !1, line: 189, column: 13)
!1654 = !DILocation(line: 249, column: 10, scope: !894, inlinedAt: !1634)
!1655 = !DILocation(line: 195, column: 16, scope: !1656, inlinedAt: !1640)
!1656 = distinct !DILexicalBlock(scope: !836, file: !1, line: 194, column: 9)
!1657 = !DILocation(line: 195, column: 9, scope: !1656, inlinedAt: !1640)
!1658 = !DILocation(line: 421, column: 18, scope: !1607)
!1659 = !DILocation(line: 250, column: 5, scope: !1660, inlinedAt: !1634)
!1660 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!1661 = !DILocation(line: 251, column: 5, scope: !1662, inlinedAt: !1634)
!1662 = !DILexicalBlockFile(scope: !911, file: !1, discriminator: 1)
!1663 = !DILocation(line: 251, column: 5, scope: !1664, inlinedAt: !1634)
!1664 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 4)
!1665 = !DILocation(line: 251, column: 5, scope: !1666, inlinedAt: !1634)
!1666 = distinct !DILexicalBlock(scope: !913, file: !1, line: 251, column: 5)
!1667 = !DILocation(line: 251, column: 5, scope: !913, inlinedAt: !1634)
!1668 = !DILocation(line: 251, column: 5, scope: !1669, inlinedAt: !1634)
!1669 = !DILexicalBlockFile(scope: !1666, file: !1, discriminator: 6)
!1670 = !DILocation(line: 423, column: 18, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 423, column: 18)
!1672 = !DILocation(line: 423, column: 69, scope: !1671)
!1673 = !DILocation(line: 423, column: 18, scope: !1602)
!1674 = !DILocation(line: 425, column: 34, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 425, column: 17)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 423, column: 75)
!1677 = !DILocation(line: 235, column: 21, scope: !894, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 426, column: 22, scope: !1675)
!1679 = !DILocation(line: 237, column: 24, scope: !894, inlinedAt: !1678)
!1680 = !DILocation(line: 247, column: 18, scope: !1637, inlinedAt: !1678)
!1681 = !DILocation(line: 237, column: 15, scope: !894, inlinedAt: !1678)
!1682 = !DILocation(line: 179, column: 26, scope: !836, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 249, column: 10, scope: !894, inlinedAt: !1678)
!1684 = !DILocation(line: 179, column: 46, scope: !836, inlinedAt: !1683)
!1685 = !DILocation(line: 179, column: 55, scope: !836, inlinedAt: !1683)
!1686 = !DILocation(line: 183, column: 13, scope: !1644, inlinedAt: !1683)
!1687 = !DILocation(line: 183, column: 9, scope: !836, inlinedAt: !1683)
!1688 = !DILocation(line: 186, column: 22, scope: !836, inlinedAt: !1683)
!1689 = !DILocation(line: 181, column: 15, scope: !836, inlinedAt: !1683)
!1690 = !DILocation(line: 187, column: 24, scope: !846, inlinedAt: !1683)
!1691 = !DILocation(line: 187, column: 9, scope: !836, inlinedAt: !1683)
!1692 = !DILocation(line: 188, column: 18, scope: !845, inlinedAt: !1683)
!1693 = !DILocation(line: 188, column: 13, scope: !845, inlinedAt: !1683)
!1694 = !DILocation(line: 189, column: 16, scope: !1653, inlinedAt: !1683)
!1695 = !DILocation(line: 249, column: 10, scope: !894, inlinedAt: !1678)
!1696 = !DILocation(line: 195, column: 16, scope: !1656, inlinedAt: !1683)
!1697 = !DILocation(line: 195, column: 9, scope: !1656, inlinedAt: !1683)
!1698 = !DILocation(line: 426, column: 22, scope: !1675)
!1699 = !DILocation(line: 250, column: 5, scope: !1660, inlinedAt: !1678)
!1700 = !DILocation(line: 251, column: 5, scope: !1662, inlinedAt: !1678)
!1701 = !DILocation(line: 251, column: 5, scope: !1664, inlinedAt: !1678)
!1702 = !DILocation(line: 251, column: 5, scope: !1666, inlinedAt: !1678)
!1703 = !DILocation(line: 251, column: 5, scope: !913, inlinedAt: !1678)
!1704 = !DILocation(line: 251, column: 5, scope: !1669, inlinedAt: !1678)
!1705 = !DILocation(line: 428, column: 18, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 428, column: 18)
!1707 = !DILocation(line: 428, column: 70, scope: !1706)
!1708 = !DILocation(line: 428, column: 18, scope: !1671)
!1709 = !DILocation(line: 429, column: 26, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 428, column: 76)
!1711 = !DILocation(line: 429, column: 13, scope: !1710)
!1712 = !DILocation(line: 432, column: 13, scope: !1710)
!1713 = !DILocation(line: 436, column: 9, scope: !772)
!1714 = !DILocation(line: 439, column: 30, scope: !791)
!1715 = !DILocation(line: 439, column: 19, scope: !791)
!1716 = !DILocation(line: 440, column: 22, scope: !795)
!1717 = !DILocation(line: 440, column: 13, scope: !791)
!1718 = !DILocation(line: 441, column: 17, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 441, column: 17)
!1720 = !DILocation(line: 441, column: 17, scope: !1293)
!1721 = !DILocation(line: 256, column: 24, scope: !923, inlinedAt: !1292)
!1722 = !DILocation(line: 256, column: 38, scope: !923, inlinedAt: !1292)
!1723 = !DILocation(line: 256, column: 56, scope: !923, inlinedAt: !1292)
!1724 = !DILocation(line: 257, column: 18, scope: !923, inlinedAt: !1292)
!1725 = !DILocation(line: 257, column: 38, scope: !923, inlinedAt: !1292)
!1726 = !DILocation(line: 261, column: 5, scope: !923, inlinedAt: !1292)
!1727 = !DILocation(line: 264, column: 5, scope: !923, inlinedAt: !1292)
!1728 = !DILocation(line: 266, column: 12, scope: !923, inlinedAt: !1292)
!1729 = !DILocation(line: 260, column: 15, scope: !923, inlinedAt: !1292)
!1730 = !DILocation(line: 267, column: 14, scope: !1731, inlinedAt: !1292)
!1731 = distinct !DILexicalBlock(scope: !923, file: !1, line: 267, column: 9)
!1732 = !DILocation(line: 267, column: 9, scope: !923, inlinedAt: !1292)
!1733 = !DILocation(line: 270, column: 16, scope: !923, inlinedAt: !1292)
!1734 = !DILocation(line: 259, column: 15, scope: !923, inlinedAt: !1292)
!1735 = !DILocation(line: 271, column: 18, scope: !1736, inlinedAt: !1292)
!1736 = distinct !DILexicalBlock(scope: !923, file: !1, line: 271, column: 9)
!1737 = !DILocation(line: 271, column: 9, scope: !923, inlinedAt: !1292)
!1738 = !DILocation(line: 272, column: 17, scope: !1739, inlinedAt: !1292)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 271, column: 27)
!1740 = !DILocation(line: 272, column: 9, scope: !1739, inlinedAt: !1292)
!1741 = !DILocation(line: 273, column: 9, scope: !1739, inlinedAt: !1292)
!1742 = !DILocation(line: 277, column: 9, scope: !1743, inlinedAt: !1292)
!1743 = distinct !DILexicalBlock(scope: !923, file: !1, line: 277, column: 9)
!1744 = !DILocation(line: 277, column: 62, scope: !1743, inlinedAt: !1292)
!1745 = !DILocation(line: 277, column: 9, scope: !923, inlinedAt: !1292)
!1746 = !DILocation(line: 279, column: 9, scope: !1747, inlinedAt: !1292)
!1747 = distinct !DILexicalBlock(scope: !923, file: !1, line: 279, column: 9)
!1748 = !DILocation(line: 279, column: 50, scope: !1747, inlinedAt: !1292)
!1749 = !DILocation(line: 279, column: 9, scope: !923, inlinedAt: !1292)
!1750 = !DILocation(line: 281, column: 9, scope: !1751, inlinedAt: !1292)
!1751 = distinct !DILexicalBlock(scope: !923, file: !1, line: 281, column: 9)
!1752 = !DILocation(line: 281, column: 58, scope: !1751, inlinedAt: !1292)
!1753 = !DILocation(line: 281, column: 9, scope: !923, inlinedAt: !1292)
!1754 = !DILocation(line: 283, column: 9, scope: !1755, inlinedAt: !1292)
!1755 = distinct !DILexicalBlock(scope: !923, file: !1, line: 283, column: 9)
!1756 = !DILocation(line: 283, column: 44, scope: !1755, inlinedAt: !1292)
!1757 = !DILocation(line: 283, column: 9, scope: !923, inlinedAt: !1292)
!1758 = !DILocation(line: 285, column: 9, scope: !1759, inlinedAt: !1292)
!1759 = distinct !DILexicalBlock(scope: !923, file: !1, line: 285, column: 9)
!1760 = !DILocation(line: 285, column: 58, scope: !1759, inlinedAt: !1292)
!1761 = !DILocation(line: 285, column: 9, scope: !923, inlinedAt: !1292)
!1762 = !DILocation(line: 287, column: 9, scope: !1763, inlinedAt: !1292)
!1763 = distinct !DILexicalBlock(scope: !923, file: !1, line: 287, column: 9)
!1764 = !DILocation(line: 287, column: 44, scope: !1763, inlinedAt: !1292)
!1765 = !DILocation(line: 287, column: 9, scope: !923, inlinedAt: !1292)
!1766 = !DILocation(line: 289, column: 5, scope: !1767, inlinedAt: !1292)
!1767 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 1)
!1768 = !DILocation(line: 289, column: 5, scope: !1769, inlinedAt: !1292)
!1769 = !DILexicalBlockFile(scope: !941, file: !1, discriminator: 4)
!1770 = !DILocation(line: 289, column: 5, scope: !1771, inlinedAt: !1292)
!1771 = distinct !DILexicalBlock(scope: !941, file: !1, line: 289, column: 5)
!1772 = !DILocation(line: 289, column: 5, scope: !941, inlinedAt: !1292)
!1773 = !DILocation(line: 289, column: 5, scope: !1774, inlinedAt: !1292)
!1774 = !DILexicalBlockFile(scope: !1771, file: !1, discriminator: 6)
!1775 = !DILocation(line: 443, column: 13, scope: !1293)
!1776 = !DILocation(line: 292, column: 9, scope: !946, inlinedAt: !1292)
!1777 = !DILocation(line: 292, column: 9, scope: !923, inlinedAt: !1292)
!1778 = !DILocation(line: 299, column: 13, scope: !1779, inlinedAt: !1292)
!1779 = distinct !DILexicalBlock(scope: !945, file: !1, line: 299, column: 13)
!1780 = !DILocation(line: 299, column: 13, scope: !1781, inlinedAt: !1292)
!1781 = !DILexicalBlockFile(scope: !1779, file: !1, discriminator: 2)
!1782 = !DILocation(line: 299, column: 13, scope: !945, inlinedAt: !1292)
!1783 = !DILocation(line: 302, column: 16, scope: !945, inlinedAt: !1292)
!1784 = !DILocation(line: 293, column: 13, scope: !945, inlinedAt: !1292)
!1785 = !DILocation(line: 303, column: 16, scope: !945, inlinedAt: !1292)
!1786 = !DILocation(line: 303, column: 16, scope: !1787, inlinedAt: !1292)
!1787 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 1)
!1788 = !DILocation(line: 303, column: 16, scope: !1789, inlinedAt: !1292)
!1789 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 3)
!1790 = !DILocation(line: 303, column: 16, scope: !1791, inlinedAt: !1292)
!1791 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 4)
!1792 = !DILocation(line: 303, column: 16, scope: !1793, inlinedAt: !1292)
!1793 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 2)
!1794 = !DILocation(line: 294, column: 15, scope: !945, inlinedAt: !1292)
!1795 = !DILocation(line: 304, column: 15, scope: !945, inlinedAt: !1292)
!1796 = !{!1797, !1165, i64 16}
!1797 = !{!"", !1164, i64 0, !1165, i64 16, !1165, i64 24, !1798, i64 32, !1150, i64 40}
!1798 = !{!"", !1173, i64 0, !1173, i64 0, !1173, i64 0, !1173, i64 0, !1173, i64 0, !1173, i64 1}
!1799 = !DILocation(line: 295, column: 23, scope: !945, inlinedAt: !1292)
!1800 = !DILocation(line: 295, column: 20, scope: !945, inlinedAt: !1292)
!1801 = !DILocation(line: 305, column: 20, scope: !1802, inlinedAt: !1292)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 305, column: 9)
!1803 = distinct !DILexicalBlock(scope: !945, file: !1, line: 305, column: 9)
!1804 = !DILocation(line: 305, column: 9, scope: !1803, inlinedAt: !1292)
!1805 = !DILocation(line: 306, column: 18, scope: !1806, inlinedAt: !1292)
!1806 = !DILexicalBlockFile(scope: !1807, file: !1, discriminator: 5)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !1, line: 305, column: 31)
!1808 = !DILocation(line: 306, column: 18, scope: !1809, inlinedAt: !1292)
!1809 = !DILexicalBlockFile(scope: !1807, file: !1, discriminator: 4)
!1810 = !DILocation(line: 306, column: 18, scope: !1811, inlinedAt: !1292)
!1811 = !DILexicalBlockFile(scope: !1807, file: !1, discriminator: 1)
!1812 = !DILocation(line: 296, column: 17, scope: !945, inlinedAt: !1292)
!1813 = !DILocation(line: 307, column: 27, scope: !1814, inlinedAt: !1292)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !1, line: 307, column: 17)
!1815 = !DILocation(line: 305, column: 27, scope: !1802, inlinedAt: !1292)
!1816 = !DILocation(line: 311, column: 21, scope: !945, inlinedAt: !1292)
!1817 = !DILocation(line: 297, column: 19, scope: !945, inlinedAt: !1292)
!1818 = !DILocation(line: 312, column: 23, scope: !1819, inlinedAt: !1292)
!1819 = distinct !DILexicalBlock(scope: !945, file: !1, line: 312, column: 13)
!1820 = !DILocation(line: 312, column: 13, scope: !945, inlinedAt: !1292)
!1821 = !DILocation(line: 315, column: 9, scope: !945, inlinedAt: !1292)
!1822 = !DILocation(line: 316, column: 9, scope: !1823, inlinedAt: !1292)
!1823 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 1)
!1824 = !DILocation(line: 316, column: 9, scope: !1825, inlinedAt: !1292)
!1825 = distinct !DILexicalBlock(scope: !953, file: !1, line: 316, column: 9)
!1826 = !DILocation(line: 316, column: 9, scope: !953, inlinedAt: !1292)
!1827 = !DILocation(line: 316, column: 9, scope: !1828, inlinedAt: !1292)
!1828 = !DILexicalBlockFile(scope: !1825, file: !1, discriminator: 3)
!1829 = !DILocation(line: 317, column: 9, scope: !945, inlinedAt: !1292)
!1830 = !DILocation(line: 318, column: 5, scope: !946, inlinedAt: !1292)
!1831 = !DILocation(line: 320, column: 9, scope: !1832, inlinedAt: !1292)
!1832 = distinct !DILexicalBlock(scope: !946, file: !1, line: 319, column: 10)
!1833 = !DILocation(line: 324, column: 5, scope: !1834, inlinedAt: !1292)
!1834 = distinct !DILexicalBlock(scope: !957, file: !1, line: 324, column: 5)
!1835 = !DILocation(line: 324, column: 5, scope: !957, inlinedAt: !1292)
!1836 = !DILocation(line: 324, column: 5, scope: !1837, inlinedAt: !1292)
!1837 = !DILexicalBlockFile(scope: !1834, file: !1, discriminator: 6)
!1838 = !DILocation(line: 325, column: 5, scope: !923, inlinedAt: !1292)
!1839 = !DILocation(line: 326, column: 1, scope: !923, inlinedAt: !1292)
!1840 = !DILocation(line: 444, column: 9, scope: !1293)
!1841 = !DILocation(line: 448, column: 18, scope: !799)
!1842 = !DILocation(line: 448, column: 17, scope: !794)
!1843 = !DILocation(line: 449, column: 33, scope: !798)
!1844 = !DILocation(line: 449, column: 17, scope: !798)
!1845 = !DILocation(line: 452, column: 17, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !797, file: !1, discriminator: 1)
!1847 = !DILocation(line: 452, column: 17, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !797, file: !1, line: 452, column: 17)
!1849 = !DILocation(line: 452, column: 17, scope: !797)
!1850 = !DILocation(line: 452, column: 17, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1848, file: !1, discriminator: 3)
!1852 = !DILocation(line: 456, column: 19, scope: !794)
!1853 = !DILocation(line: 446, column: 23, scope: !794)
!1854 = !DILocation(line: 459, column: 13, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !801, file: !1, discriminator: 1)
!1856 = !DILocation(line: 459, column: 13, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !801, file: !1, line: 459, column: 13)
!1858 = !DILocation(line: 459, column: 13, scope: !801)
!1859 = !DILocation(line: 459, column: 13, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1857, file: !1, discriminator: 3)
!1861 = !DILocation(line: 460, column: 13, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !803, file: !1, discriminator: 1)
!1863 = !DILocation(line: 460, column: 13, scope: !803)
!1864 = !DILocation(line: 460, column: 13, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !805, file: !1, discriminator: 4)
!1866 = !DILocation(line: 460, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !805, file: !1, line: 460, column: 13)
!1868 = !DILocation(line: 460, column: 13, scope: !805)
!1869 = !DILocation(line: 460, column: 13, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1867, file: !1, discriminator: 6)
!1871 = !DILocation(line: 470, column: 5, scope: !772)
!1872 = !DILocation(line: 473, column: 5, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 4)
!1874 = !DILocation(line: 473, column: 5, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !810, file: !1, line: 473, column: 5)
!1876 = !DILocation(line: 473, column: 5, scope: !810)
!1877 = !DILocation(line: 473, column: 5, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1875, file: !1, discriminator: 6)
!1879 = !DILocation(line: 474, column: 5, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 1)
!1881 = !DILocation(line: 474, column: 5, scope: !816)
!1882 = !DILocation(line: 474, column: 5, scope: !813)
!1883 = !DILocation(line: 474, column: 5, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 4)
!1885 = !DILocation(line: 474, column: 5, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !815, file: !1, line: 474, column: 5)
!1887 = !DILocation(line: 474, column: 5, scope: !815)
!1888 = !DILocation(line: 474, column: 5, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1886, file: !1, discriminator: 6)
!1890 = !DILocation(line: 475, column: 5, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !818, file: !1, discriminator: 1)
!1892 = !DILocation(line: 475, column: 5, scope: !821)
!1893 = !DILocation(line: 475, column: 5, scope: !818)
!1894 = !DILocation(line: 475, column: 5, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !820, file: !1, discriminator: 4)
!1896 = !DILocation(line: 475, column: 5, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !820, file: !1, line: 475, column: 5)
!1898 = !DILocation(line: 475, column: 5, scope: !820)
!1899 = !DILocation(line: 475, column: 5, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1897, file: !1, discriminator: 6)
!1901 = !DILocation(line: 476, column: 5, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 1)
!1903 = !DILocation(line: 476, column: 5, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !823, file: !1, line: 476, column: 5)
!1905 = !DILocation(line: 476, column: 5, scope: !823)
!1906 = !DILocation(line: 476, column: 5, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1904, file: !1, discriminator: 3)
!1908 = !DILocation(line: 477, column: 5, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !825, file: !1, discriminator: 1)
!1910 = !DILocation(line: 477, column: 5, scope: !828)
!1911 = !DILocation(line: 477, column: 5, scope: !825)
!1912 = !DILocation(line: 477, column: 5, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 4)
!1914 = !DILocation(line: 477, column: 5, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !827, file: !1, line: 477, column: 5)
!1916 = !DILocation(line: 477, column: 5, scope: !827)
!1917 = !DILocation(line: 477, column: 5, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1915, file: !1, discriminator: 6)
!1919 = !DILocation(line: 479, column: 1, scope: !772)
!1920 = !DILocation(line: 838, column: 30, scope: !599)
!1921 = !DILocation(line: 838, column: 52, scope: !599)
!1922 = !DILocation(line: 839, column: 32, scope: !599)
!1923 = !DILocation(line: 839, column: 50, scope: !599)
!1924 = !DILocation(line: 840, column: 32, scope: !599)
!1925 = !DILocation(line: 840, column: 54, scope: !599)
!1926 = !DILocation(line: 842, column: 25, scope: !599)
!1927 = !DILocation(line: 842, column: 15, scope: !599)
!1928 = !DILocation(line: 843, column: 26, scope: !599)
!1929 = !DILocation(line: 843, column: 15, scope: !599)
!1930 = !DILocation(line: 844, column: 15, scope: !599)
!1931 = !DILocation(line: 845, column: 9, scope: !599)
!1932 = !DILocation(line: 847, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !599, file: !1, line: 847, column: 9)
!1934 = !DILocation(line: 847, column: 37, scope: !1933)
!1935 = !DILocation(line: 847, column: 25, scope: !1933)
!1936 = !DILocation(line: 849, column: 20, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !599, file: !1, line: 849, column: 9)
!1938 = !DILocation(line: 849, column: 9, scope: !599)
!1939 = !DILocation(line: 850, column: 18, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 849, column: 29)
!1941 = !DILocation(line: 851, column: 20, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 851, column: 13)
!1943 = !DILocation(line: 851, column: 13, scope: !1940)
!1944 = !DILocation(line: 822, column: 36, scope: !586, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 855, column: 11, scope: !599)
!1946 = !DILocation(line: 822, column: 56, scope: !586, inlinedAt: !1945)
!1947 = !DILocation(line: 823, column: 36, scope: !586, inlinedAt: !1945)
!1948 = !DILocation(line: 823, column: 50, scope: !586, inlinedAt: !1945)
!1949 = !DILocation(line: 824, column: 36, scope: !586, inlinedAt: !1945)
!1950 = !DILocation(line: 824, column: 54, scope: !586, inlinedAt: !1945)
!1951 = !DILocation(line: 827, column: 18, scope: !1259, inlinedAt: !1945)
!1952 = !DILocation(line: 828, column: 20, scope: !1259, inlinedAt: !1945)
!1953 = !DILocation(line: 827, column: 9, scope: !586, inlinedAt: !1945)
!1954 = !DILocation(line: 829, column: 11, scope: !586, inlinedAt: !1945)
!1955 = !DILocation(line: 826, column: 15, scope: !586, inlinedAt: !1945)
!1956 = !DILocation(line: 831, column: 13, scope: !1265, inlinedAt: !1945)
!1957 = !DILocation(line: 831, column: 9, scope: !586, inlinedAt: !1945)
!1958 = !DILocation(line: 833, column: 5, scope: !1268, inlinedAt: !1945)
!1959 = !DILocation(line: 833, column: 5, scope: !1270, inlinedAt: !1945)
!1960 = !DILocation(line: 833, column: 5, scope: !598, inlinedAt: !1945)
!1961 = !DILocation(line: 833, column: 5, scope: !1273, inlinedAt: !1945)
!1962 = !DILocation(line: 855, column: 11, scope: !599)
!1963 = !DILocation(line: 859, column: 5, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 1)
!1965 = !DILocation(line: 859, column: 5, scope: !614)
!1966 = !DILocation(line: 859, column: 5, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 4)
!1968 = !DILocation(line: 859, column: 5, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !616, file: !1, line: 859, column: 5)
!1970 = !DILocation(line: 859, column: 5, scope: !616)
!1971 = !DILocation(line: 859, column: 5, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1969, file: !1, discriminator: 6)
!1973 = !DILocation(line: 860, column: 5, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!1975 = !DILocation(line: 860, column: 5, scope: !622)
!1976 = !DILocation(line: 860, column: 5, scope: !619)
!1977 = !DILocation(line: 860, column: 5, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 4)
!1979 = !DILocation(line: 860, column: 5, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !621, file: !1, line: 860, column: 5)
!1981 = !DILocation(line: 860, column: 5, scope: !621)
!1982 = !DILocation(line: 860, column: 5, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1980, file: !1, discriminator: 6)
!1984 = !DILocation(line: 861, column: 5, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 1)
!1986 = !DILocation(line: 861, column: 5, scope: !624)
!1987 = !DILocation(line: 861, column: 5, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 4)
!1989 = !DILocation(line: 861, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !626, file: !1, line: 861, column: 5)
!1991 = !DILocation(line: 861, column: 5, scope: !626)
!1992 = !DILocation(line: 861, column: 5, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !1, discriminator: 6)
!1994 = !DILocation(line: 862, column: 5, scope: !599)
!1995 = !DILocation(line: 866, column: 36, scope: !628)
!1996 = !DILocation(line: 867, column: 38, scope: !628)
!1997 = !DILocation(line: 867, column: 56, scope: !628)
!1998 = !DILocation(line: 868, column: 38, scope: !628)
!1999 = !DILocation(line: 868, column: 60, scope: !628)
!2000 = !DILocation(line: 869, column: 38, scope: !628)
!2001 = !DILocation(line: 872, column: 15, scope: !628)
!2002 = !DILocation(line: 873, column: 26, scope: !628)
!2003 = !DILocation(line: 873, column: 15, scope: !628)
!2004 = !DILocation(line: 874, column: 9, scope: !628)
!2005 = !DILocation(line: 875, column: 5, scope: !628)
!2006 = !DILocation(line: 875, column: 13, scope: !628)
!2007 = !DILocation(line: 877, column: 18, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !628, file: !1, line: 877, column: 9)
!2009 = !DILocation(line: 877, column: 9, scope: !628)
!2010 = !DILocation(line: 879, column: 20, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !628, file: !1, line: 879, column: 9)
!2012 = !DILocation(line: 879, column: 9, scope: !628)
!2013 = !DILocation(line: 880, column: 18, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 879, column: 29)
!2015 = !DILocation(line: 881, column: 20, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2014, file: !1, line: 881, column: 13)
!2017 = !DILocation(line: 881, column: 13, scope: !2014)
!2018 = !DILocation(line: 886, column: 5, scope: !628)
!2019 = !DILocation(line: 890, column: 15, scope: !628)
!2020 = !DILocation(line: 871, column: 15, scope: !628)
!2021 = !DILocation(line: 891, column: 17, scope: !645)
!2022 = !DILocation(line: 891, column: 9, scope: !628)
!2023 = !DILocation(line: 893, column: 15, scope: !644)
!2024 = !DILocation(line: 892, column: 19, scope: !644)
!2025 = !DILocation(line: 895, column: 9, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 1)
!2027 = !DILocation(line: 895, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !647, file: !1, line: 895, column: 9)
!2029 = !DILocation(line: 895, column: 9, scope: !647)
!2030 = !DILocation(line: 895, column: 9, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 3)
!2032 = !DILocation(line: 896, column: 17, scope: !651)
!2033 = !DILocation(line: 896, column: 13, scope: !644)
!2034 = !DILocation(line: 897, column: 13, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 1)
!2036 = !DILocation(line: 897, column: 13, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !649, file: !1, line: 897, column: 13)
!2038 = !DILocation(line: 897, column: 13, scope: !649)
!2039 = !DILocation(line: 897, column: 13, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 3)
!2041 = !DILocation(line: 901, column: 5, scope: !628)
!2042 = !DILocation(line: 903, column: 5, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!2044 = !DILocation(line: 903, column: 5, scope: !656)
!2045 = !DILocation(line: 903, column: 5, scope: !653)
!2046 = !DILocation(line: 903, column: 5, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 4)
!2048 = !DILocation(line: 903, column: 5, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !655, file: !1, line: 903, column: 5)
!2050 = !DILocation(line: 903, column: 5, scope: !655)
!2051 = !DILocation(line: 903, column: 5, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2049, file: !1, discriminator: 6)
!2053 = !DILocation(line: 904, column: 5, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 4)
!2055 = !DILocation(line: 904, column: 5, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !660, file: !1, line: 904, column: 5)
!2057 = !DILocation(line: 904, column: 5, scope: !660)
!2058 = !DILocation(line: 904, column: 5, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2056, file: !1, discriminator: 6)
!2060 = !DILocation(line: 906, column: 1, scope: !628)
!2061 = !DILocation(line: 905, column: 5, scope: !628)
!2062 = !DILocation(line: 1042, column: 9, scope: !662)
!2063 = !DILocation(line: 1040, column: 15, scope: !662)
!2064 = !DILocation(line: 1043, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1043, column: 9)
!2066 = !DILocation(line: 1043, column: 9, scope: !662)
!2067 = !DILocation(line: 1046, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1046, column: 9)
!2069 = !DILocation(line: 1046, column: 18, scope: !2068)
!2070 = !DILocation(line: 1046, column: 9, scope: !662)
!2071 = !DILocation(line: 984, column: 25, scope: !1006, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1047, column: 20, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !1, line: 1046, column: 27)
!2074 = !DILocation(line: 984, column: 15, scope: !1006, inlinedAt: !2072)
!2075 = !DILocation(line: 985, column: 18, scope: !1006, inlinedAt: !2072)
!2076 = !DILocation(line: 989, column: 17, scope: !2077, inlinedAt: !2072)
!2077 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 989, column: 9)
!2078 = !DILocation(line: 989, column: 9, scope: !1006, inlinedAt: !2072)
!2079 = !DILocation(line: 992, column: 5, scope: !1006, inlinedAt: !2072)
!2080 = !DILocation(line: 994, column: 5, scope: !1006, inlinedAt: !2072)
!2081 = !DILocation(line: 996, column: 5, scope: !1006, inlinedAt: !2072)
!2082 = !DILocation(line: 998, column: 9, scope: !2083, inlinedAt: !2072)
!2083 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 998, column: 9)
!2084 = !DILocation(line: 998, column: 29, scope: !2083, inlinedAt: !2072)
!2085 = !DILocation(line: 1000, column: 14, scope: !2086, inlinedAt: !2072)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 1000, column: 14)
!2087 = !DILocation(line: 1047, column: 20, scope: !2073)
!2088 = !DILocation(line: 998, column: 9, scope: !1006, inlinedAt: !2072)
!2089 = !DILocation(line: 1004, column: 5, scope: !1006, inlinedAt: !2072)
!2090 = !{}
!2091 = !DILocation(line: 987, column: 32, scope: !1006, inlinedAt: !2072)
!2092 = !DILocation(line: 1012, column: 5, scope: !1006, inlinedAt: !2072)
!2093 = !DILocation(line: 986, column: 18, scope: !1006, inlinedAt: !2072)
!2094 = !DILocation(line: 1015, column: 13, scope: !1016, inlinedAt: !2072)
!2095 = !DILocation(line: 1015, column: 41, scope: !1016, inlinedAt: !2072)
!2096 = !DILocation(line: 1015, column: 13, scope: !1017, inlinedAt: !2072)
!2097 = !DILocation(line: 1016, column: 13, scope: !2098, inlinedAt: !2072)
!2098 = !DILexicalBlockFile(scope: !1014, file: !1, discriminator: 1)
!2099 = !DILocation(line: 1016, column: 13, scope: !2100, inlinedAt: !2072)
!2100 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 1016, column: 13)
!2101 = !DILocation(line: 1016, column: 13, scope: !1014, inlinedAt: !2072)
!2102 = !DILocation(line: 1016, column: 13, scope: !2103, inlinedAt: !2072)
!2103 = !DILexicalBlockFile(scope: !2100, file: !1, discriminator: 3)
!2104 = !DILocation(line: 1047, column: 18, scope: !2073)
!2105 = !DILocation(line: 1048, column: 13, scope: !2073)
!2106 = !DILocation(line: 1052, column: 42, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1052, column: 9)
!2108 = !DILocation(line: 1051, column: 5, scope: !662)
!2109 = !DILocation(line: 1052, column: 9, scope: !2107)
!2110 = !DILocation(line: 1052, column: 52, scope: !2107)
!2111 = !DILocation(line: 1052, column: 9, scope: !662)
!2112 = !DILocation(line: 1055, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1055, column: 9)
!2114 = !DILocation(line: 1055, column: 24, scope: !2113)
!2115 = !DILocation(line: 1055, column: 9, scope: !662)
!2116 = !DILocation(line: 1056, column: 26, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 1055, column: 33)
!2118 = !DILocation(line: 1056, column: 24, scope: !2117)
!2119 = !DILocation(line: 1057, column: 28, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 1057, column: 13)
!2121 = !DILocation(line: 1057, column: 13, scope: !2117)
!2122 = !DILocation(line: 1061, column: 48, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1061, column: 9)
!2124 = !DILocation(line: 1060, column: 5, scope: !662)
!2125 = !DILocation(line: 1061, column: 9, scope: !2123)
!2126 = !DILocation(line: 1061, column: 64, scope: !2123)
!2127 = !DILocation(line: 1061, column: 9, scope: !662)
!2128 = !DILocation(line: 1064, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1064, column: 9)
!2130 = !DILocation(line: 1064, column: 25, scope: !2129)
!2131 = !DILocation(line: 1064, column: 9, scope: !662)
!2132 = !DILocation(line: 1065, column: 27, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 1064, column: 34)
!2134 = !DILocation(line: 1065, column: 25, scope: !2133)
!2135 = !DILocation(line: 1066, column: 29, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1066, column: 13)
!2137 = !DILocation(line: 1066, column: 13, scope: !2133)
!2138 = !DILocation(line: 1070, column: 49, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1070, column: 9)
!2140 = !DILocation(line: 1069, column: 5, scope: !662)
!2141 = !DILocation(line: 1070, column: 9, scope: !2139)
!2142 = !DILocation(line: 1070, column: 66, scope: !2139)
!2143 = !DILocation(line: 1071, column: 9, scope: !2139)
!2144 = !DILocation(line: 1073, column: 1, scope: !662)
!2145 = !DILocation(line: 639, column: 19, scope: !677)
!2146 = !DILocation(line: 639, column: 38, scope: !677)
!2147 = !DILocation(line: 639, column: 59, scope: !677)
!2148 = !DILocation(line: 484, column: 26, scope: !695, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 644, column: 10, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !677, file: !1, line: 644, column: 9)
!2151 = !DILocation(line: 490, column: 24, scope: !710, inlinedAt: !2149)
!2152 = !DILocation(line: 490, column: 24, scope: !2153, inlinedAt: !2149)
!2153 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 6)
!2154 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 5)
!2155 = !DILocation(line: 490, column: 45, scope: !695, inlinedAt: !2149)
!2156 = !DILocation(line: 491, column: 5, scope: !695, inlinedAt: !2149)
!2157 = !DILocation(line: 644, column: 10, scope: !2150)
!2158 = !DILocation(line: 491, column: 12, scope: !2159, inlinedAt: !2149)
!2159 = !DILexicalBlockFile(scope: !2160, file: !1, discriminator: 4)
!2160 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 1)
!2161 = !DILocation(line: 491, column: 26, scope: !695, inlinedAt: !2149)
!2162 = !DILocation(line: 491, column: 35, scope: !695, inlinedAt: !2149)
!2163 = !DILocation(line: 491, column: 30, scope: !695, inlinedAt: !2149)
!2164 = !DILocation(line: 492, column: 16, scope: !695, inlinedAt: !2149)
!2165 = !DILocation(line: 491, column: 5, scope: !2166, inlinedAt: !2149)
!2166 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 3)
!2167 = !DILocation(line: 494, column: 11, scope: !2168, inlinedAt: !2149)
!2168 = distinct !DILexicalBlock(scope: !695, file: !1, line: 494, column: 9)
!2169 = !DILocation(line: 494, column: 9, scope: !695, inlinedAt: !2149)
!2170 = !DILocation(line: 495, column: 19, scope: !2171, inlinedAt: !2149)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 494, column: 20)
!2172 = !DILocation(line: 495, column: 40, scope: !2171, inlinedAt: !2149)
!2173 = !{!2174, !1150, i64 16}
!2174 = !{!"_ts", !1150, i64 0, !1150, i64 8, !1150, i64 16, !1150, i64 24, !1173, i64 32, !1151, i64 36, !1151, i64 37, !1173, i64 40, !1173, i64 44, !1150, i64 48, !1150, i64 56, !1150, i64 64, !1150, i64 72, !1150, i64 80, !1150, i64 88, !1150, i64 96, !1150, i64 104, !1150, i64 112, !1150, i64 120, !1150, i64 128, !1173, i64 136, !1150, i64 144, !1165, i64 152, !1173, i64 160, !1150, i64 168, !1150, i64 176, !1150, i64 184}
!2175 = !DILocation(line: 495, column: 48, scope: !2171, inlinedAt: !2149)
!2176 = !{!2177, !1150, i64 32}
!2177 = !{!"_is", !1150, i64 0, !1150, i64 8, !1150, i64 16, !1150, i64 24, !1150, i64 32, !1150, i64 40, !1150, i64 48, !1150, i64 56, !1150, i64 64, !1150, i64 72, !1173, i64 80, !1173, i64 84, !1173, i64 88, !1150, i64 96}
!2178 = !DILocation(line: 487, column: 15, scope: !695, inlinedAt: !2149)
!2179 = !DILocation(line: 497, column: 5, scope: !2171, inlinedAt: !2149)
!2180 = !DILocation(line: 499, column: 22, scope: !2181, inlinedAt: !2149)
!2181 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 498, column: 10)
!2182 = !{!2183, !1150, i64 48}
!2183 = !{!"_frame", !1172, i64 0, !1150, i64 24, !1150, i64 32, !1150, i64 40, !1150, i64 48, !1150, i64 56, !1150, i64 64, !1150, i64 72, !1150, i64 80, !1150, i64 88, !1150, i64 96, !1150, i64 104, !1150, i64 112, !1173, i64 120, !1173, i64 124, !1173, i64 128, !1151, i64 132, !1151, i64 136, !1151, i64 376}
!2184 = !DILocation(line: 500, column: 19, scope: !2181, inlinedAt: !2149)
!2185 = !DILocation(line: 484, column: 65, scope: !695, inlinedAt: !2149)
!2186 = !DILocation(line: 642, column: 9, scope: !677)
!2187 = !DILocation(line: 485, column: 26, scope: !695, inlinedAt: !2149)
!2188 = !DILocation(line: 641, column: 26, scope: !677)
!2189 = !DILocation(line: 508, column: 17, scope: !695, inlinedAt: !2149)
!2190 = !DILocation(line: 485, column: 45, scope: !695, inlinedAt: !2149)
!2191 = !DILocation(line: 641, column: 35, scope: !677)
!2192 = !DILocation(line: 509, column: 19, scope: !724, inlinedAt: !2149)
!2193 = !DILocation(line: 509, column: 9, scope: !695, inlinedAt: !2149)
!2194 = !DILocation(line: 512, column: 21, scope: !723, inlinedAt: !2149)
!2195 = !DILocation(line: 513, column: 23, scope: !2196, inlinedAt: !2149)
!2196 = distinct !DILexicalBlock(scope: !723, file: !1, line: 513, column: 13)
!2197 = !DILocation(line: 513, column: 13, scope: !723, inlinedAt: !2149)
!2198 = !DILocation(line: 516, column: 15, scope: !723, inlinedAt: !2149)
!2199 = !DILocation(line: 510, column: 13, scope: !723, inlinedAt: !2149)
!2200 = !DILocation(line: 517, column: 17, scope: !2201, inlinedAt: !2149)
!2201 = distinct !DILexicalBlock(scope: !723, file: !1, line: 517, column: 14)
!2202 = !DILocation(line: 521, column: 9, scope: !724, inlinedAt: !2149)
!2203 = !DILocation(line: 524, column: 15, scope: !695, inlinedAt: !2149)
!2204 = !DILocation(line: 525, column: 17, scope: !2205, inlinedAt: !2149)
!2205 = distinct !DILexicalBlock(scope: !695, file: !1, line: 525, column: 9)
!2206 = !DILocation(line: 525, column: 9, scope: !695, inlinedAt: !2149)
!2207 = !DILocation(line: 526, column: 19, scope: !2208, inlinedAt: !2149)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !1, line: 525, column: 26)
!2209 = !DILocation(line: 527, column: 21, scope: !2210, inlinedAt: !2149)
!2210 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 527, column: 13)
!2211 = !DILocation(line: 527, column: 13, scope: !2208, inlinedAt: !2149)
!2212 = !DILocation(line: 531, column: 9, scope: !2205, inlinedAt: !2149)
!2213 = !DILocation(line: 534, column: 17, scope: !695, inlinedAt: !2149)
!2214 = !DILocation(line: 484, column: 50, scope: !695, inlinedAt: !2149)
!2215 = !DILocation(line: 641, column: 15, scope: !677)
!2216 = !DILocation(line: 535, column: 19, scope: !727, inlinedAt: !2149)
!2217 = !DILocation(line: 535, column: 27, scope: !727, inlinedAt: !2149)
!2218 = !DILocation(line: 535, column: 30, scope: !2219, inlinedAt: !2149)
!2219 = !DILexicalBlockFile(scope: !727, file: !1, discriminator: 1)
!2220 = !DILocation(line: 535, column: 9, scope: !695, inlinedAt: !2149)
!2221 = !DILocation(line: 540, column: 13, scope: !2222, inlinedAt: !2149)
!2222 = distinct !DILexicalBlock(scope: !726, file: !1, line: 540, column: 13)
!2223 = !DILocation(line: 540, column: 13, scope: !2224, inlinedAt: !2149)
!2224 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 2)
!2225 = !DILocation(line: 540, column: 13, scope: !2226, inlinedAt: !2149)
!2226 = !DILexicalBlockFile(scope: !2227, file: !1, discriminator: 4)
!2227 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 3)
!2228 = !DILocation(line: 540, column: 13, scope: !726, inlinedAt: !2149)
!2229 = !DILocation(line: 543, column: 15, scope: !726, inlinedAt: !2149)
!2230 = !DILocation(line: 536, column: 20, scope: !726, inlinedAt: !2149)
!2231 = !DILocation(line: 544, column: 16, scope: !726, inlinedAt: !2149)
!2232 = !DILocation(line: 537, column: 13, scope: !726, inlinedAt: !2149)
!2233 = !DILocation(line: 545, column: 16, scope: !726, inlinedAt: !2149)
!2234 = !DILocation(line: 545, column: 16, scope: !2235, inlinedAt: !2149)
!2235 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 1)
!2236 = !DILocation(line: 545, column: 16, scope: !2237, inlinedAt: !2149)
!2237 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 3)
!2238 = !DILocation(line: 545, column: 16, scope: !2239, inlinedAt: !2149)
!2239 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 4)
!2240 = !DILocation(line: 545, column: 16, scope: !2241, inlinedAt: !2149)
!2241 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 2)
!2242 = !DILocation(line: 538, column: 15, scope: !726, inlinedAt: !2149)
!2243 = !DILocation(line: 549, column: 17, scope: !2244, inlinedAt: !2149)
!2244 = distinct !DILexicalBlock(scope: !726, file: !1, line: 549, column: 13)
!2245 = !DILocation(line: 549, column: 22, scope: !2244, inlinedAt: !2149)
!2246 = !DILocation(line: 550, column: 13, scope: !2244, inlinedAt: !2149)
!2247 = !DILocation(line: 550, column: 13, scope: !2248, inlinedAt: !2149)
!2248 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 1)
!2249 = !DILocation(line: 550, column: 13, scope: !2250, inlinedAt: !2149)
!2250 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 2)
!2251 = !DILocation(line: 550, column: 13, scope: !2252, inlinedAt: !2149)
!2252 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 4)
!2253 = !DILocation(line: 550, column: 13, scope: !2254, inlinedAt: !2149)
!2254 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 5)
!2255 = !DILocation(line: 550, column: 47, scope: !2256, inlinedAt: !2149)
!2256 = !DILexicalBlockFile(scope: !2257, file: !1, discriminator: 8)
!2257 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 3)
!2258 = !DILocation(line: 550, column: 54, scope: !2244, inlinedAt: !2149)
!2259 = !DILocation(line: 551, column: 13, scope: !2244, inlinedAt: !2149)
!2260 = !DILocation(line: 551, column: 13, scope: !2248, inlinedAt: !2149)
!2261 = !DILocation(line: 551, column: 13, scope: !2250, inlinedAt: !2149)
!2262 = !DILocation(line: 551, column: 13, scope: !2252, inlinedAt: !2149)
!2263 = !DILocation(line: 551, column: 13, scope: !2254, inlinedAt: !2149)
!2264 = !DILocation(line: 551, column: 13, scope: !2256, inlinedAt: !2149)
!2265 = !DILocation(line: 551, column: 13, scope: !2266, inlinedAt: !2149)
!2266 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 9)
!2267 = !DILocation(line: 551, column: 13, scope: !2268, inlinedAt: !2149)
!2268 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 11)
!2269 = !DILocation(line: 551, column: 13, scope: !2270, inlinedAt: !2149)
!2270 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 12)
!2271 = !DILocation(line: 551, column: 13, scope: !2272, inlinedAt: !2149)
!2272 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 14)
!2273 = !DILocation(line: 551, column: 13, scope: !2274, inlinedAt: !2149)
!2274 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 15)
!2275 = !DILocation(line: 551, column: 13, scope: !2276, inlinedAt: !2149)
!2276 = !DILexicalBlockFile(scope: !2277, file: !1, discriminator: 18)
!2277 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 13)
!2278 = !DILocation(line: 551, column: 60, scope: !2279, inlinedAt: !2149)
!2279 = !DILexicalBlockFile(scope: !2280, file: !1, discriminator: 20)
!2280 = !DILexicalBlockFile(scope: !2244, file: !1, discriminator: 19)
!2281 = !DILocation(line: 551, column: 67, scope: !2244, inlinedAt: !2149)
!2282 = !DILocation(line: 552, column: 13, scope: !2244, inlinedAt: !2149)
!2283 = !DILocation(line: 552, column: 13, scope: !2248, inlinedAt: !2149)
!2284 = !DILocation(line: 552, column: 13, scope: !2250, inlinedAt: !2149)
!2285 = !DILocation(line: 552, column: 13, scope: !2252, inlinedAt: !2149)
!2286 = !DILocation(line: 552, column: 13, scope: !2254, inlinedAt: !2149)
!2287 = !DILocation(line: 552, column: 13, scope: !2256, inlinedAt: !2149)
!2288 = !DILocation(line: 552, column: 13, scope: !2266, inlinedAt: !2149)
!2289 = !DILocation(line: 552, column: 13, scope: !2268, inlinedAt: !2149)
!2290 = !DILocation(line: 552, column: 13, scope: !2270, inlinedAt: !2149)
!2291 = !DILocation(line: 552, column: 13, scope: !2272, inlinedAt: !2149)
!2292 = !DILocation(line: 552, column: 13, scope: !2274, inlinedAt: !2149)
!2293 = !DILocation(line: 552, column: 13, scope: !2276, inlinedAt: !2149)
!2294 = !DILocation(line: 552, column: 60, scope: !2279, inlinedAt: !2149)
!2295 = !DILocation(line: 552, column: 67, scope: !2244, inlinedAt: !2149)
!2296 = !DILocation(line: 553, column: 14, scope: !2244, inlinedAt: !2149)
!2297 = !DILocation(line: 553, column: 14, scope: !2248, inlinedAt: !2149)
!2298 = !DILocation(line: 553, column: 14, scope: !2250, inlinedAt: !2149)
!2299 = !DILocation(line: 553, column: 14, scope: !2252, inlinedAt: !2149)
!2300 = !DILocation(line: 553, column: 14, scope: !2254, inlinedAt: !2149)
!2301 = !DILocation(line: 553, column: 14, scope: !2256, inlinedAt: !2149)
!2302 = !DILocation(line: 553, column: 14, scope: !2266, inlinedAt: !2149)
!2303 = !DILocation(line: 553, column: 14, scope: !2268, inlinedAt: !2149)
!2304 = !DILocation(line: 553, column: 14, scope: !2270, inlinedAt: !2149)
!2305 = !DILocation(line: 553, column: 14, scope: !2272, inlinedAt: !2149)
!2306 = !DILocation(line: 553, column: 14, scope: !2274, inlinedAt: !2149)
!2307 = !DILocation(line: 553, column: 14, scope: !2276, inlinedAt: !2149)
!2308 = !DILocation(line: 553, column: 68, scope: !2244, inlinedAt: !2149)
!2309 = !DILocation(line: 554, column: 17, scope: !2244, inlinedAt: !2149)
!2310 = !DILocation(line: 554, column: 17, scope: !2248, inlinedAt: !2149)
!2311 = !DILocation(line: 554, column: 17, scope: !2250, inlinedAt: !2149)
!2312 = !DILocation(line: 554, column: 17, scope: !2252, inlinedAt: !2149)
!2313 = !DILocation(line: 554, column: 17, scope: !2254, inlinedAt: !2149)
!2314 = !DILocation(line: 554, column: 17, scope: !2256, inlinedAt: !2149)
!2315 = !DILocation(line: 554, column: 17, scope: !2266, inlinedAt: !2149)
!2316 = !DILocation(line: 554, column: 17, scope: !2268, inlinedAt: !2149)
!2317 = !DILocation(line: 554, column: 17, scope: !2270, inlinedAt: !2149)
!2318 = !DILocation(line: 554, column: 17, scope: !2272, inlinedAt: !2149)
!2319 = !DILocation(line: 554, column: 17, scope: !2274, inlinedAt: !2149)
!2320 = !DILocation(line: 554, column: 17, scope: !2276, inlinedAt: !2149)
!2321 = !DILocation(line: 549, column: 13, scope: !726, inlinedAt: !2149)
!2322 = !DILocation(line: 557, column: 45, scope: !2323, inlinedAt: !2149)
!2323 = distinct !DILexicalBlock(scope: !2244, file: !1, line: 555, column: 9)
!2324 = !DILocation(line: 557, column: 76, scope: !2323, inlinedAt: !2149)
!2325 = !DILocation(line: 556, column: 25, scope: !2323, inlinedAt: !2149)
!2326 = !DILocation(line: 558, column: 27, scope: !2327, inlinedAt: !2149)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 558, column: 17)
!2328 = !DILocation(line: 558, column: 17, scope: !2323, inlinedAt: !2149)
!2329 = !DILocation(line: 562, column: 13, scope: !2244, inlinedAt: !2149)
!2330 = !DILocation(line: 566, column: 21, scope: !732, inlinedAt: !2149)
!2331 = !DILocation(line: 566, column: 32, scope: !732, inlinedAt: !2149)
!2332 = !DILocation(line: 566, column: 35, scope: !732, inlinedAt: !2149)
!2333 = !DILocation(line: 566, column: 89, scope: !732, inlinedAt: !2149)
!2334 = !DILocation(line: 566, column: 13, scope: !733, inlinedAt: !2149)
!2335 = !DILocation(line: 567, column: 30, scope: !731, inlinedAt: !2149)
!2336 = !DILocation(line: 567, column: 23, scope: !731, inlinedAt: !2149)
!2337 = !DILocation(line: 570, column: 22, scope: !736, inlinedAt: !2149)
!2338 = !DILocation(line: 570, column: 30, scope: !736, inlinedAt: !2149)
!2339 = !DILocation(line: 570, column: 33, scope: !2340, inlinedAt: !2149)
!2340 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 1)
!2341 = !DILocation(line: 570, column: 52, scope: !736, inlinedAt: !2149)
!2342 = !DILocation(line: 570, column: 55, scope: !736, inlinedAt: !2149)
!2343 = !DILocation(line: 570, column: 73, scope: !736, inlinedAt: !2149)
!2344 = !DILocation(line: 570, column: 17, scope: !731, inlinedAt: !2149)
!2345 = !DILocation(line: 572, column: 29, scope: !735, inlinedAt: !2149)
!2346 = !DILocation(line: 573, column: 17, scope: !735, inlinedAt: !2149)
!2347 = !DILocation(line: 575, column: 27, scope: !735, inlinedAt: !2149)
!2348 = !DILocation(line: 571, column: 21, scope: !735, inlinedAt: !2149)
!2349 = !DILocation(line: 576, column: 29, scope: !740, inlinedAt: !2149)
!2350 = !DILocation(line: 576, column: 21, scope: !735, inlinedAt: !2149)
!2351 = !DILocation(line: 577, column: 21, scope: !2352, inlinedAt: !2149)
!2352 = !DILexicalBlockFile(scope: !738, file: !1, discriminator: 1)
!2353 = !DILocation(line: 577, column: 21, scope: !2354, inlinedAt: !2149)
!2354 = distinct !DILexicalBlock(scope: !738, file: !1, line: 577, column: 21)
!2355 = !DILocation(line: 577, column: 21, scope: !738, inlinedAt: !2149)
!2356 = !DILocation(line: 577, column: 21, scope: !2357, inlinedAt: !2149)
!2357 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 3)
!2358 = !DILocation(line: 580, column: 27, scope: !744, inlinedAt: !2149)
!2359 = !DILocation(line: 580, column: 26, scope: !740, inlinedAt: !2149)
!2360 = !DILocation(line: 581, column: 21, scope: !2361, inlinedAt: !2149)
!2361 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 1)
!2362 = !DILocation(line: 581, column: 21, scope: !2363, inlinedAt: !2149)
!2363 = distinct !DILexicalBlock(scope: !742, file: !1, line: 581, column: 21)
!2364 = !DILocation(line: 581, column: 21, scope: !742, inlinedAt: !2149)
!2365 = !DILocation(line: 581, column: 21, scope: !2366, inlinedAt: !2149)
!2366 = !DILexicalBlockFile(scope: !2363, file: !1, discriminator: 3)
!2367 = !DILocation(line: 582, column: 33, scope: !743, inlinedAt: !2149)
!2368 = !DILocation(line: 583, column: 35, scope: !2369, inlinedAt: !2149)
!2369 = distinct !DILexicalBlock(scope: !743, file: !1, line: 583, column: 25)
!2370 = !DILocation(line: 583, column: 25, scope: !743, inlinedAt: !2149)
!2371 = !DILocation(line: 589, column: 29, scope: !2372, inlinedAt: !2149)
!2372 = distinct !DILexicalBlock(scope: !736, file: !1, line: 587, column: 18)
!2373 = !DILocation(line: 590, column: 31, scope: !2374, inlinedAt: !2149)
!2374 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 590, column: 21)
!2375 = !DILocation(line: 590, column: 21, scope: !2372, inlinedAt: !2149)
!2376 = !DILocation(line: 594, column: 23, scope: !2377, inlinedAt: !2149)
!2377 = distinct !DILexicalBlock(scope: !733, file: !1, line: 594, column: 13)
!2378 = !DILocation(line: 594, column: 13, scope: !733, inlinedAt: !2149)
!2379 = !DILocation(line: 595, column: 25, scope: !2380, inlinedAt: !2149)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 594, column: 32)
!2381 = !DILocation(line: 596, column: 13, scope: !2380, inlinedAt: !2149)
!2382 = !DILocation(line: 597, column: 9, scope: !2380, inlinedAt: !2149)
!2383 = !DILocation(line: 605, column: 5, scope: !2384, inlinedAt: !2149)
!2384 = distinct !DILexicalBlock(scope: !748, file: !1, line: 605, column: 5)
!2385 = !DILocation(line: 605, column: 5, scope: !748, inlinedAt: !2149)
!2386 = !DILocation(line: 605, column: 5, scope: !2387, inlinedAt: !2149)
!2387 = !DILexicalBlockFile(scope: !2384, file: !1, discriminator: 6)
!2388 = !DILocation(line: 606, column: 5, scope: !754, inlinedAt: !2149)
!2389 = !DILocation(line: 606, column: 5, scope: !751, inlinedAt: !2149)
!2390 = !DILocation(line: 606, column: 5, scope: !2391, inlinedAt: !2149)
!2391 = distinct !DILexicalBlock(scope: !753, file: !1, line: 606, column: 5)
!2392 = !DILocation(line: 606, column: 5, scope: !753, inlinedAt: !2149)
!2393 = !DILocation(line: 606, column: 5, scope: !2394, inlinedAt: !2149)
!2394 = !DILexicalBlockFile(scope: !2391, file: !1, discriminator: 6)
!2395 = !DILocation(line: 647, column: 11, scope: !677)
!2396 = !DILocation(line: 641, column: 46, scope: !677)
!2397 = !DILocation(line: 649, column: 5, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !690, file: !1, line: 649, column: 5)
!2399 = !DILocation(line: 649, column: 5, scope: !690)
!2400 = !DILocation(line: 649, column: 5, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2398, file: !1, discriminator: 3)
!2402 = !DILocation(line: 650, column: 5, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !692, file: !1, line: 650, column: 5)
!2404 = !DILocation(line: 650, column: 5, scope: !692)
!2405 = !DILocation(line: 650, column: 5, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2403, file: !1, discriminator: 3)
!2407 = !DILocation(line: 651, column: 5, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !694, file: !1, line: 651, column: 5)
!2409 = !DILocation(line: 651, column: 5, scope: !694)
!2410 = !DILocation(line: 651, column: 5, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2408, file: !1, discriminator: 3)
!2412 = !DILocation(line: 653, column: 1, scope: !677)
!2413 = !DILocation(line: 42, column: 31, scope: !915)
!2414 = !DILocation(line: 49, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !915, file: !1, line: 49, column: 9)
!2416 = !DILocation(line: 49, column: 22, scope: !2415)
!2417 = !DILocation(line: 49, column: 9, scope: !915)
!2418 = !DILocation(line: 50, column: 24, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 49, column: 31)
!2420 = !DILocation(line: 50, column: 22, scope: !2419)
!2421 = !DILocation(line: 51, column: 26, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !1, line: 51, column: 13)
!2423 = !DILocation(line: 51, column: 13, scope: !2419)
!2424 = !DILocation(line: 55, column: 19, scope: !915)
!2425 = !DILocation(line: 45, column: 15, scope: !915)
!2426 = !DILocation(line: 56, column: 43, scope: !915)
!2427 = !DILocation(line: 56, column: 14, scope: !915)
!2428 = !DILocation(line: 47, column: 9, scope: !915)
!2429 = !DILocation(line: 57, column: 22, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !915, file: !1, line: 57, column: 9)
!2431 = !DILocation(line: 60, column: 51, scope: !915)
!2432 = !DILocation(line: 60, column: 23, scope: !915)
!2433 = !DILocation(line: 46, column: 15, scope: !915)
!2434 = !DILocation(line: 61, column: 10, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !915, file: !1, line: 61, column: 9)
!2436 = !DILocation(line: 61, column: 9, scope: !915)
!2437 = !DILocation(line: 63, column: 12, scope: !915)
!2438 = !DILocation(line: 63, column: 5, scope: !915)
!2439 = !DILocation(line: 64, column: 1, scope: !915)
!2440 = !DILocation(line: 656, column: 25, scope: !959)
!2441 = !DILocation(line: 656, column: 41, scope: !959)
!2442 = !DILocation(line: 656, column: 57, scope: !959)
!2443 = !DILocation(line: 659, column: 5, scope: !959)
!2444 = !DILocation(line: 659, column: 25, scope: !959)
!2445 = !DILocation(line: 660, column: 5, scope: !959)
!2446 = !DILocation(line: 660, column: 16, scope: !959)
!2447 = !{!1165, !1165, i64 0}
!2448 = !DILocation(line: 659, column: 15, scope: !959)
!2449 = !DILocation(line: 662, column: 10, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !959, file: !1, line: 662, column: 9)
!2451 = !DILocation(line: 662, column: 9, scope: !959)
!2452 = !DILocation(line: 666, column: 29, scope: !959)
!2453 = !DILocation(line: 666, column: 38, scope: !959)
!2454 = !DILocation(line: 611, column: 24, scope: !967, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 666, column: 16, scope: !959)
!2456 = !DILocation(line: 611, column: 43, scope: !967, inlinedAt: !2455)
!2457 = !DILocation(line: 616, column: 39, scope: !967, inlinedAt: !2455)
!2458 = !DILocation(line: 616, column: 10, scope: !967, inlinedAt: !2455)
!2459 = !DILocation(line: 613, column: 9, scope: !967, inlinedAt: !2455)
!2460 = !DILocation(line: 617, column: 9, scope: !967, inlinedAt: !2455)
!2461 = !DILocation(line: 621, column: 40, scope: !2462, inlinedAt: !2455)
!2462 = distinct !DILexicalBlock(scope: !967, file: !1, line: 620, column: 9)
!2463 = !DILocation(line: 621, column: 9, scope: !2462, inlinedAt: !2455)
!2464 = !DILocation(line: 622, column: 23, scope: !2465, inlinedAt: !2455)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !1, line: 622, column: 14)
!2466 = !DILocation(line: 623, column: 20, scope: !2465, inlinedAt: !2455)
!2467 = !DILocation(line: 622, column: 14, scope: !2462, inlinedAt: !2455)
!2468 = !DILocation(line: 666, column: 16, scope: !959)
!2469 = !DILocation(line: 626, column: 40, scope: !967, inlinedAt: !2455)
!2470 = !DILocation(line: 626, column: 10, scope: !967, inlinedAt: !2455)
!2471 = !DILocation(line: 627, column: 9, scope: !967, inlinedAt: !2455)
!2472 = !DILocation(line: 630, column: 25, scope: !2473, inlinedAt: !2455)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 629, column: 18)
!2474 = distinct !DILexicalBlock(scope: !967, file: !1, line: 629, column: 9)
!2475 = !DILocation(line: 630, column: 9, scope: !2473, inlinedAt: !2455)
!2476 = !DILocation(line: 632, column: 9, scope: !2473, inlinedAt: !2455)
!2477 = !DILocation(line: 666, column: 14, scope: !959)
!2478 = !DILocation(line: 667, column: 9, scope: !959)
!2479 = !DILocation(line: 667, column: 18, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !959, file: !1, line: 667, column: 9)
!2481 = !DILocation(line: 669, column: 20, scope: !959)
!2482 = !DILocation(line: 669, column: 39, scope: !959)
!2483 = !DILocation(line: 669, column: 12, scope: !959)
!2484 = !DILocation(line: 669, column: 5, scope: !959)
!2485 = !DILocation(line: 670, column: 1, scope: !959)
!2486 = !DILocation(line: 673, column: 34, scope: !972)
!2487 = !DILocation(line: 673, column: 50, scope: !972)
!2488 = !DILocation(line: 673, column: 66, scope: !972)
!2489 = !DILocation(line: 677, column: 5, scope: !972)
!2490 = !DILocation(line: 678, column: 5, scope: !972)
!2491 = !DILocation(line: 679, column: 5, scope: !972)
!2492 = !DILocation(line: 680, column: 5, scope: !972)
!2493 = !DILocation(line: 681, column: 5, scope: !972)
!2494 = !DILocation(line: 681, column: 15, scope: !972)
!2495 = !DILocation(line: 682, column: 5, scope: !972)
!2496 = !DILocation(line: 682, column: 15, scope: !972)
!2497 = !DILocation(line: 683, column: 5, scope: !972)
!2498 = !DILocation(line: 683, column: 15, scope: !972)
!2499 = !DILocation(line: 677, column: 15, scope: !972)
!2500 = !DILocation(line: 678, column: 15, scope: !972)
!2501 = !DILocation(line: 679, column: 15, scope: !972)
!2502 = !DILocation(line: 680, column: 9, scope: !972)
!2503 = !DILocation(line: 685, column: 10, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !972, file: !1, line: 685, column: 9)
!2505 = !DILocation(line: 685, column: 9, scope: !972)
!2506 = !DILocation(line: 690, column: 9, scope: !986)
!2507 = !DILocation(line: 690, column: 9, scope: !972)
!2508 = !DILocation(line: 701, column: 20, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !985, file: !1, line: 701, column: 13)
!2510 = !DILocation(line: 693, column: 19, scope: !985)
!2511 = !DILocation(line: 701, column: 57, scope: !2509)
!2512 = !DILocation(line: 701, column: 13, scope: !985)
!2513 = !DILocation(line: 703, column: 20, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !985, file: !1, line: 703, column: 13)
!2515 = !DILocation(line: 703, column: 57, scope: !2514)
!2516 = !DILocation(line: 703, column: 13, scope: !985)
!2517 = !DILocation(line: 707, column: 39, scope: !985)
!2518 = !DILocation(line: 707, column: 18, scope: !985)
!2519 = !DILocation(line: 694, column: 19, scope: !985)
!2520 = !DILocation(line: 708, column: 44, scope: !985)
!2521 = !DILocation(line: 708, column: 23, scope: !985)
!2522 = !DILocation(line: 695, column: 19, scope: !985)
!2523 = !DILocation(line: 710, column: 20, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !985, file: !1, line: 710, column: 13)
!2525 = !DILocation(line: 710, column: 43, scope: !2524)
!2526 = !DILocation(line: 710, column: 28, scope: !2524)
!2527 = !DILocation(line: 714, column: 14, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !985, file: !1, line: 714, column: 13)
!2529 = !DILocation(line: 714, column: 13, scope: !985)
!2530 = !DILocation(line: 717, column: 69, scope: !985)
!2531 = !{!2532, !1150, i64 16}
!2532 = !{!"_Py_Identifier", !1150, i64 0, !1150, i64 8, !1150, i64 16}
!2533 = !DILocation(line: 717, column: 18, scope: !985)
!2534 = !DILocation(line: 696, column: 19, scope: !985)
!2535 = !DILocation(line: 719, column: 14, scope: !997)
!2536 = !DILocation(line: 719, column: 13, scope: !985)
!2537 = !DILocation(line: 721, column: 25, scope: !996)
!2538 = !DILocation(line: 721, column: 18, scope: !997)
!2539 = !DILocation(line: 722, column: 13, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 1)
!2541 = !DILocation(line: 722, column: 13, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !994, file: !1, line: 722, column: 13)
!2543 = !DILocation(line: 722, column: 13, scope: !994)
!2544 = !DILocation(line: 722, column: 13, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2542, file: !1, discriminator: 3)
!2546 = !DILocation(line: 728, column: 66, scope: !985)
!2547 = !DILocation(line: 727, column: 23, scope: !985)
!2548 = !DILocation(line: 697, column: 19, scope: !985)
!2549 = !DILocation(line: 730, column: 9, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !999, file: !1, discriminator: 1)
!2551 = !DILocation(line: 730, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !999, file: !1, line: 730, column: 9)
!2553 = !DILocation(line: 730, column: 9, scope: !999)
!2554 = !DILocation(line: 730, column: 9, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2552, file: !1, discriminator: 3)
!2556 = !DILocation(line: 731, column: 14, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !985, file: !1, line: 731, column: 13)
!2558 = !DILocation(line: 731, column: 13, scope: !985)
!2559 = !DILocation(line: 735, column: 51, scope: !985)
!2560 = !DILocation(line: 735, column: 57, scope: !985)
!2561 = !DILocation(line: 735, column: 23, scope: !985)
!2562 = !DILocation(line: 698, column: 19, scope: !985)
!2563 = !DILocation(line: 736, column: 14, scope: !1003)
!2564 = !DILocation(line: 736, column: 13, scope: !985)
!2565 = !DILocation(line: 737, column: 13, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !1001, file: !1, discriminator: 1)
!2567 = !DILocation(line: 737, column: 13, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 737, column: 13)
!2569 = !DILocation(line: 737, column: 13, scope: !1001)
!2570 = !DILocation(line: 737, column: 13, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2568, file: !1, discriminator: 3)
!2572 = !DILocation(line: 742, column: 34, scope: !985)
!2573 = !DILocation(line: 742, column: 44, scope: !985)
!2574 = !DILocation(line: 742, column: 53, scope: !985)
!2575 = !DILocation(line: 742, column: 63, scope: !985)
!2576 = !DILocation(line: 742, column: 71, scope: !985)
!2577 = !DILocation(line: 743, column: 34, scope: !985)
!2578 = !DILocation(line: 742, column: 20, scope: !985)
!2579 = !DILocation(line: 699, column: 19, scope: !985)
!2580 = !DILocation(line: 744, column: 9, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!2582 = !DILocation(line: 744, column: 9, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 744, column: 9)
!2584 = !DILocation(line: 744, column: 9, scope: !1005)
!2585 = !DILocation(line: 744, column: 9, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2583, file: !1, discriminator: 3)
!2587 = !DILocation(line: 749, column: 26, scope: !972)
!2588 = !DILocation(line: 749, column: 36, scope: !972)
!2589 = !DILocation(line: 749, column: 45, scope: !972)
!2590 = !DILocation(line: 749, column: 55, scope: !972)
!2591 = !DILocation(line: 749, column: 63, scope: !972)
!2592 = !DILocation(line: 750, column: 26, scope: !972)
!2593 = !DILocation(line: 749, column: 12, scope: !972)
!2594 = !DILocation(line: 749, column: 5, scope: !972)
!2595 = !DILocation(line: 751, column: 1, scope: !972)
!2596 = !DILocation(line: 927, column: 25, scope: !1020)
!2597 = !DILocation(line: 927, column: 47, scope: !1020)
!2598 = !DILocation(line: 933, column: 15, scope: !1020)
!2599 = !DILocation(line: 936, column: 10, scope: !1030)
!2600 = !DILocation(line: 936, column: 10, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2602, file: !1, discriminator: 4)
!2602 = !DILexicalBlockFile(scope: !1030, file: !1, discriminator: 2)
!2603 = !DILocation(line: 936, column: 10, scope: !1031)
!2604 = !DILocation(line: 936, column: 9, scope: !1020)
!2605 = !DILocation(line: 937, column: 13, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !1, line: 937, column: 13)
!2607 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 936, column: 36)
!2608 = !DILocation(line: 937, column: 24, scope: !2606)
!2609 = !DILocation(line: 937, column: 13, scope: !2607)
!2610 = !DILocation(line: 938, column: 26, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 937, column: 33)
!2612 = !DILocation(line: 938, column: 24, scope: !2611)
!2613 = !DILocation(line: 939, column: 28, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 939, column: 17)
!2615 = !DILocation(line: 939, column: 17, scope: !2611)
!2616 = !DILocation(line: 944, column: 15, scope: !1037)
!2617 = !DILocation(line: 944, column: 15, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !1, discriminator: 4)
!2619 = !DILexicalBlockFile(scope: !1037, file: !1, discriminator: 2)
!2620 = !DILocation(line: 944, column: 15, scope: !1038)
!2621 = !DILocation(line: 944, column: 14, scope: !1031)
!2622 = !DILocation(line: 945, column: 13, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 945, column: 13)
!2624 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 944, column: 40)
!2625 = !DILocation(line: 945, column: 23, scope: !2623)
!2626 = !DILocation(line: 945, column: 13, scope: !2624)
!2627 = !DILocation(line: 946, column: 25, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 945, column: 32)
!2629 = !DILocation(line: 946, column: 23, scope: !2628)
!2630 = !DILocation(line: 947, column: 27, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 947, column: 17)
!2632 = !DILocation(line: 947, column: 17, scope: !2628)
!2633 = !DILocation(line: 952, column: 15, scope: !1044)
!2634 = !DILocation(line: 952, column: 15, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2636, file: !1, discriminator: 4)
!2636 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 2)
!2637 = !DILocation(line: 952, column: 15, scope: !1045)
!2638 = !DILocation(line: 952, column: 14, scope: !1038)
!2639 = !DILocation(line: 953, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 953, column: 13)
!2641 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 952, column: 42)
!2642 = !DILocation(line: 953, column: 25, scope: !2640)
!2643 = !DILocation(line: 953, column: 13, scope: !2641)
!2644 = !DILocation(line: 954, column: 27, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 953, column: 34)
!2646 = !DILocation(line: 954, column: 25, scope: !2645)
!2647 = !DILocation(line: 955, column: 29, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 955, column: 17)
!2649 = !DILocation(line: 955, column: 17, scope: !2645)
!2650 = !DILocation(line: 960, column: 15, scope: !1051)
!2651 = !DILocation(line: 960, column: 15, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2653, file: !1, discriminator: 4)
!2653 = !DILexicalBlockFile(scope: !1051, file: !1, discriminator: 2)
!2654 = !DILocation(line: 960, column: 15, scope: !1052)
!2655 = !DILocation(line: 960, column: 14, scope: !1045)
!2656 = !DILocation(line: 961, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 961, column: 13)
!2658 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 960, column: 41)
!2659 = !DILocation(line: 961, column: 24, scope: !2657)
!2660 = !DILocation(line: 961, column: 13, scope: !2658)
!2661 = !DILocation(line: 962, column: 26, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 961, column: 33)
!2663 = !DILocation(line: 962, column: 24, scope: !2662)
!2664 = !DILocation(line: 963, column: 28, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 963, column: 17)
!2666 = !DILocation(line: 963, column: 17, scope: !2662)
!2667 = !DILocation(line: 969, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 968, column: 10)
!2669 = !DILocation(line: 966, column: 22, scope: !2658)
!2670 = !DILocation(line: 973, column: 14, scope: !1020)
!2671 = !DILocation(line: 934, column: 15, scope: !1020)
!2672 = !DILocation(line: 974, column: 16, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 974, column: 9)
!2674 = !DILocation(line: 974, column: 9, scope: !1020)
!2675 = !DILocation(line: 976, column: 14, scope: !1020)
!2676 = !DILocation(line: 934, column: 24, scope: !1020)
!2677 = !DILocation(line: 977, column: 5, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !1058, file: !1, discriminator: 1)
!2679 = !DILocation(line: 977, column: 5, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 977, column: 5)
!2681 = !DILocation(line: 977, column: 5, scope: !1058)
!2682 = !DILocation(line: 977, column: 5, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 3)
!2684 = !DILocation(line: 979, column: 1, scope: !1020)
