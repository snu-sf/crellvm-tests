; ModuleID = 'errors.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_atomic_address = type { i8* }
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyTraceBack_Type = external global %struct._typeobject, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [42 x i8] c"exception %R not a BaseException subclass\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_KeyError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@PyExc_RecursionErrorInst = external global %struct._object*, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"bad argument type for built-in operation\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Out of memory and PyExc_MemoryError is not initialized yet\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(iOOiO)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(iOO)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"(iO)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"%s:%d: bad argument to internal function\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"bad argument to internal function\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"PyErr_NewException: name must be module.class\00", align 1
@PyExc_Exception = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"sOO\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@PyErr_WriteUnraisable.PyId___module__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* null }, align 8
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._object* null }, align 8
@.str.16 = private unnamed_addr constant [23 x i8] c"Exception ignored in: \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PyId_builtins = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object* null }, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@PyErr_SyntaxLocationObject.PyId_filename = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* null }, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@PyErr_SyntaxLocationObject.PyId_lineno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct._object* null }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@PyErr_SyntaxLocationObject.PyId_msg = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._object* null }, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@PyErr_SyntaxLocationObject.PyId_offset = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._object* null }, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@PyErr_SyntaxLocationObject.PyId_print_file_and_line = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), %struct._object* null }, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"print_file_and_line\00", align 1
@PyErr_SyntaxLocationObject.PyId_text = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1

; Function Attrs: nounwind uwtable
define void @PyErr_Restore(%struct._object* %type, %struct._object* %value, %struct._object* %traceback) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %type, i64 0, metadata !424, metadata !970), !dbg !971
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !425, metadata !970), !dbg !972
  tail call void @llvm.dbg.value(metadata %struct._object* %traceback, i64 0, metadata !426, metadata !970), !dbg !973
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970), !dbg !974
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970), !dbg !974
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !975, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !435, metadata !970), !dbg !974
  %cmp = icmp eq %struct._object* %traceback, null, !dbg !982
  br i1 %cmp, label %if.end.12, label %land.lhs.true, !dbg !983

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %traceback, i64 0, i32 1, !dbg !984
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !986, !tbaa !989
  %cmp7 = icmp eq %struct._typeobject* %1, @PyTraceBack_Type, !dbg !984
  br i1 %cmp7, label %if.end.12, label %do.body, !dbg !992

do.body:                                          ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata %struct._object* %traceback, i64 0, metadata !444, metadata !970), !dbg !993
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %traceback, i64 0, i32 0, !dbg !995
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !995, !tbaa !996
  %dec = add i64 %2, -1, !dbg !995
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !995, !tbaa !996
  %cmp9 = icmp eq i64 %dec, 0, !dbg !995
  br i1 %cmp9, label %if.else, label %if.end.12, !dbg !997

if.else:                                          ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !986
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !986, !tbaa !998
  tail call void %3(%struct._object* %traceback) #2, !dbg !986
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %do.body, %entry, %land.lhs.true
  %traceback.addr.0 = phi %struct._object* [ %traceback, %land.lhs.true ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ]
  %curexc_type = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1002
  %4 = bitcast i8* %curexc_type to %struct._object**, !dbg !1002
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !1002, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !441, metadata !970), !dbg !1005
  %curexc_value = getelementptr inbounds i8, i8* %0, i64 88, !dbg !1006
  %6 = bitcast i8* %curexc_value to %struct._object**, !dbg !1006
  %7 = load %struct._object*, %struct._object** %6, align 8, !dbg !1006, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !442, metadata !970), !dbg !1008
  %curexc_traceback = getelementptr inbounds i8, i8* %0, i64 96, !dbg !1009
  %8 = bitcast i8* %curexc_traceback to %struct._object**, !dbg !1009
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !1009, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !443, metadata !970), !dbg !1011
  store %struct._object* %type, %struct._object** %4, align 8, !dbg !1012, !tbaa !1003
  store %struct._object* %value, %struct._object** %6, align 8, !dbg !1013, !tbaa !1007
  store %struct._object* %traceback.addr.0, %struct._object** %8, align 8, !dbg !1014, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !448, metadata !970), !dbg !1015
  %cmp18 = icmp eq %struct._object* %5, null, !dbg !1017
  br i1 %cmp18, label %if.end.33, label %do.body.20, !dbg !1018

do.body.20:                                       ; preds = %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !450, metadata !970), !dbg !1019
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1021
  %10 = load i64, i64* %ob_refcnt23, align 8, !dbg !1021, !tbaa !996
  %dec24 = add i64 %10, -1, !dbg !1021
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1021, !tbaa !996
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1021
  br i1 %cmp25, label %if.else.27, label %if.end.33, !dbg !1023

if.else.27:                                       ; preds = %do.body.20
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1024
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1024, !tbaa !989
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1024
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1024, !tbaa !998
  tail call void %12(%struct._object* %5) #2, !dbg !1024
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.27, %do.body.20, %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !453, metadata !970), !dbg !1026
  %cmp39 = icmp eq %struct._object* %7, null, !dbg !1028
  br i1 %cmp39, label %if.end.54, label %do.body.41, !dbg !1029

do.body.41:                                       ; preds = %if.end.33
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !455, metadata !970), !dbg !1030
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !1032
  %13 = load i64, i64* %ob_refcnt44, align 8, !dbg !1032, !tbaa !996
  %dec45 = add i64 %13, -1, !dbg !1032
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !1032, !tbaa !996
  %cmp46 = icmp eq i64 %dec45, 0, !dbg !1032
  br i1 %cmp46, label %if.else.48, label %if.end.54, !dbg !1034

if.else.48:                                       ; preds = %do.body.41
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1035
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1035, !tbaa !989
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1035
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1035, !tbaa !998
  tail call void %15(%struct._object* %7) #2, !dbg !1035
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.48, %do.body.41, %if.end.33
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !458, metadata !970), !dbg !1037
  %cmp60 = icmp eq %struct._object* %9, null, !dbg !1039
  br i1 %cmp60, label %if.end.75, label %do.body.62, !dbg !1040

do.body.62:                                       ; preds = %if.end.54
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !460, metadata !970), !dbg !1041
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1043
  %16 = load i64, i64* %ob_refcnt65, align 8, !dbg !1043, !tbaa !996
  %dec66 = add i64 %16, -1, !dbg !1043
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1043, !tbaa !996
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !1043
  br i1 %cmp67, label %if.else.69, label %if.end.75, !dbg !1045

if.else.69:                                       ; preds = %do.body.62
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1046
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1046, !tbaa !989
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1046
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1046, !tbaa !998
  tail call void %18(%struct._object* %9) #2, !dbg !1046
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.69, %do.body.62, %if.end.54
  ret void, !dbg !1048
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyErr_SetObject(%struct._object* %exception, %struct._object* %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !467, metadata !970), !dbg !1049
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !468, metadata !970), !dbg !1050
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !470, metadata !970), !dbg !1051
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !473, metadata !970), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !474, metadata !970), !dbg !1051
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1052, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !472, metadata !970), !dbg !1051
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !476, metadata !970), !dbg !1055
  %cmp = icmp ne %struct._object* %exception, null, !dbg !1056
  br i1 %cmp, label %land.lhs.true, label %do.body, !dbg !1058

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %exception, i64 0, i32 1, !dbg !1059
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1059, !tbaa !989
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 19, !dbg !1059
  %2 = load i64, i64* %tp_flags, align 8, !dbg !1059, !tbaa !1060
  %and = and i64 %2, 2147483648, !dbg !1059
  %cmp6 = icmp eq i64 %and, 0, !dbg !1059
  br i1 %cmp6, label %if.then, label %land.lhs.true.7, !dbg !1059

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %tp_flags8 = getelementptr inbounds %struct._object, %struct._object* %exception, i64 10, i32 1, !dbg !1061
  %3 = bitcast %struct._typeobject** %tp_flags8 to i64*, !dbg !1061
  %4 = load i64, i64* %3, align 8, !dbg !1061, !tbaa !1060
  %and9 = and i64 %4, 1073741824, !dbg !1061
  %cmp10 = icmp eq i64 %and9, 0, !dbg !1061
  br i1 %cmp10, label %if.then, label %do.body, !dbg !1063

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1064, !tbaa !978
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct._object* %exception), !dbg !1066
  br label %cleanup.147, !dbg !1067

do.body:                                          ; preds = %land.lhs.true.7, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !477, metadata !970), !dbg !1068
  %cmp12 = icmp ne %struct._object* %value, null, !dbg !1070
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1072

if.then.13:                                       ; preds = %do.body
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !1073
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1073, !tbaa !996
  %inc = add i64 %6, 1, !dbg !1073
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1073, !tbaa !996
  br label %if.end.14, !dbg !1073

if.end.14:                                        ; preds = %if.then.13, %do.body
  %exc_value15 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1075
  %7 = bitcast i8* %exc_value15 to %struct._object**, !dbg !1075
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1075, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !475, metadata !970), !dbg !1077
  %cmp16 = icmp ne %struct._object* %8, null, !dbg !1078
  %cmp18 = icmp ne %struct._object* %8, @_Py_NoneStruct, !dbg !1079
  %or.cond = and i1 %cmp16, %cmp18, !dbg !1080
  br i1 %or.cond, label %if.then.19, label %if.end.127, !dbg !1080

if.then.19:                                       ; preds = %if.end.14
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1081
  %9 = load i64, i64* %ob_refcnt20, align 8, !dbg !1081, !tbaa !996
  %inc21 = add i64 %9, 1, !dbg !1081
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !1081, !tbaa !996
  %cmp22 = icmp eq %struct._object* %value, null, !dbg !1082
  br i1 %cmp22, label %if.then.33, label %lor.lhs.false, !dbg !1083

lor.lhs.false:                                    ; preds = %if.then.19
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 1, !dbg !1084
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1086, !tbaa !989
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1084
  %11 = load i64, i64* %tp_flags24, align 8, !dbg !1086, !tbaa !1060
  %and25 = and i64 %11, 1073741824, !dbg !1084
  %cmp26 = icmp eq i64 %and25, 0, !dbg !1084
  br i1 %cmp26, label %if.then.27, label %if.end.89, !dbg !1089

if.then.27:                                       ; preds = %lor.lhs.false
  %cmp32 = icmp eq %struct._object* %value, @_Py_NoneStruct, !dbg !1090
  br i1 %cmp32, label %if.then.33, label %if.else, !dbg !1091

if.then.33:                                       ; preds = %if.then.19, %if.then.27
  %call34 = tail call %struct._object* @PyTuple_New(i64 0) #2, !dbg !1092
  tail call void @llvm.dbg.value(metadata %struct._object* %call34, i64 0, metadata !479, metadata !970), !dbg !1093
  br label %if.end.45, !dbg !1094

if.else:                                          ; preds = %if.then.27
  %and37 = and i64 %11, 67108864, !dbg !1086
  %cmp38 = icmp eq i64 %and37, 0, !dbg !1086
  br i1 %cmp38, label %if.else.42, label %cond.end, !dbg !1095

if.else.42:                                       ; preds = %if.else
  %call43 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %value) #2, !dbg !1096
  tail call void @llvm.dbg.value(metadata %struct._object* %call43, i64 0, metadata !479, metadata !970), !dbg !1093
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.33
  %args.0 = phi %struct._object* [ %call34, %if.then.33 ], [ %call43, %if.else.42 ]
  %tobool = icmp eq %struct._object* %args.0, null, !dbg !1097
  br i1 %tobool, label %if.end.61, label %cond.end.thread229, !dbg !1097

cond.end.thread229:                               ; preds = %if.end.45
  %call46.230 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %exception, %struct._object* %args.0, %struct._object* null) #2, !dbg !1098
  tail call void @llvm.dbg.value(metadata %struct._object* %call46, i64 0, metadata !484, metadata !970), !dbg !1099
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !485, metadata !970), !dbg !1100
  br label %do.body.51, !dbg !1102

cond.end:                                         ; preds = %if.else
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !1103
  %12 = load i64, i64* %ob_refcnt40, align 8, !dbg !1103, !tbaa !996
  %inc41 = add i64 %12, 1, !dbg !1103
  store i64 %inc41, i64* %ob_refcnt40, align 8, !dbg !1103, !tbaa !996
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !479, metadata !970), !dbg !1093
  %call46 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %exception, %struct._object* %value, %struct._object* null) #2, !dbg !1098
  tail call void @llvm.dbg.value(metadata %struct._object* %call46, i64 0, metadata !484, metadata !970), !dbg !1099
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !485, metadata !970), !dbg !1100
  br label %do.body.51

do.body.51:                                       ; preds = %cond.end, %cond.end.thread229
  %call46232 = phi %struct._object* [ %call46.230, %cond.end.thread229 ], [ %call46, %cond.end ]
  %args.0224231 = phi %struct._object* [ %args.0, %cond.end.thread229 ], [ %value, %cond.end ]
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !487, metadata !970), !dbg !1105
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %args.0224231, i64 0, i32 0, !dbg !1107
  %13 = load i64, i64* %ob_refcnt53, align 8, !dbg !1107, !tbaa !996
  %dec = add i64 %13, -1, !dbg !1107
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !1107, !tbaa !996
  %cmp54 = icmp eq i64 %dec, 0, !dbg !1107
  br i1 %cmp54, label %if.else.56, label %if.end.61, !dbg !1109

if.else.56:                                       ; preds = %do.body.51
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %args.0224231, i64 0, i32 1, !dbg !1110
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1110, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1110
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1110, !tbaa !998
  tail call void %15(%struct._object* %args.0224231) #2, !dbg !1110
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.45, %if.else.56, %do.body.51
  %cond228 = phi %struct._object* [ %call46232, %if.else.56 ], [ %call46232, %do.body.51 ], [ null, %if.end.45 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !490, metadata !970), !dbg !1112
  br i1 %cmp12, label %do.body.69, label %if.end.82, !dbg !1114

do.body.69:                                       ; preds = %if.end.61
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !492, metadata !970), !dbg !1115
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 0, !dbg !1117
  %16 = load i64, i64* %ob_refcnt72, align 8, !dbg !1117, !tbaa !996
  %dec73 = add i64 %16, -1, !dbg !1117
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1117, !tbaa !996
  %cmp74 = icmp eq i64 %dec73, 0, !dbg !1117
  br i1 %cmp74, label %if.else.76, label %if.end.82, !dbg !1119

if.else.76:                                       ; preds = %do.body.69
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %value, i64 0, i32 1, !dbg !1120
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1120, !tbaa !989
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1120
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1120, !tbaa !998
  tail call void %18(%struct._object* %value) #2, !dbg !1120
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.76, %do.body.69, %if.end.61
  %cmp85 = icmp eq %struct._object* %cond228, null, !dbg !1122
  br i1 %cmp85, label %cleanup.147, label %if.end.89

if.end.89:                                        ; preds = %if.end.82, %lor.lhs.false
  %value.addr.1 = phi %struct._object* [ %cond228, %if.end.82 ], [ %value, %lor.lhs.false ]
  %cmp90 = icmp eq %struct._object* %8, %value.addr.1, !dbg !1124
  br i1 %cmp90, label %do.body.113, label %while.cond.preheader, !dbg !1125

while.cond.preheader:                             ; preds = %if.end.89
  br label %while.cond, !dbg !1126

while.cond:                                       ; preds = %while.cond.preheader, %if.end.106
  %o.0 = phi %struct._object* [ %call94, %if.end.106 ], [ %8, %while.cond.preheader ]
  %call94 = tail call %struct._object* @PyException_GetContext(%struct._object* %o.0) #2, !dbg !1126
  tail call void @llvm.dbg.value(metadata %struct._object* %call94, i64 0, metadata !498, metadata !970), !dbg !1127
  %tobool95 = icmp eq %struct._object* %call94, null, !dbg !1128
  br i1 %tobool95, label %while.end.loopexit, label %do.body.96, !dbg !1128

do.body.96:                                       ; preds = %while.cond
  tail call void @llvm.dbg.value(metadata %struct._object* %call94, i64 0, metadata !499, metadata !970), !dbg !1129
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %call94, i64 0, i32 0, !dbg !1131
  %19 = load i64, i64* %ob_refcnt99, align 8, !dbg !1131, !tbaa !996
  %dec100 = add i64 %19, -1, !dbg !1131
  store i64 %dec100, i64* %ob_refcnt99, align 8, !dbg !1131, !tbaa !996
  %cmp101 = icmp eq i64 %dec100, 0, !dbg !1131
  br i1 %cmp101, label %if.else.103, label %if.end.106, !dbg !1133

if.else.103:                                      ; preds = %do.body.96
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %call94, i64 0, i32 1, !dbg !1134
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !1134, !tbaa !989
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1134
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !1134, !tbaa !998
  tail call void %21(%struct._object* %call94) #2, !dbg !1134
  br label %if.end.106

if.end.106:                                       ; preds = %do.body.96, %if.else.103
  %cmp109 = icmp eq %struct._object* %call94, %value.addr.1, !dbg !1136
  br i1 %cmp109, label %if.then.110, label %while.cond, !dbg !1138

if.then.110:                                      ; preds = %if.end.106
  %o.0.lcssa241 = phi %struct._object* [ %o.0, %if.end.106 ]
  tail call void @PyException_SetContext(%struct._object* %o.0.lcssa241, %struct._object* null) #2, !dbg !1139
  br label %while.end, !dbg !1141

while.end.loopexit:                               ; preds = %while.cond
  br label %while.end, !dbg !1142

while.end:                                        ; preds = %while.end.loopexit, %if.then.110
  tail call void @PyException_SetContext(%struct._object* %value.addr.1, %struct._object* %8) #2, !dbg !1142
  br label %if.end.127, !dbg !1143

do.body.113:                                      ; preds = %if.end.89
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !502, metadata !970), !dbg !1144
  %22 = load i64, i64* %ob_refcnt20, align 8, !dbg !1146, !tbaa !996
  %dec117 = add i64 %22, -1, !dbg !1146
  store i64 %dec117, i64* %ob_refcnt20, align 8, !dbg !1146, !tbaa !996
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !1146
  br i1 %cmp118, label %if.else.120, label %land.lhs.true.129, !dbg !1148

if.else.120:                                      ; preds = %do.body.113
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1149
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1149, !tbaa !989
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1149
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1149, !tbaa !998
  tail call void %24(%struct._object* %8) #2, !dbg !1149
  br label %land.lhs.true.129

if.end.127:                                       ; preds = %while.end, %if.end.14
  %value.addr.2 = phi %struct._object* [ %value.addr.1, %while.end ], [ %value, %if.end.14 ]
  %cmp128 = icmp eq %struct._object* %value.addr.2, null, !dbg !1151
  br i1 %cmp128, label %do.body.137, label %land.lhs.true.129, !dbg !1153

land.lhs.true.129:                                ; preds = %if.else.120, %do.body.113, %if.end.127
  %value.addr.2236 = phi %struct._object* [ %value.addr.2, %if.end.127 ], [ %8, %do.body.113 ], [ %8, %if.else.120 ]
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %value.addr.2236, i64 0, i32 1, !dbg !1154
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !1154, !tbaa !989
  %tp_flags131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 19, !dbg !1154
  %26 = load i64, i64* %tp_flags131, align 8, !dbg !1154, !tbaa !1060
  %and132 = and i64 %26, 1073741824, !dbg !1154
  %cmp133 = icmp eq i64 %and132, 0, !dbg !1154
  br i1 %cmp133, label %do.body.137, label %if.then.134, !dbg !1156

if.then.134:                                      ; preds = %land.lhs.true.129
  %call135 = tail call %struct._object* @PyException_GetTraceback(%struct._object* %value.addr.2236) #2, !dbg !1157
  tail call void @llvm.dbg.value(metadata %struct._object* %call135, i64 0, metadata !476, metadata !970), !dbg !1055
  br label %do.body.137, !dbg !1158

do.body.137:                                      ; preds = %land.lhs.true.129, %if.end.127, %if.then.134
  %value.addr.2237 = phi %struct._object* [ %value.addr.2236, %if.then.134 ], [ %value.addr.2236, %land.lhs.true.129 ], [ null, %if.end.127 ]
  %tb.0 = phi %struct._object* [ %call135, %if.then.134 ], [ null, %land.lhs.true.129 ], [ null, %if.end.127 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !505, metadata !970), !dbg !1159
  br i1 %cmp, label %if.then.141, label %if.end.144, !dbg !1161

if.then.141:                                      ; preds = %do.body.137
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %exception, i64 0, i32 0, !dbg !1162
  %27 = load i64, i64* %ob_refcnt142, align 8, !dbg !1162, !tbaa !996
  %inc143 = add i64 %27, 1, !dbg !1162
  store i64 %inc143, i64* %ob_refcnt142, align 8, !dbg !1162, !tbaa !996
  br label %if.end.144, !dbg !1162

if.end.144:                                       ; preds = %if.then.141, %do.body.137
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !424, metadata !970) #2, !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object* %value.addr.2, i64 0, metadata !425, metadata !970) #2, !dbg !1167
  tail call void @llvm.dbg.value(metadata %struct._object* %tb.0, i64 0, metadata !426, metadata !970) #2, !dbg !1168
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !1169
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !1169
  %28 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1170, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !435, metadata !970) #2, !dbg !1169
  %cmp.i = icmp eq %struct._object* %tb.0, null, !dbg !1171
  br i1 %cmp.i, label %if.end.12.i, label %land.lhs.true.i, !dbg !1172

land.lhs.true.i:                                  ; preds = %if.end.144
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %tb.0, i64 0, i32 1, !dbg !1173
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1174, !tbaa !989
  %cmp7.i = icmp eq %struct._typeobject* %29, @PyTraceBack_Type, !dbg !1173
  br i1 %cmp7.i, label %if.end.12.i, label %do.body.i, !dbg !1175

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void @llvm.dbg.value(metadata %struct._object* %tb.0, i64 0, metadata !444, metadata !970) #2, !dbg !1176
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %tb.0, i64 0, i32 0, !dbg !1177
  %30 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1177, !tbaa !996
  %dec.i = add i64 %30, -1, !dbg !1177
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1177, !tbaa !996
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !1177
  br i1 %cmp9.i, label %if.else.i, label %if.end.12.i, !dbg !1178

if.else.i:                                        ; preds = %do.body.i
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1174
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1174, !tbaa !998
  tail call void %31(%struct._object* %tb.0) #2, !dbg !1174
  br label %if.end.12.i, !dbg !1179

if.end.12.i:                                      ; preds = %if.else.i, %do.body.i, %land.lhs.true.i, %if.end.144
  %traceback.addr.0.i = phi %struct._object* [ %tb.0, %land.lhs.true.i ], [ null, %if.end.144 ], [ null, %do.body.i ], [ null, %if.else.i ], !dbg !1179
  %curexc_type.i = getelementptr inbounds i8, i8* %28, i64 80, !dbg !1180
  %32 = bitcast i8* %curexc_type.i to %struct._object**, !dbg !1180
  %33 = load %struct._object*, %struct._object** %32, align 8, !dbg !1180, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !441, metadata !970) #2, !dbg !1181
  %curexc_value.i = getelementptr inbounds i8, i8* %28, i64 88, !dbg !1182
  %34 = bitcast i8* %curexc_value.i to %struct._object**, !dbg !1182
  %35 = load %struct._object*, %struct._object** %34, align 8, !dbg !1182, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !442, metadata !970) #2, !dbg !1183
  %curexc_traceback.i = getelementptr inbounds i8, i8* %28, i64 96, !dbg !1184
  %36 = bitcast i8* %curexc_traceback.i to %struct._object**, !dbg !1184
  %37 = load %struct._object*, %struct._object** %36, align 8, !dbg !1184, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %37, i64 0, metadata !443, metadata !970) #2, !dbg !1185
  store %struct._object* %exception, %struct._object** %32, align 8, !dbg !1186, !tbaa !1003
  store %struct._object* %value.addr.2237, %struct._object** %34, align 8, !dbg !1187, !tbaa !1007
  store %struct._object* %traceback.addr.0.i, %struct._object** %36, align 8, !dbg !1188, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !448, metadata !970) #2, !dbg !1189
  %cmp18.i = icmp eq %struct._object* %33, null, !dbg !1190
  br i1 %cmp18.i, label %if.end.33.i, label %do.body.20.i, !dbg !1191

do.body.20.i:                                     ; preds = %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !450, metadata !970) #2, !dbg !1192
  %ob_refcnt23.i = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 0, !dbg !1193
  %38 = load i64, i64* %ob_refcnt23.i, align 8, !dbg !1193, !tbaa !996
  %dec24.i = add i64 %38, -1, !dbg !1193
  store i64 %dec24.i, i64* %ob_refcnt23.i, align 8, !dbg !1193, !tbaa !996
  %cmp25.i = icmp eq i64 %dec24.i, 0, !dbg !1193
  br i1 %cmp25.i, label %if.else.27.i, label %if.end.33.i, !dbg !1194

if.else.27.i:                                     ; preds = %do.body.20.i
  %ob_type28.i = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 1, !dbg !1195
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i, align 8, !dbg !1195, !tbaa !989
  %tp_dealloc29.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !1195
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i, align 8, !dbg !1195, !tbaa !998
  tail call void %40(%struct._object* %33) #2, !dbg !1195
  br label %if.end.33.i, !dbg !1179

if.end.33.i:                                      ; preds = %if.else.27.i, %do.body.20.i, %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !453, metadata !970) #2, !dbg !1196
  %cmp39.i = icmp eq %struct._object* %35, null, !dbg !1197
  br i1 %cmp39.i, label %if.end.54.i, label %do.body.41.i, !dbg !1198

do.body.41.i:                                     ; preds = %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !455, metadata !970) #2, !dbg !1199
  %ob_refcnt44.i = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !1200
  %41 = load i64, i64* %ob_refcnt44.i, align 8, !dbg !1200, !tbaa !996
  %dec45.i = add i64 %41, -1, !dbg !1200
  store i64 %dec45.i, i64* %ob_refcnt44.i, align 8, !dbg !1200, !tbaa !996
  %cmp46.i = icmp eq i64 %dec45.i, 0, !dbg !1200
  br i1 %cmp46.i, label %if.else.48.i, label %if.end.54.i, !dbg !1201

if.else.48.i:                                     ; preds = %do.body.41.i
  %ob_type49.i = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 1, !dbg !1202
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i, align 8, !dbg !1202, !tbaa !989
  %tp_dealloc50.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1202
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i, align 8, !dbg !1202, !tbaa !998
  tail call void %43(%struct._object* %35) #2, !dbg !1202
  br label %if.end.54.i, !dbg !1179

if.end.54.i:                                      ; preds = %if.else.48.i, %do.body.41.i, %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %37, i64 0, metadata !458, metadata !970) #2, !dbg !1203
  %cmp60.i = icmp eq %struct._object* %37, null, !dbg !1204
  br i1 %cmp60.i, label %cleanup.147, label %do.body.62.i, !dbg !1205

do.body.62.i:                                     ; preds = %if.end.54.i
  tail call void @llvm.dbg.value(metadata %struct._object* %37, i64 0, metadata !460, metadata !970) #2, !dbg !1206
  %ob_refcnt65.i = getelementptr inbounds %struct._object, %struct._object* %37, i64 0, i32 0, !dbg !1207
  %44 = load i64, i64* %ob_refcnt65.i, align 8, !dbg !1207, !tbaa !996
  %dec66.i = add i64 %44, -1, !dbg !1207
  store i64 %dec66.i, i64* %ob_refcnt65.i, align 8, !dbg !1207, !tbaa !996
  %cmp67.i = icmp eq i64 %dec66.i, 0, !dbg !1207
  br i1 %cmp67.i, label %if.else.69.i, label %cleanup.147, !dbg !1208

if.else.69.i:                                     ; preds = %do.body.62.i
  %ob_type70.i = getelementptr inbounds %struct._object, %struct._object* %37, i64 0, i32 1, !dbg !1209
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i, align 8, !dbg !1209, !tbaa !989
  %tp_dealloc71.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1209
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i, align 8, !dbg !1209, !tbaa !998
  tail call void %46(%struct._object* %37) #2, !dbg !1209
  br label %cleanup.147, !dbg !1179

cleanup.147:                                      ; preds = %if.end.82, %if.else.69.i, %do.body.62.i, %if.end.54.i, %if.then
  ret void, !dbg !1210
}

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_Format(%struct._object* %exception, i8* %format, ...) #0 {
entry:
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !741, metadata !970), !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !742, metadata !970), !dbg !1212
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1213
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1213
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !743, metadata !970), !dbg !1214
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, !dbg !1215
  call void @llvm.va_start(i8* %0), !dbg !1215
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %format, %struct.__va_list_tag* %arraydecay) #2, !dbg !1216
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !756, metadata !970), !dbg !1217
  call void @PyErr_SetObject(%struct._object* %exception, %struct._object* %call), !dbg !1218
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !757, metadata !970), !dbg !1219
  %cmp = icmp eq %struct._object* %call, null, !dbg !1221
  br i1 %cmp, label %if.end.6, label %do.body.3, !dbg !1222

do.body.3:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !759, metadata !970), !dbg !1223
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1225
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !996
  %dec = add i64 %1, -1, !dbg !1225
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !996
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1225
  br i1 %cmp4, label %if.else, label %if.end.6, !dbg !1227

if.else:                                          ; preds = %do.body.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1228
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1228, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1228
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1228, !tbaa !998
  call void %3(%struct._object* %call) #2, !dbg !1228
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.body.3, %entry
  call void @llvm.va_end(i8* %0), !dbg !1230
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1231
  ret %struct._object* null, !dbg !1232
}

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyTuple_Pack(i64, ...) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyException_GetContext(%struct._object*) #3

declare void @PyException_SetContext(%struct._object*, %struct._object*) #3

declare %struct._object* @PyException_GetTraceback(%struct._object*) #3

; Function Attrs: nounwind uwtable
define void @_PyErr_SetKeyError(%struct._object* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !509, metadata !970), !dbg !1233
  %call = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %arg) #2, !dbg !1234
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !510, metadata !970), !dbg !1235
  %tobool = icmp eq %struct._object* %call, null, !dbg !1236
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1238

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !1239, !tbaa !978
  tail call void @PyErr_SetObject(%struct._object* %0, %struct._object* %call), !dbg !1240
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !511, metadata !970), !dbg !1241
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1243
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1243, !tbaa !996
  %dec = add i64 %1, -1, !dbg !1243
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1243, !tbaa !996
  %cmp = icmp eq i64 %dec, 0, !dbg !1243
  br i1 %cmp, label %if.else, label %cleanup, !dbg !1245

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1246
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1246, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1246
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1246, !tbaa !998
  tail call void %3(%struct._object* %call) #2, !dbg !1246
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  ret void, !dbg !1248
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetNone(%struct._object* %exception) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !515, metadata !970), !dbg !1249
  tail call void @PyErr_SetObject(%struct._object* %exception, %struct._object* null), !dbg !1250
  ret void, !dbg !1251
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetString(%struct._object* %exception, i8* %string) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exception, i64 0, metadata !520, metadata !970), !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %string, i64 0, metadata !521, metadata !970), !dbg !1253
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %string) #2, !dbg !1254
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !522, metadata !970), !dbg !1255
  tail call void @PyErr_SetObject(%struct._object* %exception, %struct._object* %call), !dbg !1256
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !523, metadata !970), !dbg !1257
  %cmp = icmp eq %struct._object* %call, null, !dbg !1259
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !1260

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !525, metadata !970), !dbg !1261
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1263
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1263, !tbaa !996
  %dec = add i64 %0, -1, !dbg !1263
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1263, !tbaa !996
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1263
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1265

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1266
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1266, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1266
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1266, !tbaa !998
  tail call void %2(%struct._object* %call) #2, !dbg !1266
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  ret void, !dbg !1268
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Occurred() #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !533, metadata !970), !dbg !1269
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !536, metadata !970), !dbg !1269
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !537, metadata !970), !dbg !1269
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1270, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !535, metadata !970), !dbg !1269
  %cmp = icmp eq i8* %0, null, !dbg !1273
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1274

cond.false:                                       ; preds = %entry
  %curexc_type = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1275
  %1 = bitcast i8* %curexc_type to %struct._object**, !dbg !1275
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1275, !tbaa !1003
  br label %cond.end, !dbg !1274

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct._object* [ %2, %cond.false ], [ null, %entry ], !dbg !1274
  ret %struct._object* %cond, !dbg !1276
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_GivenExceptionMatches(%struct._object* %err, %struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %err, i64 0, metadata !540, metadata !970), !dbg !1277
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !541, metadata !970), !dbg !1278
  %cmp = icmp eq %struct._object* %err, null, !dbg !1279
  %cmp1 = icmp eq %struct._object* %exc, null, !dbg !1281
  %or.cond = or i1 %cmp, %cmp1, !dbg !1282
  br i1 %or.cond, label %return, label %if.end, !dbg !1282

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %exc, i64 0, i32 1, !dbg !1283
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1283, !tbaa !989
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1283
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1283, !tbaa !1060
  %and = and i64 %1, 67108864, !dbg !1283
  %cmp2 = icmp eq i64 %and, 0, !dbg !1283
  br i1 %cmp2, label %if.end.9, label %if.then.3, !dbg !1284

if.then.3:                                        ; preds = %if.end
  %call = tail call i64 @PyTuple_Size(%struct._object* %exc) #2, !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !545, metadata !970), !dbg !1286
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !542, metadata !970), !dbg !1287
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %exc, i64 1, i32 1, !dbg !1288
  %2 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1288
  %cmp4.72 = icmp sgt i64 %call, 0, !dbg !1293
  br i1 %cmp4.72, label %for.body.preheader, label %return, !dbg !1294

for.body.preheader:                               ; preds = %if.then.3
  br label %for.body, !dbg !1288

for.cond:                                         ; preds = %for.body
  %cmp4 = icmp slt i64 %inc, %call, !dbg !1293
  br i1 %cmp4, label %for.body, label %return.loopexit, !dbg !1294

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.073 = phi i64 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %2, i64 0, i64 %i.073, !dbg !1288
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1288, !tbaa !978
  %call5 = tail call i32 @PyErr_GivenExceptionMatches(%struct._object* %err, %struct._object* %3), !dbg !1295
  %tobool = icmp eq i32 %call5, 0, !dbg !1295
  %inc = add nuw nsw i64 %i.073, 1, !dbg !1296
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !542, metadata !970), !dbg !1287
  br i1 %tobool, label %for.cond, label %return.loopexit, !dbg !1297

if.end.9:                                         ; preds = %if.end
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %err, i64 0, i32 1, !dbg !1298
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1298, !tbaa !989
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1298
  %5 = load i64, i64* %tp_flags11, align 8, !dbg !1298, !tbaa !1060
  %and12 = and i64 %5, 1073741824, !dbg !1298
  %cmp13 = icmp eq i64 %and12, 0, !dbg !1298
  %6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 0, i32 0, !dbg !1300
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !540, metadata !970), !dbg !1277
  %err. = select i1 %cmp13, %struct._object* %err, %struct._object* %6, !dbg !1301
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %err., i64 0, i32 1, !dbg !1302
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1302, !tbaa !989
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !1302
  %8 = load i64, i64* %tp_flags18, align 8, !dbg !1302, !tbaa !1060
  %and19 = and i64 %8, 2147483648, !dbg !1302
  %cmp20 = icmp eq i64 %and19, 0, !dbg !1302
  br i1 %cmp20, label %if.end.42, label %land.lhs.true, !dbg !1302

land.lhs.true:                                    ; preds = %if.end.9
  %9 = bitcast %struct._object* %err. to %struct._typeobject*, !dbg !1303
  %tp_flags21 = getelementptr inbounds %struct._object, %struct._object* %err., i64 10, i32 1, !dbg !1303
  %10 = bitcast %struct._typeobject** %tp_flags21 to i64*, !dbg !1303
  %11 = load i64, i64* %10, align 8, !dbg !1303, !tbaa !1060
  %and22 = and i64 %11, 1073741824, !dbg !1303
  %cmp23 = icmp eq i64 %and22, 0, !dbg !1303
  %and27 = and i64 %1, 2147483648
  %cmp28 = icmp eq i64 %and27, 0, !dbg !1305
  %or.cond71 = or i1 %cmp28, %cmp23, !dbg !1307
  br i1 %or.cond71, label %if.end.42, label %land.lhs.true.29, !dbg !1307

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %tp_flags30 = getelementptr inbounds %struct._object, %struct._object* %exc, i64 10, i32 1, !dbg !1308
  %12 = bitcast %struct._typeobject** %tp_flags30 to i64*, !dbg !1308
  %13 = load i64, i64* %12, align 8, !dbg !1308, !tbaa !1060
  %and31 = and i64 %13, 1073741824, !dbg !1308
  %cmp32 = icmp eq i64 %and31, 0, !dbg !1308
  br i1 %cmp32, label %if.end.42, label %if.then.33, !dbg !1310

if.then.33:                                       ; preds = %land.lhs.true.29
  %14 = bitcast %struct._object* %exc to %struct._typeobject*, !dbg !1308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !546, metadata !970), !dbg !1311
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !549, metadata !970), !dbg !1312
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !550, metadata !970), !dbg !1313
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !551, metadata !970), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !605, metadata !970) #2, !dbg !1315
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !606, metadata !970) #2, !dbg !1317
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !607, metadata !970) #2, !dbg !1318
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !609, metadata !970) #2, !dbg !1319
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !612, metadata !970) #2, !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !970) #2, !dbg !1319
  %15 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1320, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !611, metadata !970) #2, !dbg !1319
  %curexc_type.i.65 = getelementptr inbounds i8, i8* %15, i64 80, !dbg !1323
  %16 = bitcast i8* %curexc_type.i.65 to <2 x i64>*, !dbg !1323
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !dbg !1323, !tbaa !978
  %curexc_traceback.i.67 = getelementptr inbounds i8, i8* %15, i64 96, !dbg !1324
  %18 = bitcast i8* %curexc_traceback.i.67 to %struct._object**, !dbg !1324
  %19 = load %struct._object*, %struct._object** %18, align 8, !dbg !1324, !tbaa !1010
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.65, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1325
  %call34 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* %14) #2, !dbg !1326
  tail call void @llvm.dbg.value(metadata i32 %call34, i64 0, metadata !546, metadata !970), !dbg !1311
  %cmp35 = icmp eq i32 %call34, -1, !dbg !1327
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1329

if.then.36:                                       ; preds = %if.then.33
  tail call void @PyErr_WriteUnraisable(%struct._object* %err.), !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !546, metadata !970), !dbg !1311
  br label %if.end.37, !dbg !1332

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %res.0 = phi i32 [ 0, %if.then.36 ], [ %call34, %if.then.33 ]
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !549, metadata !970), !dbg !1312
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !550, metadata !970), !dbg !1313
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !551, metadata !970), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !426, metadata !970) #2, !dbg !1333
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !1335
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !1335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !1335
  %20 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1336, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !435, metadata !970) #2, !dbg !1335
  %cmp.i = icmp eq %struct._object* %19, null, !dbg !1337
  br i1 %cmp.i, label %if.end.12.i, label %land.lhs.true.i, !dbg !1338

land.lhs.true.i:                                  ; preds = %if.end.37
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !1339
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1340, !tbaa !989
  %cmp7.i = icmp eq %struct._typeobject* %21, @PyTraceBack_Type, !dbg !1339
  br i1 %cmp7.i, label %if.end.12.i, label %do.body.i, !dbg !1341

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !444, metadata !970) #2, !dbg !1342
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !1343
  %22 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1343, !tbaa !996
  %dec.i = add i64 %22, -1, !dbg !1343
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1343, !tbaa !996
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !1343
  br i1 %cmp9.i, label %if.else.i, label %if.end.12.i, !dbg !1344

if.else.i:                                        ; preds = %do.body.i
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1340
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1340, !tbaa !998
  tail call void %23(%struct._object* %19) #2, !dbg !1340
  br label %if.end.12.i, !dbg !1345

if.end.12.i:                                      ; preds = %if.else.i, %do.body.i, %land.lhs.true.i, %if.end.37
  %traceback.addr.0.i = phi %struct._object* [ %19, %land.lhs.true.i ], [ null, %if.end.37 ], [ null, %do.body.i ], [ null, %if.else.i ], !dbg !1345
  %curexc_type.i = getelementptr inbounds i8, i8* %20, i64 80, !dbg !1346
  %24 = bitcast i8* %curexc_type.i to %struct._object**, !dbg !1346
  %25 = load %struct._object*, %struct._object** %24, align 8, !dbg !1346, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !441, metadata !970) #2, !dbg !1347
  %curexc_value.i = getelementptr inbounds i8, i8* %20, i64 88, !dbg !1348
  %26 = bitcast i8* %curexc_value.i to %struct._object**, !dbg !1348
  %27 = load %struct._object*, %struct._object** %26, align 8, !dbg !1348, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !442, metadata !970) #2, !dbg !1349
  %curexc_traceback.i = getelementptr inbounds i8, i8* %20, i64 96, !dbg !1350
  %28 = bitcast i8* %curexc_traceback.i to %struct._object**, !dbg !1350
  %29 = load %struct._object*, %struct._object** %28, align 8, !dbg !1350, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !443, metadata !970) #2, !dbg !1351
  %30 = bitcast i8* %curexc_type.i to <2 x i64>*, !dbg !1352
  store <2 x i64> %17, <2 x i64>* %30, align 8, !dbg !1352, !tbaa !978
  store %struct._object* %traceback.addr.0.i, %struct._object** %28, align 8, !dbg !1353, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !448, metadata !970) #2, !dbg !1354
  %cmp18.i = icmp eq %struct._object* %25, null, !dbg !1355
  br i1 %cmp18.i, label %if.end.33.i, label %do.body.20.i, !dbg !1356

do.body.20.i:                                     ; preds = %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !450, metadata !970) #2, !dbg !1357
  %ob_refcnt23.i = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !1358
  %31 = load i64, i64* %ob_refcnt23.i, align 8, !dbg !1358, !tbaa !996
  %dec24.i = add i64 %31, -1, !dbg !1358
  store i64 %dec24.i, i64* %ob_refcnt23.i, align 8, !dbg !1358, !tbaa !996
  %cmp25.i = icmp eq i64 %dec24.i, 0, !dbg !1358
  br i1 %cmp25.i, label %if.else.27.i, label %if.end.33.i, !dbg !1359

if.else.27.i:                                     ; preds = %do.body.20.i
  %ob_type28.i = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !1360
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i, align 8, !dbg !1360, !tbaa !989
  %tp_dealloc29.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1360
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i, align 8, !dbg !1360, !tbaa !998
  tail call void %33(%struct._object* %25) #2, !dbg !1360
  br label %if.end.33.i, !dbg !1345

if.end.33.i:                                      ; preds = %if.else.27.i, %do.body.20.i, %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !453, metadata !970) #2, !dbg !1361
  %cmp39.i = icmp eq %struct._object* %27, null, !dbg !1362
  br i1 %cmp39.i, label %if.end.54.i, label %do.body.41.i, !dbg !1363

do.body.41.i:                                     ; preds = %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !455, metadata !970) #2, !dbg !1364
  %ob_refcnt44.i = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1365
  %34 = load i64, i64* %ob_refcnt44.i, align 8, !dbg !1365, !tbaa !996
  %dec45.i = add i64 %34, -1, !dbg !1365
  store i64 %dec45.i, i64* %ob_refcnt44.i, align 8, !dbg !1365, !tbaa !996
  %cmp46.i = icmp eq i64 %dec45.i, 0, !dbg !1365
  br i1 %cmp46.i, label %if.else.48.i, label %if.end.54.i, !dbg !1366

if.else.48.i:                                     ; preds = %do.body.41.i
  %ob_type49.i = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1367
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i, align 8, !dbg !1367, !tbaa !989
  %tp_dealloc50.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !1367
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i, align 8, !dbg !1367, !tbaa !998
  tail call void %36(%struct._object* %27) #2, !dbg !1367
  br label %if.end.54.i, !dbg !1345

if.end.54.i:                                      ; preds = %if.else.48.i, %do.body.41.i, %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !458, metadata !970) #2, !dbg !1368
  %cmp60.i = icmp eq %struct._object* %29, null, !dbg !1369
  br i1 %cmp60.i, label %return, label %do.body.62.i, !dbg !1370

do.body.62.i:                                     ; preds = %if.end.54.i
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !460, metadata !970) #2, !dbg !1371
  %ob_refcnt65.i = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1372
  %37 = load i64, i64* %ob_refcnt65.i, align 8, !dbg !1372, !tbaa !996
  %dec66.i = add i64 %37, -1, !dbg !1372
  store i64 %dec66.i, i64* %ob_refcnt65.i, align 8, !dbg !1372, !tbaa !996
  %cmp67.i = icmp eq i64 %dec66.i, 0, !dbg !1372
  br i1 %cmp67.i, label %if.else.69.i, label %return, !dbg !1373

if.else.69.i:                                     ; preds = %do.body.62.i
  %ob_type70.i = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1374
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i, align 8, !dbg !1374, !tbaa !989
  %tp_dealloc71.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !1374
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i, align 8, !dbg !1374, !tbaa !998
  tail call void %39(%struct._object* %29) #2, !dbg !1374
  br label %return, !dbg !1345

if.end.42:                                        ; preds = %land.lhs.true.29, %land.lhs.true, %if.end.9
  %cmp43 = icmp eq %struct._object* %err., %exc, !dbg !1375
  %conv = zext i1 %cmp43 to i32, !dbg !1375
  br label %return, !dbg !1376

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.1.ph = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  br label %return, !dbg !1377

return:                                           ; preds = %return.loopexit, %if.then.3, %if.else.69.i, %do.body.62.i, %if.end.54.i, %entry, %if.end.42
  %retval.1 = phi i32 [ %conv, %if.end.42 ], [ 0, %entry ], [ %res.0, %if.end.54.i ], [ %res.0, %do.body.62.i ], [ %res.0, %if.else.69.i ], [ 0, %if.then.3 ], [ %retval.1.ph, %return.loopexit ]
  ret i32 %retval.1, !dbg !1377
}

declare i64 @PyTuple_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyErr_Fetch(%struct._object** nocapture %p_type, %struct._object** nocapture %p_value, %struct._object** nocapture %p_traceback) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object** %p_type, i64 0, metadata !605, metadata !970), !dbg !1378
  tail call void @llvm.dbg.value(metadata %struct._object** %p_value, i64 0, metadata !606, metadata !970), !dbg !1379
  tail call void @llvm.dbg.value(metadata %struct._object** %p_traceback, i64 0, metadata !607, metadata !970), !dbg !1380
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !609, metadata !970), !dbg !1381
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !612, metadata !970), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !970), !dbg !1381
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1382, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !611, metadata !970), !dbg !1381
  %curexc_type = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1383
  %1 = bitcast i8* %curexc_type to i64*, !dbg !1383
  %2 = load i64, i64* %1, align 8, !dbg !1383, !tbaa !1003
  %3 = bitcast %struct._object** %p_type to i64*, !dbg !1384
  store i64 %2, i64* %3, align 8, !dbg !1384, !tbaa !978
  %curexc_value = getelementptr inbounds i8, i8* %0, i64 88, !dbg !1385
  %4 = bitcast i8* %curexc_value to i64*, !dbg !1385
  %5 = load i64, i64* %4, align 8, !dbg !1385, !tbaa !1007
  %6 = bitcast %struct._object** %p_value to i64*, !dbg !1386
  store i64 %5, i64* %6, align 8, !dbg !1386, !tbaa !978
  %curexc_traceback = getelementptr inbounds i8, i8* %0, i64 96, !dbg !1387
  %7 = bitcast i8* %curexc_traceback to i64*, !dbg !1387
  %8 = load i64, i64* %7, align 8, !dbg !1387, !tbaa !1010
  %9 = bitcast %struct._object** %p_traceback to i64*, !dbg !1388
  store i64 %8, i64* %9, align 8, !dbg !1388, !tbaa !978
  call void @llvm.memset.p0i8.i64(i8* %curexc_type, i8 0, i64 24, i32 8, i1 false), !dbg !1389
  ret void, !dbg !1390
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define void @PyErr_WriteUnraisable(%struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !818, metadata !970), !dbg !1391
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !823, metadata !970), !dbg !1392
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !820, metadata !970), !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !821, metadata !970), !dbg !1394
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !822, metadata !970), !dbg !1395
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !605, metadata !970) #2, !dbg !1396
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !606, metadata !970) #2, !dbg !1398
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !607, metadata !970) #2, !dbg !1399
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !609, metadata !970) #2, !dbg !1400
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !612, metadata !970) #2, !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !970) #2, !dbg !1400
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1401, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !611, metadata !970) #2, !dbg !1400
  %curexc_type.i = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1402
  %1 = bitcast i8* %curexc_type.i to i64*, !dbg !1402
  %2 = load i64, i64* %1, align 8, !dbg !1402, !tbaa !1003
  %curexc_value.i = getelementptr inbounds i8, i8* %0, i64 88, !dbg !1403
  %3 = bitcast i8* %curexc_value.i to i64*, !dbg !1403
  %4 = load i64, i64* %3, align 8, !dbg !1403, !tbaa !1007
  %curexc_traceback.i = getelementptr inbounds i8, i8* %0, i64 96, !dbg !1404
  %5 = bitcast i8* %curexc_traceback.i to i64*, !dbg !1404
  %6 = load i64, i64* %5, align 8, !dbg !1404, !tbaa !1010
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1405
  %call = tail call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* nonnull @PyId_stderr) #2, !dbg !1406
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !819, metadata !970), !dbg !1407
  %cmp = icmp eq %struct._object* %call, null, !dbg !1408
  %cmp1 = icmp eq %struct._object* %call, @_Py_NoneStruct, !dbg !1410
  %or.cond = or i1 %cmp, %cmp1, !dbg !1411
  br i1 %or.cond, label %if.end.85, label %if.end, !dbg !1411

if.end:                                           ; preds = %entry
  %tobool = icmp eq %struct._object* %obj, null, !dbg !1412
  br i1 %tobool, label %if.end.15, label %if.then.2, !dbg !1414

if.then.2:                                        ; preds = %if.end
  %call3 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), %struct._object* %call) #2, !dbg !1415
  %cmp4 = icmp slt i32 %call3, 0, !dbg !1418
  br i1 %cmp4, label %if.end.85, label %if.end.6, !dbg !1419

if.end.6:                                         ; preds = %if.then.2
  %call7 = tail call i32 @PyFile_WriteObject(%struct._object* %obj, %struct._object* %call, i32 0) #2, !dbg !1420
  %cmp8 = icmp slt i32 %call7, 0, !dbg !1422
  br i1 %cmp8, label %if.end.85, label %if.end.10, !dbg !1423

if.end.10:                                        ; preds = %if.end.6
  %call11 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct._object* %call) #2, !dbg !1424
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1426
  br i1 %cmp12, label %if.end.85, label %if.end.15, !dbg !1427

if.end.15:                                        ; preds = %if.end, %if.end.10
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !822, metadata !970), !dbg !1395
  %7 = inttoptr i64 %6 to %struct._object*, !dbg !1428
  %call16 = tail call i32 @PyTraceBack_Print(%struct._object* %7, %struct._object* %call) #2, !dbg !1430
  %cmp17 = icmp sgt i32 %call16, -1, !dbg !1431
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !820, metadata !970), !dbg !1393
  %8 = inttoptr i64 %2 to %struct._object*
  %tobool20 = icmp ne i64 %2, 0, !dbg !1432
  %or.cond146 = and i1 %tobool20, %cmp17, !dbg !1434
  br i1 %or.cond146, label %if.end.22, label %if.end.85, !dbg !1434

if.end.22:                                        ; preds = %if.end.15
  %tp_name = getelementptr inbounds %struct._object, %struct._object* %8, i64 1, i32 1, !dbg !1435
  %9 = bitcast %struct._typeobject** %tp_name to i8**, !dbg !1435
  %10 = load i8*, i8** %9, align 8, !dbg !1435, !tbaa !1436
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !824, metadata !970), !dbg !1437
  %cmp23 = icmp eq i8* %10, null, !dbg !1438
  br i1 %cmp23, label %if.end.29, label %if.then.24, !dbg !1439

if.then.24:                                       ; preds = %if.end.22
  %call25 = tail call i8* @strrchr(i8* %10, i32 46) #8, !dbg !1440
  tail call void @llvm.dbg.value(metadata i8* %call25, i64 0, metadata !825, metadata !970), !dbg !1441
  %cmp26 = icmp eq i8* %call25, null, !dbg !1442
  %add.ptr = getelementptr i8, i8* %call25, i64 1, !dbg !1444
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !824, metadata !970), !dbg !1437
  %.add.ptr = select i1 %cmp26, i8* %10, i8* %add.ptr, !dbg !1445
  br label %if.end.29, !dbg !1446

if.end.29:                                        ; preds = %if.end.22, %if.then.24
  %className.1 = phi i8* [ %.add.ptr, %if.then.24 ], [ null, %if.end.22 ]
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !820, metadata !970), !dbg !1393
  %call30 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %8, %struct._Py_Identifier* nonnull @PyErr_WriteUnraisable.PyId___module__) #2, !dbg !1447
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !823, metadata !970), !dbg !1392
  %cmp31 = icmp eq %struct._object* %call30, null, !dbg !1448
  br i1 %cmp31, label %if.then.32, label %if.else, !dbg !1450

if.then.32:                                       ; preds = %if.end.29
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !1451
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !1455
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !1456
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !1457
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !1457
  %11 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1458, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !435, metadata !970) #2, !dbg !1457
  %curexc_type.i.i.192 = getelementptr inbounds i8, i8* %11, i64 80, !dbg !1459
  %12 = bitcast i8* %curexc_type.i.i.192 to %struct._object**, !dbg !1459
  %13 = load %struct._object*, %struct._object** %12, align 8, !dbg !1459, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !441, metadata !970) #2, !dbg !1460
  %curexc_value.i.i.193 = getelementptr inbounds i8, i8* %11, i64 88, !dbg !1461
  %14 = bitcast i8* %curexc_value.i.i.193 to %struct._object**, !dbg !1461
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !1461, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !442, metadata !970) #2, !dbg !1462
  %curexc_traceback.i.i.194 = getelementptr inbounds i8, i8* %11, i64 96, !dbg !1463
  %16 = bitcast i8* %curexc_traceback.i.i.194 to %struct._object**, !dbg !1463
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !1463, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !443, metadata !970) #2, !dbg !1464
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !448, metadata !970) #2, !dbg !1465
  %cmp18.i.i.195 = icmp eq %struct._object* %13, null, !dbg !1466
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.192, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1467
  br i1 %cmp18.i.i.195, label %if.end.33.i.i.204, label %do.body.20.i.i.199, !dbg !1468

do.body.20.i.i.199:                               ; preds = %if.then.32
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !450, metadata !970) #2, !dbg !1469
  %ob_refcnt23.i.i.196 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1470
  %18 = load i64, i64* %ob_refcnt23.i.i.196, align 8, !dbg !1470, !tbaa !996
  %dec24.i.i.197 = add i64 %18, -1, !dbg !1470
  store i64 %dec24.i.i.197, i64* %ob_refcnt23.i.i.196, align 8, !dbg !1470, !tbaa !996
  %cmp25.i.i.198 = icmp eq i64 %dec24.i.i.197, 0, !dbg !1470
  br i1 %cmp25.i.i.198, label %if.else.27.i.i.202, label %if.end.33.i.i.204, !dbg !1471

if.else.27.i.i.202:                               ; preds = %do.body.20.i.i.199
  %ob_type28.i.i.200 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !1472
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.200, align 8, !dbg !1472, !tbaa !989
  %tp_dealloc29.i.i.201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1472
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.201, align 8, !dbg !1472, !tbaa !998
  tail call void %20(%struct._object* %13) #2, !dbg !1472
  br label %if.end.33.i.i.204, !dbg !1473

if.end.33.i.i.204:                                ; preds = %if.else.27.i.i.202, %do.body.20.i.i.199, %if.then.32
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !453, metadata !970) #2, !dbg !1474
  %cmp39.i.i.203 = icmp eq %struct._object* %15, null, !dbg !1475
  br i1 %cmp39.i.i.203, label %if.end.54.i.i.213, label %do.body.41.i.i.208, !dbg !1476

do.body.41.i.i.208:                               ; preds = %if.end.33.i.i.204
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !455, metadata !970) #2, !dbg !1477
  %ob_refcnt44.i.i.205 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1478
  %21 = load i64, i64* %ob_refcnt44.i.i.205, align 8, !dbg !1478, !tbaa !996
  %dec45.i.i.206 = add i64 %21, -1, !dbg !1478
  store i64 %dec45.i.i.206, i64* %ob_refcnt44.i.i.205, align 8, !dbg !1478, !tbaa !996
  %cmp46.i.i.207 = icmp eq i64 %dec45.i.i.206, 0, !dbg !1478
  br i1 %cmp46.i.i.207, label %if.else.48.i.i.211, label %if.end.54.i.i.213, !dbg !1479

if.else.48.i.i.211:                               ; preds = %do.body.41.i.i.208
  %ob_type49.i.i.209 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1480
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.209, align 8, !dbg !1480, !tbaa !989
  %tp_dealloc50.i.i.210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1480
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.210, align 8, !dbg !1480, !tbaa !998
  tail call void %23(%struct._object* %15) #2, !dbg !1480
  br label %if.end.54.i.i.213, !dbg !1473

if.end.54.i.i.213:                                ; preds = %if.else.48.i.i.211, %do.body.41.i.i.208, %if.end.33.i.i.204
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !458, metadata !970) #2, !dbg !1481
  %cmp60.i.i.212 = icmp eq %struct._object* %17, null, !dbg !1482
  br i1 %cmp60.i.i.212, label %PyErr_Clear.exit221, label %do.body.62.i.i.217, !dbg !1483

do.body.62.i.i.217:                               ; preds = %if.end.54.i.i.213
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !460, metadata !970) #2, !dbg !1484
  %ob_refcnt65.i.i.214 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !1485
  %24 = load i64, i64* %ob_refcnt65.i.i.214, align 8, !dbg !1485, !tbaa !996
  %dec66.i.i.215 = add i64 %24, -1, !dbg !1485
  store i64 %dec66.i.i.215, i64* %ob_refcnt65.i.i.214, align 8, !dbg !1485, !tbaa !996
  %cmp67.i.i.216 = icmp eq i64 %dec66.i.i.215, 0, !dbg !1485
  br i1 %cmp67.i.i.216, label %if.else.69.i.i.220, label %PyErr_Clear.exit221, !dbg !1486

if.else.69.i.i.220:                               ; preds = %do.body.62.i.i.217
  %ob_type70.i.i.218 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !1487
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.218, align 8, !dbg !1487, !tbaa !989
  %tp_dealloc71.i.i.219 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1487
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.219, align 8, !dbg !1487, !tbaa !998
  tail call void %26(%struct._object* %17) #2, !dbg !1487
  br label %PyErr_Clear.exit221, !dbg !1473

PyErr_Clear.exit221:                              ; preds = %if.end.54.i.i.213, %do.body.62.i.i.217, %if.else.69.i.i.220
  %call33 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call) #2, !dbg !1488
  %cmp34 = icmp slt i32 %call33, 0, !dbg !1490
  br i1 %cmp34, label %do.body, label %if.end.49, !dbg !1491

if.else:                                          ; preds = %if.end.29
  %call37 = tail call i32 @_PyUnicode_CompareWithId(%struct._object* %call30, %struct._Py_Identifier* nonnull @PyId_builtins) #2, !dbg !1492
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1495
  br i1 %cmp38, label %if.end.49, label %if.then.39, !dbg !1496

if.then.39:                                       ; preds = %if.else
  %call40 = tail call i32 @PyFile_WriteObject(%struct._object* %call30, %struct._object* %call, i32 1) #2, !dbg !1497
  %cmp41 = icmp slt i32 %call40, 0, !dbg !1500
  br i1 %cmp41, label %do.body.80, label %if.end.43, !dbg !1501

if.end.43:                                        ; preds = %if.then.39
  %call44 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct._object* %call) #2, !dbg !1502
  %cmp45 = icmp slt i32 %call44, 0, !dbg !1504
  br i1 %cmp45, label %do.body.80, label %if.end.49, !dbg !1505

if.end.49:                                        ; preds = %if.else, %if.end.43, %PyErr_Clear.exit221
  %cmp50 = icmp eq i8* %className.1, null, !dbg !1506
  br i1 %cmp50, label %if.then.51, label %if.else.56, !dbg !1508

if.then.51:                                       ; preds = %if.end.49
  %call52 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call) #2, !dbg !1509
  %cmp53 = icmp slt i32 %call52, 0, !dbg !1512
  br i1 %cmp53, label %do.body, label %if.end.61, !dbg !1513

if.else.56:                                       ; preds = %if.end.49
  %call57 = tail call i32 @PyFile_WriteString(i8* %className.1, %struct._object* %call) #2, !dbg !1514
  %cmp58 = icmp slt i32 %call57, 0, !dbg !1517
  br i1 %cmp58, label %do.body, label %if.end.61, !dbg !1518

if.end.61:                                        ; preds = %if.else.56, %if.then.51
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !821, metadata !970), !dbg !1394
  %27 = inttoptr i64 %4 to %struct._object*, !dbg !1519
  %tobool62 = icmp ne i64 %4, 0, !dbg !1519
  %cmp63 = icmp ne %struct._object* %27, @_Py_NoneStruct, !dbg !1521
  %or.cond145 = and i1 %tobool62, %cmp63, !dbg !1522
  br i1 %or.cond145, label %if.then.64, label %if.end.73, !dbg !1522

if.then.64:                                       ; preds = %if.end.61
  %call65 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %struct._object* %call) #2, !dbg !1523
  %cmp66 = icmp slt i32 %call65, 0, !dbg !1526
  br i1 %cmp66, label %do.body, label %if.end.68, !dbg !1527

if.end.68:                                        ; preds = %if.then.64
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !821, metadata !970), !dbg !1394
  %call69 = tail call i32 @PyFile_WriteObject(%struct._object* %27, %struct._object* %call, i32 1) #2, !dbg !1528
  %cmp70 = icmp slt i32 %call69, 0, !dbg !1530
  br i1 %cmp70, label %do.body, label %if.end.73, !dbg !1531

if.end.73:                                        ; preds = %if.end.68, %if.end.61
  %call74 = tail call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct._object* %call) #2, !dbg !1532
  br label %do.body, !dbg !1534

do.body:                                          ; preds = %PyErr_Clear.exit221, %if.then.51, %if.else.56, %if.then.64, %if.end.68, %if.end.73
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !828, metadata !970), !dbg !1535
  br i1 %cmp31, label %if.end.85, label %do.body.80, !dbg !1537

do.body.80:                                       ; preds = %if.end.43, %if.then.39, %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !830, metadata !970), !dbg !1538
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call30, i64 0, i32 0, !dbg !1540
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !1540, !tbaa !996
  %dec = add i64 %28, -1, !dbg !1540
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1540, !tbaa !996
  %cmp81 = icmp eq i64 %dec, 0, !dbg !1540
  br i1 %cmp81, label %if.else.83, label %if.end.85, !dbg !1542

if.else.83:                                       ; preds = %do.body.80
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call30, i64 0, i32 1, !dbg !1543
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1543, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1543
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1543, !tbaa !998
  tail call void %30(%struct._object* %call30) #2, !dbg !1543
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.15, %if.end.10, %if.end.6, %if.then.2, %entry, %if.else.83, %do.body.80, %do.body
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !820, metadata !970), !dbg !1393
  %31 = inttoptr i64 %2 to %struct._object*, !dbg !1545
  tail call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !833, metadata !970), !dbg !1545
  %cmp90 = icmp eq i64 %2, 0, !dbg !1547
  br i1 %cmp90, label %if.end.104, label %do.body.92, !dbg !1548

do.body.92:                                       ; preds = %if.end.85
  tail call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !835, metadata !970), !dbg !1549
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1551
  %32 = load i64, i64* %ob_refcnt94, align 8, !dbg !1551, !tbaa !996
  %dec95 = add i64 %32, -1, !dbg !1551
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !1551, !tbaa !996
  %cmp96 = icmp eq i64 %dec95, 0, !dbg !1551
  br i1 %cmp96, label %if.else.98, label %if.end.104, !dbg !1553

if.else.98:                                       ; preds = %do.body.92
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 1, !dbg !1554
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !1554, !tbaa !989
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1554
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !1554, !tbaa !998
  tail call void %34(%struct._object* %31) #2, !dbg !1554
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.98, %do.body.92, %if.end.85
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !821, metadata !970), !dbg !1394
  %35 = inttoptr i64 %4 to %struct._object*, !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !838, metadata !970), !dbg !1556
  %cmp109 = icmp eq i64 %4, 0, !dbg !1558
  br i1 %cmp109, label %if.end.123, label %do.body.111, !dbg !1559

do.body.111:                                      ; preds = %if.end.104
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !840, metadata !970), !dbg !1560
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !1562
  %36 = load i64, i64* %ob_refcnt113, align 8, !dbg !1562, !tbaa !996
  %dec114 = add i64 %36, -1, !dbg !1562
  store i64 %dec114, i64* %ob_refcnt113, align 8, !dbg !1562, !tbaa !996
  %cmp115 = icmp eq i64 %dec114, 0, !dbg !1562
  br i1 %cmp115, label %if.else.117, label %if.end.123, !dbg !1564

if.else.117:                                      ; preds = %do.body.111
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 1, !dbg !1565
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !1565, !tbaa !989
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !1565
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !1565, !tbaa !998
  tail call void %38(%struct._object* %35) #2, !dbg !1565
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.117, %do.body.111, %if.end.104
  tail call void @llvm.dbg.value(metadata %struct._object** undef, i64 0, metadata !822, metadata !970), !dbg !1395
  %39 = inttoptr i64 %6 to %struct._object*, !dbg !1567
  tail call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !843, metadata !970), !dbg !1567
  %cmp128 = icmp eq i64 %6, 0, !dbg !1569
  br i1 %cmp128, label %if.end.142, label %do.body.130, !dbg !1570

do.body.130:                                      ; preds = %if.end.123
  tail call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !845, metadata !970), !dbg !1571
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !1573
  %40 = load i64, i64* %ob_refcnt132, align 8, !dbg !1573, !tbaa !996
  %dec133 = add i64 %40, -1, !dbg !1573
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !1573, !tbaa !996
  %cmp134 = icmp eq i64 %dec133, 0, !dbg !1573
  br i1 %cmp134, label %if.else.136, label %if.end.142, !dbg !1575

if.else.136:                                      ; preds = %do.body.130
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !1576
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8, !dbg !1576, !tbaa !989
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !1576
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8, !dbg !1576, !tbaa !998
  tail call void %42(%struct._object* %39) #2, !dbg !1576
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.136, %do.body.130, %if.end.123
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !1581
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !1582
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !1583
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !1583
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !1583
  %43 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1584, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !435, metadata !970) #2, !dbg !1583
  %curexc_type.i.i = getelementptr inbounds i8, i8* %43, i64 80, !dbg !1585
  %44 = bitcast i8* %curexc_type.i.i to %struct._object**, !dbg !1585
  %45 = load %struct._object*, %struct._object** %44, align 8, !dbg !1585, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %45, i64 0, metadata !441, metadata !970) #2, !dbg !1586
  %curexc_value.i.i = getelementptr inbounds i8, i8* %43, i64 88, !dbg !1587
  %46 = bitcast i8* %curexc_value.i.i to %struct._object**, !dbg !1587
  %47 = load %struct._object*, %struct._object** %46, align 8, !dbg !1587, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !442, metadata !970) #2, !dbg !1588
  %curexc_traceback.i.i = getelementptr inbounds i8, i8* %43, i64 96, !dbg !1589
  %48 = bitcast i8* %curexc_traceback.i.i to %struct._object**, !dbg !1589
  %49 = load %struct._object*, %struct._object** %48, align 8, !dbg !1589, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %49, i64 0, metadata !443, metadata !970) #2, !dbg !1590
  tail call void @llvm.dbg.value(metadata %struct._object* %45, i64 0, metadata !448, metadata !970) #2, !dbg !1591
  %cmp18.i.i = icmp eq %struct._object* %45, null, !dbg !1592
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1593
  br i1 %cmp18.i.i, label %if.end.33.i.i, label %do.body.20.i.i, !dbg !1594

do.body.20.i.i:                                   ; preds = %if.end.142
  tail call void @llvm.dbg.value(metadata %struct._object* %45, i64 0, metadata !450, metadata !970) #2, !dbg !1595
  %ob_refcnt23.i.i = getelementptr inbounds %struct._object, %struct._object* %45, i64 0, i32 0, !dbg !1596
  %50 = load i64, i64* %ob_refcnt23.i.i, align 8, !dbg !1596, !tbaa !996
  %dec24.i.i = add i64 %50, -1, !dbg !1596
  store i64 %dec24.i.i, i64* %ob_refcnt23.i.i, align 8, !dbg !1596, !tbaa !996
  %cmp25.i.i = icmp eq i64 %dec24.i.i, 0, !dbg !1596
  br i1 %cmp25.i.i, label %if.else.27.i.i, label %if.end.33.i.i, !dbg !1597

if.else.27.i.i:                                   ; preds = %do.body.20.i.i
  %ob_type28.i.i = getelementptr inbounds %struct._object, %struct._object* %45, i64 0, i32 1, !dbg !1598
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i, align 8, !dbg !1598, !tbaa !989
  %tp_dealloc29.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i64 0, i32 4, !dbg !1598
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i, align 8, !dbg !1598, !tbaa !998
  tail call void %52(%struct._object* %45) #2, !dbg !1598
  br label %if.end.33.i.i, !dbg !1599

if.end.33.i.i:                                    ; preds = %if.else.27.i.i, %do.body.20.i.i, %if.end.142
  tail call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !453, metadata !970) #2, !dbg !1600
  %cmp39.i.i = icmp eq %struct._object* %47, null, !dbg !1601
  br i1 %cmp39.i.i, label %if.end.54.i.i, label %do.body.41.i.i, !dbg !1602

do.body.41.i.i:                                   ; preds = %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !455, metadata !970) #2, !dbg !1603
  %ob_refcnt44.i.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !1604
  %53 = load i64, i64* %ob_refcnt44.i.i, align 8, !dbg !1604, !tbaa !996
  %dec45.i.i = add i64 %53, -1, !dbg !1604
  store i64 %dec45.i.i, i64* %ob_refcnt44.i.i, align 8, !dbg !1604, !tbaa !996
  %cmp46.i.i = icmp eq i64 %dec45.i.i, 0, !dbg !1604
  br i1 %cmp46.i.i, label %if.else.48.i.i, label %if.end.54.i.i, !dbg !1605

if.else.48.i.i:                                   ; preds = %do.body.41.i.i
  %ob_type49.i.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 1, !dbg !1606
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i, align 8, !dbg !1606, !tbaa !989
  %tp_dealloc50.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 4, !dbg !1606
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i, align 8, !dbg !1606, !tbaa !998
  tail call void %55(%struct._object* %47) #2, !dbg !1606
  br label %if.end.54.i.i, !dbg !1599

if.end.54.i.i:                                    ; preds = %if.else.48.i.i, %do.body.41.i.i, %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %49, i64 0, metadata !458, metadata !970) #2, !dbg !1607
  %cmp60.i.i = icmp eq %struct._object* %49, null, !dbg !1608
  br i1 %cmp60.i.i, label %PyErr_Clear.exit, label %do.body.62.i.i, !dbg !1609

do.body.62.i.i:                                   ; preds = %if.end.54.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %49, i64 0, metadata !460, metadata !970) #2, !dbg !1610
  %ob_refcnt65.i.i = getelementptr inbounds %struct._object, %struct._object* %49, i64 0, i32 0, !dbg !1611
  %56 = load i64, i64* %ob_refcnt65.i.i, align 8, !dbg !1611, !tbaa !996
  %dec66.i.i = add i64 %56, -1, !dbg !1611
  store i64 %dec66.i.i, i64* %ob_refcnt65.i.i, align 8, !dbg !1611, !tbaa !996
  %cmp67.i.i = icmp eq i64 %dec66.i.i, 0, !dbg !1611
  br i1 %cmp67.i.i, label %if.else.69.i.i, label %PyErr_Clear.exit, !dbg !1612

if.else.69.i.i:                                   ; preds = %do.body.62.i.i
  %ob_type70.i.i = getelementptr inbounds %struct._object, %struct._object* %49, i64 0, i32 1, !dbg !1613
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i, align 8, !dbg !1613, !tbaa !989
  %tp_dealloc71.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !1613
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i, align 8, !dbg !1613, !tbaa !998
  tail call void %58(%struct._object* %49) #2, !dbg !1613
  br label %PyErr_Clear.exit, !dbg !1599

PyErr_Clear.exit:                                 ; preds = %if.end.54.i.i, %do.body.62.i.i, %if.else.69.i.i
  ret void, !dbg !1614
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_ExceptionMatches(%struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !554, metadata !970), !dbg !1615
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !533, metadata !970), !dbg !1616
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !536, metadata !970), !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !537, metadata !970), !dbg !1616
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1618, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !535, metadata !970), !dbg !1616
  %cmp.i = icmp eq i8* %0, null, !dbg !1619
  br i1 %cmp.i, label %PyErr_Occurred.exit, label %cond.false.i, !dbg !1620

cond.false.i:                                     ; preds = %entry
  %curexc_type.i = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1621
  %1 = bitcast i8* %curexc_type.i to %struct._object**, !dbg !1621
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1621, !tbaa !1003
  br label %PyErr_Occurred.exit, !dbg !1620

PyErr_Occurred.exit:                              ; preds = %entry, %cond.false.i
  %cond.i = phi %struct._object* [ %2, %cond.false.i ], [ null, %entry ], !dbg !1620
  %call1 = tail call i32 @PyErr_GivenExceptionMatches(%struct._object* %cond.i, %struct._object* %exc), !dbg !1622
  ret i32 %call1, !dbg !1623
}

; Function Attrs: nounwind uwtable
define void @PyErr_NormalizeException(%struct._object** nocapture %exc, %struct._object** nocapture %val, %struct._object** nocapture %tb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !560, metadata !970), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !561, metadata !970), !dbg !1625
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !562, metadata !970), !dbg !1626
  %0 = load %struct._object*, %struct._object** %exc, align 8, !dbg !1627, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !563, metadata !970), !dbg !1628
  %1 = load %struct._object*, %struct._object** %val, align 8, !dbg !1629, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !564, metadata !970), !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !565, metadata !970), !dbg !1631
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !566, metadata !970), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._ts* null, i64 0, metadata !567, metadata !970), !dbg !1633
  %cmp = icmp eq %struct._object* %0, null, !dbg !1634
  br i1 %cmp, label %cleanup.173, label %if.end, !dbg !1636

if.end:                                           ; preds = %entry
  %tobool = icmp eq %struct._object* %1, null, !dbg !1637
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !1639

if.then.1:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !564, metadata !970), !dbg !1630
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1640, !tbaa !996
  %inc = add i64 %2, 1, !dbg !1640
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1640, !tbaa !996
  br label %if.end.2, !dbg !1642

if.end.2:                                         ; preds = %if.end, %if.then.1
  %value.0 = phi %struct._object* [ %1, %if.end ], [ @_Py_NoneStruct, %if.then.1 ]
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 1, !dbg !1643
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1643, !tbaa !989
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1643
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1643, !tbaa !1060
  %and = and i64 %4, 1073741824, !dbg !1643
  %cmp3 = icmp eq i64 %and, 0, !dbg !1643
  %5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 0, i32 0, !dbg !1645
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !565, metadata !970), !dbg !1631
  %. = select i1 %cmp3, %struct._object* null, %struct._object* %5, !dbg !1646
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1647
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1647, !tbaa !989
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1647
  %7 = load i64, i64* %tp_flags8, align 8, !dbg !1647, !tbaa !1060
  %and9 = and i64 %7, 2147483648, !dbg !1647
  %cmp10 = icmp eq i64 %and9, 0, !dbg !1647
  br i1 %cmp10, label %if.end.87, label %land.lhs.true, !dbg !1647

land.lhs.true:                                    ; preds = %if.end.2
  %tp_flags11 = getelementptr inbounds %struct._object, %struct._object* %0, i64 10, i32 1, !dbg !1648
  %8 = bitcast %struct._typeobject** %tp_flags11 to i64*, !dbg !1648
  %9 = load i64, i64* %8, align 8, !dbg !1648, !tbaa !1060
  %and12 = and i64 %9, 1073741824, !dbg !1648
  %cmp13 = icmp eq i64 %and12, 0, !dbg !1648
  br i1 %cmp13, label %if.end.87, label %if.then.14, !dbg !1650

if.then.14:                                       ; preds = %land.lhs.true
  %tobool15 = icmp eq %struct._object* %., null, !dbg !1651
  br i1 %tobool15, label %if.then.23, label %if.then.16, !dbg !1653

if.then.16:                                       ; preds = %if.then.14
  %call = tail call i32 @PyObject_IsSubclass(%struct._object* %., %struct._object* %0) #2, !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !568, metadata !970), !dbg !1656
  %cmp17 = icmp slt i32 %call, 0, !dbg !1657
  br i1 %cmp17, label %do.body.88, label %if.end.20, !dbg !1659

if.end.20:                                        ; preds = %if.then.16
  %tobool22 = icmp eq i32 %call, 0, !dbg !1660
  br i1 %tobool22, label %if.then.23, label %if.else.65, !dbg !1662

if.then.23:                                       ; preds = %if.end.20, %if.then.14
  %cmp24 = icmp eq %struct._object* %value.0, @_Py_NoneStruct, !dbg !1663
  br i1 %cmp24, label %if.then.25, label %if.else.27, !dbg !1665

if.then.25:                                       ; preds = %if.then.23
  %call26 = tail call %struct._object* @PyTuple_New(i64 0) #2, !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !571, metadata !970), !dbg !1667
  br label %if.end.38, !dbg !1668

if.else.27:                                       ; preds = %if.then.23
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1669, !tbaa !989
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1669
  %11 = load i64, i64* %tp_flags29, align 8, !dbg !1669, !tbaa !1060
  %and30 = and i64 %11, 67108864, !dbg !1669
  %cmp31 = icmp eq i64 %and30, 0, !dbg !1669
  br i1 %cmp31, label %if.else.35, label %if.then.32, !dbg !1671

if.then.32:                                       ; preds = %if.else.27
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 0, !dbg !1672
  %12 = load i64, i64* %ob_refcnt33, align 8, !dbg !1672, !tbaa !996
  %inc34 = add i64 %12, 1, !dbg !1672
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !1672, !tbaa !996
  tail call void @llvm.dbg.value(metadata %struct._object* %value.0, i64 0, metadata !571, metadata !970), !dbg !1667
  br label %if.end.38, !dbg !1674

if.else.35:                                       ; preds = %if.else.27
  %call36 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %value.0) #2, !dbg !1675
  tail call void @llvm.dbg.value(metadata %struct._object* %call36, i64 0, metadata !571, metadata !970), !dbg !1667
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %if.else.35, %if.then.25
  %args.0 = phi %struct._object* [ %call26, %if.then.25 ], [ %value.0, %if.then.32 ], [ %call36, %if.else.35 ]
  %cmp39 = icmp eq %struct._object* %args.0, null, !dbg !1676
  br i1 %cmp39, label %do.body.88, label %if.end.41, !dbg !1678

if.end.41:                                        ; preds = %if.end.38
  %call42 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %0, %struct._object* %args.0, %struct._object* null) #2, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !574, metadata !970), !dbg !1680
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !575, metadata !970), !dbg !1681
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !1683
  %13 = load i64, i64* %ob_refcnt43, align 8, !dbg !1683, !tbaa !996
  %dec = add i64 %13, -1, !dbg !1683
  store i64 %dec, i64* %ob_refcnt43, align 8, !dbg !1683, !tbaa !996
  %cmp44 = icmp eq i64 %dec, 0, !dbg !1683
  br i1 %cmp44, label %if.else.46, label %if.end.48, !dbg !1685

if.else.46:                                       ; preds = %if.end.41
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !1686
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1686, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1686
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1686, !tbaa !998
  tail call void %15(%struct._object* %args.0) #2, !dbg !1686
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.41, %if.else.46
  %cmp49 = icmp eq %struct._object* %call42, null, !dbg !1688
  br i1 %cmp49, label %do.body.88, label %do.body.52, !dbg !1690

do.body.52:                                       ; preds = %if.end.48
  tail call void @llvm.dbg.value(metadata %struct._object* %value.0, i64 0, metadata !577, metadata !970), !dbg !1691
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 0, !dbg !1693
  %16 = load i64, i64* %ob_refcnt54, align 8, !dbg !1693, !tbaa !996
  %dec55 = add i64 %16, -1, !dbg !1693
  store i64 %dec55, i64* %ob_refcnt54, align 8, !dbg !1693, !tbaa !996
  %cmp56 = icmp eq i64 %dec55, 0, !dbg !1693
  br i1 %cmp56, label %if.else.58, label %if.end.87, !dbg !1695

if.else.58:                                       ; preds = %do.body.52
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1696, !tbaa !989
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1696
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !1696, !tbaa !998
  tail call void %18(%struct._object* %value.0) #2, !dbg !1696
  br label %if.end.87

if.else.65:                                       ; preds = %if.end.20
  %cmp66 = icmp eq %struct._object* %., %0, !dbg !1698
  br i1 %cmp66, label %if.end.87, label %do.body.68, !dbg !1699

do.body.68:                                       ; preds = %if.else.65
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !579, metadata !970), !dbg !1700
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1702
  %19 = load i64, i64* %ob_refcnt70, align 8, !dbg !1702, !tbaa !996
  %dec71 = add i64 %19, -1, !dbg !1702
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !1702, !tbaa !996
  %cmp72 = icmp eq i64 %dec71, 0, !dbg !1702
  br i1 %cmp72, label %if.else.74, label %if.end.77, !dbg !1704

if.else.74:                                       ; preds = %do.body.68
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1705, !tbaa !989
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1705
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !1705, !tbaa !998
  tail call void %21(%struct._object* %0) #2, !dbg !1705
  br label %if.end.77

if.end.77:                                        ; preds = %do.body.68, %if.else.74
  tail call void @llvm.dbg.value(metadata %struct._object* %., i64 0, metadata !563, metadata !970), !dbg !1628
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %., i64 0, i32 0, !dbg !1707
  %22 = load i64, i64* %ob_refcnt80, align 8, !dbg !1707, !tbaa !996
  %inc81 = add i64 %22, 1, !dbg !1707
  store i64 %inc81, i64* %ob_refcnt80, align 8, !dbg !1707, !tbaa !996
  br label %if.end.87, !dbg !1708

if.end.87:                                        ; preds = %if.else.58, %do.body.52, %if.end.77, %if.else.65, %land.lhs.true, %if.end.2
  %value.4 = phi %struct._object* [ %value.0, %land.lhs.true ], [ %value.0, %if.end.2 ], [ %value.0, %if.else.65 ], [ %value.0, %if.end.77 ], [ %call42, %do.body.52 ], [ %call42, %if.else.58 ]
  %type.2 = phi %struct._object* [ %0, %land.lhs.true ], [ %0, %if.end.2 ], [ %0, %if.else.65 ], [ %., %if.end.77 ], [ %0, %do.body.52 ], [ %0, %if.else.58 ]
  store %struct._object* %type.2, %struct._object** %exc, align 8, !dbg !1709, !tbaa !978
  store %struct._object* %value.4, %struct._object** %val, align 8, !dbg !1710, !tbaa !978
  br label %cleanup.173, !dbg !1711

do.body.88:                                       ; preds = %if.end.48, %if.end.38, %if.then.16
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !583, metadata !970), !dbg !1712
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1714
  %23 = load i64, i64* %ob_refcnt90, align 8, !dbg !1714, !tbaa !996
  %dec91 = add i64 %23, -1, !dbg !1714
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !1714, !tbaa !996
  %cmp92 = icmp eq i64 %dec91, 0, !dbg !1714
  br i1 %cmp92, label %if.else.94, label %if.end.97, !dbg !1716

if.else.94:                                       ; preds = %do.body.88
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1717, !tbaa !989
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !1717
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !1717, !tbaa !998
  tail call void %25(%struct._object* %0) #2, !dbg !1717
  br label %if.end.97

if.end.97:                                        ; preds = %do.body.88, %if.else.94
  tail call void @llvm.dbg.value(metadata %struct._object* %value.0, i64 0, metadata !585, metadata !970), !dbg !1719
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 0, !dbg !1721
  %26 = load i64, i64* %ob_refcnt102, align 8, !dbg !1721, !tbaa !996
  %dec103 = add i64 %26, -1, !dbg !1721
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !1721, !tbaa !996
  %cmp104 = icmp eq i64 %dec103, 0, !dbg !1721
  br i1 %cmp104, label %if.else.106, label %if.end.109, !dbg !1723

if.else.106:                                      ; preds = %if.end.97
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1724, !tbaa !989
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1724
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !1724, !tbaa !998
  tail call void %28(%struct._object* %value.0) #2, !dbg !1724
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.97, %if.else.106
  %29 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1726, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !566, metadata !970), !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !605, metadata !970) #2, !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !606, metadata !970) #2, !dbg !1729
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !607, metadata !970) #2, !dbg !1730
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !609, metadata !970) #2, !dbg !1731
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !612, metadata !970) #2, !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !970) #2, !dbg !1731
  %30 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1732, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !611, metadata !970) #2, !dbg !1731
  %curexc_type.i = getelementptr inbounds i8, i8* %30, i64 80, !dbg !1733
  %31 = bitcast i8* %curexc_type.i to i64*, !dbg !1733
  %32 = load i64, i64* %31, align 8, !dbg !1733, !tbaa !1003
  %33 = bitcast %struct._object** %exc to i64*, !dbg !1734
  store i64 %32, i64* %33, align 8, !dbg !1734, !tbaa !978
  %curexc_value.i = getelementptr inbounds i8, i8* %30, i64 88, !dbg !1735
  %34 = bitcast i8* %curexc_value.i to i64*, !dbg !1735
  %35 = load i64, i64* %34, align 8, !dbg !1735, !tbaa !1007
  %36 = bitcast %struct._object** %val to i64*, !dbg !1736
  store i64 %35, i64* %36, align 8, !dbg !1736, !tbaa !978
  %curexc_traceback.i = getelementptr inbounds i8, i8* %30, i64 96, !dbg !1737
  %37 = bitcast i8* %curexc_traceback.i to i64*, !dbg !1737
  %38 = load i64, i64* %37, align 8, !dbg !1737, !tbaa !1010
  %39 = bitcast %struct._object** %tb to i64*, !dbg !1738
  store i64 %38, i64* %39, align 8, !dbg !1738, !tbaa !978
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1739
  %cmp112 = icmp eq %struct._object* %29, null, !dbg !1740
  br i1 %cmp112, label %if.end.130, label %if.then.113, !dbg !1741

if.then.113:                                      ; preds = %if.end.109
  %40 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1742, !tbaa !978
  %cmp114 = icmp eq %struct._object* %40, null, !dbg !1743
  br i1 %cmp114, label %if.then.115, label %do.body.117, !dbg !1744

if.then.115:                                      ; preds = %if.then.113
  store %struct._object* %29, %struct._object** %tb, align 8, !dbg !1745, !tbaa !978
  br label %if.end.130, !dbg !1746

do.body.117:                                      ; preds = %if.then.113
  tail call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !587, metadata !970), !dbg !1747
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1749
  %41 = load i64, i64* %ob_refcnt119, align 8, !dbg !1749, !tbaa !996
  %dec120 = add i64 %41, -1, !dbg !1749
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !1749, !tbaa !996
  %cmp121 = icmp eq i64 %dec120, 0, !dbg !1749
  br i1 %cmp121, label %if.else.123, label %if.end.130, !dbg !1751

if.else.123:                                      ; preds = %do.body.117
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1752
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !1752, !tbaa !989
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1752
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !1752, !tbaa !998
  tail call void %43(%struct._object* %29) #2, !dbg !1752
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.123, %do.body.117, %if.end.109, %if.then.115
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !592, metadata !970), !dbg !1754
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !595, metadata !970), !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !596, metadata !970), !dbg !1754
  %44 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1755, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !594, metadata !970), !dbg !1754
  %recursion_depth = getelementptr inbounds i8, i8* %44, i64 32, !dbg !1758
  %45 = bitcast i8* %recursion_depth to i32*, !dbg !1758
  %46 = load i32, i32* %45, align 4, !dbg !1759, !tbaa !1760
  %inc134 = add i32 %46, 1, !dbg !1759
  store i32 %inc134, i32* %45, align 4, !dbg !1759, !tbaa !1760
  %call135 = tail call i32 @Py_GetRecursionLimit() #2, !dbg !1761
  %cmp136 = icmp sgt i32 %inc134, %call135, !dbg !1762
  br i1 %cmp136, label %if.then.137, label %if.end.170, !dbg !1763

if.then.137:                                      ; preds = %if.end.130
  %47 = load i32, i32* %45, align 4, !dbg !1764, !tbaa !1760
  %dec139 = add i32 %47, -1, !dbg !1764
  store i32 %dec139, i32* %45, align 4, !dbg !1764, !tbaa !1760
  %48 = load %struct._object*, %struct._object** %exc, align 8, !dbg !1765, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %48, i64 0, metadata !597, metadata !970), !dbg !1765
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 0, !dbg !1767
  %49 = load i64, i64* %ob_refcnt143, align 8, !dbg !1767, !tbaa !996
  %dec144 = add i64 %49, -1, !dbg !1767
  store i64 %dec144, i64* %ob_refcnt143, align 8, !dbg !1767, !tbaa !996
  %cmp145 = icmp eq i64 %dec144, 0, !dbg !1767
  br i1 %cmp145, label %if.else.147, label %if.end.150, !dbg !1769

if.else.147:                                      ; preds = %if.then.137
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %48, i64 0, i32 1, !dbg !1770
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !1770, !tbaa !989
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i64 0, i32 4, !dbg !1770
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8, !dbg !1770, !tbaa !998
  tail call void %51(%struct._object* %48) #2, !dbg !1770
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.137, %if.else.147
  %52 = load %struct._object*, %struct._object** %val, align 8, !dbg !1772, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %52, i64 0, metadata !601, metadata !970), !dbg !1772
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %52, i64 0, i32 0, !dbg !1774
  %53 = load i64, i64* %ob_refcnt156, align 8, !dbg !1774, !tbaa !996
  %dec157 = add i64 %53, -1, !dbg !1774
  store i64 %dec157, i64* %ob_refcnt156, align 8, !dbg !1774, !tbaa !996
  %cmp158 = icmp eq i64 %dec157, 0, !dbg !1774
  br i1 %cmp158, label %if.else.160, label %if.end.163, !dbg !1776

if.else.160:                                      ; preds = %if.end.150
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %52, i64 0, i32 1, !dbg !1777
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !1777, !tbaa !989
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 4, !dbg !1777
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !1777, !tbaa !998
  tail call void %55(%struct._object* %52) #2, !dbg !1777
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.150, %if.else.160
  %56 = load i64, i64* bitcast (%struct._object** @PyExc_RuntimeError to i64*), align 8, !dbg !1779, !tbaa !978
  store i64 %56, i64* %33, align 8, !dbg !1780, !tbaa !978
  %57 = load i64, i64* bitcast (%struct._object** @PyExc_RecursionErrorInst to i64*), align 8, !dbg !1781, !tbaa !978
  store i64 %57, i64* %36, align 8, !dbg !1782, !tbaa !978
  %58 = load %struct._object*, %struct._object** %exc, align 8, !dbg !1783, !tbaa !978
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %58, i64 0, i32 0, !dbg !1783
  %59 = load i64, i64* %ob_refcnt166, align 8, !dbg !1783, !tbaa !996
  %inc167 = add i64 %59, 1, !dbg !1783
  store i64 %inc167, i64* %ob_refcnt166, align 8, !dbg !1783, !tbaa !996
  %60 = inttoptr i64 %57 to %struct._object*, !dbg !1784
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %60, i64 0, i32 0, !dbg !1784
  %61 = load i64, i64* %ob_refcnt168, align 8, !dbg !1784, !tbaa !996
  %inc169 = add i64 %61, 1, !dbg !1784
  store i64 %inc169, i64* %ob_refcnt168, align 8, !dbg !1784, !tbaa !996
  br label %cleanup.173, !dbg !1785

if.end.170:                                       ; preds = %if.end.130
  tail call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val, %struct._object** %tb), !dbg !1786
  %62 = load i32, i32* %45, align 4, !dbg !1787, !tbaa !1760
  %dec172 = add i32 %62, -1, !dbg !1787
  store i32 %dec172, i32* %45, align 4, !dbg !1787, !tbaa !1760
  ret void, !dbg !1788

cleanup.173:                                      ; preds = %entry, %if.end.163, %if.end.87
  ret void, !dbg !1788
}

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #3

declare i32 @Py_GetRecursionLimit() #3

; Function Attrs: nounwind uwtable
define void @PyErr_Clear() #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !1789
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !1791
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !1792
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !1793
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !1793
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1794, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !435, metadata !970) #2, !dbg !1793
  %curexc_type.i = getelementptr inbounds i8, i8* %0, i64 80, !dbg !1795
  %1 = bitcast i8* %curexc_type.i to %struct._object**, !dbg !1795
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1795, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !441, metadata !970) #2, !dbg !1796
  %curexc_value.i = getelementptr inbounds i8, i8* %0, i64 88, !dbg !1797
  %3 = bitcast i8* %curexc_value.i to %struct._object**, !dbg !1797
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1797, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !442, metadata !970) #2, !dbg !1798
  %curexc_traceback.i = getelementptr inbounds i8, i8* %0, i64 96, !dbg !1799
  %5 = bitcast i8* %curexc_traceback.i to %struct._object**, !dbg !1799
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1799, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !443, metadata !970) #2, !dbg !1800
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !448, metadata !970) #2, !dbg !1801
  %cmp18.i = icmp eq %struct._object* %2, null, !dbg !1802
  call void @llvm.memset.p0i8.i64(i8* %curexc_type.i, i8 0, i64 24, i32 8, i1 false), !dbg !1803
  br i1 %cmp18.i, label %if.end.33.i, label %do.body.20.i, !dbg !1804

do.body.20.i:                                     ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !450, metadata !970) #2, !dbg !1805
  %ob_refcnt23.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1806
  %7 = load i64, i64* %ob_refcnt23.i, align 8, !dbg !1806, !tbaa !996
  %dec24.i = add i64 %7, -1, !dbg !1806
  store i64 %dec24.i, i64* %ob_refcnt23.i, align 8, !dbg !1806, !tbaa !996
  %cmp25.i = icmp eq i64 %dec24.i, 0, !dbg !1806
  br i1 %cmp25.i, label %if.else.27.i, label %if.end.33.i, !dbg !1807

if.else.27.i:                                     ; preds = %do.body.20.i
  %ob_type28.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1808
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i, align 8, !dbg !1808, !tbaa !989
  %tp_dealloc29.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1808
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i, align 8, !dbg !1808, !tbaa !998
  tail call void %9(%struct._object* %2) #2, !dbg !1808
  br label %if.end.33.i, !dbg !1809

if.end.33.i:                                      ; preds = %if.else.27.i, %do.body.20.i, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !453, metadata !970) #2, !dbg !1810
  %cmp39.i = icmp eq %struct._object* %4, null, !dbg !1811
  br i1 %cmp39.i, label %if.end.54.i, label %do.body.41.i, !dbg !1812

do.body.41.i:                                     ; preds = %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !455, metadata !970) #2, !dbg !1813
  %ob_refcnt44.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1814
  %10 = load i64, i64* %ob_refcnt44.i, align 8, !dbg !1814, !tbaa !996
  %dec45.i = add i64 %10, -1, !dbg !1814
  store i64 %dec45.i, i64* %ob_refcnt44.i, align 8, !dbg !1814, !tbaa !996
  %cmp46.i = icmp eq i64 %dec45.i, 0, !dbg !1814
  br i1 %cmp46.i, label %if.else.48.i, label %if.end.54.i, !dbg !1815

if.else.48.i:                                     ; preds = %do.body.41.i
  %ob_type49.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1816
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i, align 8, !dbg !1816, !tbaa !989
  %tp_dealloc50.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1816
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i, align 8, !dbg !1816, !tbaa !998
  tail call void %12(%struct._object* %4) #2, !dbg !1816
  br label %if.end.54.i, !dbg !1809

if.end.54.i:                                      ; preds = %if.else.48.i, %do.body.41.i, %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !458, metadata !970) #2, !dbg !1817
  %cmp60.i = icmp eq %struct._object* %6, null, !dbg !1818
  br i1 %cmp60.i, label %PyErr_Restore.exit, label %do.body.62.i, !dbg !1819

do.body.62.i:                                     ; preds = %if.end.54.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !460, metadata !970) #2, !dbg !1820
  %ob_refcnt65.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1821
  %13 = load i64, i64* %ob_refcnt65.i, align 8, !dbg !1821, !tbaa !996
  %dec66.i = add i64 %13, -1, !dbg !1821
  store i64 %dec66.i, i64* %ob_refcnt65.i, align 8, !dbg !1821, !tbaa !996
  %cmp67.i = icmp eq i64 %dec66.i, 0, !dbg !1821
  br i1 %cmp67.i, label %if.else.69.i, label %PyErr_Restore.exit, !dbg !1822

if.else.69.i:                                     ; preds = %do.body.62.i
  %ob_type70.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1823
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i, align 8, !dbg !1823, !tbaa !989
  %tp_dealloc71.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1823
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i, align 8, !dbg !1823, !tbaa !998
  tail call void %15(%struct._object* %6) #2, !dbg !1823
  br label %PyErr_Restore.exit, !dbg !1809

PyErr_Restore.exit:                               ; preds = %if.end.54.i, %do.body.62.i, %if.else.69.i
  ret void, !dbg !1824
}

; Function Attrs: nounwind uwtable
define void @PyErr_GetExcInfo(%struct._object** nocapture %p_type, %struct._object** nocapture %p_value, %struct._object** nocapture %p_traceback) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object** %p_type, i64 0, metadata !620, metadata !970), !dbg !1825
  tail call void @llvm.dbg.value(metadata %struct._object** %p_value, i64 0, metadata !621, metadata !970), !dbg !1826
  tail call void @llvm.dbg.value(metadata %struct._object** %p_traceback, i64 0, metadata !622, metadata !970), !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !624, metadata !970), !dbg !1828
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !627, metadata !970), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !628, metadata !970), !dbg !1828
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1829, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !626, metadata !970), !dbg !1828
  %exc_type = getelementptr inbounds i8, i8* %0, i64 104, !dbg !1832
  %1 = bitcast i8* %exc_type to i64*, !dbg !1832
  %2 = load i64, i64* %1, align 8, !dbg !1832, !tbaa !1833
  %3 = bitcast %struct._object** %p_type to i64*, !dbg !1834
  store i64 %2, i64* %3, align 8, !dbg !1834, !tbaa !978
  %exc_value = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1835
  %4 = bitcast i8* %exc_value to i64*, !dbg !1835
  %5 = load i64, i64* %4, align 8, !dbg !1835, !tbaa !1076
  %6 = bitcast %struct._object** %p_value to i64*, !dbg !1836
  store i64 %5, i64* %6, align 8, !dbg !1836, !tbaa !978
  %exc_traceback = getelementptr inbounds i8, i8* %0, i64 120, !dbg !1837
  %7 = bitcast i8* %exc_traceback to i64*, !dbg !1837
  %8 = load i64, i64* %7, align 8, !dbg !1837, !tbaa !1838
  %9 = bitcast %struct._object** %p_traceback to i64*, !dbg !1839
  store i64 %8, i64* %9, align 8, !dbg !1839, !tbaa !978
  %10 = load %struct._object*, %struct._object** %p_type, align 8, !dbg !1840, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !629, metadata !970), !dbg !1840
  %cmp = icmp eq %struct._object* %10, null, !dbg !1842
  %11 = inttoptr i64 %8 to %struct._object*, !dbg !1844
  br i1 %cmp, label %if.end, label %if.then, !dbg !1846

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1847
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1847, !tbaa !996
  %inc = add i64 %12, 1, !dbg !1847
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1847, !tbaa !996
  br label %if.end, !dbg !1847

if.end:                                           ; preds = %entry, %if.then
  %13 = load %struct._object*, %struct._object** %p_value, align 8, !dbg !1849, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !631, metadata !970), !dbg !1849
  %cmp8 = icmp eq %struct._object* %13, null, !dbg !1851
  br i1 %cmp8, label %if.end.12, label %if.then.9, !dbg !1853

if.then.9:                                        ; preds = %if.end
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1854
  %14 = load i64, i64* %ob_refcnt10, align 8, !dbg !1854, !tbaa !996
  %inc11 = add i64 %14, 1, !dbg !1854
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !1854, !tbaa !996
  br label %if.end.12, !dbg !1854

if.end.12:                                        ; preds = %if.end, %if.then.9
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !633, metadata !970), !dbg !1844
  %cmp18 = icmp eq i64 %8, 0, !dbg !1856
  br i1 %cmp18, label %if.end.22, label %if.then.19, !dbg !1858

if.then.19:                                       ; preds = %if.end.12
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1859
  %15 = load i64, i64* %ob_refcnt20, align 8, !dbg !1859, !tbaa !996
  %inc21 = add i64 %15, 1, !dbg !1859
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !1859, !tbaa !996
  br label %if.end.22, !dbg !1859

if.end.22:                                        ; preds = %if.end.12, %if.then.19
  ret void, !dbg !1861
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetExcInfo(%struct._object* %p_type, %struct._object* %p_value, %struct._object* %p_traceback) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %p_type, i64 0, metadata !637, metadata !970), !dbg !1862
  tail call void @llvm.dbg.value(metadata %struct._object* %p_value, i64 0, metadata !638, metadata !970), !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct._object* %p_traceback, i64 0, metadata !639, metadata !970), !dbg !1864
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !644, metadata !970), !dbg !1865
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !647, metadata !970), !dbg !1865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !648, metadata !970), !dbg !1865
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1866, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !646, metadata !970), !dbg !1865
  %exc_type = getelementptr inbounds i8, i8* %0, i64 104, !dbg !1869
  %1 = bitcast i8* %exc_type to %struct._object**, !dbg !1869
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !1869, !tbaa !1833
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !640, metadata !970), !dbg !1870
  %exc_value = getelementptr inbounds i8, i8* %0, i64 112, !dbg !1871
  %3 = bitcast i8* %exc_value to %struct._object**, !dbg !1871
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1871, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !641, metadata !970), !dbg !1872
  %exc_traceback = getelementptr inbounds i8, i8* %0, i64 120, !dbg !1873
  %5 = bitcast i8* %exc_traceback to %struct._object**, !dbg !1873
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !1873, !tbaa !1838
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !642, metadata !970), !dbg !1874
  store %struct._object* %p_type, %struct._object** %1, align 8, !dbg !1875, !tbaa !1833
  store %struct._object* %p_value, %struct._object** %3, align 8, !dbg !1876, !tbaa !1076
  store %struct._object* %p_traceback, %struct._object** %5, align 8, !dbg !1877, !tbaa !1838
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !649, metadata !970), !dbg !1878
  %cmp = icmp eq %struct._object* %2, null, !dbg !1880
  br i1 %cmp, label %if.end.12, label %do.body.8, !dbg !1881

do.body.8:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !651, metadata !970), !dbg !1882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1884
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1884, !tbaa !996
  %dec = add i64 %7, -1, !dbg !1884
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1884, !tbaa !996
  %cmp10 = icmp eq i64 %dec, 0, !dbg !1884
  br i1 %cmp10, label %if.else, label %if.end.12, !dbg !1886

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1887
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1887, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1887
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1887, !tbaa !998
  tail call void %9(%struct._object* %2) #2, !dbg !1887
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %do.body.8, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !654, metadata !970), !dbg !1889
  %cmp18 = icmp eq %struct._object* %4, null, !dbg !1891
  br i1 %cmp18, label %if.end.33, label %do.body.20, !dbg !1892

do.body.20:                                       ; preds = %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !656, metadata !970), !dbg !1893
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1895
  %10 = load i64, i64* %ob_refcnt23, align 8, !dbg !1895, !tbaa !996
  %dec24 = add i64 %10, -1, !dbg !1895
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1895, !tbaa !996
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1895
  br i1 %cmp25, label %if.else.27, label %if.end.33, !dbg !1897

if.else.27:                                       ; preds = %do.body.20
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1898
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1898, !tbaa !989
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1898
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1898, !tbaa !998
  tail call void %12(%struct._object* %4) #2, !dbg !1898
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.27, %do.body.20, %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !659, metadata !970), !dbg !1900
  %cmp39 = icmp eq %struct._object* %6, null, !dbg !1902
  br i1 %cmp39, label %if.end.54, label %do.body.41, !dbg !1903

do.body.41:                                       ; preds = %if.end.33
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !661, metadata !970), !dbg !1904
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1906
  %13 = load i64, i64* %ob_refcnt44, align 8, !dbg !1906, !tbaa !996
  %dec45 = add i64 %13, -1, !dbg !1906
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !1906, !tbaa !996
  %cmp46 = icmp eq i64 %dec45, 0, !dbg !1906
  br i1 %cmp46, label %if.else.48, label %if.end.54, !dbg !1908

if.else.48:                                       ; preds = %do.body.41
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1909
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1909, !tbaa !989
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1909
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1909, !tbaa !998
  tail call void %15(%struct._object* %6) #2, !dbg !1909
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.48, %do.body.41, %if.end.33
  ret void, !dbg !1911
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_BadArgument() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1912, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !520, metadata !970) #2, !dbg !1913
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !521, metadata !970) #2, !dbg !1915
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1916
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !522, metadata !970) #2, !dbg !1917
  tail call void @PyErr_SetObject(%struct._object* %0, %struct._object* %call.i) #2, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !523, metadata !970) #2, !dbg !1919
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1920
  br i1 %cmp.i, label %PyErr_SetString.exit, label %do.body.1.i, !dbg !1921

do.body.1.i:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !525, metadata !970) #2, !dbg !1922
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1923
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1923, !tbaa !996
  %dec.i = add i64 %1, -1, !dbg !1923
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1923, !tbaa !996
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1923
  br i1 %cmp2.i, label %if.else.i, label %PyErr_SetString.exit, !dbg !1924

if.else.i:                                        ; preds = %do.body.1.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1925
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1925, !tbaa !989
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1925
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1925, !tbaa !998
  tail call void %3(%struct._object* %call.i) #2, !dbg !1925
  br label %PyErr_SetString.exit, !dbg !1926

PyErr_SetString.exit:                             ; preds = %entry, %do.body.1.i, %if.else.i
  ret i32 0, !dbg !1927
}

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_NoMemory() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !1928, !tbaa !978
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1928
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1928, !tbaa !989
  %cmp = icmp eq %struct._typeobject* %1, null, !dbg !1930
  br i1 %cmp, label %if.then, label %if.end, !dbg !1931

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1932
  unreachable, !dbg !1932

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !515, metadata !970) #2, !dbg !1934
  tail call void @PyErr_SetObject(%struct._object* %0, %struct._object* null) #2, !dbg !1936
  ret %struct._object* null, !dbg !1937
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %exc, %struct._object* %filenameObject) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !670, metadata !970), !dbg !1938
  tail call void @llvm.dbg.value(metadata %struct._object* %filenameObject, i64 0, metadata !671, metadata !970), !dbg !1939
  %call = tail call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* %filenameObject, %struct._object* null), !dbg !1940
  ret %struct._object* null, !dbg !1941
}

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* %filenameObject, %struct._object* %filenameObject2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !674, metadata !970), !dbg !1942
  tail call void @llvm.dbg.value(metadata %struct._object* %filenameObject, i64 0, metadata !675, metadata !970), !dbg !1943
  tail call void @llvm.dbg.value(metadata %struct._object* %filenameObject2, i64 0, metadata !676, metadata !970), !dbg !1944
  %call = tail call i32* @__errno_location() #1, !dbg !1945
  %0 = load i32, i32* %call, align 4, !dbg !1945, !tbaa !1946
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !680, metadata !970), !dbg !1947
  switch i32 %0, label %if.then.3 [
    i32 4, label %land.lhs.true
    i32 0, label %if.else
  ], !dbg !1948

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @PyErr_CheckSignals() #2, !dbg !1950
  %tobool = icmp eq i32 %call1, 0, !dbg !1950
  br i1 %tobool, label %if.then.3, label %cleanup, !dbg !1952

if.then.3:                                        ; preds = %land.lhs.true, %entry
  %call4 = tail call i8* @strerror(i32 %0) #2, !dbg !1953
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !681, metadata !970), !dbg !1954
  %call5 = tail call %struct._object* @PyUnicode_DecodeLocale(i8* %call4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !1955
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !677, metadata !970), !dbg !1956
  br label %if.end.7, !dbg !1957

if.else:                                          ; preds = %entry
  %call6 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !1958
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !677, metadata !970), !dbg !1956
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %message.0 = phi %struct._object* [ %call5, %if.then.3 ], [ %call6, %if.else ]
  %cmp8 = icmp eq %struct._object* %message.0, null, !dbg !1960
  br i1 %cmp8, label %cleanup, label %if.end.10, !dbg !1962

if.end.10:                                        ; preds = %if.end.7
  %cmp11 = icmp eq %struct._object* %filenameObject, null, !dbg !1963
  br i1 %cmp11, label %if.else.19, label %if.then.12, !dbg !1965

if.then.12:                                       ; preds = %if.end.10
  %cmp13 = icmp eq %struct._object* %filenameObject2, null, !dbg !1966
  br i1 %cmp13, label %if.else.16, label %if.then.14, !dbg !1969

if.then.14:                                       ; preds = %if.then.12
  %call15 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %0, %struct._object* %message.0, %struct._object* %filenameObject, i32 0, %struct._object* %filenameObject2) #2, !dbg !1970
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !679, metadata !970), !dbg !1971
  br label %do.body, !dbg !1972

if.else.16:                                       ; preds = %if.then.12
  %call17 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %0, %struct._object* %message.0, %struct._object* %filenameObject) #2, !dbg !1973
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !679, metadata !970), !dbg !1971
  br label %do.body

if.else.19:                                       ; preds = %if.end.10
  %call20 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %0, %struct._object* %message.0) #2, !dbg !1974
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !679, metadata !970), !dbg !1971
  br label %do.body

do.body:                                          ; preds = %if.else.19, %if.else.16, %if.then.14
  %args.0 = phi %struct._object* [ %call15, %if.then.14 ], [ %call17, %if.else.16 ], [ %call20, %if.else.19 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %message.0, i64 0, metadata !684, metadata !970), !dbg !1976
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %message.0, i64 0, i32 0, !dbg !1978
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1978, !tbaa !996
  %dec = add i64 %1, -1, !dbg !1978
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1978, !tbaa !996
  %cmp22 = icmp eq i64 %dec, 0, !dbg !1978
  br i1 %cmp22, label %if.else.24, label %if.end.25, !dbg !1980

if.else.24:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %message.0, i64 0, i32 1, !dbg !1981
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1981, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1981
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1981, !tbaa !998
  tail call void %3(%struct._object* %message.0) #2, !dbg !1981
  br label %if.end.25

if.end.25:                                        ; preds = %do.body, %if.else.24
  %cmp26 = icmp eq %struct._object* %args.0, null, !dbg !1983
  br i1 %cmp26, label %cleanup, label %if.then.27, !dbg !1984

if.then.27:                                       ; preds = %if.end.25
  %call28 = tail call %struct._object* @PyObject_Call(%struct._object* %exc, %struct._object* %args.0, %struct._object* null) #2, !dbg !1985
  tail call void @llvm.dbg.value(metadata %struct._object* %call28, i64 0, metadata !678, metadata !970), !dbg !1986
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !686, metadata !970), !dbg !1987
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !1989
  %4 = load i64, i64* %ob_refcnt31, align 8, !dbg !1989, !tbaa !996
  %dec32 = add i64 %4, -1, !dbg !1989
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !1989, !tbaa !996
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !1989
  br i1 %cmp33, label %if.else.35, label %if.end.38, !dbg !1991

if.else.35:                                       ; preds = %if.then.27
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !1992
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !1992, !tbaa !989
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1992
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !1992, !tbaa !998
  tail call void %6(%struct._object* %args.0) #2, !dbg !1992
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.27, %if.else.35
  %cmp41 = icmp eq %struct._object* %call28, null, !dbg !1994
  br i1 %cmp41, label %cleanup, label %if.then.42, !dbg !1995

if.then.42:                                       ; preds = %if.end.38
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %call28, i64 0, i32 1, !dbg !1996
  %7 = bitcast %struct._typeobject** %ob_type43 to %struct._object**, !dbg !1996
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !1996, !tbaa !989
  tail call void @PyErr_SetObject(%struct._object* %8, %struct._object* %call28), !dbg !1997
  tail call void @llvm.dbg.value(metadata %struct._object* %call28, i64 0, metadata !690, metadata !970), !dbg !1998
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call28, i64 0, i32 0, !dbg !2000
  %9 = load i64, i64* %ob_refcnt46, align 8, !dbg !2000, !tbaa !996
  %dec47 = add i64 %9, -1, !dbg !2000
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !2000, !tbaa !996
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !2000
  br i1 %cmp48, label %if.else.50, label %cleanup, !dbg !2002

if.else.50:                                       ; preds = %if.then.42
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !2003, !tbaa !989
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2003
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !2003, !tbaa !998
  tail call void %11(%struct._object* %call28) #2, !dbg !2003
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.end.38, %if.then.42, %if.else.50, %if.end.7, %land.lhs.true
  ret %struct._object* null, !dbg !2005
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @PyErr_CheckSignals() #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %exc, i8* %filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !698, metadata !970), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !699, metadata !970), !dbg !2007
  %tobool = icmp eq i8* %filename, null, !dbg !2008
  br i1 %tobool, label %cond.end.thread, label %cond.end, !dbg !2008

cond.end.thread:                                  ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !700, metadata !970), !dbg !2009
  %call1.17 = tail call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* null, %struct._object* null), !dbg !2010
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !701, metadata !970), !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !702, metadata !970), !dbg !2012
  br label %if.end.5, !dbg !2014

cond.end:                                         ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename) #2, !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !700, metadata !970), !dbg !2009
  %call1 = tail call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* %call, %struct._object* null), !dbg !2010
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !701, metadata !970), !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !702, metadata !970), !dbg !2012
  %cmp = icmp eq %struct._object* %call, null, !dbg !2016
  br i1 %cmp, label %if.end.5, label %do.body.2, !dbg !2014

do.body.2:                                        ; preds = %cond.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !704, metadata !970), !dbg !2017
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2019
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2019, !tbaa !996
  %dec = add i64 %0, -1, !dbg !2019
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2019, !tbaa !996
  %cmp3 = icmp eq i64 %dec, 0, !dbg !2019
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !2021

if.else:                                          ; preds = %do.body.2
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2022
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2022, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2022
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2022, !tbaa !998
  tail call void %2(%struct._object* %call) #2, !dbg !2022
  br label %if.end.5

if.end.5:                                         ; preds = %cond.end.thread, %if.else, %do.body.2, %cond.end
  ret %struct._object* null, !dbg !2024
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_SetFromErrno(%struct._object* %exc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %exc, i64 0, metadata !709, metadata !970), !dbg !2025
  %call = tail call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* null, %struct._object* null), !dbg !2026
  ret %struct._object* null, !dbg !2027
}

; Function Attrs: nounwind uwtable
define noalias %struct._object* @PyErr_SetImportError(%struct._object* %msg, %struct._object* %name, %struct._object* %path) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %msg, i64 0, metadata !712, metadata !970), !dbg !2028
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !713, metadata !970), !dbg !2029
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !714, metadata !970), !dbg !2030
  %cmp = icmp eq %struct._object* %msg, null, !dbg !2031
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2033

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyTuple_New(i64 1) #2, !dbg !2034
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !715, metadata !970), !dbg !2035
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2036
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2038

if.end.3:                                         ; preds = %if.end
  %call4 = tail call %struct._object* @PyDict_New() #2, !dbg !2039
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !716, metadata !970), !dbg !2040
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !2041
  br i1 %cmp5, label %do.body, label %if.end.10, !dbg !2042

do.body:                                          ; preds = %if.end.3
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !718, metadata !970), !dbg !2043
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2045
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2045, !tbaa !996
  %dec = add i64 %0, -1, !dbg !2045
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2045, !tbaa !996
  %cmp7 = icmp eq i64 %dec, 0, !dbg !2045
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !2047

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2048
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2048, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2048
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2048, !tbaa !998
  tail call void %2(%struct._object* %call) #2, !dbg !2048
  br label %cleanup

if.end.10:                                        ; preds = %if.end.3
  %cmp11 = icmp eq %struct._object* %name, null, !dbg !2050
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !713, metadata !970), !dbg !2029
  %_Py_NoneStruct.name = select i1 %cmp11, %struct._object* @_Py_NoneStruct, %struct._object* %name, !dbg !2052
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !714, metadata !970), !dbg !2030
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %msg, i64 0, i32 0, !dbg !2053
  %3 = load i64, i64* %ob_refcnt17, align 8, !dbg !2053, !tbaa !996
  %inc = add i64 %3, 1, !dbg !2053
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !2053, !tbaa !996
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !2054
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !2054
  store %struct._object* %msg, %struct._object** %arrayidx, align 8, !dbg !2054, !tbaa !978
  %call18 = tail call i32 @PyDict_SetItemString(%struct._object* %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct._object* %_Py_NoneStruct.name) #2, !dbg !2055
  %cmp19 = icmp slt i32 %call18, 0, !dbg !2057
  br i1 %cmp19, label %cleanup, label %if.end.21, !dbg !2058

if.end.21:                                        ; preds = %if.end.10
  %cmp14 = icmp eq %struct._object* %path, null, !dbg !2059
  %path.addr.0 = select i1 %cmp14, %struct._object* @_Py_NoneStruct, %struct._object* %path, !dbg !2061
  %call22 = tail call i32 @PyDict_SetItemString(%struct._object* %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct._object* %path.addr.0) #2, !dbg !2062
  %cmp23 = icmp slt i32 %call22, 0, !dbg !2064
  br i1 %cmp23, label %cleanup, label %if.end.25, !dbg !2065

if.end.25:                                        ; preds = %if.end.21
  %4 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !2066, !tbaa !978
  %call26 = tail call %struct._object* @PyObject_Call(%struct._object* %4, %struct._object* %call, %struct._object* %call4) #2, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !717, metadata !970), !dbg !2068
  %cmp27 = icmp eq %struct._object* %call26, null, !dbg !2069
  br i1 %cmp27, label %do.body.43, label %if.then.28, !dbg !2070

if.then.28:                                       ; preds = %if.end.25
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 1, !dbg !2071
  %5 = bitcast %struct._typeobject** %ob_type29 to %struct._object**, !dbg !2071
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !2071, !tbaa !989
  tail call void @PyErr_SetObject(%struct._object* %6, %struct._object* %call26), !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !722, metadata !970), !dbg !2073
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 0, i32 0, !dbg !2075
  %7 = load i64, i64* %ob_refcnt32, align 8, !dbg !2075, !tbaa !996
  %dec33 = add i64 %7, -1, !dbg !2075
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2075, !tbaa !996
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !2075
  br i1 %cmp34, label %if.else.36, label %do.body.43, !dbg !2077

if.else.36:                                       ; preds = %if.then.28
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2078, !tbaa !989
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2078
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2078, !tbaa !998
  tail call void %9(%struct._object* %call26) #2, !dbg !2078
  br label %do.body.43

do.body.43:                                       ; preds = %if.else.36, %if.then.28, %if.end.25
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !726, metadata !970), !dbg !2080
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2082
  %10 = load i64, i64* %ob_refcnt45, align 8, !dbg !2082, !tbaa !996
  %dec46 = add i64 %10, -1, !dbg !2082
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !2082, !tbaa !996
  %cmp47 = icmp eq i64 %dec46, 0, !dbg !2082
  br i1 %cmp47, label %if.else.49, label %if.end.52, !dbg !2084

if.else.49:                                       ; preds = %do.body.43
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2085
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !2085, !tbaa !989
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2085
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !2085, !tbaa !998
  tail call void %12(%struct._object* %call) #2, !dbg !2085
  br label %if.end.52

if.end.52:                                        ; preds = %do.body.43, %if.else.49
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !728, metadata !970), !dbg !2087
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !2089
  %13 = load i64, i64* %ob_refcnt57, align 8, !dbg !2089, !tbaa !996
  %dec58 = add i64 %13, -1, !dbg !2089
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !2089, !tbaa !996
  %cmp59 = icmp eq i64 %dec58, 0, !dbg !2089
  br i1 %cmp59, label %if.else.61, label %cleanup, !dbg !2091

if.else.61:                                       ; preds = %if.end.52
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !2092
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !2092, !tbaa !989
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2092
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !2092, !tbaa !998
  tail call void %15(%struct._object* %call4) #2, !dbg !2092
  br label %cleanup

cleanup:                                          ; preds = %if.else.61, %if.end.52, %if.end.21, %if.end.10, %if.else, %do.body, %if.end, %entry
  ret %struct._object* null, !dbg !2094
}

declare %struct._object* @PyDict_New() #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @_PyErr_BadInternalCall(i8* %filename, i32 %lineno) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !734, metadata !970), !dbg !2095
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !735, metadata !970), !dbg !2096
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2097, !tbaa !978
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %filename, i32 %lineno), !dbg !2098
  ret void, !dbg !2099
}

; Function Attrs: nounwind uwtable
define void @PyErr_BadInternalCall() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2100, !tbaa !978
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0)), !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewException(i8* %name, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !766, metadata !970), !dbg !2103
  tail call void @llvm.dbg.value(metadata %struct._object* %base, i64 0, metadata !767, metadata !970), !dbg !2104
  tail call void @llvm.dbg.value(metadata %struct._object* %dict, i64 0, metadata !768, metadata !970), !dbg !2105
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !770, metadata !970), !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !771, metadata !970), !dbg !2107
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !772, metadata !970), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !773, metadata !970), !dbg !2109
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !774, metadata !970), !dbg !2110
  %call = tail call i8* @strrchr(i8* %name, i32 46) #8, !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !769, metadata !970), !dbg !2112
  %cmp = icmp eq i8* %call, null, !dbg !2113
  br i1 %cmp, label %if.then, label %if.end, !dbg !2115

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2116, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !520, metadata !970) #2, !dbg !2118
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !521, metadata !970) #2, !dbg !2120
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !522, metadata !970) #2, !dbg !2122
  tail call void @PyErr_SetObject(%struct._object* %0, %struct._object* %call.i) #2, !dbg !2123
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !523, metadata !970) #2, !dbg !2124
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2125
  br i1 %cmp.i, label %cleanup, label %do.body.1.i, !dbg !2126

do.body.1.i:                                      ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !525, metadata !970) #2, !dbg !2127
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2128
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2128, !tbaa !996
  %dec.i = add i64 %1, -1, !dbg !2128
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2128, !tbaa !996
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2128
  br i1 %cmp2.i, label %if.else.i, label %cleanup, !dbg !2129

if.else.i:                                        ; preds = %do.body.1.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2130
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2130, !tbaa !989
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2130
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2130, !tbaa !998
  tail call void %3(%struct._object* %call.i) #2, !dbg !2130
  br label %cleanup, !dbg !2131

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._object* %base, null, !dbg !2132
  %4 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !2134, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !767, metadata !970), !dbg !2104
  %.base = select i1 %cmp1, %struct._object* %4, %struct._object* %base, !dbg !2135
  %cmp4 = icmp eq %struct._object* %dict, null, !dbg !2136
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !2138

if.then.5:                                        ; preds = %if.end
  %call6 = tail call %struct._object* @PyDict_New() #2, !dbg !2139
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !772, metadata !970), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !768, metadata !970), !dbg !2105
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !2141
  br i1 %cmp7, label %cleanup, label %if.end.10, !dbg !2143

if.end.10:                                        ; preds = %if.then.5, %if.end
  %mydict.0 = phi %struct._object* [ %call6, %if.then.5 ], [ null, %if.end ]
  %dict.addr.0 = phi %struct._object* [ %call6, %if.then.5 ], [ %dict, %if.end ]
  %call11 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %dict.addr.0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !2144
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !2146
  br i1 %cmp12, label %if.then.13, label %if.end.22, !dbg !2147

if.then.13:                                       ; preds = %if.end.10
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !2148
  %sub.ptr.rhs.cast = ptrtoint i8* %name to i64, !dbg !2148
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2148
  %call14 = tail call %struct._object* @PyUnicode_FromStringAndSize(i8* %name, i64 %sub.ptr.sub) #2, !dbg !2150
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !770, metadata !970), !dbg !2106
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !2151
  br i1 %cmp15, label %if.end.40, label %if.end.17, !dbg !2153

if.end.17:                                        ; preds = %if.then.13
  %call18 = tail call i32 @PyDict_SetItemString(%struct._object* %dict.addr.0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), %struct._object* %call14) #2, !dbg !2154
  %cmp19 = icmp eq i32 %call18, 0, !dbg !2156
  br i1 %cmp19, label %if.end.22, label %if.end.40, !dbg !2157

if.end.22:                                        ; preds = %if.end.17, %if.end.10
  %modulename.0 = phi %struct._object* [ %call14, %if.end.17 ], [ null, %if.end.10 ]
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.base, i64 0, i32 1, !dbg !2158
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2158, !tbaa !989
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !2158
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2158, !tbaa !1060
  %and = and i64 %6, 67108864, !dbg !2158
  %cmp23 = icmp eq i64 %and, 0, !dbg !2158
  br i1 %cmp23, label %if.else, label %if.then.24, !dbg !2160

if.then.24:                                       ; preds = %if.end.22
  tail call void @llvm.dbg.value(metadata %struct._object* %.base, i64 0, metadata !773, metadata !970), !dbg !2109
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.base, i64 0, i32 0, !dbg !2161
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !2161, !tbaa !996
  %inc = add i64 %7, 1, !dbg !2161
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2161, !tbaa !996
  br label %do.body.33, !dbg !2163

if.else:                                          ; preds = %if.end.22
  %call25 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %.base) #2, !dbg !2164
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !773, metadata !970), !dbg !2109
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !2166
  br i1 %cmp26, label %if.end.40, label %do.body.33, !dbg !2168

do.body.33:                                       ; preds = %if.then.24, %if.else
  %bases.0.ph = phi %struct._object* [ %call25, %if.else ], [ %.base, %if.then.24 ]
  %add.ptr.152 = getelementptr i8, i8* %call, i64 1, !dbg !2169
  %call30.153 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i64 0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %add.ptr.152, %struct._object* %bases.0.ph, %struct._object* %dict.addr.0) #2, !dbg !2170
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %bases.0.ph, i64 0, i32 0, !dbg !2171
  %8 = load i64, i64* %ob_refcnt34, align 8, !dbg !2171, !tbaa !996
  %dec = add i64 %8, -1, !dbg !2171
  store i64 %dec, i64* %ob_refcnt34, align 8, !dbg !2171, !tbaa !996
  %cmp35 = icmp eq i64 %dec, 0, !dbg !2171
  br i1 %cmp35, label %if.else.37, label %if.end.40, !dbg !2173

if.else.37:                                       ; preds = %do.body.33
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %bases.0.ph, i64 0, i32 1, !dbg !2174
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2174, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2174
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2174, !tbaa !998
  tail call void %10(%struct._object* %bases.0.ph) #2, !dbg !2174
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.end.17, %if.then.13, %if.else.37, %do.body.33
  %modulename.1149 = phi %struct._object* [ %modulename.0, %if.else.37 ], [ %modulename.0, %do.body.33 ], [ %modulename.0, %if.else ], [ %call14, %if.end.17 ], [ null, %if.then.13 ]
  %result.0147 = phi %struct._object* [ %call30.153, %if.else.37 ], [ %call30.153, %do.body.33 ], [ null, %if.else ], [ null, %if.end.17 ], [ null, %if.then.13 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %mydict.0, i64 0, metadata !780, metadata !970), !dbg !2176
  %cmp45 = icmp eq %struct._object* %mydict.0, null, !dbg !2178
  br i1 %cmp45, label %if.end.78, label %do.body.47, !dbg !2179

do.body.47:                                       ; preds = %if.end.40
  tail call void @llvm.dbg.value(metadata %struct._object* %mydict.0, i64 0, metadata !782, metadata !970), !dbg !2180
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %mydict.0, i64 0, i32 0, !dbg !2182
  %11 = load i64, i64* %ob_refcnt49, align 8, !dbg !2182, !tbaa !996
  %dec50 = add i64 %11, -1, !dbg !2182
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !2182, !tbaa !996
  %cmp51 = icmp eq i64 %dec50, 0, !dbg !2182
  br i1 %cmp51, label %if.else.53, label %if.end.78, !dbg !2184

if.else.53:                                       ; preds = %do.body.47
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %mydict.0, i64 0, i32 1, !dbg !2185
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !2185, !tbaa !989
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2185
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !2185, !tbaa !998
  tail call void %13(%struct._object* %mydict.0) #2, !dbg !2185
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.40, %do.body.47, %if.else.53
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !785, metadata !970), !dbg !2187
  tail call void @llvm.dbg.value(metadata %struct._object* %modulename.0, i64 0, metadata !790, metadata !970), !dbg !2189
  %cmp83 = icmp eq %struct._object* %modulename.1149, null, !dbg !2191
  br i1 %cmp83, label %cleanup, label %do.body.85, !dbg !2192

do.body.85:                                       ; preds = %if.end.78
  tail call void @llvm.dbg.value(metadata %struct._object* %modulename.0, i64 0, metadata !792, metadata !970), !dbg !2193
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %modulename.1149, i64 0, i32 0, !dbg !2195
  %14 = load i64, i64* %ob_refcnt87, align 8, !dbg !2195, !tbaa !996
  %dec88 = add i64 %14, -1, !dbg !2195
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !2195, !tbaa !996
  %cmp89 = icmp eq i64 %dec88, 0, !dbg !2195
  br i1 %cmp89, label %if.else.91, label %cleanup, !dbg !2197

if.else.91:                                       ; preds = %do.body.85
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %modulename.1149, i64 0, i32 1, !dbg !2198
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !2198, !tbaa !989
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2198
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !2198, !tbaa !998
  tail call void %16(%struct._object* %modulename.1149) #2, !dbg !2198
  br label %cleanup

cleanup:                                          ; preds = %if.then.5, %if.else.i, %do.body.1.i, %if.then, %if.end.78, %do.body.85, %if.else.91
  %retval.0 = phi %struct._object* [ %result.0147, %if.else.91 ], [ %result.0147, %do.body.85 ], [ %result.0147, %if.end.78 ], [ null, %if.then ], [ null, %do.body.1.i ], [ null, %if.else.i ], [ null, %if.then.5 ]
  ret %struct._object* %retval.0, !dbg !2200
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewExceptionWithDoc(i8* %name, i8* %doc, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !799, metadata !970), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8* %doc, i64 0, metadata !800, metadata !970), !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct._object* %base, i64 0, metadata !801, metadata !970), !dbg !2203
  tail call void @llvm.dbg.value(metadata %struct._object* %dict, i64 0, metadata !802, metadata !970), !dbg !2204
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !804, metadata !970), !dbg !2205
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !805, metadata !970), !dbg !2206
  %cmp = icmp eq %struct._object* %dict, null, !dbg !2207
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2209

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyDict_New() #2, !dbg !2210
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !805, metadata !970), !dbg !2206
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !802, metadata !970), !dbg !2204
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2212
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2214

if.end.3:                                         ; preds = %if.then, %entry
  %mydict.0 = phi %struct._object* [ %call, %if.then ], [ null, %entry ]
  %dict.addr.0 = phi %struct._object* [ %call, %if.then ], [ %dict, %entry ]
  %cmp4 = icmp eq i8* %doc, null, !dbg !2215
  br i1 %cmp4, label %if.end.17, label %if.then.5, !dbg !2216

if.then.5:                                        ; preds = %if.end.3
  %call6 = tail call %struct._object* @PyUnicode_FromString(i8* %doc) #2, !dbg !2217
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !806, metadata !970), !dbg !2218
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !2219
  br i1 %cmp7, label %do.body.19, label %if.end.9, !dbg !2221

if.end.9:                                         ; preds = %if.then.5
  %call10 = tail call i32 @PyDict_SetItemString(%struct._object* %dict.addr.0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct._object* %call6) #2, !dbg !2222
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !803, metadata !970), !dbg !2223
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !807, metadata !970), !dbg !2224
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !2226
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2226, !tbaa !996
  %dec = add i64 %0, -1, !dbg !2226
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2226, !tbaa !996
  %cmp11 = icmp eq i64 %dec, 0, !dbg !2226
  br i1 %cmp11, label %if.else, label %if.end.13, !dbg !2228

if.else:                                          ; preds = %if.end.9
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !2229
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2229, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2229
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2229, !tbaa !998
  tail call void %2(%struct._object* %call6) #2, !dbg !2229
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.9, %if.else
  %cmp14 = icmp slt i32 %call10, 0, !dbg !2231
  br i1 %cmp14, label %do.body.19, label %if.end.17, !dbg !2233

if.end.17:                                        ; preds = %if.end.3, %if.end.13
  %call18 = tail call %struct._object* @PyErr_NewException(i8* %name, %struct._object* %base, %struct._object* %dict.addr.0), !dbg !2234
  tail call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !804, metadata !970), !dbg !2205
  br label %do.body.19, !dbg !2235

do.body.19:                                       ; preds = %if.end.17, %if.then.5, %if.end.13
  %ret.0 = phi %struct._object* [ null, %if.then.5 ], [ null, %if.end.13 ], [ %call18, %if.end.17 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %mydict.0, i64 0, metadata !811, metadata !970), !dbg !2236
  %cmp20 = icmp eq %struct._object* %mydict.0, null, !dbg !2238
  br i1 %cmp20, label %cleanup, label %do.body.22, !dbg !2239

do.body.22:                                       ; preds = %do.body.19
  tail call void @llvm.dbg.value(metadata %struct._object* %mydict.0, i64 0, metadata !813, metadata !970), !dbg !2240
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %mydict.0, i64 0, i32 0, !dbg !2242
  %3 = load i64, i64* %ob_refcnt24, align 8, !dbg !2242, !tbaa !996
  %dec25 = add i64 %3, -1, !dbg !2242
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2242, !tbaa !996
  %cmp26 = icmp eq i64 %dec25, 0, !dbg !2242
  br i1 %cmp26, label %if.else.28, label %cleanup, !dbg !2244

if.else.28:                                       ; preds = %do.body.22
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %mydict.0, i64 0, i32 1, !dbg !2245
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2245, !tbaa !989
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2245
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2245, !tbaa !998
  tail call void %5(%struct._object* %mydict.0) #2, !dbg !2245
  br label %cleanup

cleanup:                                          ; preds = %do.body.19, %do.body.22, %if.else.28, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %ret.0, %if.else.28 ], [ %ret.0, %do.body.22 ], [ %ret.0, %do.body.19 ]
  ret %struct._object* %retval.0, !dbg !2247
}

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #3

declare i32 @PyFile_WriteString(i8*, %struct._object*) #3

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #3

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare i32 @_PyUnicode_CompareWithId(%struct._object*, %struct._Py_Identifier*) #3

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocation(i8* %filename, i32 %lineno) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !850, metadata !970), !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !851, metadata !970), !dbg !2249
  tail call void @PyErr_SyntaxLocationEx(i8* %filename, i32 %lineno, i32 -1), !dbg !2250
  ret void, !dbg !2251
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationEx(i8* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !891, metadata !970), !dbg !2252
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !892, metadata !970), !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %col_offset, i64 0, metadata !893, metadata !970), !dbg !2254
  %cmp = icmp eq i8* %filename, null, !dbg !2255
  br i1 %cmp, label %if.end.3.thread, label %if.then, !dbg !2257

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename) #2, !dbg !2258
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !894, metadata !970), !dbg !2260
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2261
  br i1 %cmp1, label %if.then.2, label %do.body.6, !dbg !2263

if.then.2:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2264
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2267
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2268
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2269
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2269
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2270, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !435, metadata !970) #2, !dbg !2269
  %curexc_type.i.i = getelementptr inbounds i8, i8* %0, i64 80, !dbg !2271
  %1 = bitcast i8* %curexc_type.i.i to %struct._object**, !dbg !2271
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !2271, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !441, metadata !970) #2, !dbg !2272
  %curexc_value.i.i = getelementptr inbounds i8, i8* %0, i64 88, !dbg !2273
  %3 = bitcast i8* %curexc_value.i.i to %struct._object**, !dbg !2273
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !2273, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !442, metadata !970) #2, !dbg !2274
  %curexc_traceback.i.i = getelementptr inbounds i8, i8* %0, i64 96, !dbg !2275
  %5 = bitcast i8* %curexc_traceback.i.i to %struct._object**, !dbg !2275
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !2275, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !443, metadata !970) #2, !dbg !2276
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !448, metadata !970) #2, !dbg !2277
  %cmp18.i.i = icmp eq %struct._object* %2, null, !dbg !2278
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2279
  br i1 %cmp18.i.i, label %if.end.33.i.i, label %do.body.20.i.i, !dbg !2280

do.body.20.i.i:                                   ; preds = %if.then.2
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !450, metadata !970) #2, !dbg !2281
  %ob_refcnt23.i.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !2282
  %7 = load i64, i64* %ob_refcnt23.i.i, align 8, !dbg !2282, !tbaa !996
  %dec24.i.i = add i64 %7, -1, !dbg !2282
  store i64 %dec24.i.i, i64* %ob_refcnt23.i.i, align 8, !dbg !2282, !tbaa !996
  %cmp25.i.i = icmp eq i64 %dec24.i.i, 0, !dbg !2282
  br i1 %cmp25.i.i, label %if.else.27.i.i, label %if.end.33.i.i, !dbg !2283

if.else.27.i.i:                                   ; preds = %do.body.20.i.i
  %ob_type28.i.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !2284
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i, align 8, !dbg !2284, !tbaa !989
  %tp_dealloc29.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2284
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i, align 8, !dbg !2284, !tbaa !998
  tail call void %9(%struct._object* %2) #2, !dbg !2284
  br label %if.end.33.i.i, !dbg !2285

if.end.33.i.i:                                    ; preds = %if.else.27.i.i, %do.body.20.i.i, %if.then.2
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !453, metadata !970) #2, !dbg !2286
  %cmp39.i.i = icmp eq %struct._object* %4, null, !dbg !2287
  br i1 %cmp39.i.i, label %if.end.54.i.i, label %do.body.41.i.i, !dbg !2288

do.body.41.i.i:                                   ; preds = %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !455, metadata !970) #2, !dbg !2289
  %ob_refcnt44.i.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !2290
  %10 = load i64, i64* %ob_refcnt44.i.i, align 8, !dbg !2290, !tbaa !996
  %dec45.i.i = add i64 %10, -1, !dbg !2290
  store i64 %dec45.i.i, i64* %ob_refcnt44.i.i, align 8, !dbg !2290, !tbaa !996
  %cmp46.i.i = icmp eq i64 %dec45.i.i, 0, !dbg !2290
  br i1 %cmp46.i.i, label %if.else.48.i.i, label %if.end.54.i.i, !dbg !2291

if.else.48.i.i:                                   ; preds = %do.body.41.i.i
  %ob_type49.i.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !2292
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i, align 8, !dbg !2292, !tbaa !989
  %tp_dealloc50.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2292
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i, align 8, !dbg !2292, !tbaa !998
  tail call void %12(%struct._object* %4) #2, !dbg !2292
  br label %if.end.54.i.i, !dbg !2285

if.end.54.i.i:                                    ; preds = %if.else.48.i.i, %do.body.41.i.i, %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !458, metadata !970) #2, !dbg !2293
  %cmp60.i.i = icmp eq %struct._object* %6, null, !dbg !2294
  br i1 %cmp60.i.i, label %if.end.3.thread, label %do.body.62.i.i, !dbg !2295

do.body.62.i.i:                                   ; preds = %if.end.54.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !460, metadata !970) #2, !dbg !2296
  %ob_refcnt65.i.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !2297
  %13 = load i64, i64* %ob_refcnt65.i.i, align 8, !dbg !2297, !tbaa !996
  %dec66.i.i = add i64 %13, -1, !dbg !2297
  store i64 %dec66.i.i, i64* %ob_refcnt65.i.i, align 8, !dbg !2297, !tbaa !996
  %cmp67.i.i = icmp eq i64 %dec66.i.i, 0, !dbg !2297
  br i1 %cmp67.i.i, label %if.else.69.i.i, label %if.end.3.thread, !dbg !2298

if.else.69.i.i:                                   ; preds = %do.body.62.i.i
  %ob_type70.i.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2299
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i, align 8, !dbg !2299, !tbaa !989
  %tp_dealloc71.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2299
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i, align 8, !dbg !2299, !tbaa !998
  tail call void %15(%struct._object* %6) #2, !dbg !2299
  br label %if.end.3.thread, !dbg !2285

if.end.3.thread:                                  ; preds = %entry, %if.end.54.i.i, %do.body.62.i.i, %if.else.69.i.i
  tail call void @PyErr_SyntaxLocationObject(%struct._object* null, i32 %lineno, i32 %col_offset), !dbg !2300
  br label %if.end.11, !dbg !2301

do.body.6:                                        ; preds = %if.then
  tail call void @PyErr_SyntaxLocationObject(%struct._object* %call, i32 %lineno, i32 %col_offset), !dbg !2300
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2302
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2302, !tbaa !996
  %dec = add i64 %16, -1, !dbg !2302
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2302, !tbaa !996
  %cmp7 = icmp eq i64 %dec, 0, !dbg !2302
  br i1 %cmp7, label %if.else.9, label %if.end.11, !dbg !2304

if.else.9:                                        ; preds = %do.body.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2305
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2305, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2305
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2305, !tbaa !998
  tail call void %18(%struct._object* %call) #2, !dbg !2305
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.3.thread, %if.else.9, %do.body.6
  ret void, !dbg !2307
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  %exc = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !856, metadata !970), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !857, metadata !970), !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %col_offset, i64 0, metadata !858, metadata !970), !dbg !2310
  %0 = bitcast %struct._object** %exc to i8*, !dbg !2311
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2311
  %1 = bitcast %struct._object** %v to i8*, !dbg !2311
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2311
  %2 = bitcast %struct._object** %tb to i8*, !dbg !2311
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2311
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !859, metadata !970), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !861, metadata !970), !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !605, metadata !970) #2, !dbg !2315
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !606, metadata !970) #2, !dbg !2317
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !607, metadata !970) #2, !dbg !2318
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !609, metadata !970) #2, !dbg !2319
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !612, metadata !970) #2, !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !970) #2, !dbg !2319
  %3 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2320, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !611, metadata !970) #2, !dbg !2319
  %curexc_type.i = getelementptr inbounds i8, i8* %3, i64 80, !dbg !2321
  %4 = bitcast i8* %curexc_type.i to i64*, !dbg !2321
  %5 = load i64, i64* %4, align 8, !dbg !2321, !tbaa !1003
  %6 = bitcast %struct._object** %exc to i64*, !dbg !2322
  store i64 %5, i64* %6, align 8, !dbg !2322, !tbaa !978
  %curexc_value.i = getelementptr inbounds i8, i8* %3, i64 88, !dbg !2323
  %7 = bitcast i8* %curexc_value.i to i64*, !dbg !2323
  %8 = load i64, i64* %7, align 8, !dbg !2323, !tbaa !1007
  %9 = bitcast %struct._object** %v to i64*, !dbg !2324
  store i64 %8, i64* %9, align 8, !dbg !2324, !tbaa !978
  %curexc_traceback.i = getelementptr inbounds i8, i8* %3, i64 96, !dbg !2325
  %10 = bitcast i8* %curexc_traceback.i to i64*, !dbg !2325
  %11 = load i64, i64* %10, align 8, !dbg !2325, !tbaa !1010
  %12 = bitcast %struct._object** %tb to i64*, !dbg !2326
  store i64 %11, i64* %12, align 8, !dbg !2326, !tbaa !978
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2327
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !859, metadata !970), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !861, metadata !970), !dbg !2314
  call void @PyErr_NormalizeException(%struct._object** nonnull %exc, %struct._object** nonnull %v, %struct._object** nonnull %tb), !dbg !2328
  %conv = sext i32 %lineno to i64, !dbg !2329
  %call = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !862, metadata !970), !dbg !2331
  %cmp = icmp eq %struct._object* %call, null, !dbg !2332
  br i1 %cmp, label %if.then, label %if.else, !dbg !2333

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2337
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2338
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2339
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2339
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2339
  %13 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2340, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !435, metadata !970) #2, !dbg !2339
  %curexc_type.i.i = getelementptr inbounds i8, i8* %13, i64 80, !dbg !2341
  %14 = bitcast i8* %curexc_type.i.i to %struct._object**, !dbg !2341
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !2341, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !441, metadata !970) #2, !dbg !2342
  %curexc_value.i.i = getelementptr inbounds i8, i8* %13, i64 88, !dbg !2343
  %16 = bitcast i8* %curexc_value.i.i to %struct._object**, !dbg !2343
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !2343, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !442, metadata !970) #2, !dbg !2344
  %curexc_traceback.i.i = getelementptr inbounds i8, i8* %13, i64 96, !dbg !2345
  %18 = bitcast i8* %curexc_traceback.i.i to %struct._object**, !dbg !2345
  %19 = load %struct._object*, %struct._object** %18, align 8, !dbg !2345, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !443, metadata !970) #2, !dbg !2346
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !448, metadata !970) #2, !dbg !2347
  %cmp18.i.i = icmp eq %struct._object* %15, null, !dbg !2348
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2349
  br i1 %cmp18.i.i, label %if.end.33.i.i, label %do.body.20.i.i, !dbg !2350

do.body.20.i.i:                                   ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !450, metadata !970) #2, !dbg !2351
  %ob_refcnt23.i.i = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2352
  %20 = load i64, i64* %ob_refcnt23.i.i, align 8, !dbg !2352, !tbaa !996
  %dec24.i.i = add i64 %20, -1, !dbg !2352
  store i64 %dec24.i.i, i64* %ob_refcnt23.i.i, align 8, !dbg !2352, !tbaa !996
  %cmp25.i.i = icmp eq i64 %dec24.i.i, 0, !dbg !2352
  br i1 %cmp25.i.i, label %if.else.27.i.i, label %if.end.33.i.i, !dbg !2353

if.else.27.i.i:                                   ; preds = %do.body.20.i.i
  %ob_type28.i.i = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !2354
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i, align 8, !dbg !2354, !tbaa !989
  %tp_dealloc29.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !2354
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i, align 8, !dbg !2354, !tbaa !998
  tail call void %22(%struct._object* %15) #2, !dbg !2354
  br label %if.end.33.i.i, !dbg !2355

if.end.33.i.i:                                    ; preds = %if.else.27.i.i, %do.body.20.i.i, %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !453, metadata !970) #2, !dbg !2356
  %cmp39.i.i = icmp eq %struct._object* %17, null, !dbg !2357
  br i1 %cmp39.i.i, label %if.end.54.i.i, label %do.body.41.i.i, !dbg !2358

do.body.41.i.i:                                   ; preds = %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !455, metadata !970) #2, !dbg !2359
  %ob_refcnt44.i.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !2360
  %23 = load i64, i64* %ob_refcnt44.i.i, align 8, !dbg !2360, !tbaa !996
  %dec45.i.i = add i64 %23, -1, !dbg !2360
  store i64 %dec45.i.i, i64* %ob_refcnt44.i.i, align 8, !dbg !2360, !tbaa !996
  %cmp46.i.i = icmp eq i64 %dec45.i.i, 0, !dbg !2360
  br i1 %cmp46.i.i, label %if.else.48.i.i, label %if.end.54.i.i, !dbg !2361

if.else.48.i.i:                                   ; preds = %do.body.41.i.i
  %ob_type49.i.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !2362
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i, align 8, !dbg !2362, !tbaa !989
  %tp_dealloc50.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !2362
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i, align 8, !dbg !2362, !tbaa !998
  tail call void %25(%struct._object* %17) #2, !dbg !2362
  br label %if.end.54.i.i, !dbg !2355

if.end.54.i.i:                                    ; preds = %if.else.48.i.i, %do.body.41.i.i, %if.end.33.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !458, metadata !970) #2, !dbg !2363
  %cmp60.i.i = icmp eq %struct._object* %19, null, !dbg !2364
  br i1 %cmp60.i.i, label %if.end.10, label %do.body.62.i.i, !dbg !2365

do.body.62.i.i:                                   ; preds = %if.end.54.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !460, metadata !970) #2, !dbg !2366
  %ob_refcnt65.i.i = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !2367
  %26 = load i64, i64* %ob_refcnt65.i.i, align 8, !dbg !2367, !tbaa !996
  %dec66.i.i = add i64 %26, -1, !dbg !2367
  store i64 %dec66.i.i, i64* %ob_refcnt65.i.i, align 8, !dbg !2367, !tbaa !996
  %cmp67.i.i = icmp eq i64 %dec66.i.i, 0, !dbg !2367
  br i1 %cmp67.i.i, label %if.else.69.i.i, label %if.end.10, !dbg !2368

if.else.69.i.i:                                   ; preds = %do.body.62.i.i
  %ob_type70.i.i = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !2369
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i, align 8, !dbg !2369, !tbaa !989
  %tp_dealloc71.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !2369
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i, align 8, !dbg !2369, !tbaa !998
  tail call void %28(%struct._object* %19) #2, !dbg !2369
  br label %if.end.10, !dbg !2355

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !2370, !tbaa !978
  %call2 = tail call i32 @_PyObject_SetAttrId(%struct._object* %29, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_lineno, %struct._object* %call) #2, !dbg !2372
  %tobool = icmp eq i32 %call2, 0, !dbg !2372
  br i1 %tobool, label %do.body, label %if.then.3, !dbg !2373

if.then.3:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2377
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2379
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2379
  %30 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2380, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !435, metadata !970) #2, !dbg !2379
  %curexc_type.i.i.144 = getelementptr inbounds i8, i8* %30, i64 80, !dbg !2381
  %31 = bitcast i8* %curexc_type.i.i.144 to %struct._object**, !dbg !2381
  %32 = load %struct._object*, %struct._object** %31, align 8, !dbg !2381, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !441, metadata !970) #2, !dbg !2382
  %curexc_value.i.i.145 = getelementptr inbounds i8, i8* %30, i64 88, !dbg !2383
  %33 = bitcast i8* %curexc_value.i.i.145 to %struct._object**, !dbg !2383
  %34 = load %struct._object*, %struct._object** %33, align 8, !dbg !2383, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !442, metadata !970) #2, !dbg !2384
  %curexc_traceback.i.i.146 = getelementptr inbounds i8, i8* %30, i64 96, !dbg !2385
  %35 = bitcast i8* %curexc_traceback.i.i.146 to %struct._object**, !dbg !2385
  %36 = load %struct._object*, %struct._object** %35, align 8, !dbg !2385, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %36, i64 0, metadata !443, metadata !970) #2, !dbg !2386
  tail call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !448, metadata !970) #2, !dbg !2387
  %cmp18.i.i.147 = icmp eq %struct._object* %32, null, !dbg !2388
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.144, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2389
  br i1 %cmp18.i.i.147, label %if.end.33.i.i.156, label %do.body.20.i.i.151, !dbg !2390

do.body.20.i.i.151:                               ; preds = %if.then.3
  tail call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !450, metadata !970) #2, !dbg !2391
  %ob_refcnt23.i.i.148 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 0, !dbg !2392
  %37 = load i64, i64* %ob_refcnt23.i.i.148, align 8, !dbg !2392, !tbaa !996
  %dec24.i.i.149 = add i64 %37, -1, !dbg !2392
  store i64 %dec24.i.i.149, i64* %ob_refcnt23.i.i.148, align 8, !dbg !2392, !tbaa !996
  %cmp25.i.i.150 = icmp eq i64 %dec24.i.i.149, 0, !dbg !2392
  br i1 %cmp25.i.i.150, label %if.else.27.i.i.154, label %if.end.33.i.i.156, !dbg !2393

if.else.27.i.i.154:                               ; preds = %do.body.20.i.i.151
  %ob_type28.i.i.152 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 1, !dbg !2394
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.152, align 8, !dbg !2394, !tbaa !989
  %tp_dealloc29.i.i.153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i64 0, i32 4, !dbg !2394
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.153, align 8, !dbg !2394, !tbaa !998
  tail call void %39(%struct._object* %32) #2, !dbg !2394
  br label %if.end.33.i.i.156, !dbg !2395

if.end.33.i.i.156:                                ; preds = %if.else.27.i.i.154, %do.body.20.i.i.151, %if.then.3
  tail call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !453, metadata !970) #2, !dbg !2396
  %cmp39.i.i.155 = icmp eq %struct._object* %34, null, !dbg !2397
  br i1 %cmp39.i.i.155, label %if.end.54.i.i.165, label %do.body.41.i.i.160, !dbg !2398

do.body.41.i.i.160:                               ; preds = %if.end.33.i.i.156
  tail call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !455, metadata !970) #2, !dbg !2399
  %ob_refcnt44.i.i.157 = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 0, !dbg !2400
  %40 = load i64, i64* %ob_refcnt44.i.i.157, align 8, !dbg !2400, !tbaa !996
  %dec45.i.i.158 = add i64 %40, -1, !dbg !2400
  store i64 %dec45.i.i.158, i64* %ob_refcnt44.i.i.157, align 8, !dbg !2400, !tbaa !996
  %cmp46.i.i.159 = icmp eq i64 %dec45.i.i.158, 0, !dbg !2400
  br i1 %cmp46.i.i.159, label %if.else.48.i.i.163, label %if.end.54.i.i.165, !dbg !2401

if.else.48.i.i.163:                               ; preds = %do.body.41.i.i.160
  %ob_type49.i.i.161 = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 1, !dbg !2402
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.161, align 8, !dbg !2402, !tbaa !989
  %tp_dealloc50.i.i.162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !2402
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.162, align 8, !dbg !2402, !tbaa !998
  tail call void %42(%struct._object* %34) #2, !dbg !2402
  br label %if.end.54.i.i.165, !dbg !2395

if.end.54.i.i.165:                                ; preds = %if.else.48.i.i.163, %do.body.41.i.i.160, %if.end.33.i.i.156
  tail call void @llvm.dbg.value(metadata %struct._object* %36, i64 0, metadata !458, metadata !970) #2, !dbg !2403
  %cmp60.i.i.164 = icmp eq %struct._object* %36, null, !dbg !2404
  br i1 %cmp60.i.i.164, label %do.body, label %do.body.62.i.i.169, !dbg !2405

do.body.62.i.i.169:                               ; preds = %if.end.54.i.i.165
  tail call void @llvm.dbg.value(metadata %struct._object* %36, i64 0, metadata !460, metadata !970) #2, !dbg !2406
  %ob_refcnt65.i.i.166 = getelementptr inbounds %struct._object, %struct._object* %36, i64 0, i32 0, !dbg !2407
  %43 = load i64, i64* %ob_refcnt65.i.i.166, align 8, !dbg !2407, !tbaa !996
  %dec66.i.i.167 = add i64 %43, -1, !dbg !2407
  store i64 %dec66.i.i.167, i64* %ob_refcnt65.i.i.166, align 8, !dbg !2407, !tbaa !996
  %cmp67.i.i.168 = icmp eq i64 %dec66.i.i.167, 0, !dbg !2407
  br i1 %cmp67.i.i.168, label %if.else.69.i.i.172, label %do.body, !dbg !2408

if.else.69.i.i.172:                               ; preds = %do.body.62.i.i.169
  %ob_type70.i.i.170 = getelementptr inbounds %struct._object, %struct._object* %36, i64 0, i32 1, !dbg !2409
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.170, align 8, !dbg !2409, !tbaa !989
  %tp_dealloc71.i.i.171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !2409
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.171, align 8, !dbg !2409, !tbaa !998
  tail call void %45(%struct._object* %36) #2, !dbg !2409
  br label %do.body, !dbg !2395

do.body:                                          ; preds = %if.else.69.i.i.172, %do.body.62.i.i.169, %if.end.54.i.i.165, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !863, metadata !970), !dbg !2410
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2412
  %46 = load i64, i64* %ob_refcnt, align 8, !dbg !2412, !tbaa !996
  %dec = add i64 %46, -1, !dbg !2412
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2412, !tbaa !996
  %cmp5 = icmp eq i64 %dec, 0, !dbg !2412
  br i1 %cmp5, label %if.else.8, label %if.end.10, !dbg !2414

if.else.8:                                        ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2415
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2415, !tbaa !989
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !2415
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2415, !tbaa !998
  tail call void %48(%struct._object* %call) #2, !dbg !2415
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.69.i.i, %do.body.62.i.i, %if.end.54.i.i, %if.else.8, %do.body
  %cmp11 = icmp sgt i32 %col_offset, -1, !dbg !2417
  br i1 %cmp11, label %if.then.13, label %if.end.39, !dbg !2418

if.then.13:                                       ; preds = %if.end.10
  %conv14 = sext i32 %col_offset to i64, !dbg !2419
  %call15 = tail call %struct._object* @PyLong_FromLong(i64 %conv14) #2, !dbg !2420
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !862, metadata !970), !dbg !2331
  %cmp16 = icmp eq %struct._object* %call15, null, !dbg !2421
  br i1 %cmp16, label %if.then.18, label %if.else.19, !dbg !2422

if.then.18:                                       ; preds = %if.then.13
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2426
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2428
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2428
  %49 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2429, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !435, metadata !970) #2, !dbg !2428
  %curexc_type.i.i.174 = getelementptr inbounds i8, i8* %49, i64 80, !dbg !2430
  %50 = bitcast i8* %curexc_type.i.i.174 to %struct._object**, !dbg !2430
  %51 = load %struct._object*, %struct._object** %50, align 8, !dbg !2430, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %51, i64 0, metadata !441, metadata !970) #2, !dbg !2431
  %curexc_value.i.i.175 = getelementptr inbounds i8, i8* %49, i64 88, !dbg !2432
  %52 = bitcast i8* %curexc_value.i.i.175 to %struct._object**, !dbg !2432
  %53 = load %struct._object*, %struct._object** %52, align 8, !dbg !2432, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %53, i64 0, metadata !442, metadata !970) #2, !dbg !2433
  %curexc_traceback.i.i.176 = getelementptr inbounds i8, i8* %49, i64 96, !dbg !2434
  %54 = bitcast i8* %curexc_traceback.i.i.176 to %struct._object**, !dbg !2434
  %55 = load %struct._object*, %struct._object** %54, align 8, !dbg !2434, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %55, i64 0, metadata !443, metadata !970) #2, !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct._object* %51, i64 0, metadata !448, metadata !970) #2, !dbg !2436
  %cmp18.i.i.177 = icmp eq %struct._object* %51, null, !dbg !2437
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.174, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2438
  br i1 %cmp18.i.i.177, label %if.end.33.i.i.186, label %do.body.20.i.i.181, !dbg !2439

do.body.20.i.i.181:                               ; preds = %if.then.18
  tail call void @llvm.dbg.value(metadata %struct._object* %51, i64 0, metadata !450, metadata !970) #2, !dbg !2440
  %ob_refcnt23.i.i.178 = getelementptr inbounds %struct._object, %struct._object* %51, i64 0, i32 0, !dbg !2441
  %56 = load i64, i64* %ob_refcnt23.i.i.178, align 8, !dbg !2441, !tbaa !996
  %dec24.i.i.179 = add i64 %56, -1, !dbg !2441
  store i64 %dec24.i.i.179, i64* %ob_refcnt23.i.i.178, align 8, !dbg !2441, !tbaa !996
  %cmp25.i.i.180 = icmp eq i64 %dec24.i.i.179, 0, !dbg !2441
  br i1 %cmp25.i.i.180, label %if.else.27.i.i.184, label %if.end.33.i.i.186, !dbg !2442

if.else.27.i.i.184:                               ; preds = %do.body.20.i.i.181
  %ob_type28.i.i.182 = getelementptr inbounds %struct._object, %struct._object* %51, i64 0, i32 1, !dbg !2443
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.182, align 8, !dbg !2443, !tbaa !989
  %tp_dealloc29.i.i.183 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !2443
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.183, align 8, !dbg !2443, !tbaa !998
  tail call void %58(%struct._object* %51) #2, !dbg !2443
  br label %if.end.33.i.i.186, !dbg !2444

if.end.33.i.i.186:                                ; preds = %if.else.27.i.i.184, %do.body.20.i.i.181, %if.then.18
  tail call void @llvm.dbg.value(metadata %struct._object* %53, i64 0, metadata !453, metadata !970) #2, !dbg !2445
  %cmp39.i.i.185 = icmp eq %struct._object* %53, null, !dbg !2446
  br i1 %cmp39.i.i.185, label %if.end.54.i.i.195, label %do.body.41.i.i.190, !dbg !2447

do.body.41.i.i.190:                               ; preds = %if.end.33.i.i.186
  tail call void @llvm.dbg.value(metadata %struct._object* %53, i64 0, metadata !455, metadata !970) #2, !dbg !2448
  %ob_refcnt44.i.i.187 = getelementptr inbounds %struct._object, %struct._object* %53, i64 0, i32 0, !dbg !2449
  %59 = load i64, i64* %ob_refcnt44.i.i.187, align 8, !dbg !2449, !tbaa !996
  %dec45.i.i.188 = add i64 %59, -1, !dbg !2449
  store i64 %dec45.i.i.188, i64* %ob_refcnt44.i.i.187, align 8, !dbg !2449, !tbaa !996
  %cmp46.i.i.189 = icmp eq i64 %dec45.i.i.188, 0, !dbg !2449
  br i1 %cmp46.i.i.189, label %if.else.48.i.i.193, label %if.end.54.i.i.195, !dbg !2450

if.else.48.i.i.193:                               ; preds = %do.body.41.i.i.190
  %ob_type49.i.i.191 = getelementptr inbounds %struct._object, %struct._object* %53, i64 0, i32 1, !dbg !2451
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.191, align 8, !dbg !2451, !tbaa !989
  %tp_dealloc50.i.i.192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !2451
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.192, align 8, !dbg !2451, !tbaa !998
  tail call void %61(%struct._object* %53) #2, !dbg !2451
  br label %if.end.54.i.i.195, !dbg !2444

if.end.54.i.i.195:                                ; preds = %if.else.48.i.i.193, %do.body.41.i.i.190, %if.end.33.i.i.186
  tail call void @llvm.dbg.value(metadata %struct._object* %55, i64 0, metadata !458, metadata !970) #2, !dbg !2452
  %cmp60.i.i.194 = icmp eq %struct._object* %55, null, !dbg !2453
  br i1 %cmp60.i.i.194, label %if.end.39, label %do.body.62.i.i.199, !dbg !2454

do.body.62.i.i.199:                               ; preds = %if.end.54.i.i.195
  tail call void @llvm.dbg.value(metadata %struct._object* %55, i64 0, metadata !460, metadata !970) #2, !dbg !2455
  %ob_refcnt65.i.i.196 = getelementptr inbounds %struct._object, %struct._object* %55, i64 0, i32 0, !dbg !2456
  %62 = load i64, i64* %ob_refcnt65.i.i.196, align 8, !dbg !2456, !tbaa !996
  %dec66.i.i.197 = add i64 %62, -1, !dbg !2456
  store i64 %dec66.i.i.197, i64* %ob_refcnt65.i.i.196, align 8, !dbg !2456, !tbaa !996
  %cmp67.i.i.198 = icmp eq i64 %dec66.i.i.197, 0, !dbg !2456
  br i1 %cmp67.i.i.198, label %if.else.69.i.i.202, label %if.end.39, !dbg !2457

if.else.69.i.i.202:                               ; preds = %do.body.62.i.i.199
  %ob_type70.i.i.200 = getelementptr inbounds %struct._object, %struct._object* %55, i64 0, i32 1, !dbg !2458
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.200, align 8, !dbg !2458, !tbaa !989
  %tp_dealloc71.i.i.201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !2458
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.201, align 8, !dbg !2458, !tbaa !998
  tail call void %64(%struct._object* %55) #2, !dbg !2458
  br label %if.end.39, !dbg !2444

if.else.19:                                       ; preds = %if.then.13
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %65 = load %struct._object*, %struct._object** %v, align 8, !dbg !2459, !tbaa !978
  %call20 = tail call i32 @_PyObject_SetAttrId(%struct._object* %65, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* %call15) #2, !dbg !2461
  %tobool21 = icmp eq i32 %call20, 0, !dbg !2461
  br i1 %tobool21, label %do.body.24, label %if.then.22, !dbg !2462

if.then.22:                                       ; preds = %if.else.19
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2463
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2467
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2468
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2468
  %66 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2469, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !435, metadata !970) #2, !dbg !2468
  %curexc_type.i.i.204 = getelementptr inbounds i8, i8* %66, i64 80, !dbg !2470
  %67 = bitcast i8* %curexc_type.i.i.204 to %struct._object**, !dbg !2470
  %68 = load %struct._object*, %struct._object** %67, align 8, !dbg !2470, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %68, i64 0, metadata !441, metadata !970) #2, !dbg !2471
  %curexc_value.i.i.205 = getelementptr inbounds i8, i8* %66, i64 88, !dbg !2472
  %69 = bitcast i8* %curexc_value.i.i.205 to %struct._object**, !dbg !2472
  %70 = load %struct._object*, %struct._object** %69, align 8, !dbg !2472, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %70, i64 0, metadata !442, metadata !970) #2, !dbg !2473
  %curexc_traceback.i.i.206 = getelementptr inbounds i8, i8* %66, i64 96, !dbg !2474
  %71 = bitcast i8* %curexc_traceback.i.i.206 to %struct._object**, !dbg !2474
  %72 = load %struct._object*, %struct._object** %71, align 8, !dbg !2474, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %72, i64 0, metadata !443, metadata !970) #2, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct._object* %68, i64 0, metadata !448, metadata !970) #2, !dbg !2476
  %cmp18.i.i.207 = icmp eq %struct._object* %68, null, !dbg !2477
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.204, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2478
  br i1 %cmp18.i.i.207, label %if.end.33.i.i.216, label %do.body.20.i.i.211, !dbg !2479

do.body.20.i.i.211:                               ; preds = %if.then.22
  tail call void @llvm.dbg.value(metadata %struct._object* %68, i64 0, metadata !450, metadata !970) #2, !dbg !2480
  %ob_refcnt23.i.i.208 = getelementptr inbounds %struct._object, %struct._object* %68, i64 0, i32 0, !dbg !2481
  %73 = load i64, i64* %ob_refcnt23.i.i.208, align 8, !dbg !2481, !tbaa !996
  %dec24.i.i.209 = add i64 %73, -1, !dbg !2481
  store i64 %dec24.i.i.209, i64* %ob_refcnt23.i.i.208, align 8, !dbg !2481, !tbaa !996
  %cmp25.i.i.210 = icmp eq i64 %dec24.i.i.209, 0, !dbg !2481
  br i1 %cmp25.i.i.210, label %if.else.27.i.i.214, label %if.end.33.i.i.216, !dbg !2482

if.else.27.i.i.214:                               ; preds = %do.body.20.i.i.211
  %ob_type28.i.i.212 = getelementptr inbounds %struct._object, %struct._object* %68, i64 0, i32 1, !dbg !2483
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.212, align 8, !dbg !2483, !tbaa !989
  %tp_dealloc29.i.i.213 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !2483
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.213, align 8, !dbg !2483, !tbaa !998
  tail call void %75(%struct._object* %68) #2, !dbg !2483
  br label %if.end.33.i.i.216, !dbg !2484

if.end.33.i.i.216:                                ; preds = %if.else.27.i.i.214, %do.body.20.i.i.211, %if.then.22
  tail call void @llvm.dbg.value(metadata %struct._object* %70, i64 0, metadata !453, metadata !970) #2, !dbg !2485
  %cmp39.i.i.215 = icmp eq %struct._object* %70, null, !dbg !2486
  br i1 %cmp39.i.i.215, label %if.end.54.i.i.225, label %do.body.41.i.i.220, !dbg !2487

do.body.41.i.i.220:                               ; preds = %if.end.33.i.i.216
  tail call void @llvm.dbg.value(metadata %struct._object* %70, i64 0, metadata !455, metadata !970) #2, !dbg !2488
  %ob_refcnt44.i.i.217 = getelementptr inbounds %struct._object, %struct._object* %70, i64 0, i32 0, !dbg !2489
  %76 = load i64, i64* %ob_refcnt44.i.i.217, align 8, !dbg !2489, !tbaa !996
  %dec45.i.i.218 = add i64 %76, -1, !dbg !2489
  store i64 %dec45.i.i.218, i64* %ob_refcnt44.i.i.217, align 8, !dbg !2489, !tbaa !996
  %cmp46.i.i.219 = icmp eq i64 %dec45.i.i.218, 0, !dbg !2489
  br i1 %cmp46.i.i.219, label %if.else.48.i.i.223, label %if.end.54.i.i.225, !dbg !2490

if.else.48.i.i.223:                               ; preds = %do.body.41.i.i.220
  %ob_type49.i.i.221 = getelementptr inbounds %struct._object, %struct._object* %70, i64 0, i32 1, !dbg !2491
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.221, align 8, !dbg !2491, !tbaa !989
  %tp_dealloc50.i.i.222 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i64 0, i32 4, !dbg !2491
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.222, align 8, !dbg !2491, !tbaa !998
  tail call void %78(%struct._object* %70) #2, !dbg !2491
  br label %if.end.54.i.i.225, !dbg !2484

if.end.54.i.i.225:                                ; preds = %if.else.48.i.i.223, %do.body.41.i.i.220, %if.end.33.i.i.216
  tail call void @llvm.dbg.value(metadata %struct._object* %72, i64 0, metadata !458, metadata !970) #2, !dbg !2492
  %cmp60.i.i.224 = icmp eq %struct._object* %72, null, !dbg !2493
  br i1 %cmp60.i.i.224, label %do.body.24, label %do.body.62.i.i.229, !dbg !2494

do.body.62.i.i.229:                               ; preds = %if.end.54.i.i.225
  tail call void @llvm.dbg.value(metadata %struct._object* %72, i64 0, metadata !460, metadata !970) #2, !dbg !2495
  %ob_refcnt65.i.i.226 = getelementptr inbounds %struct._object, %struct._object* %72, i64 0, i32 0, !dbg !2496
  %79 = load i64, i64* %ob_refcnt65.i.i.226, align 8, !dbg !2496, !tbaa !996
  %dec66.i.i.227 = add i64 %79, -1, !dbg !2496
  store i64 %dec66.i.i.227, i64* %ob_refcnt65.i.i.226, align 8, !dbg !2496, !tbaa !996
  %cmp67.i.i.228 = icmp eq i64 %dec66.i.i.227, 0, !dbg !2496
  br i1 %cmp67.i.i.228, label %if.else.69.i.i.232, label %do.body.24, !dbg !2497

if.else.69.i.i.232:                               ; preds = %do.body.62.i.i.229
  %ob_type70.i.i.230 = getelementptr inbounds %struct._object, %struct._object* %72, i64 0, i32 1, !dbg !2498
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.230, align 8, !dbg !2498, !tbaa !989
  %tp_dealloc71.i.i.231 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i64 0, i32 4, !dbg !2498
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.231, align 8, !dbg !2498, !tbaa !998
  tail call void %81(%struct._object* %72) #2, !dbg !2498
  br label %do.body.24, !dbg !2484

do.body.24:                                       ; preds = %if.else.69.i.i.232, %do.body.62.i.i.229, %if.end.54.i.i.225, %if.else.19
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !867, metadata !970), !dbg !2499
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 0, !dbg !2501
  %82 = load i64, i64* %ob_refcnt27, align 8, !dbg !2501, !tbaa !996
  %dec28 = add i64 %82, -1, !dbg !2501
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2501, !tbaa !996
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !2501
  br i1 %cmp29, label %if.else.32, label %if.end.39, !dbg !2503

if.else.32:                                       ; preds = %do.body.24
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 1, !dbg !2504
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !2504, !tbaa !989
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i64 0, i32 4, !dbg !2504
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !2504, !tbaa !998
  tail call void %84(%struct._object* %call15) #2, !dbg !2504
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.69.i.i.202, %do.body.62.i.i.199, %if.end.54.i.i.195, %if.else.32, %do.body.24, %if.end.10
  %cmp40 = icmp eq %struct._object* %filename, null, !dbg !2506
  %.pre = load %struct._object*, %struct._object** %v, align 8, !dbg !2507, !tbaa !978
  br i1 %cmp40, label %if.end.39.if.end.69_crit_edge, label %if.then.42, !dbg !2509

if.end.39.if.end.69_crit_edge:                    ; preds = %if.end.39
  %85 = ptrtoint %struct._object* %.pre to i64, !dbg !2509
  br label %if.end.69, !dbg !2509

if.then.42:                                       ; preds = %if.end.39
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call43 = tail call i32 @_PyObject_SetAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_filename, %struct._object* %filename) #2, !dbg !2510
  %tobool44 = icmp eq i32 %call43, 0, !dbg !2510
  %86 = ptrtoint %struct._object* %.pre to i64, !dbg !2512
  br i1 %tobool44, label %if.end.46, label %if.then.45, !dbg !2512

if.then.45:                                       ; preds = %if.then.42
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2513
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2516
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2518
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2518
  %87 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2519, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !435, metadata !970) #2, !dbg !2518
  %curexc_type.i.i.234 = getelementptr inbounds i8, i8* %87, i64 80, !dbg !2520
  %88 = bitcast i8* %curexc_type.i.i.234 to %struct._object**, !dbg !2520
  %89 = load %struct._object*, %struct._object** %88, align 8, !dbg !2520, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %89, i64 0, metadata !441, metadata !970) #2, !dbg !2521
  %curexc_value.i.i.235 = getelementptr inbounds i8, i8* %87, i64 88, !dbg !2522
  %90 = bitcast i8* %curexc_value.i.i.235 to %struct._object**, !dbg !2522
  %91 = load %struct._object*, %struct._object** %90, align 8, !dbg !2522, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %91, i64 0, metadata !442, metadata !970) #2, !dbg !2523
  %curexc_traceback.i.i.236 = getelementptr inbounds i8, i8* %87, i64 96, !dbg !2524
  %92 = bitcast i8* %curexc_traceback.i.i.236 to %struct._object**, !dbg !2524
  %93 = load %struct._object*, %struct._object** %92, align 8, !dbg !2524, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %93, i64 0, metadata !443, metadata !970) #2, !dbg !2525
  tail call void @llvm.dbg.value(metadata %struct._object* %89, i64 0, metadata !448, metadata !970) #2, !dbg !2526
  %cmp18.i.i.237 = icmp eq %struct._object* %89, null, !dbg !2527
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.234, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2528
  br i1 %cmp18.i.i.237, label %if.end.33.i.i.246, label %do.body.20.i.i.241, !dbg !2529

do.body.20.i.i.241:                               ; preds = %if.then.45
  tail call void @llvm.dbg.value(metadata %struct._object* %89, i64 0, metadata !450, metadata !970) #2, !dbg !2530
  %ob_refcnt23.i.i.238 = getelementptr inbounds %struct._object, %struct._object* %89, i64 0, i32 0, !dbg !2531
  %94 = load i64, i64* %ob_refcnt23.i.i.238, align 8, !dbg !2531, !tbaa !996
  %dec24.i.i.239 = add i64 %94, -1, !dbg !2531
  store i64 %dec24.i.i.239, i64* %ob_refcnt23.i.i.238, align 8, !dbg !2531, !tbaa !996
  %cmp25.i.i.240 = icmp eq i64 %dec24.i.i.239, 0, !dbg !2531
  br i1 %cmp25.i.i.240, label %if.else.27.i.i.244, label %if.end.33.i.i.246, !dbg !2532

if.else.27.i.i.244:                               ; preds = %do.body.20.i.i.241
  %ob_type28.i.i.242 = getelementptr inbounds %struct._object, %struct._object* %89, i64 0, i32 1, !dbg !2533
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.242, align 8, !dbg !2533, !tbaa !989
  %tp_dealloc29.i.i.243 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 4, !dbg !2533
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.243, align 8, !dbg !2533, !tbaa !998
  tail call void %96(%struct._object* %89) #2, !dbg !2533
  br label %if.end.33.i.i.246, !dbg !2534

if.end.33.i.i.246:                                ; preds = %if.else.27.i.i.244, %do.body.20.i.i.241, %if.then.45
  tail call void @llvm.dbg.value(metadata %struct._object* %91, i64 0, metadata !453, metadata !970) #2, !dbg !2535
  %cmp39.i.i.245 = icmp eq %struct._object* %91, null, !dbg !2536
  br i1 %cmp39.i.i.245, label %if.end.54.i.i.255, label %do.body.41.i.i.250, !dbg !2537

do.body.41.i.i.250:                               ; preds = %if.end.33.i.i.246
  tail call void @llvm.dbg.value(metadata %struct._object* %91, i64 0, metadata !455, metadata !970) #2, !dbg !2538
  %ob_refcnt44.i.i.247 = getelementptr inbounds %struct._object, %struct._object* %91, i64 0, i32 0, !dbg !2539
  %97 = load i64, i64* %ob_refcnt44.i.i.247, align 8, !dbg !2539, !tbaa !996
  %dec45.i.i.248 = add i64 %97, -1, !dbg !2539
  store i64 %dec45.i.i.248, i64* %ob_refcnt44.i.i.247, align 8, !dbg !2539, !tbaa !996
  %cmp46.i.i.249 = icmp eq i64 %dec45.i.i.248, 0, !dbg !2539
  br i1 %cmp46.i.i.249, label %if.else.48.i.i.253, label %if.end.54.i.i.255, !dbg !2540

if.else.48.i.i.253:                               ; preds = %do.body.41.i.i.250
  %ob_type49.i.i.251 = getelementptr inbounds %struct._object, %struct._object* %91, i64 0, i32 1, !dbg !2541
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.251, align 8, !dbg !2541, !tbaa !989
  %tp_dealloc50.i.i.252 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i64 0, i32 4, !dbg !2541
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.252, align 8, !dbg !2541, !tbaa !998
  tail call void %99(%struct._object* %91) #2, !dbg !2541
  br label %if.end.54.i.i.255, !dbg !2534

if.end.54.i.i.255:                                ; preds = %if.else.48.i.i.253, %do.body.41.i.i.250, %if.end.33.i.i.246
  tail call void @llvm.dbg.value(metadata %struct._object* %93, i64 0, metadata !458, metadata !970) #2, !dbg !2542
  %cmp60.i.i.254 = icmp eq %struct._object* %93, null, !dbg !2543
  br i1 %cmp60.i.i.254, label %if.end.46, label %do.body.62.i.i.259, !dbg !2544

do.body.62.i.i.259:                               ; preds = %if.end.54.i.i.255
  tail call void @llvm.dbg.value(metadata %struct._object* %93, i64 0, metadata !460, metadata !970) #2, !dbg !2545
  %ob_refcnt65.i.i.256 = getelementptr inbounds %struct._object, %struct._object* %93, i64 0, i32 0, !dbg !2546
  %100 = load i64, i64* %ob_refcnt65.i.i.256, align 8, !dbg !2546, !tbaa !996
  %dec66.i.i.257 = add i64 %100, -1, !dbg !2546
  store i64 %dec66.i.i.257, i64* %ob_refcnt65.i.i.256, align 8, !dbg !2546, !tbaa !996
  %cmp67.i.i.258 = icmp eq i64 %dec66.i.i.257, 0, !dbg !2546
  br i1 %cmp67.i.i.258, label %if.else.69.i.i.262, label %if.end.46, !dbg !2547

if.else.69.i.i.262:                               ; preds = %do.body.62.i.i.259
  %ob_type70.i.i.260 = getelementptr inbounds %struct._object, %struct._object* %93, i64 0, i32 1, !dbg !2548
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.260, align 8, !dbg !2548, !tbaa !989
  %tp_dealloc71.i.i.261 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i64 0, i32 4, !dbg !2548
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.261, align 8, !dbg !2548, !tbaa !998
  tail call void %102(%struct._object* %93) #2, !dbg !2548
  br label %if.end.46, !dbg !2534

if.end.46:                                        ; preds = %if.else.69.i.i.262, %do.body.62.i.i.259, %if.end.54.i.i.255, %if.then.42
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !911, metadata !970) #2, !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !912, metadata !970) #2, !dbg !2551
  %cmp1.i = icmp slt i32 %lineno, 1, !dbg !2552
  br i1 %cmp1.i, label %if.end.69, label %PyErr_ProgramTextObject.exit, !dbg !2554

PyErr_ProgramTextObject.exit:                     ; preds = %if.end.46
  %call.i = tail call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !2555
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call.i, i64 0, metadata !913, metadata !970) #2, !dbg !2556
  %call2.i = tail call fastcc %struct._object* @err_programtext(%struct._IO_FILE* %call.i, i32 %lineno) #2, !dbg !2557
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !862, metadata !970), !dbg !2331
  %tobool48 = icmp eq %struct._object* %call2.i, null, !dbg !2558
  br i1 %tobool48, label %if.end.69, label %if.then.49, !dbg !2559

if.then.49:                                       ; preds = %PyErr_ProgramTextObject.exit
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call50 = tail call i32 @_PyObject_SetAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_text, %struct._object* %call2.i) #2, !dbg !2560
  %tobool51 = icmp eq i32 %call50, 0, !dbg !2560
  br i1 %tobool51, label %do.body.54, label %if.then.52, !dbg !2562

if.then.52:                                       ; preds = %if.then.49
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2563
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2566
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2568
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2568
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2568
  %103 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2569, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !435, metadata !970) #2, !dbg !2568
  %curexc_type.i.i.265 = getelementptr inbounds i8, i8* %103, i64 80, !dbg !2570
  %104 = bitcast i8* %curexc_type.i.i.265 to %struct._object**, !dbg !2570
  %105 = load %struct._object*, %struct._object** %104, align 8, !dbg !2570, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %105, i64 0, metadata !441, metadata !970) #2, !dbg !2571
  %curexc_value.i.i.266 = getelementptr inbounds i8, i8* %103, i64 88, !dbg !2572
  %106 = bitcast i8* %curexc_value.i.i.266 to %struct._object**, !dbg !2572
  %107 = load %struct._object*, %struct._object** %106, align 8, !dbg !2572, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %107, i64 0, metadata !442, metadata !970) #2, !dbg !2573
  %curexc_traceback.i.i.267 = getelementptr inbounds i8, i8* %103, i64 96, !dbg !2574
  %108 = bitcast i8* %curexc_traceback.i.i.267 to %struct._object**, !dbg !2574
  %109 = load %struct._object*, %struct._object** %108, align 8, !dbg !2574, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %109, i64 0, metadata !443, metadata !970) #2, !dbg !2575
  tail call void @llvm.dbg.value(metadata %struct._object* %105, i64 0, metadata !448, metadata !970) #2, !dbg !2576
  %cmp18.i.i.268 = icmp eq %struct._object* %105, null, !dbg !2577
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.265, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2578
  br i1 %cmp18.i.i.268, label %if.end.33.i.i.277, label %do.body.20.i.i.272, !dbg !2579

do.body.20.i.i.272:                               ; preds = %if.then.52
  tail call void @llvm.dbg.value(metadata %struct._object* %105, i64 0, metadata !450, metadata !970) #2, !dbg !2580
  %ob_refcnt23.i.i.269 = getelementptr inbounds %struct._object, %struct._object* %105, i64 0, i32 0, !dbg !2581
  %110 = load i64, i64* %ob_refcnt23.i.i.269, align 8, !dbg !2581, !tbaa !996
  %dec24.i.i.270 = add i64 %110, -1, !dbg !2581
  store i64 %dec24.i.i.270, i64* %ob_refcnt23.i.i.269, align 8, !dbg !2581, !tbaa !996
  %cmp25.i.i.271 = icmp eq i64 %dec24.i.i.270, 0, !dbg !2581
  br i1 %cmp25.i.i.271, label %if.else.27.i.i.275, label %if.end.33.i.i.277, !dbg !2582

if.else.27.i.i.275:                               ; preds = %do.body.20.i.i.272
  %ob_type28.i.i.273 = getelementptr inbounds %struct._object, %struct._object* %105, i64 0, i32 1, !dbg !2583
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.273, align 8, !dbg !2583, !tbaa !989
  %tp_dealloc29.i.i.274 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i64 0, i32 4, !dbg !2583
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.274, align 8, !dbg !2583, !tbaa !998
  tail call void %112(%struct._object* %105) #2, !dbg !2583
  br label %if.end.33.i.i.277, !dbg !2584

if.end.33.i.i.277:                                ; preds = %if.else.27.i.i.275, %do.body.20.i.i.272, %if.then.52
  tail call void @llvm.dbg.value(metadata %struct._object* %107, i64 0, metadata !453, metadata !970) #2, !dbg !2585
  %cmp39.i.i.276 = icmp eq %struct._object* %107, null, !dbg !2586
  br i1 %cmp39.i.i.276, label %if.end.54.i.i.286, label %do.body.41.i.i.281, !dbg !2587

do.body.41.i.i.281:                               ; preds = %if.end.33.i.i.277
  tail call void @llvm.dbg.value(metadata %struct._object* %107, i64 0, metadata !455, metadata !970) #2, !dbg !2588
  %ob_refcnt44.i.i.278 = getelementptr inbounds %struct._object, %struct._object* %107, i64 0, i32 0, !dbg !2589
  %113 = load i64, i64* %ob_refcnt44.i.i.278, align 8, !dbg !2589, !tbaa !996
  %dec45.i.i.279 = add i64 %113, -1, !dbg !2589
  store i64 %dec45.i.i.279, i64* %ob_refcnt44.i.i.278, align 8, !dbg !2589, !tbaa !996
  %cmp46.i.i.280 = icmp eq i64 %dec45.i.i.279, 0, !dbg !2589
  br i1 %cmp46.i.i.280, label %if.else.48.i.i.284, label %if.end.54.i.i.286, !dbg !2590

if.else.48.i.i.284:                               ; preds = %do.body.41.i.i.281
  %ob_type49.i.i.282 = getelementptr inbounds %struct._object, %struct._object* %107, i64 0, i32 1, !dbg !2591
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.282, align 8, !dbg !2591, !tbaa !989
  %tp_dealloc50.i.i.283 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i64 0, i32 4, !dbg !2591
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.283, align 8, !dbg !2591, !tbaa !998
  tail call void %115(%struct._object* %107) #2, !dbg !2591
  br label %if.end.54.i.i.286, !dbg !2584

if.end.54.i.i.286:                                ; preds = %if.else.48.i.i.284, %do.body.41.i.i.281, %if.end.33.i.i.277
  tail call void @llvm.dbg.value(metadata %struct._object* %109, i64 0, metadata !458, metadata !970) #2, !dbg !2592
  %cmp60.i.i.285 = icmp eq %struct._object* %109, null, !dbg !2593
  br i1 %cmp60.i.i.285, label %do.body.54, label %do.body.62.i.i.290, !dbg !2594

do.body.62.i.i.290:                               ; preds = %if.end.54.i.i.286
  tail call void @llvm.dbg.value(metadata %struct._object* %109, i64 0, metadata !460, metadata !970) #2, !dbg !2595
  %ob_refcnt65.i.i.287 = getelementptr inbounds %struct._object, %struct._object* %109, i64 0, i32 0, !dbg !2596
  %116 = load i64, i64* %ob_refcnt65.i.i.287, align 8, !dbg !2596, !tbaa !996
  %dec66.i.i.288 = add i64 %116, -1, !dbg !2596
  store i64 %dec66.i.i.288, i64* %ob_refcnt65.i.i.287, align 8, !dbg !2596, !tbaa !996
  %cmp67.i.i.289 = icmp eq i64 %dec66.i.i.288, 0, !dbg !2596
  br i1 %cmp67.i.i.289, label %if.else.69.i.i.293, label %do.body.54, !dbg !2597

if.else.69.i.i.293:                               ; preds = %do.body.62.i.i.290
  %ob_type70.i.i.291 = getelementptr inbounds %struct._object, %struct._object* %109, i64 0, i32 1, !dbg !2598
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.291, align 8, !dbg !2598, !tbaa !989
  %tp_dealloc71.i.i.292 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i64 0, i32 4, !dbg !2598
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.292, align 8, !dbg !2598, !tbaa !998
  tail call void %118(%struct._object* %109) #2, !dbg !2598
  br label %do.body.54, !dbg !2584

do.body.54:                                       ; preds = %if.else.69.i.i.293, %do.body.62.i.i.290, %if.end.54.i.i.286, %if.then.49
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !873, metadata !970), !dbg !2599
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 0, !dbg !2601
  %119 = load i64, i64* %ob_refcnt57, align 8, !dbg !2601, !tbaa !996
  %dec58 = add i64 %119, -1, !dbg !2601
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !2601, !tbaa !996
  %cmp59 = icmp eq i64 %dec58, 0, !dbg !2601
  br i1 %cmp59, label %if.else.62, label %if.end.69, !dbg !2603

if.else.62:                                       ; preds = %do.body.54
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 1, !dbg !2604
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !2604, !tbaa !989
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i64 0, i32 4, !dbg !2604
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !2604, !tbaa !998
  tail call void %121(%struct._object* %call2.i) #2, !dbg !2604
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.39.if.end.69_crit_edge, %if.end.46, %if.else.62, %do.body.54, %PyErr_ProgramTextObject.exit
  %122 = phi i64 [ %85, %if.end.39.if.end.69_crit_edge ], [ %86, %if.end.46 ], [ %86, %if.else.62 ], [ %86, %do.body.54 ], [ %86, %PyErr_ProgramTextObject.exit ], !dbg !2606
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call70 = tail call i32 @_PyObject_SetAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* nonnull @_Py_NoneStruct) #2, !dbg !2607
  %tobool71 = icmp eq i32 %call70, 0, !dbg !2607
  br i1 %tobool71, label %if.end.73, label %if.then.72, !dbg !2608

if.then.72:                                       ; preds = %if.end.69
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2609
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2615
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2615
  %123 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2616, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !435, metadata !970) #2, !dbg !2615
  %curexc_type.i.i.295 = getelementptr inbounds i8, i8* %123, i64 80, !dbg !2617
  %124 = bitcast i8* %curexc_type.i.i.295 to %struct._object**, !dbg !2617
  %125 = load %struct._object*, %struct._object** %124, align 8, !dbg !2617, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %125, i64 0, metadata !441, metadata !970) #2, !dbg !2618
  %curexc_value.i.i.296 = getelementptr inbounds i8, i8* %123, i64 88, !dbg !2619
  %126 = bitcast i8* %curexc_value.i.i.296 to %struct._object**, !dbg !2619
  %127 = load %struct._object*, %struct._object** %126, align 8, !dbg !2619, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %127, i64 0, metadata !442, metadata !970) #2, !dbg !2620
  %curexc_traceback.i.i.297 = getelementptr inbounds i8, i8* %123, i64 96, !dbg !2621
  %128 = bitcast i8* %curexc_traceback.i.i.297 to %struct._object**, !dbg !2621
  %129 = load %struct._object*, %struct._object** %128, align 8, !dbg !2621, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %129, i64 0, metadata !443, metadata !970) #2, !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct._object* %125, i64 0, metadata !448, metadata !970) #2, !dbg !2623
  %cmp18.i.i.298 = icmp eq %struct._object* %125, null, !dbg !2624
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.295, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2625
  br i1 %cmp18.i.i.298, label %if.end.33.i.i.307, label %do.body.20.i.i.302, !dbg !2626

do.body.20.i.i.302:                               ; preds = %if.then.72
  tail call void @llvm.dbg.value(metadata %struct._object* %125, i64 0, metadata !450, metadata !970) #2, !dbg !2627
  %ob_refcnt23.i.i.299 = getelementptr inbounds %struct._object, %struct._object* %125, i64 0, i32 0, !dbg !2628
  %130 = load i64, i64* %ob_refcnt23.i.i.299, align 8, !dbg !2628, !tbaa !996
  %dec24.i.i.300 = add i64 %130, -1, !dbg !2628
  store i64 %dec24.i.i.300, i64* %ob_refcnt23.i.i.299, align 8, !dbg !2628, !tbaa !996
  %cmp25.i.i.301 = icmp eq i64 %dec24.i.i.300, 0, !dbg !2628
  br i1 %cmp25.i.i.301, label %if.else.27.i.i.305, label %if.end.33.i.i.307, !dbg !2629

if.else.27.i.i.305:                               ; preds = %do.body.20.i.i.302
  %ob_type28.i.i.303 = getelementptr inbounds %struct._object, %struct._object* %125, i64 0, i32 1, !dbg !2630
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.303, align 8, !dbg !2630, !tbaa !989
  %tp_dealloc29.i.i.304 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i64 0, i32 4, !dbg !2630
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.304, align 8, !dbg !2630, !tbaa !998
  tail call void %132(%struct._object* %125) #2, !dbg !2630
  br label %if.end.33.i.i.307, !dbg !2631

if.end.33.i.i.307:                                ; preds = %if.else.27.i.i.305, %do.body.20.i.i.302, %if.then.72
  tail call void @llvm.dbg.value(metadata %struct._object* %127, i64 0, metadata !453, metadata !970) #2, !dbg !2632
  %cmp39.i.i.306 = icmp eq %struct._object* %127, null, !dbg !2633
  br i1 %cmp39.i.i.306, label %if.end.54.i.i.316, label %do.body.41.i.i.311, !dbg !2634

do.body.41.i.i.311:                               ; preds = %if.end.33.i.i.307
  tail call void @llvm.dbg.value(metadata %struct._object* %127, i64 0, metadata !455, metadata !970) #2, !dbg !2635
  %ob_refcnt44.i.i.308 = getelementptr inbounds %struct._object, %struct._object* %127, i64 0, i32 0, !dbg !2636
  %133 = load i64, i64* %ob_refcnt44.i.i.308, align 8, !dbg !2636, !tbaa !996
  %dec45.i.i.309 = add i64 %133, -1, !dbg !2636
  store i64 %dec45.i.i.309, i64* %ob_refcnt44.i.i.308, align 8, !dbg !2636, !tbaa !996
  %cmp46.i.i.310 = icmp eq i64 %dec45.i.i.309, 0, !dbg !2636
  br i1 %cmp46.i.i.310, label %if.else.48.i.i.314, label %if.end.54.i.i.316, !dbg !2637

if.else.48.i.i.314:                               ; preds = %do.body.41.i.i.311
  %ob_type49.i.i.312 = getelementptr inbounds %struct._object, %struct._object* %127, i64 0, i32 1, !dbg !2638
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.312, align 8, !dbg !2638, !tbaa !989
  %tp_dealloc50.i.i.313 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i64 0, i32 4, !dbg !2638
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.313, align 8, !dbg !2638, !tbaa !998
  tail call void %135(%struct._object* %127) #2, !dbg !2638
  br label %if.end.54.i.i.316, !dbg !2631

if.end.54.i.i.316:                                ; preds = %if.else.48.i.i.314, %do.body.41.i.i.311, %if.end.33.i.i.307
  tail call void @llvm.dbg.value(metadata %struct._object* %129, i64 0, metadata !458, metadata !970) #2, !dbg !2639
  %cmp60.i.i.315 = icmp eq %struct._object* %129, null, !dbg !2640
  br i1 %cmp60.i.i.315, label %if.end.73, label %do.body.62.i.i.320, !dbg !2641

do.body.62.i.i.320:                               ; preds = %if.end.54.i.i.316
  tail call void @llvm.dbg.value(metadata %struct._object* %129, i64 0, metadata !460, metadata !970) #2, !dbg !2642
  %ob_refcnt65.i.i.317 = getelementptr inbounds %struct._object, %struct._object* %129, i64 0, i32 0, !dbg !2643
  %136 = load i64, i64* %ob_refcnt65.i.i.317, align 8, !dbg !2643, !tbaa !996
  %dec66.i.i.318 = add i64 %136, -1, !dbg !2643
  store i64 %dec66.i.i.318, i64* %ob_refcnt65.i.i.317, align 8, !dbg !2643, !tbaa !996
  %cmp67.i.i.319 = icmp eq i64 %dec66.i.i.318, 0, !dbg !2643
  br i1 %cmp67.i.i.319, label %if.else.69.i.i.323, label %if.end.73, !dbg !2644

if.else.69.i.i.323:                               ; preds = %do.body.62.i.i.320
  %ob_type70.i.i.321 = getelementptr inbounds %struct._object, %struct._object* %129, i64 0, i32 1, !dbg !2645
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.321, align 8, !dbg !2645, !tbaa !989
  %tp_dealloc71.i.i.322 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i64 0, i32 4, !dbg !2645
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.322, align 8, !dbg !2645, !tbaa !998
  tail call void %138(%struct._object* %129) #2, !dbg !2645
  br label %if.end.73, !dbg !2631

if.end.73:                                        ; preds = %if.else.69.i.i.323, %do.body.62.i.i.320, %if.end.54.i.i.316, %if.end.69
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !859, metadata !970), !dbg !2312
  %139 = load %struct._object*, %struct._object** %exc, align 8, !dbg !2646, !tbaa !978
  %140 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !2647, !tbaa !978
  %cmp74 = icmp eq %struct._object* %139, %140, !dbg !2648
  %141 = ptrtoint %struct._object* %139 to i64, !dbg !2649
  br i1 %cmp74, label %if.end.112, label %if.then.76, !dbg !2650

if.then.76:                                       ; preds = %if.end.73
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call77 = tail call i32 @_PyObject_HasAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_msg) #2, !dbg !2651
  %tobool78 = icmp eq i32 %call77, 0, !dbg !2651
  br i1 %tobool78, label %if.then.79, label %if.end.103, !dbg !2652

if.then.79:                                       ; preds = %if.then.76
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call80 = tail call %struct._object* @PyObject_Str(%struct._object* %.pre) #2, !dbg !2653
  tail call void @llvm.dbg.value(metadata %struct._object* %call80, i64 0, metadata !862, metadata !970), !dbg !2331
  %tobool81 = icmp eq %struct._object* %call80, null, !dbg !2654
  br i1 %tobool81, label %if.else.101, label %if.then.82, !dbg !2655

if.then.82:                                       ; preds = %if.then.79
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call83 = tail call i32 @_PyObject_SetAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_msg, %struct._object* %call80) #2, !dbg !2656
  %tobool84 = icmp eq i32 %call83, 0, !dbg !2656
  br i1 %tobool84, label %do.body.87, label %if.then.85, !dbg !2658

if.then.85:                                       ; preds = %if.then.82
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2664
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2664
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2664
  %142 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2665, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !435, metadata !970) #2, !dbg !2664
  %curexc_type.i.i.325 = getelementptr inbounds i8, i8* %142, i64 80, !dbg !2666
  %143 = bitcast i8* %curexc_type.i.i.325 to %struct._object**, !dbg !2666
  %144 = load %struct._object*, %struct._object** %143, align 8, !dbg !2666, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %144, i64 0, metadata !441, metadata !970) #2, !dbg !2667
  %curexc_value.i.i.326 = getelementptr inbounds i8, i8* %142, i64 88, !dbg !2668
  %145 = bitcast i8* %curexc_value.i.i.326 to %struct._object**, !dbg !2668
  %146 = load %struct._object*, %struct._object** %145, align 8, !dbg !2668, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %146, i64 0, metadata !442, metadata !970) #2, !dbg !2669
  %curexc_traceback.i.i.327 = getelementptr inbounds i8, i8* %142, i64 96, !dbg !2670
  %147 = bitcast i8* %curexc_traceback.i.i.327 to %struct._object**, !dbg !2670
  %148 = load %struct._object*, %struct._object** %147, align 8, !dbg !2670, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %148, i64 0, metadata !443, metadata !970) #2, !dbg !2671
  tail call void @llvm.dbg.value(metadata %struct._object* %144, i64 0, metadata !448, metadata !970) #2, !dbg !2672
  %cmp18.i.i.328 = icmp eq %struct._object* %144, null, !dbg !2673
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.325, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2674
  br i1 %cmp18.i.i.328, label %if.end.33.i.i.337, label %do.body.20.i.i.332, !dbg !2675

do.body.20.i.i.332:                               ; preds = %if.then.85
  tail call void @llvm.dbg.value(metadata %struct._object* %144, i64 0, metadata !450, metadata !970) #2, !dbg !2676
  %ob_refcnt23.i.i.329 = getelementptr inbounds %struct._object, %struct._object* %144, i64 0, i32 0, !dbg !2677
  %149 = load i64, i64* %ob_refcnt23.i.i.329, align 8, !dbg !2677, !tbaa !996
  %dec24.i.i.330 = add i64 %149, -1, !dbg !2677
  store i64 %dec24.i.i.330, i64* %ob_refcnt23.i.i.329, align 8, !dbg !2677, !tbaa !996
  %cmp25.i.i.331 = icmp eq i64 %dec24.i.i.330, 0, !dbg !2677
  br i1 %cmp25.i.i.331, label %if.else.27.i.i.335, label %if.end.33.i.i.337, !dbg !2678

if.else.27.i.i.335:                               ; preds = %do.body.20.i.i.332
  %ob_type28.i.i.333 = getelementptr inbounds %struct._object, %struct._object* %144, i64 0, i32 1, !dbg !2679
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.333, align 8, !dbg !2679, !tbaa !989
  %tp_dealloc29.i.i.334 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i64 0, i32 4, !dbg !2679
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.334, align 8, !dbg !2679, !tbaa !998
  tail call void %151(%struct._object* %144) #2, !dbg !2679
  br label %if.end.33.i.i.337, !dbg !2680

if.end.33.i.i.337:                                ; preds = %if.else.27.i.i.335, %do.body.20.i.i.332, %if.then.85
  tail call void @llvm.dbg.value(metadata %struct._object* %146, i64 0, metadata !453, metadata !970) #2, !dbg !2681
  %cmp39.i.i.336 = icmp eq %struct._object* %146, null, !dbg !2682
  br i1 %cmp39.i.i.336, label %if.end.54.i.i.346, label %do.body.41.i.i.341, !dbg !2683

do.body.41.i.i.341:                               ; preds = %if.end.33.i.i.337
  tail call void @llvm.dbg.value(metadata %struct._object* %146, i64 0, metadata !455, metadata !970) #2, !dbg !2684
  %ob_refcnt44.i.i.338 = getelementptr inbounds %struct._object, %struct._object* %146, i64 0, i32 0, !dbg !2685
  %152 = load i64, i64* %ob_refcnt44.i.i.338, align 8, !dbg !2685, !tbaa !996
  %dec45.i.i.339 = add i64 %152, -1, !dbg !2685
  store i64 %dec45.i.i.339, i64* %ob_refcnt44.i.i.338, align 8, !dbg !2685, !tbaa !996
  %cmp46.i.i.340 = icmp eq i64 %dec45.i.i.339, 0, !dbg !2685
  br i1 %cmp46.i.i.340, label %if.else.48.i.i.344, label %if.end.54.i.i.346, !dbg !2686

if.else.48.i.i.344:                               ; preds = %do.body.41.i.i.341
  %ob_type49.i.i.342 = getelementptr inbounds %struct._object, %struct._object* %146, i64 0, i32 1, !dbg !2687
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.342, align 8, !dbg !2687, !tbaa !989
  %tp_dealloc50.i.i.343 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i64 0, i32 4, !dbg !2687
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.343, align 8, !dbg !2687, !tbaa !998
  tail call void %154(%struct._object* %146) #2, !dbg !2687
  br label %if.end.54.i.i.346, !dbg !2680

if.end.54.i.i.346:                                ; preds = %if.else.48.i.i.344, %do.body.41.i.i.341, %if.end.33.i.i.337
  tail call void @llvm.dbg.value(metadata %struct._object* %148, i64 0, metadata !458, metadata !970) #2, !dbg !2688
  %cmp60.i.i.345 = icmp eq %struct._object* %148, null, !dbg !2689
  br i1 %cmp60.i.i.345, label %do.body.87, label %do.body.62.i.i.350, !dbg !2690

do.body.62.i.i.350:                               ; preds = %if.end.54.i.i.346
  tail call void @llvm.dbg.value(metadata %struct._object* %148, i64 0, metadata !460, metadata !970) #2, !dbg !2691
  %ob_refcnt65.i.i.347 = getelementptr inbounds %struct._object, %struct._object* %148, i64 0, i32 0, !dbg !2692
  %155 = load i64, i64* %ob_refcnt65.i.i.347, align 8, !dbg !2692, !tbaa !996
  %dec66.i.i.348 = add i64 %155, -1, !dbg !2692
  store i64 %dec66.i.i.348, i64* %ob_refcnt65.i.i.347, align 8, !dbg !2692, !tbaa !996
  %cmp67.i.i.349 = icmp eq i64 %dec66.i.i.348, 0, !dbg !2692
  br i1 %cmp67.i.i.349, label %if.else.69.i.i.353, label %do.body.87, !dbg !2693

if.else.69.i.i.353:                               ; preds = %do.body.62.i.i.350
  %ob_type70.i.i.351 = getelementptr inbounds %struct._object, %struct._object* %148, i64 0, i32 1, !dbg !2694
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.351, align 8, !dbg !2694, !tbaa !989
  %tp_dealloc71.i.i.352 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i64 0, i32 4, !dbg !2694
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.352, align 8, !dbg !2694, !tbaa !998
  tail call void %157(%struct._object* %148) #2, !dbg !2694
  br label %do.body.87, !dbg !2680

do.body.87:                                       ; preds = %if.else.69.i.i.353, %do.body.62.i.i.350, %if.end.54.i.i.346, %if.then.82
  tail call void @llvm.dbg.value(metadata %struct._object* %call80, i64 0, metadata !879, metadata !970), !dbg !2695
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %call80, i64 0, i32 0, !dbg !2697
  %158 = load i64, i64* %ob_refcnt90, align 8, !dbg !2697, !tbaa !996
  %dec91 = add i64 %158, -1, !dbg !2697
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !2697, !tbaa !996
  %cmp92 = icmp eq i64 %dec91, 0, !dbg !2697
  br i1 %cmp92, label %if.else.95, label %if.end.103, !dbg !2699

if.else.95:                                       ; preds = %do.body.87
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %call80, i64 0, i32 1, !dbg !2700
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !2700, !tbaa !989
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i64 0, i32 4, !dbg !2700
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !2700, !tbaa !998
  tail call void %160(%struct._object* %call80) #2, !dbg !2700
  br label %if.end.103

if.else.101:                                      ; preds = %if.then.79
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2702
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2706
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2707
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2708
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2708
  %161 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2709, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !435, metadata !970) #2, !dbg !2708
  %curexc_type.i.i.355 = getelementptr inbounds i8, i8* %161, i64 80, !dbg !2710
  %162 = bitcast i8* %curexc_type.i.i.355 to %struct._object**, !dbg !2710
  %163 = load %struct._object*, %struct._object** %162, align 8, !dbg !2710, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %163, i64 0, metadata !441, metadata !970) #2, !dbg !2711
  %curexc_value.i.i.356 = getelementptr inbounds i8, i8* %161, i64 88, !dbg !2712
  %164 = bitcast i8* %curexc_value.i.i.356 to %struct._object**, !dbg !2712
  %165 = load %struct._object*, %struct._object** %164, align 8, !dbg !2712, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %165, i64 0, metadata !442, metadata !970) #2, !dbg !2713
  %curexc_traceback.i.i.357 = getelementptr inbounds i8, i8* %161, i64 96, !dbg !2714
  %166 = bitcast i8* %curexc_traceback.i.i.357 to %struct._object**, !dbg !2714
  %167 = load %struct._object*, %struct._object** %166, align 8, !dbg !2714, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %167, i64 0, metadata !443, metadata !970) #2, !dbg !2715
  tail call void @llvm.dbg.value(metadata %struct._object* %163, i64 0, metadata !448, metadata !970) #2, !dbg !2716
  %cmp18.i.i.358 = icmp eq %struct._object* %163, null, !dbg !2717
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.355, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2718
  br i1 %cmp18.i.i.358, label %if.end.33.i.i.367, label %do.body.20.i.i.362, !dbg !2719

do.body.20.i.i.362:                               ; preds = %if.else.101
  tail call void @llvm.dbg.value(metadata %struct._object* %163, i64 0, metadata !450, metadata !970) #2, !dbg !2720
  %ob_refcnt23.i.i.359 = getelementptr inbounds %struct._object, %struct._object* %163, i64 0, i32 0, !dbg !2721
  %168 = load i64, i64* %ob_refcnt23.i.i.359, align 8, !dbg !2721, !tbaa !996
  %dec24.i.i.360 = add i64 %168, -1, !dbg !2721
  store i64 %dec24.i.i.360, i64* %ob_refcnt23.i.i.359, align 8, !dbg !2721, !tbaa !996
  %cmp25.i.i.361 = icmp eq i64 %dec24.i.i.360, 0, !dbg !2721
  br i1 %cmp25.i.i.361, label %if.else.27.i.i.365, label %if.end.33.i.i.367, !dbg !2722

if.else.27.i.i.365:                               ; preds = %do.body.20.i.i.362
  %ob_type28.i.i.363 = getelementptr inbounds %struct._object, %struct._object* %163, i64 0, i32 1, !dbg !2723
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.363, align 8, !dbg !2723, !tbaa !989
  %tp_dealloc29.i.i.364 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i64 0, i32 4, !dbg !2723
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.364, align 8, !dbg !2723, !tbaa !998
  tail call void %170(%struct._object* %163) #2, !dbg !2723
  br label %if.end.33.i.i.367, !dbg !2724

if.end.33.i.i.367:                                ; preds = %if.else.27.i.i.365, %do.body.20.i.i.362, %if.else.101
  tail call void @llvm.dbg.value(metadata %struct._object* %165, i64 0, metadata !453, metadata !970) #2, !dbg !2725
  %cmp39.i.i.366 = icmp eq %struct._object* %165, null, !dbg !2726
  br i1 %cmp39.i.i.366, label %if.end.54.i.i.376, label %do.body.41.i.i.371, !dbg !2727

do.body.41.i.i.371:                               ; preds = %if.end.33.i.i.367
  tail call void @llvm.dbg.value(metadata %struct._object* %165, i64 0, metadata !455, metadata !970) #2, !dbg !2728
  %ob_refcnt44.i.i.368 = getelementptr inbounds %struct._object, %struct._object* %165, i64 0, i32 0, !dbg !2729
  %171 = load i64, i64* %ob_refcnt44.i.i.368, align 8, !dbg !2729, !tbaa !996
  %dec45.i.i.369 = add i64 %171, -1, !dbg !2729
  store i64 %dec45.i.i.369, i64* %ob_refcnt44.i.i.368, align 8, !dbg !2729, !tbaa !996
  %cmp46.i.i.370 = icmp eq i64 %dec45.i.i.369, 0, !dbg !2729
  br i1 %cmp46.i.i.370, label %if.else.48.i.i.374, label %if.end.54.i.i.376, !dbg !2730

if.else.48.i.i.374:                               ; preds = %do.body.41.i.i.371
  %ob_type49.i.i.372 = getelementptr inbounds %struct._object, %struct._object* %165, i64 0, i32 1, !dbg !2731
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.372, align 8, !dbg !2731, !tbaa !989
  %tp_dealloc50.i.i.373 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i64 0, i32 4, !dbg !2731
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.373, align 8, !dbg !2731, !tbaa !998
  tail call void %173(%struct._object* %165) #2, !dbg !2731
  br label %if.end.54.i.i.376, !dbg !2724

if.end.54.i.i.376:                                ; preds = %if.else.48.i.i.374, %do.body.41.i.i.371, %if.end.33.i.i.367
  tail call void @llvm.dbg.value(metadata %struct._object* %167, i64 0, metadata !458, metadata !970) #2, !dbg !2732
  %cmp60.i.i.375 = icmp eq %struct._object* %167, null, !dbg !2733
  br i1 %cmp60.i.i.375, label %if.end.103, label %do.body.62.i.i.380, !dbg !2734

do.body.62.i.i.380:                               ; preds = %if.end.54.i.i.376
  tail call void @llvm.dbg.value(metadata %struct._object* %167, i64 0, metadata !460, metadata !970) #2, !dbg !2735
  %ob_refcnt65.i.i.377 = getelementptr inbounds %struct._object, %struct._object* %167, i64 0, i32 0, !dbg !2736
  %174 = load i64, i64* %ob_refcnt65.i.i.377, align 8, !dbg !2736, !tbaa !996
  %dec66.i.i.378 = add i64 %174, -1, !dbg !2736
  store i64 %dec66.i.i.378, i64* %ob_refcnt65.i.i.377, align 8, !dbg !2736, !tbaa !996
  %cmp67.i.i.379 = icmp eq i64 %dec66.i.i.378, 0, !dbg !2736
  br i1 %cmp67.i.i.379, label %if.else.69.i.i.383, label %if.end.103, !dbg !2737

if.else.69.i.i.383:                               ; preds = %do.body.62.i.i.380
  %ob_type70.i.i.381 = getelementptr inbounds %struct._object, %struct._object* %167, i64 0, i32 1, !dbg !2738
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.381, align 8, !dbg !2738, !tbaa !989
  %tp_dealloc71.i.i.382 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i64 0, i32 4, !dbg !2738
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.382, align 8, !dbg !2738, !tbaa !998
  tail call void %176(%struct._object* %167) #2, !dbg !2738
  br label %if.end.103, !dbg !2724

if.end.103:                                       ; preds = %if.else.69.i.i.383, %do.body.62.i.i.380, %if.end.54.i.i.376, %if.else.95, %do.body.87, %if.then.76
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call104 = tail call i32 @_PyObject_HasAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_print_file_and_line) #2, !dbg !2739
  %tobool105 = icmp eq i32 %call104, 0, !dbg !2739
  br i1 %tobool105, label %if.then.106, label %if.end.112, !dbg !2741

if.then.106:                                      ; preds = %if.end.103
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  %call107 = tail call i32 @_PyObject_SetAttrId(%struct._object* %.pre, %struct._Py_Identifier* nonnull @PyErr_SyntaxLocationObject.PyId_print_file_and_line, %struct._object* nonnull @_Py_NoneStruct) #2, !dbg !2742
  %tobool108 = icmp eq i32 %call107, 0, !dbg !2742
  br i1 %tobool108, label %if.end.112, label %if.then.109, !dbg !2745

if.then.109:                                      ; preds = %if.then.106
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !424, metadata !970) #2, !dbg !2746
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !425, metadata !970) #2, !dbg !2749
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !426, metadata !970) #2, !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2751
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2751
  %177 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2752, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !435, metadata !970) #2, !dbg !2751
  %curexc_type.i.i.385 = getelementptr inbounds i8, i8* %177, i64 80, !dbg !2753
  %178 = bitcast i8* %curexc_type.i.i.385 to %struct._object**, !dbg !2753
  %179 = load %struct._object*, %struct._object** %178, align 8, !dbg !2753, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %179, i64 0, metadata !441, metadata !970) #2, !dbg !2754
  %curexc_value.i.i.386 = getelementptr inbounds i8, i8* %177, i64 88, !dbg !2755
  %180 = bitcast i8* %curexc_value.i.i.386 to %struct._object**, !dbg !2755
  %181 = load %struct._object*, %struct._object** %180, align 8, !dbg !2755, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %181, i64 0, metadata !442, metadata !970) #2, !dbg !2756
  %curexc_traceback.i.i.387 = getelementptr inbounds i8, i8* %177, i64 96, !dbg !2757
  %182 = bitcast i8* %curexc_traceback.i.i.387 to %struct._object**, !dbg !2757
  %183 = load %struct._object*, %struct._object** %182, align 8, !dbg !2757, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %183, i64 0, metadata !443, metadata !970) #2, !dbg !2758
  tail call void @llvm.dbg.value(metadata %struct._object* %179, i64 0, metadata !448, metadata !970) #2, !dbg !2759
  %cmp18.i.i.388 = icmp eq %struct._object* %179, null, !dbg !2760
  tail call void @llvm.memset.p0i8.i64(i8* %curexc_type.i.i.385, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2761
  br i1 %cmp18.i.i.388, label %if.end.33.i.i.397, label %do.body.20.i.i.392, !dbg !2762

do.body.20.i.i.392:                               ; preds = %if.then.109
  tail call void @llvm.dbg.value(metadata %struct._object* %179, i64 0, metadata !450, metadata !970) #2, !dbg !2763
  %ob_refcnt23.i.i.389 = getelementptr inbounds %struct._object, %struct._object* %179, i64 0, i32 0, !dbg !2764
  %184 = load i64, i64* %ob_refcnt23.i.i.389, align 8, !dbg !2764, !tbaa !996
  %dec24.i.i.390 = add i64 %184, -1, !dbg !2764
  store i64 %dec24.i.i.390, i64* %ob_refcnt23.i.i.389, align 8, !dbg !2764, !tbaa !996
  %cmp25.i.i.391 = icmp eq i64 %dec24.i.i.390, 0, !dbg !2764
  br i1 %cmp25.i.i.391, label %if.else.27.i.i.395, label %if.end.33.i.i.397, !dbg !2765

if.else.27.i.i.395:                               ; preds = %do.body.20.i.i.392
  %ob_type28.i.i.393 = getelementptr inbounds %struct._object, %struct._object* %179, i64 0, i32 1, !dbg !2766
  %185 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i.i.393, align 8, !dbg !2766, !tbaa !989
  %tp_dealloc29.i.i.394 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %185, i64 0, i32 4, !dbg !2766
  %186 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i.i.394, align 8, !dbg !2766, !tbaa !998
  tail call void %186(%struct._object* %179) #2, !dbg !2766
  br label %if.end.33.i.i.397, !dbg !2767

if.end.33.i.i.397:                                ; preds = %if.else.27.i.i.395, %do.body.20.i.i.392, %if.then.109
  tail call void @llvm.dbg.value(metadata %struct._object* %181, i64 0, metadata !453, metadata !970) #2, !dbg !2768
  %cmp39.i.i.396 = icmp eq %struct._object* %181, null, !dbg !2769
  br i1 %cmp39.i.i.396, label %if.end.54.i.i.406, label %do.body.41.i.i.401, !dbg !2770

do.body.41.i.i.401:                               ; preds = %if.end.33.i.i.397
  tail call void @llvm.dbg.value(metadata %struct._object* %181, i64 0, metadata !455, metadata !970) #2, !dbg !2771
  %ob_refcnt44.i.i.398 = getelementptr inbounds %struct._object, %struct._object* %181, i64 0, i32 0, !dbg !2772
  %187 = load i64, i64* %ob_refcnt44.i.i.398, align 8, !dbg !2772, !tbaa !996
  %dec45.i.i.399 = add i64 %187, -1, !dbg !2772
  store i64 %dec45.i.i.399, i64* %ob_refcnt44.i.i.398, align 8, !dbg !2772, !tbaa !996
  %cmp46.i.i.400 = icmp eq i64 %dec45.i.i.399, 0, !dbg !2772
  br i1 %cmp46.i.i.400, label %if.else.48.i.i.404, label %if.end.54.i.i.406, !dbg !2773

if.else.48.i.i.404:                               ; preds = %do.body.41.i.i.401
  %ob_type49.i.i.402 = getelementptr inbounds %struct._object, %struct._object* %181, i64 0, i32 1, !dbg !2774
  %188 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i.i.402, align 8, !dbg !2774, !tbaa !989
  %tp_dealloc50.i.i.403 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %188, i64 0, i32 4, !dbg !2774
  %189 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i.i.403, align 8, !dbg !2774, !tbaa !998
  tail call void %189(%struct._object* %181) #2, !dbg !2774
  br label %if.end.54.i.i.406, !dbg !2767

if.end.54.i.i.406:                                ; preds = %if.else.48.i.i.404, %do.body.41.i.i.401, %if.end.33.i.i.397
  tail call void @llvm.dbg.value(metadata %struct._object* %183, i64 0, metadata !458, metadata !970) #2, !dbg !2775
  %cmp60.i.i.405 = icmp eq %struct._object* %183, null, !dbg !2776
  br i1 %cmp60.i.i.405, label %if.end.112, label %do.body.62.i.i.410, !dbg !2777

do.body.62.i.i.410:                               ; preds = %if.end.54.i.i.406
  tail call void @llvm.dbg.value(metadata %struct._object* %183, i64 0, metadata !460, metadata !970) #2, !dbg !2778
  %ob_refcnt65.i.i.407 = getelementptr inbounds %struct._object, %struct._object* %183, i64 0, i32 0, !dbg !2779
  %190 = load i64, i64* %ob_refcnt65.i.i.407, align 8, !dbg !2779, !tbaa !996
  %dec66.i.i.408 = add i64 %190, -1, !dbg !2779
  store i64 %dec66.i.i.408, i64* %ob_refcnt65.i.i.407, align 8, !dbg !2779, !tbaa !996
  %cmp67.i.i.409 = icmp eq i64 %dec66.i.i.408, 0, !dbg !2779
  br i1 %cmp67.i.i.409, label %if.else.69.i.i.413, label %if.end.112, !dbg !2780

if.else.69.i.i.413:                               ; preds = %do.body.62.i.i.410
  %ob_type70.i.i.411 = getelementptr inbounds %struct._object, %struct._object* %183, i64 0, i32 1, !dbg !2781
  %191 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i.i.411, align 8, !dbg !2781, !tbaa !989
  %tp_dealloc71.i.i.412 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %191, i64 0, i32 4, !dbg !2781
  %192 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i.i.412, align 8, !dbg !2781, !tbaa !998
  tail call void %192(%struct._object* %183) #2, !dbg !2781
  br label %if.end.112, !dbg !2767

if.end.112:                                       ; preds = %if.else.69.i.i.413, %do.body.62.i.i.410, %if.end.54.i.i.406, %if.then.106, %if.end.103, %if.end.73
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !859, metadata !970), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !860, metadata !970), !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !861, metadata !970), !dbg !2314
  %193 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2782, !tbaa !978
  tail call void @llvm.dbg.value(metadata %struct._object* %193, i64 0, metadata !426, metadata !970) #2, !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !428, metadata !970) #2, !dbg !2785
  tail call void @llvm.dbg.value(metadata !617, i64 0, metadata !436, metadata !970) #2, !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !439, metadata !970) #2, !dbg !2785
  %194 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2786, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !435, metadata !970) #2, !dbg !2785
  %cmp.i = icmp eq %struct._object* %193, null, !dbg !2787
  br i1 %cmp.i, label %if.end.12.i, label %land.lhs.true.i, !dbg !2788

land.lhs.true.i:                                  ; preds = %if.end.112
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %193, i64 0, i32 1, !dbg !2789
  %195 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2790, !tbaa !989
  %cmp7.i = icmp eq %struct._typeobject* %195, @PyTraceBack_Type, !dbg !2789
  br i1 %cmp7.i, label %if.end.12.i, label %do.body.i, !dbg !2791

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void @llvm.dbg.value(metadata %struct._object* %193, i64 0, metadata !444, metadata !970) #2, !dbg !2792
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %193, i64 0, i32 0, !dbg !2793
  %196 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2793, !tbaa !996
  %dec.i = add i64 %196, -1, !dbg !2793
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2793, !tbaa !996
  %cmp9.i = icmp eq i64 %dec.i, 0, !dbg !2793
  br i1 %cmp9.i, label %if.else.i, label %if.end.12.i, !dbg !2794

if.else.i:                                        ; preds = %do.body.i
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %195, i64 0, i32 4, !dbg !2790
  %197 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2790, !tbaa !998
  tail call void %197(%struct._object* %193) #2, !dbg !2790
  br label %if.end.12.i, !dbg !2795

if.end.12.i:                                      ; preds = %if.else.i, %do.body.i, %land.lhs.true.i, %if.end.112
  %traceback.addr.0.i = phi %struct._object* [ %193, %land.lhs.true.i ], [ null, %if.end.112 ], [ null, %do.body.i ], [ null, %if.else.i ], !dbg !2795
  %curexc_type.i.141 = getelementptr inbounds i8, i8* %194, i64 80, !dbg !2796
  %198 = bitcast i8* %curexc_type.i.141 to %struct._object**, !dbg !2796
  %199 = load %struct._object*, %struct._object** %198, align 8, !dbg !2796, !tbaa !1003
  tail call void @llvm.dbg.value(metadata %struct._object* %199, i64 0, metadata !441, metadata !970) #2, !dbg !2797
  %curexc_value.i.142 = getelementptr inbounds i8, i8* %194, i64 88, !dbg !2798
  %200 = bitcast i8* %curexc_value.i.142 to %struct._object**, !dbg !2798
  %201 = load %struct._object*, %struct._object** %200, align 8, !dbg !2798, !tbaa !1007
  tail call void @llvm.dbg.value(metadata %struct._object* %201, i64 0, metadata !442, metadata !970) #2, !dbg !2799
  %curexc_traceback.i.143 = getelementptr inbounds i8, i8* %194, i64 96, !dbg !2800
  %202 = bitcast i8* %curexc_traceback.i.143 to %struct._object**, !dbg !2800
  %203 = load %struct._object*, %struct._object** %202, align 8, !dbg !2800, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %203, i64 0, metadata !443, metadata !970) #2, !dbg !2801
  %204 = bitcast i8* %curexc_type.i.141 to i64*, !dbg !2802
  store i64 %141, i64* %204, align 8, !dbg !2802, !tbaa !1003
  %205 = bitcast i8* %curexc_value.i.142 to i64*, !dbg !2803
  store i64 %122, i64* %205, align 8, !dbg !2803, !tbaa !1007
  store %struct._object* %traceback.addr.0.i, %struct._object** %202, align 8, !dbg !2804, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct._object* %199, i64 0, metadata !448, metadata !970) #2, !dbg !2805
  %cmp18.i = icmp eq %struct._object* %199, null, !dbg !2806
  br i1 %cmp18.i, label %if.end.33.i, label %do.body.20.i, !dbg !2807

do.body.20.i:                                     ; preds = %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %199, i64 0, metadata !450, metadata !970) #2, !dbg !2808
  %ob_refcnt23.i = getelementptr inbounds %struct._object, %struct._object* %199, i64 0, i32 0, !dbg !2809
  %206 = load i64, i64* %ob_refcnt23.i, align 8, !dbg !2809, !tbaa !996
  %dec24.i = add i64 %206, -1, !dbg !2809
  store i64 %dec24.i, i64* %ob_refcnt23.i, align 8, !dbg !2809, !tbaa !996
  %cmp25.i = icmp eq i64 %dec24.i, 0, !dbg !2809
  br i1 %cmp25.i, label %if.else.27.i, label %if.end.33.i, !dbg !2810

if.else.27.i:                                     ; preds = %do.body.20.i
  %ob_type28.i = getelementptr inbounds %struct._object, %struct._object* %199, i64 0, i32 1, !dbg !2811
  %207 = load %struct._typeobject*, %struct._typeobject** %ob_type28.i, align 8, !dbg !2811, !tbaa !989
  %tp_dealloc29.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %207, i64 0, i32 4, !dbg !2811
  %208 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29.i, align 8, !dbg !2811, !tbaa !998
  tail call void %208(%struct._object* %199) #2, !dbg !2811
  br label %if.end.33.i, !dbg !2795

if.end.33.i:                                      ; preds = %if.else.27.i, %do.body.20.i, %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %201, i64 0, metadata !453, metadata !970) #2, !dbg !2812
  %cmp39.i = icmp eq %struct._object* %201, null, !dbg !2813
  br i1 %cmp39.i, label %if.end.54.i, label %do.body.41.i, !dbg !2814

do.body.41.i:                                     ; preds = %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %201, i64 0, metadata !455, metadata !970) #2, !dbg !2815
  %ob_refcnt44.i = getelementptr inbounds %struct._object, %struct._object* %201, i64 0, i32 0, !dbg !2816
  %209 = load i64, i64* %ob_refcnt44.i, align 8, !dbg !2816, !tbaa !996
  %dec45.i = add i64 %209, -1, !dbg !2816
  store i64 %dec45.i, i64* %ob_refcnt44.i, align 8, !dbg !2816, !tbaa !996
  %cmp46.i = icmp eq i64 %dec45.i, 0, !dbg !2816
  br i1 %cmp46.i, label %if.else.48.i, label %if.end.54.i, !dbg !2817

if.else.48.i:                                     ; preds = %do.body.41.i
  %ob_type49.i = getelementptr inbounds %struct._object, %struct._object* %201, i64 0, i32 1, !dbg !2818
  %210 = load %struct._typeobject*, %struct._typeobject** %ob_type49.i, align 8, !dbg !2818, !tbaa !989
  %tp_dealloc50.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %210, i64 0, i32 4, !dbg !2818
  %211 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50.i, align 8, !dbg !2818, !tbaa !998
  tail call void %211(%struct._object* %201) #2, !dbg !2818
  br label %if.end.54.i, !dbg !2795

if.end.54.i:                                      ; preds = %if.else.48.i, %do.body.41.i, %if.end.33.i
  tail call void @llvm.dbg.value(metadata %struct._object* %203, i64 0, metadata !458, metadata !970) #2, !dbg !2819
  %cmp60.i = icmp eq %struct._object* %203, null, !dbg !2820
  br i1 %cmp60.i, label %PyErr_Restore.exit, label %do.body.62.i, !dbg !2821

do.body.62.i:                                     ; preds = %if.end.54.i
  tail call void @llvm.dbg.value(metadata %struct._object* %203, i64 0, metadata !460, metadata !970) #2, !dbg !2822
  %ob_refcnt65.i = getelementptr inbounds %struct._object, %struct._object* %203, i64 0, i32 0, !dbg !2823
  %212 = load i64, i64* %ob_refcnt65.i, align 8, !dbg !2823, !tbaa !996
  %dec66.i = add i64 %212, -1, !dbg !2823
  store i64 %dec66.i, i64* %ob_refcnt65.i, align 8, !dbg !2823, !tbaa !996
  %cmp67.i = icmp eq i64 %dec66.i, 0, !dbg !2823
  br i1 %cmp67.i, label %if.else.69.i, label %PyErr_Restore.exit, !dbg !2824

if.else.69.i:                                     ; preds = %do.body.62.i
  %ob_type70.i = getelementptr inbounds %struct._object, %struct._object* %203, i64 0, i32 1, !dbg !2825
  %213 = load %struct._typeobject*, %struct._typeobject** %ob_type70.i, align 8, !dbg !2825, !tbaa !989
  %tp_dealloc71.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %213, i64 0, i32 4, !dbg !2825
  %214 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71.i, align 8, !dbg !2825, !tbaa !998
  tail call void %214(%struct._object* %203) #2, !dbg !2825
  br label %PyErr_Restore.exit, !dbg !2795

PyErr_Restore.exit:                               ; preds = %if.end.54.i, %do.body.62.i, %if.else.69.i
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2826
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2826
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2826
  ret void, !dbg !2826
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramTextObject(%struct._object* %filename, i32 %lineno) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !911, metadata !970), !dbg !2827
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !912, metadata !970), !dbg !2828
  %cmp = icmp eq %struct._object* %filename, null, !dbg !2829
  %cmp1 = icmp slt i32 %lineno, 1, !dbg !2830
  %or.cond = or i1 %cmp, %cmp1, !dbg !2831
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !2831

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !2832
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, i64 0, metadata !913, metadata !970), !dbg !2833
  %call2 = tail call fastcc %struct._object* @err_programtext(%struct._IO_FILE* %call, i32 %lineno), !dbg !2834
  br label %cleanup, !dbg !2835

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2836
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @PyObject_Str(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramText(i8* %filename, i32 %lineno) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !904, metadata !970), !dbg !2837
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !905, metadata !970), !dbg !2838
  %cmp = icmp eq i8* %filename, null, !dbg !2839
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2841

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %filename, align 1, !dbg !2842, !tbaa !2843
  %cmp1 = icmp eq i8 %0, 0, !dbg !2844
  %cmp4 = icmp slt i32 %lineno, 1, !dbg !2845
  %or.cond = or i1 %cmp4, %cmp1, !dbg !2846
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !2846

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct._IO_FILE* @_Py_fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, i64 0, metadata !906, metadata !970), !dbg !2848
  %call6 = tail call fastcc %struct._object* @err_programtext(%struct._IO_FILE* %call, i32 %lineno), !dbg !2849
  br label %cleanup, !dbg !2850

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct._object* [ %call6, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !2851
}

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @err_programtext(%struct._IO_FILE* %fp, i32 %lineno) #0 {
entry:
  %linebuf = alloca [1000 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !935, metadata !970), !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !936, metadata !970), !dbg !2853
  %0 = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i64 0, i64 0, !dbg !2854
  call void @llvm.lifetime.start(i64 1000, i8* %0) #2, !dbg !2854
  tail call void @llvm.dbg.declare(metadata [1000 x i8]* %linebuf, metadata !938, metadata !970), !dbg !2855
  %cmp = icmp eq %struct._IO_FILE* %fp, null, !dbg !2856
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2858

for.cond.preheader:                               ; preds = %entry
  %cmp1.46 = icmp sgt i32 %lineno, 0, !dbg !2859
  br i1 %cmp1.46, label %for.body.lr.ph, label %for.end, !dbg !2860

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx = getelementptr [1000 x i8], [1000 x i8]* %linebuf, i64 0, i64 998, !dbg !2861
  br label %for.body, !dbg !2860

for.body:                                         ; preds = %do.end, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end ]
  call void @llvm.dbg.value(metadata i8* %arrayidx, i64 0, metadata !942, metadata !970), !dbg !2862
  br label %do.body, !dbg !2863

do.body:                                          ; preds = %do.cond, %for.body
  store i8 0, i8* %arrayidx, align 2, !dbg !2864, !tbaa !2843
  %call = call i8* @Py_UniversalNewlineFgets(i8* %0, i32 1000, %struct._IO_FILE* %fp, %struct._object* null) #2, !dbg !2866
  %cmp2 = icmp eq i8* %call, null, !dbg !2868
  br i1 %cmp2, label %do.end, label %do.cond, !dbg !2869

do.cond:                                          ; preds = %do.body
  %1 = load i8, i8* %arrayidx, align 2, !dbg !2870, !tbaa !2843
  switch i8 %1, label %do.body [
    i8 0, label %do.end
    i8 10, label %do.end
  ], !dbg !2871

do.end:                                           ; preds = %do.cond, %do.cond, %do.body
  %inc = add nuw nsw i32 %i.047, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !937, metadata !970), !dbg !2873
  %exitcond = icmp eq i32 %inc, %lineno, !dbg !2860
  br i1 %exitcond, label %for.end.thread, label %for.body, !dbg !2860

for.end.thread:                                   ; preds = %do.end
  %call10.48 = call i32 @fclose(%struct._IO_FILE* %fp) #2, !dbg !2874
  br label %while.cond.preheader, !dbg !2875

for.end:                                          ; preds = %for.cond.preheader
  %call10 = call i32 @fclose(%struct._IO_FILE* %fp) #2, !dbg !2874
  %cmp11 = icmp eq i32 %lineno, 0, !dbg !2876
  br i1 %cmp11, label %while.cond.preheader, label %cleanup, !dbg !2875

while.cond.preheader:                             ; preds = %for.end.thread, %for.end
  br label %while.cond, !dbg !2877

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.0 = phi i8* [ %incdec.ptr, %while.body ], [ %0, %while.cond.preheader ]
  %2 = load i8, i8* %p.0, align 1, !dbg !2877, !tbaa !2843
  switch i8 %2, label %lor.rhs [
    i8 32, label %while.body
    i8 9, label %while.body
    i8 12, label %while.body
  ], !dbg !2878

lor.rhs:                                          ; preds = %while.cond
  %p.0.lcssa = phi i8* [ %p.0, %while.cond ]
  %call24 = call %struct._object* @PyUnicode_FromString(i8* %p.0.lcssa) #2, !dbg !2879
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !949, metadata !970), !dbg !2880
  %cmp25 = icmp eq %struct._object* %call24, null, !dbg !2881
  br i1 %cmp25, label %if.then.27, label %cleanup, !dbg !2883

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !946, metadata !970), !dbg !2885
  br label %while.cond, !dbg !2886

if.then.27:                                       ; preds = %lor.rhs
  call void @PyErr_Clear(), !dbg !2887
  br label %cleanup, !dbg !2887

cleanup:                                          ; preds = %for.end, %lor.rhs, %if.then.27, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.then.27 ], [ %call24, %lor.rhs ], [ null, %for.end ]
  call void @llvm.lifetime.end(i64 1000, i8* %0) #2, !dbg !2888
  ret %struct._object* %retval.0, !dbg !2888
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #3

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!967, !968}
!llvm.ident = !{!969}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !419, globals: !950)
!1 = !DIFile(filename: "Python/errors.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !114, !29, !409, !411, !35, !76}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !14, line: 139, baseType: !15)
!14 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !14, line: 69, size: 1536, align: 64, elements: !16)
!16 = !{!17, !19, !20, !379, !382, !383, !384, !385, !386, !387, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !14, line: 72, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !14, line: 73, baseType: !18, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !15, file: !14, line: 74, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !14, line: 44, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !14, line: 19, size: 832, align: 64, elements: !24)
!24 = !{!25, !27, !28, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !14, line: 21, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !23, file: !14, line: 22, baseType: !18, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !23, file: !14, line: 24, baseType: !29, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !31, line: 109, baseType: !32)
!31 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !31, line: 105, size: 128, align: 64, elements: !33)
!33 = !{!34, !42}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !32, file: !31, line: 107, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !36, line: 177, baseType: !37)
!36 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !38, line: 102, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !40, line: 181, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !32, file: !31, line: 108, baseType: !43, size: 64, align: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !31, line: 334, size: 3200, align: 64, elements: !45)
!45 = !{!46, !52, !56, !57, !58, !63, !127, !132, !137, !138, !143, !195, !226, !238, !244, !245, !246, !248, !250, !281, !282, !283, !292, !293, !298, !299, !301, !303, !313, !316, !334, !335, !336, !338, !340, !341, !343, !348, !353, !358, !359, !360, !361, !362, !363, !364, !365, !367}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !44, file: !31, line: 335, baseType: !47, size: 192, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !31, line: 114, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 111, size: 192, align: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !48, file: !31, line: 112, baseType: !30, size: 128, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !48, file: !31, line: 113, baseType: !35, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !44, file: !31, line: 336, baseType: !53, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !44, file: !31, line: 337, baseType: !35, size: 64, align: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !44, file: !31, line: 337, baseType: !35, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !44, file: !31, line: 341, baseType: !59, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !31, line: 308, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !29}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !44, file: !31, line: 342, baseType: !64, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !31, line: 314, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !29, !69, !68}
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 48, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 246, size: 1728, align: 64, elements: !73)
!72 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!73 = !{!74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !95, !96, !97, !98, !100, !102, !104, !108, !111, !113, !115, !116, !117, !118, !122, !123}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !71, file: !72, line: 247, baseType: !68, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !71, file: !72, line: 252, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !71, file: !72, line: 253, baseType: !76, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !71, file: !72, line: 254, baseType: !76, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !71, file: !72, line: 255, baseType: !76, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !71, file: !72, line: 256, baseType: !76, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !71, file: !72, line: 257, baseType: !76, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !71, file: !72, line: 258, baseType: !76, size: 64, align: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !71, file: !72, line: 259, baseType: !76, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !71, file: !72, line: 261, baseType: !76, size: 64, align: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !71, file: !72, line: 262, baseType: !76, size: 64, align: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !71, file: !72, line: 263, baseType: !76, size: 64, align: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !71, file: !72, line: 265, baseType: !88, size: 64, align: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !72, line: 161, size: 192, align: 64, elements: !90)
!90 = !{!91, !92, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !89, file: !72, line: 162, baseType: !88, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !89, file: !72, line: 163, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !89, file: !72, line: 167, baseType: !68, size: 32, align: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !71, file: !72, line: 267, baseType: !93, size: 64, align: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !71, file: !72, line: 269, baseType: !68, size: 32, align: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !71, file: !72, line: 273, baseType: !68, size: 32, align: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !71, file: !72, line: 275, baseType: !99, size: 64, align: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 140, baseType: !41)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !71, file: !72, line: 279, baseType: !101, size: 16, align: 16, offset: 1024)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !71, file: !72, line: 280, baseType: !103, size: 8, align: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !71, file: !72, line: 281, baseType: !105, size: 8, align: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !71, file: !72, line: 285, baseType: !109, size: 64, align: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !72, line: 155, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !71, file: !72, line: 294, baseType: !112, size: 64, align: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 141, baseType: !41)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !71, file: !72, line: 303, baseType: !114, size: 64, align: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !71, file: !72, line: 304, baseType: !114, size: 64, align: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !71, file: !72, line: 305, baseType: !114, size: 64, align: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !71, file: !72, line: 306, baseType: !114, size: 64, align: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !71, file: !72, line: 307, baseType: !119, size: 64, align: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 62, baseType: !121)
!120 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!121 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !71, file: !72, line: 309, baseType: !68, size: 32, align: 32, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !71, file: !72, line: 311, baseType: !124, size: 160, align: 8, offset: 1568)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 20)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !44, file: !31, line: 343, baseType: !128, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !31, line: 316, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!29, !29, !76}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !44, file: !31, line: 344, baseType: !133, size: 64, align: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !31, line: 318, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!68, !29, !76, !29}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !44, file: !31, line: 345, baseType: !114, size: 64, align: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !44, file: !31, line: 346, baseType: !139, size: 64, align: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !31, line: 320, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!29, !29}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !44, file: !31, line: 350, baseType: !144, size: 64, align: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !31, line: 278, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 236, size: 2176, align: 64, elements: !147)
!147 = !{!148, !153, !154, !155, !156, !157, !162, !164, !165, !166, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !146, file: !31, line: 241, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !31, line: 166, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!29, !29, !29}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !146, file: !31, line: 242, baseType: !149, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !146, file: !31, line: 243, baseType: !149, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !146, file: !31, line: 244, baseType: !149, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !146, file: !31, line: 245, baseType: !149, size: 64, align: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !146, file: !31, line: 246, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !31, line: 167, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!29, !29, !29, !29}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !146, file: !31, line: 247, baseType: !163, size: 64, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !31, line: 165, baseType: !140)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !146, file: !31, line: 248, baseType: !163, size: 64, align: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !146, file: !31, line: 249, baseType: !163, size: 64, align: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !146, file: !31, line: 250, baseType: !167, size: 64, align: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !31, line: 168, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!68, !29}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !146, file: !31, line: 251, baseType: !163, size: 64, align: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !146, file: !31, line: 252, baseType: !149, size: 64, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !146, file: !31, line: 253, baseType: !149, size: 64, align: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !146, file: !31, line: 254, baseType: !149, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !146, file: !31, line: 255, baseType: !149, size: 64, align: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !146, file: !31, line: 256, baseType: !149, size: 64, align: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !146, file: !31, line: 257, baseType: !163, size: 64, align: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !146, file: !31, line: 258, baseType: !114, size: 64, align: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !146, file: !31, line: 259, baseType: !163, size: 64, align: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !146, file: !31, line: 261, baseType: !149, size: 64, align: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !146, file: !31, line: 262, baseType: !149, size: 64, align: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !146, file: !31, line: 263, baseType: !149, size: 64, align: 64, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !146, file: !31, line: 264, baseType: !149, size: 64, align: 64, offset: 1408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !146, file: !31, line: 265, baseType: !158, size: 64, align: 64, offset: 1472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !146, file: !31, line: 266, baseType: !149, size: 64, align: 64, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !146, file: !31, line: 267, baseType: !149, size: 64, align: 64, offset: 1600)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !146, file: !31, line: 268, baseType: !149, size: 64, align: 64, offset: 1664)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !146, file: !31, line: 269, baseType: !149, size: 64, align: 64, offset: 1728)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !146, file: !31, line: 270, baseType: !149, size: 64, align: 64, offset: 1792)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !146, file: !31, line: 272, baseType: !149, size: 64, align: 64, offset: 1856)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !146, file: !31, line: 273, baseType: !149, size: 64, align: 64, offset: 1920)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !146, file: !31, line: 274, baseType: !149, size: 64, align: 64, offset: 1984)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !146, file: !31, line: 275, baseType: !149, size: 64, align: 64, offset: 2048)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !146, file: !31, line: 277, baseType: !163, size: 64, align: 64, offset: 2112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !44, file: !31, line: 351, baseType: !196, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !31, line: 292, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 280, size: 640, align: 64, elements: !199)
!199 = !{!200, !205, !206, !211, !212, !213, !218, !219, !224, !225}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !198, file: !31, line: 281, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !31, line: 169, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!35, !29}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !198, file: !31, line: 282, baseType: !149, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !198, file: !31, line: 283, baseType: !207, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !31, line: 170, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!29, !29, !35}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !198, file: !31, line: 284, baseType: !207, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !198, file: !31, line: 285, baseType: !114, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !198, file: !31, line: 286, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !31, line: 172, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!68, !29, !35, !29}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !198, file: !31, line: 287, baseType: !114, size: 64, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !198, file: !31, line: 288, baseType: !220, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !31, line: 231, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!68, !29, !29}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !198, file: !31, line: 290, baseType: !149, size: 64, align: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !198, file: !31, line: 291, baseType: !207, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !44, file: !31, line: 352, baseType: !227, size: 64, align: 64, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !31, line: 298, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 294, size: 192, align: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !229, file: !31, line: 295, baseType: !201, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !229, file: !31, line: 296, baseType: !149, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !229, file: !31, line: 297, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !31, line: 174, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!68, !29, !29, !29}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !44, file: !31, line: 356, baseType: !239, size: 64, align: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !31, line: 321, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !29}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !36, line: 186, baseType: !35)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !44, file: !31, line: 357, baseType: !158, size: 64, align: 64, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !44, file: !31, line: 358, baseType: !139, size: 64, align: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !44, file: !31, line: 359, baseType: !247, size: 64, align: 64, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !31, line: 317, baseType: !150)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !44, file: !31, line: 360, baseType: !249, size: 64, align: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !31, line: 319, baseType: !235)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !44, file: !31, line: 363, baseType: !251, size: 64, align: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !31, line: 304, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 301, size: 128, align: 64, elements: !254)
!254 = !{!255, !276}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !253, file: !31, line: 302, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !31, line: 193, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!68, !29, !260, !68}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !31, line: 191, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !31, line: 178, size: 640, align: 64, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !31, line: 179, baseType: !114, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !262, file: !31, line: 180, baseType: !29, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !262, file: !31, line: 181, baseType: !35, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !262, file: !31, line: 182, baseType: !35, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !262, file: !31, line: 184, baseType: !68, size: 32, align: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !262, file: !31, line: 185, baseType: !68, size: 32, align: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !262, file: !31, line: 186, baseType: !76, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !262, file: !31, line: 187, baseType: !272, size: 64, align: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !262, file: !31, line: 188, baseType: !272, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !262, file: !31, line: 189, baseType: !272, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !262, file: !31, line: 190, baseType: !114, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !253, file: !31, line: 303, baseType: !277, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !31, line: 194, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !29, !260}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !44, file: !31, line: 366, baseType: !121, size: 64, align: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !44, file: !31, line: 368, baseType: !53, size: 64, align: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !44, file: !31, line: 372, baseType: !284, size: 64, align: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !31, line: 233, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!68, !29, !288, !114}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !31, line: 232, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!68, !29, !114}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !44, file: !31, line: 375, baseType: !167, size: 64, align: 64, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !44, file: !31, line: 379, baseType: !294, size: 64, align: 64, offset: 1600)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !31, line: 322, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!29, !29, !29, !68}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !44, file: !31, line: 382, baseType: !35, size: 64, align: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !44, file: !31, line: 385, baseType: !300, size: 64, align: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !31, line: 323, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !44, file: !31, line: 386, baseType: !302, size: 64, align: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !31, line: 324, baseType: !140)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !44, file: !31, line: 389, baseType: !304, size: 64, align: 64, offset: 1856)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !306, line: 40, size: 256, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!307 = !{!308, !309, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !305, file: !306, line: 41, baseType: !53, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !305, file: !306, line: 42, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !306, line: 18, baseType: !150)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !305, file: !306, line: 43, baseType: !68, size: 32, align: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !305, file: !306, line: 45, baseType: !53, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !44, file: !31, line: 390, baseType: !314, size: 64, align: 64, offset: 1920)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !31, line: 390, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !44, file: !31, line: 391, baseType: !317, size: 64, align: 64, offset: 1984)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !319, line: 11, size: 320, align: 64, elements: !320)
!319 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!320 = !{!321, !322, !327, !332, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !319, line: 12, baseType: !76, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !319, line: 13, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !319, line: 8, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!29, !29, !114}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !318, file: !319, line: 14, baseType: !328, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !319, line: 9, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!68, !29, !29, !114}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !318, file: !319, line: 15, baseType: !76, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !318, file: !319, line: 16, baseType: !114, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !44, file: !31, line: 392, baseType: !43, size: 64, align: 64, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !44, file: !31, line: 393, baseType: !29, size: 64, align: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !44, file: !31, line: 394, baseType: !337, size: 64, align: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !31, line: 325, baseType: !159)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !44, file: !31, line: 395, baseType: !339, size: 64, align: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !31, line: 326, baseType: !235)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !44, file: !31, line: 396, baseType: !35, size: 64, align: 64, offset: 2304)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !44, file: !31, line: 397, baseType: !342, size: 64, align: 64, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !31, line: 327, baseType: !235)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !44, file: !31, line: 398, baseType: !344, size: 64, align: 64, offset: 2432)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !31, line: 329, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!29, !43, !35}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !44, file: !31, line: 399, baseType: !349, size: 64, align: 64, offset: 2496)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !31, line: 328, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!29, !43, !29, !29}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !44, file: !31, line: 400, baseType: !354, size: 64, align: 64, offset: 2560)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !31, line: 307, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !114}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !44, file: !31, line: 401, baseType: !167, size: 64, align: 64, offset: 2624)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !44, file: !31, line: 402, baseType: !29, size: 64, align: 64, offset: 2688)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !44, file: !31, line: 403, baseType: !29, size: 64, align: 64, offset: 2752)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !44, file: !31, line: 404, baseType: !29, size: 64, align: 64, offset: 2816)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !44, file: !31, line: 405, baseType: !29, size: 64, align: 64, offset: 2880)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !44, file: !31, line: 406, baseType: !29, size: 64, align: 64, offset: 2944)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !44, file: !31, line: 407, baseType: !59, size: 64, align: 64, offset: 3008)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !44, file: !31, line: 410, baseType: !366, size: 32, align: 32, offset: 3072)
!366 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !44, file: !31, line: 412, baseType: !59, size: 64, align: 64, offset: 3136)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !23, file: !14, line: 25, baseType: !29, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !23, file: !14, line: 26, baseType: !29, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !23, file: !14, line: 27, baseType: !29, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !23, file: !14, line: 28, baseType: !29, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !23, file: !14, line: 30, baseType: !29, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !23, file: !14, line: 31, baseType: !29, size: 64, align: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !23, file: !14, line: 32, baseType: !29, size: 64, align: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !23, file: !14, line: 33, baseType: !68, size: 32, align: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !23, file: !14, line: 34, baseType: !68, size: 32, align: 32, offset: 672)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !23, file: !14, line: 37, baseType: !68, size: 32, align: 32, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !23, file: !14, line: 43, baseType: !29, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !15, file: !14, line: 76, baseType: !380, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !14, line: 50, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !15, file: !14, line: 77, baseType: !68, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !15, file: !14, line: 78, baseType: !55, size: 8, align: 8, offset: 288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !15, file: !14, line: 80, baseType: !55, size: 8, align: 8, offset: 296)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !15, file: !14, line: 85, baseType: !68, size: 32, align: 32, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !15, file: !14, line: 86, baseType: !68, size: 32, align: 32, offset: 352)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !15, file: !14, line: 88, baseType: !388, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !14, line: 54, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!68, !29, !380, !68, !29}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !15, file: !14, line: 89, baseType: !388, size: 64, align: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !15, file: !14, line: 90, baseType: !29, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !15, file: !14, line: 91, baseType: !29, size: 64, align: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !15, file: !14, line: 93, baseType: !29, size: 64, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !15, file: !14, line: 94, baseType: !29, size: 64, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !15, file: !14, line: 95, baseType: !29, size: 64, align: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !15, file: !14, line: 97, baseType: !29, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !15, file: !14, line: 98, baseType: !29, size: 64, align: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !15, file: !14, line: 99, baseType: !29, size: 64, align: 64, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !15, file: !14, line: 101, baseType: !29, size: 64, align: 64, offset: 1024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !15, file: !14, line: 103, baseType: !68, size: 32, align: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !15, file: !14, line: 105, baseType: !29, size: 64, align: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !15, file: !14, line: 106, baseType: !41, size: 64, align: 64, offset: 1216)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !15, file: !14, line: 108, baseType: !68, size: 32, align: 32, offset: 1280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !15, file: !14, line: 109, baseType: !29, size: 64, align: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !15, file: !14, line: 134, baseType: !355, size: 64, align: 64, offset: 1408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !15, file: !14, line: 135, baseType: !114, size: 64, align: 64, offset: 1472)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !31, line: 422, baseType: !44)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !413, line: 33, baseType: !414)
!413 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!414 = !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 25, size: 256, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !414, file: !413, line: 26, baseType: !47, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !414, file: !413, line: 27, baseType: !418, size: 64, align: 64, offset: 192)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 64, elements: !106)
!419 = !{!420, !463, !507, !513, !516, !528, !538, !552, !555, !603, !614, !618, !635, !664, !667, !668, !672, !694, !707, !710, !730, !736, !737, !762, !795, !816, !848, !852, !887, !900, !907, !914, !923, !928, !931}
!420 = !DISubprogram(name: "PyErr_Restore", scope: !1, file: !1, line: 28, type: !421, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_Restore, variables: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !29, !29, !29}
!423 = !{!424, !425, !426, !427, !428, !435, !436, !439, !441, !442, !443, !444, !448, !450, !453, !455, !458, !460}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !420, file: !1, line: 28, type: !29)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !420, file: !1, line: 28, type: !29)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 3, scope: !420, file: !1, line: 28, type: !29)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !420, file: !1, line: 30, type: !12)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !429, file: !1, line: 30, type: !430)
!429 = distinct !DILexicalBlock(scope: !420, file: !1, line: 30, column: 29)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !432, file: !4, line: 32, baseType: !114, size: 64, align: 64)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !429, file: !1, line: 30, type: !114)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !429, file: !1, line: 30, type: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !429, file: !1, line: 30, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !420, file: !1, line: 31, type: !29)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !420, file: !1, line: 31, type: !29)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !420, file: !1, line: 31, type: !29)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !1, line: 36, type: !29)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 36, column: 9)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 33, column: 61)
!447 = distinct !DILexicalBlock(scope: !420, file: !1, line: 33, column: 9)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !449, file: !1, line: 50, type: !29)
!449 = distinct !DILexicalBlock(scope: !420, file: !1, line: 50, column: 5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 50, type: !29)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 50, column: 5)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 50, column: 5)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !454, file: !1, line: 51, type: !29)
!454 = distinct !DILexicalBlock(scope: !420, file: !1, line: 51, column: 5)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !1, line: 51, type: !29)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 51, column: 5)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 51, column: 5)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !459, file: !1, line: 52, type: !29)
!459 = distinct !DILexicalBlock(scope: !420, file: !1, line: 52, column: 5)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !461, file: !1, line: 52, type: !29)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 52, column: 5)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 52, column: 5)
!463 = !DISubprogram(name: "PyErr_SetObject", scope: !1, file: !1, line: 56, type: !464, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*)* @PyErr_SetObject, variables: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !29, !29}
!466 = !{!467, !468, !469, !470, !472, !473, !474, !475, !476, !477, !479, !484, !485, !487, !490, !492, !495, !498, !499, !502, !505}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !463, file: !1, line: 56, type: !29)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !463, file: !1, line: 56, type: !29)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !463, file: !1, line: 58, type: !12)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !471, file: !1, line: 58, type: !430)
!471 = distinct !DILexicalBlock(scope: !463, file: !1, line: 58, column: 29)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !471, file: !1, line: 58, type: !114)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !471, file: !1, line: 58, type: !437)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !471, file: !1, line: 58, type: !440)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !463, file: !1, line: 59, type: !29)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !463, file: !1, line: 60, type: !29)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !478, file: !1, line: 69, type: !29)
!478 = distinct !DILexicalBlock(scope: !463, file: !1, line: 69, column: 5)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !480, file: !1, line: 76, type: !29)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 74, column: 65)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 74, column: 13)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 71, column: 52)
!483 = distinct !DILexicalBlock(scope: !463, file: !1, line: 71, column: 9)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_value", scope: !480, file: !1, line: 76, type: !29)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !486, file: !1, line: 92, type: !29)
!486 = distinct !DILexicalBlock(scope: !480, file: !1, line: 92, column: 13)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !1, line: 92, type: !29)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 92, column: 13)
!489 = distinct !DILexicalBlock(scope: !486, file: !1, line: 92, column: 13)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !491, file: !1, line: 93, type: !29)
!491 = distinct !DILexicalBlock(scope: !480, file: !1, line: 93, column: 13)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !1, line: 93, type: !29)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 93, column: 13)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 93, column: 13)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !496, file: !1, line: 103, type: !29)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 102, column: 33)
!497 = distinct !DILexicalBlock(scope: !482, file: !1, line: 102, column: 13)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "context", scope: !496, file: !1, line: 103, type: !29)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !1, line: 105, type: !29)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 105, column: 17)
!501 = distinct !DILexicalBlock(scope: !496, file: !1, line: 104, column: 59)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !1, line: 114, type: !29)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 114, column: 13)
!504 = distinct !DILexicalBlock(scope: !497, file: !1, line: 113, column: 16)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !506, file: !1, line: 119, type: !29)
!506 = distinct !DILexicalBlock(scope: !463, file: !1, line: 119, column: 5)
!507 = !DISubprogram(name: "_PyErr_SetKeyError", scope: !1, file: !1, line: 127, type: !61, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyErr_SetKeyError, variables: !508)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !507, file: !1, line: 127, type: !29)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !507, file: !1, line: 129, type: !29)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !512, file: !1, line: 134, type: !29)
!512 = distinct !DILexicalBlock(scope: !507, file: !1, line: 134, column: 5)
!513 = !DISubprogram(name: "PyErr_SetNone", scope: !1, file: !1, line: 138, type: !61, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_SetNone, variables: !514)
!514 = !{!515}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !513, file: !1, line: 138, type: !29)
!516 = !DISubprogram(name: "PyErr_SetString", scope: !1, file: !1, line: 144, type: !517, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*)* @PyErr_SetString, variables: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !29, !53}
!519 = !{!520, !521, !522, !523, !525}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !516, file: !1, line: 144, type: !29)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 2, scope: !516, file: !1, line: 144, type: !53)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !516, file: !1, line: 146, type: !29)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !524, file: !1, line: 148, type: !29)
!524 = distinct !DILexicalBlock(scope: !516, file: !1, line: 148, column: 5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !526, file: !1, line: 148, type: !29)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 148, column: 5)
!527 = distinct !DILexicalBlock(scope: !524, file: !1, line: 148, column: 5)
!528 = !DISubprogram(name: "PyErr_Occurred", scope: !1, file: !1, line: 153, type: !529, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_Occurred, variables: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!29}
!531 = !{!532, !533, !535, !536, !537}
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !528, file: !1, line: 159, type: !12)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !534, file: !1, line: 160, type: !430)
!534 = distinct !DILexicalBlock(scope: !528, file: !1, line: 160, column: 26)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !534, file: !1, line: 160, type: !114)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !534, file: !1, line: 160, type: !437)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !534, file: !1, line: 160, type: !440)
!538 = !DISubprogram(name: "PyErr_GivenExceptionMatches", scope: !1, file: !1, line: 167, type: !222, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyErr_GivenExceptionMatches, variables: !539)
!539 = !{!540, !541, !542, !545, !546, !549, !550, !551}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 1, scope: !538, file: !1, line: 167, type: !29)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !538, file: !1, line: 167, type: !29)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !543, file: !1, line: 174, type: !35)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 173, column: 29)
!544 = distinct !DILexicalBlock(scope: !538, file: !1, line: 173, column: 9)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !543, file: !1, line: 174, type: !35)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !547, file: !1, line: 191, type: !68)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 190, column: 69)
!548 = distinct !DILexicalBlock(scope: !538, file: !1, line: 190, column: 9)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !547, file: !1, line: 192, type: !29)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !547, file: !1, line: 192, type: !29)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !547, file: !1, line: 192, type: !29)
!552 = !DISubprogram(name: "PyErr_ExceptionMatches", scope: !1, file: !1, line: 211, type: !169, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyErr_ExceptionMatches, variables: !553)
!553 = !{!554}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !552, file: !1, line: 211, type: !29)
!555 = !DISubprogram(name: "PyErr_NormalizeException", scope: !1, file: !1, line: 224, type: !556, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_NormalizeException, variables: !559)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558, !558, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !571, !574, !575, !577, !579, !583, !585, !587, !592, !594, !595, !596, !597, !601}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !555, file: !1, line: 224, type: !558)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !555, file: !1, line: 224, type: !558)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tb", arg: 3, scope: !555, file: !1, line: 224, type: !558)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !555, file: !1, line: 226, type: !29)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !555, file: !1, line: 227, type: !29)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inclass", scope: !555, file: !1, line: 228, type: !29)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_tb", scope: !555, file: !1, line: 229, type: !29)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !555, file: !1, line: 230, type: !12)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_subclass", scope: !569, file: !1, line: 252, type: !68)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 251, column: 39)
!570 = distinct !DILexicalBlock(scope: !555, file: !1, line: 251, column: 9)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !572, file: !1, line: 267, type: !29)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 266, column: 39)
!573 = distinct !DILexicalBlock(scope: !569, file: !1, line: 266, column: 13)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !572, file: !1, line: 267, type: !29)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !576, file: !1, line: 281, type: !29)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 281, column: 13)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !578, file: !1, line: 284, type: !29)
!578 = distinct !DILexicalBlock(scope: !572, file: !1, line: 284, column: 13)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !580, file: !1, line: 291, type: !29)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 291, column: 13)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 290, column: 35)
!582 = distinct !DILexicalBlock(scope: !573, file: !1, line: 290, column: 18)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 300, type: !29)
!584 = distinct !DILexicalBlock(scope: !555, file: !1, line: 300, column: 5)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !1, line: 301, type: !29)
!586 = distinct !DILexicalBlock(scope: !555, file: !1, line: 301, column: 5)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !1, line: 312, type: !29)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 312, column: 13)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 309, column: 13)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 308, column: 29)
!591 = distinct !DILexicalBlock(scope: !555, file: !1, line: 308, column: 9)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !593, file: !1, line: 315, type: !430)
!593 = distinct !DILexicalBlock(scope: !555, file: !1, line: 315, column: 14)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !593, file: !1, line: 315, type: !114)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !593, file: !1, line: 315, type: !437)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !593, file: !1, line: 315, type: !440)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !1, line: 319, type: !29)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 319, column: 9)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 316, column: 61)
!600 = distinct !DILexicalBlock(scope: !555, file: !1, line: 316, column: 9)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !1, line: 320, type: !29)
!602 = distinct !DILexicalBlock(scope: !599, file: !1, line: 320, column: 9)
!603 = !DISubprogram(name: "PyErr_Fetch", scope: !1, file: !1, line: 335, type: !556, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_Fetch, variables: !604)
!604 = !{!605, !606, !607, !608, !609, !611, !612, !613}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !603, file: !1, line: 335, type: !558)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !603, file: !1, line: 335, type: !558)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !603, file: !1, line: 335, type: !558)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !603, file: !1, line: 337, type: !12)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !610, file: !1, line: 337, type: !430)
!610 = distinct !DILexicalBlock(scope: !603, file: !1, line: 337, column: 29)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !610, file: !1, line: 337, type: !114)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !610, file: !1, line: 337, type: !437)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !610, file: !1, line: 337, type: !440)
!614 = !DISubprogram(name: "PyErr_Clear", scope: !1, file: !1, line: 349, type: !615, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_Clear, variables: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null}
!617 = !{}
!618 = !DISubprogram(name: "PyErr_GetExcInfo", scope: !1, file: !1, line: 355, type: !556, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_GetExcInfo, variables: !619)
!619 = !{!620, !621, !622, !623, !624, !626, !627, !628, !629, !631, !633}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !618, file: !1, line: 355, type: !558)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !618, file: !1, line: 355, type: !558)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !618, file: !1, line: 355, type: !558)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !618, file: !1, line: 357, type: !12)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !625, file: !1, line: 357, type: !430)
!625 = distinct !DILexicalBlock(scope: !618, file: !1, line: 357, column: 29)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !625, file: !1, line: 357, type: !114)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !625, file: !1, line: 357, type: !437)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !625, file: !1, line: 357, type: !440)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !630, file: !1, line: 363, type: !29)
!630 = distinct !DILexicalBlock(scope: !618, file: !1, line: 363, column: 5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !632, file: !1, line: 364, type: !29)
!632 = distinct !DILexicalBlock(scope: !618, file: !1, line: 364, column: 5)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !634, file: !1, line: 365, type: !29)
!634 = distinct !DILexicalBlock(scope: !618, file: !1, line: 365, column: 5)
!635 = !DISubprogram(name: "PyErr_SetExcInfo", scope: !1, file: !1, line: 369, type: !421, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetExcInfo, variables: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !646, !647, !648, !649, !651, !654, !656, !659, !661}
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !635, file: !1, line: 369, type: !29)
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !635, file: !1, line: 369, type: !29)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !635, file: !1, line: 369, type: !29)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !635, file: !1, line: 371, type: !29)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !635, file: !1, line: 371, type: !29)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !635, file: !1, line: 371, type: !29)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !635, file: !1, line: 372, type: !12)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !645, file: !1, line: 372, type: !430)
!645 = distinct !DILexicalBlock(scope: !635, file: !1, line: 372, column: 29)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !645, file: !1, line: 372, type: !114)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !645, file: !1, line: 372, type: !437)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !645, file: !1, line: 372, type: !440)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !650, file: !1, line: 382, type: !29)
!650 = distinct !DILexicalBlock(scope: !635, file: !1, line: 382, column: 5)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !652, file: !1, line: 382, type: !29)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 382, column: 5)
!653 = distinct !DILexicalBlock(scope: !650, file: !1, line: 382, column: 5)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !655, file: !1, line: 383, type: !29)
!655 = distinct !DILexicalBlock(scope: !635, file: !1, line: 383, column: 5)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !657, file: !1, line: 383, type: !29)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 383, column: 5)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 383, column: 5)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !660, file: !1, line: 384, type: !29)
!660 = distinct !DILexicalBlock(scope: !635, file: !1, line: 384, column: 5)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !662, file: !1, line: 384, type: !29)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 384, column: 5)
!663 = distinct !DILexicalBlock(scope: !660, file: !1, line: 384, column: 5)
!664 = !DISubprogram(name: "PyErr_BadArgument", scope: !1, file: !1, line: 390, type: !665, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyErr_BadArgument, variables: !617)
!665 = !DISubroutineType(types: !666)
!666 = !{!68}
!667 = !DISubprogram(name: "PyErr_NoMemory", scope: !1, file: !1, line: 398, type: !529, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_NoMemory, variables: !617)
!668 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObject", scope: !1, file: !1, line: 411, type: !151, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObject, variables: !669)
!669 = !{!670, !671}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !668, file: !1, line: 411, type: !29)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !668, file: !1, line: 411, type: !29)
!672 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObjects", scope: !1, file: !1, line: 417, type: !160, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObjects, variables: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !684, !686, !690}
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !672, file: !1, line: 417, type: !29)
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !672, file: !1, line: 417, type: !29)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject2", arg: 3, scope: !672, file: !1, line: 417, type: !29)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !672, file: !1, line: 419, type: !29)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !672, file: !1, line: 420, type: !29)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !672, file: !1, line: 420, type: !29)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !672, file: !1, line: 421, type: !68)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !682, file: !1, line: 433, type: !76)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 432, column: 17)
!683 = distinct !DILexicalBlock(scope: !672, file: !1, line: 432, column: 9)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !1, line: 498, type: !29)
!685 = distinct !DILexicalBlock(scope: !672, file: !1, line: 498, column: 5)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !687, file: !1, line: 502, type: !29)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 502, column: 9)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 500, column: 23)
!689 = distinct !DILexicalBlock(scope: !672, file: !1, line: 500, column: 9)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !691, file: !1, line: 505, type: !29)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 505, column: 13)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 503, column: 24)
!693 = distinct !DILexicalBlock(scope: !688, file: !1, line: 503, column: 13)
!694 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilename", scope: !1, file: !1, line: 515, type: !695, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @PyErr_SetFromErrnoWithFilename, variables: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!29, !29, !53}
!697 = !{!698, !699, !700, !701, !702, !704}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !694, file: !1, line: 515, type: !29)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !694, file: !1, line: 515, type: !53)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !694, file: !1, line: 517, type: !29)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !694, file: !1, line: 518, type: !29)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !703, file: !1, line: 519, type: !29)
!703 = distinct !DILexicalBlock(scope: !694, file: !1, line: 519, column: 5)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !705, file: !1, line: 519, type: !29)
!705 = distinct !DILexicalBlock(scope: !706, file: !1, line: 519, column: 5)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 519, column: 5)
!707 = !DISubprogram(name: "PyErr_SetFromErrno", scope: !1, file: !1, line: 537, type: !141, isLocal: false, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyErr_SetFromErrno, variables: !708)
!708 = !{!709}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !707, file: !1, line: 537, type: !29)
!710 = !DISubprogram(name: "PyErr_SetImportError", scope: !1, file: !1, line: 686, type: !160, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetImportError, variables: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !722, !726, !728}
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !710, file: !1, line: 686, type: !29)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !710, file: !1, line: 686, type: !29)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !710, file: !1, line: 686, type: !29)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !710, file: !1, line: 688, type: !29)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwargs", scope: !710, file: !1, line: 688, type: !29)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !710, file: !1, line: 688, type: !29)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !719, file: !1, line: 699, type: !29)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 699, column: 9)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 698, column: 25)
!721 = distinct !DILexicalBlock(scope: !710, file: !1, line: 698, column: 9)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !723, file: !1, line: 722, type: !29)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 722, column: 9)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 720, column: 24)
!725 = distinct !DILexicalBlock(scope: !710, file: !1, line: 720, column: 9)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !727, file: !1, line: 725, type: !29)
!727 = distinct !DILexicalBlock(scope: !710, file: !1, line: 725, column: 5)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !729, file: !1, line: 726, type: !29)
!729 = distinct !DILexicalBlock(scope: !710, file: !1, line: 726, column: 5)
!730 = !DISubprogram(name: "_PyErr_BadInternalCall", scope: !1, file: !1, line: 732, type: !731, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_PyErr_BadInternalCall, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !53, !68}
!733 = !{!734, !735}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !730, file: !1, line: 732, type: !53)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !730, file: !1, line: 732, type: !68)
!736 = !DISubprogram(name: "PyErr_BadInternalCall", scope: !1, file: !1, line: 743, type: !615, isLocal: false, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_BadInternalCall, variables: !617)
!737 = !DISubprogram(name: "PyErr_Format", scope: !1, file: !1, line: 754, type: !738, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, ...)* @PyErr_Format, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!29, !29, !53, null}
!740 = !{!741, !742, !743, !756, !757, !759}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !737, file: !1, line: 754, type: !29)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !737, file: !1, line: 754, type: !53)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !737, file: !1, line: 756, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !38, line: 79, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !746, line: 50, baseType: !747)
!746 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 756, baseType: !748)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 192, align: 64, elements: !106)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 756, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 756, size: 192, align: 64, elements: !751)
!751 = !{!752, !753, !754, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !750, file: !1, line: 756, baseType: !366, size: 32, align: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !750, file: !1, line: 756, baseType: !366, size: 32, align: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !750, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !750, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 128)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string", scope: !737, file: !1, line: 757, type: !29)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !758, file: !1, line: 773, type: !29)
!758 = distinct !DILexicalBlock(scope: !737, file: !1, line: 773, column: 5)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !760, file: !1, line: 773, type: !29)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 773, column: 5)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 773, column: 5)
!762 = !DISubprogram(name: "PyErr_NewException", scope: !1, file: !1, line: 781, type: !763, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, %struct._object*)* @PyErr_NewException, variables: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!29, !53, !29, !29}
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !777, !780, !782, !785, !787, !790, !792}
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !762, file: !1, line: 781, type: !53)
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !762, file: !1, line: 781, type: !29)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 3, scope: !762, file: !1, line: 781, type: !29)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !762, file: !1, line: 783, type: !53)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modulename", scope: !762, file: !1, line: 784, type: !29)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classname", scope: !762, file: !1, line: 785, type: !29)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !762, file: !1, line: 786, type: !29)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bases", scope: !762, file: !1, line: 787, type: !29)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !762, file: !1, line: 788, type: !29)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !776, file: !1, line: 823, type: !29)
!776 = distinct !DILexicalBlock(scope: !762, file: !1, line: 823, column: 5)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !778, file: !1, line: 823, type: !29)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 823, column: 5)
!779 = distinct !DILexicalBlock(scope: !776, file: !1, line: 823, column: 5)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !781, file: !1, line: 824, type: !29)
!781 = distinct !DILexicalBlock(scope: !762, file: !1, line: 824, column: 5)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !783, file: !1, line: 824, type: !29)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 824, column: 5)
!784 = distinct !DILexicalBlock(scope: !781, file: !1, line: 824, column: 5)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !786, file: !1, line: 825, type: !29)
!786 = distinct !DILexicalBlock(scope: !762, file: !1, line: 825, column: 5)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !788, file: !1, line: 825, type: !29)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 825, column: 5)
!789 = distinct !DILexicalBlock(scope: !786, file: !1, line: 825, column: 5)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !791, file: !1, line: 826, type: !29)
!791 = distinct !DILexicalBlock(scope: !762, file: !1, line: 826, column: 5)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !793, file: !1, line: 826, type: !29)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 826, column: 5)
!794 = distinct !DILexicalBlock(scope: !791, file: !1, line: 826, column: 5)
!795 = !DISubprogram(name: "PyErr_NewExceptionWithDoc", scope: !1, file: !1, line: 833, type: !796, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, %struct._object*, %struct._object*)* @PyErr_NewExceptionWithDoc, variables: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{!29, !53, !53, !29, !29}
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !811, !813}
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !795, file: !1, line: 833, type: !53)
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "doc", arg: 2, scope: !795, file: !1, line: 833, type: !53)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !795, file: !1, line: 834, type: !29)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 4, scope: !795, file: !1, line: 834, type: !29)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !795, file: !1, line: 836, type: !68)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !795, file: !1, line: 837, type: !29)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !795, file: !1, line: 838, type: !29)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "docobj", scope: !795, file: !1, line: 839, type: !29)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !1, line: 853, type: !29)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 853, column: 9)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 848, column: 22)
!810 = distinct !DILexicalBlock(scope: !795, file: !1, line: 848, column: 9)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !812, file: !1, line: 860, type: !29)
!812 = distinct !DILexicalBlock(scope: !795, file: !1, line: 860, column: 5)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !1, line: 860, type: !29)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 860, column: 5)
!815 = distinct !DILexicalBlock(scope: !812, file: !1, line: 860, column: 5)
!816 = !DISubprogram(name: "PyErr_WriteUnraisable", scope: !1, file: !1, line: 868, type: !61, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_WriteUnraisable, variables: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !828, !830, !833, !835, !838, !840, !843, !845}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !816, file: !1, line: 868, type: !29)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !816, file: !1, line: 871, type: !29)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !816, file: !1, line: 871, type: !29)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !816, file: !1, line: 871, type: !29)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !816, file: !1, line: 871, type: !29)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "moduleName", scope: !816, file: !1, line: 872, type: !29)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "className", scope: !816, file: !1, line: 873, type: !76)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !826, file: !1, line: 899, type: !76)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 898, column: 28)
!827 = distinct !DILexicalBlock(scope: !816, file: !1, line: 898, column: 9)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !829, file: !1, line: 937, type: !29)
!829 = distinct !DILexicalBlock(scope: !816, file: !1, line: 937, column: 5)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !831, file: !1, line: 937, type: !29)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 937, column: 5)
!832 = distinct !DILexicalBlock(scope: !829, file: !1, line: 937, column: 5)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !834, file: !1, line: 938, type: !29)
!834 = distinct !DILexicalBlock(scope: !816, file: !1, line: 938, column: 5)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !1, line: 938, type: !29)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 938, column: 5)
!837 = distinct !DILexicalBlock(scope: !834, file: !1, line: 938, column: 5)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !839, file: !1, line: 939, type: !29)
!839 = distinct !DILexicalBlock(scope: !816, file: !1, line: 939, column: 5)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !841, file: !1, line: 939, type: !29)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 939, column: 5)
!842 = distinct !DILexicalBlock(scope: !839, file: !1, line: 939, column: 5)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !844, file: !1, line: 940, type: !29)
!844 = distinct !DILexicalBlock(scope: !816, file: !1, line: 940, column: 5)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !846, file: !1, line: 940, type: !29)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 940, column: 5)
!847 = distinct !DILexicalBlock(scope: !844, file: !1, line: 940, column: 5)
!848 = !DISubprogram(name: "PyErr_SyntaxLocation", scope: !1, file: !1, line: 948, type: !731, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @PyErr_SyntaxLocation, variables: !849)
!849 = !{!850, !851}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !848, file: !1, line: 948, type: !53)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !848, file: !1, line: 948, type: !68)
!852 = !DISubprogram(name: "PyErr_SyntaxLocationObject", scope: !1, file: !1, line: 959, type: !853, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i32, i32)* @PyErr_SyntaxLocationObject, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !29, !68, !68}
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !867, !873, !879}
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !852, file: !1, line: 959, type: !29)
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !852, file: !1, line: 959, type: !68)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !852, file: !1, line: 959, type: !68)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !852, file: !1, line: 961, type: !29)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !852, file: !1, line: 961, type: !29)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !852, file: !1, line: 961, type: !29)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !852, file: !1, line: 961, type: !29)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !1, line: 980, type: !29)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 980, column: 9)
!865 = distinct !DILexicalBlock(scope: !866, file: !1, line: 977, column: 10)
!866 = distinct !DILexicalBlock(scope: !852, file: !1, line: 975, column: 9)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !868, file: !1, line: 989, type: !29)
!868 = distinct !DILexicalBlock(scope: !869, file: !1, line: 989, column: 13)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 986, column: 14)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 984, column: 13)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 982, column: 26)
!872 = distinct !DILexicalBlock(scope: !852, file: !1, line: 982, column: 9)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !874, file: !1, line: 1000, type: !29)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 1000, column: 13)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 997, column: 18)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 997, column: 13)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 992, column: 27)
!878 = distinct !DILexicalBlock(scope: !852, file: !1, line: 992, column: 9)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !880, file: !1, line: 1012, type: !29)
!880 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1012, column: 17)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 1009, column: 22)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 1009, column: 17)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 1007, column: 49)
!884 = distinct !DILexicalBlock(scope: !885, file: !1, line: 1007, column: 13)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 1006, column: 35)
!886 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1006, column: 9)
!887 = !DISubprogram(name: "PyErr_SyntaxLocationEx", scope: !1, file: !1, line: 1027, type: !888, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32)* @PyErr_SyntaxLocationEx, variables: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !53, !68, !68}
!890 = !{!891, !892, !893, !894, !895, !897}
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !887, file: !1, line: 1027, type: !53)
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !887, file: !1, line: 1027, type: !68)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !887, file: !1, line: 1027, type: !68)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !887, file: !1, line: 1029, type: !29)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !896, file: !1, line: 1038, type: !29)
!896 = distinct !DILexicalBlock(scope: !887, file: !1, line: 1038, column: 5)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !898, file: !1, line: 1038, type: !29)
!898 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1038, column: 5)
!899 = distinct !DILexicalBlock(scope: !896, file: !1, line: 1038, column: 5)
!900 = !DISubprogram(name: "PyErr_ProgramText", scope: !1, file: !1, line: 1084, type: !901, isLocal: false, isDefinition: true, scopeLine: 1085, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @PyErr_ProgramText, variables: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!29, !53, !68}
!903 = !{!904, !905, !906}
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !900, file: !1, line: 1084, type: !53)
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !900, file: !1, line: 1084, type: !68)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !900, file: !1, line: 1086, type: !69)
!907 = !DISubprogram(name: "PyErr_ProgramTextObject", scope: !1, file: !1, line: 1094, type: !908, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32)* @PyErr_ProgramTextObject, variables: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!29, !29, !68}
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !907, file: !1, line: 1094, type: !29)
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !907, file: !1, line: 1094, type: !68)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !907, file: !1, line: 1096, type: !69)
!914 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !915, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !920)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !917, !440}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, align: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!920 = !{!921, !922}
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !914, file: !4, line: 59, type: !917)
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !914, file: !4, line: 59, type: !440)
!923 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !924, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !440}
!926 = !{!927}
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !923, file: !4, line: 51, type: !440)
!928 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !924, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !929)
!929 = !{!930}
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !928, file: !4, line: 44, type: !440)
!931 = !DISubprogram(name: "err_programtext", scope: !1, file: !1, line: 1048, type: !932, isLocal: true, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._IO_FILE*, i32)* @err_programtext, variables: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!29, !69, !68}
!934 = !{!935, !936, !937, !938, !942, !946, !949}
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !931, file: !1, line: 1048, type: !69)
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !931, file: !1, line: 1048, type: !68)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !931, file: !1, line: 1050, type: !68)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linebuf", scope: !931, file: !1, line: 1051, type: !939)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8000, align: 8, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 1000)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pLastChar", scope: !943, file: !1, line: 1056, type: !76)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1055, column: 34)
!944 = distinct !DILexicalBlock(scope: !945, file: !1, line: 1055, column: 5)
!945 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1055, column: 5)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !947, file: !1, line: 1071, type: !76)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 1070, column: 22)
!948 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1070, column: 9)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !947, file: !1, line: 1072, type: !29)
!950 = !{!951, !959, !960, !961, !962, !963, !964, !965, !966}
!951 = !DIGlobalVariable(name: "PyId___module__", scope: !816, file: !1, line: 870, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !31, line: 144, baseType: !953)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !31, line: 140, size: 192, align: 64, elements: !954)
!954 = !{!955, !957, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !953, file: !31, line: 141, baseType: !956, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !953, file: !31, line: 142, baseType: !53, size: 64, align: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !953, file: !31, line: 143, baseType: !29, size: 64, align: 64, offset: 128)
!959 = !DIGlobalVariable(name: "PyId_filename", scope: !852, file: !1, line: 962, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename)
!960 = !DIGlobalVariable(name: "PyId_lineno", scope: !852, file: !1, line: 963, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno)
!961 = !DIGlobalVariable(name: "PyId_msg", scope: !852, file: !1, line: 964, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg)
!962 = !DIGlobalVariable(name: "PyId_offset", scope: !852, file: !1, line: 965, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset)
!963 = !DIGlobalVariable(name: "PyId_print_file_and_line", scope: !852, file: !1, line: 966, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line)
!964 = !DIGlobalVariable(name: "PyId_text", scope: !852, file: !1, line: 967, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text)
!965 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !1, line: 24, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!966 = !DIGlobalVariable(name: "PyId_builtins", scope: !0, file: !1, line: 23, type: !952, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_builtins)
!967 = !{i32 2, !"Dwarf Version", i32 4}
!968 = !{i32 2, !"Debug Info Version", i32 3}
!969 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!970 = !DIExpression()
!971 = !DILocation(line: 28, column: 25, scope: !420)
!972 = !DILocation(line: 28, column: 41, scope: !420)
!973 = !DILocation(line: 28, column: 58, scope: !420)
!974 = !DILocation(line: 30, column: 29, scope: !429)
!975 = !DILocation(line: 30, column: 29, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !1, discriminator: 6)
!977 = !DILexicalBlockFile(scope: !429, file: !1, discriminator: 5)
!978 = !{!979, !979, i64 0}
!979 = !{!"any pointer", !980, i64 0}
!980 = !{!"omnipotent char", !981, i64 0}
!981 = !{!"Simple C/C++ TBAA"}
!982 = !DILocation(line: 33, column: 19, scope: !447)
!983 = !DILocation(line: 33, column: 27, scope: !447)
!984 = !DILocation(line: 33, column: 31, scope: !985)
!985 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!986 = !DILocation(line: 36, column: 9, scope: !987)
!987 = !DILexicalBlockFile(scope: !988, file: !1, discriminator: 3)
!988 = distinct !DILexicalBlock(scope: !445, file: !1, line: 36, column: 9)
!989 = !{!990, !979, i64 8}
!990 = !{!"_object", !991, i64 0, !979, i64 8}
!991 = !{!"long", !980, i64 0}
!992 = !DILocation(line: 33, column: 9, scope: !420)
!993 = !DILocation(line: 36, column: 9, scope: !994)
!994 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 1)
!995 = !DILocation(line: 36, column: 9, scope: !988)
!996 = !{!990, !991, i64 0}
!997 = !DILocation(line: 36, column: 9, scope: !445)
!998 = !{!999, !979, i64 48}
!999 = !{!"_typeobject", !1000, i64 0, !979, i64 24, !991, i64 32, !991, i64 40, !979, i64 48, !979, i64 56, !979, i64 64, !979, i64 72, !979, i64 80, !979, i64 88, !979, i64 96, !979, i64 104, !979, i64 112, !979, i64 120, !979, i64 128, !979, i64 136, !979, i64 144, !979, i64 152, !979, i64 160, !991, i64 168, !979, i64 176, !979, i64 184, !979, i64 192, !979, i64 200, !991, i64 208, !979, i64 216, !979, i64 224, !979, i64 232, !979, i64 240, !979, i64 248, !979, i64 256, !979, i64 264, !979, i64 272, !979, i64 280, !991, i64 288, !979, i64 296, !979, i64 304, !979, i64 312, !979, i64 320, !979, i64 328, !979, i64 336, !979, i64 344, !979, i64 352, !979, i64 360, !979, i64 368, !979, i64 376, !1001, i64 384, !979, i64 392}
!1000 = !{!"", !990, i64 0, !991, i64 16}
!1001 = !{!"int", !980, i64 0}
!1002 = !DILocation(line: 42, column: 23, scope: !420)
!1003 = !{!1004, !979, i64 80}
!1004 = !{!"_ts", !979, i64 0, !979, i64 8, !979, i64 16, !979, i64 24, !1001, i64 32, !980, i64 36, !980, i64 37, !1001, i64 40, !1001, i64 44, !979, i64 48, !979, i64 56, !979, i64 64, !979, i64 72, !979, i64 80, !979, i64 88, !979, i64 96, !979, i64 104, !979, i64 112, !979, i64 120, !979, i64 128, !1001, i64 136, !979, i64 144, !991, i64 152, !1001, i64 160, !979, i64 168, !979, i64 176, !979, i64 184}
!1005 = !DILocation(line: 31, column: 15, scope: !420)
!1006 = !DILocation(line: 43, column: 24, scope: !420)
!1007 = !{!1004, !979, i64 88}
!1008 = !DILocation(line: 31, column: 25, scope: !420)
!1009 = !DILocation(line: 44, column: 28, scope: !420)
!1010 = !{!1004, !979, i64 96}
!1011 = !DILocation(line: 31, column: 36, scope: !420)
!1012 = !DILocation(line: 46, column: 25, scope: !420)
!1013 = !DILocation(line: 47, column: 26, scope: !420)
!1014 = !DILocation(line: 48, column: 30, scope: !420)
!1015 = !DILocation(line: 50, column: 5, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!1017 = !DILocation(line: 50, column: 5, scope: !452)
!1018 = !DILocation(line: 50, column: 5, scope: !449)
!1019 = !DILocation(line: 50, column: 5, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 4)
!1021 = !DILocation(line: 50, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !451, file: !1, line: 50, column: 5)
!1023 = !DILocation(line: 50, column: 5, scope: !451)
!1024 = !DILocation(line: 50, column: 5, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 6)
!1026 = !DILocation(line: 51, column: 5, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !454, file: !1, discriminator: 1)
!1028 = !DILocation(line: 51, column: 5, scope: !457)
!1029 = !DILocation(line: 51, column: 5, scope: !454)
!1030 = !DILocation(line: 51, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 4)
!1032 = !DILocation(line: 51, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !456, file: !1, line: 51, column: 5)
!1034 = !DILocation(line: 51, column: 5, scope: !456)
!1035 = !DILocation(line: 51, column: 5, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1033, file: !1, discriminator: 6)
!1037 = !DILocation(line: 52, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!1039 = !DILocation(line: 52, column: 5, scope: !462)
!1040 = !DILocation(line: 52, column: 5, scope: !459)
!1041 = !DILocation(line: 52, column: 5, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 4)
!1043 = !DILocation(line: 52, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !461, file: !1, line: 52, column: 5)
!1045 = !DILocation(line: 52, column: 5, scope: !461)
!1046 = !DILocation(line: 52, column: 5, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 6)
!1048 = !DILocation(line: 53, column: 1, scope: !420)
!1049 = !DILocation(line: 56, column: 27, scope: !463)
!1050 = !DILocation(line: 56, column: 48, scope: !463)
!1051 = !DILocation(line: 58, column: 29, scope: !471)
!1052 = !DILocation(line: 58, column: 29, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 6)
!1054 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 5)
!1055 = !DILocation(line: 60, column: 15, scope: !463)
!1056 = !DILocation(line: 62, column: 19, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !463, file: !1, line: 62, column: 9)
!1058 = !DILocation(line: 62, column: 27, scope: !1057)
!1059 = !DILocation(line: 63, column: 10, scope: !1057)
!1060 = !{!999, !991, i64 168}
!1061 = !DILocation(line: 63, column: 10, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1057, file: !1, discriminator: 1)
!1063 = !DILocation(line: 62, column: 9, scope: !463)
!1064 = !DILocation(line: 64, column: 22, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 63, column: 45)
!1066 = !DILocation(line: 64, column: 9, scope: !1065)
!1067 = !DILocation(line: 67, column: 9, scope: !1065)
!1068 = !DILocation(line: 69, column: 5, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 1)
!1070 = !DILocation(line: 69, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !478, file: !1, line: 69, column: 5)
!1072 = !DILocation(line: 69, column: 5, scope: !478)
!1073 = !DILocation(line: 69, column: 5, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1071, file: !1, discriminator: 2)
!1075 = !DILocation(line: 70, column: 25, scope: !463)
!1076 = !{!1004, !979, i64 112}
!1077 = !DILocation(line: 59, column: 15, scope: !463)
!1078 = !DILocation(line: 71, column: 19, scope: !483)
!1079 = !DILocation(line: 71, column: 40, scope: !483)
!1080 = !DILocation(line: 71, column: 27, scope: !483)
!1081 = !DILocation(line: 73, column: 9, scope: !482)
!1082 = !DILocation(line: 74, column: 19, scope: !481)
!1083 = !DILocation(line: 74, column: 27, scope: !481)
!1084 = !DILocation(line: 74, column: 31, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!1086 = !DILocation(line: 84, column: 22, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 84, column: 22)
!1088 = distinct !DILexicalBlock(scope: !480, file: !1, line: 82, column: 17)
!1089 = !DILocation(line: 74, column: 13, scope: !482)
!1090 = !DILocation(line: 82, column: 40, scope: !1088)
!1091 = !DILocation(line: 82, column: 31, scope: !1088)
!1092 = !DILocation(line: 83, column: 24, scope: !1088)
!1093 = !DILocation(line: 76, column: 23, scope: !480)
!1094 = !DILocation(line: 83, column: 17, scope: !1088)
!1095 = !DILocation(line: 84, column: 22, scope: !1088)
!1096 = !DILocation(line: 89, column: 24, scope: !1087)
!1097 = !DILocation(line: 90, column: 27, scope: !480)
!1098 = !DILocation(line: 91, column: 17, scope: !480)
!1099 = !DILocation(line: 76, column: 30, scope: !480)
!1100 = !DILocation(line: 92, column: 13, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!1102 = !DILocation(line: 92, column: 13, scope: !486)
!1103 = !DILocation(line: 85, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 84, column: 44)
!1105 = !DILocation(line: 92, column: 13, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 4)
!1107 = !DILocation(line: 92, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !488, file: !1, line: 92, column: 13)
!1109 = !DILocation(line: 92, column: 13, scope: !488)
!1110 = !DILocation(line: 92, column: 13, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 6)
!1112 = !DILocation(line: 93, column: 13, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 1)
!1114 = !DILocation(line: 93, column: 13, scope: !491)
!1115 = !DILocation(line: 93, column: 13, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 4)
!1117 = !DILocation(line: 93, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !493, file: !1, line: 93, column: 13)
!1119 = !DILocation(line: 93, column: 13, scope: !493)
!1120 = !DILocation(line: 93, column: 13, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1118, file: !1, discriminator: 6)
!1122 = !DILocation(line: 94, column: 29, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !480, file: !1, line: 94, column: 17)
!1124 = !DILocation(line: 102, column: 23, scope: !497)
!1125 = !DILocation(line: 102, column: 13, scope: !482)
!1126 = !DILocation(line: 104, column: 31, scope: !496)
!1127 = !DILocation(line: 103, column: 39, scope: !496)
!1128 = !DILocation(line: 104, column: 13, scope: !496)
!1129 = !DILocation(line: 105, column: 17, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 1)
!1131 = !DILocation(line: 105, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !500, file: !1, line: 105, column: 17)
!1133 = !DILocation(line: 105, column: 17, scope: !500)
!1134 = !DILocation(line: 105, column: 17, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1132, file: !1, discriminator: 3)
!1136 = !DILocation(line: 106, column: 29, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !501, file: !1, line: 106, column: 21)
!1138 = !DILocation(line: 106, column: 21, scope: !501)
!1139 = !DILocation(line: 107, column: 21, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 106, column: 39)
!1141 = !DILocation(line: 108, column: 21, scope: !1140)
!1142 = !DILocation(line: 112, column: 13, scope: !496)
!1143 = !DILocation(line: 113, column: 9, scope: !496)
!1144 = !DILocation(line: 114, column: 13, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!1146 = !DILocation(line: 114, column: 13, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !503, file: !1, line: 114, column: 13)
!1148 = !DILocation(line: 114, column: 13, scope: !503)
!1149 = !DILocation(line: 114, column: 13, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1147, file: !1, discriminator: 3)
!1151 = !DILocation(line: 117, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !463, file: !1, line: 117, column: 9)
!1153 = !DILocation(line: 117, column: 23, scope: !1152)
!1154 = !DILocation(line: 117, column: 26, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 1)
!1156 = !DILocation(line: 117, column: 9, scope: !463)
!1157 = !DILocation(line: 118, column: 14, scope: !1152)
!1158 = !DILocation(line: 118, column: 9, scope: !1152)
!1159 = !DILocation(line: 119, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!1161 = !DILocation(line: 119, column: 5, scope: !506)
!1162 = !DILocation(line: 119, column: 5, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !1, discriminator: 2)
!1164 = distinct !DILexicalBlock(scope: !506, file: !1, line: 119, column: 5)
!1165 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 120, column: 5, scope: !463)
!1167 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !1166)
!1168 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !1166)
!1169 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !1166)
!1170 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !1166)
!1171 = !DILocation(line: 33, column: 19, scope: !447, inlinedAt: !1166)
!1172 = !DILocation(line: 33, column: 27, scope: !447, inlinedAt: !1166)
!1173 = !DILocation(line: 33, column: 31, scope: !985, inlinedAt: !1166)
!1174 = !DILocation(line: 36, column: 9, scope: !987, inlinedAt: !1166)
!1175 = !DILocation(line: 33, column: 9, scope: !420, inlinedAt: !1166)
!1176 = !DILocation(line: 36, column: 9, scope: !994, inlinedAt: !1166)
!1177 = !DILocation(line: 36, column: 9, scope: !988, inlinedAt: !1166)
!1178 = !DILocation(line: 36, column: 9, scope: !445, inlinedAt: !1166)
!1179 = !DILocation(line: 120, column: 5, scope: !463)
!1180 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !1166)
!1181 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !1166)
!1182 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !1166)
!1183 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !1166)
!1184 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !1166)
!1185 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !1166)
!1186 = !DILocation(line: 46, column: 25, scope: !420, inlinedAt: !1166)
!1187 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !1166)
!1188 = !DILocation(line: 48, column: 30, scope: !420, inlinedAt: !1166)
!1189 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !1166)
!1190 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !1166)
!1191 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !1166)
!1192 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !1166)
!1193 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !1166)
!1194 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !1166)
!1195 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !1166)
!1196 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !1166)
!1197 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !1166)
!1198 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !1166)
!1199 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !1166)
!1200 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !1166)
!1201 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !1166)
!1202 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !1166)
!1203 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !1166)
!1204 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !1166)
!1205 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !1166)
!1206 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !1166)
!1207 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !1166)
!1208 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !1166)
!1209 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !1166)
!1210 = !DILocation(line: 121, column: 1, scope: !463)
!1211 = !DILocation(line: 754, column: 24, scope: !737)
!1212 = !DILocation(line: 754, column: 47, scope: !737)
!1213 = !DILocation(line: 756, column: 5, scope: !737)
!1214 = !DILocation(line: 756, column: 13, scope: !737)
!1215 = !DILocation(line: 760, column: 5, scope: !737)
!1216 = !DILocation(line: 771, column: 14, scope: !737)
!1217 = !DILocation(line: 757, column: 15, scope: !737)
!1218 = !DILocation(line: 772, column: 5, scope: !737)
!1219 = !DILocation(line: 773, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!1221 = !DILocation(line: 773, column: 5, scope: !761)
!1222 = !DILocation(line: 773, column: 5, scope: !758)
!1223 = !DILocation(line: 773, column: 5, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 4)
!1225 = !DILocation(line: 773, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !760, file: !1, line: 773, column: 5)
!1227 = !DILocation(line: 773, column: 5, scope: !760)
!1228 = !DILocation(line: 773, column: 5, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 6)
!1230 = !DILocation(line: 774, column: 5, scope: !737)
!1231 = !DILocation(line: 776, column: 1, scope: !737)
!1232 = !DILocation(line: 775, column: 5, scope: !737)
!1233 = !DILocation(line: 127, column: 30, scope: !507)
!1234 = !DILocation(line: 130, column: 11, scope: !507)
!1235 = !DILocation(line: 129, column: 15, scope: !507)
!1236 = !DILocation(line: 131, column: 10, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !507, file: !1, line: 131, column: 9)
!1238 = !DILocation(line: 131, column: 9, scope: !507)
!1239 = !DILocation(line: 133, column: 21, scope: !507)
!1240 = !DILocation(line: 133, column: 5, scope: !507)
!1241 = !DILocation(line: 134, column: 5, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 1)
!1243 = !DILocation(line: 134, column: 5, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !512, file: !1, line: 134, column: 5)
!1245 = !DILocation(line: 134, column: 5, scope: !512)
!1246 = !DILocation(line: 134, column: 5, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1244, file: !1, discriminator: 3)
!1248 = !DILocation(line: 135, column: 1, scope: !507)
!1249 = !DILocation(line: 138, column: 25, scope: !513)
!1250 = !DILocation(line: 140, column: 5, scope: !513)
!1251 = !DILocation(line: 141, column: 1, scope: !513)
!1252 = !DILocation(line: 144, column: 27, scope: !516)
!1253 = !DILocation(line: 144, column: 50, scope: !516)
!1254 = !DILocation(line: 146, column: 23, scope: !516)
!1255 = !DILocation(line: 146, column: 15, scope: !516)
!1256 = !DILocation(line: 147, column: 5, scope: !516)
!1257 = !DILocation(line: 148, column: 5, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1259 = !DILocation(line: 148, column: 5, scope: !527)
!1260 = !DILocation(line: 148, column: 5, scope: !524)
!1261 = !DILocation(line: 148, column: 5, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 4)
!1263 = !DILocation(line: 148, column: 5, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !526, file: !1, line: 148, column: 5)
!1265 = !DILocation(line: 148, column: 5, scope: !526)
!1266 = !DILocation(line: 148, column: 5, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1264, file: !1, discriminator: 6)
!1268 = !DILocation(line: 149, column: 1, scope: !516)
!1269 = !DILocation(line: 160, column: 26, scope: !534)
!1270 = !DILocation(line: 160, column: 26, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 6)
!1272 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 5)
!1273 = !DILocation(line: 162, column: 19, scope: !528)
!1274 = !DILocation(line: 162, column: 12, scope: !528)
!1275 = !DILocation(line: 162, column: 44, scope: !528)
!1276 = !DILocation(line: 162, column: 5, scope: !528)
!1277 = !DILocation(line: 167, column: 39, scope: !538)
!1278 = !DILocation(line: 167, column: 54, scope: !538)
!1279 = !DILocation(line: 169, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !538, file: !1, line: 169, column: 9)
!1281 = !DILocation(line: 169, column: 28, scope: !1280)
!1282 = !DILocation(line: 169, column: 21, scope: !1280)
!1283 = !DILocation(line: 173, column: 9, scope: !544)
!1284 = !DILocation(line: 173, column: 9, scope: !538)
!1285 = !DILocation(line: 175, column: 13, scope: !543)
!1286 = !DILocation(line: 174, column: 23, scope: !543)
!1287 = !DILocation(line: 174, column: 20, scope: !543)
!1288 = !DILocation(line: 179, column: 23, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 178, column: 18)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 176, column: 33)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 176, column: 9)
!1292 = distinct !DILexicalBlock(scope: !543, file: !1, line: 176, column: 9)
!1293 = !DILocation(line: 176, column: 23, scope: !1291)
!1294 = !DILocation(line: 176, column: 9, scope: !1292)
!1295 = !DILocation(line: 178, column: 18, scope: !1289)
!1296 = !DILocation(line: 176, column: 29, scope: !1291)
!1297 = !DILocation(line: 178, column: 18, scope: !1290)
!1298 = !DILocation(line: 187, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !538, file: !1, line: 187, column: 9)
!1300 = !DILocation(line: 188, column: 15, scope: !1299)
!1301 = !DILocation(line: 187, column: 9, scope: !538)
!1302 = !DILocation(line: 190, column: 9, scope: !548)
!1303 = !DILocation(line: 190, column: 9, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!1305 = !DILocation(line: 190, column: 40, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 2)
!1307 = !DILocation(line: 190, column: 37, scope: !548)
!1308 = !DILocation(line: 190, column: 40, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 3)
!1310 = !DILocation(line: 190, column: 9, scope: !538)
!1311 = !DILocation(line: 191, column: 13, scope: !547)
!1312 = !DILocation(line: 192, column: 19, scope: !547)
!1313 = !DILocation(line: 192, column: 31, scope: !547)
!1314 = !DILocation(line: 192, column: 39, scope: !547)
!1315 = !DILocation(line: 335, column: 24, scope: !603, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 193, column: 9, scope: !547)
!1317 = !DILocation(line: 335, column: 43, scope: !603, inlinedAt: !1316)
!1318 = !DILocation(line: 335, column: 63, scope: !603, inlinedAt: !1316)
!1319 = !DILocation(line: 337, column: 29, scope: !610, inlinedAt: !1316)
!1320 = !DILocation(line: 337, column: 29, scope: !1321, inlinedAt: !1316)
!1321 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 6)
!1322 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 5)
!1323 = !DILocation(line: 339, column: 23, scope: !603, inlinedAt: !1316)
!1324 = !DILocation(line: 341, column: 28, scope: !603, inlinedAt: !1316)
!1325 = !DILocation(line: 344, column: 26, scope: !603, inlinedAt: !1316)
!1326 = !DILocation(line: 196, column: 15, scope: !547)
!1327 = !DILocation(line: 198, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !547, file: !1, line: 198, column: 13)
!1329 = !DILocation(line: 198, column: 13, scope: !547)
!1330 = !DILocation(line: 199, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 198, column: 24)
!1332 = !DILocation(line: 201, column: 9, scope: !1331)
!1333 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 202, column: 9, scope: !547)
!1335 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !1334)
!1336 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !1334)
!1337 = !DILocation(line: 33, column: 19, scope: !447, inlinedAt: !1334)
!1338 = !DILocation(line: 33, column: 27, scope: !447, inlinedAt: !1334)
!1339 = !DILocation(line: 33, column: 31, scope: !985, inlinedAt: !1334)
!1340 = !DILocation(line: 36, column: 9, scope: !987, inlinedAt: !1334)
!1341 = !DILocation(line: 33, column: 9, scope: !420, inlinedAt: !1334)
!1342 = !DILocation(line: 36, column: 9, scope: !994, inlinedAt: !1334)
!1343 = !DILocation(line: 36, column: 9, scope: !988, inlinedAt: !1334)
!1344 = !DILocation(line: 36, column: 9, scope: !445, inlinedAt: !1334)
!1345 = !DILocation(line: 202, column: 9, scope: !547)
!1346 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !1334)
!1347 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !1334)
!1348 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !1334)
!1349 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !1334)
!1350 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !1334)
!1351 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !1334)
!1352 = !DILocation(line: 46, column: 25, scope: !420, inlinedAt: !1334)
!1353 = !DILocation(line: 48, column: 30, scope: !420, inlinedAt: !1334)
!1354 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !1334)
!1355 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !1334)
!1356 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !1334)
!1357 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !1334)
!1358 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !1334)
!1359 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !1334)
!1360 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !1334)
!1361 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !1334)
!1362 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !1334)
!1363 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !1334)
!1364 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !1334)
!1365 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !1334)
!1366 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !1334)
!1367 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !1334)
!1368 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !1334)
!1369 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !1334)
!1370 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !1334)
!1371 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !1334)
!1372 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !1334)
!1373 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !1334)
!1374 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !1334)
!1375 = !DILocation(line: 206, column: 16, scope: !538)
!1376 = !DILocation(line: 206, column: 5, scope: !538)
!1377 = !DILocation(line: 207, column: 1, scope: !538)
!1378 = !DILocation(line: 335, column: 24, scope: !603)
!1379 = !DILocation(line: 335, column: 43, scope: !603)
!1380 = !DILocation(line: 335, column: 63, scope: !603)
!1381 = !DILocation(line: 337, column: 29, scope: !610)
!1382 = !DILocation(line: 337, column: 29, scope: !1321)
!1383 = !DILocation(line: 339, column: 23, scope: !603)
!1384 = !DILocation(line: 339, column: 13, scope: !603)
!1385 = !DILocation(line: 340, column: 24, scope: !603)
!1386 = !DILocation(line: 340, column: 14, scope: !603)
!1387 = !DILocation(line: 341, column: 28, scope: !603)
!1388 = !DILocation(line: 341, column: 18, scope: !603)
!1389 = !DILocation(line: 344, column: 26, scope: !603)
!1390 = !DILocation(line: 346, column: 1, scope: !603)
!1391 = !DILocation(line: 868, column: 33, scope: !816)
!1392 = !DILocation(line: 872, column: 15, scope: !816)
!1393 = !DILocation(line: 871, column: 19, scope: !816)
!1394 = !DILocation(line: 871, column: 23, scope: !816)
!1395 = !DILocation(line: 871, column: 27, scope: !816)
!1396 = !DILocation(line: 335, column: 24, scope: !603, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 875, column: 5, scope: !816)
!1398 = !DILocation(line: 335, column: 43, scope: !603, inlinedAt: !1397)
!1399 = !DILocation(line: 335, column: 63, scope: !603, inlinedAt: !1397)
!1400 = !DILocation(line: 337, column: 29, scope: !610, inlinedAt: !1397)
!1401 = !DILocation(line: 337, column: 29, scope: !1321, inlinedAt: !1397)
!1402 = !DILocation(line: 339, column: 23, scope: !603, inlinedAt: !1397)
!1403 = !DILocation(line: 340, column: 24, scope: !603, inlinedAt: !1397)
!1404 = !DILocation(line: 341, column: 28, scope: !603, inlinedAt: !1397)
!1405 = !DILocation(line: 344, column: 26, scope: !603, inlinedAt: !1397)
!1406 = !DILocation(line: 877, column: 9, scope: !816)
!1407 = !DILocation(line: 871, column: 15, scope: !816)
!1408 = !DILocation(line: 878, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !816, file: !1, line: 878, column: 9)
!1410 = !DILocation(line: 878, column: 24, scope: !1409)
!1411 = !DILocation(line: 878, column: 19, scope: !1409)
!1412 = !DILocation(line: 881, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !816, file: !1, line: 881, column: 9)
!1414 = !DILocation(line: 881, column: 9, scope: !816)
!1415 = !DILocation(line: 882, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 882, column: 13)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 881, column: 14)
!1418 = !DILocation(line: 882, column: 61, scope: !1416)
!1419 = !DILocation(line: 882, column: 13, scope: !1417)
!1420 = !DILocation(line: 884, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 884, column: 13)
!1422 = !DILocation(line: 884, column: 43, scope: !1421)
!1423 = !DILocation(line: 884, column: 13, scope: !1417)
!1424 = !DILocation(line: 886, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 886, column: 13)
!1426 = !DILocation(line: 886, column: 41, scope: !1425)
!1427 = !DILocation(line: 886, column: 13, scope: !1417)
!1428 = !DILocation(line: 890, column: 27, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !816, file: !1, line: 890, column: 9)
!1430 = !DILocation(line: 890, column: 9, scope: !1429)
!1431 = !DILocation(line: 890, column: 34, scope: !1429)
!1432 = !DILocation(line: 893, column: 10, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !816, file: !1, line: 893, column: 9)
!1434 = !DILocation(line: 890, column: 9, scope: !816)
!1435 = !DILocation(line: 897, column: 17, scope: !816)
!1436 = !{!999, !979, i64 24}
!1437 = !DILocation(line: 873, column: 11, scope: !816)
!1438 = !DILocation(line: 898, column: 19, scope: !827)
!1439 = !DILocation(line: 898, column: 9, scope: !816)
!1440 = !DILocation(line: 899, column: 21, scope: !826)
!1441 = !DILocation(line: 899, column: 15, scope: !826)
!1442 = !DILocation(line: 900, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !826, file: !1, line: 900, column: 13)
!1444 = !DILocation(line: 901, column: 28, scope: !1443)
!1445 = !DILocation(line: 900, column: 13, scope: !826)
!1446 = !DILocation(line: 902, column: 5, scope: !826)
!1447 = !DILocation(line: 904, column: 18, scope: !816)
!1448 = !DILocation(line: 905, column: 20, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !816, file: !1, line: 905, column: 9)
!1450 = !DILocation(line: 905, column: 9, scope: !816)
!1451 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 906, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 905, column: 29)
!1455 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !1452)
!1456 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !1452)
!1457 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !1452)
!1458 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !1452)
!1459 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !1452)
!1460 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !1452)
!1461 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !1452)
!1462 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !1452)
!1463 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !1452)
!1464 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !1452)
!1465 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !1452)
!1466 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !1452)
!1467 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !1452)
!1468 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !1452)
!1469 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !1452)
!1470 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !1452)
!1471 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !1452)
!1472 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !1452)
!1473 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !1453)
!1474 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !1452)
!1475 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !1452)
!1476 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !1452)
!1477 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !1452)
!1478 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !1452)
!1479 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !1452)
!1480 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !1452)
!1481 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !1452)
!1482 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !1452)
!1483 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !1452)
!1484 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !1452)
!1485 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !1452)
!1486 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !1452)
!1487 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !1452)
!1488 = !DILocation(line: 907, column: 13, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 907, column: 13)
!1490 = !DILocation(line: 907, column: 48, scope: !1489)
!1491 = !DILocation(line: 907, column: 13, scope: !1454)
!1492 = !DILocation(line: 911, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 911, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 910, column: 10)
!1495 = !DILocation(line: 911, column: 66, scope: !1493)
!1496 = !DILocation(line: 911, column: 13, scope: !1494)
!1497 = !DILocation(line: 912, column: 17, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 912, column: 17)
!1499 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 911, column: 72)
!1500 = !DILocation(line: 912, column: 65, scope: !1498)
!1501 = !DILocation(line: 912, column: 17, scope: !1499)
!1502 = !DILocation(line: 914, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 914, column: 17)
!1504 = !DILocation(line: 914, column: 44, scope: !1503)
!1505 = !DILocation(line: 914, column: 17, scope: !1499)
!1506 = !DILocation(line: 918, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !816, file: !1, line: 918, column: 9)
!1508 = !DILocation(line: 918, column: 9, scope: !816)
!1509 = !DILocation(line: 919, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 919, column: 13)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 918, column: 28)
!1512 = !DILocation(line: 919, column: 48, scope: !1510)
!1513 = !DILocation(line: 919, column: 13, scope: !1511)
!1514 = !DILocation(line: 923, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 923, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 922, column: 10)
!1517 = !DILocation(line: 923, column: 46, scope: !1515)
!1518 = !DILocation(line: 923, column: 13, scope: !1516)
!1519 = !DILocation(line: 927, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !816, file: !1, line: 927, column: 9)
!1521 = !DILocation(line: 927, column: 16, scope: !1520)
!1522 = !DILocation(line: 927, column: 11, scope: !1520)
!1523 = !DILocation(line: 928, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 928, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 927, column: 28)
!1526 = !DILocation(line: 928, column: 41, scope: !1524)
!1527 = !DILocation(line: 928, column: 13, scope: !1525)
!1528 = !DILocation(line: 930, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 930, column: 13)
!1530 = !DILocation(line: 930, column: 52, scope: !1529)
!1531 = !DILocation(line: 930, column: 13, scope: !1525)
!1532 = !DILocation(line: 933, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !816, file: !1, line: 933, column: 9)
!1534 = !DILocation(line: 934, column: 9, scope: !1533)
!1535 = !DILocation(line: 937, column: 5, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 1)
!1537 = !DILocation(line: 937, column: 5, scope: !829)
!1538 = !DILocation(line: 937, column: 5, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !831, file: !1, discriminator: 4)
!1540 = !DILocation(line: 937, column: 5, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !831, file: !1, line: 937, column: 5)
!1542 = !DILocation(line: 937, column: 5, scope: !831)
!1543 = !DILocation(line: 937, column: 5, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1541, file: !1, discriminator: 6)
!1545 = !DILocation(line: 938, column: 5, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 1)
!1547 = !DILocation(line: 938, column: 5, scope: !837)
!1548 = !DILocation(line: 938, column: 5, scope: !834)
!1549 = !DILocation(line: 938, column: 5, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 4)
!1551 = !DILocation(line: 938, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !836, file: !1, line: 938, column: 5)
!1553 = !DILocation(line: 938, column: 5, scope: !836)
!1554 = !DILocation(line: 938, column: 5, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1552, file: !1, discriminator: 6)
!1556 = !DILocation(line: 939, column: 5, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !839, file: !1, discriminator: 1)
!1558 = !DILocation(line: 939, column: 5, scope: !842)
!1559 = !DILocation(line: 939, column: 5, scope: !839)
!1560 = !DILocation(line: 939, column: 5, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 4)
!1562 = !DILocation(line: 939, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !841, file: !1, line: 939, column: 5)
!1564 = !DILocation(line: 939, column: 5, scope: !841)
!1565 = !DILocation(line: 939, column: 5, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1563, file: !1, discriminator: 6)
!1567 = !DILocation(line: 940, column: 5, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !844, file: !1, discriminator: 1)
!1569 = !DILocation(line: 940, column: 5, scope: !847)
!1570 = !DILocation(line: 940, column: 5, scope: !844)
!1571 = !DILocation(line: 940, column: 5, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !846, file: !1, discriminator: 4)
!1573 = !DILocation(line: 940, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !846, file: !1, line: 940, column: 5)
!1575 = !DILocation(line: 940, column: 5, scope: !846)
!1576 = !DILocation(line: 940, column: 5, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 6)
!1578 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 941, column: 5, scope: !816)
!1581 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !1579)
!1582 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !1579)
!1583 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !1579)
!1584 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !1579)
!1585 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !1579)
!1586 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !1579)
!1587 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !1579)
!1588 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !1579)
!1589 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !1579)
!1590 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !1579)
!1591 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !1579)
!1592 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !1579)
!1593 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !1579)
!1594 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !1579)
!1595 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !1579)
!1596 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !1579)
!1597 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !1579)
!1598 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !1579)
!1599 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !1580)
!1600 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !1579)
!1601 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !1579)
!1602 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !1579)
!1603 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !1579)
!1604 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !1579)
!1605 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !1579)
!1606 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !1579)
!1607 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !1579)
!1608 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !1579)
!1609 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !1579)
!1610 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !1579)
!1611 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !1579)
!1612 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !1579)
!1613 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !1579)
!1614 = !DILocation(line: 942, column: 1, scope: !816)
!1615 = !DILocation(line: 211, column: 34, scope: !552)
!1616 = !DILocation(line: 160, column: 26, scope: !534, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 213, column: 40, scope: !552)
!1618 = !DILocation(line: 160, column: 26, scope: !1271, inlinedAt: !1617)
!1619 = !DILocation(line: 162, column: 19, scope: !528, inlinedAt: !1617)
!1620 = !DILocation(line: 162, column: 12, scope: !528, inlinedAt: !1617)
!1621 = !DILocation(line: 162, column: 44, scope: !528, inlinedAt: !1617)
!1622 = !DILocation(line: 213, column: 12, scope: !552)
!1623 = !DILocation(line: 213, column: 5, scope: !552)
!1624 = !DILocation(line: 224, column: 37, scope: !555)
!1625 = !DILocation(line: 224, column: 53, scope: !555)
!1626 = !DILocation(line: 224, column: 69, scope: !555)
!1627 = !DILocation(line: 226, column: 22, scope: !555)
!1628 = !DILocation(line: 226, column: 15, scope: !555)
!1629 = !DILocation(line: 227, column: 23, scope: !555)
!1630 = !DILocation(line: 227, column: 15, scope: !555)
!1631 = !DILocation(line: 228, column: 15, scope: !555)
!1632 = !DILocation(line: 229, column: 15, scope: !555)
!1633 = !DILocation(line: 230, column: 20, scope: !555)
!1634 = !DILocation(line: 232, column: 14, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !555, file: !1, line: 232, column: 9)
!1636 = !DILocation(line: 232, column: 9, scope: !555)
!1637 = !DILocation(line: 240, column: 10, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !555, file: !1, line: 240, column: 9)
!1639 = !DILocation(line: 240, column: 9, scope: !555)
!1640 = !DILocation(line: 242, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 240, column: 17)
!1642 = !DILocation(line: 243, column: 5, scope: !1641)
!1643 = !DILocation(line: 245, column: 9, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !555, file: !1, line: 245, column: 9)
!1645 = !DILocation(line: 246, column: 19, scope: !1644)
!1646 = !DILocation(line: 245, column: 9, scope: !555)
!1647 = !DILocation(line: 251, column: 9, scope: !570)
!1648 = !DILocation(line: 251, column: 9, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 1)
!1650 = !DILocation(line: 251, column: 9, scope: !555)
!1651 = !DILocation(line: 253, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !569, file: !1, line: 253, column: 13)
!1653 = !DILocation(line: 253, column: 13, scope: !569)
!1654 = !DILocation(line: 254, column: 27, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !1, line: 253, column: 22)
!1656 = !DILocation(line: 252, column: 13, scope: !569)
!1657 = !DILocation(line: 255, column: 29, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 255, column: 17)
!1659 = !DILocation(line: 255, column: 17, scope: !1655)
!1660 = !DILocation(line: 266, column: 26, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 1)
!1662 = !DILocation(line: 266, column: 22, scope: !573)
!1663 = !DILocation(line: 269, column: 23, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !572, file: !1, line: 269, column: 17)
!1665 = !DILocation(line: 269, column: 17, scope: !572)
!1666 = !DILocation(line: 270, column: 24, scope: !1664)
!1667 = !DILocation(line: 267, column: 23, scope: !572)
!1668 = !DILocation(line: 270, column: 17, scope: !1664)
!1669 = !DILocation(line: 271, column: 22, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 271, column: 22)
!1671 = !DILocation(line: 271, column: 22, scope: !1664)
!1672 = !DILocation(line: 272, column: 17, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 271, column: 44)
!1674 = !DILocation(line: 274, column: 13, scope: !1673)
!1675 = !DILocation(line: 276, column: 24, scope: !1670)
!1676 = !DILocation(line: 278, column: 22, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !572, file: !1, line: 278, column: 17)
!1678 = !DILocation(line: 278, column: 17, scope: !572)
!1679 = !DILocation(line: 280, column: 19, scope: !572)
!1680 = !DILocation(line: 267, column: 30, scope: !572)
!1681 = !DILocation(line: 281, column: 13, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!1683 = !DILocation(line: 281, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !576, file: !1, line: 281, column: 13)
!1685 = !DILocation(line: 281, column: 13, scope: !576)
!1686 = !DILocation(line: 281, column: 13, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1684, file: !1, discriminator: 3)
!1688 = !DILocation(line: 282, column: 21, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !572, file: !1, line: 282, column: 17)
!1690 = !DILocation(line: 282, column: 17, scope: !572)
!1691 = !DILocation(line: 284, column: 13, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 1)
!1693 = !DILocation(line: 284, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !578, file: !1, line: 284, column: 13)
!1695 = !DILocation(line: 284, column: 13, scope: !578)
!1696 = !DILocation(line: 284, column: 13, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1694, file: !1, discriminator: 3)
!1698 = !DILocation(line: 290, column: 26, scope: !582)
!1699 = !DILocation(line: 290, column: 18, scope: !573)
!1700 = !DILocation(line: 291, column: 13, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1702 = !DILocation(line: 291, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !580, file: !1, line: 291, column: 13)
!1704 = !DILocation(line: 291, column: 13, scope: !580)
!1705 = !DILocation(line: 291, column: 13, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1703, file: !1, discriminator: 3)
!1707 = !DILocation(line: 293, column: 13, scope: !581)
!1708 = !DILocation(line: 294, column: 9, scope: !581)
!1709 = !DILocation(line: 296, column: 10, scope: !555)
!1710 = !DILocation(line: 297, column: 10, scope: !555)
!1711 = !DILocation(line: 298, column: 5, scope: !555)
!1712 = !DILocation(line: 300, column: 5, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!1714 = !DILocation(line: 300, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !584, file: !1, line: 300, column: 5)
!1716 = !DILocation(line: 300, column: 5, scope: !584)
!1717 = !DILocation(line: 300, column: 5, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 3)
!1719 = !DILocation(line: 301, column: 5, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!1721 = !DILocation(line: 301, column: 5, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !586, file: !1, line: 301, column: 5)
!1723 = !DILocation(line: 301, column: 5, scope: !586)
!1724 = !DILocation(line: 301, column: 5, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1722, file: !1, discriminator: 3)
!1726 = !DILocation(line: 306, column: 18, scope: !555)
!1727 = !DILocation(line: 335, column: 24, scope: !603, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 307, column: 5, scope: !555)
!1729 = !DILocation(line: 335, column: 43, scope: !603, inlinedAt: !1728)
!1730 = !DILocation(line: 335, column: 63, scope: !603, inlinedAt: !1728)
!1731 = !DILocation(line: 337, column: 29, scope: !610, inlinedAt: !1728)
!1732 = !DILocation(line: 337, column: 29, scope: !1321, inlinedAt: !1728)
!1733 = !DILocation(line: 339, column: 23, scope: !603, inlinedAt: !1728)
!1734 = !DILocation(line: 339, column: 13, scope: !603, inlinedAt: !1728)
!1735 = !DILocation(line: 340, column: 24, scope: !603, inlinedAt: !1728)
!1736 = !DILocation(line: 340, column: 14, scope: !603, inlinedAt: !1728)
!1737 = !DILocation(line: 341, column: 28, scope: !603, inlinedAt: !1728)
!1738 = !DILocation(line: 341, column: 18, scope: !603, inlinedAt: !1728)
!1739 = !DILocation(line: 344, column: 26, scope: !603, inlinedAt: !1728)
!1740 = !DILocation(line: 308, column: 20, scope: !591)
!1741 = !DILocation(line: 308, column: 9, scope: !555)
!1742 = !DILocation(line: 309, column: 13, scope: !589)
!1743 = !DILocation(line: 309, column: 17, scope: !589)
!1744 = !DILocation(line: 309, column: 13, scope: !590)
!1745 = !DILocation(line: 310, column: 17, scope: !589)
!1746 = !DILocation(line: 310, column: 13, scope: !589)
!1747 = !DILocation(line: 312, column: 13, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!1749 = !DILocation(line: 312, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !588, file: !1, line: 312, column: 13)
!1751 = !DILocation(line: 312, column: 13, scope: !588)
!1752 = !DILocation(line: 312, column: 13, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1750, file: !1, discriminator: 3)
!1754 = !DILocation(line: 315, column: 14, scope: !593)
!1755 = !DILocation(line: 315, column: 14, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1757, file: !1, discriminator: 6)
!1757 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 5)
!1758 = !DILocation(line: 316, column: 19, scope: !600)
!1759 = !DILocation(line: 316, column: 9, scope: !600)
!1760 = !{!1004, !1001, i64 32}
!1761 = !DILocation(line: 316, column: 37, scope: !600)
!1762 = !DILocation(line: 316, column: 35, scope: !600)
!1763 = !DILocation(line: 316, column: 9, scope: !555)
!1764 = !DILocation(line: 317, column: 9, scope: !599)
!1765 = !DILocation(line: 319, column: 9, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!1767 = !DILocation(line: 319, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !598, file: !1, line: 319, column: 9)
!1769 = !DILocation(line: 319, column: 9, scope: !598)
!1770 = !DILocation(line: 319, column: 9, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1768, file: !1, discriminator: 3)
!1772 = !DILocation(line: 320, column: 9, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 1)
!1774 = !DILocation(line: 320, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !602, file: !1, line: 320, column: 9)
!1776 = !DILocation(line: 320, column: 9, scope: !602)
!1777 = !DILocation(line: 320, column: 9, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1775, file: !1, discriminator: 3)
!1779 = !DILocation(line: 322, column: 16, scope: !599)
!1780 = !DILocation(line: 322, column: 14, scope: !599)
!1781 = !DILocation(line: 323, column: 16, scope: !599)
!1782 = !DILocation(line: 323, column: 14, scope: !599)
!1783 = !DILocation(line: 324, column: 9, scope: !599)
!1784 = !DILocation(line: 325, column: 9, scope: !599)
!1785 = !DILocation(line: 327, column: 9, scope: !599)
!1786 = !DILocation(line: 329, column: 5, scope: !555)
!1787 = !DILocation(line: 330, column: 5, scope: !555)
!1788 = !DILocation(line: 331, column: 1, scope: !555)
!1789 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 351, column: 5, scope: !614)
!1791 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !1790)
!1792 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !1790)
!1793 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !1790)
!1794 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !1790)
!1795 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !1790)
!1796 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !1790)
!1797 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !1790)
!1798 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !1790)
!1799 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !1790)
!1800 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !1790)
!1801 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !1790)
!1802 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !1790)
!1803 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !1790)
!1804 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !1790)
!1805 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !1790)
!1806 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !1790)
!1807 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !1790)
!1808 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !1790)
!1809 = !DILocation(line: 351, column: 5, scope: !614)
!1810 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !1790)
!1811 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !1790)
!1812 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !1790)
!1813 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !1790)
!1814 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !1790)
!1815 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !1790)
!1816 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !1790)
!1817 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !1790)
!1818 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !1790)
!1819 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !1790)
!1820 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !1790)
!1821 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !1790)
!1822 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !1790)
!1823 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !1790)
!1824 = !DILocation(line: 352, column: 1, scope: !614)
!1825 = !DILocation(line: 355, column: 29, scope: !618)
!1826 = !DILocation(line: 355, column: 48, scope: !618)
!1827 = !DILocation(line: 355, column: 68, scope: !618)
!1828 = !DILocation(line: 357, column: 29, scope: !625)
!1829 = !DILocation(line: 357, column: 29, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !1, discriminator: 6)
!1831 = !DILexicalBlockFile(scope: !625, file: !1, discriminator: 5)
!1832 = !DILocation(line: 359, column: 23, scope: !618)
!1833 = !{!1004, !979, i64 104}
!1834 = !DILocation(line: 359, column: 13, scope: !618)
!1835 = !DILocation(line: 360, column: 24, scope: !618)
!1836 = !DILocation(line: 360, column: 14, scope: !618)
!1837 = !DILocation(line: 361, column: 28, scope: !618)
!1838 = !{!1004, !979, i64 120}
!1839 = !DILocation(line: 361, column: 18, scope: !618)
!1840 = !DILocation(line: 363, column: 5, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!1842 = !DILocation(line: 363, column: 5, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !630, file: !1, line: 363, column: 5)
!1844 = !DILocation(line: 365, column: 5, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !634, file: !1, discriminator: 1)
!1846 = !DILocation(line: 363, column: 5, scope: !630)
!1847 = !DILocation(line: 363, column: 5, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1843, file: !1, discriminator: 2)
!1849 = !DILocation(line: 364, column: 5, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 1)
!1851 = !DILocation(line: 364, column: 5, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !632, file: !1, line: 364, column: 5)
!1853 = !DILocation(line: 364, column: 5, scope: !632)
!1854 = !DILocation(line: 364, column: 5, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1852, file: !1, discriminator: 2)
!1856 = !DILocation(line: 365, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !634, file: !1, line: 365, column: 5)
!1858 = !DILocation(line: 365, column: 5, scope: !634)
!1859 = !DILocation(line: 365, column: 5, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1857, file: !1, discriminator: 2)
!1861 = !DILocation(line: 366, column: 1, scope: !618)
!1862 = !DILocation(line: 369, column: 28, scope: !635)
!1863 = !DILocation(line: 369, column: 46, scope: !635)
!1864 = !DILocation(line: 369, column: 65, scope: !635)
!1865 = !DILocation(line: 372, column: 29, scope: !645)
!1866 = !DILocation(line: 372, column: 29, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1868, file: !1, discriminator: 6)
!1868 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 5)
!1869 = !DILocation(line: 374, column: 23, scope: !635)
!1870 = !DILocation(line: 371, column: 15, scope: !635)
!1871 = !DILocation(line: 375, column: 24, scope: !635)
!1872 = !DILocation(line: 371, column: 25, scope: !635)
!1873 = !DILocation(line: 376, column: 28, scope: !635)
!1874 = !DILocation(line: 371, column: 36, scope: !635)
!1875 = !DILocation(line: 378, column: 22, scope: !635)
!1876 = !DILocation(line: 379, column: 23, scope: !635)
!1877 = !DILocation(line: 380, column: 27, scope: !635)
!1878 = !DILocation(line: 382, column: 5, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 1)
!1880 = !DILocation(line: 382, column: 5, scope: !653)
!1881 = !DILocation(line: 382, column: 5, scope: !650)
!1882 = !DILocation(line: 382, column: 5, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !652, file: !1, discriminator: 4)
!1884 = !DILocation(line: 382, column: 5, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !652, file: !1, line: 382, column: 5)
!1886 = !DILocation(line: 382, column: 5, scope: !652)
!1887 = !DILocation(line: 382, column: 5, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1885, file: !1, discriminator: 6)
!1889 = !DILocation(line: 383, column: 5, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 1)
!1891 = !DILocation(line: 383, column: 5, scope: !658)
!1892 = !DILocation(line: 383, column: 5, scope: !655)
!1893 = !DILocation(line: 383, column: 5, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 4)
!1895 = !DILocation(line: 383, column: 5, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !657, file: !1, line: 383, column: 5)
!1897 = !DILocation(line: 383, column: 5, scope: !657)
!1898 = !DILocation(line: 383, column: 5, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1896, file: !1, discriminator: 6)
!1900 = !DILocation(line: 384, column: 5, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!1902 = !DILocation(line: 384, column: 5, scope: !663)
!1903 = !DILocation(line: 384, column: 5, scope: !660)
!1904 = !DILocation(line: 384, column: 5, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 4)
!1906 = !DILocation(line: 384, column: 5, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !662, file: !1, line: 384, column: 5)
!1908 = !DILocation(line: 384, column: 5, scope: !662)
!1909 = !DILocation(line: 384, column: 5, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1907, file: !1, discriminator: 6)
!1911 = !DILocation(line: 385, column: 1, scope: !635)
!1912 = !DILocation(line: 392, column: 21, scope: !664)
!1913 = !DILocation(line: 144, column: 27, scope: !516, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 392, column: 5, scope: !664)
!1915 = !DILocation(line: 144, column: 50, scope: !516, inlinedAt: !1914)
!1916 = !DILocation(line: 146, column: 23, scope: !516, inlinedAt: !1914)
!1917 = !DILocation(line: 146, column: 15, scope: !516, inlinedAt: !1914)
!1918 = !DILocation(line: 147, column: 5, scope: !516, inlinedAt: !1914)
!1919 = !DILocation(line: 148, column: 5, scope: !1258, inlinedAt: !1914)
!1920 = !DILocation(line: 148, column: 5, scope: !527, inlinedAt: !1914)
!1921 = !DILocation(line: 148, column: 5, scope: !524, inlinedAt: !1914)
!1922 = !DILocation(line: 148, column: 5, scope: !1262, inlinedAt: !1914)
!1923 = !DILocation(line: 148, column: 5, scope: !1264, inlinedAt: !1914)
!1924 = !DILocation(line: 148, column: 5, scope: !526, inlinedAt: !1914)
!1925 = !DILocation(line: 148, column: 5, scope: !1267, inlinedAt: !1914)
!1926 = !DILocation(line: 392, column: 5, scope: !664)
!1927 = !DILocation(line: 394, column: 5, scope: !664)
!1928 = !DILocation(line: 400, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !667, file: !1, line: 400, column: 9)
!1930 = !DILocation(line: 400, column: 36, scope: !1929)
!1931 = !DILocation(line: 400, column: 9, scope: !667)
!1932 = !DILocation(line: 403, column: 9, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 400, column: 45)
!1934 = !DILocation(line: 138, column: 25, scope: !513, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 406, column: 5, scope: !667)
!1936 = !DILocation(line: 140, column: 5, scope: !513, inlinedAt: !1935)
!1937 = !DILocation(line: 407, column: 5, scope: !667)
!1938 = !DILocation(line: 411, column: 48, scope: !668)
!1939 = !DILocation(line: 411, column: 63, scope: !668)
!1940 = !DILocation(line: 413, column: 12, scope: !668)
!1941 = !DILocation(line: 413, column: 5, scope: !668)
!1942 = !DILocation(line: 417, column: 49, scope: !672)
!1943 = !DILocation(line: 417, column: 64, scope: !672)
!1944 = !DILocation(line: 417, column: 90, scope: !672)
!1945 = !DILocation(line: 421, column: 13, scope: !672)
!1946 = !{!1001, !1001, i64 0}
!1947 = !DILocation(line: 421, column: 9, scope: !672)
!1948 = !DILocation(line: 427, column: 20, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !672, file: !1, line: 427, column: 9)
!1950 = !DILocation(line: 427, column: 23, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1949, file: !1, discriminator: 1)
!1952 = !DILocation(line: 427, column: 9, scope: !672)
!1953 = !DILocation(line: 433, column: 19, scope: !682)
!1954 = !DILocation(line: 433, column: 15, scope: !682)
!1955 = !DILocation(line: 434, column: 19, scope: !682)
!1956 = !DILocation(line: 419, column: 15, scope: !672)
!1957 = !DILocation(line: 435, column: 5, scope: !682)
!1958 = !DILocation(line: 438, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !683, file: !1, line: 436, column: 10)
!1960 = !DILocation(line: 481, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !672, file: !1, line: 481, column: 9)
!1962 = !DILocation(line: 481, column: 9, scope: !672)
!1963 = !DILocation(line: 489, column: 24, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !672, file: !1, line: 489, column: 9)
!1965 = !DILocation(line: 489, column: 9, scope: !672)
!1966 = !DILocation(line: 490, column: 29, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 490, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 489, column: 33)
!1969 = !DILocation(line: 490, column: 13, scope: !1968)
!1970 = !DILocation(line: 491, column: 20, scope: !1967)
!1971 = !DILocation(line: 420, column: 19, scope: !672)
!1972 = !DILocation(line: 491, column: 13, scope: !1967)
!1973 = !DILocation(line: 493, column: 20, scope: !1967)
!1974 = !DILocation(line: 496, column: 16, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 494, column: 12)
!1976 = !DILocation(line: 498, column: 5, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!1978 = !DILocation(line: 498, column: 5, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !685, file: !1, line: 498, column: 5)
!1980 = !DILocation(line: 498, column: 5, scope: !685)
!1981 = !DILocation(line: 498, column: 5, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1979, file: !1, discriminator: 3)
!1983 = !DILocation(line: 500, column: 14, scope: !689)
!1984 = !DILocation(line: 500, column: 9, scope: !672)
!1985 = !DILocation(line: 501, column: 13, scope: !688)
!1986 = !DILocation(line: 420, column: 15, scope: !672)
!1987 = !DILocation(line: 502, column: 9, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 1)
!1989 = !DILocation(line: 502, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !687, file: !1, line: 502, column: 9)
!1991 = !DILocation(line: 502, column: 9, scope: !687)
!1992 = !DILocation(line: 502, column: 9, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !1, discriminator: 3)
!1994 = !DILocation(line: 503, column: 15, scope: !693)
!1995 = !DILocation(line: 503, column: 13, scope: !688)
!1996 = !DILocation(line: 504, column: 42, scope: !692)
!1997 = !DILocation(line: 504, column: 13, scope: !692)
!1998 = !DILocation(line: 505, column: 13, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!2000 = !DILocation(line: 505, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !691, file: !1, line: 505, column: 13)
!2002 = !DILocation(line: 505, column: 13, scope: !691)
!2003 = !DILocation(line: 505, column: 13, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2001, file: !1, discriminator: 3)
!2005 = !DILocation(line: 512, column: 1, scope: !672)
!2006 = !DILocation(line: 515, column: 42, scope: !694)
!2007 = !DILocation(line: 515, column: 59, scope: !694)
!2008 = !DILocation(line: 517, column: 22, scope: !694)
!2009 = !DILocation(line: 517, column: 15, scope: !694)
!2010 = !DILocation(line: 518, column: 24, scope: !694)
!2011 = !DILocation(line: 518, column: 15, scope: !694)
!2012 = !DILocation(line: 519, column: 5, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 1)
!2014 = !DILocation(line: 519, column: 5, scope: !703)
!2015 = !DILocation(line: 517, column: 33, scope: !694)
!2016 = !DILocation(line: 519, column: 5, scope: !706)
!2017 = !DILocation(line: 519, column: 5, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 4)
!2019 = !DILocation(line: 519, column: 5, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !705, file: !1, line: 519, column: 5)
!2021 = !DILocation(line: 519, column: 5, scope: !705)
!2022 = !DILocation(line: 519, column: 5, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2020, file: !1, discriminator: 6)
!2024 = !DILocation(line: 520, column: 5, scope: !694)
!2025 = !DILocation(line: 537, column: 30, scope: !707)
!2026 = !DILocation(line: 539, column: 12, scope: !707)
!2027 = !DILocation(line: 539, column: 5, scope: !707)
!2028 = !DILocation(line: 686, column: 32, scope: !710)
!2029 = !DILocation(line: 686, column: 47, scope: !710)
!2030 = !DILocation(line: 686, column: 63, scope: !710)
!2031 = !DILocation(line: 690, column: 13, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !710, file: !1, line: 690, column: 9)
!2033 = !DILocation(line: 690, column: 9, scope: !710)
!2034 = !DILocation(line: 693, column: 12, scope: !710)
!2035 = !DILocation(line: 688, column: 15, scope: !710)
!2036 = !DILocation(line: 694, column: 14, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !710, file: !1, line: 694, column: 9)
!2038 = !DILocation(line: 694, column: 9, scope: !710)
!2039 = !DILocation(line: 697, column: 14, scope: !710)
!2040 = !DILocation(line: 688, column: 22, scope: !710)
!2041 = !DILocation(line: 698, column: 16, scope: !721)
!2042 = !DILocation(line: 698, column: 9, scope: !710)
!2043 = !DILocation(line: 699, column: 9, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !719, file: !1, discriminator: 1)
!2045 = !DILocation(line: 699, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !719, file: !1, line: 699, column: 9)
!2047 = !DILocation(line: 699, column: 9, scope: !719)
!2048 = !DILocation(line: 699, column: 9, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2046, file: !1, discriminator: 3)
!2050 = !DILocation(line: 703, column: 14, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !710, file: !1, line: 703, column: 9)
!2052 = !DILocation(line: 703, column: 9, scope: !710)
!2053 = !DILocation(line: 711, column: 5, scope: !710)
!2054 = !DILocation(line: 712, column: 5, scope: !710)
!2055 = !DILocation(line: 714, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !710, file: !1, line: 714, column: 9)
!2057 = !DILocation(line: 714, column: 52, scope: !2056)
!2058 = !DILocation(line: 714, column: 9, scope: !710)
!2059 = !DILocation(line: 707, column: 14, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !710, file: !1, line: 707, column: 9)
!2061 = !DILocation(line: 707, column: 9, scope: !710)
!2062 = !DILocation(line: 716, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !710, file: !1, line: 716, column: 9)
!2064 = !DILocation(line: 716, column: 52, scope: !2063)
!2065 = !DILocation(line: 716, column: 9, scope: !710)
!2066 = !DILocation(line: 719, column: 27, scope: !710)
!2067 = !DILocation(line: 719, column: 13, scope: !710)
!2068 = !DILocation(line: 688, column: 31, scope: !710)
!2069 = !DILocation(line: 720, column: 15, scope: !725)
!2070 = !DILocation(line: 720, column: 9, scope: !710)
!2071 = !DILocation(line: 721, column: 37, scope: !724)
!2072 = !DILocation(line: 721, column: 9, scope: !724)
!2073 = !DILocation(line: 722, column: 9, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 1)
!2075 = !DILocation(line: 722, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !723, file: !1, line: 722, column: 9)
!2077 = !DILocation(line: 722, column: 9, scope: !723)
!2078 = !DILocation(line: 722, column: 9, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2076, file: !1, discriminator: 3)
!2080 = !DILocation(line: 725, column: 5, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !727, file: !1, discriminator: 1)
!2082 = !DILocation(line: 725, column: 5, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !727, file: !1, line: 725, column: 5)
!2084 = !DILocation(line: 725, column: 5, scope: !727)
!2085 = !DILocation(line: 725, column: 5, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2083, file: !1, discriminator: 3)
!2087 = !DILocation(line: 726, column: 5, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!2089 = !DILocation(line: 726, column: 5, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !729, file: !1, line: 726, column: 5)
!2091 = !DILocation(line: 726, column: 5, scope: !729)
!2092 = !DILocation(line: 726, column: 5, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 3)
!2094 = !DILocation(line: 729, column: 1, scope: !710)
!2095 = !DILocation(line: 732, column: 36, scope: !730)
!2096 = !DILocation(line: 732, column: 50, scope: !730)
!2097 = !DILocation(line: 734, column: 18, scope: !730)
!2098 = !DILocation(line: 734, column: 5, scope: !730)
!2099 = !DILocation(line: 737, column: 1, scope: !730)
!2100 = !DILocation(line: 746, column: 18, scope: !736)
!2101 = !DILocation(line: 746, column: 5, scope: !736)
!2102 = !DILocation(line: 748, column: 1, scope: !736)
!2103 = !DILocation(line: 781, column: 32, scope: !762)
!2104 = !DILocation(line: 781, column: 48, scope: !762)
!2105 = !DILocation(line: 781, column: 64, scope: !762)
!2106 = !DILocation(line: 784, column: 15, scope: !762)
!2107 = !DILocation(line: 785, column: 15, scope: !762)
!2108 = !DILocation(line: 786, column: 15, scope: !762)
!2109 = !DILocation(line: 787, column: 15, scope: !762)
!2110 = !DILocation(line: 788, column: 15, scope: !762)
!2111 = !DILocation(line: 789, column: 11, scope: !762)
!2112 = !DILocation(line: 783, column: 17, scope: !762)
!2113 = !DILocation(line: 790, column: 13, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !762, file: !1, line: 790, column: 9)
!2115 = !DILocation(line: 790, column: 9, scope: !762)
!2116 = !DILocation(line: 791, column: 25, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 790, column: 22)
!2118 = !DILocation(line: 144, column: 27, scope: !516, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 791, column: 9, scope: !2117)
!2120 = !DILocation(line: 144, column: 50, scope: !516, inlinedAt: !2119)
!2121 = !DILocation(line: 146, column: 23, scope: !516, inlinedAt: !2119)
!2122 = !DILocation(line: 146, column: 15, scope: !516, inlinedAt: !2119)
!2123 = !DILocation(line: 147, column: 5, scope: !516, inlinedAt: !2119)
!2124 = !DILocation(line: 148, column: 5, scope: !1258, inlinedAt: !2119)
!2125 = !DILocation(line: 148, column: 5, scope: !527, inlinedAt: !2119)
!2126 = !DILocation(line: 148, column: 5, scope: !524, inlinedAt: !2119)
!2127 = !DILocation(line: 148, column: 5, scope: !1262, inlinedAt: !2119)
!2128 = !DILocation(line: 148, column: 5, scope: !1264, inlinedAt: !2119)
!2129 = !DILocation(line: 148, column: 5, scope: !526, inlinedAt: !2119)
!2130 = !DILocation(line: 148, column: 5, scope: !1267, inlinedAt: !2119)
!2131 = !DILocation(line: 791, column: 9, scope: !2117)
!2132 = !DILocation(line: 795, column: 14, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !762, file: !1, line: 795, column: 9)
!2134 = !DILocation(line: 796, column: 16, scope: !2133)
!2135 = !DILocation(line: 795, column: 9, scope: !762)
!2136 = !DILocation(line: 797, column: 14, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !762, file: !1, line: 797, column: 9)
!2138 = !DILocation(line: 797, column: 9, scope: !762)
!2139 = !DILocation(line: 798, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 797, column: 23)
!2141 = !DILocation(line: 799, column: 18, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 799, column: 13)
!2143 = !DILocation(line: 799, column: 13, scope: !2140)
!2144 = !DILocation(line: 802, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !762, file: !1, line: 802, column: 9)
!2146 = !DILocation(line: 802, column: 50, scope: !2145)
!2147 = !DILocation(line: 802, column: 9, scope: !762)
!2148 = !DILocation(line: 804, column: 62, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 802, column: 59)
!2150 = !DILocation(line: 803, column: 22, scope: !2149)
!2151 = !DILocation(line: 805, column: 24, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 805, column: 13)
!2153 = !DILocation(line: 805, column: 13, scope: !2149)
!2154 = !DILocation(line: 807, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 807, column: 13)
!2156 = !DILocation(line: 807, column: 66, scope: !2155)
!2157 = !DILocation(line: 807, column: 13, scope: !2149)
!2158 = !DILocation(line: 810, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !762, file: !1, line: 810, column: 9)
!2160 = !DILocation(line: 810, column: 9, scope: !762)
!2161 = !DILocation(line: 813, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 810, column: 30)
!2163 = !DILocation(line: 814, column: 5, scope: !2162)
!2164 = !DILocation(line: 815, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 814, column: 12)
!2166 = !DILocation(line: 816, column: 19, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 816, column: 13)
!2168 = !DILocation(line: 816, column: 13, scope: !2165)
!2169 = !DILocation(line: 821, column: 39, scope: !762)
!2170 = !DILocation(line: 820, column: 14, scope: !762)
!2171 = !DILocation(line: 823, column: 5, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !778, file: !1, line: 823, column: 5)
!2173 = !DILocation(line: 823, column: 5, scope: !778)
!2174 = !DILocation(line: 823, column: 5, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2172, file: !1, discriminator: 6)
!2176 = !DILocation(line: 824, column: 5, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !781, file: !1, discriminator: 1)
!2178 = !DILocation(line: 824, column: 5, scope: !784)
!2179 = !DILocation(line: 824, column: 5, scope: !781)
!2180 = !DILocation(line: 824, column: 5, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 4)
!2182 = !DILocation(line: 824, column: 5, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !783, file: !1, line: 824, column: 5)
!2184 = !DILocation(line: 824, column: 5, scope: !783)
!2185 = !DILocation(line: 824, column: 5, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2183, file: !1, discriminator: 6)
!2187 = !DILocation(line: 825, column: 5, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 1)
!2189 = !DILocation(line: 826, column: 5, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !791, file: !1, discriminator: 1)
!2191 = !DILocation(line: 826, column: 5, scope: !794)
!2192 = !DILocation(line: 826, column: 5, scope: !791)
!2193 = !DILocation(line: 826, column: 5, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !793, file: !1, discriminator: 4)
!2195 = !DILocation(line: 826, column: 5, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !793, file: !1, line: 826, column: 5)
!2197 = !DILocation(line: 826, column: 5, scope: !793)
!2198 = !DILocation(line: 826, column: 5, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2196, file: !1, discriminator: 6)
!2200 = !DILocation(line: 828, column: 1, scope: !762)
!2201 = !DILocation(line: 833, column: 39, scope: !795)
!2202 = !DILocation(line: 833, column: 57, scope: !795)
!2203 = !DILocation(line: 834, column: 37, scope: !795)
!2204 = !DILocation(line: 834, column: 53, scope: !795)
!2205 = !DILocation(line: 837, column: 15, scope: !795)
!2206 = !DILocation(line: 838, column: 15, scope: !795)
!2207 = !DILocation(line: 841, column: 14, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !795, file: !1, line: 841, column: 9)
!2209 = !DILocation(line: 841, column: 9, scope: !795)
!2210 = !DILocation(line: 842, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 841, column: 23)
!2212 = !DILocation(line: 843, column: 18, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 843, column: 13)
!2214 = !DILocation(line: 843, column: 13, scope: !2211)
!2215 = !DILocation(line: 848, column: 13, scope: !810)
!2216 = !DILocation(line: 848, column: 9, scope: !795)
!2217 = !DILocation(line: 849, column: 18, scope: !809)
!2218 = !DILocation(line: 839, column: 15, scope: !795)
!2219 = !DILocation(line: 850, column: 20, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !809, file: !1, line: 850, column: 13)
!2221 = !DILocation(line: 850, column: 13, scope: !809)
!2222 = !DILocation(line: 852, column: 18, scope: !809)
!2223 = !DILocation(line: 836, column: 9, scope: !795)
!2224 = !DILocation(line: 853, column: 9, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 1)
!2226 = !DILocation(line: 853, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !808, file: !1, line: 853, column: 9)
!2228 = !DILocation(line: 853, column: 9, scope: !808)
!2229 = !DILocation(line: 853, column: 9, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2227, file: !1, discriminator: 3)
!2231 = !DILocation(line: 854, column: 20, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !809, file: !1, line: 854, column: 13)
!2233 = !DILocation(line: 854, column: 13, scope: !809)
!2234 = !DILocation(line: 858, column: 11, scope: !795)
!2235 = !DILocation(line: 858, column: 5, scope: !795)
!2236 = !DILocation(line: 860, column: 5, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!2238 = !DILocation(line: 860, column: 5, scope: !815)
!2239 = !DILocation(line: 860, column: 5, scope: !812)
!2240 = !DILocation(line: 860, column: 5, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 4)
!2242 = !DILocation(line: 860, column: 5, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !814, file: !1, line: 860, column: 5)
!2244 = !DILocation(line: 860, column: 5, scope: !814)
!2245 = !DILocation(line: 860, column: 5, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2243, file: !1, discriminator: 6)
!2247 = !DILocation(line: 862, column: 1, scope: !795)
!2248 = !DILocation(line: 948, column: 34, scope: !848)
!2249 = !DILocation(line: 948, column: 48, scope: !848)
!2250 = !DILocation(line: 950, column: 5, scope: !848)
!2251 = !DILocation(line: 951, column: 1, scope: !848)
!2252 = !DILocation(line: 1027, column: 36, scope: !887)
!2253 = !DILocation(line: 1027, column: 50, scope: !887)
!2254 = !DILocation(line: 1027, column: 62, scope: !887)
!2255 = !DILocation(line: 1030, column: 18, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !887, file: !1, line: 1030, column: 9)
!2257 = !DILocation(line: 1030, column: 9, scope: !887)
!2258 = !DILocation(line: 1031, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 1030, column: 27)
!2260 = !DILocation(line: 1029, column: 15, scope: !887)
!2261 = !DILocation(line: 1032, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 1032, column: 13)
!2263 = !DILocation(line: 1032, column: 13, scope: !2259)
!2264 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 1033, column: 13, scope: !2262)
!2267 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2265)
!2268 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2265)
!2269 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2265)
!2270 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2265)
!2271 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2265)
!2272 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2265)
!2273 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2265)
!2274 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2265)
!2275 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2265)
!2276 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2265)
!2277 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2265)
!2278 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2265)
!2279 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2265)
!2280 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2265)
!2281 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2265)
!2282 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2265)
!2283 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2265)
!2284 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2265)
!2285 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2266)
!2286 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2265)
!2287 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2265)
!2288 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2265)
!2289 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2265)
!2290 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2265)
!2291 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2265)
!2292 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2265)
!2293 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2265)
!2294 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2265)
!2295 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2265)
!2296 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2265)
!2297 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2265)
!2298 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2265)
!2299 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2265)
!2300 = !DILocation(line: 1037, column: 5, scope: !887)
!2301 = !DILocation(line: 1038, column: 5, scope: !896)
!2302 = !DILocation(line: 1038, column: 5, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !898, file: !1, line: 1038, column: 5)
!2304 = !DILocation(line: 1038, column: 5, scope: !898)
!2305 = !DILocation(line: 1038, column: 5, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2303, file: !1, discriminator: 6)
!2307 = !DILocation(line: 1039, column: 1, scope: !887)
!2308 = !DILocation(line: 959, column: 38, scope: !852)
!2309 = !DILocation(line: 959, column: 52, scope: !852)
!2310 = !DILocation(line: 959, column: 64, scope: !852)
!2311 = !DILocation(line: 961, column: 5, scope: !852)
!2312 = !DILocation(line: 961, column: 15, scope: !852)
!2313 = !DILocation(line: 961, column: 21, scope: !852)
!2314 = !DILocation(line: 961, column: 25, scope: !852)
!2315 = !DILocation(line: 335, column: 24, scope: !603, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 970, column: 5, scope: !852)
!2317 = !DILocation(line: 335, column: 43, scope: !603, inlinedAt: !2316)
!2318 = !DILocation(line: 335, column: 63, scope: !603, inlinedAt: !2316)
!2319 = !DILocation(line: 337, column: 29, scope: !610, inlinedAt: !2316)
!2320 = !DILocation(line: 337, column: 29, scope: !1321, inlinedAt: !2316)
!2321 = !DILocation(line: 339, column: 23, scope: !603, inlinedAt: !2316)
!2322 = !DILocation(line: 339, column: 13, scope: !603, inlinedAt: !2316)
!2323 = !DILocation(line: 340, column: 24, scope: !603, inlinedAt: !2316)
!2324 = !DILocation(line: 340, column: 14, scope: !603, inlinedAt: !2316)
!2325 = !DILocation(line: 341, column: 28, scope: !603, inlinedAt: !2316)
!2326 = !DILocation(line: 341, column: 18, scope: !603, inlinedAt: !2316)
!2327 = !DILocation(line: 344, column: 26, scope: !603, inlinedAt: !2316)
!2328 = !DILocation(line: 971, column: 5, scope: !852)
!2329 = !DILocation(line: 974, column: 27, scope: !852)
!2330 = !DILocation(line: 974, column: 11, scope: !852)
!2331 = !DILocation(line: 961, column: 30, scope: !852)
!2332 = !DILocation(line: 975, column: 13, scope: !866)
!2333 = !DILocation(line: 975, column: 9, scope: !852)
!2334 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 976, column: 9, scope: !866)
!2337 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2335)
!2338 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2335)
!2339 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2335)
!2340 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2335)
!2341 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2335)
!2342 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2335)
!2343 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2335)
!2344 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2335)
!2345 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2335)
!2346 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2335)
!2347 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2335)
!2348 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2335)
!2349 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2335)
!2350 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2335)
!2351 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2335)
!2352 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2335)
!2353 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2335)
!2354 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2335)
!2355 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2336)
!2356 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2335)
!2357 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2335)
!2358 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2335)
!2359 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2335)
!2360 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2335)
!2361 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2335)
!2362 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2335)
!2363 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2335)
!2364 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2335)
!2365 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2335)
!2366 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2335)
!2367 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2335)
!2368 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2335)
!2369 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2335)
!2370 = !DILocation(line: 978, column: 33, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !865, file: !1, line: 978, column: 13)
!2372 = !DILocation(line: 978, column: 13, scope: !2371)
!2373 = !DILocation(line: 978, column: 13, scope: !865)
!2374 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 979, column: 13, scope: !2371)
!2377 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2375)
!2378 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2375)
!2379 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2375)
!2380 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2375)
!2381 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2375)
!2382 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2375)
!2383 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2375)
!2384 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2375)
!2385 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2375)
!2386 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2375)
!2387 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2375)
!2388 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2375)
!2389 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2375)
!2390 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2375)
!2391 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2375)
!2392 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2375)
!2393 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2375)
!2394 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2375)
!2395 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2376)
!2396 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2375)
!2397 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2375)
!2398 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2375)
!2399 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2375)
!2400 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2375)
!2401 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2375)
!2402 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2375)
!2403 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2375)
!2404 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2375)
!2405 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2375)
!2406 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2375)
!2407 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2375)
!2408 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2375)
!2409 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2375)
!2410 = !DILocation(line: 980, column: 9, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!2412 = !DILocation(line: 980, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !864, file: !1, line: 980, column: 9)
!2414 = !DILocation(line: 980, column: 9, scope: !864)
!2415 = !DILocation(line: 980, column: 9, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 3)
!2417 = !DILocation(line: 982, column: 20, scope: !872)
!2418 = !DILocation(line: 982, column: 9, scope: !852)
!2419 = !DILocation(line: 983, column: 31, scope: !871)
!2420 = !DILocation(line: 983, column: 15, scope: !871)
!2421 = !DILocation(line: 984, column: 17, scope: !870)
!2422 = !DILocation(line: 984, column: 13, scope: !871)
!2423 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 985, column: 13, scope: !870)
!2426 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2424)
!2427 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2424)
!2428 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2424)
!2429 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2424)
!2430 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2424)
!2431 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2424)
!2432 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2424)
!2433 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2424)
!2434 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2424)
!2435 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2424)
!2436 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2424)
!2437 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2424)
!2438 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2424)
!2439 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2424)
!2440 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2424)
!2441 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2424)
!2442 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2424)
!2443 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2424)
!2444 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2425)
!2445 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2424)
!2446 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2424)
!2447 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2424)
!2448 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2424)
!2449 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2424)
!2450 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2424)
!2451 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2424)
!2452 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2424)
!2453 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2424)
!2454 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2424)
!2455 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2424)
!2456 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2424)
!2457 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2424)
!2458 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2424)
!2459 = !DILocation(line: 987, column: 37, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !869, file: !1, line: 987, column: 17)
!2461 = !DILocation(line: 987, column: 17, scope: !2460)
!2462 = !DILocation(line: 987, column: 17, scope: !869)
!2463 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 988, column: 17, scope: !2460)
!2466 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2464)
!2467 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2464)
!2468 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2464)
!2469 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2464)
!2470 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2464)
!2471 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2464)
!2472 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2464)
!2473 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2464)
!2474 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2464)
!2475 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2464)
!2476 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2464)
!2477 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2464)
!2478 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2464)
!2479 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2464)
!2480 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2464)
!2481 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2464)
!2482 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2464)
!2483 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2464)
!2484 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2465)
!2485 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2464)
!2486 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2464)
!2487 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2464)
!2488 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2464)
!2489 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2464)
!2490 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2464)
!2491 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2464)
!2492 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2464)
!2493 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2464)
!2494 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2464)
!2495 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2464)
!2496 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2464)
!2497 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2464)
!2498 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2464)
!2499 = !DILocation(line: 989, column: 13, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !868, file: !1, discriminator: 1)
!2501 = !DILocation(line: 989, column: 13, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !868, file: !1, line: 989, column: 13)
!2503 = !DILocation(line: 989, column: 13, scope: !868)
!2504 = !DILocation(line: 989, column: 13, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2502, file: !1, discriminator: 3)
!2506 = !DILocation(line: 992, column: 18, scope: !878)
!2507 = !DILocation(line: 1003, column: 29, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1003, column: 9)
!2509 = !DILocation(line: 992, column: 9, scope: !852)
!2510 = !DILocation(line: 993, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !877, file: !1, line: 993, column: 13)
!2512 = !DILocation(line: 993, column: 13, scope: !877)
!2513 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 994, column: 13, scope: !2511)
!2516 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2514)
!2517 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2514)
!2518 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2514)
!2519 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2514)
!2520 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2514)
!2521 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2514)
!2522 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2514)
!2523 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2514)
!2524 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2514)
!2525 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2514)
!2526 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2514)
!2527 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2514)
!2528 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2514)
!2529 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2514)
!2530 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2514)
!2531 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2514)
!2532 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2514)
!2533 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2514)
!2534 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2515)
!2535 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2514)
!2536 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2514)
!2537 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2514)
!2538 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2514)
!2539 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2514)
!2540 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2514)
!2541 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2514)
!2542 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2514)
!2543 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2514)
!2544 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2514)
!2545 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2514)
!2546 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2514)
!2547 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2514)
!2548 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2514)
!2549 = !DILocation(line: 1094, column: 35, scope: !907, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 996, column: 15, scope: !877)
!2551 = !DILocation(line: 1094, column: 49, scope: !907, inlinedAt: !2550)
!2552 = !DILocation(line: 1097, column: 36, scope: !2553, inlinedAt: !2550)
!2553 = distinct !DILexicalBlock(scope: !907, file: !1, line: 1097, column: 9)
!2554 = !DILocation(line: 1097, column: 26, scope: !2553, inlinedAt: !2550)
!2555 = !DILocation(line: 1099, column: 10, scope: !907, inlinedAt: !2550)
!2556 = !DILocation(line: 1096, column: 11, scope: !907, inlinedAt: !2550)
!2557 = !DILocation(line: 1100, column: 12, scope: !907, inlinedAt: !2550)
!2558 = !DILocation(line: 997, column: 13, scope: !876)
!2559 = !DILocation(line: 997, column: 13, scope: !877)
!2560 = !DILocation(line: 998, column: 17, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !875, file: !1, line: 998, column: 17)
!2562 = !DILocation(line: 998, column: 17, scope: !875)
!2563 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 999, column: 17, scope: !2561)
!2566 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2564)
!2567 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2564)
!2568 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2564)
!2569 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2564)
!2570 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2564)
!2571 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2564)
!2572 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2564)
!2573 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2564)
!2574 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2564)
!2575 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2564)
!2576 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2564)
!2577 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2564)
!2578 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2564)
!2579 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2564)
!2580 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2564)
!2581 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2564)
!2582 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2564)
!2583 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2564)
!2584 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2565)
!2585 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2564)
!2586 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2564)
!2587 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2564)
!2588 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2564)
!2589 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2564)
!2590 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2564)
!2591 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2564)
!2592 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2564)
!2593 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2564)
!2594 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2564)
!2595 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2564)
!2596 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2564)
!2597 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2564)
!2598 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2564)
!2599 = !DILocation(line: 1000, column: 13, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 1)
!2601 = !DILocation(line: 1000, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !874, file: !1, line: 1000, column: 13)
!2603 = !DILocation(line: 1000, column: 13, scope: !874)
!2604 = !DILocation(line: 1000, column: 13, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2602, file: !1, discriminator: 3)
!2606 = !DILocation(line: 1023, column: 24, scope: !852)
!2607 = !DILocation(line: 1003, column: 9, scope: !2508)
!2608 = !DILocation(line: 1003, column: 9, scope: !852)
!2609 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1004, column: 9, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 1003, column: 56)
!2613 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2610)
!2614 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2610)
!2615 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2610)
!2616 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2610)
!2617 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2610)
!2618 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2610)
!2619 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2610)
!2620 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2610)
!2621 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2610)
!2622 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2610)
!2623 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2610)
!2624 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2610)
!2625 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2610)
!2626 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2610)
!2627 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2610)
!2628 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2610)
!2629 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2610)
!2630 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2610)
!2631 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2611)
!2632 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2610)
!2633 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2610)
!2634 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2610)
!2635 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2610)
!2636 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2610)
!2637 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2610)
!2638 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2610)
!2639 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2610)
!2640 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2610)
!2641 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2610)
!2642 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2610)
!2643 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2610)
!2644 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2610)
!2645 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2610)
!2646 = !DILocation(line: 1006, column: 9, scope: !886)
!2647 = !DILocation(line: 1006, column: 16, scope: !886)
!2648 = !DILocation(line: 1006, column: 13, scope: !886)
!2649 = !DILocation(line: 1023, column: 19, scope: !852)
!2650 = !DILocation(line: 1006, column: 9, scope: !852)
!2651 = !DILocation(line: 1007, column: 14, scope: !884)
!2652 = !DILocation(line: 1007, column: 13, scope: !885)
!2653 = !DILocation(line: 1008, column: 19, scope: !883)
!2654 = !DILocation(line: 1009, column: 17, scope: !882)
!2655 = !DILocation(line: 1009, column: 17, scope: !883)
!2656 = !DILocation(line: 1010, column: 21, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1010, column: 21)
!2658 = !DILocation(line: 1010, column: 21, scope: !881)
!2659 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1011, column: 21, scope: !2657)
!2662 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2660)
!2663 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2660)
!2664 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2660)
!2665 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2660)
!2666 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2660)
!2667 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2660)
!2668 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2660)
!2669 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2660)
!2670 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2660)
!2671 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2660)
!2672 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2660)
!2673 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2660)
!2674 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2660)
!2675 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2660)
!2676 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2660)
!2677 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2660)
!2678 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2660)
!2679 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2660)
!2680 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2661)
!2681 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2660)
!2682 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2660)
!2683 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2660)
!2684 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2660)
!2685 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2660)
!2686 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2660)
!2687 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2660)
!2688 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2660)
!2689 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2660)
!2690 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2660)
!2691 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2660)
!2692 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2660)
!2693 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2660)
!2694 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2660)
!2695 = !DILocation(line: 1012, column: 17, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 1)
!2697 = !DILocation(line: 1012, column: 17, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !880, file: !1, line: 1012, column: 17)
!2699 = !DILocation(line: 1012, column: 17, scope: !880)
!2700 = !DILocation(line: 1012, column: 17, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2698, file: !1, discriminator: 3)
!2702 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1014, column: 17, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !882, file: !1, line: 1013, column: 20)
!2706 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2703)
!2707 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2703)
!2708 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2703)
!2709 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2703)
!2710 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2703)
!2711 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2703)
!2712 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2703)
!2713 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2703)
!2714 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2703)
!2715 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2703)
!2716 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2703)
!2717 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2703)
!2718 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2703)
!2719 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2703)
!2720 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2703)
!2721 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2703)
!2722 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2703)
!2723 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2703)
!2724 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2704)
!2725 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2703)
!2726 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2703)
!2727 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2703)
!2728 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2703)
!2729 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2703)
!2730 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2703)
!2731 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2703)
!2732 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2703)
!2733 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2703)
!2734 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2703)
!2735 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2703)
!2736 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2703)
!2737 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2703)
!2738 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2703)
!2739 = !DILocation(line: 1017, column: 14, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !885, file: !1, line: 1017, column: 13)
!2741 = !DILocation(line: 1017, column: 13, scope: !885)
!2742 = !DILocation(line: 1018, column: 17, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 1018, column: 17)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 1017, column: 65)
!2745 = !DILocation(line: 1018, column: 17, scope: !2744)
!2746 = !DILocation(line: 28, column: 25, scope: !420, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 1020, column: 17, scope: !2743)
!2749 = !DILocation(line: 28, column: 41, scope: !420, inlinedAt: !2747)
!2750 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2747)
!2751 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2747)
!2752 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2747)
!2753 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2747)
!2754 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2747)
!2755 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2747)
!2756 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2747)
!2757 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2747)
!2758 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2747)
!2759 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2747)
!2760 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2747)
!2761 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2747)
!2762 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2747)
!2763 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2747)
!2764 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2747)
!2765 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2747)
!2766 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2747)
!2767 = !DILocation(line: 351, column: 5, scope: !614, inlinedAt: !2748)
!2768 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2747)
!2769 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2747)
!2770 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2747)
!2771 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2747)
!2772 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2747)
!2773 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2747)
!2774 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2747)
!2775 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2747)
!2776 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2747)
!2777 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2747)
!2778 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2747)
!2779 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2747)
!2780 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2747)
!2781 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2747)
!2782 = !DILocation(line: 1023, column: 27, scope: !852)
!2783 = !DILocation(line: 28, column: 58, scope: !420, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1023, column: 5, scope: !852)
!2785 = !DILocation(line: 30, column: 29, scope: !429, inlinedAt: !2784)
!2786 = !DILocation(line: 30, column: 29, scope: !976, inlinedAt: !2784)
!2787 = !DILocation(line: 33, column: 19, scope: !447, inlinedAt: !2784)
!2788 = !DILocation(line: 33, column: 27, scope: !447, inlinedAt: !2784)
!2789 = !DILocation(line: 33, column: 31, scope: !985, inlinedAt: !2784)
!2790 = !DILocation(line: 36, column: 9, scope: !987, inlinedAt: !2784)
!2791 = !DILocation(line: 33, column: 9, scope: !420, inlinedAt: !2784)
!2792 = !DILocation(line: 36, column: 9, scope: !994, inlinedAt: !2784)
!2793 = !DILocation(line: 36, column: 9, scope: !988, inlinedAt: !2784)
!2794 = !DILocation(line: 36, column: 9, scope: !445, inlinedAt: !2784)
!2795 = !DILocation(line: 1023, column: 5, scope: !852)
!2796 = !DILocation(line: 42, column: 23, scope: !420, inlinedAt: !2784)
!2797 = !DILocation(line: 31, column: 15, scope: !420, inlinedAt: !2784)
!2798 = !DILocation(line: 43, column: 24, scope: !420, inlinedAt: !2784)
!2799 = !DILocation(line: 31, column: 25, scope: !420, inlinedAt: !2784)
!2800 = !DILocation(line: 44, column: 28, scope: !420, inlinedAt: !2784)
!2801 = !DILocation(line: 31, column: 36, scope: !420, inlinedAt: !2784)
!2802 = !DILocation(line: 46, column: 25, scope: !420, inlinedAt: !2784)
!2803 = !DILocation(line: 47, column: 26, scope: !420, inlinedAt: !2784)
!2804 = !DILocation(line: 48, column: 30, scope: !420, inlinedAt: !2784)
!2805 = !DILocation(line: 50, column: 5, scope: !1016, inlinedAt: !2784)
!2806 = !DILocation(line: 50, column: 5, scope: !452, inlinedAt: !2784)
!2807 = !DILocation(line: 50, column: 5, scope: !449, inlinedAt: !2784)
!2808 = !DILocation(line: 50, column: 5, scope: !1020, inlinedAt: !2784)
!2809 = !DILocation(line: 50, column: 5, scope: !1022, inlinedAt: !2784)
!2810 = !DILocation(line: 50, column: 5, scope: !451, inlinedAt: !2784)
!2811 = !DILocation(line: 50, column: 5, scope: !1025, inlinedAt: !2784)
!2812 = !DILocation(line: 51, column: 5, scope: !1027, inlinedAt: !2784)
!2813 = !DILocation(line: 51, column: 5, scope: !457, inlinedAt: !2784)
!2814 = !DILocation(line: 51, column: 5, scope: !454, inlinedAt: !2784)
!2815 = !DILocation(line: 51, column: 5, scope: !1031, inlinedAt: !2784)
!2816 = !DILocation(line: 51, column: 5, scope: !1033, inlinedAt: !2784)
!2817 = !DILocation(line: 51, column: 5, scope: !456, inlinedAt: !2784)
!2818 = !DILocation(line: 51, column: 5, scope: !1036, inlinedAt: !2784)
!2819 = !DILocation(line: 52, column: 5, scope: !1038, inlinedAt: !2784)
!2820 = !DILocation(line: 52, column: 5, scope: !462, inlinedAt: !2784)
!2821 = !DILocation(line: 52, column: 5, scope: !459, inlinedAt: !2784)
!2822 = !DILocation(line: 52, column: 5, scope: !1042, inlinedAt: !2784)
!2823 = !DILocation(line: 52, column: 5, scope: !1044, inlinedAt: !2784)
!2824 = !DILocation(line: 52, column: 5, scope: !461, inlinedAt: !2784)
!2825 = !DILocation(line: 52, column: 5, scope: !1047, inlinedAt: !2784)
!2826 = !DILocation(line: 1024, column: 1, scope: !852)
!2827 = !DILocation(line: 1094, column: 35, scope: !907)
!2828 = !DILocation(line: 1094, column: 49, scope: !907)
!2829 = !DILocation(line: 1097, column: 18, scope: !2553)
!2830 = !DILocation(line: 1097, column: 36, scope: !2553)
!2831 = !DILocation(line: 1097, column: 26, scope: !2553)
!2832 = !DILocation(line: 1099, column: 10, scope: !907)
!2833 = !DILocation(line: 1096, column: 11, scope: !907)
!2834 = !DILocation(line: 1100, column: 12, scope: !907)
!2835 = !DILocation(line: 1100, column: 5, scope: !907)
!2836 = !DILocation(line: 1101, column: 1, scope: !907)
!2837 = !DILocation(line: 1084, column: 31, scope: !900)
!2838 = !DILocation(line: 1084, column: 45, scope: !900)
!2839 = !DILocation(line: 1087, column: 18, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !900, file: !1, line: 1087, column: 9)
!2841 = !DILocation(line: 1087, column: 26, scope: !2840)
!2842 = !DILocation(line: 1087, column: 29, scope: !2840)
!2843 = !{!980, !980, i64 0}
!2844 = !DILocation(line: 1087, column: 39, scope: !2840)
!2845 = !DILocation(line: 1087, column: 57, scope: !2840)
!2846 = !DILocation(line: 1087, column: 47, scope: !2840)
!2847 = !DILocation(line: 1089, column: 10, scope: !900)
!2848 = !DILocation(line: 1086, column: 11, scope: !900)
!2849 = !DILocation(line: 1090, column: 12, scope: !900)
!2850 = !DILocation(line: 1090, column: 5, scope: !900)
!2851 = !DILocation(line: 1091, column: 1, scope: !900)
!2852 = !DILocation(line: 1048, column: 23, scope: !931)
!2853 = !DILocation(line: 1048, column: 31, scope: !931)
!2854 = !DILocation(line: 1051, column: 5, scope: !931)
!2855 = !DILocation(line: 1051, column: 10, scope: !931)
!2856 = !DILocation(line: 1053, column: 12, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1053, column: 9)
!2858 = !DILocation(line: 1053, column: 9, scope: !931)
!2859 = !DILocation(line: 1055, column: 19, scope: !944)
!2860 = !DILocation(line: 1055, column: 5, scope: !945)
!2861 = !DILocation(line: 1056, column: 28, scope: !943)
!2862 = !DILocation(line: 1056, column: 15, scope: !943)
!2863 = !DILocation(line: 1057, column: 9, scope: !943)
!2864 = !DILocation(line: 1058, column: 24, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !943, file: !1, line: 1057, column: 12)
!2866 = !DILocation(line: 1059, column: 17, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 1059, column: 17)
!2868 = !DILocation(line: 1060, column: 52, scope: !2867)
!2869 = !DILocation(line: 1059, column: 17, scope: !2865)
!2870 = !DILocation(line: 1067, column: 18, scope: !943)
!2871 = !DILocation(line: 1067, column: 37, scope: !943)
!2872 = !DILocation(line: 1055, column: 30, scope: !944)
!2873 = !DILocation(line: 1050, column: 9, scope: !931)
!2874 = !DILocation(line: 1069, column: 5, scope: !931)
!2875 = !DILocation(line: 1070, column: 9, scope: !931)
!2876 = !DILocation(line: 1070, column: 11, scope: !948)
!2877 = !DILocation(line: 1073, column: 16, scope: !947)
!2878 = !DILocation(line: 1073, column: 26, scope: !947)
!2879 = !DILocation(line: 1075, column: 15, scope: !947)
!2880 = !DILocation(line: 1072, column: 19, scope: !947)
!2881 = !DILocation(line: 1076, column: 17, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1076, column: 13)
!2883 = !DILocation(line: 1076, column: 13, scope: !947)
!2884 = !DILocation(line: 1074, column: 14, scope: !947)
!2885 = !DILocation(line: 1071, column: 15, scope: !947)
!2886 = !DILocation(line: 1073, column: 9, scope: !947)
!2887 = !DILocation(line: 1077, column: 13, scope: !2882)
!2888 = !DILocation(line: 1081, column: 1, scope: !931)
