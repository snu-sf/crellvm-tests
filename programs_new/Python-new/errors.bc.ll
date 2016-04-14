; ModuleID = 'programs_new/Python-new/errors.bc.ll'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

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
  %type.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %traceback.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %oldtype = alloca %struct._object*, align 8
  %oldvalue = alloca %struct._object*, align 8
  %oldtraceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !425, metadata !975), !dbg !976
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !426, metadata !975), !dbg !977
  store %struct._object* %traceback, %struct._object** %traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %traceback.addr, metadata !427, metadata !975), !dbg !978
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !979
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !428, metadata !975), !dbg !980
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !981
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !981
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !429, metadata !975), !dbg !982
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !982, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !983
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !983
  call void @llvm.dbg.declare(metadata i8** %result, metadata !436, metadata !975), !dbg !984
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !985
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !437, metadata !975), !dbg !986
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !987, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !988
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !986, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !989
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !989
  call void @llvm.dbg.declare(metadata i32* %order, metadata !440, metadata !975), !dbg !990
  store i32 0, i32* %order, align 4, !dbg !990, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !992, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !992
  %8 = load i32, i32* %order, align 4, !dbg !993, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !994
  %9 = load i32, i32* %order, align 4, !dbg !995, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !996
  br label %sw.epilog, !dbg !1001

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1002

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1004, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1007, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1008, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1009, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1010
  br label %sw.epilog.3, !dbg !1015

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !1016

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1018, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1021, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1022
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1022
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1022
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1022
  %16 = bitcast i8** %result to i8*, !dbg !1022
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1022
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1022
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1022
  %18 = load i8*, i8** %tmp, !dbg !1023, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1024
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !980, !tbaa !971
  %20 = bitcast %struct._object** %oldtype to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._object** %oldtype, metadata !442, metadata !975), !dbg !1026
  %21 = bitcast %struct._object** %oldvalue to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._object** %oldvalue, metadata !443, metadata !975), !dbg !1027
  %22 = bitcast %struct._object** %oldtraceback to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._object** %oldtraceback, metadata !444, metadata !975), !dbg !1028
  %23 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1029, !tbaa !971
  %cmp = icmp ne %struct._object* %23, null, !dbg !1030
  br i1 %cmp, label %land.lhs.true, label %if.end.12, !dbg !1031

land.lhs.true:                                    ; preds = %sw.epilog.3
  %24 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1032, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1034
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1034, !tbaa !1035
  %cmp7 = icmp eq %struct._typeobject* %25, @PyTraceBack_Type, !dbg !1038
  br i1 %cmp7, label %if.end.12, label %if.then, !dbg !1039

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1040

do.body:                                          ; preds = %if.then
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1041
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !445, metadata !975), !dbg !1043
  %27 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1044, !tbaa !971
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !1043, !tbaa !971
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1045, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1047
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1048, !tbaa !1049
  %dec = add i64 %29, -1, !dbg !1048
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1048, !tbaa !1049
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1050
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1051

if.then.10:                                       ; preds = %do.body
  br label %if.end, !dbg !1052

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1054, !tbaa !971
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1056
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1056, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1057
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1057, !tbaa !1058
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1062, !tbaa !971
  call void %32(%struct._object* %33), !dbg !1063
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1064
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1064
  br label %do.cond, !dbg !1066

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1067

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %traceback.addr, align 8, !dbg !1069, !tbaa !971
  br label %if.end.12, !dbg !1070

if.end.12:                                        ; preds = %do.end, %land.lhs.true, %sw.epilog.3
  %35 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1071, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %35, i32 0, i32 13, !dbg !1072
  %36 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !1072, !tbaa !1073
  store %struct._object* %36, %struct._object** %oldtype, align 8, !dbg !1075, !tbaa !971
  %37 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1076, !tbaa !971
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %37, i32 0, i32 14, !dbg !1077
  %38 = load %struct._object*, %struct._object** %curexc_value, align 8, !dbg !1077, !tbaa !1078
  store %struct._object* %38, %struct._object** %oldvalue, align 8, !dbg !1079, !tbaa !971
  %39 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1080, !tbaa !971
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %39, i32 0, i32 15, !dbg !1081
  %40 = load %struct._object*, %struct._object** %curexc_traceback, align 8, !dbg !1081, !tbaa !1082
  store %struct._object* %40, %struct._object** %oldtraceback, align 8, !dbg !1083, !tbaa !971
  %41 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1084, !tbaa !971
  %42 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1085, !tbaa !971
  %curexc_type13 = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 13, !dbg !1086
  store %struct._object* %41, %struct._object** %curexc_type13, align 8, !dbg !1087, !tbaa !1073
  %43 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1088, !tbaa !971
  %44 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1089, !tbaa !971
  %curexc_value14 = getelementptr inbounds %struct._ts, %struct._ts* %44, i32 0, i32 14, !dbg !1090
  store %struct._object* %43, %struct._object** %curexc_value14, align 8, !dbg !1091, !tbaa !1078
  %45 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1092, !tbaa !971
  %46 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1093, !tbaa !971
  %curexc_traceback15 = getelementptr inbounds %struct._ts, %struct._ts* %46, i32 0, i32 15, !dbg !1094
  store %struct._object* %45, %struct._object** %curexc_traceback15, align 8, !dbg !1095, !tbaa !1082
  br label %do.body.16, !dbg !1096

do.body.16:                                       ; preds = %if.end.12
  %47 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1097
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !449, metadata !975), !dbg !1099
  %48 = load %struct._object*, %struct._object** %oldtype, align 8, !dbg !1100, !tbaa !971
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1099, !tbaa !971
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1101, !tbaa !971
  %cmp18 = icmp ne %struct._object* %49, null, !dbg !1102
  br i1 %cmp18, label %if.then.19, label %if.end.33, !dbg !1103

if.then.19:                                       ; preds = %do.body.16
  br label %do.body.20, !dbg !1104

do.body.20:                                       ; preds = %if.then.19
  %50 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !1106
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !451, metadata !975), !dbg !1108
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1109, !tbaa !971
  store %struct._object* %51, %struct._object** %_py_decref_tmp22, align 8, !dbg !1108, !tbaa !971
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1110, !tbaa !971
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !1112
  %53 = load i64, i64* %ob_refcnt23, align 8, !dbg !1113, !tbaa !1049
  %dec24 = add i64 %53, -1, !dbg !1113
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1113, !tbaa !1049
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !1114
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !1115

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30, !dbg !1116

if.else.27:                                       ; preds = %do.body.20
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1118, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !1120
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1120, !tbaa !1035
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !1121
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1121, !tbaa !1058
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1122, !tbaa !971
  call void %56(%struct._object* %57), !dbg !1123
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %58 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1124
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1124
  br label %do.cond.31, !dbg !1126

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !1127

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !1129

if.end.33:                                        ; preds = %do.end.32, %do.body.16
  %59 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1131
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1131
  br label %do.cond.34, !dbg !1134

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1135

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36, !dbg !1137

do.body.36:                                       ; preds = %do.end.35
  %60 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1138
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !1138
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp38, metadata !454, metadata !975), !dbg !1140
  %61 = load %struct._object*, %struct._object** %oldvalue, align 8, !dbg !1141, !tbaa !971
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1140, !tbaa !971
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1142, !tbaa !971
  %cmp39 = icmp ne %struct._object* %62, null, !dbg !1143
  br i1 %cmp39, label %if.then.40, label %if.end.54, !dbg !1144

if.then.40:                                       ; preds = %do.body.36
  br label %do.body.41, !dbg !1145

do.body.41:                                       ; preds = %if.then.40
  %63 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !1147
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !1147
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp43, metadata !456, metadata !975), !dbg !1149
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1150, !tbaa !971
  store %struct._object* %64, %struct._object** %_py_decref_tmp43, align 8, !dbg !1149, !tbaa !971
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1151, !tbaa !971
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1153
  %66 = load i64, i64* %ob_refcnt44, align 8, !dbg !1154, !tbaa !1049
  %dec45 = add i64 %66, -1, !dbg !1154
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !1154, !tbaa !1049
  %cmp46 = icmp ne i64 %dec45, 0, !dbg !1155
  br i1 %cmp46, label %if.then.47, label %if.else.48, !dbg !1156

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !1157

if.else.48:                                       ; preds = %do.body.41
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1159, !tbaa !971
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1161
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1161, !tbaa !1035
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1162
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1162, !tbaa !1058
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1163, !tbaa !971
  call void %69(%struct._object* %70), !dbg !1164
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %71 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1165
  br label %do.cond.52, !dbg !1167

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !1168

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54, !dbg !1170

if.end.54:                                        ; preds = %do.end.53, %do.body.36
  %72 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1172
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1172
  br label %do.cond.55, !dbg !1173

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !1174

do.end.56:                                        ; preds = %do.cond.55
  br label %do.body.57, !dbg !1176

do.body.57:                                       ; preds = %do.end.56
  %73 = bitcast %struct._object** %_py_xdecref_tmp59 to i8*, !dbg !1177
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !1177
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp59, metadata !459, metadata !975), !dbg !1179
  %74 = load %struct._object*, %struct._object** %oldtraceback, align 8, !dbg !1180, !tbaa !971
  store %struct._object* %74, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1179, !tbaa !971
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1181, !tbaa !971
  %cmp60 = icmp ne %struct._object* %75, null, !dbg !1182
  br i1 %cmp60, label %if.then.61, label %if.end.75, !dbg !1183

if.then.61:                                       ; preds = %do.body.57
  br label %do.body.62, !dbg !1184

do.body.62:                                       ; preds = %if.then.61
  %76 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !1186
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !1186
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !461, metadata !975), !dbg !1188
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1189, !tbaa !971
  store %struct._object* %77, %struct._object** %_py_decref_tmp64, align 8, !dbg !1188, !tbaa !971
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1190, !tbaa !971
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !1192
  %79 = load i64, i64* %ob_refcnt65, align 8, !dbg !1193, !tbaa !1049
  %dec66 = add i64 %79, -1, !dbg !1193
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1193, !tbaa !1049
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !1194
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !1195

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72, !dbg !1196

if.else.69:                                       ; preds = %do.body.62
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1198, !tbaa !971
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !1200
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1200, !tbaa !1035
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !1201
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1201, !tbaa !1058
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1202, !tbaa !971
  call void %82(%struct._object* %83), !dbg !1203
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %84 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !1204
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !1204
  br label %do.cond.73, !dbg !1206

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !1207

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75, !dbg !1209

if.end.75:                                        ; preds = %do.end.74, %do.body.57
  %85 = bitcast %struct._object** %_py_xdecref_tmp59 to i8*, !dbg !1211
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !1211
  br label %do.cond.76, !dbg !1212

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !1213

do.end.77:                                        ; preds = %do.cond.76
  %86 = bitcast %struct._object** %oldtraceback to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !1215
  %87 = bitcast %struct._object** %oldvalue to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !1215
  %88 = bitcast %struct._object** %oldtype to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !1215
  %89 = bitcast %struct._ts** %tstate to i8*, !dbg !1215
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1215
  ret void, !dbg !1215
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !922, metadata !975), !dbg !1216
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !923, metadata !975), !dbg !1217
  %0 = load i8*, i8** %address.addr, align 8, !dbg !1218, !tbaa !971
  %1 = load i32, i32* %order.addr, align 4, !dbg !1219, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %1, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %.off = add i32 %1, -2
  %SwitchLeaf2 = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp ule i32 %1, 1
  br i1 %SwitchLeaf, label %sw.bb.1, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1
  br label %sw.epilog, !dbg !1220

sw.bb.1:                                          ; preds = %LeafBlock
  br label %sw.epilog, !dbg !1222

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !1223, !tbaa !991
  br label %NodeBlock.13

NodeBlock.13:                                     ; preds = %sw.epilog
  %Pivot.14 = icmp slt i32 %2, 2
  br i1 %Pivot.14, label %NodeBlock.6, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %2, 3
  br i1 %Pivot.12, label %sw.bb.3, label %LeafBlock.8

LeafBlock.8:                                      ; preds = %NodeBlock.11
  %.off.9 = add i32 %2, -3
  %SwitchLeaf10 = icmp ule i32 %.off.9, 1
  br i1 %SwitchLeaf10, label %sw.bb.2, label %NewDefault.3

NodeBlock.6:                                      ; preds = %NodeBlock.13
  %Pivot.7 = icmp slt i32 %2, 1
  br i1 %Pivot.7, label %LeafBlock.4, label %sw.bb.2

LeafBlock.4:                                      ; preds = %NodeBlock.6
  %SwitchLeaf5 = icmp eq i32 %2, 0
  br i1 %SwitchLeaf5, label %sw.bb.3, label %NewDefault.3

sw.bb.2:                                          ; preds = %LeafBlock.8, %NodeBlock.6
  br label %sw.epilog.4, !dbg !1224

sw.bb.3:                                          ; preds = %NodeBlock.11, %LeafBlock.4
  br label %sw.epilog.4, !dbg !1226

NewDefault.3:                                     ; preds = %LeafBlock.8, %LeafBlock.4
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %NewDefault.3, %sw.bb.3, %sw.bb.2
  ret void, !dbg !1227
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !928, metadata !975), !dbg !1228
  %0 = load i32, i32* %order.addr, align 4, !dbg !1229, !tbaa !991
  %cmp = icmp ne i32 %0, 0, !dbg !1231
  br i1 %cmp, label %if.then, label %if.end, !dbg !1232

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1233, !srcloc !1234
  br label %if.end, !dbg !1233

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1235
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !931, metadata !975), !dbg !1236
  %0 = load i32, i32* %order.addr, align 4, !dbg !1237, !tbaa !991
  %cmp = icmp ne i32 %0, 0, !dbg !1239
  br i1 %cmp, label %if.then, label %if.end, !dbg !1240

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1241, !srcloc !1242
  br label %if.end, !dbg !1241

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1243
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyErr_SetObject(%struct._object* %exception, %struct._object* %value) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %exc_value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %fixed_value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %context = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_xincref_tmp139 = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !468, metadata !975), !dbg !1244
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !469, metadata !975), !dbg !1245
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1246
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1246
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !470, metadata !975), !dbg !1247
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1248
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !471, metadata !975), !dbg !1249
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1249, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1250
  call void @llvm.dbg.declare(metadata i8** %result, metadata !473, metadata !975), !dbg !1251
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1252
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !474, metadata !975), !dbg !1253
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1254, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1255
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1253, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1256
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1256
  call void @llvm.dbg.declare(metadata i32* %order, metadata !475, metadata !975), !dbg !1257
  store i32 0, i32* %order, align 4, !dbg !1257, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1258, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1258
  %8 = load i32, i32* %order, align 4, !dbg !1259, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1260
  %9 = load i32, i32* %order, align 4, !dbg !1261, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1262
  br label %sw.epilog, !dbg !1267

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1268

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1270, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1273, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1274, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1275, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1276
  br label %sw.epilog.3, !dbg !1281

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !1282

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1284, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1287, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1288
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1288
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1288
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1288
  %16 = bitcast i8** %result to i8*, !dbg !1288
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1288
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1288
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1288
  %18 = load i8*, i8** %tmp, !dbg !1289, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1290
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1247, !tbaa !971
  %20 = bitcast %struct._object** %exc_value to i8*, !dbg !1291
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1291
  call void @llvm.dbg.declare(metadata %struct._object** %exc_value, metadata !476, metadata !975), !dbg !1292
  %21 = bitcast %struct._object** %tb to i8*, !dbg !1293
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1293
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !477, metadata !975), !dbg !1294
  store %struct._object* null, %struct._object** %tb, align 8, !dbg !1294, !tbaa !971
  %22 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1295, !tbaa !971
  %cmp = icmp ne %struct._object* %22, null, !dbg !1297
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1298

land.lhs.true:                                    ; preds = %sw.epilog.3
  %23 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1299, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1300
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1300, !tbaa !1035
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19, !dbg !1301
  %25 = load i64, i64* %tp_flags, align 8, !dbg !1301, !tbaa !1302
  %and = and i64 %25, 2147483648, !dbg !1303
  %cmp6 = icmp ne i64 %and, 0, !dbg !1304
  br i1 %cmp6, label %land.lhs.true.7, label %if.then, !dbg !1305

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1306, !tbaa !971
  %27 = bitcast %struct._object* %26 to %struct._typeobject*, !dbg !1308
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19, !dbg !1309
  %28 = load i64, i64* %tp_flags8, align 8, !dbg !1309, !tbaa !1302
  %and9 = and i64 %28, 1073741824, !dbg !1310
  %cmp10 = icmp ne i64 %and9, 0, !dbg !1311
  br i1 %cmp10, label %if.end, label %if.then, !dbg !1312

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %29 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1313, !tbaa !971
  %30 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1315, !tbaa !971
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), %struct._object* %30), !dbg !1316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147, !dbg !1317

if.end:                                           ; preds = %land.lhs.true.7, %sw.epilog.3
  br label %do.body, !dbg !1318

do.body:                                          ; preds = %if.end
  %31 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !1319
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !478, metadata !975), !dbg !1321
  %32 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1322, !tbaa !971
  store %struct._object* %32, %struct._object** %_py_xincref_tmp, align 8, !dbg !1321, !tbaa !971
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1323, !tbaa !971
  %cmp12 = icmp ne %struct._object* %33, null, !dbg !1325
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1326

if.then.13:                                       ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1327, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !1329
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !1330, !tbaa !1049
  %inc = add i64 %35, 1, !dbg !1330
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1330, !tbaa !1049
  br label %if.end.14, !dbg !1331

if.end.14:                                        ; preds = %if.then.13, %do.body
  %36 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1332
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1332
  br label %do.cond, !dbg !1335

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !1336

do.end:                                           ; preds = %do.cond
  %37 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1338, !tbaa !971
  %exc_value15 = getelementptr inbounds %struct._ts, %struct._ts* %37, i32 0, i32 17, !dbg !1339
  %38 = load %struct._object*, %struct._object** %exc_value15, align 8, !dbg !1339, !tbaa !1340
  store %struct._object* %38, %struct._object** %exc_value, align 8, !dbg !1341, !tbaa !971
  %39 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1342, !tbaa !971
  %cmp16 = icmp ne %struct._object* %39, null, !dbg !1343
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.127, !dbg !1344

land.lhs.true.17:                                 ; preds = %do.end
  %40 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1345, !tbaa !971
  %cmp18 = icmp ne %struct._object* %40, @_Py_NoneStruct, !dbg !1347
  br i1 %cmp18, label %if.then.19, label %if.end.127, !dbg !1348

if.then.19:                                       ; preds = %land.lhs.true.17
  %41 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1349, !tbaa !971
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1350
  %42 = load i64, i64* %ob_refcnt20, align 8, !dbg !1351, !tbaa !1049
  %inc21 = add i64 %42, 1, !dbg !1351
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !1351, !tbaa !1049
  %43 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1352, !tbaa !971
  %cmp22 = icmp eq %struct._object* %43, null, !dbg !1353
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false, !dbg !1354

lor.lhs.false:                                    ; preds = %if.then.19
  %44 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1355, !tbaa !971
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !1357
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1357, !tbaa !1035
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 19, !dbg !1358
  %46 = load i64, i64* %tp_flags24, align 8, !dbg !1358, !tbaa !1302
  %and25 = and i64 %46, 1073741824, !dbg !1359
  %cmp26 = icmp ne i64 %and25, 0, !dbg !1360
  br i1 %cmp26, label %if.end.89, label %if.then.27, !dbg !1361

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.19
  %47 = bitcast %struct._object** %args to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1362
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !480, metadata !975), !dbg !1363
  %48 = bitcast %struct._object** %fixed_value to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1362
  call void @llvm.dbg.declare(metadata %struct._object** %fixed_value, metadata !485, metadata !975), !dbg !1364
  %49 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1365, !tbaa !971
  %cmp30 = icmp eq %struct._object* %49, null, !dbg !1367
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31, !dbg !1368

lor.lhs.false.31:                                 ; preds = %if.then.27
  %50 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1369, !tbaa !971
  %cmp32 = icmp eq %struct._object* %50, @_Py_NoneStruct, !dbg !1371
  br i1 %cmp32, label %if.then.33, label %if.else, !dbg !1372

if.then.33:                                       ; preds = %lor.lhs.false.31, %if.then.27
  %call34 = call %struct._object* @PyTuple_New(i64 0), !dbg !1373
  store %struct._object* %call34, %struct._object** %args, align 8, !dbg !1374, !tbaa !971
  br label %if.end.45, !dbg !1375

if.else:                                          ; preds = %lor.lhs.false.31
  %51 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1376, !tbaa !971
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !1378
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1378, !tbaa !1035
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 19, !dbg !1379
  %53 = load i64, i64* %tp_flags36, align 8, !dbg !1379, !tbaa !1302
  %and37 = and i64 %53, 67108864, !dbg !1380
  %cmp38 = icmp ne i64 %and37, 0, !dbg !1381
  br i1 %cmp38, label %if.then.39, label %if.else.42, !dbg !1382

if.then.39:                                       ; preds = %if.else
  %54 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1383, !tbaa !971
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1385
  %55 = load i64, i64* %ob_refcnt40, align 8, !dbg !1386, !tbaa !1049
  %inc41 = add i64 %55, 1, !dbg !1386
  store i64 %inc41, i64* %ob_refcnt40, align 8, !dbg !1386, !tbaa !1049
  %56 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1387, !tbaa !971
  store %struct._object* %56, %struct._object** %args, align 8, !dbg !1388, !tbaa !971
  br label %if.end.44, !dbg !1389

if.else.42:                                       ; preds = %if.else
  %57 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1390, !tbaa !971
  %call43 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %57), !dbg !1391
  store %struct._object* %call43, %struct._object** %args, align 8, !dbg !1392, !tbaa !971
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %58 = load %struct._object*, %struct._object** %args, align 8, !dbg !1393, !tbaa !971
  %tobool = icmp ne %struct._object* %58, null, !dbg !1393
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1393

cond.true:                                        ; preds = %if.end.45
  %59 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1394, !tbaa !971
  %60 = load %struct._object*, %struct._object** %args, align 8, !dbg !1395, !tbaa !971
  %call46 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %59, %struct._object* %60, %struct._object* null), !dbg !1396
  br label %cond.end, !dbg !1393

cond.false:                                       ; preds = %if.end.45
  br label %cond.end, !dbg !1397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call46, %cond.true ], [ null, %cond.false ], !dbg !1393
  store %struct._object* %cond, %struct._object** %fixed_value, align 8, !dbg !1399, !tbaa !971
  br label %do.body.47, !dbg !1402

do.body.47:                                       ; preds = %cond.end
  %61 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1403
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !486, metadata !975), !dbg !1405
  %62 = load %struct._object*, %struct._object** %args, align 8, !dbg !1406, !tbaa !971
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1405, !tbaa !971
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1407, !tbaa !971
  %cmp49 = icmp ne %struct._object* %63, null, !dbg !1408
  br i1 %cmp49, label %if.then.50, label %if.end.61, !dbg !1409

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51, !dbg !1410

do.body.51:                                       ; preds = %if.then.50
  %64 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !1412
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !488, metadata !975), !dbg !1414
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1415, !tbaa !971
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8, !dbg !1414, !tbaa !971
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1416, !tbaa !971
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !1418
  %67 = load i64, i64* %ob_refcnt53, align 8, !dbg !1419, !tbaa !1049
  %dec = add i64 %67, -1, !dbg !1419
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !1419, !tbaa !1049
  %cmp54 = icmp ne i64 %dec, 0, !dbg !1420
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !1421

if.then.55:                                       ; preds = %do.body.51
  br label %if.end.58, !dbg !1422

if.else.56:                                       ; preds = %do.body.51
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1424, !tbaa !971
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !1426
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1426, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !1427
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1427, !tbaa !1058
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1428, !tbaa !971
  call void %70(%struct._object* %71), !dbg !1429
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  %72 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1430
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1430
  br label %do.cond.59, !dbg !1432

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1433

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61, !dbg !1435

if.end.61:                                        ; preds = %do.end.60, %do.body.47
  %73 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1437
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1437
  br label %do.cond.62, !dbg !1440

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !1441

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64, !dbg !1443

do.body.64:                                       ; preds = %do.end.63
  %74 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !1444
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1444
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp66, metadata !491, metadata !975), !dbg !1446
  %75 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1447, !tbaa !971
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1446, !tbaa !971
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1448, !tbaa !971
  %cmp67 = icmp ne %struct._object* %76, null, !dbg !1449
  br i1 %cmp67, label %if.then.68, label %if.end.82, !dbg !1450

if.then.68:                                       ; preds = %do.body.64
  br label %do.body.69, !dbg !1451

do.body.69:                                       ; preds = %if.then.68
  %77 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1453
  call void @llvm.lifetime.start(i64 8, i8* %77) #2, !dbg !1453
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp71, metadata !493, metadata !975), !dbg !1455
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1456, !tbaa !971
  store %struct._object* %78, %struct._object** %_py_decref_tmp71, align 8, !dbg !1455, !tbaa !971
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1457, !tbaa !971
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !1459
  %80 = load i64, i64* %ob_refcnt72, align 8, !dbg !1460, !tbaa !1049
  %dec73 = add i64 %80, -1, !dbg !1460
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1460, !tbaa !1049
  %cmp74 = icmp ne i64 %dec73, 0, !dbg !1461
  br i1 %cmp74, label %if.then.75, label %if.else.76, !dbg !1462

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79, !dbg !1463

if.else.76:                                       ; preds = %do.body.69
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1465, !tbaa !971
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !1467
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1467, !tbaa !1035
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !1468
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1468, !tbaa !1058
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1469, !tbaa !971
  call void %83(%struct._object* %84), !dbg !1470
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  %85 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1471
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !1471
  br label %do.cond.80, !dbg !1473

do.cond.80:                                       ; preds = %if.end.79
  br label %do.end.81, !dbg !1474

do.end.81:                                        ; preds = %do.cond.80
  br label %if.end.82, !dbg !1476

if.end.82:                                        ; preds = %do.end.81, %do.body.64
  %86 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !1478
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !1478
  br label %do.cond.83, !dbg !1479

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1480

do.end.84:                                        ; preds = %do.cond.83
  %87 = load %struct._object*, %struct._object** %fixed_value, align 8, !dbg !1482, !tbaa !971
  %cmp85 = icmp eq %struct._object* %87, null, !dbg !1484
  br i1 %cmp85, label %if.then.86, label %if.end.87, !dbg !1485

if.then.86:                                       ; preds = %do.end.84
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1486

if.end.87:                                        ; preds = %do.end.84
  %88 = load %struct._object*, %struct._object** %fixed_value, align 8, !dbg !1487, !tbaa !971
  store %struct._object* %88, %struct._object** %value.addr, align 8, !dbg !1488, !tbaa !971
  store i32 0, i32* %cleanup.dest.slot, !dbg !1489
  br label %cleanup, !dbg !1489

cleanup:                                          ; preds = %if.end.87, %if.then.86
  %89 = bitcast %struct._object** %fixed_value to i8*, !dbg !1490
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1490
  %90 = bitcast %struct._object** %args to i8*, !dbg !1490
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1490
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf9, label %cleanup.cont, label %NewDefault.7

cleanup.cont:                                     ; preds = %LeafBlock.8
  br label %if.end.89, !dbg !1491

if.end.89:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %91 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1492, !tbaa !971
  %92 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1493, !tbaa !971
  %cmp90 = icmp ne %struct._object* %91, %92, !dbg !1494
  br i1 %cmp90, label %if.then.91, label %if.else.112, !dbg !1495

if.then.91:                                       ; preds = %if.end.89
  %93 = bitcast %struct._object** %o to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %93) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !496, metadata !975), !dbg !1497
  %94 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1498, !tbaa !971
  store %struct._object* %94, %struct._object** %o, align 8, !dbg !1497, !tbaa !971
  %95 = bitcast %struct._object** %context to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %95) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %context, metadata !499, metadata !975), !dbg !1499
  br label %while.cond, !dbg !1500

while.cond:                                       ; preds = %if.end.111, %if.then.91
  %96 = load %struct._object*, %struct._object** %o, align 8, !dbg !1501, !tbaa !971
  %call94 = call %struct._object* @PyException_GetContext(%struct._object* %96), !dbg !1504
  store %struct._object* %call94, %struct._object** %context, align 8, !dbg !1505, !tbaa !971
  %tobool95 = icmp ne %struct._object* %call94, null, !dbg !1500
  br i1 %tobool95, label %while.body, label %while.end, !dbg !1500

while.body:                                       ; preds = %while.cond
  br label %do.body.96, !dbg !1506

do.body.96:                                       ; preds = %while.body
  %97 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !1507
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !1507
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp98, metadata !500, metadata !975), !dbg !1509
  %98 = load %struct._object*, %struct._object** %context, align 8, !dbg !1510, !tbaa !971
  store %struct._object* %98, %struct._object** %_py_decref_tmp98, align 8, !dbg !1509, !tbaa !971
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1511, !tbaa !971
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !1513
  %100 = load i64, i64* %ob_refcnt99, align 8, !dbg !1514, !tbaa !1049
  %dec100 = add i64 %100, -1, !dbg !1514
  store i64 %dec100, i64* %ob_refcnt99, align 8, !dbg !1514, !tbaa !1049
  %cmp101 = icmp ne i64 %dec100, 0, !dbg !1515
  br i1 %cmp101, label %if.then.102, label %if.else.103, !dbg !1516

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106, !dbg !1517

if.else.103:                                      ; preds = %do.body.96
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1519, !tbaa !971
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !1521
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !1521, !tbaa !1035
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !1522
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !1522, !tbaa !1058
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1523, !tbaa !971
  call void %103(%struct._object* %104), !dbg !1524
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %105 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !1525
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !1525
  br label %do.cond.107, !dbg !1527

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !1528

do.end.108:                                       ; preds = %do.cond.107
  %106 = load %struct._object*, %struct._object** %context, align 8, !dbg !1530, !tbaa !971
  %107 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1532, !tbaa !971
  %cmp109 = icmp eq %struct._object* %106, %107, !dbg !1533
  br i1 %cmp109, label %if.then.110, label %if.end.111, !dbg !1534

if.then.110:                                      ; preds = %do.end.108
  %108 = load %struct._object*, %struct._object** %o, align 8, !dbg !1535, !tbaa !971
  call void @PyException_SetContext(%struct._object* %108, %struct._object* null), !dbg !1537
  br label %while.end, !dbg !1538

if.end.111:                                       ; preds = %do.end.108
  %109 = load %struct._object*, %struct._object** %context, align 8, !dbg !1539, !tbaa !971
  store %struct._object* %109, %struct._object** %o, align 8, !dbg !1540, !tbaa !971
  br label %while.cond, !dbg !1500

while.end:                                        ; preds = %if.then.110, %while.cond
  %110 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1541, !tbaa !971
  %111 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1542, !tbaa !971
  call void @PyException_SetContext(%struct._object* %110, %struct._object* %111), !dbg !1543
  %112 = bitcast %struct._object** %context to i8*, !dbg !1544
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !1544
  %113 = bitcast %struct._object** %o to i8*, !dbg !1544
  call void @llvm.lifetime.end(i64 8, i8* %113) #2, !dbg !1544
  br label %if.end.126, !dbg !1545

if.else.112:                                      ; preds = %if.end.89
  br label %do.body.113, !dbg !1546

do.body.113:                                      ; preds = %if.else.112
  %114 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !1547
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !1547
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !503, metadata !975), !dbg !1549
  %115 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1550, !tbaa !971
  store %struct._object* %115, %struct._object** %_py_decref_tmp115, align 8, !dbg !1549, !tbaa !971
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1551, !tbaa !971
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !1553
  %117 = load i64, i64* %ob_refcnt116, align 8, !dbg !1554, !tbaa !1049
  %dec117 = add i64 %117, -1, !dbg !1554
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !1554, !tbaa !1049
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !1555
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !1556

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123, !dbg !1557

if.else.120:                                      ; preds = %do.body.113
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1559, !tbaa !971
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !1561
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1561, !tbaa !1035
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !1562
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1562, !tbaa !1058
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1563, !tbaa !971
  call void %120(%struct._object* %121), !dbg !1564
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %122 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !1565
  br label %do.cond.124, !dbg !1567

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !1568

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %while.end
  br label %if.end.127, !dbg !1570

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.17, %do.end
  %123 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1571, !tbaa !971
  %cmp128 = icmp ne %struct._object* %123, null, !dbg !1573
  br i1 %cmp128, label %land.lhs.true.129, label %if.end.136, !dbg !1574

land.lhs.true.129:                                ; preds = %if.end.127
  %124 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1575, !tbaa !971
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1, !dbg !1577
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !1577, !tbaa !1035
  %tp_flags131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 19, !dbg !1578
  %126 = load i64, i64* %tp_flags131, align 8, !dbg !1578, !tbaa !1302
  %and132 = and i64 %126, 1073741824, !dbg !1579
  %cmp133 = icmp ne i64 %and132, 0, !dbg !1580
  br i1 %cmp133, label %if.then.134, label %if.end.136, !dbg !1581

if.then.134:                                      ; preds = %land.lhs.true.129
  %127 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1582, !tbaa !971
  %call135 = call %struct._object* @PyException_GetTraceback(%struct._object* %127), !dbg !1583
  store %struct._object* %call135, %struct._object** %tb, align 8, !dbg !1584, !tbaa !971
  br label %if.end.136, !dbg !1585

if.end.136:                                       ; preds = %if.then.134, %land.lhs.true.129, %if.end.127
  br label %do.body.137, !dbg !1586

do.body.137:                                      ; preds = %if.end.136
  %128 = bitcast %struct._object** %_py_xincref_tmp139 to i8*, !dbg !1587
  call void @llvm.lifetime.start(i64 8, i8* %128) #2, !dbg !1587
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp139, metadata !506, metadata !975), !dbg !1589
  %129 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1590, !tbaa !971
  store %struct._object* %129, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1589, !tbaa !971
  %130 = load %struct._object*, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1591, !tbaa !971
  %cmp140 = icmp ne %struct._object* %130, null, !dbg !1593
  br i1 %cmp140, label %if.then.141, label %if.end.144, !dbg !1594

if.then.141:                                      ; preds = %do.body.137
  %131 = load %struct._object*, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1595, !tbaa !971
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0, !dbg !1597
  %132 = load i64, i64* %ob_refcnt142, align 8, !dbg !1598, !tbaa !1049
  %inc143 = add i64 %132, 1, !dbg !1598
  store i64 %inc143, i64* %ob_refcnt142, align 8, !dbg !1598, !tbaa !1049
  br label %if.end.144, !dbg !1599

if.end.144:                                       ; preds = %if.then.141, %do.body.137
  %133 = bitcast %struct._object** %_py_xincref_tmp139 to i8*, !dbg !1600
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !1600
  br label %do.cond.145, !dbg !1601

do.cond.145:                                      ; preds = %if.end.144
  br label %do.end.146, !dbg !1602

do.end.146:                                       ; preds = %do.cond.145
  %134 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1604, !tbaa !971
  %135 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1605, !tbaa !971
  %136 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1606, !tbaa !971
  call void @PyErr_Restore(%struct._object* %134, %struct._object* %135, %struct._object* %136), !dbg !1607
  store i32 0, i32* %cleanup.dest.slot, !dbg !1608
  br label %cleanup.147, !dbg !1608

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.147

cleanup.147:                                      ; preds = %NewDefault.7, %do.end.146, %if.then
  %137 = bitcast %struct._object** %tb to i8*, !dbg !1609
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1609
  %138 = bitcast %struct._object** %exc_value to i8*, !dbg !1609
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1609
  %139 = bitcast %struct._ts** %tstate to i8*, !dbg !1609
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1609
  %cleanup.dest.150 = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont.151

cleanup.cont.151:                                 ; preds = %cleanup.147
  ret void, !dbg !1608

unreachable:                                      ; No predecessors!
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Format(%struct._object* %exception, i8* %format, ...) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %string = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !742, metadata !975), !dbg !1611
  store i8* %format, i8** %format.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !743, metadata !975), !dbg !1612
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1613
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1613
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !744, metadata !975), !dbg !1614
  %1 = bitcast %struct._object** %string to i8*, !dbg !1615
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1615
  call void @llvm.dbg.declare(metadata %struct._object** %string, metadata !757, metadata !975), !dbg !1616
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1617
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1618
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1618
  %2 = load i8*, i8** %format.addr, align 8, !dbg !1619, !tbaa !971
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1620
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %2, %struct.__va_list_tag* %arraydecay2), !dbg !1621
  store %struct._object* %call, %struct._object** %string, align 8, !dbg !1622, !tbaa !971
  %3 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1623, !tbaa !971
  %4 = load %struct._object*, %struct._object** %string, align 8, !dbg !1624, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %3, %struct._object* %4), !dbg !1625
  br label %do.body, !dbg !1626

do.body:                                          ; preds = %entry
  %5 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1627
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !758, metadata !975), !dbg !1629
  %6 = load %struct._object*, %struct._object** %string, align 8, !dbg !1630, !tbaa !971
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1629, !tbaa !971
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1631, !tbaa !971
  %cmp = icmp ne %struct._object* %7, null, !dbg !1632
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !1633

if.then:                                          ; preds = %do.body
  br label %do.body.3, !dbg !1634

do.body.3:                                        ; preds = %if.then
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1636
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1636
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !760, metadata !975), !dbg !1638
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1639, !tbaa !971
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1638, !tbaa !971
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1640, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1642
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1643, !tbaa !1049
  %dec = add i64 %11, -1, !dbg !1643
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1643, !tbaa !1049
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1644
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1645

if.then.5:                                        ; preds = %do.body.3
  br label %if.end, !dbg !1646

if.else:                                          ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1648, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1650
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1650, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1651
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1651, !tbaa !1058
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1652, !tbaa !971
  call void %14(%struct._object* %15), !dbg !1653
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1654
  br label %do.cond, !dbg !1656

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1657

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !1659

if.end.6:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1661
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1661
  br label %do.cond.7, !dbg !1664

do.cond.7:                                        ; preds = %if.end.6
  br label %do.end.8, !dbg !1665

do.end.8:                                         ; preds = %do.cond.7
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1667
  %arraydecay910 = bitcast %struct.__va_list_tag* %arraydecay9 to i8*, !dbg !1668
  call void @llvm.va_end(i8* %arraydecay910), !dbg !1668
  %18 = bitcast %struct._object** %string to i8*, !dbg !1669
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1669
  %19 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1669
  call void @llvm.lifetime.end(i64 24, i8* %19) #2, !dbg !1669
  ret %struct._object* null, !dbg !1670
}

declare %struct._object* @PyTuple_New(i64) #4

declare %struct._object* @PyTuple_Pack(i64, ...) #4

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #4

declare %struct._object* @PyException_GetContext(%struct._object*) #4

declare void @PyException_SetContext(%struct._object*, %struct._object*) #4

declare %struct._object* @PyException_GetTraceback(%struct._object*) #4

; Function Attrs: nounwind uwtable
define void @_PyErr_SetKeyError(%struct._object* %arg) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !510, metadata !975), !dbg !1671
  %0 = bitcast %struct._object** %tup to i8*, !dbg !1672
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct._object** %tup, metadata !511, metadata !975), !dbg !1673
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1674, !tbaa !971
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %1), !dbg !1675
  store %struct._object* %call, %struct._object** %tup, align 8, !dbg !1676, !tbaa !971
  %2 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1677, !tbaa !971
  %tobool = icmp ne %struct._object* %2, null, !dbg !1677
  br i1 %tobool, label %if.end, label %if.then, !dbg !1679

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1680

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !1681, !tbaa !971
  %4 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1682, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %3, %struct._object* %4), !dbg !1683
  br label %do.body, !dbg !1684

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1685
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1685
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !512, metadata !975), !dbg !1687
  %6 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1688, !tbaa !971
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1687, !tbaa !971
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1689, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1691
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1692, !tbaa !1049
  %dec = add i64 %8, -1, !dbg !1692
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1692, !tbaa !1049
  %cmp = icmp ne i64 %dec, 0, !dbg !1693
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1694

if.then.1:                                        ; preds = %do.body
  br label %if.end.2, !dbg !1695

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1697, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1699
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1699, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1700
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1700, !tbaa !1058
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1701, !tbaa !971
  call void %11(%struct._object* %12), !dbg !1702
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1703
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1703
  br label %do.cond, !dbg !1705

do.cond:                                          ; preds = %if.end.2
  br label %do.end, !dbg !1706

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1708
  br label %cleanup, !dbg !1708

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct._object** %tup to i8*, !dbg !1709
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1709
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !1708

unreachable:                                      ; No predecessors!
  unreachable
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetNone(%struct._object* %exception) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !516, metadata !975), !dbg !1711
  %0 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1712, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %0, %struct._object* null), !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetString(%struct._object* %exception, i8* %string) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %string.addr = alloca i8*, align 8
  %value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !521, metadata !975), !dbg !1715
  store i8* %string, i8** %string.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !522, metadata !975), !dbg !1716
  %0 = bitcast %struct._object** %value to i8*, !dbg !1717
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1717
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !523, metadata !975), !dbg !1718
  %1 = load i8*, i8** %string.addr, align 8, !dbg !1719, !tbaa !971
  %call = call %struct._object* @PyUnicode_FromString(i8* %1), !dbg !1720
  store %struct._object* %call, %struct._object** %value, align 8, !dbg !1718, !tbaa !971
  %2 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1721, !tbaa !971
  %3 = load %struct._object*, %struct._object** %value, align 8, !dbg !1722, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %2, %struct._object* %3), !dbg !1723
  br label %do.body, !dbg !1724

do.body:                                          ; preds = %entry
  %4 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1725
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1725
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !524, metadata !975), !dbg !1727
  %5 = load %struct._object*, %struct._object** %value, align 8, !dbg !1728, !tbaa !971
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1727, !tbaa !971
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1729, !tbaa !971
  %cmp = icmp ne %struct._object* %6, null, !dbg !1730
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1731

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1732

do.body.1:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1734
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1734
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !526, metadata !975), !dbg !1736
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1737, !tbaa !971
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1736, !tbaa !971
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1738, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1740
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1741, !tbaa !1049
  %dec = add i64 %10, -1, !dbg !1741
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1741, !tbaa !1049
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1742
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1743

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1744

if.else:                                          ; preds = %do.body.1
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1746, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1748
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1748, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1749
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1749, !tbaa !1058
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1750, !tbaa !971
  call void %13(%struct._object* %14), !dbg !1751
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1752
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1752
  br label %do.cond, !dbg !1754

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1755

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1757

if.end.4:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1759
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1759
  br label %do.cond.5, !dbg !1762

do.cond.5:                                        ; preds = %if.end.4
  br label %do.end.6, !dbg !1763

do.end.6:                                         ; preds = %do.cond.5
  %17 = bitcast %struct._object** %value to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1765
  ret void, !dbg !1765
}

declare %struct._object* @PyUnicode_FromString(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Occurred() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1766
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1766
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !533, metadata !975), !dbg !1767
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1768
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1768
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !534, metadata !975), !dbg !1769
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1769, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1770
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1770
  call void @llvm.dbg.declare(metadata i8** %result, metadata !536, metadata !975), !dbg !1771
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1772
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !537, metadata !975), !dbg !1773
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1774, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1775
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1773, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %order, metadata !538, metadata !975), !dbg !1777
  store i32 0, i32* %order, align 4, !dbg !1777, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1778, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1778
  %8 = load i32, i32* %order, align 4, !dbg !1779, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1780
  %9 = load i32, i32* %order, align 4, !dbg !1781, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1782
  br label %sw.epilog, !dbg !1787

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1788

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1790, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1793, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1794, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1795, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1796
  br label %sw.epilog.3, !dbg !1801

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !1802

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1804, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1807, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1808
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1808
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1808
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1808
  %16 = bitcast i8** %result to i8*, !dbg !1808
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1808
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1808
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1808
  %18 = load i8*, i8** %tmp, !dbg !1809, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1810
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1767, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1811, !tbaa !971
  %cmp = icmp eq %struct._ts* %20, null, !dbg !1812
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1811

cond.true:                                        ; preds = %sw.epilog.3
  br label %cond.end, !dbg !1813

cond.false:                                       ; preds = %sw.epilog.3
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1815, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 13, !dbg !1817
  %22 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !1817, !tbaa !1073
  br label %cond.end, !dbg !1811

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %22, %cond.false ], !dbg !1811
  %23 = bitcast %struct._ts** %tstate to i8*, !dbg !1818
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1818
  ret %struct._object* %cond, !dbg !1819
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_GivenExceptionMatches(%struct._object* %err, %struct._object* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %res = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %err.addr, metadata !541, metadata !975), !dbg !1820
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !542, metadata !975), !dbg !1821
  %0 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1822, !tbaa !971
  %cmp = icmp eq %struct._object* %0, null, !dbg !1824
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1825

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1826, !tbaa !971
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !1828
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1829

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !1830
  br label %return, !dbg !1830

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1832, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1833
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1833, !tbaa !1035
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1834
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1834, !tbaa !1302
  %and = and i64 %4, 67108864, !dbg !1835
  %cmp2 = icmp ne i64 %and, 0, !dbg !1836
  br i1 %cmp2, label %if.then.3, label %if.end.9, !dbg !1837

if.then.3:                                        ; preds = %if.end
  %5 = bitcast i64* %i to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1838
  call void @llvm.dbg.declare(metadata i64* %i, metadata !543, metadata !975), !dbg !1839
  %6 = bitcast i64* %n to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1838
  call void @llvm.dbg.declare(metadata i64* %n, metadata !546, metadata !975), !dbg !1840
  %7 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1841, !tbaa !971
  %call = call i64 @PyTuple_Size(%struct._object* %7), !dbg !1842
  store i64 %call, i64* %n, align 8, !dbg !1843, !tbaa !1844
  store i64 0, i64* %i, align 8, !dbg !1845, !tbaa !1844
  br label %for.cond, !dbg !1847

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i64, i64* %i, align 8, !dbg !1848, !tbaa !1844
  %9 = load i64, i64* %n, align 8, !dbg !1852, !tbaa !1844
  %cmp4 = icmp slt i64 %8, %9, !dbg !1853
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1854

for.body:                                         ; preds = %for.cond
  %10 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1855, !tbaa !971
  %11 = load i64, i64* %i, align 8, !dbg !1858, !tbaa !1844
  %12 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1859, !tbaa !971
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*, !dbg !1860
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1, !dbg !1861
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %11, !dbg !1862
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1862, !tbaa !971
  %call5 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %10, %struct._object* %14), !dbg !1863
  %tobool = icmp ne i32 %call5, 0, !dbg !1863
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !1864

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %retval, !dbg !1865
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1865

if.end.7:                                         ; preds = %for.body
  br label %for.inc, !dbg !1867

for.inc:                                          ; preds = %if.end.7
  %15 = load i64, i64* %i, align 8, !dbg !1868, !tbaa !1844
  %inc = add i64 %15, 1, !dbg !1868
  store i64 %inc, i64* %i, align 8, !dbg !1868, !tbaa !1844
  br label %for.cond, !dbg !1869

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !1870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1870

cleanup:                                          ; preds = %for.end, %if.then.6
  %16 = bitcast i64* %n to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1871
  %17 = bitcast i64* %i to i8*, !dbg !1871
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1871
  br label %return

if.end.9:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1872, !tbaa !971
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1874
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1874, !tbaa !1035
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !1875
  %20 = load i64, i64* %tp_flags11, align 8, !dbg !1875, !tbaa !1302
  %and12 = and i64 %20, 1073741824, !dbg !1876
  %cmp13 = icmp ne i64 %and12, 0, !dbg !1877
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1878

if.then.14:                                       ; preds = %if.end.9
  %21 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1879, !tbaa !971
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1880
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1880, !tbaa !1035
  %23 = bitcast %struct._typeobject* %22 to %struct._object*, !dbg !1881
  store %struct._object* %23, %struct._object** %err.addr, align 8, !dbg !1882, !tbaa !971
  br label %if.end.16, !dbg !1883

if.end.16:                                        ; preds = %if.then.14, %if.end.9
  %24 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1884, !tbaa !971
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1885
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1885, !tbaa !1035
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !1886
  %26 = load i64, i64* %tp_flags18, align 8, !dbg !1886, !tbaa !1302
  %and19 = and i64 %26, 2147483648, !dbg !1887
  %cmp20 = icmp ne i64 %and19, 0, !dbg !1888
  br i1 %cmp20, label %land.lhs.true, label %if.end.42, !dbg !1889

land.lhs.true:                                    ; preds = %if.end.16
  %27 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1890, !tbaa !971
  %28 = bitcast %struct._object* %27 to %struct._typeobject*, !dbg !1892
  %tp_flags21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19, !dbg !1893
  %29 = load i64, i64* %tp_flags21, align 8, !dbg !1893, !tbaa !1302
  %and22 = and i64 %29, 1073741824, !dbg !1894
  %cmp23 = icmp ne i64 %and22, 0, !dbg !1895
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.42, !dbg !1896

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %30 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1897, !tbaa !971
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1899
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1899, !tbaa !1035
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 19, !dbg !1900
  %32 = load i64, i64* %tp_flags26, align 8, !dbg !1900, !tbaa !1302
  %and27 = and i64 %32, 2147483648, !dbg !1901
  %cmp28 = icmp ne i64 %and27, 0, !dbg !1902
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.42, !dbg !1903

land.lhs.true.29:                                 ; preds = %land.lhs.true.24
  %33 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1904, !tbaa !971
  %34 = bitcast %struct._object* %33 to %struct._typeobject*, !dbg !1906
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 19, !dbg !1907
  %35 = load i64, i64* %tp_flags30, align 8, !dbg !1907, !tbaa !1302
  %and31 = and i64 %35, 1073741824, !dbg !1908
  %cmp32 = icmp ne i64 %and31, 0, !dbg !1909
  br i1 %cmp32, label %if.then.33, label %if.end.42, !dbg !1910

if.then.33:                                       ; preds = %land.lhs.true.29
  %36 = bitcast i32* %res to i8*, !dbg !1911
  call void @llvm.lifetime.start(i64 4, i8* %36) #2, !dbg !1911
  call void @llvm.dbg.declare(metadata i32* %res, metadata !547, metadata !975), !dbg !1912
  store i32 0, i32* %res, align 4, !dbg !1912, !tbaa !1913
  %37 = bitcast %struct._object** %exception to i8*, !dbg !1914
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1914
  call void @llvm.dbg.declare(metadata %struct._object** %exception, metadata !550, metadata !975), !dbg !1915
  %38 = bitcast %struct._object** %value to i8*, !dbg !1914
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !1914
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !551, metadata !975), !dbg !1916
  %39 = bitcast %struct._object** %tb to i8*, !dbg !1914
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1914
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !552, metadata !975), !dbg !1917
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb), !dbg !1918
  %40 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1919, !tbaa !971
  %41 = bitcast %struct._object* %40 to %struct._typeobject*, !dbg !1920
  %42 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1921, !tbaa !971
  %43 = bitcast %struct._object* %42 to %struct._typeobject*, !dbg !1922
  %call34 = call i32 @PyType_IsSubtype(%struct._typeobject* %41, %struct._typeobject* %43), !dbg !1923
  store i32 %call34, i32* %res, align 4, !dbg !1924, !tbaa !1913
  %44 = load i32, i32* %res, align 4, !dbg !1925, !tbaa !1913
  %cmp35 = icmp eq i32 %44, -1, !dbg !1927
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1928

if.then.36:                                       ; preds = %if.then.33
  %45 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1929, !tbaa !971
  call void @PyErr_WriteUnraisable(%struct._object* %45), !dbg !1931
  store i32 0, i32* %res, align 4, !dbg !1932, !tbaa !1913
  br label %if.end.37, !dbg !1933

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %46 = load %struct._object*, %struct._object** %exception, align 8, !dbg !1934, !tbaa !971
  %47 = load %struct._object*, %struct._object** %value, align 8, !dbg !1935, !tbaa !971
  %48 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1936, !tbaa !971
  call void @PyErr_Restore(%struct._object* %46, %struct._object* %47, %struct._object* %48), !dbg !1937
  %49 = load i32, i32* %res, align 4, !dbg !1938, !tbaa !1913
  store i32 %49, i32* %retval, !dbg !1939
  store i32 1, i32* %cleanup.dest.slot
  %50 = bitcast %struct._object** %tb to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !1940
  %51 = bitcast %struct._object** %value to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1940
  %52 = bitcast %struct._object** %exception to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1940
  %53 = bitcast i32* %res to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 4, i8* %53) #2, !dbg !1940
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.29, %land.lhs.true.24, %land.lhs.true, %if.end.16
  %54 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1941, !tbaa !971
  %55 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1942, !tbaa !971
  %cmp43 = icmp eq %struct._object* %54, %55, !dbg !1943
  %conv = zext i1 %cmp43 to i32, !dbg !1943
  store i32 %conv, i32* %retval, !dbg !1944
  br label %return, !dbg !1944

return:                                           ; preds = %if.end.42, %if.end.37, %cleanup, %if.then
  %56 = load i32, i32* %retval, !dbg !1945
  ret i32 %56, !dbg !1945
}

declare i64 @PyTuple_Size(%struct._object*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_Fetch(%struct._object** %p_type, %struct._object** %p_value, %struct._object** %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object**, align 8
  %p_value.addr = alloca %struct._object**, align 8
  %p_traceback.addr = alloca %struct._object**, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_type.addr, metadata !606, metadata !975), !dbg !1946
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_value.addr, metadata !607, metadata !975), !dbg !1947
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_traceback.addr, metadata !608, metadata !975), !dbg !1948
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !609, metadata !975), !dbg !1950
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1951
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1951
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !610, metadata !975), !dbg !1952
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1952, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1953
  call void @llvm.dbg.declare(metadata i8** %result, metadata !612, metadata !975), !dbg !1954
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1955
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1955
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !613, metadata !975), !dbg !1956
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1957, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1958
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1956, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1959
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1959
  call void @llvm.dbg.declare(metadata i32* %order, metadata !614, metadata !975), !dbg !1960
  store i32 0, i32* %order, align 4, !dbg !1960, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1961, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1961
  %8 = load i32, i32* %order, align 4, !dbg !1962, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1963
  %9 = load i32, i32* %order, align 4, !dbg !1964, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1965
  br label %sw.epilog, !dbg !1970

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !1971

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1973, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1976, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1977, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1978, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1979
  br label %sw.epilog.3, !dbg !1984

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !1985

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1987, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1990, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1991
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1991
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1991
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1991
  %16 = bitcast i8** %result to i8*, !dbg !1991
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1991
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1991
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1991
  %18 = load i8*, i8** %tmp, !dbg !1992, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1993
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1950, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1994, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 13, !dbg !1995
  %21 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !1995, !tbaa !1073
  %22 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !1996, !tbaa !971
  store %struct._object* %21, %struct._object** %22, align 8, !dbg !1997, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1998, !tbaa !971
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 14, !dbg !1999
  %24 = load %struct._object*, %struct._object** %curexc_value, align 8, !dbg !1999, !tbaa !1078
  %25 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2000, !tbaa !971
  store %struct._object* %24, %struct._object** %25, align 8, !dbg !2001, !tbaa !971
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2002, !tbaa !971
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 15, !dbg !2003
  %27 = load %struct._object*, %struct._object** %curexc_traceback, align 8, !dbg !2003, !tbaa !1082
  %28 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2004, !tbaa !971
  store %struct._object* %27, %struct._object** %28, align 8, !dbg !2005, !tbaa !971
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2006, !tbaa !971
  %curexc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %29, i32 0, i32 13, !dbg !2007
  store %struct._object* null, %struct._object** %curexc_type4, align 8, !dbg !2008, !tbaa !1073
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2009, !tbaa !971
  %curexc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 14, !dbg !2010
  store %struct._object* null, %struct._object** %curexc_value5, align 8, !dbg !2011, !tbaa !1078
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2012, !tbaa !971
  %curexc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %31, i32 0, i32 15, !dbg !2013
  store %struct._object* null, %struct._object** %curexc_traceback6, align 8, !dbg !2014, !tbaa !1082
  %32 = bitcast %struct._ts** %tstate to i8*, !dbg !2015
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2015
  ret void, !dbg !2015
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_WriteUnraisable(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %moduleName = alloca %struct._object*, align 8
  %className = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_xdecref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  %_py_xdecref_tmp127 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !819, metadata !975), !dbg !2016
  %0 = bitcast %struct._object** %f to i8*, !dbg !2017
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._object** %f, metadata !820, metadata !975), !dbg !2018
  %1 = bitcast %struct._object** %t to i8*, !dbg !2017
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !821, metadata !975), !dbg !2019
  %2 = bitcast %struct._object** %v to i8*, !dbg !2017
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !822, metadata !975), !dbg !2020
  %3 = bitcast %struct._object** %tb to i8*, !dbg !2017
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !823, metadata !975), !dbg !2021
  %4 = bitcast %struct._object** %moduleName to i8*, !dbg !2022
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2022
  call void @llvm.dbg.declare(metadata %struct._object** %moduleName, metadata !824, metadata !975), !dbg !2023
  store %struct._object* null, %struct._object** %moduleName, align 8, !dbg !2023, !tbaa !971
  %5 = bitcast i8** %className to i8*, !dbg !2024
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2024
  call void @llvm.dbg.declare(metadata i8** %className, metadata !825, metadata !975), !dbg !2025
  call void @PyErr_Fetch(%struct._object** %t, %struct._object** %v, %struct._object** %tb), !dbg !2026
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr), !dbg !2027
  store %struct._object* %call, %struct._object** %f, align 8, !dbg !2028, !tbaa !971
  %6 = load %struct._object*, %struct._object** %f, align 8, !dbg !2029, !tbaa !971
  %cmp = icmp eq %struct._object* %6, null, !dbg !2031
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2032

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %f, align 8, !dbg !2033, !tbaa !971
  %cmp1 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !2035
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2036

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %done, !dbg !2037

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2038, !tbaa !971
  %tobool = icmp ne %struct._object* %8, null, !dbg !2038
  br i1 %tobool, label %if.then.2, label %if.end.15, !dbg !2040

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %f, align 8, !dbg !2041, !tbaa !971
  %call3 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), %struct._object* %9), !dbg !2044
  %cmp4 = icmp slt i32 %call3, 0, !dbg !2045
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2046

if.then.5:                                        ; preds = %if.then.2
  br label %done, !dbg !2047

if.end.6:                                         ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2048, !tbaa !971
  %11 = load %struct._object*, %struct._object** %f, align 8, !dbg !2050, !tbaa !971
  %call7 = call i32 @PyFile_WriteObject(%struct._object* %10, %struct._object* %11, i32 0), !dbg !2051
  %cmp8 = icmp slt i32 %call7, 0, !dbg !2052
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2053

if.then.9:                                        ; preds = %if.end.6
  br label %done, !dbg !2054

if.end.10:                                        ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %f, align 8, !dbg !2055, !tbaa !971
  %call11 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %12), !dbg !2057
  %cmp12 = icmp slt i32 %call11, 0, !dbg !2058
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2059

if.then.13:                                       ; preds = %if.end.10
  br label %done, !dbg !2060

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.15, !dbg !2061

if.end.15:                                        ; preds = %if.end.14, %if.end
  %13 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2062, !tbaa !971
  %14 = load %struct._object*, %struct._object** %f, align 8, !dbg !2064, !tbaa !971
  %call16 = call i32 @PyTraceBack_Print(%struct._object* %13, %struct._object* %14), !dbg !2065
  %cmp17 = icmp slt i32 %call16, 0, !dbg !2066
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2067

if.then.18:                                       ; preds = %if.end.15
  br label %done, !dbg !2068

if.end.19:                                        ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** %t, align 8, !dbg !2069, !tbaa !971
  %tobool20 = icmp ne %struct._object* %15, null, !dbg !2069
  br i1 %tobool20, label %if.end.22, label %if.then.21, !dbg !2071

if.then.21:                                       ; preds = %if.end.19
  br label %done, !dbg !2072

if.end.22:                                        ; preds = %if.end.19
  %16 = load %struct._object*, %struct._object** %t, align 8, !dbg !2073, !tbaa !971
  %17 = bitcast %struct._object* %16 to %struct._typeobject*, !dbg !2074
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1, !dbg !2075
  %18 = load i8*, i8** %tp_name, align 8, !dbg !2075, !tbaa !2076
  store i8* %18, i8** %className, align 8, !dbg !2077, !tbaa !971
  %19 = load i8*, i8** %className, align 8, !dbg !2078, !tbaa !971
  %cmp23 = icmp ne i8* %19, null, !dbg !2079
  br i1 %cmp23, label %if.then.24, label %if.end.29, !dbg !2080

if.then.24:                                       ; preds = %if.end.22
  %20 = bitcast i8** %dot to i8*, !dbg !2081
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2081
  call void @llvm.dbg.declare(metadata i8** %dot, metadata !826, metadata !975), !dbg !2082
  %21 = load i8*, i8** %className, align 8, !dbg !2083, !tbaa !971
  %call25 = call i8* @strrchr(i8* %21, i32 46) #9, !dbg !2084
  store i8* %call25, i8** %dot, align 8, !dbg !2082, !tbaa !971
  %22 = load i8*, i8** %dot, align 8, !dbg !2085, !tbaa !971
  %cmp26 = icmp ne i8* %22, null, !dbg !2087
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !2088

if.then.27:                                       ; preds = %if.then.24
  %23 = load i8*, i8** %dot, align 8, !dbg !2089, !tbaa !971
  %add.ptr = getelementptr i8, i8* %23, i64 1, !dbg !2090
  store i8* %add.ptr, i8** %className, align 8, !dbg !2091, !tbaa !971
  br label %if.end.28, !dbg !2092

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  %24 = bitcast i8** %dot to i8*, !dbg !2093
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2093
  br label %if.end.29, !dbg !2094

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %25 = load %struct._object*, %struct._object** %t, align 8, !dbg !2095, !tbaa !971
  %call30 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %25, %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__), !dbg !2096
  store %struct._object* %call30, %struct._object** %moduleName, align 8, !dbg !2097, !tbaa !971
  %26 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2098, !tbaa !971
  %cmp31 = icmp eq %struct._object* %26, null, !dbg !2100
  br i1 %cmp31, label %if.then.32, label %if.else, !dbg !2101

if.then.32:                                       ; preds = %if.end.29
  call void @PyErr_Clear(), !dbg !2102
  %27 = load %struct._object*, %struct._object** %f, align 8, !dbg !2104, !tbaa !971
  %call33 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %27), !dbg !2106
  %cmp34 = icmp slt i32 %call33, 0, !dbg !2107
  br i1 %cmp34, label %if.then.35, label %if.end.36, !dbg !2108

if.then.35:                                       ; preds = %if.then.32
  br label %done, !dbg !2109

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.49, !dbg !2110

if.else:                                          ; preds = %if.end.29
  %28 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2111, !tbaa !971
  %call37 = call i32 @_PyUnicode_CompareWithId(%struct._object* %28, %struct._Py_Identifier* @PyId_builtins), !dbg !2114
  %cmp38 = icmp ne i32 %call37, 0, !dbg !2115
  br i1 %cmp38, label %if.then.39, label %if.end.48, !dbg !2116

if.then.39:                                       ; preds = %if.else
  %29 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2117, !tbaa !971
  %30 = load %struct._object*, %struct._object** %f, align 8, !dbg !2120, !tbaa !971
  %call40 = call i32 @PyFile_WriteObject(%struct._object* %29, %struct._object* %30, i32 1), !dbg !2121
  %cmp41 = icmp slt i32 %call40, 0, !dbg !2122
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !2123

if.then.42:                                       ; preds = %if.then.39
  br label %done, !dbg !2124

if.end.43:                                        ; preds = %if.then.39
  %31 = load %struct._object*, %struct._object** %f, align 8, !dbg !2125, !tbaa !971
  %call44 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct._object* %31), !dbg !2127
  %cmp45 = icmp slt i32 %call44, 0, !dbg !2128
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !2129

if.then.46:                                       ; preds = %if.end.43
  br label %done, !dbg !2130

if.end.47:                                        ; preds = %if.end.43
  br label %if.end.48, !dbg !2131

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.36
  %32 = load i8*, i8** %className, align 8, !dbg !2132, !tbaa !971
  %cmp50 = icmp eq i8* %32, null, !dbg !2134
  br i1 %cmp50, label %if.then.51, label %if.else.56, !dbg !2135

if.then.51:                                       ; preds = %if.end.49
  %33 = load %struct._object*, %struct._object** %f, align 8, !dbg !2136, !tbaa !971
  %call52 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %33), !dbg !2139
  %cmp53 = icmp slt i32 %call52, 0, !dbg !2140
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !2141

if.then.54:                                       ; preds = %if.then.51
  br label %done, !dbg !2142

if.end.55:                                        ; preds = %if.then.51
  br label %if.end.61, !dbg !2143

if.else.56:                                       ; preds = %if.end.49
  %34 = load i8*, i8** %className, align 8, !dbg !2144, !tbaa !971
  %35 = load %struct._object*, %struct._object** %f, align 8, !dbg !2147, !tbaa !971
  %call57 = call i32 @PyFile_WriteString(i8* %34, %struct._object* %35), !dbg !2148
  %cmp58 = icmp slt i32 %call57, 0, !dbg !2149
  br i1 %cmp58, label %if.then.59, label %if.end.60, !dbg !2150

if.then.59:                                       ; preds = %if.else.56
  br label %done, !dbg !2151

if.end.60:                                        ; preds = %if.else.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.55
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !2152, !tbaa !971
  %tobool62 = icmp ne %struct._object* %36, null, !dbg !2152
  br i1 %tobool62, label %land.lhs.true, label %if.end.73, !dbg !2154

land.lhs.true:                                    ; preds = %if.end.61
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !2155, !tbaa !971
  %cmp63 = icmp ne %struct._object* %37, @_Py_NoneStruct, !dbg !2157
  br i1 %cmp63, label %if.then.64, label %if.end.73, !dbg !2158

if.then.64:                                       ; preds = %land.lhs.true
  %38 = load %struct._object*, %struct._object** %f, align 8, !dbg !2159, !tbaa !971
  %call65 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._object* %38), !dbg !2162
  %cmp66 = icmp slt i32 %call65, 0, !dbg !2163
  br i1 %cmp66, label %if.then.67, label %if.end.68, !dbg !2164

if.then.67:                                       ; preds = %if.then.64
  br label %done, !dbg !2165

if.end.68:                                        ; preds = %if.then.64
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !2166, !tbaa !971
  %40 = load %struct._object*, %struct._object** %f, align 8, !dbg !2168, !tbaa !971
  %call69 = call i32 @PyFile_WriteObject(%struct._object* %39, %struct._object* %40, i32 1), !dbg !2169
  %cmp70 = icmp slt i32 %call69, 0, !dbg !2170
  br i1 %cmp70, label %if.then.71, label %if.end.72, !dbg !2171

if.then.71:                                       ; preds = %if.end.68
  br label %done, !dbg !2172

if.end.72:                                        ; preds = %if.end.68
  br label %if.end.73, !dbg !2173

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.end.61
  %41 = load %struct._object*, %struct._object** %f, align 8, !dbg !2174, !tbaa !971
  %call74 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %41), !dbg !2176
  %cmp75 = icmp slt i32 %call74, 0, !dbg !2177
  br i1 %cmp75, label %if.then.76, label %if.end.77, !dbg !2178

if.then.76:                                       ; preds = %if.end.73
  br label %done, !dbg !2179

if.end.77:                                        ; preds = %if.end.73
  br label %done, !dbg !2180

done:                                             ; preds = %if.end.77, %if.then.76, %if.then.71, %if.then.67, %if.then.59, %if.then.54, %if.then.46, %if.then.42, %if.then.35, %if.then.21, %if.then.18, %if.then.13, %if.then.9, %if.then.5, %if.then
  br label %do.body, !dbg !2182

do.body:                                          ; preds = %done
  %42 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2183
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !829, metadata !975), !dbg !2185
  %43 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2186, !tbaa !971
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2185, !tbaa !971
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2187, !tbaa !971
  %cmp78 = icmp ne %struct._object* %44, null, !dbg !2188
  br i1 %cmp78, label %if.then.79, label %if.end.85, !dbg !2189

if.then.79:                                       ; preds = %do.body
  br label %do.body.80, !dbg !2190

do.body.80:                                       ; preds = %if.then.79
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2192
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2192
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !831, metadata !975), !dbg !2194
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2195, !tbaa !971
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !2194, !tbaa !971
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2196, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2198
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !2199, !tbaa !1049
  %dec = add i64 %48, -1, !dbg !2199
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2199, !tbaa !1049
  %cmp81 = icmp ne i64 %dec, 0, !dbg !2200
  br i1 %cmp81, label %if.then.82, label %if.else.83, !dbg !2201

if.then.82:                                       ; preds = %do.body.80
  br label %if.end.84, !dbg !2202

if.else.83:                                       ; preds = %do.body.80
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2204, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2206
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2206, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2207
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2207, !tbaa !1058
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2208, !tbaa !971
  call void %51(%struct._object* %52), !dbg !2209
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2210
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2210
  br label %do.cond, !dbg !2212

do.cond:                                          ; preds = %if.end.84
  br label %do.end, !dbg !2213

do.end:                                           ; preds = %do.cond
  br label %if.end.85, !dbg !2215

if.end.85:                                        ; preds = %do.end, %do.body
  %54 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2217
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2217
  br label %do.cond.86, !dbg !2220

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !2221

do.end.87:                                        ; preds = %do.cond.86
  br label %do.body.88, !dbg !2223

do.body.88:                                       ; preds = %do.end.87
  %55 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !2224
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !2224
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp89, metadata !834, metadata !975), !dbg !2226
  %56 = load %struct._object*, %struct._object** %t, align 8, !dbg !2227, !tbaa !971
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2226, !tbaa !971
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2228, !tbaa !971
  %cmp90 = icmp ne %struct._object* %57, null, !dbg !2229
  br i1 %cmp90, label %if.then.91, label %if.end.104, !dbg !2230

if.then.91:                                       ; preds = %do.body.88
  br label %do.body.92, !dbg !2231

do.body.92:                                       ; preds = %if.then.91
  %58 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2233
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !836, metadata !975), !dbg !2235
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2236, !tbaa !971
  store %struct._object* %59, %struct._object** %_py_decref_tmp93, align 8, !dbg !2235, !tbaa !971
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2237, !tbaa !971
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !2239
  %61 = load i64, i64* %ob_refcnt94, align 8, !dbg !2240, !tbaa !1049
  %dec95 = add i64 %61, -1, !dbg !2240
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !2240, !tbaa !1049
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !2241
  br i1 %cmp96, label %if.then.97, label %if.else.98, !dbg !2242

if.then.97:                                       ; preds = %do.body.92
  br label %if.end.101, !dbg !2243

if.else.98:                                       ; preds = %do.body.92
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2245, !tbaa !971
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !2247
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !2247, !tbaa !1035
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !2248
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !2248, !tbaa !1058
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2249, !tbaa !971
  call void %64(%struct._object* %65), !dbg !2250
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  %66 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2251
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2251
  br label %do.cond.102, !dbg !2253

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !2254

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.104, !dbg !2256

if.end.104:                                       ; preds = %do.end.103, %do.body.88
  %67 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !2258
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2258
  br label %do.cond.105, !dbg !2259

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !2260

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107, !dbg !2262

do.body.107:                                      ; preds = %do.end.106
  %68 = bitcast %struct._object** %_py_xdecref_tmp108 to i8*, !dbg !2263
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2263
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp108, metadata !839, metadata !975), !dbg !2265
  %69 = load %struct._object*, %struct._object** %v, align 8, !dbg !2266, !tbaa !971
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2265, !tbaa !971
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2267, !tbaa !971
  %cmp109 = icmp ne %struct._object* %70, null, !dbg !2268
  br i1 %cmp109, label %if.then.110, label %if.end.123, !dbg !2269

if.then.110:                                      ; preds = %do.body.107
  br label %do.body.111, !dbg !2270

do.body.111:                                      ; preds = %if.then.110
  %71 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !2272
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp112, metadata !841, metadata !975), !dbg !2274
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2275, !tbaa !971
  store %struct._object* %72, %struct._object** %_py_decref_tmp112, align 8, !dbg !2274, !tbaa !971
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2276, !tbaa !971
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !2278
  %74 = load i64, i64* %ob_refcnt113, align 8, !dbg !2279, !tbaa !1049
  %dec114 = add i64 %74, -1, !dbg !2279
  store i64 %dec114, i64* %ob_refcnt113, align 8, !dbg !2279, !tbaa !1049
  %cmp115 = icmp ne i64 %dec114, 0, !dbg !2280
  br i1 %cmp115, label %if.then.116, label %if.else.117, !dbg !2281

if.then.116:                                      ; preds = %do.body.111
  br label %if.end.120, !dbg !2282

if.else.117:                                      ; preds = %do.body.111
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2284, !tbaa !971
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !2286
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !2286, !tbaa !1035
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !2287
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !2287, !tbaa !1058
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2288, !tbaa !971
  call void %77(%struct._object* %78), !dbg !2289
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  %79 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2290
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !2290
  br label %do.cond.121, !dbg !2292

do.cond.121:                                      ; preds = %if.end.120
  br label %do.end.122, !dbg !2293

do.end.122:                                       ; preds = %do.cond.121
  br label %if.end.123, !dbg !2295

if.end.123:                                       ; preds = %do.end.122, %do.body.107
  %80 = bitcast %struct._object** %_py_xdecref_tmp108 to i8*, !dbg !2297
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !2297
  br label %do.cond.124, !dbg !2298

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !2299

do.end.125:                                       ; preds = %do.cond.124
  br label %do.body.126, !dbg !2301

do.body.126:                                      ; preds = %do.end.125
  %81 = bitcast %struct._object** %_py_xdecref_tmp127 to i8*, !dbg !2302
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp127, metadata !844, metadata !975), !dbg !2304
  %82 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2305, !tbaa !971
  store %struct._object* %82, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2304, !tbaa !971
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2306, !tbaa !971
  %cmp128 = icmp ne %struct._object* %83, null, !dbg !2307
  br i1 %cmp128, label %if.then.129, label %if.end.142, !dbg !2308

if.then.129:                                      ; preds = %do.body.126
  br label %do.body.130, !dbg !2309

do.body.130:                                      ; preds = %if.then.129
  %84 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !2311
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !2311
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp131, metadata !846, metadata !975), !dbg !2313
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2314, !tbaa !971
  store %struct._object* %85, %struct._object** %_py_decref_tmp131, align 8, !dbg !2313, !tbaa !971
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2315, !tbaa !971
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !2317
  %87 = load i64, i64* %ob_refcnt132, align 8, !dbg !2318, !tbaa !1049
  %dec133 = add i64 %87, -1, !dbg !2318
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !2318, !tbaa !1049
  %cmp134 = icmp ne i64 %dec133, 0, !dbg !2319
  br i1 %cmp134, label %if.then.135, label %if.else.136, !dbg !2320

if.then.135:                                      ; preds = %do.body.130
  br label %if.end.139, !dbg !2321

if.else.136:                                      ; preds = %do.body.130
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2323, !tbaa !971
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !2325
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8, !dbg !2325, !tbaa !1035
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !2326
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8, !dbg !2326, !tbaa !1058
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2327, !tbaa !971
  call void %90(%struct._object* %91), !dbg !2328
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  %92 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !2329
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !2329
  br label %do.cond.140, !dbg !2331

do.cond.140:                                      ; preds = %if.end.139
  br label %do.end.141, !dbg !2332

do.end.141:                                       ; preds = %do.cond.140
  br label %if.end.142, !dbg !2334

if.end.142:                                       ; preds = %do.end.141, %do.body.126
  %93 = bitcast %struct._object** %_py_xdecref_tmp127 to i8*, !dbg !2336
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !2336
  br label %do.cond.143, !dbg !2337

do.cond.143:                                      ; preds = %if.end.142
  br label %do.end.144, !dbg !2338

do.end.144:                                       ; preds = %do.cond.143
  call void @PyErr_Clear(), !dbg !2340
  %94 = bitcast i8** %className to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2341
  %95 = bitcast %struct._object** %moduleName to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !2341
  %96 = bitcast %struct._object** %tb to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !2341
  %97 = bitcast %struct._object** %v to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2341
  %98 = bitcast %struct._object** %t to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !2341
  %99 = bitcast %struct._object** %f to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2341
  ret void, !dbg !2341
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_ExceptionMatches(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !555, metadata !975), !dbg !2342
  %call = call %struct._object* @PyErr_Occurred(), !dbg !2343
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !2344, !tbaa !971
  %call1 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %call, %struct._object* %0), !dbg !2345
  ret i32 %call1, !dbg !2346
}

; Function Attrs: nounwind uwtable
define void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val, %struct._object** %tb) #0 {
entry:
  %exc.addr = alloca %struct._object**, align 8
  %val.addr = alloca %struct._object**, align 8
  %tb.addr = alloca %struct._object**, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %inclass = alloca %struct._object*, align 8
  %initial_tb = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  %is_subclass = alloca i32, align 4
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp142 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  store %struct._object** %exc, %struct._object*** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %exc.addr, metadata !561, metadata !975), !dbg !2347
  store %struct._object** %val, %struct._object*** %val.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %val.addr, metadata !562, metadata !975), !dbg !2348
  store %struct._object** %tb, %struct._object*** %tb.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %tb.addr, metadata !563, metadata !975), !dbg !2349
  %0 = bitcast %struct._object** %type to i8*, !dbg !2350
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2350
  call void @llvm.dbg.declare(metadata %struct._object** %type, metadata !564, metadata !975), !dbg !2351
  %1 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2352, !tbaa !971
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !2353, !tbaa !971
  store %struct._object* %2, %struct._object** %type, align 8, !dbg !2351, !tbaa !971
  %3 = bitcast %struct._object** %value to i8*, !dbg !2354
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !565, metadata !975), !dbg !2355
  %4 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2356, !tbaa !971
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2357, !tbaa !971
  store %struct._object* %5, %struct._object** %value, align 8, !dbg !2355, !tbaa !971
  %6 = bitcast %struct._object** %inclass to i8*, !dbg !2358
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct._object** %inclass, metadata !566, metadata !975), !dbg !2359
  store %struct._object* null, %struct._object** %inclass, align 8, !dbg !2359, !tbaa !971
  %7 = bitcast %struct._object** %initial_tb to i8*, !dbg !2360
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2360
  call void @llvm.dbg.declare(metadata %struct._object** %initial_tb, metadata !567, metadata !975), !dbg !2361
  store %struct._object* null, %struct._object** %initial_tb, align 8, !dbg !2361, !tbaa !971
  %8 = bitcast %struct._ts** %tstate to i8*, !dbg !2362
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !568, metadata !975), !dbg !2363
  store %struct._ts* null, %struct._ts** %tstate, align 8, !dbg !2363, !tbaa !971
  %9 = load %struct._object*, %struct._object** %type, align 8, !dbg !2364, !tbaa !971
  %cmp = icmp eq %struct._object* %9, null, !dbg !2366
  br i1 %cmp, label %if.then, label %if.end, !dbg !2367

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2368

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %value, align 8, !dbg !2370, !tbaa !971
  %tobool = icmp ne %struct._object* %10, null, !dbg !2370
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2372

if.then.1:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8, !dbg !2373, !tbaa !971
  %11 = load %struct._object*, %struct._object** %value, align 8, !dbg !2375, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2376
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2377, !tbaa !1049
  %inc = add i64 %12, 1, !dbg !2377
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2377, !tbaa !1049
  br label %if.end.2, !dbg !2378

if.end.2:                                         ; preds = %if.then.1, %if.end
  %13 = load %struct._object*, %struct._object** %value, align 8, !dbg !2379, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2381
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2381, !tbaa !1035
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19, !dbg !2382
  %15 = load i64, i64* %tp_flags, align 8, !dbg !2382, !tbaa !1302
  %and = and i64 %15, 1073741824, !dbg !2383
  %cmp3 = icmp ne i64 %and, 0, !dbg !2384
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2385

if.then.4:                                        ; preds = %if.end.2
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !2386, !tbaa !971
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2387
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2387, !tbaa !1035
  %18 = bitcast %struct._typeobject* %17 to %struct._object*, !dbg !2388
  store %struct._object* %18, %struct._object** %inclass, align 8, !dbg !2389, !tbaa !971
  br label %if.end.6, !dbg !2390

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %19 = load %struct._object*, %struct._object** %type, align 8, !dbg !2391, !tbaa !971
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2392
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2392, !tbaa !1035
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !2393
  %21 = load i64, i64* %tp_flags8, align 8, !dbg !2393, !tbaa !1302
  %and9 = and i64 %21, 2147483648, !dbg !2394
  %cmp10 = icmp ne i64 %and9, 0, !dbg !2395
  br i1 %cmp10, label %land.lhs.true, label %if.end.87, !dbg !2396

land.lhs.true:                                    ; preds = %if.end.6
  %22 = load %struct._object*, %struct._object** %type, align 8, !dbg !2397, !tbaa !971
  %23 = bitcast %struct._object* %22 to %struct._typeobject*, !dbg !2399
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19, !dbg !2400
  %24 = load i64, i64* %tp_flags11, align 8, !dbg !2400, !tbaa !1302
  %and12 = and i64 %24, 1073741824, !dbg !2401
  %cmp13 = icmp ne i64 %and12, 0, !dbg !2402
  br i1 %cmp13, label %if.then.14, label %if.end.87, !dbg !2403

if.then.14:                                       ; preds = %land.lhs.true
  %25 = bitcast i32* %is_subclass to i8*, !dbg !2404
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !2404
  call void @llvm.dbg.declare(metadata i32* %is_subclass, metadata !569, metadata !975), !dbg !2405
  %26 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2406, !tbaa !971
  %tobool15 = icmp ne %struct._object* %26, null, !dbg !2406
  br i1 %tobool15, label %if.then.16, label %if.else, !dbg !2408

if.then.16:                                       ; preds = %if.then.14
  %27 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2409, !tbaa !971
  %28 = load %struct._object*, %struct._object** %type, align 8, !dbg !2411, !tbaa !971
  %call = call i32 @PyObject_IsSubclass(%struct._object* %27, %struct._object* %28), !dbg !2412
  store i32 %call, i32* %is_subclass, align 4, !dbg !2413, !tbaa !1913
  %29 = load i32, i32* %is_subclass, align 4, !dbg !2414, !tbaa !1913
  %cmp17 = icmp slt i32 %29, 0, !dbg !2416
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2417

if.then.18:                                       ; preds = %if.then.16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !2418

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20, !dbg !2419

if.else:                                          ; preds = %if.then.14
  store i32 0, i32* %is_subclass, align 4, !dbg !2420, !tbaa !1913
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %30 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2421, !tbaa !971
  %tobool21 = icmp ne %struct._object* %30, null, !dbg !2421
  br i1 %tobool21, label %lor.lhs.false, label %if.then.23, !dbg !2422

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %is_subclass, align 4, !dbg !2423, !tbaa !1913
  %tobool22 = icmp ne i32 %31, 0, !dbg !2423
  br i1 %tobool22, label %if.else.65, label %if.then.23, !dbg !2425

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  %32 = bitcast %struct._object** %args to i8*, !dbg !2426
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !2426
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !572, metadata !975), !dbg !2427
  %33 = bitcast %struct._object** %res to i8*, !dbg !2426
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !2426
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !575, metadata !975), !dbg !2428
  %34 = load %struct._object*, %struct._object** %value, align 8, !dbg !2429, !tbaa !971
  %cmp24 = icmp eq %struct._object* %34, @_Py_NoneStruct, !dbg !2431
  br i1 %cmp24, label %if.then.25, label %if.else.27, !dbg !2432

if.then.25:                                       ; preds = %if.then.23
  %call26 = call %struct._object* @PyTuple_New(i64 0), !dbg !2433
  store %struct._object* %call26, %struct._object** %args, align 8, !dbg !2434, !tbaa !971
  br label %if.end.38, !dbg !2435

if.else.27:                                       ; preds = %if.then.23
  %35 = load %struct._object*, %struct._object** %value, align 8, !dbg !2436, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2438
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !2438, !tbaa !1035
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19, !dbg !2439
  %37 = load i64, i64* %tp_flags29, align 8, !dbg !2439, !tbaa !1302
  %and30 = and i64 %37, 67108864, !dbg !2440
  %cmp31 = icmp ne i64 %and30, 0, !dbg !2441
  br i1 %cmp31, label %if.then.32, label %if.else.35, !dbg !2442

if.then.32:                                       ; preds = %if.else.27
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !2443, !tbaa !971
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !2445
  %39 = load i64, i64* %ob_refcnt33, align 8, !dbg !2446, !tbaa !1049
  %inc34 = add i64 %39, 1, !dbg !2446
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !2446, !tbaa !1049
  %40 = load %struct._object*, %struct._object** %value, align 8, !dbg !2447, !tbaa !971
  store %struct._object* %40, %struct._object** %args, align 8, !dbg !2448, !tbaa !971
  br label %if.end.37, !dbg !2449

if.else.35:                                       ; preds = %if.else.27
  %41 = load %struct._object*, %struct._object** %value, align 8, !dbg !2450, !tbaa !971
  %call36 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %41), !dbg !2451
  store %struct._object* %call36, %struct._object** %args, align 8, !dbg !2452, !tbaa !971
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.25
  %42 = load %struct._object*, %struct._object** %args, align 8, !dbg !2453, !tbaa !971
  %cmp39 = icmp eq %struct._object* %42, null, !dbg !2455
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !2456

if.then.40:                                       ; preds = %if.end.38
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2457

if.end.41:                                        ; preds = %if.end.38
  %43 = load %struct._object*, %struct._object** %type, align 8, !dbg !2458, !tbaa !971
  %44 = load %struct._object*, %struct._object** %args, align 8, !dbg !2459, !tbaa !971
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %43, %struct._object* %44, %struct._object* null), !dbg !2460
  store %struct._object* %call42, %struct._object** %res, align 8, !dbg !2461, !tbaa !971
  br label %do.body, !dbg !2462

do.body:                                          ; preds = %if.end.41
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !576, metadata !975), !dbg !2465
  %46 = load %struct._object*, %struct._object** %args, align 8, !dbg !2466, !tbaa !971
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !2465, !tbaa !971
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2467, !tbaa !971
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2469
  %48 = load i64, i64* %ob_refcnt43, align 8, !dbg !2470, !tbaa !1049
  %dec = add i64 %48, -1, !dbg !2470
  store i64 %dec, i64* %ob_refcnt43, align 8, !dbg !2470, !tbaa !1049
  %cmp44 = icmp ne i64 %dec, 0, !dbg !2471
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !2472

if.then.45:                                       ; preds = %do.body
  br label %if.end.48, !dbg !2473

if.else.46:                                       ; preds = %do.body
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2475, !tbaa !971
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2477
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2477, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2478
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2478, !tbaa !1058
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2479, !tbaa !971
  call void %51(%struct._object* %52), !dbg !2480
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2481
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2481
  br label %do.cond, !dbg !2483

do.cond:                                          ; preds = %if.end.48
  br label %do.end, !dbg !2484

do.end:                                           ; preds = %do.cond
  %54 = load %struct._object*, %struct._object** %res, align 8, !dbg !2486, !tbaa !971
  %cmp49 = icmp eq %struct._object* %54, null, !dbg !2488
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !2489

if.then.50:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2490

if.end.51:                                        ; preds = %do.end
  br label %do.body.52, !dbg !2491

do.body.52:                                       ; preds = %if.end.51
  %55 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !2492
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !2492
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp53, metadata !578, metadata !975), !dbg !2494
  %56 = load %struct._object*, %struct._object** %value, align 8, !dbg !2495, !tbaa !971
  store %struct._object* %56, %struct._object** %_py_decref_tmp53, align 8, !dbg !2494, !tbaa !971
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2496, !tbaa !971
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !2498
  %58 = load i64, i64* %ob_refcnt54, align 8, !dbg !2499, !tbaa !1049
  %dec55 = add i64 %58, -1, !dbg !2499
  store i64 %dec55, i64* %ob_refcnt54, align 8, !dbg !2499, !tbaa !1049
  %cmp56 = icmp ne i64 %dec55, 0, !dbg !2500
  br i1 %cmp56, label %if.then.57, label %if.else.58, !dbg !2501

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61, !dbg !2502

if.else.58:                                       ; preds = %do.body.52
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2504, !tbaa !971
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !2506
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !2506, !tbaa !1035
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !2507
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !2507, !tbaa !1058
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2508, !tbaa !971
  call void %61(%struct._object* %62), !dbg !2509
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  %63 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !2510
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !2510
  br label %do.cond.62, !dbg !2511

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !2512

do.end.63:                                        ; preds = %do.cond.62
  %64 = load %struct._object*, %struct._object** %res, align 8, !dbg !2514, !tbaa !971
  store %struct._object* %64, %struct._object** %value, align 8, !dbg !2515, !tbaa !971
  store i32 0, i32* %cleanup.dest.slot, !dbg !2516
  br label %cleanup, !dbg !2516

cleanup:                                          ; preds = %do.end.63, %if.then.50, %if.then.40
  %65 = bitcast %struct._object** %res to i8*, !dbg !2517
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !2517
  %66 = bitcast %struct._object** %args to i8*, !dbg !2517
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2517
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.83, !dbg !2518

if.else.65:                                       ; preds = %lor.lhs.false
  %67 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2519, !tbaa !971
  %68 = load %struct._object*, %struct._object** %type, align 8, !dbg !2520, !tbaa !971
  %cmp66 = icmp ne %struct._object* %67, %68, !dbg !2521
  br i1 %cmp66, label %if.then.67, label %if.end.82, !dbg !2522

if.then.67:                                       ; preds = %if.else.65
  br label %do.body.68, !dbg !2523

do.body.68:                                       ; preds = %if.then.67
  %69 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2524
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !2524
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !580, metadata !975), !dbg !2526
  %70 = load %struct._object*, %struct._object** %type, align 8, !dbg !2527, !tbaa !971
  store %struct._object* %70, %struct._object** %_py_decref_tmp69, align 8, !dbg !2526, !tbaa !971
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2528, !tbaa !971
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !2530
  %72 = load i64, i64* %ob_refcnt70, align 8, !dbg !2531, !tbaa !1049
  %dec71 = add i64 %72, -1, !dbg !2531
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !2531, !tbaa !1049
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !2532
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !2533

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77, !dbg !2534

if.else.74:                                       ; preds = %do.body.68
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2536, !tbaa !971
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !2538
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !2538, !tbaa !1035
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !2539
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !2539, !tbaa !1058
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2540, !tbaa !971
  call void %75(%struct._object* %76), !dbg !2541
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %77 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2542
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !2542
  br label %do.cond.78, !dbg !2544

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !2545

do.end.79:                                        ; preds = %do.cond.78
  %78 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2547, !tbaa !971
  store %struct._object* %78, %struct._object** %type, align 8, !dbg !2548, !tbaa !971
  %79 = load %struct._object*, %struct._object** %type, align 8, !dbg !2549, !tbaa !971
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !2550
  %80 = load i64, i64* %ob_refcnt80, align 8, !dbg !2551, !tbaa !1049
  %inc81 = add i64 %80, 1, !dbg !2551
  store i64 %inc81, i64* %ob_refcnt80, align 8, !dbg !2551, !tbaa !1049
  br label %if.end.82, !dbg !2552

if.end.82:                                        ; preds = %do.end.79, %if.else.65
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot, !dbg !2553
  br label %cleanup.84, !dbg !2553

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.84

cleanup.84:                                       ; preds = %NewDefault, %if.end.83, %if.then.18
  %81 = bitcast i32* %is_subclass to i8*, !dbg !2554
  call void @llvm.lifetime.end(i64 4, i8* %81) #2, !dbg !2554
  %cleanup.dest.85 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.84
  %Pivot = icmp slt i32 %cleanup.dest.85, 2
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %SwitchLeaf5 = icmp eq i32 %cleanup.dest.85, 2
  br i1 %SwitchLeaf5, label %finally, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.85, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.86, label %NewDefault.1

cleanup.cont.86:                                  ; preds = %LeafBlock.2
  br label %if.end.87, !dbg !2555

if.end.87:                                        ; preds = %cleanup.cont.86, %land.lhs.true, %if.end.6
  %82 = load %struct._object*, %struct._object** %type, align 8, !dbg !2556, !tbaa !971
  %83 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2557, !tbaa !971
  store %struct._object* %82, %struct._object** %83, align 8, !dbg !2558, !tbaa !971
  %84 = load %struct._object*, %struct._object** %value, align 8, !dbg !2559, !tbaa !971
  %85 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2560, !tbaa !971
  store %struct._object* %84, %struct._object** %85, align 8, !dbg !2561, !tbaa !971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2562

finally:                                          ; preds = %LeafBlock.4
  br label %do.body.88, !dbg !2563

do.body.88:                                       ; preds = %finally
  %86 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2564
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !2564
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !584, metadata !975), !dbg !2566
  %87 = load %struct._object*, %struct._object** %type, align 8, !dbg !2567, !tbaa !971
  store %struct._object* %87, %struct._object** %_py_decref_tmp89, align 8, !dbg !2566, !tbaa !971
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2568, !tbaa !971
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !2570
  %89 = load i64, i64* %ob_refcnt90, align 8, !dbg !2571, !tbaa !1049
  %dec91 = add i64 %89, -1, !dbg !2571
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !2571, !tbaa !1049
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !2572
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !2573

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !2574

if.else.94:                                       ; preds = %do.body.88
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2576, !tbaa !971
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !2578
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !2578, !tbaa !1035
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !2579
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !2579, !tbaa !1058
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2580, !tbaa !971
  call void %92(%struct._object* %93), !dbg !2581
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %94 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2582
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2582
  br label %do.cond.98, !dbg !2584

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !2585

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100, !dbg !2587

do.body.100:                                      ; preds = %do.end.99
  %95 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !2588
  call void @llvm.lifetime.start(i64 8, i8* %95) #2, !dbg !2588
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !586, metadata !975), !dbg !2590
  %96 = load %struct._object*, %struct._object** %value, align 8, !dbg !2591, !tbaa !971
  store %struct._object* %96, %struct._object** %_py_decref_tmp101, align 8, !dbg !2590, !tbaa !971
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2592, !tbaa !971
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !2594
  %98 = load i64, i64* %ob_refcnt102, align 8, !dbg !2595, !tbaa !1049
  %dec103 = add i64 %98, -1, !dbg !2595
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !2595, !tbaa !1049
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !2596
  br i1 %cmp104, label %if.then.105, label %if.else.106, !dbg !2597

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109, !dbg !2598

if.else.106:                                      ; preds = %do.body.100
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2600, !tbaa !971
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !2602
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !2602, !tbaa !1035
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !2603
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !2603, !tbaa !1058
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2604, !tbaa !971
  call void %101(%struct._object* %102), !dbg !2605
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  %103 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !2606
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !2606
  br label %do.cond.110, !dbg !2607

do.cond.110:                                      ; preds = %if.end.109
  br label %do.end.111, !dbg !2608

do.end.111:                                       ; preds = %do.cond.110
  %104 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2610, !tbaa !971
  %105 = load %struct._object*, %struct._object** %104, align 8, !dbg !2611, !tbaa !971
  store %struct._object* %105, %struct._object** %initial_tb, align 8, !dbg !2612, !tbaa !971
  %106 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2613, !tbaa !971
  %107 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2614, !tbaa !971
  %108 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2615, !tbaa !971
  call void @PyErr_Fetch(%struct._object** %106, %struct._object** %107, %struct._object** %108), !dbg !2616
  %109 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2617, !tbaa !971
  %cmp112 = icmp ne %struct._object* %109, null, !dbg !2618
  br i1 %cmp112, label %if.then.113, label %if.end.130, !dbg !2619

if.then.113:                                      ; preds = %do.end.111
  %110 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2620, !tbaa !971
  %111 = load %struct._object*, %struct._object** %110, align 8, !dbg !2621, !tbaa !971
  %cmp114 = icmp eq %struct._object* %111, null, !dbg !2622
  br i1 %cmp114, label %if.then.115, label %if.else.116, !dbg !2623

if.then.115:                                      ; preds = %if.then.113
  %112 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2624, !tbaa !971
  %113 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2625, !tbaa !971
  store %struct._object* %112, %struct._object** %113, align 8, !dbg !2626, !tbaa !971
  br label %if.end.129, !dbg !2627

if.else.116:                                      ; preds = %if.then.113
  br label %do.body.117, !dbg !2628

do.body.117:                                      ; preds = %if.else.116
  %114 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !2629
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !2629
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp118, metadata !588, metadata !975), !dbg !2631
  %115 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2632, !tbaa !971
  store %struct._object* %115, %struct._object** %_py_decref_tmp118, align 8, !dbg !2631, !tbaa !971
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2633, !tbaa !971
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !2635
  %117 = load i64, i64* %ob_refcnt119, align 8, !dbg !2636, !tbaa !1049
  %dec120 = add i64 %117, -1, !dbg !2636
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !2636, !tbaa !1049
  %cmp121 = icmp ne i64 %dec120, 0, !dbg !2637
  br i1 %cmp121, label %if.then.122, label %if.else.123, !dbg !2638

if.then.122:                                      ; preds = %do.body.117
  br label %if.end.126, !dbg !2639

if.else.123:                                      ; preds = %do.body.117
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2641, !tbaa !971
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !2643
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !2643, !tbaa !1035
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !2644
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !2644, !tbaa !1058
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2645, !tbaa !971
  call void %120(%struct._object* %121), !dbg !2646
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  %122 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !2647
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !2647
  br label %do.cond.127, !dbg !2649

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !2650

do.end.128:                                       ; preds = %do.cond.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %if.then.115
  br label %if.end.130, !dbg !2652

if.end.130:                                       ; preds = %if.end.129, %do.end.111
  %123 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2653
  call void @llvm.lifetime.start(i64 8, i8* %123) #2, !dbg !2653
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !593, metadata !975), !dbg !2654
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2654, !tbaa !971
  %124 = bitcast i8** %result to i8*, !dbg !2655
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !2655
  call void @llvm.dbg.declare(metadata i8** %result, metadata !595, metadata !975), !dbg !2656
  %125 = bitcast i8*** %volatile_data to i8*, !dbg !2657
  call void @llvm.lifetime.start(i64 8, i8* %125) #2, !dbg !2657
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !596, metadata !975), !dbg !2658
  %126 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2659, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %126, i32 0, i32 0, !dbg !2660
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2658, !tbaa !971
  %127 = bitcast i32* %order to i8*, !dbg !2661
  call void @llvm.lifetime.start(i64 4, i8* %127) #2, !dbg !2661
  call void @llvm.dbg.declare(metadata i32* %order, metadata !597, metadata !975), !dbg !2662
  store i32 0, i32* %order, align 4, !dbg !2662, !tbaa !991
  %128 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2663, !tbaa !971
  %129 = bitcast %struct._Py_atomic_address* %128 to i8*, !dbg !2663
  %130 = load i32, i32* %order, align 4, !dbg !2664, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %129, i32 %130), !dbg !2665
  %131 = load i32, i32* %order, align 4, !dbg !2666, !tbaa !991
  br label %LeafBlock.7

LeafBlock.7:                                      ; preds = %if.end.130
  %.off = add i32 %131, -2
  %SwitchLeaf8 = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf8, label %sw.bb, label %NewDefault.6

sw.bb:                                            ; preds = %LeafBlock.7
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2667
  br label %sw.epilog, !dbg !2672

NewDefault.6:                                     ; preds = %LeafBlock.7
  br label %sw.default

sw.default:                                       ; preds = %NewDefault.6
  br label %sw.epilog, !dbg !2673

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %132 = load i8**, i8*** %volatile_data, align 8, !dbg !2675, !tbaa !971
  %133 = load volatile i8*, i8** %132, align 8, !dbg !2678, !tbaa !971
  store i8* %133, i8** %result, align 8, !dbg !2679, !tbaa !971
  %134 = load i32, i32* %order, align 4, !dbg !2680, !tbaa !991
  br label %NodeBlock.15

NodeBlock.15:                                     ; preds = %sw.epilog
  %Pivot.16 = icmp slt i32 %134, 3
  br i1 %Pivot.16, label %LeafBlock.10, label %LeafBlock.12

LeafBlock.12:                                     ; preds = %NodeBlock.15
  %.off.13 = add i32 %134, -3
  %SwitchLeaf14 = icmp ule i32 %.off.13, 1
  br i1 %SwitchLeaf14, label %sw.bb.131, label %NewDefault.9

LeafBlock.10:                                     ; preds = %NodeBlock.15
  %SwitchLeaf11 = icmp eq i32 %134, 1
  br i1 %SwitchLeaf11, label %sw.bb.131, label %NewDefault.9

sw.bb.131:                                        ; preds = %LeafBlock.12, %LeafBlock.10
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2681
  br label %sw.epilog.133, !dbg !2686

NewDefault.9:                                     ; preds = %LeafBlock.12, %LeafBlock.10
  br label %sw.default.132

sw.default.132:                                   ; preds = %NewDefault.9
  br label %sw.epilog.133, !dbg !2687

sw.epilog.133:                                    ; preds = %sw.default.132, %sw.bb.131
  %135 = load i8*, i8** %result, align 8, !dbg !2689, !tbaa !971
  store i8* %135, i8** %tmp, !dbg !2692, !tbaa !971
  %136 = bitcast i32* %order to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !2693
  %137 = bitcast i8*** %volatile_data to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !2693
  %138 = bitcast i8** %result to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !2693
  %139 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !2693
  %140 = load i8*, i8** %tmp, !dbg !2694, !tbaa !971
  %141 = bitcast i8* %140 to %struct._ts*, !dbg !2695
  store %struct._ts* %141, %struct._ts** %tstate, align 8, !dbg !2696, !tbaa !971
  %142 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2697, !tbaa !971
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %142, i32 0, i32 4, !dbg !2698
  %143 = load i32, i32* %recursion_depth, align 4, !dbg !2699, !tbaa !2700
  %inc134 = add i32 %143, 1, !dbg !2699
  store i32 %inc134, i32* %recursion_depth, align 4, !dbg !2699, !tbaa !2700
  %call135 = call i32 @Py_GetRecursionLimit(), !dbg !2701
  %cmp136 = icmp sgt i32 %inc134, %call135, !dbg !2702
  br i1 %cmp136, label %if.then.137, label %if.end.170, !dbg !2703

if.then.137:                                      ; preds = %sw.epilog.133
  %144 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2704, !tbaa !971
  %recursion_depth138 = getelementptr inbounds %struct._ts, %struct._ts* %144, i32 0, i32 4, !dbg !2705
  %145 = load i32, i32* %recursion_depth138, align 4, !dbg !2706, !tbaa !2700
  %dec139 = add i32 %145, -1, !dbg !2706
  store i32 %dec139, i32* %recursion_depth138, align 4, !dbg !2706, !tbaa !2700
  br label %do.body.140, !dbg !2707

do.body.140:                                      ; preds = %if.then.137
  %146 = bitcast %struct._object** %_py_decref_tmp142 to i8*, !dbg !2708
  call void @llvm.lifetime.start(i64 8, i8* %146) #2, !dbg !2708
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp142, metadata !598, metadata !975), !dbg !2710
  %147 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2711, !tbaa !971
  %148 = load %struct._object*, %struct._object** %147, align 8, !dbg !2712, !tbaa !971
  store %struct._object* %148, %struct._object** %_py_decref_tmp142, align 8, !dbg !2710, !tbaa !971
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2713, !tbaa !971
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0, !dbg !2715
  %150 = load i64, i64* %ob_refcnt143, align 8, !dbg !2716, !tbaa !1049
  %dec144 = add i64 %150, -1, !dbg !2716
  store i64 %dec144, i64* %ob_refcnt143, align 8, !dbg !2716, !tbaa !1049
  %cmp145 = icmp ne i64 %dec144, 0, !dbg !2717
  br i1 %cmp145, label %if.then.146, label %if.else.147, !dbg !2718

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150, !dbg !2719

if.else.147:                                      ; preds = %do.body.140
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2721, !tbaa !971
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1, !dbg !2723
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !2723, !tbaa !1035
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4, !dbg !2724
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8, !dbg !2724, !tbaa !1058
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2725, !tbaa !971
  call void %153(%struct._object* %154), !dbg !2726
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  %155 = bitcast %struct._object** %_py_decref_tmp142 to i8*, !dbg !2727
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !2727
  br label %do.cond.151, !dbg !2729

do.cond.151:                                      ; preds = %if.end.150
  br label %do.end.152, !dbg !2730

do.end.152:                                       ; preds = %do.cond.151
  br label %do.body.153, !dbg !2732

do.body.153:                                      ; preds = %do.end.152
  %156 = bitcast %struct._object** %_py_decref_tmp155 to i8*, !dbg !2733
  call void @llvm.lifetime.start(i64 8, i8* %156) #2, !dbg !2733
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp155, metadata !602, metadata !975), !dbg !2735
  %157 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2736, !tbaa !971
  %158 = load %struct._object*, %struct._object** %157, align 8, !dbg !2737, !tbaa !971
  store %struct._object* %158, %struct._object** %_py_decref_tmp155, align 8, !dbg !2735, !tbaa !971
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2738, !tbaa !971
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0, !dbg !2740
  %160 = load i64, i64* %ob_refcnt156, align 8, !dbg !2741, !tbaa !1049
  %dec157 = add i64 %160, -1, !dbg !2741
  store i64 %dec157, i64* %ob_refcnt156, align 8, !dbg !2741, !tbaa !1049
  %cmp158 = icmp ne i64 %dec157, 0, !dbg !2742
  br i1 %cmp158, label %if.then.159, label %if.else.160, !dbg !2743

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163, !dbg !2744

if.else.160:                                      ; preds = %do.body.153
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2746, !tbaa !971
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1, !dbg !2748
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !2748, !tbaa !1035
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4, !dbg !2749
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !2749, !tbaa !1058
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2750, !tbaa !971
  call void %163(%struct._object* %164), !dbg !2751
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  %165 = bitcast %struct._object** %_py_decref_tmp155 to i8*, !dbg !2752
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !2752
  br label %do.cond.164, !dbg !2753

do.cond.164:                                      ; preds = %if.end.163
  br label %do.end.165, !dbg !2754

do.end.165:                                       ; preds = %do.cond.164
  %166 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2756, !tbaa !971
  %167 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2757, !tbaa !971
  store %struct._object* %166, %struct._object** %167, align 8, !dbg !2758, !tbaa !971
  %168 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8, !dbg !2759, !tbaa !971
  %169 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2760, !tbaa !971
  store %struct._object* %168, %struct._object** %169, align 8, !dbg !2761, !tbaa !971
  %170 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2762, !tbaa !971
  %171 = load %struct._object*, %struct._object** %170, align 8, !dbg !2763, !tbaa !971
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 0, !dbg !2764
  %172 = load i64, i64* %ob_refcnt166, align 8, !dbg !2765, !tbaa !1049
  %inc167 = add i64 %172, 1, !dbg !2765
  store i64 %inc167, i64* %ob_refcnt166, align 8, !dbg !2765, !tbaa !1049
  %173 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2766, !tbaa !971
  %174 = load %struct._object*, %struct._object** %173, align 8, !dbg !2767, !tbaa !971
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 0, !dbg !2768
  %175 = load i64, i64* %ob_refcnt168, align 8, !dbg !2769, !tbaa !1049
  %inc169 = add i64 %175, 1, !dbg !2769
  store i64 %inc169, i64* %ob_refcnt168, align 8, !dbg !2769, !tbaa !1049
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2770

if.end.170:                                       ; preds = %sw.epilog.133
  %176 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2771, !tbaa !971
  %177 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2772, !tbaa !971
  %178 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2773, !tbaa !971
  call void @PyErr_NormalizeException(%struct._object** %176, %struct._object** %177, %struct._object** %178), !dbg !2774
  %179 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2775, !tbaa !971
  %recursion_depth171 = getelementptr inbounds %struct._ts, %struct._ts* %179, i32 0, i32 4, !dbg !2776
  %180 = load i32, i32* %recursion_depth171, align 4, !dbg !2777, !tbaa !2700
  %dec172 = add i32 %180, -1, !dbg !2777
  store i32 %dec172, i32* %recursion_depth171, align 4, !dbg !2777, !tbaa !2700
  store i32 0, i32* %cleanup.dest.slot, !dbg !2778
  br label %cleanup.173, !dbg !2778

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %cleanup.173

cleanup.173:                                      ; preds = %NewDefault.1, %if.end.170, %do.end.165, %if.end.87, %if.then
  %181 = bitcast %struct._ts** %tstate to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !2779
  %182 = bitcast %struct._object** %initial_tb to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %182) #2, !dbg !2779
  %183 = bitcast %struct._object** %inclass to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %183) #2, !dbg !2779
  %184 = bitcast %struct._object** %value to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %184) #2, !dbg !2779
  %185 = bitcast %struct._object** %type to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %185) #2, !dbg !2779
  %cleanup.dest.178 = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont.179

cleanup.cont.179:                                 ; preds = %cleanup.173
  ret void, !dbg !2778

unreachable:                                      ; No predecessors!
  unreachable
}

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #4

declare i32 @Py_GetRecursionLimit() #4

; Function Attrs: nounwind uwtable
define void @PyErr_Clear() #0 {
entry:
  call void @PyErr_Restore(%struct._object* null, %struct._object* null, %struct._object* null), !dbg !2781
  ret void, !dbg !2782
}

; Function Attrs: nounwind uwtable
define void @PyErr_GetExcInfo(%struct._object** %p_type, %struct._object** %p_value, %struct._object** %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object**, align 8
  %p_value.addr = alloca %struct._object**, align 8
  %p_traceback.addr = alloca %struct._object**, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp7 = alloca %struct._object*, align 8
  %_py_xincref_tmp17 = alloca %struct._object*, align 8
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_type.addr, metadata !621, metadata !975), !dbg !2783
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_value.addr, metadata !622, metadata !975), !dbg !2784
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_traceback.addr, metadata !623, metadata !975), !dbg !2785
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !2786
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !624, metadata !975), !dbg !2787
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2788
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2788
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !625, metadata !975), !dbg !2789
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2789, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !2790
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2790
  call void @llvm.dbg.declare(metadata i8** %result, metadata !627, metadata !975), !dbg !2791
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !2792
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2792
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !628, metadata !975), !dbg !2793
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2794, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !2795
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2793, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !2796
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2796
  call void @llvm.dbg.declare(metadata i32* %order, metadata !629, metadata !975), !dbg !2797
  store i32 0, i32* %order, align 4, !dbg !2797, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2798, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !2798
  %8 = load i32, i32* %order, align 4, !dbg !2799, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !2800
  %9 = load i32, i32* %order, align 4, !dbg !2801, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %9, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2802
  br label %sw.epilog, !dbg !2807

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !2808

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !2810, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !2813, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !2814, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !2815, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %12, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %12, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %12, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2816
  br label %sw.epilog.3, !dbg !2821

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !2822

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !2824, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !2827, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2828
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2828
  %16 = bitcast i8** %result to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2828
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2828
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2828
  %18 = load i8*, i8** %tmp, !dbg !2829, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !2830
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !2787, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2831, !tbaa !971
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 16, !dbg !2832
  %21 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !2832, !tbaa !2833
  %22 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !2834, !tbaa !971
  store %struct._object* %21, %struct._object** %22, align 8, !dbg !2835, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2836, !tbaa !971
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 17, !dbg !2837
  %24 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !2837, !tbaa !1340
  %25 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2838, !tbaa !971
  store %struct._object* %24, %struct._object** %25, align 8, !dbg !2839, !tbaa !971
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2840, !tbaa !971
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 18, !dbg !2841
  %27 = load %struct._object*, %struct._object** %exc_traceback, align 8, !dbg !2841, !tbaa !2842
  %28 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2843, !tbaa !971
  store %struct._object* %27, %struct._object** %28, align 8, !dbg !2844, !tbaa !971
  br label %do.body, !dbg !2845

do.body:                                          ; preds = %sw.epilog.3
  %29 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2846
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !630, metadata !975), !dbg !2848
  %30 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !2849, !tbaa !971
  %31 = load %struct._object*, %struct._object** %30, align 8, !dbg !2850, !tbaa !971
  store %struct._object* %31, %struct._object** %_py_xincref_tmp, align 8, !dbg !2848, !tbaa !971
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2851, !tbaa !971
  %cmp = icmp ne %struct._object* %32, null, !dbg !2853
  br i1 %cmp, label %if.then, label %if.end, !dbg !2854

if.then:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2855, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2857
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !2858, !tbaa !1049
  %inc = add i64 %34, 1, !dbg !2858
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2858, !tbaa !1049
  br label %if.end, !dbg !2859

if.end:                                           ; preds = %if.then, %do.body
  %35 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2860
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2860
  br label %do.cond, !dbg !2863

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2864

do.end:                                           ; preds = %do.cond
  br label %do.body.5, !dbg !2866

do.body.5:                                        ; preds = %do.end
  %36 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !2867
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !2867
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp7, metadata !632, metadata !975), !dbg !2869
  %37 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2870, !tbaa !971
  %38 = load %struct._object*, %struct._object** %37, align 8, !dbg !2871, !tbaa !971
  store %struct._object* %38, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2869, !tbaa !971
  %39 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2872, !tbaa !971
  %cmp8 = icmp ne %struct._object* %39, null, !dbg !2874
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !2875

if.then.9:                                        ; preds = %do.body.5
  %40 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2876, !tbaa !971
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2878
  %41 = load i64, i64* %ob_refcnt10, align 8, !dbg !2879, !tbaa !1049
  %inc11 = add i64 %41, 1, !dbg !2879
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !2879, !tbaa !1049
  br label %if.end.12, !dbg !2880

if.end.12:                                        ; preds = %if.then.9, %do.body.5
  %42 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !2881
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !2881
  br label %do.cond.13, !dbg !2882

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2883

do.end.14:                                        ; preds = %do.cond.13
  br label %do.body.15, !dbg !2885

do.body.15:                                       ; preds = %do.end.14
  %43 = bitcast %struct._object** %_py_xincref_tmp17 to i8*, !dbg !2886
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp17, metadata !634, metadata !975), !dbg !2888
  %44 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2889, !tbaa !971
  %45 = load %struct._object*, %struct._object** %44, align 8, !dbg !2890, !tbaa !971
  store %struct._object* %45, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2888, !tbaa !971
  %46 = load %struct._object*, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2891, !tbaa !971
  %cmp18 = icmp ne %struct._object* %46, null, !dbg !2893
  br i1 %cmp18, label %if.then.19, label %if.end.22, !dbg !2894

if.then.19:                                       ; preds = %do.body.15
  %47 = load %struct._object*, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2895, !tbaa !971
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2897
  %48 = load i64, i64* %ob_refcnt20, align 8, !dbg !2898, !tbaa !1049
  %inc21 = add i64 %48, 1, !dbg !2898
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !2898, !tbaa !1049
  br label %if.end.22, !dbg !2899

if.end.22:                                        ; preds = %if.then.19, %do.body.15
  %49 = bitcast %struct._object** %_py_xincref_tmp17 to i8*, !dbg !2900
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !2900
  br label %do.cond.23, !dbg !2901

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2902

do.end.24:                                        ; preds = %do.cond.23
  %50 = bitcast %struct._ts** %tstate to i8*, !dbg !2904
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !2904
  ret void, !dbg !2904
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetExcInfo(%struct._object* %p_type, %struct._object* %p_value, %struct._object* %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object*, align 8
  %p_value.addr = alloca %struct._object*, align 8
  %p_traceback.addr = alloca %struct._object*, align 8
  %oldtype = alloca %struct._object*, align 8
  %oldvalue = alloca %struct._object*, align 8
  %oldtraceback = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct._object* %p_type, %struct._object** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_type.addr, metadata !638, metadata !975), !dbg !2905
  store %struct._object* %p_value, %struct._object** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_value.addr, metadata !639, metadata !975), !dbg !2906
  store %struct._object* %p_traceback, %struct._object** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_traceback.addr, metadata !640, metadata !975), !dbg !2907
  %0 = bitcast %struct._object** %oldtype to i8*, !dbg !2908
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2908
  call void @llvm.dbg.declare(metadata %struct._object** %oldtype, metadata !641, metadata !975), !dbg !2909
  %1 = bitcast %struct._object** %oldvalue to i8*, !dbg !2908
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2908
  call void @llvm.dbg.declare(metadata %struct._object** %oldvalue, metadata !642, metadata !975), !dbg !2910
  %2 = bitcast %struct._object** %oldtraceback to i8*, !dbg !2908
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2908
  call void @llvm.dbg.declare(metadata %struct._object** %oldtraceback, metadata !643, metadata !975), !dbg !2911
  %3 = bitcast %struct._ts** %tstate to i8*, !dbg !2912
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2912
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !644, metadata !975), !dbg !2913
  %4 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2914
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2914
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !645, metadata !975), !dbg !2915
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2915, !tbaa !971
  %5 = bitcast i8** %result to i8*, !dbg !2916
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2916
  call void @llvm.dbg.declare(metadata i8** %result, metadata !647, metadata !975), !dbg !2917
  %6 = bitcast i8*** %volatile_data to i8*, !dbg !2918
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2918
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !648, metadata !975), !dbg !2919
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2920, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %7, i32 0, i32 0, !dbg !2921
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2919, !tbaa !971
  %8 = bitcast i32* %order to i8*, !dbg !2922
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !2922
  call void @llvm.dbg.declare(metadata i32* %order, metadata !649, metadata !975), !dbg !2923
  store i32 0, i32* %order, align 4, !dbg !2923, !tbaa !991
  %9 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2924, !tbaa !971
  %10 = bitcast %struct._Py_atomic_address* %9 to i8*, !dbg !2924
  %11 = load i32, i32* %order, align 4, !dbg !2925, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %10, i32 %11), !dbg !2926
  %12 = load i32, i32* %order, align 4, !dbg !2927, !tbaa !991
  br label %LeafBlock

LeafBlock:                                        ; preds = %entry
  %.off = add i32 %12, -2
  %SwitchLeaf = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2928
  br label %sw.epilog, !dbg !2933

NewDefault:                                       ; preds = %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  br label %sw.epilog, !dbg !2934

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %13 = load i8**, i8*** %volatile_data, align 8, !dbg !2936, !tbaa !971
  %14 = load volatile i8*, i8** %13, align 8, !dbg !2939, !tbaa !971
  store i8* %14, i8** %result, align 8, !dbg !2940, !tbaa !971
  %15 = load i32, i32* %order, align 4, !dbg !2941, !tbaa !991
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %15, 3
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %.off.5 = add i32 %15, -3
  %SwitchLeaf6 = icmp ule i32 %.off.5, 1
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %15, 1
  br i1 %SwitchLeaf3, label %sw.bb.1, label %NewDefault.1

sw.bb.1:                                          ; preds = %LeafBlock.4, %LeafBlock.2
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2942
  br label %sw.epilog.3, !dbg !2947

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %sw.default.2

sw.default.2:                                     ; preds = %NewDefault.1
  br label %sw.epilog.3, !dbg !2948

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %16 = load i8*, i8** %result, align 8, !dbg !2950, !tbaa !971
  store i8* %16, i8** %tmp, !dbg !2953, !tbaa !971
  %17 = bitcast i32* %order to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !2954
  %18 = bitcast i8*** %volatile_data to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2954
  %19 = bitcast i8** %result to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !2954
  %20 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !2954
  %21 = load i8*, i8** %tmp, !dbg !2955, !tbaa !971
  %22 = bitcast i8* %21 to %struct._ts*, !dbg !2956
  store %struct._ts* %22, %struct._ts** %tstate, align 8, !dbg !2913, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2957, !tbaa !971
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 16, !dbg !2958
  %24 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !2958, !tbaa !2833
  store %struct._object* %24, %struct._object** %oldtype, align 8, !dbg !2959, !tbaa !971
  %25 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2960, !tbaa !971
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 17, !dbg !2961
  %26 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !2961, !tbaa !1340
  store %struct._object* %26, %struct._object** %oldvalue, align 8, !dbg !2962, !tbaa !971
  %27 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2963, !tbaa !971
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 18, !dbg !2964
  %28 = load %struct._object*, %struct._object** %exc_traceback, align 8, !dbg !2964, !tbaa !2842
  store %struct._object* %28, %struct._object** %oldtraceback, align 8, !dbg !2965, !tbaa !971
  %29 = load %struct._object*, %struct._object** %p_type.addr, align 8, !dbg !2966, !tbaa !971
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2967, !tbaa !971
  %exc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 16, !dbg !2968
  store %struct._object* %29, %struct._object** %exc_type4, align 8, !dbg !2969, !tbaa !2833
  %31 = load %struct._object*, %struct._object** %p_value.addr, align 8, !dbg !2970, !tbaa !971
  %32 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2971, !tbaa !971
  %exc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %32, i32 0, i32 17, !dbg !2972
  store %struct._object* %31, %struct._object** %exc_value5, align 8, !dbg !2973, !tbaa !1340
  %33 = load %struct._object*, %struct._object** %p_traceback.addr, align 8, !dbg !2974, !tbaa !971
  %34 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2975, !tbaa !971
  %exc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %34, i32 0, i32 18, !dbg !2976
  store %struct._object* %33, %struct._object** %exc_traceback6, align 8, !dbg !2977, !tbaa !2842
  br label %do.body, !dbg !2978

do.body:                                          ; preds = %sw.epilog.3
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2979
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2979
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !650, metadata !975), !dbg !2981
  %36 = load %struct._object*, %struct._object** %oldtype, align 8, !dbg !2982, !tbaa !971
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2981, !tbaa !971
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2983, !tbaa !971
  %cmp = icmp ne %struct._object* %37, null, !dbg !2984
  br i1 %cmp, label %if.then, label %if.end.12, !dbg !2985

if.then:                                          ; preds = %do.body
  br label %do.body.8, !dbg !2986

do.body.8:                                        ; preds = %if.then
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2988
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !652, metadata !975), !dbg !2990
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2991, !tbaa !971
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8, !dbg !2990, !tbaa !971
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2992, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2994
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !2995, !tbaa !1049
  %dec = add i64 %41, -1, !dbg !2995
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2995, !tbaa !1049
  %cmp10 = icmp ne i64 %dec, 0, !dbg !2996
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2997

if.then.11:                                       ; preds = %do.body.8
  br label %if.end, !dbg !2998

if.else:                                          ; preds = %do.body.8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3000, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !3002
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3002, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !3003
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3003, !tbaa !1058
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3004, !tbaa !971
  call void %44(%struct._object* %45), !dbg !3005
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3006
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3006
  br label %do.cond, !dbg !3008

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3009

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !3011

if.end.12:                                        ; preds = %do.end, %do.body
  %47 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3013
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3013
  br label %do.cond.13, !dbg !3016

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !3017

do.end.14:                                        ; preds = %do.cond.13
  br label %do.body.15, !dbg !3019

do.body.15:                                       ; preds = %do.end.14
  %48 = bitcast %struct._object** %_py_xdecref_tmp17 to i8*, !dbg !3020
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !3020
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp17, metadata !655, metadata !975), !dbg !3022
  %49 = load %struct._object*, %struct._object** %oldvalue, align 8, !dbg !3023, !tbaa !971
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3022, !tbaa !971
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3024, !tbaa !971
  %cmp18 = icmp ne %struct._object* %50, null, !dbg !3025
  br i1 %cmp18, label %if.then.19, label %if.end.33, !dbg !3026

if.then.19:                                       ; preds = %do.body.15
  br label %do.body.20, !dbg !3027

do.body.20:                                       ; preds = %if.then.19
  %51 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3029
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !3029
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !657, metadata !975), !dbg !3031
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3032, !tbaa !971
  store %struct._object* %52, %struct._object** %_py_decref_tmp22, align 8, !dbg !3031, !tbaa !971
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3033, !tbaa !971
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !3035
  %54 = load i64, i64* %ob_refcnt23, align 8, !dbg !3036, !tbaa !1049
  %dec24 = add i64 %54, -1, !dbg !3036
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !3036, !tbaa !1049
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !3037
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !3038

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30, !dbg !3039

if.else.27:                                       ; preds = %do.body.20
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3041, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !3043
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3043, !tbaa !1035
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !3044
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !3044, !tbaa !1058
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3045, !tbaa !971
  call void %57(%struct._object* %58), !dbg !3046
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %59 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3047
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !3047
  br label %do.cond.31, !dbg !3049

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !3050

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !3052

if.end.33:                                        ; preds = %do.end.32, %do.body.15
  %60 = bitcast %struct._object** %_py_xdecref_tmp17 to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3054
  br label %do.cond.34, !dbg !3055

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !3056

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36, !dbg !3058

do.body.36:                                       ; preds = %do.end.35
  %61 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !3059
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !3059
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp38, metadata !660, metadata !975), !dbg !3061
  %62 = load %struct._object*, %struct._object** %oldtraceback, align 8, !dbg !3062, !tbaa !971
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3061, !tbaa !971
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3063, !tbaa !971
  %cmp39 = icmp ne %struct._object* %63, null, !dbg !3064
  br i1 %cmp39, label %if.then.40, label %if.end.54, !dbg !3065

if.then.40:                                       ; preds = %do.body.36
  br label %do.body.41, !dbg !3066

do.body.41:                                       ; preds = %if.then.40
  %64 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !3068
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !3068
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp43, metadata !662, metadata !975), !dbg !3070
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3071, !tbaa !971
  store %struct._object* %65, %struct._object** %_py_decref_tmp43, align 8, !dbg !3070, !tbaa !971
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3072, !tbaa !971
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !3074
  %67 = load i64, i64* %ob_refcnt44, align 8, !dbg !3075, !tbaa !1049
  %dec45 = add i64 %67, -1, !dbg !3075
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !3075, !tbaa !1049
  %cmp46 = icmp ne i64 %dec45, 0, !dbg !3076
  br i1 %cmp46, label %if.then.47, label %if.else.48, !dbg !3077

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !3078

if.else.48:                                       ; preds = %do.body.41
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3080, !tbaa !971
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !3082
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !3082, !tbaa !1035
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !3083
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !3083, !tbaa !1058
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3084, !tbaa !971
  call void %70(%struct._object* %71), !dbg !3085
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %72 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !3086
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !3086
  br label %do.cond.52, !dbg !3088

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !3089

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54, !dbg !3091

if.end.54:                                        ; preds = %do.end.53, %do.body.36
  %73 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !3093
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !3093
  br label %do.cond.55, !dbg !3094

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !3095

do.end.56:                                        ; preds = %do.cond.55
  %74 = bitcast %struct._ts** %tstate to i8*, !dbg !3097
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3097
  %75 = bitcast %struct._object** %oldtraceback to i8*, !dbg !3097
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !3097
  %76 = bitcast %struct._object** %oldvalue to i8*, !dbg !3097
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3097
  %77 = bitcast %struct._object** %oldtype to i8*, !dbg !3097
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3097
  ret void, !dbg !3097
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_BadArgument() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3098, !tbaa !971
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !3099
  ret i32 0, !dbg !3100
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NoMemory() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !3101, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3103
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3103, !tbaa !1035
  %cmp = icmp eq %struct._typeobject* %1, null, !dbg !3104
  br i1 %cmp, label %if.then, label %if.end, !dbg !3105

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !3106
  unreachable, !dbg !3106

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !3108, !tbaa !971
  call void @PyErr_SetNone(%struct._object* %2), !dbg !3109
  ret %struct._object* null, !dbg !3110
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %exc, %struct._object* %filenameObject) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filenameObject.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !671, metadata !975), !dbg !3111
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject.addr, metadata !672, metadata !975), !dbg !3112
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3113, !tbaa !971
  %1 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3114, !tbaa !971
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* %1, %struct._object* null), !dbg !3115
  ret %struct._object* %call, !dbg !3116
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* %filenameObject, %struct._object* %filenameObject2) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %filenameObject.addr = alloca %struct._object*, align 8
  %filenameObject2.addr = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !675, metadata !975), !dbg !3117
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject.addr, metadata !676, metadata !975), !dbg !3118
  store %struct._object* %filenameObject2, %struct._object** %filenameObject2.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject2.addr, metadata !677, metadata !975), !dbg !3119
  %0 = bitcast %struct._object** %message to i8*, !dbg !3120
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3120
  call void @llvm.dbg.declare(metadata %struct._object** %message, metadata !678, metadata !975), !dbg !3121
  %1 = bitcast %struct._object** %v to i8*, !dbg !3122
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3122
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !679, metadata !975), !dbg !3123
  %2 = bitcast %struct._object** %args to i8*, !dbg !3122
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3122
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !680, metadata !975), !dbg !3124
  %3 = bitcast i32* %i to i8*, !dbg !3125
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3125
  call void @llvm.dbg.declare(metadata i32* %i, metadata !681, metadata !975), !dbg !3126
  %call = call i32* @__errno_location() #1, !dbg !3127
  %4 = load i32, i32* %call, align 4, !dbg !3128, !tbaa !1913
  store i32 %4, i32* %i, align 4, !dbg !3126, !tbaa !1913
  %5 = load i32, i32* %i, align 4, !dbg !3129, !tbaa !1913
  %cmp = icmp eq i32 %5, 4, !dbg !3131
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3132

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @PyErr_CheckSignals(), !dbg !3133
  %tobool = icmp ne i32 %call1, 0, !dbg !3133
  br i1 %tobool, label %if.then, label %if.end, !dbg !3135

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3136
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3136

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %i, align 4, !dbg !3137, !tbaa !1913
  %cmp2 = icmp ne i32 %6, 0, !dbg !3138
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3139

if.then.3:                                        ; preds = %if.end
  %7 = bitcast i8** %s to i8*, !dbg !3140
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3140
  call void @llvm.dbg.declare(metadata i8** %s, metadata !682, metadata !975), !dbg !3141
  %8 = load i32, i32* %i, align 4, !dbg !3142, !tbaa !1913
  %call4 = call i8* @strerror(i32 %8) #2, !dbg !3143
  store i8* %call4, i8** %s, align 8, !dbg !3141, !tbaa !971
  %9 = load i8*, i8** %s, align 8, !dbg !3144, !tbaa !971
  %call5 = call %struct._object* @PyUnicode_DecodeLocale(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !3145
  store %struct._object* %call5, %struct._object** %message, align 8, !dbg !3146, !tbaa !971
  %10 = bitcast i8** %s to i8*, !dbg !3147
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3147
  br label %if.end.7, !dbg !3148

if.else:                                          ; preds = %if.end
  %call6 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)), !dbg !3149
  store %struct._object* %call6, %struct._object** %message, align 8, !dbg !3151, !tbaa !971
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %11 = load %struct._object*, %struct._object** %message, align 8, !dbg !3152, !tbaa !971
  %cmp8 = icmp eq %struct._object* %11, null, !dbg !3154
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !3155

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !3156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3156

if.end.10:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3158, !tbaa !971
  %cmp11 = icmp ne %struct._object* %12, null, !dbg !3160
  br i1 %cmp11, label %if.then.12, label %if.else.19, !dbg !3161

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8, !dbg !3162, !tbaa !971
  %cmp13 = icmp ne %struct._object* %13, null, !dbg !3165
  br i1 %cmp13, label %if.then.14, label %if.else.16, !dbg !3166

if.then.14:                                       ; preds = %if.then.12
  %14 = load i32, i32* %i, align 4, !dbg !3167, !tbaa !1913
  %15 = load %struct._object*, %struct._object** %message, align 8, !dbg !3168, !tbaa !971
  %16 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3169, !tbaa !971
  %17 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8, !dbg !3170, !tbaa !971
  %call15 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %14, %struct._object* %15, %struct._object* %16, i32 0, %struct._object* %17), !dbg !3171
  store %struct._object* %call15, %struct._object** %args, align 8, !dbg !3172, !tbaa !971
  br label %if.end.18, !dbg !3173

if.else.16:                                       ; preds = %if.then.12
  %18 = load i32, i32* %i, align 4, !dbg !3174, !tbaa !1913
  %19 = load %struct._object*, %struct._object** %message, align 8, !dbg !3175, !tbaa !971
  %20 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3176, !tbaa !971
  %call17 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %18, %struct._object* %19, %struct._object* %20), !dbg !3177
  store %struct._object* %call17, %struct._object** %args, align 8, !dbg !3178, !tbaa !971
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.21, !dbg !3179

if.else.19:                                       ; preds = %if.end.10
  %21 = load i32, i32* %i, align 4, !dbg !3180, !tbaa !1913
  %22 = load %struct._object*, %struct._object** %message, align 8, !dbg !3182, !tbaa !971
  %call20 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %21, %struct._object* %22), !dbg !3183
  store %struct._object* %call20, %struct._object** %args, align 8, !dbg !3184, !tbaa !971
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.end.18
  br label %do.body, !dbg !3185

do.body:                                          ; preds = %if.end.21
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3186
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3186
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !685, metadata !975), !dbg !3188
  %24 = load %struct._object*, %struct._object** %message, align 8, !dbg !3189, !tbaa !971
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !3188, !tbaa !971
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3190, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !3192
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !3193, !tbaa !1049
  %dec = add i64 %26, -1, !dbg !3193
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3193, !tbaa !1049
  %cmp22 = icmp ne i64 %dec, 0, !dbg !3194
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3195

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !3196

if.else.24:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3198, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !3200
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3200, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !3201
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3201, !tbaa !1058
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3202, !tbaa !971
  call void %29(%struct._object* %30), !dbg !3203
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3204
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !3204
  br label %do.cond, !dbg !3206

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !3207

do.end:                                           ; preds = %do.cond
  %32 = load %struct._object*, %struct._object** %args, align 8, !dbg !3209, !tbaa !971
  %cmp26 = icmp ne %struct._object* %32, null, !dbg !3210
  br i1 %cmp26, label %if.then.27, label %if.end.57, !dbg !3211

if.then.27:                                       ; preds = %do.end
  %33 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3212, !tbaa !971
  %34 = load %struct._object*, %struct._object** %args, align 8, !dbg !3213, !tbaa !971
  %call28 = call %struct._object* @PyObject_Call(%struct._object* %33, %struct._object* %34, %struct._object* null), !dbg !3214
  store %struct._object* %call28, %struct._object** %v, align 8, !dbg !3215, !tbaa !971
  br label %do.body.29, !dbg !3216

do.body.29:                                       ; preds = %if.then.27
  %35 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !3217
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !3217
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !687, metadata !975), !dbg !3219
  %36 = load %struct._object*, %struct._object** %args, align 8, !dbg !3220, !tbaa !971
  store %struct._object* %36, %struct._object** %_py_decref_tmp30, align 8, !dbg !3219, !tbaa !971
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3221, !tbaa !971
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !3223
  %38 = load i64, i64* %ob_refcnt31, align 8, !dbg !3224, !tbaa !1049
  %dec32 = add i64 %38, -1, !dbg !3224
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !3224, !tbaa !1049
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !3225
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !3226

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !3227

if.else.35:                                       ; preds = %do.body.29
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3229, !tbaa !971
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !3231
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !3231, !tbaa !1035
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !3232
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !3232, !tbaa !1058
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3233, !tbaa !971
  call void %41(%struct._object* %42), !dbg !3234
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %43 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !3235
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3235
  br label %do.cond.39, !dbg !3237

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !3238

do.end.40:                                        ; preds = %do.cond.39
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !3240, !tbaa !971
  %cmp41 = icmp ne %struct._object* %44, null, !dbg !3241
  br i1 %cmp41, label %if.then.42, label %if.end.56, !dbg !3242

if.then.42:                                       ; preds = %do.end.40
  %45 = load %struct._object*, %struct._object** %v, align 8, !dbg !3243, !tbaa !971
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !3244
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !3244, !tbaa !1035
  %47 = bitcast %struct._typeobject* %46 to %struct._object*, !dbg !3245
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !3246, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %47, %struct._object* %48), !dbg !3247
  br label %do.body.44, !dbg !3248

do.body.44:                                       ; preds = %if.then.42
  %49 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !3249
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3249
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !691, metadata !975), !dbg !3251
  %50 = load %struct._object*, %struct._object** %v, align 8, !dbg !3252, !tbaa !971
  store %struct._object* %50, %struct._object** %_py_decref_tmp45, align 8, !dbg !3251, !tbaa !971
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3253, !tbaa !971
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !3255
  %52 = load i64, i64* %ob_refcnt46, align 8, !dbg !3256, !tbaa !1049
  %dec47 = add i64 %52, -1, !dbg !3256
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !3256, !tbaa !1049
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !3257
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !3258

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !3259

if.else.50:                                       ; preds = %do.body.44
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3261, !tbaa !971
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !3263
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !3263, !tbaa !1035
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !3264
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !3264, !tbaa !1058
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3265, !tbaa !971
  call void %55(%struct._object* %56), !dbg !3266
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %57 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !3267
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !3267
  br label %do.cond.54, !dbg !3269

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !3270

do.end.55:                                        ; preds = %do.cond.54
  br label %if.end.56, !dbg !3272

if.end.56:                                        ; preds = %do.end.55, %do.end.40
  br label %if.end.57, !dbg !3273

if.end.57:                                        ; preds = %if.end.56, %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !3274
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3274

cleanup:                                          ; preds = %if.end.57, %if.then.9, %if.then
  %58 = bitcast i32* %i to i8*, !dbg !3275
  call void @llvm.lifetime.end(i64 4, i8* %58) #2, !dbg !3275
  %59 = bitcast %struct._object** %args to i8*, !dbg !3275
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !3275
  %60 = bitcast %struct._object** %v to i8*, !dbg !3275
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3275
  %61 = bitcast %struct._object** %message to i8*, !dbg !3275
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !3275
  %62 = load %struct._object*, %struct._object** %retval, !dbg !3275
  ret %struct._object* %62, !dbg !3275
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @PyErr_CheckSignals() #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #7

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #4

declare %struct._object* @Py_BuildValue(i8*, ...) #4

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %exc, i8* %filename) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %name = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !699, metadata !975), !dbg !3276
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !700, metadata !975), !dbg !3277
  %0 = bitcast %struct._object** %name to i8*, !dbg !3278
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3278
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !701, metadata !975), !dbg !3279
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3280, !tbaa !971
  %tobool = icmp ne i8* %1, null, !dbg !3280
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3280

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !3281, !tbaa !971
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !3283
  br label %cond.end, !dbg !3280

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call, %cond.true ], [ null, %cond.false ], !dbg !3280
  store %struct._object* %cond, %struct._object** %name, align 8, !dbg !3286, !tbaa !971
  %3 = bitcast %struct._object** %result to i8*, !dbg !3289
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3289
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !702, metadata !975), !dbg !3290
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3291, !tbaa !971
  %5 = load %struct._object*, %struct._object** %name, align 8, !dbg !3292, !tbaa !971
  %call1 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %4, %struct._object* %5, %struct._object* null), !dbg !3293
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3290, !tbaa !971
  br label %do.body, !dbg !3294

do.body:                                          ; preds = %cond.end
  %6 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3295
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3295
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !703, metadata !975), !dbg !3297
  %7 = load %struct._object*, %struct._object** %name, align 8, !dbg !3298, !tbaa !971
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3297, !tbaa !971
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3299, !tbaa !971
  %cmp = icmp ne %struct._object* %8, null, !dbg !3300
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3301

if.then:                                          ; preds = %do.body
  br label %do.body.2, !dbg !3302

do.body.2:                                        ; preds = %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3304
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !705, metadata !975), !dbg !3306
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3307, !tbaa !971
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !3306, !tbaa !971
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3308, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !3310
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !3311, !tbaa !1049
  %dec = add i64 %12, -1, !dbg !3311
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3311, !tbaa !1049
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3312
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3313

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !3314

if.else:                                          ; preds = %do.body.2
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3316, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3318
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3318, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !3319
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3319, !tbaa !1058
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3320, !tbaa !971
  call void %15(%struct._object* %16), !dbg !3321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3322
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3322
  br label %do.cond, !dbg !3324

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3325

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3327

if.end.5:                                         ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3329
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3329
  br label %do.cond.6, !dbg !3331

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !3332

do.end.7:                                         ; preds = %do.cond.6
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !3334, !tbaa !971
  %20 = bitcast %struct._object** %result to i8*, !dbg !3335
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3335
  %21 = bitcast %struct._object** %name to i8*, !dbg !3335
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !3335
  ret %struct._object* %19, !dbg !3336
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrno(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !710, metadata !975), !dbg !3337
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3338, !tbaa !971
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* null, %struct._object* null), !dbg !3339
  ret %struct._object* %call, !dbg !3340
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetImportError(%struct._object* %msg, %struct._object* %name, %struct._object* %path) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %msg.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %path.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %kwargs = alloca %struct._object*, align 8
  %error = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  store %struct._object* %msg, %struct._object** %msg.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %msg.addr, metadata !713, metadata !975), !dbg !3341
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !714, metadata !975), !dbg !3342
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !715, metadata !975), !dbg !3343
  %0 = bitcast %struct._object** %args to i8*, !dbg !3344
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !716, metadata !975), !dbg !3345
  %1 = bitcast %struct._object** %kwargs to i8*, !dbg !3344
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs, metadata !717, metadata !975), !dbg !3346
  %2 = bitcast %struct._object** %error to i8*, !dbg !3344
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct._object** %error, metadata !718, metadata !975), !dbg !3347
  %3 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3348, !tbaa !971
  %cmp = icmp eq %struct._object* %3, null, !dbg !3350
  br i1 %cmp, label %if.then, label %if.end, !dbg !3351

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3352

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 1), !dbg !3353
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !3354, !tbaa !971
  %4 = load %struct._object*, %struct._object** %args, align 8, !dbg !3355, !tbaa !971
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !3357
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3358

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3359

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New(), !dbg !3360
  store %struct._object* %call4, %struct._object** %kwargs, align 8, !dbg !3361, !tbaa !971
  %5 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3362, !tbaa !971
  %cmp5 = icmp eq %struct._object* %5, null, !dbg !3363
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !3364

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !3365

do.body:                                          ; preds = %if.then.6
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3366
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3366
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !719, metadata !975), !dbg !3368
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !3369, !tbaa !971
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !3368, !tbaa !971
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3370, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3372
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3373, !tbaa !1049
  %dec = add i64 %9, -1, !dbg !3373
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3373, !tbaa !1049
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3374
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !3375

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3376

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3378, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3380
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3380, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !3381
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3381, !tbaa !1058
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3382, !tbaa !971
  call void %12(%struct._object* %13), !dbg !3383
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3384
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3384
  br label %do.cond, !dbg !3386

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3387

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3389
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3389

if.end.10:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3390, !tbaa !971
  %cmp11 = icmp eq %struct._object* %15, null, !dbg !3392
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3393

if.then.12:                                       ; preds = %if.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %name.addr, align 8, !dbg !3394, !tbaa !971
  br label %if.end.13, !dbg !3396

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %16 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3397, !tbaa !971
  %cmp14 = icmp eq %struct._object* %16, null, !dbg !3399
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3400

if.then.15:                                       ; preds = %if.end.13
  store %struct._object* @_Py_NoneStruct, %struct._object** %path.addr, align 8, !dbg !3401, !tbaa !971
  br label %if.end.16, !dbg !3403

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %17 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3404, !tbaa !971
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !3405
  %18 = load i64, i64* %ob_refcnt17, align 8, !dbg !3406, !tbaa !1049
  %inc = add i64 %18, 1, !dbg !3406
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !3406, !tbaa !1049
  %19 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3407, !tbaa !971
  %20 = load %struct._object*, %struct._object** %args, align 8, !dbg !3408, !tbaa !971
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*, !dbg !3409
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1, !dbg !3410
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3411
  store %struct._object* %19, %struct._object** %arrayidx, align 8, !dbg !3412, !tbaa !971
  %22 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3413, !tbaa !971
  %23 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3415, !tbaa !971
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* %23), !dbg !3416
  %cmp19 = icmp slt i32 %call18, 0, !dbg !3417
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3418

if.then.20:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !3419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3419

if.end.21:                                        ; preds = %if.end.16
  %24 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3420, !tbaa !971
  %25 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3422, !tbaa !971
  %call22 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object* %25), !dbg !3423
  %cmp23 = icmp slt i32 %call22, 0, !dbg !3424
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !3425

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval, !dbg !3426
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3426

if.end.25:                                        ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3427, !tbaa !971
  %27 = load %struct._object*, %struct._object** %args, align 8, !dbg !3428, !tbaa !971
  %28 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3429, !tbaa !971
  %call26 = call %struct._object* @PyObject_Call(%struct._object* %26, %struct._object* %27, %struct._object* %28), !dbg !3430
  store %struct._object* %call26, %struct._object** %error, align 8, !dbg !3431, !tbaa !971
  %29 = load %struct._object*, %struct._object** %error, align 8, !dbg !3432, !tbaa !971
  %cmp27 = icmp ne %struct._object* %29, null, !dbg !3433
  br i1 %cmp27, label %if.then.28, label %if.end.42, !dbg !3434

if.then.28:                                       ; preds = %if.end.25
  %30 = load %struct._object*, %struct._object** %error, align 8, !dbg !3435, !tbaa !971
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !3436
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3436, !tbaa !1035
  %32 = bitcast %struct._typeobject* %31 to %struct._object*, !dbg !3437
  %33 = load %struct._object*, %struct._object** %error, align 8, !dbg !3438, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %32, %struct._object* %33), !dbg !3439
  br label %do.body.30, !dbg !3440

do.body.30:                                       ; preds = %if.then.28
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3441
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !3441
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !723, metadata !975), !dbg !3443
  %35 = load %struct._object*, %struct._object** %error, align 8, !dbg !3444, !tbaa !971
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !3443, !tbaa !971
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3445, !tbaa !971
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3447
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !3448, !tbaa !1049
  %dec33 = add i64 %37, -1, !dbg !3448
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !3448, !tbaa !1049
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !3449
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !3450

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !3451

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3453, !tbaa !971
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !3455
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !3455, !tbaa !1035
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !3456
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !3456, !tbaa !1058
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3457, !tbaa !971
  call void %40(%struct._object* %41), !dbg !3458
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3459
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3459
  br label %do.cond.40, !dbg !3461

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !3462

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !3464

if.end.42:                                        ; preds = %do.end.41, %if.end.25
  br label %do.body.43, !dbg !3465

do.body.43:                                       ; preds = %if.end.42
  %43 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !3466
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !3466
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp44, metadata !727, metadata !975), !dbg !3468
  %44 = load %struct._object*, %struct._object** %args, align 8, !dbg !3469, !tbaa !971
  store %struct._object* %44, %struct._object** %_py_decref_tmp44, align 8, !dbg !3468, !tbaa !971
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3470, !tbaa !971
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !3472
  %46 = load i64, i64* %ob_refcnt45, align 8, !dbg !3473, !tbaa !1049
  %dec46 = add i64 %46, -1, !dbg !3473
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !3473, !tbaa !1049
  %cmp47 = icmp ne i64 %dec46, 0, !dbg !3474
  br i1 %cmp47, label %if.then.48, label %if.else.49, !dbg !3475

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52, !dbg !3476

if.else.49:                                       ; preds = %do.body.43
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3478, !tbaa !971
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !3480
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !3480, !tbaa !1035
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !3481
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !3481, !tbaa !1058
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3482, !tbaa !971
  call void %49(%struct._object* %50), !dbg !3483
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  %51 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !3484
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !3484
  br label %do.cond.53, !dbg !3486

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !3487

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55, !dbg !3489

do.body.55:                                       ; preds = %do.end.54
  %52 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3490
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !3490
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !729, metadata !975), !dbg !3492
  %53 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3493, !tbaa !971
  store %struct._object* %53, %struct._object** %_py_decref_tmp56, align 8, !dbg !3492, !tbaa !971
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3494, !tbaa !971
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !3496
  %55 = load i64, i64* %ob_refcnt57, align 8, !dbg !3497, !tbaa !1049
  %dec58 = add i64 %55, -1, !dbg !3497
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !3497, !tbaa !1049
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !3498
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !3499

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64, !dbg !3500

if.else.61:                                       ; preds = %do.body.55
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3502, !tbaa !971
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !3504
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !3504, !tbaa !1035
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !3505
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !3505, !tbaa !1058
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3506, !tbaa !971
  call void %58(%struct._object* %59), !dbg !3507
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %60 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3508
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3508
  br label %do.cond.65, !dbg !3509

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !3510

do.end.66:                                        ; preds = %do.cond.65
  store %struct._object* null, %struct._object** %retval, !dbg !3512
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3512

cleanup:                                          ; preds = %do.end.66, %if.then.24, %if.then.20, %do.end, %if.then.2, %if.then
  %61 = bitcast %struct._object** %error to i8*, !dbg !3513
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !3513
  %62 = bitcast %struct._object** %kwargs to i8*, !dbg !3513
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !3513
  %63 = bitcast %struct._object** %args to i8*, !dbg !3513
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !3513
  %64 = load %struct._object*, %struct._object** %retval, !dbg !3513
  ret %struct._object* %64, !dbg !3513
}

declare %struct._object* @PyDict_New() #4

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define void @_PyErr_BadInternalCall(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !735, metadata !975), !dbg !3514
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !736, metadata !975), !dbg !3515
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3516, !tbaa !971
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3517, !tbaa !971
  %2 = load i32, i32* %lineno.addr, align 4, !dbg !3518, !tbaa !1913
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %1, i32 %2), !dbg !3519
  ret void, !dbg !3520
}

; Function Attrs: nounwind uwtable
define void @PyErr_BadInternalCall() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3521, !tbaa !971
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)), !dbg !3522
  ret void, !dbg !3523
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewException(i8* %name, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %base.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %dot = alloca i8*, align 8
  %modulename = alloca %struct._object*, align 8
  %classname = alloca %struct._object*, align 8
  %mydict = alloca %struct._object*, align 8
  %bases = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_xdecref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_xdecref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !767, metadata !975), !dbg !3524
  store %struct._object* %base, %struct._object** %base.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %base.addr, metadata !768, metadata !975), !dbg !3525
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !769, metadata !975), !dbg !3526
  %0 = bitcast i8** %dot to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3527
  call void @llvm.dbg.declare(metadata i8** %dot, metadata !770, metadata !975), !dbg !3528
  %1 = bitcast %struct._object** %modulename to i8*, !dbg !3529
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3529
  call void @llvm.dbg.declare(metadata %struct._object** %modulename, metadata !771, metadata !975), !dbg !3530
  store %struct._object* null, %struct._object** %modulename, align 8, !dbg !3530, !tbaa !971
  %2 = bitcast %struct._object** %classname to i8*, !dbg !3531
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3531
  call void @llvm.dbg.declare(metadata %struct._object** %classname, metadata !772, metadata !975), !dbg !3532
  store %struct._object* null, %struct._object** %classname, align 8, !dbg !3532, !tbaa !971
  %3 = bitcast %struct._object** %mydict to i8*, !dbg !3533
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3533
  call void @llvm.dbg.declare(metadata %struct._object** %mydict, metadata !773, metadata !975), !dbg !3534
  store %struct._object* null, %struct._object** %mydict, align 8, !dbg !3534, !tbaa !971
  %4 = bitcast %struct._object** %bases to i8*, !dbg !3535
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3535
  call void @llvm.dbg.declare(metadata %struct._object** %bases, metadata !774, metadata !975), !dbg !3536
  store %struct._object* null, %struct._object** %bases, align 8, !dbg !3536, !tbaa !971
  %5 = bitcast %struct._object** %result to i8*, !dbg !3537
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3537
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !775, metadata !975), !dbg !3538
  store %struct._object* null, %struct._object** %result, align 8, !dbg !3538, !tbaa !971
  %6 = load i8*, i8** %name.addr, align 8, !dbg !3539, !tbaa !971
  %call = call i8* @strrchr(i8* %6, i32 46) #9, !dbg !3540
  store i8* %call, i8** %dot, align 8, !dbg !3541, !tbaa !971
  %7 = load i8*, i8** %dot, align 8, !dbg !3542, !tbaa !971
  %cmp = icmp eq i8* %7, null, !dbg !3544
  br i1 %cmp, label %if.then, label %if.end, !dbg !3545

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3546, !tbaa !971
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0)), !dbg !3548
  store %struct._object* null, %struct._object** %retval, !dbg !3549
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3549

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3550, !tbaa !971
  %cmp1 = icmp eq %struct._object* %9, null, !dbg !3552
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3553

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !3554, !tbaa !971
  store %struct._object* %10, %struct._object** %base.addr, align 8, !dbg !3555, !tbaa !971
  br label %if.end.3, !dbg !3556

if.end.3:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3557, !tbaa !971
  %cmp4 = icmp eq %struct._object* %11, null, !dbg !3559
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !3560

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyDict_New(), !dbg !3561
  store %struct._object* %call6, %struct._object** %mydict, align 8, !dbg !3563, !tbaa !971
  store %struct._object* %call6, %struct._object** %dict.addr, align 8, !dbg !3564, !tbaa !971
  %12 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3565, !tbaa !971
  %cmp7 = icmp eq %struct._object* %12, null, !dbg !3567
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3568

if.then.8:                                        ; preds = %if.then.5
  br label %failure, !dbg !3569

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10, !dbg !3570

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %13 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3571, !tbaa !971
  %call11 = call %struct._object* @PyDict_GetItemString(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)), !dbg !3573
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !3574
  br i1 %cmp12, label %if.then.13, label %if.end.22, !dbg !3575

if.then.13:                                       ; preds = %if.end.10
  %14 = load i8*, i8** %name.addr, align 8, !dbg !3576, !tbaa !971
  %15 = load i8*, i8** %dot, align 8, !dbg !3578, !tbaa !971
  %16 = load i8*, i8** %name.addr, align 8, !dbg !3579, !tbaa !971
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64, !dbg !3580
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64, !dbg !3580
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3580
  %call14 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %14, i64 %sub.ptr.sub), !dbg !3581
  store %struct._object* %call14, %struct._object** %modulename, align 8, !dbg !3582, !tbaa !971
  %17 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3583, !tbaa !971
  %cmp15 = icmp eq %struct._object* %17, null, !dbg !3585
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !3586

if.then.16:                                       ; preds = %if.then.13
  br label %failure, !dbg !3587

if.end.17:                                        ; preds = %if.then.13
  %18 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3588, !tbaa !971
  %19 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3590, !tbaa !971
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* %19), !dbg !3591
  %cmp19 = icmp ne i32 %call18, 0, !dbg !3592
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3593

if.then.20:                                       ; preds = %if.end.17
  br label %failure, !dbg !3594

if.end.21:                                        ; preds = %if.end.17
  br label %if.end.22, !dbg !3595

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  %20 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3596, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !3598
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3598, !tbaa !1035
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !3599
  %22 = load i64, i64* %tp_flags, align 8, !dbg !3599, !tbaa !1302
  %and = and i64 %22, 67108864, !dbg !3600
  %cmp23 = icmp ne i64 %and, 0, !dbg !3601
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !3602

if.then.24:                                       ; preds = %if.end.22
  %23 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3603, !tbaa !971
  store %struct._object* %23, %struct._object** %bases, align 8, !dbg !3605, !tbaa !971
  %24 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3606, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !3607
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !3608, !tbaa !1049
  %inc = add i64 %25, 1, !dbg !3608
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3608, !tbaa !1049
  br label %if.end.29, !dbg !3609

if.else:                                          ; preds = %if.end.22
  %26 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3610, !tbaa !971
  %call25 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %26), !dbg !3612
  store %struct._object* %call25, %struct._object** %bases, align 8, !dbg !3613, !tbaa !971
  %27 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3614, !tbaa !971
  %cmp26 = icmp eq %struct._object* %27, null, !dbg !3616
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !3617

if.then.27:                                       ; preds = %if.else
  br label %failure, !dbg !3618

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  %28 = load i8*, i8** %dot, align 8, !dbg !3619, !tbaa !971
  %add.ptr = getelementptr i8, i8* %28, i64 1, !dbg !3620
  %29 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3621, !tbaa !971
  %30 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3622, !tbaa !971
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %add.ptr, %struct._object* %29, %struct._object* %30), !dbg !3623
  store %struct._object* %call30, %struct._object** %result, align 8, !dbg !3624, !tbaa !971
  br label %failure, !dbg !3625

failure:                                          ; preds = %if.end.29, %if.then.27, %if.then.20, %if.then.16, %if.then.8
  br label %do.body, !dbg !3626

do.body:                                          ; preds = %failure
  %31 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3627
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !3627
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !776, metadata !975), !dbg !3629
  %32 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3630, !tbaa !971
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3629, !tbaa !971
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3631, !tbaa !971
  %cmp31 = icmp ne %struct._object* %33, null, !dbg !3632
  br i1 %cmp31, label %if.then.32, label %if.end.40, !dbg !3633

if.then.32:                                       ; preds = %do.body
  br label %do.body.33, !dbg !3634

do.body.33:                                       ; preds = %if.then.32
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3636
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !778, metadata !975), !dbg !3638
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3639, !tbaa !971
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8, !dbg !3638, !tbaa !971
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3640, !tbaa !971
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3642
  %37 = load i64, i64* %ob_refcnt34, align 8, !dbg !3643, !tbaa !1049
  %dec = add i64 %37, -1, !dbg !3643
  store i64 %dec, i64* %ob_refcnt34, align 8, !dbg !3643, !tbaa !1049
  %cmp35 = icmp ne i64 %dec, 0, !dbg !3644
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !3645

if.then.36:                                       ; preds = %do.body.33
  br label %if.end.39, !dbg !3646

if.else.37:                                       ; preds = %do.body.33
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3648, !tbaa !971
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !3650
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !3650, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !3651
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3651, !tbaa !1058
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3652, !tbaa !971
  call void %40(%struct._object* %41), !dbg !3653
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3654
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3654
  br label %do.cond, !dbg !3656

do.cond:                                          ; preds = %if.end.39
  br label %do.end, !dbg !3657

do.end:                                           ; preds = %do.cond
  br label %if.end.40, !dbg !3659

if.end.40:                                        ; preds = %do.end, %do.body
  %43 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3661
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3661
  br label %do.cond.41, !dbg !3664

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !3665

do.end.42:                                        ; preds = %do.cond.41
  br label %do.body.43, !dbg !3667

do.body.43:                                       ; preds = %do.end.42
  %44 = bitcast %struct._object** %_py_xdecref_tmp44 to i8*, !dbg !3668
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !3668
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp44, metadata !781, metadata !975), !dbg !3670
  %45 = load %struct._object*, %struct._object** %mydict, align 8, !dbg !3671, !tbaa !971
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3670, !tbaa !971
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3672, !tbaa !971
  %cmp45 = icmp ne %struct._object* %46, null, !dbg !3673
  br i1 %cmp45, label %if.then.46, label %if.end.59, !dbg !3674

if.then.46:                                       ; preds = %do.body.43
  br label %do.body.47, !dbg !3675

do.body.47:                                       ; preds = %if.then.46
  %47 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !3677
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !3677
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !783, metadata !975), !dbg !3679
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3680, !tbaa !971
  store %struct._object* %48, %struct._object** %_py_decref_tmp48, align 8, !dbg !3679, !tbaa !971
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3681, !tbaa !971
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !3683
  %50 = load i64, i64* %ob_refcnt49, align 8, !dbg !3684, !tbaa !1049
  %dec50 = add i64 %50, -1, !dbg !3684
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !3684, !tbaa !1049
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !3685
  br i1 %cmp51, label %if.then.52, label %if.else.53, !dbg !3686

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56, !dbg !3687

if.else.53:                                       ; preds = %do.body.47
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3689, !tbaa !971
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !3691
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !3691, !tbaa !1035
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !3692
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !3692, !tbaa !1058
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3693, !tbaa !971
  call void %53(%struct._object* %54), !dbg !3694
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %55 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !3695
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !3695
  br label %do.cond.57, !dbg !3697

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !3698

do.end.58:                                        ; preds = %do.cond.57
  br label %if.end.59, !dbg !3700

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  %56 = bitcast %struct._object** %_py_xdecref_tmp44 to i8*, !dbg !3702
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !3702
  br label %do.cond.60, !dbg !3703

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !3704

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62, !dbg !3706

do.body.62:                                       ; preds = %do.end.61
  %57 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !3707
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp63, metadata !786, metadata !975), !dbg !3709
  %58 = load %struct._object*, %struct._object** %classname, align 8, !dbg !3710, !tbaa !971
  store %struct._object* %58, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3709, !tbaa !971
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3711, !tbaa !971
  %cmp64 = icmp ne %struct._object* %59, null, !dbg !3712
  br i1 %cmp64, label %if.then.65, label %if.end.78, !dbg !3713

if.then.65:                                       ; preds = %do.body.62
  br label %do.body.66, !dbg !3714

do.body.66:                                       ; preds = %if.then.65
  %60 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !3716
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !3716
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp67, metadata !788, metadata !975), !dbg !3718
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3719, !tbaa !971
  store %struct._object* %61, %struct._object** %_py_decref_tmp67, align 8, !dbg !3718, !tbaa !971
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3720, !tbaa !971
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !3722
  %63 = load i64, i64* %ob_refcnt68, align 8, !dbg !3723, !tbaa !1049
  %dec69 = add i64 %63, -1, !dbg !3723
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !3723, !tbaa !1049
  %cmp70 = icmp ne i64 %dec69, 0, !dbg !3724
  br i1 %cmp70, label %if.then.71, label %if.else.72, !dbg !3725

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75, !dbg !3726

if.else.72:                                       ; preds = %do.body.66
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3728, !tbaa !971
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !3730
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !3730, !tbaa !1035
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !3731
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !3731, !tbaa !1058
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3732, !tbaa !971
  call void %66(%struct._object* %67), !dbg !3733
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  %68 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !3734
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3734
  br label %do.cond.76, !dbg !3736

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !3737

do.end.77:                                        ; preds = %do.cond.76
  br label %if.end.78, !dbg !3739

if.end.78:                                        ; preds = %do.end.77, %do.body.62
  %69 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !3741
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !3741
  br label %do.cond.79, !dbg !3742

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !3743

do.end.80:                                        ; preds = %do.cond.79
  br label %do.body.81, !dbg !3745

do.body.81:                                       ; preds = %do.end.80
  %70 = bitcast %struct._object** %_py_xdecref_tmp82 to i8*, !dbg !3746
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !3746
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp82, metadata !791, metadata !975), !dbg !3748
  %71 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3749, !tbaa !971
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3748, !tbaa !971
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3750, !tbaa !971
  %cmp83 = icmp ne %struct._object* %72, null, !dbg !3751
  br i1 %cmp83, label %if.then.84, label %if.end.97, !dbg !3752

if.then.84:                                       ; preds = %do.body.81
  br label %do.body.85, !dbg !3753

do.body.85:                                       ; preds = %if.then.84
  %73 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !3755
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp86, metadata !793, metadata !975), !dbg !3757
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3758, !tbaa !971
  store %struct._object* %74, %struct._object** %_py_decref_tmp86, align 8, !dbg !3757, !tbaa !971
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3759, !tbaa !971
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !3761
  %76 = load i64, i64* %ob_refcnt87, align 8, !dbg !3762, !tbaa !1049
  %dec88 = add i64 %76, -1, !dbg !3762
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !3762, !tbaa !1049
  %cmp89 = icmp ne i64 %dec88, 0, !dbg !3763
  br i1 %cmp89, label %if.then.90, label %if.else.91, !dbg !3764

if.then.90:                                       ; preds = %do.body.85
  br label %if.end.94, !dbg !3765

if.else.91:                                       ; preds = %do.body.85
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3767, !tbaa !971
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !3769
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !3769, !tbaa !1035
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !3770
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !3770, !tbaa !1058
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3771, !tbaa !971
  call void %79(%struct._object* %80), !dbg !3772
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %81 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3773
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !3773
  br label %do.cond.95, !dbg !3775

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !3776

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97, !dbg !3778

if.end.97:                                        ; preds = %do.end.96, %do.body.81
  %82 = bitcast %struct._object** %_py_xdecref_tmp82 to i8*, !dbg !3780
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !3780
  br label %do.cond.98, !dbg !3781

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !3782

do.end.99:                                        ; preds = %do.cond.98
  %83 = load %struct._object*, %struct._object** %result, align 8, !dbg !3784, !tbaa !971
  store %struct._object* %83, %struct._object** %retval, !dbg !3785
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3785

cleanup:                                          ; preds = %do.end.99, %if.then
  %84 = bitcast %struct._object** %result to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !3786
  %85 = bitcast %struct._object** %bases to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !3786
  %86 = bitcast %struct._object** %mydict to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !3786
  %87 = bitcast %struct._object** %classname to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !3786
  %88 = bitcast %struct._object** %modulename to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !3786
  %89 = bitcast i8** %dot to i8*, !dbg !3786
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !3786
  %90 = load %struct._object*, %struct._object** %retval, !dbg !3786
  ret %struct._object* %90, !dbg !3786
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #8

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #4

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #4

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewExceptionWithDoc(i8* %name, i8* %doc, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %doc.addr = alloca i8*, align 8
  %base.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %ret = alloca %struct._object*, align 8
  %mydict = alloca %struct._object*, align 8
  %docobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !800, metadata !975), !dbg !3787
  store i8* %doc, i8** %doc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %doc.addr, metadata !801, metadata !975), !dbg !3788
  store %struct._object* %base, %struct._object** %base.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %base.addr, metadata !802, metadata !975), !dbg !3789
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !803, metadata !975), !dbg !3790
  %0 = bitcast i32* %result to i8*, !dbg !3791
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3791
  call void @llvm.dbg.declare(metadata i32* %result, metadata !804, metadata !975), !dbg !3792
  %1 = bitcast %struct._object** %ret to i8*, !dbg !3793
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3793
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !805, metadata !975), !dbg !3794
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !3794, !tbaa !971
  %2 = bitcast %struct._object** %mydict to i8*, !dbg !3795
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3795
  call void @llvm.dbg.declare(metadata %struct._object** %mydict, metadata !806, metadata !975), !dbg !3796
  store %struct._object* null, %struct._object** %mydict, align 8, !dbg !3796, !tbaa !971
  %3 = bitcast %struct._object** %docobj to i8*, !dbg !3797
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3797
  call void @llvm.dbg.declare(metadata %struct._object** %docobj, metadata !807, metadata !975), !dbg !3798
  %4 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3799, !tbaa !971
  %cmp = icmp eq %struct._object* %4, null, !dbg !3801
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !3802

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !3803
  store %struct._object* %call, %struct._object** %mydict, align 8, !dbg !3805, !tbaa !971
  store %struct._object* %call, %struct._object** %dict.addr, align 8, !dbg !3806, !tbaa !971
  %5 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3807, !tbaa !971
  %cmp1 = icmp eq %struct._object* %5, null, !dbg !3809
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !3810

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3811

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !3813

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i8*, i8** %doc.addr, align 8, !dbg !3814, !tbaa !971
  %cmp4 = icmp ne i8* %6, null, !dbg !3815
  br i1 %cmp4, label %if.then.5, label %if.end.17, !dbg !3816

if.then.5:                                        ; preds = %if.end.3
  %7 = load i8*, i8** %doc.addr, align 8, !dbg !3817, !tbaa !971
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %7), !dbg !3818
  store %struct._object* %call6, %struct._object** %docobj, align 8, !dbg !3819, !tbaa !971
  %8 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3820, !tbaa !971
  %cmp7 = icmp eq %struct._object* %8, null, !dbg !3822
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3823

if.then.8:                                        ; preds = %if.then.5
  br label %failure, !dbg !3824

if.end.9:                                         ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3825, !tbaa !971
  %10 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3826, !tbaa !971
  %call10 = call i32 @PyDict_SetItemString(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %10), !dbg !3827
  store i32 %call10, i32* %result, align 4, !dbg !3828, !tbaa !1913
  br label %do.body, !dbg !3829

do.body:                                          ; preds = %if.end.9
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3830
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !3830
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !808, metadata !975), !dbg !3832
  %12 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3833, !tbaa !971
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !3832, !tbaa !971
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3834, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3836
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3837, !tbaa !1049
  %dec = add i64 %14, -1, !dbg !3837
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3837, !tbaa !1049
  %cmp11 = icmp ne i64 %dec, 0, !dbg !3838
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !3839

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !3840

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3842, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3844
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3844, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !3845
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3845, !tbaa !1058
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3846, !tbaa !971
  call void %17(%struct._object* %18), !dbg !3847
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3848
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3848
  br label %do.cond, !dbg !3850

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !3851

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %result, align 4, !dbg !3853, !tbaa !1913
  %cmp14 = icmp slt i32 %20, 0, !dbg !3855
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3856

if.then.15:                                       ; preds = %do.end
  br label %failure, !dbg !3857

if.end.16:                                        ; preds = %do.end
  br label %if.end.17, !dbg !3858

if.end.17:                                        ; preds = %if.end.16, %if.end.3
  %21 = load i8*, i8** %name.addr, align 8, !dbg !3859, !tbaa !971
  %22 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3860, !tbaa !971
  %23 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3861, !tbaa !971
  %call18 = call %struct._object* @PyErr_NewException(i8* %21, %struct._object* %22, %struct._object* %23), !dbg !3862
  store %struct._object* %call18, %struct._object** %ret, align 8, !dbg !3863, !tbaa !971
  br label %failure, !dbg !3864

failure:                                          ; preds = %if.end.17, %if.then.15, %if.then.8
  br label %do.body.19, !dbg !3865

do.body.19:                                       ; preds = %failure
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3866
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !3866
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !812, metadata !975), !dbg !3868
  %25 = load %struct._object*, %struct._object** %mydict, align 8, !dbg !3869, !tbaa !971
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3868, !tbaa !971
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3870, !tbaa !971
  %cmp20 = icmp ne %struct._object* %26, null, !dbg !3871
  br i1 %cmp20, label %if.then.21, label %if.end.34, !dbg !3872

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22, !dbg !3873

do.body.22:                                       ; preds = %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3875
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3875
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !814, metadata !975), !dbg !3877
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3878, !tbaa !971
  store %struct._object* %28, %struct._object** %_py_decref_tmp23, align 8, !dbg !3877, !tbaa !971
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3879, !tbaa !971
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !3881
  %30 = load i64, i64* %ob_refcnt24, align 8, !dbg !3882, !tbaa !1049
  %dec25 = add i64 %30, -1, !dbg !3882
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !3882, !tbaa !1049
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !3883
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !3884

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !3885

if.else.28:                                       ; preds = %do.body.22
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3887, !tbaa !971
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !3889
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3889, !tbaa !1035
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !3890
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !3890, !tbaa !1058
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3891, !tbaa !971
  call void %33(%struct._object* %34), !dbg !3892
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %35 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3893
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3893
  br label %do.cond.32, !dbg !3895

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !3896

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34, !dbg !3898

if.end.34:                                        ; preds = %do.end.33, %do.body.19
  %36 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3900
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !3900
  br label %do.cond.35, !dbg !3903

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !3904

do.end.36:                                        ; preds = %do.cond.35
  %37 = load %struct._object*, %struct._object** %ret, align 8, !dbg !3906, !tbaa !971
  store %struct._object* %37, %struct._object** %retval, !dbg !3907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3907

cleanup:                                          ; preds = %do.end.36, %if.then.2
  %38 = bitcast %struct._object** %docobj to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !3908
  %39 = bitcast %struct._object** %mydict to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !3908
  %40 = bitcast %struct._object** %ret to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3908
  %41 = bitcast i32* %result to i8*, !dbg !3908
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !3908
  %42 = load %struct._object*, %struct._object** %retval, !dbg !3908
  ret %struct._object* %42, !dbg !3908
}

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #4

declare i32 @PyFile_WriteString(i8*, %struct._object*) #4

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #4

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #4

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #4

declare i32 @_PyUnicode_CompareWithId(%struct._object*, %struct._Py_Identifier*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocation(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !851, metadata !975), !dbg !3909
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !852, metadata !975), !dbg !3910
  %0 = load i8*, i8** %filename.addr, align 8, !dbg !3911, !tbaa !971
  %1 = load i32, i32* %lineno.addr, align 4, !dbg !3912, !tbaa !1913
  call void @PyErr_SyntaxLocationEx(i8* %0, i32 %1, i32 -1), !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationEx(i8* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %fileobj = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !892, metadata !975), !dbg !3915
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !893, metadata !975), !dbg !3916
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !894, metadata !975), !dbg !3917
  %0 = bitcast %struct._object** %fileobj to i8*, !dbg !3918
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3918
  call void @llvm.dbg.declare(metadata %struct._object** %fileobj, metadata !895, metadata !975), !dbg !3919
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3920, !tbaa !971
  %cmp = icmp ne i8* %1, null, !dbg !3922
  br i1 %cmp, label %if.then, label %if.else, !dbg !3923

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !3924, !tbaa !971
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !3926
  store %struct._object* %call, %struct._object** %fileobj, align 8, !dbg !3927, !tbaa !971
  %3 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3928, !tbaa !971
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !3930
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !3931

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !3932
  br label %if.end, !dbg !3932

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3, !dbg !3933

if.else:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %fileobj, align 8, !dbg !3934, !tbaa !971
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  %4 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3935, !tbaa !971
  %5 = load i32, i32* %lineno.addr, align 4, !dbg !3936, !tbaa !1913
  %6 = load i32, i32* %col_offset.addr, align 4, !dbg !3937, !tbaa !1913
  call void @PyErr_SyntaxLocationObject(%struct._object* %4, i32 %5, i32 %6), !dbg !3938
  br label %do.body, !dbg !3939

do.body:                                          ; preds = %if.end.3
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3940
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3940
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !896, metadata !975), !dbg !3942
  %8 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3943, !tbaa !971
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3942, !tbaa !971
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3944, !tbaa !971
  %cmp4 = icmp ne %struct._object* %9, null, !dbg !3945
  br i1 %cmp4, label %if.then.5, label %if.end.11, !dbg !3946

if.then.5:                                        ; preds = %do.body
  br label %do.body.6, !dbg !3947

do.body.6:                                        ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3949
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !3949
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !898, metadata !975), !dbg !3951
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3952, !tbaa !971
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !3951, !tbaa !971
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3953, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3955
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3956, !tbaa !1049
  %dec = add i64 %13, -1, !dbg !3956
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3956, !tbaa !1049
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3957
  br i1 %cmp7, label %if.then.8, label %if.else.9, !dbg !3958

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10, !dbg !3959

if.else.9:                                        ; preds = %do.body.6
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3961, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3963
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3963, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !3964
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3964, !tbaa !1058
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3965, !tbaa !971
  call void %16(%struct._object* %17), !dbg !3966
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3967
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3967
  br label %do.cond, !dbg !3969

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !3970

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !3972

if.end.11:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3974
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3974
  br label %do.cond.12, !dbg !3977

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !3978

do.end.13:                                        ; preds = %do.cond.12
  %20 = bitcast %struct._object** %fileobj to i8*, !dbg !3980
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3980
  ret void, !dbg !3980
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %exc = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !857, metadata !975), !dbg !3981
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !858, metadata !975), !dbg !3982
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !859, metadata !975), !dbg !3983
  %0 = bitcast %struct._object** %exc to i8*, !dbg !3984
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3984
  call void @llvm.dbg.declare(metadata %struct._object** %exc, metadata !860, metadata !975), !dbg !3985
  %1 = bitcast %struct._object** %v to i8*, !dbg !3984
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3984
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !861, metadata !975), !dbg !3986
  %2 = bitcast %struct._object** %tb to i8*, !dbg !3984
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3984
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !862, metadata !975), !dbg !3987
  %3 = bitcast %struct._object** %tmp to i8*, !dbg !3984
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3984
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !863, metadata !975), !dbg !3988
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %v, %struct._object** %tb), !dbg !3989
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %v, %struct._object** %tb), !dbg !3990
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !3991, !tbaa !1913
  %conv = sext i32 %4 to i64, !dbg !3991
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3992
  store %struct._object* %call, %struct._object** %tmp, align 8, !dbg !3993, !tbaa !971
  %5 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3994, !tbaa !971
  %cmp = icmp eq %struct._object* %5, null, !dbg !3995
  br i1 %cmp, label %if.then, label %if.else, !dbg !3996

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !3997
  br label %if.end.10, !dbg !3997

if.else:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !3998, !tbaa !971
  %7 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4000, !tbaa !971
  %call2 = call i32 @_PyObject_SetAttrId(%struct._object* %6, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno, %struct._object* %7), !dbg !4001
  %tobool = icmp ne i32 %call2, 0, !dbg !4001
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !4002

if.then.3:                                        ; preds = %if.else
  call void @PyErr_Clear(), !dbg !4003
  br label %if.end, !dbg !4003

if.end:                                           ; preds = %if.then.3, %if.else
  br label %do.body, !dbg !4004

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4005
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4005
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !864, metadata !975), !dbg !4007
  %9 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4008, !tbaa !971
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !4007, !tbaa !971
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4009, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !4011
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !4012, !tbaa !1049
  %dec = add i64 %11, -1, !dbg !4012
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4012, !tbaa !1049
  %cmp5 = icmp ne i64 %dec, 0, !dbg !4013
  br i1 %cmp5, label %if.then.7, label %if.else.8, !dbg !4014

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !4015

if.else.8:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4017, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !4019
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4019, !tbaa !1035
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !4020
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4020, !tbaa !1058
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4021, !tbaa !971
  call void %14(%struct._object* %15), !dbg !4022
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4023
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !4023
  br label %do.cond, !dbg !4025

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !4026

do.end:                                           ; preds = %do.cond
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then
  %17 = load i32, i32* %col_offset.addr, align 4, !dbg !4028, !tbaa !1913
  %cmp11 = icmp sge i32 %17, 0, !dbg !4029
  br i1 %cmp11, label %if.then.13, label %if.end.39, !dbg !4030

if.then.13:                                       ; preds = %if.end.10
  %18 = load i32, i32* %col_offset.addr, align 4, !dbg !4031, !tbaa !1913
  %conv14 = sext i32 %18 to i64, !dbg !4031
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv14), !dbg !4032
  store %struct._object* %call15, %struct._object** %tmp, align 8, !dbg !4033, !tbaa !971
  %19 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4034, !tbaa !971
  %cmp16 = icmp eq %struct._object* %19, null, !dbg !4035
  br i1 %cmp16, label %if.then.18, label %if.else.19, !dbg !4036

if.then.18:                                       ; preds = %if.then.13
  call void @PyErr_Clear(), !dbg !4037
  br label %if.end.38, !dbg !4037

if.else.19:                                       ; preds = %if.then.13
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !4038, !tbaa !971
  %21 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4040, !tbaa !971
  %call20 = call i32 @_PyObject_SetAttrId(%struct._object* %20, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* %21), !dbg !4041
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4041
  br i1 %tobool21, label %if.then.22, label %if.end.23, !dbg !4042

if.then.22:                                       ; preds = %if.else.19
  call void @PyErr_Clear(), !dbg !4043
  br label %if.end.23, !dbg !4043

if.end.23:                                        ; preds = %if.then.22, %if.else.19
  br label %do.body.24, !dbg !4044

do.body.24:                                       ; preds = %if.end.23
  %22 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4045
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !4045
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !868, metadata !975), !dbg !4047
  %23 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4048, !tbaa !971
  store %struct._object* %23, %struct._object** %_py_decref_tmp26, align 8, !dbg !4047, !tbaa !971
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4049, !tbaa !971
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !4051
  %25 = load i64, i64* %ob_refcnt27, align 8, !dbg !4052, !tbaa !1049
  %dec28 = add i64 %25, -1, !dbg !4052
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !4052, !tbaa !1049
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !4053
  br i1 %cmp29, label %if.then.31, label %if.else.32, !dbg !4054

if.then.31:                                       ; preds = %do.body.24
  br label %if.end.35, !dbg !4055

if.else.32:                                       ; preds = %do.body.24
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4057, !tbaa !971
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !4059
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !4059, !tbaa !1035
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !4060
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !4060, !tbaa !1058
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4061, !tbaa !971
  call void %28(%struct._object* %29), !dbg !4062
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %30 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4063
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !4063
  br label %do.cond.36, !dbg !4065

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !4066

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %if.then.18
  br label %if.end.39, !dbg !4068

if.end.39:                                        ; preds = %if.end.38, %if.end.10
  %31 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4069, !tbaa !971
  %cmp40 = icmp ne %struct._object* %31, null, !dbg !4070
  br i1 %cmp40, label %if.then.42, label %if.end.69, !dbg !4071

if.then.42:                                       ; preds = %if.end.39
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !4072, !tbaa !971
  %33 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4074, !tbaa !971
  %call43 = call i32 @_PyObject_SetAttrId(%struct._object* %32, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename, %struct._object* %33), !dbg !4075
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4075
  br i1 %tobool44, label %if.then.45, label %if.end.46, !dbg !4076

if.then.45:                                       ; preds = %if.then.42
  call void @PyErr_Clear(), !dbg !4077
  br label %if.end.46, !dbg !4077

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  %34 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4078, !tbaa !971
  %35 = load i32, i32* %lineno.addr, align 4, !dbg !4079, !tbaa !1913
  %call47 = call %struct._object* @PyErr_ProgramTextObject(%struct._object* %34, i32 %35), !dbg !4080
  store %struct._object* %call47, %struct._object** %tmp, align 8, !dbg !4081, !tbaa !971
  %36 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4082, !tbaa !971
  %tobool48 = icmp ne %struct._object* %36, null, !dbg !4082
  br i1 %tobool48, label %if.then.49, label %if.end.68, !dbg !4083

if.then.49:                                       ; preds = %if.end.46
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !4084, !tbaa !971
  %38 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4086, !tbaa !971
  %call50 = call i32 @_PyObject_SetAttrId(%struct._object* %37, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text, %struct._object* %38), !dbg !4087
  %tobool51 = icmp ne i32 %call50, 0, !dbg !4087
  br i1 %tobool51, label %if.then.52, label %if.end.53, !dbg !4088

if.then.52:                                       ; preds = %if.then.49
  call void @PyErr_Clear(), !dbg !4089
  br label %if.end.53, !dbg !4089

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  br label %do.body.54, !dbg !4090

do.body.54:                                       ; preds = %if.end.53
  %39 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4091
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !4091
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !874, metadata !975), !dbg !4093
  %40 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4094, !tbaa !971
  store %struct._object* %40, %struct._object** %_py_decref_tmp56, align 8, !dbg !4093, !tbaa !971
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4095, !tbaa !971
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !4097
  %42 = load i64, i64* %ob_refcnt57, align 8, !dbg !4098, !tbaa !1049
  %dec58 = add i64 %42, -1, !dbg !4098
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !4098, !tbaa !1049
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !4099
  br i1 %cmp59, label %if.then.61, label %if.else.62, !dbg !4100

if.then.61:                                       ; preds = %do.body.54
  br label %if.end.65, !dbg !4101

if.else.62:                                       ; preds = %do.body.54
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4103, !tbaa !971
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !4105
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !4105, !tbaa !1035
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !4106
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !4106, !tbaa !1058
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4107, !tbaa !971
  call void %45(%struct._object* %46), !dbg !4108
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %47 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4109
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !4109
  br label %do.cond.66, !dbg !4111

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !4112

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68, !dbg !4114

if.end.68:                                        ; preds = %do.end.67, %if.end.46
  br label %if.end.69, !dbg !4115

if.end.69:                                        ; preds = %if.end.68, %if.end.39
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !4116, !tbaa !971
  %call70 = call i32 @_PyObject_SetAttrId(%struct._object* %48, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* @_Py_NoneStruct), !dbg !4118
  %tobool71 = icmp ne i32 %call70, 0, !dbg !4118
  br i1 %tobool71, label %if.then.72, label %if.end.73, !dbg !4119

if.then.72:                                       ; preds = %if.end.69
  call void @PyErr_Clear(), !dbg !4120
  br label %if.end.73, !dbg !4122

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  %49 = load %struct._object*, %struct._object** %exc, align 8, !dbg !4123, !tbaa !971
  %50 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !4124, !tbaa !971
  %cmp74 = icmp ne %struct._object* %49, %50, !dbg !4125
  br i1 %cmp74, label %if.then.76, label %if.end.112, !dbg !4126

if.then.76:                                       ; preds = %if.end.73
  %51 = load %struct._object*, %struct._object** %v, align 8, !dbg !4127, !tbaa !971
  %call77 = call i32 @_PyObject_HasAttrId(%struct._object* %51, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg), !dbg !4128
  %tobool78 = icmp ne i32 %call77, 0, !dbg !4128
  br i1 %tobool78, label %if.end.103, label %if.then.79, !dbg !4129

if.then.79:                                       ; preds = %if.then.76
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !4130, !tbaa !971
  %call80 = call %struct._object* @PyObject_Str(%struct._object* %52), !dbg !4131
  store %struct._object* %call80, %struct._object** %tmp, align 8, !dbg !4132, !tbaa !971
  %53 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4133, !tbaa !971
  %tobool81 = icmp ne %struct._object* %53, null, !dbg !4133
  br i1 %tobool81, label %if.then.82, label %if.else.101, !dbg !4134

if.then.82:                                       ; preds = %if.then.79
  %54 = load %struct._object*, %struct._object** %v, align 8, !dbg !4135, !tbaa !971
  %55 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4137, !tbaa !971
  %call83 = call i32 @_PyObject_SetAttrId(%struct._object* %54, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg, %struct._object* %55), !dbg !4138
  %tobool84 = icmp ne i32 %call83, 0, !dbg !4138
  br i1 %tobool84, label %if.then.85, label %if.end.86, !dbg !4139

if.then.85:                                       ; preds = %if.then.82
  call void @PyErr_Clear(), !dbg !4140
  br label %if.end.86, !dbg !4140

if.end.86:                                        ; preds = %if.then.85, %if.then.82
  br label %do.body.87, !dbg !4141

do.body.87:                                       ; preds = %if.end.86
  %56 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !4142
  call void @llvm.lifetime.start(i64 8, i8* %56) #2, !dbg !4142
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !880, metadata !975), !dbg !4144
  %57 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4145, !tbaa !971
  store %struct._object* %57, %struct._object** %_py_decref_tmp89, align 8, !dbg !4144, !tbaa !971
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4146, !tbaa !971
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !4148
  %59 = load i64, i64* %ob_refcnt90, align 8, !dbg !4149, !tbaa !1049
  %dec91 = add i64 %59, -1, !dbg !4149
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !4149, !tbaa !1049
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !4150
  br i1 %cmp92, label %if.then.94, label %if.else.95, !dbg !4151

if.then.94:                                       ; preds = %do.body.87
  br label %if.end.98, !dbg !4152

if.else.95:                                       ; preds = %do.body.87
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4154, !tbaa !971
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !4156
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !4156, !tbaa !1035
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !4157
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !4157, !tbaa !1058
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4158, !tbaa !971
  call void %62(%struct._object* %63), !dbg !4159
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  %64 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !4160
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4160
  br label %do.cond.99, !dbg !4162

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100, !dbg !4163

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.102, !dbg !4165

if.else.101:                                      ; preds = %if.then.79
  call void @PyErr_Clear(), !dbg !4166
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %do.end.100
  br label %if.end.103, !dbg !4168

if.end.103:                                       ; preds = %if.end.102, %if.then.76
  %65 = load %struct._object*, %struct._object** %v, align 8, !dbg !4169, !tbaa !971
  %call104 = call i32 @_PyObject_HasAttrId(%struct._object* %65, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line), !dbg !4171
  %tobool105 = icmp ne i32 %call104, 0, !dbg !4171
  br i1 %tobool105, label %if.end.111, label %if.then.106, !dbg !4172

if.then.106:                                      ; preds = %if.end.103
  %66 = load %struct._object*, %struct._object** %v, align 8, !dbg !4173, !tbaa !971
  %call107 = call i32 @_PyObject_SetAttrId(%struct._object* %66, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line, %struct._object* @_Py_NoneStruct), !dbg !4176
  %tobool108 = icmp ne i32 %call107, 0, !dbg !4176
  br i1 %tobool108, label %if.then.109, label %if.end.110, !dbg !4177

if.then.109:                                      ; preds = %if.then.106
  call void @PyErr_Clear(), !dbg !4178
  br label %if.end.110, !dbg !4178

if.end.110:                                       ; preds = %if.then.109, %if.then.106
  br label %if.end.111, !dbg !4179

if.end.111:                                       ; preds = %if.end.110, %if.end.103
  br label %if.end.112, !dbg !4180

if.end.112:                                       ; preds = %if.end.111, %if.end.73
  %67 = load %struct._object*, %struct._object** %exc, align 8, !dbg !4181, !tbaa !971
  %68 = load %struct._object*, %struct._object** %v, align 8, !dbg !4182, !tbaa !971
  %69 = load %struct._object*, %struct._object** %tb, align 8, !dbg !4183, !tbaa !971
  call void @PyErr_Restore(%struct._object* %67, %struct._object* %68, %struct._object* %69), !dbg !4184
  %70 = bitcast %struct._object** %tmp to i8*, !dbg !4185
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !4185
  %71 = bitcast %struct._object** %tb to i8*, !dbg !4185
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !4185
  %72 = bitcast %struct._object** %v to i8*, !dbg !4185
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !4185
  %73 = bitcast %struct._object** %exc to i8*, !dbg !4185
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !4185
  ret void, !dbg !4185
}

declare %struct._object* @PyLong_FromLong(i64) #4

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramTextObject(%struct._object* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !912, metadata !975), !dbg !4186
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !913, metadata !975), !dbg !4187
  %0 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4188
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !914, metadata !975), !dbg !4189
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4190, !tbaa !971
  %cmp = icmp eq %struct._object* %1, null, !dbg !4192
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4193

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %lineno.addr, align 4, !dbg !4194, !tbaa !1913
  %cmp1 = icmp sle i32 %2, 0, !dbg !4196
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4197

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4198
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4198

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4199, !tbaa !971
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)), !dbg !4200
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !4201, !tbaa !971
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4202, !tbaa !971
  %5 = load i32, i32* %lineno.addr, align 4, !dbg !4203, !tbaa !1913
  %call2 = call %struct._object* @err_programtext(%struct._IO_FILE* %4, i32 %5), !dbg !4204
  store %struct._object* %call2, %struct._object** %retval, !dbg !4205
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4205

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4206
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !4206
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4206
  ret %struct._object* %7, !dbg !4206
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #4

declare %struct._object* @PyObject_Str(%struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramText(i8* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !905, metadata !975), !dbg !4207
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !906, metadata !975), !dbg !4208
  %0 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4209
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !907, metadata !975), !dbg !4210
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !4211, !tbaa !971
  %cmp = icmp eq i8* %1, null, !dbg !4213
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4214

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !4215, !tbaa !971
  %3 = load i8, i8* %2, align 1, !dbg !4217, !tbaa !991
  %conv = sext i8 %3 to i32, !dbg !4217
  %cmp1 = icmp eq i32 %conv, 0, !dbg !4218
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3, !dbg !4219

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !4220, !tbaa !1913
  %cmp4 = icmp sle i32 %4, 0, !dbg !4222
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4223

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4224

if.end:                                           ; preds = %lor.lhs.false.3
  %5 = load i8*, i8** %filename.addr, align 8, !dbg !4225, !tbaa !971
  %call = call %struct._IO_FILE* @_Py_fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)), !dbg !4226
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !4227, !tbaa !971
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4228, !tbaa !971
  %7 = load i32, i32* %lineno.addr, align 4, !dbg !4229, !tbaa !1913
  %call6 = call %struct._object* @err_programtext(%struct._IO_FILE* %6, i32 %7), !dbg !4230
  store %struct._object* %call6, %struct._object** %retval, !dbg !4231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4231

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4232
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !4232
  %9 = load %struct._object*, %struct._object** %retval, !dbg !4232
  ret %struct._object* %9, !dbg !4232
}

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_programtext(%struct._IO_FILE* %fp, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lineno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %linebuf = alloca [1000 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %pLastChar = alloca i8*, align 8
  %p = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !936, metadata !975), !dbg !4233
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1913
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !937, metadata !975), !dbg !4234
  %0 = bitcast i32* %i to i8*, !dbg !4235
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !4235
  call void @llvm.dbg.declare(metadata i32* %i, metadata !938, metadata !975), !dbg !4236
  %1 = bitcast [1000 x i8]* %linebuf to i8*, !dbg !4237
  call void @llvm.lifetime.start(i64 1000, i8* %1) #2, !dbg !4237
  call void @llvm.dbg.declare(metadata [1000 x i8]* %linebuf, metadata !939, metadata !975), !dbg !4238
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4239, !tbaa !971
  %cmp = icmp eq %struct._IO_FILE* %2, null, !dbg !4241
  br i1 %cmp, label %if.then, label %if.end, !dbg !4242

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4243

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4244, !tbaa !1913
  br label %for.cond, !dbg !4245

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4246, !tbaa !1913
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !4249, !tbaa !1913
  %cmp1 = icmp slt i32 %3, %4, !dbg !4250
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4251

for.body:                                         ; preds = %for.cond
  %5 = bitcast i8** %pLastChar to i8*, !dbg !4252
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !4252
  call void @llvm.dbg.declare(metadata i8** %pLastChar, metadata !943, metadata !975), !dbg !4253
  %arrayidx = getelementptr [1000 x i8], [1000 x i8]* %linebuf, i32 0, i64 998, !dbg !4254
  store i8* %arrayidx, i8** %pLastChar, align 8, !dbg !4253, !tbaa !971
  br label %do.body, !dbg !4255

do.body:                                          ; preds = %land.end, %for.body
  %6 = load i8*, i8** %pLastChar, align 8, !dbg !4256, !tbaa !971
  store i8 0, i8* %6, align 1, !dbg !4258, !tbaa !991
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0, !dbg !4259
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4261, !tbaa !971
  %call = call i8* @Py_UniversalNewlineFgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %7, %struct._object* null), !dbg !4262
  %cmp2 = icmp eq i8* %call, null, !dbg !4263
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !4264

if.then.3:                                        ; preds = %do.body
  br label %do.end, !dbg !4265

if.end.4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4266

do.cond:                                          ; preds = %if.end.4
  %8 = load i8*, i8** %pLastChar, align 8, !dbg !4267, !tbaa !971
  %9 = load i8, i8* %8, align 1, !dbg !4269, !tbaa !991
  %conv = sext i8 %9 to i32, !dbg !4269
  %cmp5 = icmp ne i32 %conv, 0, !dbg !4270
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !4271

land.rhs:                                         ; preds = %do.cond
  %10 = load i8*, i8** %pLastChar, align 8, !dbg !4272, !tbaa !971
  %11 = load i8, i8* %10, align 1, !dbg !4274, !tbaa !991
  %conv7 = sext i8 %11 to i32, !dbg !4274
  %cmp8 = icmp ne i32 %conv7, 10, !dbg !4275
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs ]
  br i1 %12, label %do.body, label %do.end, !dbg !4276

do.end:                                           ; preds = %land.end, %if.then.3
  %13 = bitcast i8** %pLastChar to i8*, !dbg !4278
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !4278
  br label %for.inc, !dbg !4279

for.inc:                                          ; preds = %do.end
  %14 = load i32, i32* %i, align 4, !dbg !4280, !tbaa !1913
  %inc = add i32 %14, 1, !dbg !4280
  store i32 %inc, i32* %i, align 4, !dbg !4280, !tbaa !1913
  br label %for.cond, !dbg !4281

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4282, !tbaa !971
  %call10 = call i32 @fclose(%struct._IO_FILE* %15), !dbg !4283
  %16 = load i32, i32* %i, align 4, !dbg !4284, !tbaa !1913
  %17 = load i32, i32* %lineno.addr, align 4, !dbg !4285, !tbaa !1913
  %cmp11 = icmp eq i32 %16, %17, !dbg !4286
  br i1 %cmp11, label %if.then.13, label %if.end.29, !dbg !4287

if.then.13:                                       ; preds = %for.end
  %18 = bitcast i8** %p to i8*, !dbg !4288
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !4288
  call void @llvm.dbg.declare(metadata i8** %p, metadata !947, metadata !975), !dbg !4289
  %arraydecay14 = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0, !dbg !4290
  store i8* %arraydecay14, i8** %p, align 8, !dbg !4289, !tbaa !971
  %19 = bitcast %struct._object** %res to i8*, !dbg !4291
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !4291
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !950, metadata !975), !dbg !4292
  br label %while.cond, !dbg !4293

while.cond:                                       ; preds = %while.body, %if.then.13
  %20 = load i8*, i8** %p, align 8, !dbg !4294, !tbaa !971
  %21 = load i8, i8* %20, align 1, !dbg !4297, !tbaa !991
  %conv15 = sext i8 %21 to i32, !dbg !4297
  %cmp16 = icmp eq i32 %conv15, 32, !dbg !4298
  br i1 %cmp16, label %lor.end, label %lor.lhs.false, !dbg !4299

lor.lhs.false:                                    ; preds = %while.cond
  %22 = load i8*, i8** %p, align 8, !dbg !4300, !tbaa !971
  %23 = load i8, i8* %22, align 1, !dbg !4302, !tbaa !991
  %conv18 = sext i8 %23 to i32, !dbg !4302
  %cmp19 = icmp eq i32 %conv18, 9, !dbg !4303
  br i1 %cmp19, label %lor.end, label %lor.rhs, !dbg !4304

lor.rhs:                                          ; preds = %lor.lhs.false
  %24 = load i8*, i8** %p, align 8, !dbg !4305, !tbaa !971
  %25 = load i8, i8* %24, align 1, !dbg !4307, !tbaa !991
  %conv21 = sext i8 %25 to i32, !dbg !4307
  %cmp22 = icmp eq i32 %conv21, 12, !dbg !4308
  br label %lor.end, !dbg !4304

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %26 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp22, %lor.rhs ]
  br i1 %26, label %while.body, label %while.end, !dbg !4309

while.body:                                       ; preds = %lor.end
  %27 = load i8*, i8** %p, align 8, !dbg !4313, !tbaa !971
  %incdec.ptr = getelementptr i8, i8* %27, i32 1, !dbg !4313
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !4313, !tbaa !971
  br label %while.cond, !dbg !4293

while.end:                                        ; preds = %lor.end
  %28 = load i8*, i8** %p, align 8, !dbg !4314, !tbaa !971
  %call24 = call %struct._object* @PyUnicode_FromString(i8* %28), !dbg !4315
  store %struct._object* %call24, %struct._object** %res, align 8, !dbg !4316, !tbaa !971
  %29 = load %struct._object*, %struct._object** %res, align 8, !dbg !4317, !tbaa !971
  %cmp25 = icmp eq %struct._object* %29, null, !dbg !4319
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !4320

if.then.27:                                       ; preds = %while.end
  call void @PyErr_Clear(), !dbg !4321
  br label %if.end.28, !dbg !4321

if.end.28:                                        ; preds = %if.then.27, %while.end
  %30 = load %struct._object*, %struct._object** %res, align 8, !dbg !4322, !tbaa !971
  store %struct._object* %30, %struct._object** %retval, !dbg !4323
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast %struct._object** %res to i8*, !dbg !4324
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !4324
  %32 = bitcast i8** %p to i8*, !dbg !4324
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !4324
  br label %cleanup

if.end.29:                                        ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !4325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4325

cleanup:                                          ; preds = %if.end.29, %if.end.28, %if.then
  %33 = bitcast [1000 x i8]* %linebuf to i8*, !dbg !4326
  call void @llvm.lifetime.end(i64 1000, i8* %33) #2, !dbg !4326
  %34 = bitcast i32* %i to i8*, !dbg !4326
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !4326
  %35 = load %struct._object*, %struct._object** %retval, !dbg !4326
  ret %struct._object* %35, !dbg !4326
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #4

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!968, !969}
!llvm.ident = !{!970}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !419, globals: !951)
!1 = !DIFile(filename: "errors.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !114, !29, !409, !411, !35, !76}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !14, line: 139, baseType: !15)
!14 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!31 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !31, line: 105, size: 128, align: 64, elements: !33)
!33 = !{!34, !42}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !32, file: !31, line: 107, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !36, line: 177, baseType: !37)
!36 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !38, line: 102, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !40, line: 181, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!72 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!120 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!306 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!319 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!413 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!414 = !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 25, size: 256, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !414, file: !413, line: 26, baseType: !47, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !414, file: !413, line: 27, baseType: !418, size: 64, align: 64, offset: 192)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 64, elements: !106)
!419 = !{!420, !464, !508, !514, !517, !529, !539, !553, !556, !604, !615, !619, !636, !665, !668, !669, !673, !695, !708, !711, !731, !737, !738, !763, !796, !817, !849, !853, !888, !901, !908, !915, !924, !929, !932}
!420 = !DISubprogram(name: "PyErr_Restore", scope: !421, file: !421, line: 28, type: !422, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_Restore, variables: !424)
!421 = !DIFile(filename: "Python/errors.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!422 = !DISubroutineType(types: !423)
!423 = !{null, !29, !29, !29}
!424 = !{!425, !426, !427, !428, !429, !436, !437, !440, !442, !443, !444, !445, !449, !451, !454, !456, !459, !461}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !420, file: !421, line: 28, type: !29)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !420, file: !421, line: 28, type: !29)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 3, scope: !420, file: !421, line: 28, type: !29)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !420, file: !421, line: 30, type: !12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !430, file: !421, line: 30, type: !431)
!430 = distinct !DILexicalBlock(scope: !420, file: !421, line: 30, column: 61)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !433, file: !4, line: 32, baseType: !114, size: 64, align: 64)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !430, file: !421, line: 30, type: !114)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !430, file: !421, line: 30, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !430, file: !421, line: 30, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !420, file: !421, line: 31, type: !29)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !420, file: !421, line: 31, type: !29)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !420, file: !421, line: 31, type: !29)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !446, file: !421, line: 36, type: !29)
!446 = distinct !DILexicalBlock(scope: !447, file: !421, line: 36, column: 12)
!447 = distinct !DILexicalBlock(scope: !448, file: !421, line: 33, column: 97)
!448 = distinct !DILexicalBlock(scope: !420, file: !421, line: 33, column: 9)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !450, file: !421, line: 50, type: !29)
!450 = distinct !DILexicalBlock(scope: !420, file: !421, line: 50, column: 8)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !421, line: 50, type: !29)
!452 = distinct !DILexicalBlock(scope: !453, file: !421, line: 50, column: 99)
!453 = distinct !DILexicalBlock(scope: !450, file: !421, line: 50, column: 65)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !455, file: !421, line: 51, type: !29)
!455 = distinct !DILexicalBlock(scope: !420, file: !421, line: 51, column: 8)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !421, line: 51, type: !29)
!457 = distinct !DILexicalBlock(scope: !458, file: !421, line: 51, column: 100)
!458 = distinct !DILexicalBlock(scope: !455, file: !421, line: 51, column: 66)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !460, file: !421, line: 52, type: !29)
!460 = distinct !DILexicalBlock(scope: !420, file: !421, line: 52, column: 8)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !462, file: !421, line: 52, type: !29)
!462 = distinct !DILexicalBlock(scope: !463, file: !421, line: 52, column: 104)
!463 = distinct !DILexicalBlock(scope: !460, file: !421, line: 52, column: 70)
!464 = !DISubprogram(name: "PyErr_SetObject", scope: !421, file: !421, line: 56, type: !465, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*)* @PyErr_SetObject, variables: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !29, !29}
!467 = !{!468, !469, !470, !471, !473, !474, !475, !476, !477, !478, !480, !485, !486, !488, !491, !493, !496, !499, !500, !503, !506}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !464, file: !421, line: 56, type: !29)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !464, file: !421, line: 56, type: !29)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !464, file: !421, line: 58, type: !12)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !472, file: !421, line: 58, type: !431)
!472 = distinct !DILexicalBlock(scope: !464, file: !421, line: 58, column: 61)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !472, file: !421, line: 58, type: !114)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !472, file: !421, line: 58, type: !438)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !472, file: !421, line: 58, type: !441)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !464, file: !421, line: 59, type: !29)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !464, file: !421, line: 60, type: !29)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !479, file: !421, line: 69, type: !29)
!479 = distinct !DILexicalBlock(scope: !464, file: !421, line: 69, column: 8)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !481, file: !421, line: 76, type: !29)
!481 = distinct !DILexicalBlock(scope: !482, file: !421, line: 74, column: 92)
!482 = distinct !DILexicalBlock(scope: !483, file: !421, line: 74, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !421, line: 71, column: 68)
!484 = distinct !DILexicalBlock(scope: !464, file: !421, line: 71, column: 9)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_value", scope: !481, file: !421, line: 76, type: !29)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !487, file: !421, line: 92, type: !29)
!487 = distinct !DILexicalBlock(scope: !481, file: !421, line: 92, column: 16)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !421, line: 92, type: !29)
!489 = distinct !DILexicalBlock(scope: !490, file: !421, line: 92, column: 104)
!490 = distinct !DILexicalBlock(scope: !487, file: !421, line: 92, column: 70)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !492, file: !421, line: 93, type: !29)
!492 = distinct !DILexicalBlock(scope: !481, file: !421, line: 93, column: 16)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !421, line: 93, type: !29)
!494 = distinct !DILexicalBlock(scope: !495, file: !421, line: 93, column: 105)
!495 = distinct !DILexicalBlock(scope: !492, file: !421, line: 93, column: 71)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !497, file: !421, line: 103, type: !29)
!497 = distinct !DILexicalBlock(scope: !498, file: !421, line: 102, column: 33)
!498 = distinct !DILexicalBlock(scope: !483, file: !421, line: 102, column: 13)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "context", scope: !497, file: !421, line: 103, type: !29)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !501, file: !421, line: 105, type: !29)
!501 = distinct !DILexicalBlock(scope: !502, file: !421, line: 105, column: 20)
!502 = distinct !DILexicalBlock(scope: !497, file: !421, line: 104, column: 59)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !421, line: 114, type: !29)
!504 = distinct !DILexicalBlock(scope: !505, file: !421, line: 114, column: 16)
!505 = distinct !DILexicalBlock(scope: !498, file: !421, line: 113, column: 16)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !507, file: !421, line: 119, type: !29)
!507 = distinct !DILexicalBlock(scope: !464, file: !421, line: 119, column: 8)
!508 = !DISubprogram(name: "_PyErr_SetKeyError", scope: !421, file: !421, line: 127, type: !61, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyErr_SetKeyError, variables: !509)
!509 = !{!510, !511, !512}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !508, file: !421, line: 127, type: !29)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !508, file: !421, line: 129, type: !29)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !513, file: !421, line: 134, type: !29)
!513 = distinct !DILexicalBlock(scope: !508, file: !421, line: 134, column: 8)
!514 = !DISubprogram(name: "PyErr_SetNone", scope: !421, file: !421, line: 138, type: !61, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_SetNone, variables: !515)
!515 = !{!516}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !514, file: !421, line: 138, type: !29)
!517 = !DISubprogram(name: "PyErr_SetString", scope: !421, file: !421, line: 144, type: !518, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*)* @PyErr_SetString, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !29, !53}
!520 = !{!521, !522, !523, !524, !526}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !517, file: !421, line: 144, type: !29)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 2, scope: !517, file: !421, line: 144, type: !53)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !517, file: !421, line: 146, type: !29)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !525, file: !421, line: 148, type: !29)
!525 = distinct !DILexicalBlock(scope: !517, file: !421, line: 148, column: 8)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !421, line: 148, type: !29)
!527 = distinct !DILexicalBlock(scope: !528, file: !421, line: 148, column: 97)
!528 = distinct !DILexicalBlock(scope: !525, file: !421, line: 148, column: 63)
!529 = !DISubprogram(name: "PyErr_Occurred", scope: !421, file: !421, line: 153, type: !530, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_Occurred, variables: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!29}
!532 = !{!533, !534, !536, !537, !538}
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !529, file: !421, line: 159, type: !12)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !535, file: !421, line: 160, type: !431)
!535 = distinct !DILexicalBlock(scope: !529, file: !421, line: 160, column: 41)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !535, file: !421, line: 160, type: !114)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !535, file: !421, line: 160, type: !438)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !535, file: !421, line: 160, type: !441)
!539 = !DISubprogram(name: "PyErr_GivenExceptionMatches", scope: !421, file: !421, line: 167, type: !222, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyErr_GivenExceptionMatches, variables: !540)
!540 = !{!541, !542, !543, !546, !547, !550, !551, !552}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 1, scope: !539, file: !421, line: 167, type: !29)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !539, file: !421, line: 167, type: !29)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !544, file: !421, line: 174, type: !35)
!544 = distinct !DILexicalBlock(scope: !545, file: !421, line: 173, column: 77)
!545 = distinct !DILexicalBlock(scope: !539, file: !421, line: 173, column: 9)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !544, file: !421, line: 174, type: !35)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !548, file: !421, line: 191, type: !68)
!548 = distinct !DILexicalBlock(scope: !549, file: !421, line: 190, column: 277)
!549 = distinct !DILexicalBlock(scope: !539, file: !421, line: 190, column: 9)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !548, file: !421, line: 192, type: !29)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !548, file: !421, line: 192, type: !29)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !548, file: !421, line: 192, type: !29)
!553 = !DISubprogram(name: "PyErr_ExceptionMatches", scope: !421, file: !421, line: 211, type: !169, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyErr_ExceptionMatches, variables: !554)
!554 = !{!555}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !553, file: !421, line: 211, type: !29)
!556 = !DISubprogram(name: "PyErr_NormalizeException", scope: !421, file: !421, line: 224, type: !557, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_NormalizeException, variables: !560)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559, !559, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !572, !575, !576, !578, !580, !584, !586, !588, !593, !595, !596, !597, !598, !602}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !556, file: !421, line: 224, type: !559)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !556, file: !421, line: 224, type: !559)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tb", arg: 3, scope: !556, file: !421, line: 224, type: !559)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !556, file: !421, line: 226, type: !29)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !556, file: !421, line: 227, type: !29)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inclass", scope: !556, file: !421, line: 228, type: !29)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_tb", scope: !556, file: !421, line: 229, type: !29)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !556, file: !421, line: 230, type: !12)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_subclass", scope: !570, file: !421, line: 252, type: !68)
!570 = distinct !DILexicalBlock(scope: !571, file: !421, line: 251, column: 144)
!571 = distinct !DILexicalBlock(scope: !556, file: !421, line: 251, column: 9)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !573, file: !421, line: 267, type: !29)
!573 = distinct !DILexicalBlock(scope: !574, file: !421, line: 266, column: 39)
!574 = distinct !DILexicalBlock(scope: !570, file: !421, line: 266, column: 13)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !573, file: !421, line: 267, type: !29)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !577, file: !421, line: 281, type: !29)
!577 = distinct !DILexicalBlock(scope: !573, file: !421, line: 281, column: 16)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !421, line: 284, type: !29)
!579 = distinct !DILexicalBlock(scope: !573, file: !421, line: 284, column: 16)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !421, line: 291, type: !29)
!581 = distinct !DILexicalBlock(scope: !582, file: !421, line: 291, column: 16)
!582 = distinct !DILexicalBlock(scope: !583, file: !421, line: 290, column: 35)
!583 = distinct !DILexicalBlock(scope: !574, file: !421, line: 290, column: 18)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !421, line: 300, type: !29)
!585 = distinct !DILexicalBlock(scope: !556, file: !421, line: 300, column: 8)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !421, line: 301, type: !29)
!587 = distinct !DILexicalBlock(scope: !556, file: !421, line: 301, column: 8)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !421, line: 312, type: !29)
!589 = distinct !DILexicalBlock(scope: !590, file: !421, line: 312, column: 16)
!590 = distinct !DILexicalBlock(scope: !591, file: !421, line: 309, column: 13)
!591 = distinct !DILexicalBlock(scope: !592, file: !421, line: 308, column: 35)
!592 = distinct !DILexicalBlock(scope: !556, file: !421, line: 308, column: 9)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !594, file: !421, line: 315, type: !431)
!594 = distinct !DILexicalBlock(scope: !556, file: !421, line: 315, column: 46)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !594, file: !421, line: 315, type: !114)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !594, file: !421, line: 315, type: !438)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !594, file: !421, line: 315, type: !441)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !421, line: 319, type: !29)
!599 = distinct !DILexicalBlock(scope: !600, file: !421, line: 319, column: 12)
!600 = distinct !DILexicalBlock(scope: !601, file: !421, line: 316, column: 61)
!601 = distinct !DILexicalBlock(scope: !556, file: !421, line: 316, column: 9)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !421, line: 320, type: !29)
!603 = distinct !DILexicalBlock(scope: !600, file: !421, line: 320, column: 12)
!604 = !DISubprogram(name: "PyErr_Fetch", scope: !421, file: !421, line: 335, type: !557, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_Fetch, variables: !605)
!605 = !{!606, !607, !608, !609, !610, !612, !613, !614}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !604, file: !421, line: 335, type: !559)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !604, file: !421, line: 335, type: !559)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !604, file: !421, line: 335, type: !559)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !604, file: !421, line: 337, type: !12)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !611, file: !421, line: 337, type: !431)
!611 = distinct !DILexicalBlock(scope: !604, file: !421, line: 337, column: 61)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !611, file: !421, line: 337, type: !114)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !611, file: !421, line: 337, type: !438)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !611, file: !421, line: 337, type: !441)
!615 = !DISubprogram(name: "PyErr_Clear", scope: !421, file: !421, line: 349, type: !616, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_Clear, variables: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = !{}
!619 = !DISubprogram(name: "PyErr_GetExcInfo", scope: !421, file: !421, line: 355, type: !557, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_GetExcInfo, variables: !620)
!620 = !{!621, !622, !623, !624, !625, !627, !628, !629, !630, !632, !634}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !619, file: !421, line: 355, type: !559)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !619, file: !421, line: 355, type: !559)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !619, file: !421, line: 355, type: !559)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !619, file: !421, line: 357, type: !12)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !626, file: !421, line: 357, type: !431)
!626 = distinct !DILexicalBlock(scope: !619, file: !421, line: 357, column: 61)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !626, file: !421, line: 357, type: !114)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !626, file: !421, line: 357, type: !438)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !626, file: !421, line: 357, type: !441)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !631, file: !421, line: 363, type: !29)
!631 = distinct !DILexicalBlock(scope: !619, file: !421, line: 363, column: 8)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !633, file: !421, line: 364, type: !29)
!633 = distinct !DILexicalBlock(scope: !619, file: !421, line: 364, column: 8)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !635, file: !421, line: 365, type: !29)
!635 = distinct !DILexicalBlock(scope: !619, file: !421, line: 365, column: 8)
!636 = !DISubprogram(name: "PyErr_SetExcInfo", scope: !421, file: !421, line: 369, type: !422, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetExcInfo, variables: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !652, !655, !657, !660, !662}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !636, file: !421, line: 369, type: !29)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !636, file: !421, line: 369, type: !29)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !636, file: !421, line: 369, type: !29)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !636, file: !421, line: 371, type: !29)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !636, file: !421, line: 371, type: !29)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !636, file: !421, line: 371, type: !29)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !636, file: !421, line: 372, type: !12)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !646, file: !421, line: 372, type: !431)
!646 = distinct !DILexicalBlock(scope: !636, file: !421, line: 372, column: 61)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !646, file: !421, line: 372, type: !114)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !646, file: !421, line: 372, type: !438)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !646, file: !421, line: 372, type: !441)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !651, file: !421, line: 382, type: !29)
!651 = distinct !DILexicalBlock(scope: !636, file: !421, line: 382, column: 8)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !653, file: !421, line: 382, type: !29)
!653 = distinct !DILexicalBlock(scope: !654, file: !421, line: 382, column: 99)
!654 = distinct !DILexicalBlock(scope: !651, file: !421, line: 382, column: 65)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !656, file: !421, line: 383, type: !29)
!656 = distinct !DILexicalBlock(scope: !636, file: !421, line: 383, column: 8)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !421, line: 383, type: !29)
!658 = distinct !DILexicalBlock(scope: !659, file: !421, line: 383, column: 100)
!659 = distinct !DILexicalBlock(scope: !656, file: !421, line: 383, column: 66)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !661, file: !421, line: 384, type: !29)
!661 = distinct !DILexicalBlock(scope: !636, file: !421, line: 384, column: 8)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !663, file: !421, line: 384, type: !29)
!663 = distinct !DILexicalBlock(scope: !664, file: !421, line: 384, column: 104)
!664 = distinct !DILexicalBlock(scope: !661, file: !421, line: 384, column: 70)
!665 = !DISubprogram(name: "PyErr_BadArgument", scope: !421, file: !421, line: 390, type: !666, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyErr_BadArgument, variables: !618)
!666 = !DISubroutineType(types: !667)
!667 = !{!68}
!668 = !DISubprogram(name: "PyErr_NoMemory", scope: !421, file: !421, line: 398, type: !530, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_NoMemory, variables: !618)
!669 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObject", scope: !421, file: !421, line: 411, type: !151, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObject, variables: !670)
!670 = !{!671, !672}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !669, file: !421, line: 411, type: !29)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !669, file: !421, line: 411, type: !29)
!673 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObjects", scope: !421, file: !421, line: 417, type: !160, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObjects, variables: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !685, !687, !691}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !673, file: !421, line: 417, type: !29)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !673, file: !421, line: 417, type: !29)
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject2", arg: 3, scope: !673, file: !421, line: 417, type: !29)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !673, file: !421, line: 419, type: !29)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !673, file: !421, line: 420, type: !29)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !673, file: !421, line: 420, type: !29)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !673, file: !421, line: 421, type: !68)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !683, file: !421, line: 433, type: !76)
!683 = distinct !DILexicalBlock(scope: !684, file: !421, line: 432, column: 17)
!684 = distinct !DILexicalBlock(scope: !673, file: !421, line: 432, column: 9)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !421, line: 498, type: !29)
!686 = distinct !DILexicalBlock(scope: !673, file: !421, line: 498, column: 8)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !688, file: !421, line: 502, type: !29)
!688 = distinct !DILexicalBlock(scope: !689, file: !421, line: 502, column: 12)
!689 = distinct !DILexicalBlock(scope: !690, file: !421, line: 500, column: 29)
!690 = distinct !DILexicalBlock(scope: !673, file: !421, line: 500, column: 9)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !421, line: 505, type: !29)
!692 = distinct !DILexicalBlock(scope: !693, file: !421, line: 505, column: 16)
!693 = distinct !DILexicalBlock(scope: !694, file: !421, line: 503, column: 30)
!694 = distinct !DILexicalBlock(scope: !689, file: !421, line: 503, column: 13)
!695 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilename", scope: !421, file: !421, line: 515, type: !696, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @PyErr_SetFromErrnoWithFilename, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!29, !29, !53}
!698 = !{!699, !700, !701, !702, !703, !705}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !695, file: !421, line: 515, type: !29)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !695, file: !421, line: 515, type: !53)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !695, file: !421, line: 517, type: !29)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !695, file: !421, line: 518, type: !29)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !704, file: !421, line: 519, type: !29)
!704 = distinct !DILexicalBlock(scope: !695, file: !421, line: 519, column: 8)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !706, file: !421, line: 519, type: !29)
!706 = distinct !DILexicalBlock(scope: !707, file: !421, line: 519, column: 96)
!707 = distinct !DILexicalBlock(scope: !704, file: !421, line: 519, column: 62)
!708 = !DISubprogram(name: "PyErr_SetFromErrno", scope: !421, file: !421, line: 537, type: !141, isLocal: false, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyErr_SetFromErrno, variables: !709)
!709 = !{!710}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !708, file: !421, line: 537, type: !29)
!711 = !DISubprogram(name: "PyErr_SetImportError", scope: !421, file: !421, line: 686, type: !160, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetImportError, variables: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !723, !727, !729}
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !711, file: !421, line: 686, type: !29)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !711, file: !421, line: 686, type: !29)
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !711, file: !421, line: 686, type: !29)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !711, file: !421, line: 688, type: !29)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwargs", scope: !711, file: !421, line: 688, type: !29)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !711, file: !421, line: 688, type: !29)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !720, file: !421, line: 699, type: !29)
!720 = distinct !DILexicalBlock(scope: !721, file: !421, line: 699, column: 12)
!721 = distinct !DILexicalBlock(scope: !722, file: !421, line: 698, column: 31)
!722 = distinct !DILexicalBlock(scope: !711, file: !421, line: 698, column: 9)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !724, file: !421, line: 722, type: !29)
!724 = distinct !DILexicalBlock(scope: !725, file: !421, line: 722, column: 12)
!725 = distinct !DILexicalBlock(scope: !726, file: !421, line: 720, column: 30)
!726 = distinct !DILexicalBlock(scope: !711, file: !421, line: 720, column: 9)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !421, line: 725, type: !29)
!728 = distinct !DILexicalBlock(scope: !711, file: !421, line: 725, column: 8)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !421, line: 726, type: !29)
!730 = distinct !DILexicalBlock(scope: !711, file: !421, line: 726, column: 8)
!731 = !DISubprogram(name: "_PyErr_BadInternalCall", scope: !421, file: !421, line: 732, type: !732, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_PyErr_BadInternalCall, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !53, !68}
!734 = !{!735, !736}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !731, file: !421, line: 732, type: !53)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !731, file: !421, line: 732, type: !68)
!737 = !DISubprogram(name: "PyErr_BadInternalCall", scope: !421, file: !421, line: 743, type: !616, isLocal: false, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_BadInternalCall, variables: !618)
!738 = !DISubprogram(name: "PyErr_Format", scope: !421, file: !421, line: 754, type: !739, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, ...)* @PyErr_Format, variables: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!29, !29, !53, null}
!741 = !{!742, !743, !744, !757, !758, !760}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !738, file: !421, line: 754, type: !29)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !738, file: !421, line: 754, type: !53)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !738, file: !421, line: 756, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !38, line: 79, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !747, line: 50, baseType: !748)
!747 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 756, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 192, align: 64, elements: !106)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 756, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 756, size: 192, align: 64, elements: !752)
!752 = !{!753, !754, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !751, file: !1, line: 756, baseType: !366, size: 32, align: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !751, file: !1, line: 756, baseType: !366, size: 32, align: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !751, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !751, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 128)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string", scope: !738, file: !421, line: 757, type: !29)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !759, file: !421, line: 773, type: !29)
!759 = distinct !DILexicalBlock(scope: !738, file: !421, line: 773, column: 8)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !761, file: !421, line: 773, type: !29)
!761 = distinct !DILexicalBlock(scope: !762, file: !421, line: 773, column: 98)
!762 = distinct !DILexicalBlock(scope: !759, file: !421, line: 773, column: 64)
!763 = !DISubprogram(name: "PyErr_NewException", scope: !421, file: !421, line: 781, type: !764, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, %struct._object*)* @PyErr_NewException, variables: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!29, !53, !29, !29}
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !778, !781, !783, !786, !788, !791, !793}
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !763, file: !421, line: 781, type: !53)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !763, file: !421, line: 781, type: !29)
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 3, scope: !763, file: !421, line: 781, type: !29)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !763, file: !421, line: 783, type: !53)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modulename", scope: !763, file: !421, line: 784, type: !29)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classname", scope: !763, file: !421, line: 785, type: !29)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !763, file: !421, line: 786, type: !29)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bases", scope: !763, file: !421, line: 787, type: !29)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !763, file: !421, line: 788, type: !29)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !777, file: !421, line: 823, type: !29)
!777 = distinct !DILexicalBlock(scope: !763, file: !421, line: 823, column: 8)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !779, file: !421, line: 823, type: !29)
!779 = distinct !DILexicalBlock(scope: !780, file: !421, line: 823, column: 97)
!780 = distinct !DILexicalBlock(scope: !777, file: !421, line: 823, column: 63)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !782, file: !421, line: 824, type: !29)
!782 = distinct !DILexicalBlock(scope: !763, file: !421, line: 824, column: 8)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !421, line: 824, type: !29)
!784 = distinct !DILexicalBlock(scope: !785, file: !421, line: 824, column: 98)
!785 = distinct !DILexicalBlock(scope: !782, file: !421, line: 824, column: 64)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !421, line: 825, type: !29)
!787 = distinct !DILexicalBlock(scope: !763, file: !421, line: 825, column: 8)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !421, line: 825, type: !29)
!789 = distinct !DILexicalBlock(scope: !790, file: !421, line: 825, column: 101)
!790 = distinct !DILexicalBlock(scope: !787, file: !421, line: 825, column: 67)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !792, file: !421, line: 826, type: !29)
!792 = distinct !DILexicalBlock(scope: !763, file: !421, line: 826, column: 8)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !421, line: 826, type: !29)
!794 = distinct !DILexicalBlock(scope: !795, file: !421, line: 826, column: 102)
!795 = distinct !DILexicalBlock(scope: !792, file: !421, line: 826, column: 68)
!796 = !DISubprogram(name: "PyErr_NewExceptionWithDoc", scope: !421, file: !421, line: 833, type: !797, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, %struct._object*, %struct._object*)* @PyErr_NewExceptionWithDoc, variables: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!29, !53, !53, !29, !29}
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !812, !814}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !796, file: !421, line: 833, type: !53)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "doc", arg: 2, scope: !796, file: !421, line: 833, type: !53)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !796, file: !421, line: 834, type: !29)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 4, scope: !796, file: !421, line: 834, type: !29)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !796, file: !421, line: 836, type: !68)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !796, file: !421, line: 837, type: !29)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !796, file: !421, line: 838, type: !29)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "docobj", scope: !796, file: !421, line: 839, type: !29)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !421, line: 853, type: !29)
!809 = distinct !DILexicalBlock(scope: !810, file: !421, line: 853, column: 12)
!810 = distinct !DILexicalBlock(scope: !811, file: !421, line: 848, column: 28)
!811 = distinct !DILexicalBlock(scope: !796, file: !421, line: 848, column: 9)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !813, file: !421, line: 860, type: !29)
!813 = distinct !DILexicalBlock(scope: !796, file: !421, line: 860, column: 8)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !421, line: 860, type: !29)
!815 = distinct !DILexicalBlock(scope: !816, file: !421, line: 860, column: 98)
!816 = distinct !DILexicalBlock(scope: !813, file: !421, line: 860, column: 64)
!817 = !DISubprogram(name: "PyErr_WriteUnraisable", scope: !421, file: !421, line: 868, type: !61, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_WriteUnraisable, variables: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !829, !831, !834, !836, !839, !841, !844, !846}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !817, file: !421, line: 868, type: !29)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !817, file: !421, line: 871, type: !29)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !817, file: !421, line: 871, type: !29)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !817, file: !421, line: 871, type: !29)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !817, file: !421, line: 871, type: !29)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "moduleName", scope: !817, file: !421, line: 872, type: !29)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "className", scope: !817, file: !421, line: 873, type: !76)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !827, file: !421, line: 899, type: !76)
!827 = distinct !DILexicalBlock(scope: !828, file: !421, line: 898, column: 34)
!828 = distinct !DILexicalBlock(scope: !817, file: !421, line: 898, column: 9)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !830, file: !421, line: 937, type: !29)
!830 = distinct !DILexicalBlock(scope: !817, file: !421, line: 937, column: 8)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !832, file: !421, line: 937, type: !29)
!832 = distinct !DILexicalBlock(scope: !833, file: !421, line: 937, column: 102)
!833 = distinct !DILexicalBlock(scope: !830, file: !421, line: 937, column: 68)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !835, file: !421, line: 938, type: !29)
!835 = distinct !DILexicalBlock(scope: !817, file: !421, line: 938, column: 8)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !421, line: 938, type: !29)
!837 = distinct !DILexicalBlock(scope: !838, file: !421, line: 938, column: 93)
!838 = distinct !DILexicalBlock(scope: !835, file: !421, line: 938, column: 59)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !840, file: !421, line: 939, type: !29)
!840 = distinct !DILexicalBlock(scope: !817, file: !421, line: 939, column: 8)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !842, file: !421, line: 939, type: !29)
!842 = distinct !DILexicalBlock(scope: !843, file: !421, line: 939, column: 93)
!843 = distinct !DILexicalBlock(scope: !840, file: !421, line: 939, column: 59)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !845, file: !421, line: 940, type: !29)
!845 = distinct !DILexicalBlock(scope: !817, file: !421, line: 940, column: 8)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !847, file: !421, line: 940, type: !29)
!847 = distinct !DILexicalBlock(scope: !848, file: !421, line: 940, column: 94)
!848 = distinct !DILexicalBlock(scope: !845, file: !421, line: 940, column: 60)
!849 = !DISubprogram(name: "PyErr_SyntaxLocation", scope: !421, file: !421, line: 948, type: !732, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @PyErr_SyntaxLocation, variables: !850)
!850 = !{!851, !852}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !849, file: !421, line: 948, type: !53)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !849, file: !421, line: 948, type: !68)
!853 = !DISubprogram(name: "PyErr_SyntaxLocationObject", scope: !421, file: !421, line: 959, type: !854, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i32, i32)* @PyErr_SyntaxLocationObject, variables: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !29, !68, !68}
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !868, !874, !880}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !853, file: !421, line: 959, type: !29)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !853, file: !421, line: 959, type: !68)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !853, file: !421, line: 959, type: !68)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !853, file: !421, line: 961, type: !29)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !853, file: !421, line: 961, type: !29)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !853, file: !421, line: 961, type: !29)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !853, file: !421, line: 961, type: !29)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !421, line: 980, type: !29)
!865 = distinct !DILexicalBlock(scope: !866, file: !421, line: 980, column: 12)
!866 = distinct !DILexicalBlock(scope: !867, file: !421, line: 977, column: 10)
!867 = distinct !DILexicalBlock(scope: !853, file: !421, line: 975, column: 9)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !869, file: !421, line: 989, type: !29)
!869 = distinct !DILexicalBlock(scope: !870, file: !421, line: 989, column: 16)
!870 = distinct !DILexicalBlock(scope: !871, file: !421, line: 986, column: 14)
!871 = distinct !DILexicalBlock(scope: !872, file: !421, line: 984, column: 13)
!872 = distinct !DILexicalBlock(scope: !873, file: !421, line: 982, column: 26)
!873 = distinct !DILexicalBlock(scope: !853, file: !421, line: 982, column: 9)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !421, line: 1000, type: !29)
!875 = distinct !DILexicalBlock(scope: !876, file: !421, line: 1000, column: 16)
!876 = distinct !DILexicalBlock(scope: !877, file: !421, line: 997, column: 18)
!877 = distinct !DILexicalBlock(scope: !878, file: !421, line: 997, column: 13)
!878 = distinct !DILexicalBlock(scope: !879, file: !421, line: 992, column: 33)
!879 = distinct !DILexicalBlock(scope: !853, file: !421, line: 992, column: 9)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !881, file: !421, line: 1012, type: !29)
!881 = distinct !DILexicalBlock(scope: !882, file: !421, line: 1012, column: 20)
!882 = distinct !DILexicalBlock(scope: !883, file: !421, line: 1009, column: 22)
!883 = distinct !DILexicalBlock(scope: !884, file: !421, line: 1009, column: 17)
!884 = distinct !DILexicalBlock(scope: !885, file: !421, line: 1007, column: 49)
!885 = distinct !DILexicalBlock(scope: !886, file: !421, line: 1007, column: 13)
!886 = distinct !DILexicalBlock(scope: !887, file: !421, line: 1006, column: 35)
!887 = distinct !DILexicalBlock(scope: !853, file: !421, line: 1006, column: 9)
!888 = !DISubprogram(name: "PyErr_SyntaxLocationEx", scope: !421, file: !421, line: 1027, type: !889, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32)* @PyErr_SyntaxLocationEx, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !53, !68, !68}
!891 = !{!892, !893, !894, !895, !896, !898}
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !888, file: !421, line: 1027, type: !53)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !888, file: !421, line: 1027, type: !68)
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !888, file: !421, line: 1027, type: !68)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !888, file: !421, line: 1029, type: !29)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !897, file: !421, line: 1038, type: !29)
!897 = distinct !DILexicalBlock(scope: !888, file: !421, line: 1038, column: 8)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !899, file: !421, line: 1038, type: !29)
!899 = distinct !DILexicalBlock(scope: !900, file: !421, line: 1038, column: 99)
!900 = distinct !DILexicalBlock(scope: !897, file: !421, line: 1038, column: 65)
!901 = !DISubprogram(name: "PyErr_ProgramText", scope: !421, file: !421, line: 1084, type: !902, isLocal: false, isDefinition: true, scopeLine: 1085, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @PyErr_ProgramText, variables: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!29, !53, !68}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !901, file: !421, line: 1084, type: !53)
!906 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !901, file: !421, line: 1084, type: !68)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !901, file: !421, line: 1086, type: !69)
!908 = !DISubprogram(name: "PyErr_ProgramTextObject", scope: !421, file: !421, line: 1094, type: !909, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32)* @PyErr_ProgramTextObject, variables: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!29, !29, !68}
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !908, file: !421, line: 1094, type: !29)
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !908, file: !421, line: 1094, type: !68)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !908, file: !421, line: 1096, type: !69)
!915 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !916, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !921)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918, !441}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!921 = !{!922, !923}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !915, file: !4, line: 59, type: !918)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !915, file: !4, line: 59, type: !441)
!924 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !925, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !441}
!927 = !{!928}
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !924, file: !4, line: 51, type: !441)
!929 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !925, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !930)
!930 = !{!931}
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !929, file: !4, line: 44, type: !441)
!932 = !DISubprogram(name: "err_programtext", scope: !421, file: !421, line: 1048, type: !933, isLocal: true, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._IO_FILE*, i32)* @err_programtext, variables: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!29, !69, !68}
!935 = !{!936, !937, !938, !939, !943, !947, !950}
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !932, file: !421, line: 1048, type: !69)
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !932, file: !421, line: 1048, type: !68)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !932, file: !421, line: 1050, type: !68)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linebuf", scope: !932, file: !421, line: 1051, type: !940)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8000, align: 8, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 1000)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pLastChar", scope: !944, file: !421, line: 1056, type: !76)
!944 = distinct !DILexicalBlock(scope: !945, file: !421, line: 1055, column: 34)
!945 = distinct !DILexicalBlock(scope: !946, file: !421, line: 1055, column: 5)
!946 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1055, column: 5)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !948, file: !421, line: 1071, type: !76)
!948 = distinct !DILexicalBlock(scope: !949, file: !421, line: 1070, column: 22)
!949 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1070, column: 9)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !948, file: !421, line: 1072, type: !29)
!951 = !{!952, !960, !961, !962, !963, !964, !965, !966, !967}
!952 = !DIGlobalVariable(name: "PyId___module__", scope: !817, file: !421, line: 870, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !31, line: 144, baseType: !954)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !31, line: 140, size: 192, align: 64, elements: !955)
!955 = !{!956, !958, !959}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !31, line: 141, baseType: !957, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !954, file: !31, line: 142, baseType: !53, size: 64, align: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !954, file: !31, line: 143, baseType: !29, size: 64, align: 64, offset: 128)
!960 = !DIGlobalVariable(name: "PyId_filename", scope: !853, file: !421, line: 962, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename)
!961 = !DIGlobalVariable(name: "PyId_lineno", scope: !853, file: !421, line: 963, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno)
!962 = !DIGlobalVariable(name: "PyId_msg", scope: !853, file: !421, line: 964, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg)
!963 = !DIGlobalVariable(name: "PyId_offset", scope: !853, file: !421, line: 965, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset)
!964 = !DIGlobalVariable(name: "PyId_print_file_and_line", scope: !853, file: !421, line: 966, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line)
!965 = !DIGlobalVariable(name: "PyId_text", scope: !853, file: !421, line: 967, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text)
!966 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !421, line: 24, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!967 = !DIGlobalVariable(name: "PyId_builtins", scope: !0, file: !421, line: 23, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_builtins)
!968 = !{i32 2, !"Dwarf Version", i32 4}
!969 = !{i32 2, !"Debug Info Version", i32 3}
!970 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!971 = !{!972, !972, i64 0}
!972 = !{!"any pointer", !973, i64 0}
!973 = !{!"omnipotent char", !974, i64 0}
!974 = !{!"Simple C/C++ TBAA"}
!975 = !DIExpression()
!976 = !DILocation(line: 28, column: 25, scope: !420)
!977 = !DILocation(line: 28, column: 41, scope: !420)
!978 = !DILocation(line: 28, column: 58, scope: !420)
!979 = !DILocation(line: 30, column: 5, scope: !420)
!980 = !DILocation(line: 30, column: 20, scope: !420)
!981 = !DILocation(line: 30, column: 63, scope: !430)
!982 = !DILocation(line: 30, column: 99, scope: !430)
!983 = !DILocation(line: 30, column: 137, scope: !430)
!984 = !DILocation(line: 30, column: 168, scope: !430)
!985 = !DILocation(line: 30, column: 176, scope: !430)
!986 = !DILocation(line: 30, column: 205, scope: !430)
!987 = !DILocation(line: 30, column: 222, scope: !430)
!988 = !DILocation(line: 30, column: 234, scope: !430)
!989 = !DILocation(line: 30, column: 242, scope: !430)
!990 = !DILocation(line: 30, column: 259, scope: !430)
!991 = !{!973, !973, i64 0}
!992 = !DILocation(line: 30, column: 319, scope: !430)
!993 = !DILocation(line: 30, column: 331, scope: !430)
!994 = !DILocation(line: 30, column: 293, scope: !430)
!995 = !DILocation(line: 30, column: 348, scope: !430)
!996 = !DILocation(line: 30, column: 450, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !421, discriminator: 4)
!998 = !DILexicalBlockFile(scope: !999, file: !421, discriminator: 3)
!999 = !DILexicalBlockFile(scope: !1000, file: !421, discriminator: 2)
!1000 = distinct !DILexicalBlock(scope: !430, file: !421, line: 30, column: 355)
!1001 = !DILocation(line: 30, column: 501, scope: !1000)
!1002 = !DILocation(line: 30, column: 517, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1000, file: !421, discriminator: 1)
!1004 = !DILocation(line: 30, column: 536, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !421, discriminator: 6)
!1006 = !DILexicalBlockFile(scope: !430, file: !421, discriminator: 5)
!1007 = !DILocation(line: 30, column: 535, scope: !430)
!1008 = !DILocation(line: 30, column: 533, scope: !430)
!1009 = !DILocation(line: 30, column: 558, scope: !430)
!1010 = !DILocation(line: 30, column: 660, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !421, discriminator: 10)
!1012 = !DILexicalBlockFile(scope: !1013, file: !421, discriminator: 9)
!1013 = !DILexicalBlockFile(scope: !1014, file: !421, discriminator: 8)
!1014 = distinct !DILexicalBlock(scope: !430, file: !421, line: 30, column: 565)
!1015 = !DILocation(line: 30, column: 711, scope: !1014)
!1016 = !DILocation(line: 30, column: 727, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1014, file: !421, discriminator: 7)
!1018 = !DILocation(line: 30, column: 738, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1020, file: !421, discriminator: 12)
!1020 = !DILexicalBlockFile(scope: !430, file: !421, discriminator: 11)
!1021 = !DILocation(line: 30, column: 734, scope: !1014)
!1022 = !DILocation(line: 30, column: 746, scope: !420)
!1023 = !DILocation(line: 30, column: 746, scope: !430)
!1024 = !DILocation(line: 30, column: 30, scope: !420)
!1025 = !DILocation(line: 31, column: 5, scope: !420)
!1026 = !DILocation(line: 31, column: 15, scope: !420)
!1027 = !DILocation(line: 31, column: 25, scope: !420)
!1028 = !DILocation(line: 31, column: 36, scope: !420)
!1029 = !DILocation(line: 33, column: 9, scope: !448)
!1030 = !DILocation(line: 33, column: 19, scope: !448)
!1031 = !DILocation(line: 33, column: 33, scope: !448)
!1032 = !DILocation(line: 33, column: 52, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !448, file: !421, discriminator: 1)
!1034 = !DILocation(line: 33, column: 65, scope: !448)
!1035 = !{!1036, !972, i64 8}
!1036 = !{!"_object", !1037, i64 0, !972, i64 8}
!1037 = !{!"long", !973, i64 0}
!1038 = !DILocation(line: 33, column: 74, scope: !448)
!1039 = !DILocation(line: 33, column: 9, scope: !420)
!1040 = !DILocation(line: 36, column: 9, scope: !447)
!1041 = !DILocation(line: 36, column: 14, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 1)
!1043 = !DILocation(line: 36, column: 24, scope: !446)
!1044 = !DILocation(line: 36, column: 54, scope: !446)
!1045 = !DILocation(line: 36, column: 74, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !446, file: !421, line: 36, column: 71)
!1047 = !DILocation(line: 36, column: 91, scope: !1046)
!1048 = !DILocation(line: 36, column: 71, scope: !1046)
!1049 = !{!1036, !1037, i64 0}
!1050 = !DILocation(line: 36, column: 101, scope: !1046)
!1051 = !DILocation(line: 36, column: 71, scope: !446)
!1052 = !DILocation(line: 36, column: 71, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 2)
!1054 = !DILocation(line: 36, column: 132, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1046, file: !421, discriminator: 3)
!1056 = !DILocation(line: 36, column: 150, scope: !1046)
!1057 = !DILocation(line: 36, column: 160, scope: !1046)
!1058 = !{!1059, !972, i64 48}
!1059 = !{!"_typeobject", !1060, i64 0, !972, i64 24, !1037, i64 32, !1037, i64 40, !972, i64 48, !972, i64 56, !972, i64 64, !972, i64 72, !972, i64 80, !972, i64 88, !972, i64 96, !972, i64 104, !972, i64 112, !972, i64 120, !972, i64 128, !972, i64 136, !972, i64 144, !972, i64 152, !972, i64 160, !1037, i64 168, !972, i64 176, !972, i64 184, !972, i64 192, !972, i64 200, !1037, i64 208, !972, i64 216, !972, i64 224, !972, i64 232, !972, i64 240, !972, i64 248, !972, i64 256, !972, i64 264, !972, i64 272, !972, i64 280, !1037, i64 288, !972, i64 296, !972, i64 304, !972, i64 312, !972, i64 320, !972, i64 328, !972, i64 336, !972, i64 344, !972, i64 352, !972, i64 360, !972, i64 368, !972, i64 376, !1061, i64 384, !972, i64 392}
!1060 = !{!"", !1036, i64 0, !1037, i64 16}
!1061 = !{!"int", !973, i64 0}
!1062 = !DILocation(line: 36, column: 185, scope: !1046)
!1063 = !DILocation(line: 36, column: 116, scope: !1046)
!1064 = !DILocation(line: 36, column: 204, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !447, file: !421, discriminator: 4)
!1066 = !DILocation(line: 36, column: 204, scope: !446)
!1067 = !DILocation(line: 36, column: 204, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 5)
!1069 = !DILocation(line: 37, column: 19, scope: !447)
!1070 = !DILocation(line: 38, column: 5, scope: !447)
!1071 = !DILocation(line: 42, column: 15, scope: !420)
!1072 = !DILocation(line: 42, column: 23, scope: !420)
!1073 = !{!1074, !972, i64 80}
!1074 = !{!"_ts", !972, i64 0, !972, i64 8, !972, i64 16, !972, i64 24, !1061, i64 32, !973, i64 36, !973, i64 37, !1061, i64 40, !1061, i64 44, !972, i64 48, !972, i64 56, !972, i64 64, !972, i64 72, !972, i64 80, !972, i64 88, !972, i64 96, !972, i64 104, !972, i64 112, !972, i64 120, !972, i64 128, !1061, i64 136, !972, i64 144, !1037, i64 152, !1061, i64 160, !972, i64 168, !972, i64 176, !972, i64 184}
!1075 = !DILocation(line: 42, column: 13, scope: !420)
!1076 = !DILocation(line: 43, column: 16, scope: !420)
!1077 = !DILocation(line: 43, column: 24, scope: !420)
!1078 = !{!1074, !972, i64 88}
!1079 = !DILocation(line: 43, column: 14, scope: !420)
!1080 = !DILocation(line: 44, column: 20, scope: !420)
!1081 = !DILocation(line: 44, column: 28, scope: !420)
!1082 = !{!1074, !972, i64 96}
!1083 = !DILocation(line: 44, column: 18, scope: !420)
!1084 = !DILocation(line: 46, column: 27, scope: !420)
!1085 = !DILocation(line: 46, column: 5, scope: !420)
!1086 = !DILocation(line: 46, column: 13, scope: !420)
!1087 = !DILocation(line: 46, column: 25, scope: !420)
!1088 = !DILocation(line: 47, column: 28, scope: !420)
!1089 = !DILocation(line: 47, column: 5, scope: !420)
!1090 = !DILocation(line: 47, column: 13, scope: !420)
!1091 = !DILocation(line: 47, column: 26, scope: !420)
!1092 = !DILocation(line: 48, column: 32, scope: !420)
!1093 = !DILocation(line: 48, column: 5, scope: !420)
!1094 = !DILocation(line: 48, column: 13, scope: !420)
!1095 = !DILocation(line: 48, column: 30, scope: !420)
!1096 = !DILocation(line: 50, column: 5, scope: !420)
!1097 = !DILocation(line: 50, column: 10, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !450, file: !421, discriminator: 1)
!1099 = !DILocation(line: 50, column: 20, scope: !450)
!1100 = !DILocation(line: 50, column: 51, scope: !450)
!1101 = !DILocation(line: 50, column: 65, scope: !453)
!1102 = !DILocation(line: 50, column: 81, scope: !453)
!1103 = !DILocation(line: 50, column: 65, scope: !450)
!1104 = !DILocation(line: 50, column: 96, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !453, file: !421, discriminator: 2)
!1106 = !DILocation(line: 50, column: 101, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 4)
!1108 = !DILocation(line: 50, column: 111, scope: !452)
!1109 = !DILocation(line: 50, column: 141, scope: !452)
!1110 = !DILocation(line: 50, column: 167, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !452, file: !421, line: 50, column: 164)
!1112 = !DILocation(line: 50, column: 184, scope: !1111)
!1113 = !DILocation(line: 50, column: 164, scope: !1111)
!1114 = !DILocation(line: 50, column: 194, scope: !1111)
!1115 = !DILocation(line: 50, column: 164, scope: !452)
!1116 = !DILocation(line: 50, column: 164, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 5)
!1118 = !DILocation(line: 50, column: 225, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1111, file: !421, discriminator: 6)
!1120 = !DILocation(line: 50, column: 243, scope: !1111)
!1121 = !DILocation(line: 50, column: 253, scope: !1111)
!1122 = !DILocation(line: 50, column: 278, scope: !1111)
!1123 = !DILocation(line: 50, column: 209, scope: !1111)
!1124 = !DILocation(line: 50, column: 297, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !453, file: !421, discriminator: 7)
!1126 = !DILocation(line: 50, column: 297, scope: !452)
!1127 = !DILocation(line: 50, column: 297, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 8)
!1129 = !DILocation(line: 50, column: 297, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 9)
!1131 = !DILocation(line: 50, column: 310, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !421, discriminator: 10)
!1133 = !DILexicalBlockFile(scope: !420, file: !421, discriminator: 3)
!1134 = !DILocation(line: 50, column: 310, scope: !450)
!1135 = !DILocation(line: 50, column: 310, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !450, file: !421, discriminator: 11)
!1137 = !DILocation(line: 51, column: 5, scope: !420)
!1138 = !DILocation(line: 51, column: 10, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !455, file: !421, discriminator: 1)
!1140 = !DILocation(line: 51, column: 20, scope: !455)
!1141 = !DILocation(line: 51, column: 51, scope: !455)
!1142 = !DILocation(line: 51, column: 66, scope: !458)
!1143 = !DILocation(line: 51, column: 82, scope: !458)
!1144 = !DILocation(line: 51, column: 66, scope: !455)
!1145 = !DILocation(line: 51, column: 97, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !458, file: !421, discriminator: 2)
!1147 = !DILocation(line: 51, column: 102, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 4)
!1149 = !DILocation(line: 51, column: 112, scope: !457)
!1150 = !DILocation(line: 51, column: 142, scope: !457)
!1151 = !DILocation(line: 51, column: 168, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !457, file: !421, line: 51, column: 165)
!1153 = !DILocation(line: 51, column: 185, scope: !1152)
!1154 = !DILocation(line: 51, column: 165, scope: !1152)
!1155 = !DILocation(line: 51, column: 195, scope: !1152)
!1156 = !DILocation(line: 51, column: 165, scope: !457)
!1157 = !DILocation(line: 51, column: 165, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 5)
!1159 = !DILocation(line: 51, column: 226, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1152, file: !421, discriminator: 6)
!1161 = !DILocation(line: 51, column: 244, scope: !1152)
!1162 = !DILocation(line: 51, column: 254, scope: !1152)
!1163 = !DILocation(line: 51, column: 279, scope: !1152)
!1164 = !DILocation(line: 51, column: 210, scope: !1152)
!1165 = !DILocation(line: 51, column: 298, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !458, file: !421, discriminator: 7)
!1167 = !DILocation(line: 51, column: 298, scope: !457)
!1168 = !DILocation(line: 51, column: 298, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 8)
!1170 = !DILocation(line: 51, column: 298, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 9)
!1172 = !DILocation(line: 51, column: 311, scope: !1132)
!1173 = !DILocation(line: 51, column: 311, scope: !455)
!1174 = !DILocation(line: 51, column: 311, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !455, file: !421, discriminator: 11)
!1176 = !DILocation(line: 52, column: 5, scope: !420)
!1177 = !DILocation(line: 52, column: 10, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !460, file: !421, discriminator: 1)
!1179 = !DILocation(line: 52, column: 20, scope: !460)
!1180 = !DILocation(line: 52, column: 51, scope: !460)
!1181 = !DILocation(line: 52, column: 70, scope: !463)
!1182 = !DILocation(line: 52, column: 86, scope: !463)
!1183 = !DILocation(line: 52, column: 70, scope: !460)
!1184 = !DILocation(line: 52, column: 101, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !463, file: !421, discriminator: 2)
!1186 = !DILocation(line: 52, column: 106, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 4)
!1188 = !DILocation(line: 52, column: 116, scope: !462)
!1189 = !DILocation(line: 52, column: 146, scope: !462)
!1190 = !DILocation(line: 52, column: 172, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !462, file: !421, line: 52, column: 169)
!1192 = !DILocation(line: 52, column: 189, scope: !1191)
!1193 = !DILocation(line: 52, column: 169, scope: !1191)
!1194 = !DILocation(line: 52, column: 199, scope: !1191)
!1195 = !DILocation(line: 52, column: 169, scope: !462)
!1196 = !DILocation(line: 52, column: 169, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 5)
!1198 = !DILocation(line: 52, column: 230, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1191, file: !421, discriminator: 6)
!1200 = !DILocation(line: 52, column: 248, scope: !1191)
!1201 = !DILocation(line: 52, column: 258, scope: !1191)
!1202 = !DILocation(line: 52, column: 283, scope: !1191)
!1203 = !DILocation(line: 52, column: 214, scope: !1191)
!1204 = !DILocation(line: 52, column: 302, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !463, file: !421, discriminator: 7)
!1206 = !DILocation(line: 52, column: 302, scope: !462)
!1207 = !DILocation(line: 52, column: 302, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 8)
!1209 = !DILocation(line: 52, column: 302, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 9)
!1211 = !DILocation(line: 52, column: 315, scope: !1132)
!1212 = !DILocation(line: 52, column: 315, scope: !460)
!1213 = !DILocation(line: 52, column: 315, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !460, file: !421, discriminator: 11)
!1215 = !DILocation(line: 53, column: 1, scope: !420)
!1216 = !DILocation(line: 59, column: 48, scope: !915)
!1217 = !DILocation(line: 59, column: 74, scope: !915)
!1218 = !DILocation(line: 61, column: 11, scope: !915)
!1219 = !DILocation(line: 62, column: 12, scope: !915)
!1220 = !DILocation(line: 67, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !915, file: !4, line: 62, column: 19)
!1222 = !DILocation(line: 70, column: 9, scope: !1221)
!1223 = !DILocation(line: 72, column: 12, scope: !915)
!1224 = !DILocation(line: 77, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !915, file: !4, line: 72, column: 19)
!1226 = !DILocation(line: 80, column: 9, scope: !1225)
!1227 = !DILocation(line: 82, column: 1, scope: !915)
!1228 = !DILocation(line: 51, column: 42, scope: !924)
!1229 = !DILocation(line: 53, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !924, file: !4, line: 53, column: 9)
!1231 = !DILocation(line: 53, column: 15, scope: !1230)
!1232 = !DILocation(line: 53, column: 9, scope: !924)
!1233 = !DILocation(line: 54, column: 9, scope: !1230)
!1234 = !{i32 154964}
!1235 = !DILocation(line: 55, column: 1, scope: !924)
!1236 = !DILocation(line: 44, column: 42, scope: !929)
!1237 = !DILocation(line: 46, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !929, file: !4, line: 46, column: 9)
!1239 = !DILocation(line: 46, column: 15, scope: !1238)
!1240 = !DILocation(line: 46, column: 9, scope: !929)
!1241 = !DILocation(line: 47, column: 9, scope: !1238)
!1242 = !{i32 154804}
!1243 = !DILocation(line: 48, column: 1, scope: !929)
!1244 = !DILocation(line: 56, column: 27, scope: !464)
!1245 = !DILocation(line: 56, column: 48, scope: !464)
!1246 = !DILocation(line: 58, column: 5, scope: !464)
!1247 = !DILocation(line: 58, column: 20, scope: !464)
!1248 = !DILocation(line: 58, column: 63, scope: !472)
!1249 = !DILocation(line: 58, column: 99, scope: !472)
!1250 = !DILocation(line: 58, column: 137, scope: !472)
!1251 = !DILocation(line: 58, column: 168, scope: !472)
!1252 = !DILocation(line: 58, column: 176, scope: !472)
!1253 = !DILocation(line: 58, column: 205, scope: !472)
!1254 = !DILocation(line: 58, column: 222, scope: !472)
!1255 = !DILocation(line: 58, column: 234, scope: !472)
!1256 = !DILocation(line: 58, column: 242, scope: !472)
!1257 = !DILocation(line: 58, column: 259, scope: !472)
!1258 = !DILocation(line: 58, column: 319, scope: !472)
!1259 = !DILocation(line: 58, column: 331, scope: !472)
!1260 = !DILocation(line: 58, column: 293, scope: !472)
!1261 = !DILocation(line: 58, column: 348, scope: !472)
!1262 = !DILocation(line: 58, column: 450, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !421, discriminator: 4)
!1264 = !DILexicalBlockFile(scope: !1265, file: !421, discriminator: 3)
!1265 = !DILexicalBlockFile(scope: !1266, file: !421, discriminator: 2)
!1266 = distinct !DILexicalBlock(scope: !472, file: !421, line: 58, column: 355)
!1267 = !DILocation(line: 58, column: 501, scope: !1266)
!1268 = !DILocation(line: 58, column: 517, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1266, file: !421, discriminator: 1)
!1270 = !DILocation(line: 58, column: 536, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !421, discriminator: 6)
!1272 = !DILexicalBlockFile(scope: !472, file: !421, discriminator: 5)
!1273 = !DILocation(line: 58, column: 535, scope: !472)
!1274 = !DILocation(line: 58, column: 533, scope: !472)
!1275 = !DILocation(line: 58, column: 558, scope: !472)
!1276 = !DILocation(line: 58, column: 660, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !421, discriminator: 10)
!1278 = !DILexicalBlockFile(scope: !1279, file: !421, discriminator: 9)
!1279 = !DILexicalBlockFile(scope: !1280, file: !421, discriminator: 8)
!1280 = distinct !DILexicalBlock(scope: !472, file: !421, line: 58, column: 565)
!1281 = !DILocation(line: 58, column: 711, scope: !1280)
!1282 = !DILocation(line: 58, column: 727, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1280, file: !421, discriminator: 7)
!1284 = !DILocation(line: 58, column: 738, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !421, discriminator: 12)
!1286 = !DILexicalBlockFile(scope: !472, file: !421, discriminator: 11)
!1287 = !DILocation(line: 58, column: 734, scope: !1280)
!1288 = !DILocation(line: 58, column: 746, scope: !464)
!1289 = !DILocation(line: 58, column: 746, scope: !472)
!1290 = !DILocation(line: 58, column: 30, scope: !464)
!1291 = !DILocation(line: 59, column: 5, scope: !464)
!1292 = !DILocation(line: 59, column: 15, scope: !464)
!1293 = !DILocation(line: 60, column: 5, scope: !464)
!1294 = !DILocation(line: 60, column: 15, scope: !464)
!1295 = !DILocation(line: 62, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !464, file: !421, line: 62, column: 9)
!1297 = !DILocation(line: 62, column: 19, scope: !1296)
!1298 = !DILocation(line: 62, column: 33, scope: !1296)
!1299 = !DILocation(line: 63, column: 29, scope: !1296)
!1300 = !DILocation(line: 63, column: 43, scope: !1296)
!1301 = !DILocation(line: 63, column: 54, scope: !1296)
!1302 = !{!1059, !1037, i64 168}
!1303 = !DILocation(line: 63, column: 63, scope: !1296)
!1304 = !DILocation(line: 63, column: 80, scope: !1296)
!1305 = !DILocation(line: 63, column: 86, scope: !1296)
!1306 = !DILocation(line: 63, column: 108, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1296, file: !421, discriminator: 1)
!1308 = !DILocation(line: 63, column: 92, scope: !1296)
!1309 = !DILocation(line: 63, column: 121, scope: !1296)
!1310 = !DILocation(line: 63, column: 130, scope: !1296)
!1311 = !DILocation(line: 63, column: 147, scope: !1296)
!1312 = !DILocation(line: 62, column: 9, scope: !464)
!1313 = !DILocation(line: 64, column: 22, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1296, file: !421, line: 63, column: 155)
!1315 = !DILocation(line: 66, column: 22, scope: !1314)
!1316 = !DILocation(line: 64, column: 9, scope: !1314)
!1317 = !DILocation(line: 67, column: 9, scope: !1314)
!1318 = !DILocation(line: 69, column: 5, scope: !464)
!1319 = !DILocation(line: 69, column: 10, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !479, file: !421, discriminator: 1)
!1321 = !DILocation(line: 69, column: 20, scope: !479)
!1322 = !DILocation(line: 69, column: 51, scope: !479)
!1323 = !DILocation(line: 69, column: 63, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !479, file: !421, line: 69, column: 63)
!1325 = !DILocation(line: 69, column: 79, scope: !1324)
!1326 = !DILocation(line: 69, column: 63, scope: !479)
!1327 = !DILocation(line: 69, column: 110, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1324, file: !421, discriminator: 2)
!1329 = !DILocation(line: 69, column: 129, scope: !1324)
!1330 = !DILocation(line: 69, column: 138, scope: !1324)
!1331 = !DILocation(line: 69, column: 94, scope: !1324)
!1332 = !DILocation(line: 69, column: 143, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !421, discriminator: 4)
!1334 = !DILexicalBlockFile(scope: !464, file: !421, discriminator: 3)
!1335 = !DILocation(line: 69, column: 143, scope: !479)
!1336 = !DILocation(line: 69, column: 143, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !479, file: !421, discriminator: 5)
!1338 = !DILocation(line: 70, column: 17, scope: !464)
!1339 = !DILocation(line: 70, column: 25, scope: !464)
!1340 = !{!1074, !972, i64 112}
!1341 = !DILocation(line: 70, column: 15, scope: !464)
!1342 = !DILocation(line: 71, column: 9, scope: !484)
!1343 = !DILocation(line: 71, column: 19, scope: !484)
!1344 = !DILocation(line: 71, column: 33, scope: !484)
!1345 = !DILocation(line: 71, column: 36, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !484, file: !421, discriminator: 1)
!1347 = !DILocation(line: 71, column: 46, scope: !484)
!1348 = !DILocation(line: 71, column: 9, scope: !464)
!1349 = !DILocation(line: 73, column: 25, scope: !483)
!1350 = !DILocation(line: 73, column: 38, scope: !483)
!1351 = !DILocation(line: 73, column: 47, scope: !483)
!1352 = !DILocation(line: 74, column: 13, scope: !482)
!1353 = !DILocation(line: 74, column: 19, scope: !482)
!1354 = !DILocation(line: 74, column: 33, scope: !482)
!1355 = !DILocation(line: 74, column: 41, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !482, file: !421, discriminator: 1)
!1357 = !DILocation(line: 74, column: 49, scope: !482)
!1358 = !DILocation(line: 74, column: 59, scope: !482)
!1359 = !DILocation(line: 74, column: 68, scope: !482)
!1360 = !DILocation(line: 74, column: 85, scope: !482)
!1361 = !DILocation(line: 74, column: 13, scope: !483)
!1362 = !DILocation(line: 76, column: 13, scope: !481)
!1363 = !DILocation(line: 76, column: 23, scope: !481)
!1364 = !DILocation(line: 76, column: 30, scope: !481)
!1365 = !DILocation(line: 82, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !481, file: !421, line: 82, column: 17)
!1367 = !DILocation(line: 82, column: 23, scope: !1366)
!1368 = !DILocation(line: 82, column: 37, scope: !1366)
!1369 = !DILocation(line: 82, column: 40, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1366, file: !421, discriminator: 1)
!1371 = !DILocation(line: 82, column: 46, scope: !1366)
!1372 = !DILocation(line: 82, column: 17, scope: !481)
!1373 = !DILocation(line: 83, column: 24, scope: !1366)
!1374 = !DILocation(line: 83, column: 22, scope: !1366)
!1375 = !DILocation(line: 83, column: 17, scope: !1366)
!1376 = !DILocation(line: 84, column: 39, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1366, file: !421, line: 84, column: 22)
!1378 = !DILocation(line: 84, column: 48, scope: !1377)
!1379 = !DILocation(line: 84, column: 59, scope: !1377)
!1380 = !DILocation(line: 84, column: 68, scope: !1377)
!1381 = !DILocation(line: 84, column: 85, scope: !1377)
!1382 = !DILocation(line: 84, column: 22, scope: !1366)
!1383 = !DILocation(line: 85, column: 33, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !421, line: 84, column: 92)
!1385 = !DILocation(line: 85, column: 42, scope: !1384)
!1386 = !DILocation(line: 85, column: 51, scope: !1384)
!1387 = !DILocation(line: 86, column: 24, scope: !1384)
!1388 = !DILocation(line: 86, column: 22, scope: !1384)
!1389 = !DILocation(line: 87, column: 13, scope: !1384)
!1390 = !DILocation(line: 89, column: 40, scope: !1377)
!1391 = !DILocation(line: 89, column: 24, scope: !1377)
!1392 = !DILocation(line: 89, column: 22, scope: !1377)
!1393 = !DILocation(line: 90, column: 27, scope: !481)
!1394 = !DILocation(line: 91, column: 47, scope: !481)
!1395 = !DILocation(line: 91, column: 58, scope: !481)
!1396 = !DILocation(line: 91, column: 17, scope: !481)
!1397 = !DILocation(line: 90, column: 27, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 1)
!1399 = !DILocation(line: 90, column: 25, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !421, discriminator: 3)
!1401 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 2)
!1402 = !DILocation(line: 92, column: 13, scope: !481)
!1403 = !DILocation(line: 92, column: 18, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !487, file: !421, discriminator: 1)
!1405 = !DILocation(line: 92, column: 28, scope: !487)
!1406 = !DILocation(line: 92, column: 59, scope: !487)
!1407 = !DILocation(line: 92, column: 70, scope: !490)
!1408 = !DILocation(line: 92, column: 86, scope: !490)
!1409 = !DILocation(line: 92, column: 70, scope: !487)
!1410 = !DILocation(line: 92, column: 101, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !490, file: !421, discriminator: 2)
!1412 = !DILocation(line: 92, column: 106, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 4)
!1414 = !DILocation(line: 92, column: 116, scope: !489)
!1415 = !DILocation(line: 92, column: 146, scope: !489)
!1416 = !DILocation(line: 92, column: 172, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !489, file: !421, line: 92, column: 169)
!1418 = !DILocation(line: 92, column: 189, scope: !1417)
!1419 = !DILocation(line: 92, column: 169, scope: !1417)
!1420 = !DILocation(line: 92, column: 199, scope: !1417)
!1421 = !DILocation(line: 92, column: 169, scope: !489)
!1422 = !DILocation(line: 92, column: 169, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 5)
!1424 = !DILocation(line: 92, column: 230, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1417, file: !421, discriminator: 6)
!1426 = !DILocation(line: 92, column: 248, scope: !1417)
!1427 = !DILocation(line: 92, column: 258, scope: !1417)
!1428 = !DILocation(line: 92, column: 283, scope: !1417)
!1429 = !DILocation(line: 92, column: 214, scope: !1417)
!1430 = !DILocation(line: 92, column: 302, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !490, file: !421, discriminator: 7)
!1432 = !DILocation(line: 92, column: 302, scope: !489)
!1433 = !DILocation(line: 92, column: 302, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 8)
!1435 = !DILocation(line: 92, column: 302, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 9)
!1437 = !DILocation(line: 92, column: 315, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1439, file: !421, discriminator: 10)
!1439 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 3)
!1440 = !DILocation(line: 92, column: 315, scope: !487)
!1441 = !DILocation(line: 92, column: 315, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !487, file: !421, discriminator: 11)
!1443 = !DILocation(line: 93, column: 13, scope: !481)
!1444 = !DILocation(line: 93, column: 18, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !492, file: !421, discriminator: 1)
!1446 = !DILocation(line: 93, column: 28, scope: !492)
!1447 = !DILocation(line: 93, column: 59, scope: !492)
!1448 = !DILocation(line: 93, column: 71, scope: !495)
!1449 = !DILocation(line: 93, column: 87, scope: !495)
!1450 = !DILocation(line: 93, column: 71, scope: !492)
!1451 = !DILocation(line: 93, column: 102, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !495, file: !421, discriminator: 2)
!1453 = !DILocation(line: 93, column: 107, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 4)
!1455 = !DILocation(line: 93, column: 117, scope: !494)
!1456 = !DILocation(line: 93, column: 147, scope: !494)
!1457 = !DILocation(line: 93, column: 173, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !494, file: !421, line: 93, column: 170)
!1459 = !DILocation(line: 93, column: 190, scope: !1458)
!1460 = !DILocation(line: 93, column: 170, scope: !1458)
!1461 = !DILocation(line: 93, column: 200, scope: !1458)
!1462 = !DILocation(line: 93, column: 170, scope: !494)
!1463 = !DILocation(line: 93, column: 170, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 5)
!1465 = !DILocation(line: 93, column: 231, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1458, file: !421, discriminator: 6)
!1467 = !DILocation(line: 93, column: 249, scope: !1458)
!1468 = !DILocation(line: 93, column: 259, scope: !1458)
!1469 = !DILocation(line: 93, column: 284, scope: !1458)
!1470 = !DILocation(line: 93, column: 215, scope: !1458)
!1471 = !DILocation(line: 93, column: 303, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !495, file: !421, discriminator: 7)
!1473 = !DILocation(line: 93, column: 303, scope: !494)
!1474 = !DILocation(line: 93, column: 303, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 8)
!1476 = !DILocation(line: 93, column: 303, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 9)
!1478 = !DILocation(line: 93, column: 316, scope: !1438)
!1479 = !DILocation(line: 93, column: 316, scope: !492)
!1480 = !DILocation(line: 93, column: 316, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !492, file: !421, discriminator: 11)
!1482 = !DILocation(line: 94, column: 17, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !481, file: !421, line: 94, column: 17)
!1484 = !DILocation(line: 94, column: 29, scope: !1483)
!1485 = !DILocation(line: 94, column: 17, scope: !481)
!1486 = !DILocation(line: 95, column: 17, scope: !1483)
!1487 = !DILocation(line: 96, column: 21, scope: !481)
!1488 = !DILocation(line: 96, column: 19, scope: !481)
!1489 = !DILocation(line: 97, column: 9, scope: !482)
!1490 = !DILocation(line: 97, column: 9, scope: !1356)
!1491 = !DILocation(line: 97, column: 9, scope: !481)
!1492 = !DILocation(line: 102, column: 13, scope: !498)
!1493 = !DILocation(line: 102, column: 26, scope: !498)
!1494 = !DILocation(line: 102, column: 23, scope: !498)
!1495 = !DILocation(line: 102, column: 13, scope: !483)
!1496 = !DILocation(line: 103, column: 13, scope: !497)
!1497 = !DILocation(line: 103, column: 23, scope: !497)
!1498 = !DILocation(line: 103, column: 27, scope: !497)
!1499 = !DILocation(line: 103, column: 39, scope: !497)
!1500 = !DILocation(line: 104, column: 13, scope: !497)
!1501 = !DILocation(line: 104, column: 54, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !421, discriminator: 2)
!1503 = !DILexicalBlockFile(scope: !497, file: !421, discriminator: 1)
!1504 = !DILocation(line: 104, column: 31, scope: !497)
!1505 = !DILocation(line: 104, column: 29, scope: !497)
!1506 = !DILocation(line: 105, column: 17, scope: !502)
!1507 = !DILocation(line: 105, column: 22, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 1)
!1509 = !DILocation(line: 105, column: 32, scope: !501)
!1510 = !DILocation(line: 105, column: 62, scope: !501)
!1511 = !DILocation(line: 105, column: 80, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !501, file: !421, line: 105, column: 77)
!1513 = !DILocation(line: 105, column: 97, scope: !1512)
!1514 = !DILocation(line: 105, column: 77, scope: !1512)
!1515 = !DILocation(line: 105, column: 107, scope: !1512)
!1516 = !DILocation(line: 105, column: 77, scope: !501)
!1517 = !DILocation(line: 105, column: 77, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 2)
!1519 = !DILocation(line: 105, column: 138, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1512, file: !421, discriminator: 3)
!1521 = !DILocation(line: 105, column: 156, scope: !1512)
!1522 = !DILocation(line: 105, column: 166, scope: !1512)
!1523 = !DILocation(line: 105, column: 191, scope: !1512)
!1524 = !DILocation(line: 105, column: 122, scope: !1512)
!1525 = !DILocation(line: 105, column: 210, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !502, file: !421, discriminator: 4)
!1527 = !DILocation(line: 105, column: 210, scope: !501)
!1528 = !DILocation(line: 105, column: 210, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 5)
!1530 = !DILocation(line: 106, column: 21, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !502, file: !421, line: 106, column: 21)
!1532 = !DILocation(line: 106, column: 32, scope: !1531)
!1533 = !DILocation(line: 106, column: 29, scope: !1531)
!1534 = !DILocation(line: 106, column: 21, scope: !502)
!1535 = !DILocation(line: 107, column: 44, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !421, line: 106, column: 39)
!1537 = !DILocation(line: 107, column: 21, scope: !1536)
!1538 = !DILocation(line: 108, column: 21, scope: !1536)
!1539 = !DILocation(line: 110, column: 21, scope: !502)
!1540 = !DILocation(line: 110, column: 19, scope: !502)
!1541 = !DILocation(line: 112, column: 36, scope: !497)
!1542 = !DILocation(line: 112, column: 43, scope: !497)
!1543 = !DILocation(line: 112, column: 13, scope: !497)
!1544 = !DILocation(line: 113, column: 9, scope: !498)
!1545 = !DILocation(line: 113, column: 9, scope: !497)
!1546 = !DILocation(line: 114, column: 13, scope: !505)
!1547 = !DILocation(line: 114, column: 18, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 1)
!1549 = !DILocation(line: 114, column: 28, scope: !504)
!1550 = !DILocation(line: 114, column: 58, scope: !504)
!1551 = !DILocation(line: 114, column: 78, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !504, file: !421, line: 114, column: 75)
!1553 = !DILocation(line: 114, column: 95, scope: !1552)
!1554 = !DILocation(line: 114, column: 75, scope: !1552)
!1555 = !DILocation(line: 114, column: 105, scope: !1552)
!1556 = !DILocation(line: 114, column: 75, scope: !504)
!1557 = !DILocation(line: 114, column: 75, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 2)
!1559 = !DILocation(line: 114, column: 136, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1552, file: !421, discriminator: 3)
!1561 = !DILocation(line: 114, column: 154, scope: !1552)
!1562 = !DILocation(line: 114, column: 164, scope: !1552)
!1563 = !DILocation(line: 114, column: 189, scope: !1552)
!1564 = !DILocation(line: 114, column: 120, scope: !1552)
!1565 = !DILocation(line: 114, column: 208, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !505, file: !421, discriminator: 4)
!1567 = !DILocation(line: 114, column: 208, scope: !504)
!1568 = !DILocation(line: 114, column: 208, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 5)
!1570 = !DILocation(line: 116, column: 5, scope: !483)
!1571 = !DILocation(line: 117, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !464, file: !421, line: 117, column: 9)
!1573 = !DILocation(line: 117, column: 15, scope: !1572)
!1574 = !DILocation(line: 117, column: 29, scope: !1572)
!1575 = !DILocation(line: 117, column: 36, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1572, file: !421, discriminator: 1)
!1577 = !DILocation(line: 117, column: 44, scope: !1572)
!1578 = !DILocation(line: 117, column: 54, scope: !1572)
!1579 = !DILocation(line: 117, column: 63, scope: !1572)
!1580 = !DILocation(line: 117, column: 80, scope: !1572)
!1581 = !DILocation(line: 117, column: 9, scope: !464)
!1582 = !DILocation(line: 118, column: 39, scope: !1572)
!1583 = !DILocation(line: 118, column: 14, scope: !1572)
!1584 = !DILocation(line: 118, column: 12, scope: !1572)
!1585 = !DILocation(line: 118, column: 9, scope: !1572)
!1586 = !DILocation(line: 119, column: 5, scope: !464)
!1587 = !DILocation(line: 119, column: 10, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !507, file: !421, discriminator: 1)
!1589 = !DILocation(line: 119, column: 20, scope: !507)
!1590 = !DILocation(line: 119, column: 51, scope: !507)
!1591 = !DILocation(line: 119, column: 67, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !507, file: !421, line: 119, column: 67)
!1593 = !DILocation(line: 119, column: 83, scope: !1592)
!1594 = !DILocation(line: 119, column: 67, scope: !507)
!1595 = !DILocation(line: 119, column: 114, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1592, file: !421, discriminator: 2)
!1597 = !DILocation(line: 119, column: 133, scope: !1592)
!1598 = !DILocation(line: 119, column: 142, scope: !1592)
!1599 = !DILocation(line: 119, column: 98, scope: !1592)
!1600 = !DILocation(line: 119, column: 147, scope: !1333)
!1601 = !DILocation(line: 119, column: 147, scope: !507)
!1602 = !DILocation(line: 119, column: 147, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !507, file: !421, discriminator: 5)
!1604 = !DILocation(line: 120, column: 19, scope: !464)
!1605 = !DILocation(line: 120, column: 30, scope: !464)
!1606 = !DILocation(line: 120, column: 37, scope: !464)
!1607 = !DILocation(line: 120, column: 5, scope: !464)
!1608 = !DILocation(line: 121, column: 1, scope: !464)
!1609 = !DILocation(line: 121, column: 1, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !464, file: !421, discriminator: 1)
!1611 = !DILocation(line: 754, column: 24, scope: !738)
!1612 = !DILocation(line: 754, column: 47, scope: !738)
!1613 = !DILocation(line: 756, column: 5, scope: !738)
!1614 = !DILocation(line: 756, column: 13, scope: !738)
!1615 = !DILocation(line: 757, column: 5, scope: !738)
!1616 = !DILocation(line: 757, column: 15, scope: !738)
!1617 = !DILocation(line: 760, column: 24, scope: !738)
!1618 = !DILocation(line: 760, column: 5, scope: !738)
!1619 = !DILocation(line: 771, column: 36, scope: !738)
!1620 = !DILocation(line: 771, column: 44, scope: !738)
!1621 = !DILocation(line: 771, column: 14, scope: !738)
!1622 = !DILocation(line: 771, column: 12, scope: !738)
!1623 = !DILocation(line: 772, column: 21, scope: !738)
!1624 = !DILocation(line: 772, column: 32, scope: !738)
!1625 = !DILocation(line: 772, column: 5, scope: !738)
!1626 = !DILocation(line: 773, column: 5, scope: !738)
!1627 = !DILocation(line: 773, column: 10, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !759, file: !421, discriminator: 1)
!1629 = !DILocation(line: 773, column: 20, scope: !759)
!1630 = !DILocation(line: 773, column: 51, scope: !759)
!1631 = !DILocation(line: 773, column: 64, scope: !762)
!1632 = !DILocation(line: 773, column: 80, scope: !762)
!1633 = !DILocation(line: 773, column: 64, scope: !759)
!1634 = !DILocation(line: 773, column: 95, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !762, file: !421, discriminator: 2)
!1636 = !DILocation(line: 773, column: 100, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 4)
!1638 = !DILocation(line: 773, column: 110, scope: !761)
!1639 = !DILocation(line: 773, column: 140, scope: !761)
!1640 = !DILocation(line: 773, column: 166, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !761, file: !421, line: 773, column: 163)
!1642 = !DILocation(line: 773, column: 183, scope: !1641)
!1643 = !DILocation(line: 773, column: 163, scope: !1641)
!1644 = !DILocation(line: 773, column: 193, scope: !1641)
!1645 = !DILocation(line: 773, column: 163, scope: !761)
!1646 = !DILocation(line: 773, column: 163, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 5)
!1648 = !DILocation(line: 773, column: 224, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1641, file: !421, discriminator: 6)
!1650 = !DILocation(line: 773, column: 242, scope: !1641)
!1651 = !DILocation(line: 773, column: 252, scope: !1641)
!1652 = !DILocation(line: 773, column: 277, scope: !1641)
!1653 = !DILocation(line: 773, column: 208, scope: !1641)
!1654 = !DILocation(line: 773, column: 296, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !762, file: !421, discriminator: 7)
!1656 = !DILocation(line: 773, column: 296, scope: !761)
!1657 = !DILocation(line: 773, column: 296, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 8)
!1659 = !DILocation(line: 773, column: 296, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 9)
!1661 = !DILocation(line: 773, column: 309, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !421, discriminator: 10)
!1663 = !DILexicalBlockFile(scope: !738, file: !421, discriminator: 3)
!1664 = !DILocation(line: 773, column: 309, scope: !759)
!1665 = !DILocation(line: 773, column: 309, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !759, file: !421, discriminator: 11)
!1667 = !DILocation(line: 774, column: 22, scope: !738)
!1668 = !DILocation(line: 774, column: 5, scope: !738)
!1669 = !DILocation(line: 776, column: 1, scope: !738)
!1670 = !DILocation(line: 775, column: 5, scope: !738)
!1671 = !DILocation(line: 127, column: 30, scope: !508)
!1672 = !DILocation(line: 129, column: 5, scope: !508)
!1673 = !DILocation(line: 129, column: 15, scope: !508)
!1674 = !DILocation(line: 130, column: 27, scope: !508)
!1675 = !DILocation(line: 130, column: 11, scope: !508)
!1676 = !DILocation(line: 130, column: 9, scope: !508)
!1677 = !DILocation(line: 131, column: 10, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !508, file: !421, line: 131, column: 9)
!1679 = !DILocation(line: 131, column: 9, scope: !508)
!1680 = !DILocation(line: 132, column: 9, scope: !1678)
!1681 = !DILocation(line: 133, column: 21, scope: !508)
!1682 = !DILocation(line: 133, column: 37, scope: !508)
!1683 = !DILocation(line: 133, column: 5, scope: !508)
!1684 = !DILocation(line: 134, column: 5, scope: !508)
!1685 = !DILocation(line: 134, column: 10, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 1)
!1687 = !DILocation(line: 134, column: 20, scope: !513)
!1688 = !DILocation(line: 134, column: 50, scope: !513)
!1689 = !DILocation(line: 134, column: 64, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !513, file: !421, line: 134, column: 61)
!1691 = !DILocation(line: 134, column: 81, scope: !1690)
!1692 = !DILocation(line: 134, column: 61, scope: !1690)
!1693 = !DILocation(line: 134, column: 91, scope: !1690)
!1694 = !DILocation(line: 134, column: 61, scope: !513)
!1695 = !DILocation(line: 134, column: 61, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 2)
!1697 = !DILocation(line: 134, column: 122, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1690, file: !421, discriminator: 3)
!1699 = !DILocation(line: 134, column: 140, scope: !1690)
!1700 = !DILocation(line: 134, column: 150, scope: !1690)
!1701 = !DILocation(line: 134, column: 175, scope: !1690)
!1702 = !DILocation(line: 134, column: 106, scope: !1690)
!1703 = !DILocation(line: 134, column: 194, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !508, file: !421, discriminator: 4)
!1705 = !DILocation(line: 134, column: 194, scope: !513)
!1706 = !DILocation(line: 134, column: 194, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 5)
!1708 = !DILocation(line: 135, column: 1, scope: !508)
!1709 = !DILocation(line: 135, column: 1, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !508, file: !421, discriminator: 1)
!1711 = !DILocation(line: 138, column: 25, scope: !514)
!1712 = !DILocation(line: 140, column: 21, scope: !514)
!1713 = !DILocation(line: 140, column: 5, scope: !514)
!1714 = !DILocation(line: 141, column: 1, scope: !514)
!1715 = !DILocation(line: 144, column: 27, scope: !517)
!1716 = !DILocation(line: 144, column: 50, scope: !517)
!1717 = !DILocation(line: 146, column: 5, scope: !517)
!1718 = !DILocation(line: 146, column: 15, scope: !517)
!1719 = !DILocation(line: 146, column: 44, scope: !517)
!1720 = !DILocation(line: 146, column: 23, scope: !517)
!1721 = !DILocation(line: 147, column: 21, scope: !517)
!1722 = !DILocation(line: 147, column: 32, scope: !517)
!1723 = !DILocation(line: 147, column: 5, scope: !517)
!1724 = !DILocation(line: 148, column: 5, scope: !517)
!1725 = !DILocation(line: 148, column: 10, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !525, file: !421, discriminator: 1)
!1727 = !DILocation(line: 148, column: 20, scope: !525)
!1728 = !DILocation(line: 148, column: 51, scope: !525)
!1729 = !DILocation(line: 148, column: 63, scope: !528)
!1730 = !DILocation(line: 148, column: 79, scope: !528)
!1731 = !DILocation(line: 148, column: 63, scope: !525)
!1732 = !DILocation(line: 148, column: 94, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !528, file: !421, discriminator: 2)
!1734 = !DILocation(line: 148, column: 99, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 4)
!1736 = !DILocation(line: 148, column: 109, scope: !527)
!1737 = !DILocation(line: 148, column: 139, scope: !527)
!1738 = !DILocation(line: 148, column: 165, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !527, file: !421, line: 148, column: 162)
!1740 = !DILocation(line: 148, column: 182, scope: !1739)
!1741 = !DILocation(line: 148, column: 162, scope: !1739)
!1742 = !DILocation(line: 148, column: 192, scope: !1739)
!1743 = !DILocation(line: 148, column: 162, scope: !527)
!1744 = !DILocation(line: 148, column: 162, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 5)
!1746 = !DILocation(line: 148, column: 223, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1739, file: !421, discriminator: 6)
!1748 = !DILocation(line: 148, column: 241, scope: !1739)
!1749 = !DILocation(line: 148, column: 251, scope: !1739)
!1750 = !DILocation(line: 148, column: 276, scope: !1739)
!1751 = !DILocation(line: 148, column: 207, scope: !1739)
!1752 = !DILocation(line: 148, column: 295, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !528, file: !421, discriminator: 7)
!1754 = !DILocation(line: 148, column: 295, scope: !527)
!1755 = !DILocation(line: 148, column: 295, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 8)
!1757 = !DILocation(line: 148, column: 295, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 9)
!1759 = !DILocation(line: 148, column: 308, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !421, discriminator: 10)
!1761 = !DILexicalBlockFile(scope: !517, file: !421, discriminator: 3)
!1762 = !DILocation(line: 148, column: 308, scope: !525)
!1763 = !DILocation(line: 148, column: 308, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !525, file: !421, discriminator: 11)
!1765 = !DILocation(line: 149, column: 1, scope: !517)
!1766 = !DILocation(line: 159, column: 5, scope: !529)
!1767 = !DILocation(line: 159, column: 20, scope: !529)
!1768 = !DILocation(line: 160, column: 43, scope: !535)
!1769 = !DILocation(line: 160, column: 79, scope: !535)
!1770 = !DILocation(line: 160, column: 117, scope: !535)
!1771 = !DILocation(line: 160, column: 148, scope: !535)
!1772 = !DILocation(line: 160, column: 156, scope: !535)
!1773 = !DILocation(line: 160, column: 185, scope: !535)
!1774 = !DILocation(line: 160, column: 202, scope: !535)
!1775 = !DILocation(line: 160, column: 214, scope: !535)
!1776 = !DILocation(line: 160, column: 222, scope: !535)
!1777 = !DILocation(line: 160, column: 239, scope: !535)
!1778 = !DILocation(line: 160, column: 299, scope: !535)
!1779 = !DILocation(line: 160, column: 311, scope: !535)
!1780 = !DILocation(line: 160, column: 273, scope: !535)
!1781 = !DILocation(line: 160, column: 328, scope: !535)
!1782 = !DILocation(line: 160, column: 430, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !421, discriminator: 4)
!1784 = !DILexicalBlockFile(scope: !1785, file: !421, discriminator: 3)
!1785 = !DILexicalBlockFile(scope: !1786, file: !421, discriminator: 2)
!1786 = distinct !DILexicalBlock(scope: !535, file: !421, line: 160, column: 335)
!1787 = !DILocation(line: 160, column: 481, scope: !1786)
!1788 = !DILocation(line: 160, column: 497, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1786, file: !421, discriminator: 1)
!1790 = !DILocation(line: 160, column: 516, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1792, file: !421, discriminator: 6)
!1792 = !DILexicalBlockFile(scope: !535, file: !421, discriminator: 5)
!1793 = !DILocation(line: 160, column: 515, scope: !535)
!1794 = !DILocation(line: 160, column: 513, scope: !535)
!1795 = !DILocation(line: 160, column: 538, scope: !535)
!1796 = !DILocation(line: 160, column: 640, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1798, file: !421, discriminator: 10)
!1798 = !DILexicalBlockFile(scope: !1799, file: !421, discriminator: 9)
!1799 = !DILexicalBlockFile(scope: !1800, file: !421, discriminator: 8)
!1800 = distinct !DILexicalBlock(scope: !535, file: !421, line: 160, column: 545)
!1801 = !DILocation(line: 160, column: 691, scope: !1800)
!1802 = !DILocation(line: 160, column: 707, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1800, file: !421, discriminator: 7)
!1804 = !DILocation(line: 160, column: 718, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1806, file: !421, discriminator: 12)
!1806 = !DILexicalBlockFile(scope: !535, file: !421, discriminator: 11)
!1807 = !DILocation(line: 160, column: 714, scope: !1800)
!1808 = !DILocation(line: 160, column: 726, scope: !529)
!1809 = !DILocation(line: 160, column: 726, scope: !535)
!1810 = !DILocation(line: 160, column: 10, scope: !529)
!1811 = !DILocation(line: 162, column: 12, scope: !529)
!1812 = !DILocation(line: 162, column: 19, scope: !529)
!1813 = !DILocation(line: 162, column: 12, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !529, file: !421, discriminator: 1)
!1815 = !DILocation(line: 162, column: 48, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !529, file: !421, discriminator: 2)
!1817 = !DILocation(line: 162, column: 56, scope: !529)
!1818 = !DILocation(line: 163, column: 1, scope: !529)
!1819 = !DILocation(line: 162, column: 5, scope: !529)
!1820 = !DILocation(line: 167, column: 39, scope: !539)
!1821 = !DILocation(line: 167, column: 54, scope: !539)
!1822 = !DILocation(line: 169, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !539, file: !421, line: 169, column: 9)
!1824 = !DILocation(line: 169, column: 13, scope: !1823)
!1825 = !DILocation(line: 169, column: 27, scope: !1823)
!1826 = !DILocation(line: 169, column: 30, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1823, file: !421, discriminator: 1)
!1828 = !DILocation(line: 169, column: 34, scope: !1823)
!1829 = !DILocation(line: 169, column: 9, scope: !539)
!1830 = !DILocation(line: 171, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !421, line: 169, column: 49)
!1832 = !DILocation(line: 173, column: 26, scope: !545)
!1833 = !DILocation(line: 173, column: 33, scope: !545)
!1834 = !DILocation(line: 173, column: 44, scope: !545)
!1835 = !DILocation(line: 173, column: 53, scope: !545)
!1836 = !DILocation(line: 173, column: 70, scope: !545)
!1837 = !DILocation(line: 173, column: 9, scope: !539)
!1838 = !DILocation(line: 174, column: 9, scope: !544)
!1839 = !DILocation(line: 174, column: 20, scope: !544)
!1840 = !DILocation(line: 174, column: 23, scope: !544)
!1841 = !DILocation(line: 175, column: 26, scope: !544)
!1842 = !DILocation(line: 175, column: 13, scope: !544)
!1843 = !DILocation(line: 175, column: 11, scope: !544)
!1844 = !{!1037, !1037, i64 0}
!1845 = !DILocation(line: 176, column: 16, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !544, file: !421, line: 176, column: 9)
!1847 = !DILocation(line: 176, column: 14, scope: !1846)
!1848 = !DILocation(line: 176, column: 21, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1850, file: !421, discriminator: 2)
!1850 = !DILexicalBlockFile(scope: !1851, file: !421, discriminator: 1)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !421, line: 176, column: 9)
!1852 = !DILocation(line: 176, column: 25, scope: !1851)
!1853 = !DILocation(line: 176, column: 23, scope: !1851)
!1854 = !DILocation(line: 176, column: 9, scope: !1846)
!1855 = !DILocation(line: 179, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !421, line: 178, column: 18)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !421, line: 176, column: 33)
!1858 = !DILocation(line: 179, column: 58, scope: !1856)
!1859 = !DILocation(line: 179, column: 43, scope: !1856)
!1860 = !DILocation(line: 179, column: 25, scope: !1856)
!1861 = !DILocation(line: 179, column: 50, scope: !1856)
!1862 = !DILocation(line: 179, column: 24, scope: !1856)
!1863 = !DILocation(line: 178, column: 18, scope: !1856)
!1864 = !DILocation(line: 178, column: 18, scope: !1857)
!1865 = !DILocation(line: 181, column: 18, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !421, line: 180, column: 14)
!1867 = !DILocation(line: 183, column: 9, scope: !1857)
!1868 = !DILocation(line: 176, column: 29, scope: !1851)
!1869 = !DILocation(line: 176, column: 9, scope: !1851)
!1870 = !DILocation(line: 184, column: 9, scope: !544)
!1871 = !DILocation(line: 185, column: 5, scope: !545)
!1872 = !DILocation(line: 187, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !539, file: !421, line: 187, column: 9)
!1874 = !DILocation(line: 187, column: 19, scope: !1873)
!1875 = !DILocation(line: 187, column: 29, scope: !1873)
!1876 = !DILocation(line: 187, column: 38, scope: !1873)
!1877 = !DILocation(line: 187, column: 55, scope: !1873)
!1878 = !DILocation(line: 187, column: 9, scope: !539)
!1879 = !DILocation(line: 188, column: 29, scope: !1873)
!1880 = !DILocation(line: 188, column: 35, scope: !1873)
!1881 = !DILocation(line: 188, column: 16, scope: !1873)
!1882 = !DILocation(line: 188, column: 13, scope: !1873)
!1883 = !DILocation(line: 188, column: 9, scope: !1873)
!1884 = !DILocation(line: 190, column: 28, scope: !549)
!1885 = !DILocation(line: 190, column: 36, scope: !549)
!1886 = !DILocation(line: 190, column: 47, scope: !549)
!1887 = !DILocation(line: 190, column: 56, scope: !549)
!1888 = !DILocation(line: 190, column: 73, scope: !549)
!1889 = !DILocation(line: 190, column: 79, scope: !549)
!1890 = !DILocation(line: 190, column: 101, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 1)
!1892 = !DILocation(line: 190, column: 85, scope: !549)
!1893 = !DILocation(line: 190, column: 108, scope: !549)
!1894 = !DILocation(line: 190, column: 117, scope: !549)
!1895 = !DILocation(line: 190, column: 134, scope: !549)
!1896 = !DILocation(line: 190, column: 141, scope: !549)
!1897 = !DILocation(line: 190, column: 163, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 2)
!1899 = !DILocation(line: 190, column: 171, scope: !549)
!1900 = !DILocation(line: 190, column: 182, scope: !549)
!1901 = !DILocation(line: 190, column: 191, scope: !549)
!1902 = !DILocation(line: 190, column: 208, scope: !549)
!1903 = !DILocation(line: 190, column: 214, scope: !549)
!1904 = !DILocation(line: 190, column: 236, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 3)
!1906 = !DILocation(line: 190, column: 220, scope: !549)
!1907 = !DILocation(line: 190, column: 243, scope: !549)
!1908 = !DILocation(line: 190, column: 252, scope: !549)
!1909 = !DILocation(line: 190, column: 269, scope: !549)
!1910 = !DILocation(line: 190, column: 9, scope: !539)
!1911 = !DILocation(line: 191, column: 9, scope: !548)
!1912 = !DILocation(line: 191, column: 13, scope: !548)
!1913 = !{!1061, !1061, i64 0}
!1914 = !DILocation(line: 192, column: 9, scope: !548)
!1915 = !DILocation(line: 192, column: 19, scope: !548)
!1916 = !DILocation(line: 192, column: 31, scope: !548)
!1917 = !DILocation(line: 192, column: 39, scope: !548)
!1918 = !DILocation(line: 193, column: 9, scope: !548)
!1919 = !DILocation(line: 196, column: 48, scope: !548)
!1920 = !DILocation(line: 196, column: 32, scope: !548)
!1921 = !DILocation(line: 196, column: 69, scope: !548)
!1922 = !DILocation(line: 196, column: 53, scope: !548)
!1923 = !DILocation(line: 196, column: 15, scope: !548)
!1924 = !DILocation(line: 196, column: 13, scope: !548)
!1925 = !DILocation(line: 198, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !548, file: !421, line: 198, column: 13)
!1927 = !DILocation(line: 198, column: 17, scope: !1926)
!1928 = !DILocation(line: 198, column: 13, scope: !548)
!1929 = !DILocation(line: 199, column: 35, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !421, line: 198, column: 24)
!1931 = !DILocation(line: 199, column: 13, scope: !1930)
!1932 = !DILocation(line: 200, column: 17, scope: !1930)
!1933 = !DILocation(line: 201, column: 9, scope: !1930)
!1934 = !DILocation(line: 202, column: 23, scope: !548)
!1935 = !DILocation(line: 202, column: 34, scope: !548)
!1936 = !DILocation(line: 202, column: 41, scope: !548)
!1937 = !DILocation(line: 202, column: 9, scope: !548)
!1938 = !DILocation(line: 203, column: 16, scope: !548)
!1939 = !DILocation(line: 203, column: 9, scope: !548)
!1940 = !DILocation(line: 204, column: 5, scope: !549)
!1941 = !DILocation(line: 206, column: 12, scope: !539)
!1942 = !DILocation(line: 206, column: 19, scope: !539)
!1943 = !DILocation(line: 206, column: 16, scope: !539)
!1944 = !DILocation(line: 206, column: 5, scope: !539)
!1945 = !DILocation(line: 207, column: 1, scope: !539)
!1946 = !DILocation(line: 335, column: 24, scope: !604)
!1947 = !DILocation(line: 335, column: 43, scope: !604)
!1948 = !DILocation(line: 335, column: 63, scope: !604)
!1949 = !DILocation(line: 337, column: 5, scope: !604)
!1950 = !DILocation(line: 337, column: 20, scope: !604)
!1951 = !DILocation(line: 337, column: 63, scope: !611)
!1952 = !DILocation(line: 337, column: 99, scope: !611)
!1953 = !DILocation(line: 337, column: 137, scope: !611)
!1954 = !DILocation(line: 337, column: 168, scope: !611)
!1955 = !DILocation(line: 337, column: 176, scope: !611)
!1956 = !DILocation(line: 337, column: 205, scope: !611)
!1957 = !DILocation(line: 337, column: 222, scope: !611)
!1958 = !DILocation(line: 337, column: 234, scope: !611)
!1959 = !DILocation(line: 337, column: 242, scope: !611)
!1960 = !DILocation(line: 337, column: 259, scope: !611)
!1961 = !DILocation(line: 337, column: 319, scope: !611)
!1962 = !DILocation(line: 337, column: 331, scope: !611)
!1963 = !DILocation(line: 337, column: 293, scope: !611)
!1964 = !DILocation(line: 337, column: 348, scope: !611)
!1965 = !DILocation(line: 337, column: 450, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1967, file: !421, discriminator: 4)
!1967 = !DILexicalBlockFile(scope: !1968, file: !421, discriminator: 3)
!1968 = !DILexicalBlockFile(scope: !1969, file: !421, discriminator: 2)
!1969 = distinct !DILexicalBlock(scope: !611, file: !421, line: 337, column: 355)
!1970 = !DILocation(line: 337, column: 501, scope: !1969)
!1971 = !DILocation(line: 337, column: 517, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1969, file: !421, discriminator: 1)
!1973 = !DILocation(line: 337, column: 536, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !421, discriminator: 6)
!1975 = !DILexicalBlockFile(scope: !611, file: !421, discriminator: 5)
!1976 = !DILocation(line: 337, column: 535, scope: !611)
!1977 = !DILocation(line: 337, column: 533, scope: !611)
!1978 = !DILocation(line: 337, column: 558, scope: !611)
!1979 = !DILocation(line: 337, column: 660, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1981, file: !421, discriminator: 10)
!1981 = !DILexicalBlockFile(scope: !1982, file: !421, discriminator: 9)
!1982 = !DILexicalBlockFile(scope: !1983, file: !421, discriminator: 8)
!1983 = distinct !DILexicalBlock(scope: !611, file: !421, line: 337, column: 565)
!1984 = !DILocation(line: 337, column: 711, scope: !1983)
!1985 = !DILocation(line: 337, column: 727, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1983, file: !421, discriminator: 7)
!1987 = !DILocation(line: 337, column: 738, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !421, discriminator: 12)
!1989 = !DILexicalBlockFile(scope: !611, file: !421, discriminator: 11)
!1990 = !DILocation(line: 337, column: 734, scope: !1983)
!1991 = !DILocation(line: 337, column: 746, scope: !604)
!1992 = !DILocation(line: 337, column: 746, scope: !611)
!1993 = !DILocation(line: 337, column: 30, scope: !604)
!1994 = !DILocation(line: 339, column: 15, scope: !604)
!1995 = !DILocation(line: 339, column: 23, scope: !604)
!1996 = !DILocation(line: 339, column: 6, scope: !604)
!1997 = !DILocation(line: 339, column: 13, scope: !604)
!1998 = !DILocation(line: 340, column: 16, scope: !604)
!1999 = !DILocation(line: 340, column: 24, scope: !604)
!2000 = !DILocation(line: 340, column: 6, scope: !604)
!2001 = !DILocation(line: 340, column: 14, scope: !604)
!2002 = !DILocation(line: 341, column: 20, scope: !604)
!2003 = !DILocation(line: 341, column: 28, scope: !604)
!2004 = !DILocation(line: 341, column: 6, scope: !604)
!2005 = !DILocation(line: 341, column: 18, scope: !604)
!2006 = !DILocation(line: 343, column: 5, scope: !604)
!2007 = !DILocation(line: 343, column: 13, scope: !604)
!2008 = !DILocation(line: 343, column: 25, scope: !604)
!2009 = !DILocation(line: 344, column: 5, scope: !604)
!2010 = !DILocation(line: 344, column: 13, scope: !604)
!2011 = !DILocation(line: 344, column: 26, scope: !604)
!2012 = !DILocation(line: 345, column: 5, scope: !604)
!2013 = !DILocation(line: 345, column: 13, scope: !604)
!2014 = !DILocation(line: 345, column: 30, scope: !604)
!2015 = !DILocation(line: 346, column: 1, scope: !604)
!2016 = !DILocation(line: 868, column: 33, scope: !817)
!2017 = !DILocation(line: 871, column: 5, scope: !817)
!2018 = !DILocation(line: 871, column: 15, scope: !817)
!2019 = !DILocation(line: 871, column: 19, scope: !817)
!2020 = !DILocation(line: 871, column: 23, scope: !817)
!2021 = !DILocation(line: 871, column: 27, scope: !817)
!2022 = !DILocation(line: 872, column: 5, scope: !817)
!2023 = !DILocation(line: 872, column: 15, scope: !817)
!2024 = !DILocation(line: 873, column: 5, scope: !817)
!2025 = !DILocation(line: 873, column: 11, scope: !817)
!2026 = !DILocation(line: 875, column: 5, scope: !817)
!2027 = !DILocation(line: 877, column: 9, scope: !817)
!2028 = !DILocation(line: 877, column: 7, scope: !817)
!2029 = !DILocation(line: 878, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !817, file: !421, line: 878, column: 9)
!2031 = !DILocation(line: 878, column: 11, scope: !2030)
!2032 = !DILocation(line: 878, column: 25, scope: !2030)
!2033 = !DILocation(line: 878, column: 28, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2030, file: !421, discriminator: 1)
!2035 = !DILocation(line: 878, column: 30, scope: !2030)
!2036 = !DILocation(line: 878, column: 9, scope: !817)
!2037 = !DILocation(line: 879, column: 9, scope: !2030)
!2038 = !DILocation(line: 881, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !817, file: !421, line: 881, column: 9)
!2040 = !DILocation(line: 881, column: 9, scope: !817)
!2041 = !DILocation(line: 882, column: 58, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !421, line: 882, column: 13)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !421, line: 881, column: 14)
!2044 = !DILocation(line: 882, column: 13, scope: !2042)
!2045 = !DILocation(line: 882, column: 61, scope: !2042)
!2046 = !DILocation(line: 882, column: 13, scope: !2043)
!2047 = !DILocation(line: 883, column: 13, scope: !2042)
!2048 = !DILocation(line: 884, column: 32, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2043, file: !421, line: 884, column: 13)
!2050 = !DILocation(line: 884, column: 37, scope: !2049)
!2051 = !DILocation(line: 884, column: 13, scope: !2049)
!2052 = !DILocation(line: 884, column: 43, scope: !2049)
!2053 = !DILocation(line: 884, column: 13, scope: !2043)
!2054 = !DILocation(line: 885, column: 13, scope: !2049)
!2055 = !DILocation(line: 886, column: 38, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2043, file: !421, line: 886, column: 13)
!2057 = !DILocation(line: 886, column: 13, scope: !2056)
!2058 = !DILocation(line: 886, column: 41, scope: !2056)
!2059 = !DILocation(line: 886, column: 13, scope: !2043)
!2060 = !DILocation(line: 887, column: 13, scope: !2056)
!2061 = !DILocation(line: 888, column: 5, scope: !2043)
!2062 = !DILocation(line: 890, column: 27, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !817, file: !421, line: 890, column: 9)
!2064 = !DILocation(line: 890, column: 31, scope: !2063)
!2065 = !DILocation(line: 890, column: 9, scope: !2063)
!2066 = !DILocation(line: 890, column: 34, scope: !2063)
!2067 = !DILocation(line: 890, column: 9, scope: !817)
!2068 = !DILocation(line: 891, column: 9, scope: !2063)
!2069 = !DILocation(line: 893, column: 10, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !817, file: !421, line: 893, column: 9)
!2071 = !DILocation(line: 893, column: 9, scope: !817)
!2072 = !DILocation(line: 894, column: 9, scope: !2070)
!2073 = !DILocation(line: 897, column: 44, scope: !817)
!2074 = !DILocation(line: 897, column: 28, scope: !817)
!2075 = !DILocation(line: 897, column: 49, scope: !817)
!2076 = !{!1059, !972, i64 24}
!2077 = !DILocation(line: 897, column: 15, scope: !817)
!2078 = !DILocation(line: 898, column: 9, scope: !828)
!2079 = !DILocation(line: 898, column: 19, scope: !828)
!2080 = !DILocation(line: 898, column: 9, scope: !817)
!2081 = !DILocation(line: 899, column: 9, scope: !827)
!2082 = !DILocation(line: 899, column: 15, scope: !827)
!2083 = !DILocation(line: 899, column: 29, scope: !827)
!2084 = !DILocation(line: 899, column: 21, scope: !827)
!2085 = !DILocation(line: 900, column: 13, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !827, file: !421, line: 900, column: 13)
!2087 = !DILocation(line: 900, column: 17, scope: !2086)
!2088 = !DILocation(line: 900, column: 13, scope: !827)
!2089 = !DILocation(line: 901, column: 25, scope: !2086)
!2090 = !DILocation(line: 901, column: 28, scope: !2086)
!2091 = !DILocation(line: 901, column: 23, scope: !2086)
!2092 = !DILocation(line: 901, column: 13, scope: !2086)
!2093 = !DILocation(line: 902, column: 5, scope: !828)
!2094 = !DILocation(line: 902, column: 5, scope: !827)
!2095 = !DILocation(line: 904, column: 38, scope: !817)
!2096 = !DILocation(line: 904, column: 18, scope: !817)
!2097 = !DILocation(line: 904, column: 16, scope: !817)
!2098 = !DILocation(line: 905, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !817, file: !421, line: 905, column: 9)
!2100 = !DILocation(line: 905, column: 20, scope: !2099)
!2101 = !DILocation(line: 905, column: 9, scope: !817)
!2102 = !DILocation(line: 906, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !421, line: 905, column: 35)
!2104 = !DILocation(line: 907, column: 45, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !421, line: 907, column: 13)
!2106 = !DILocation(line: 907, column: 13, scope: !2105)
!2107 = !DILocation(line: 907, column: 48, scope: !2105)
!2108 = !DILocation(line: 907, column: 13, scope: !2103)
!2109 = !DILocation(line: 908, column: 13, scope: !2105)
!2110 = !DILocation(line: 909, column: 5, scope: !2103)
!2111 = !DILocation(line: 911, column: 38, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !421, line: 911, column: 13)
!2113 = distinct !DILexicalBlock(scope: !2099, file: !421, line: 910, column: 10)
!2114 = !DILocation(line: 911, column: 13, scope: !2112)
!2115 = !DILocation(line: 911, column: 66, scope: !2112)
!2116 = !DILocation(line: 911, column: 13, scope: !2113)
!2117 = !DILocation(line: 912, column: 36, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !421, line: 912, column: 17)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !421, line: 911, column: 72)
!2120 = !DILocation(line: 912, column: 48, scope: !2118)
!2121 = !DILocation(line: 912, column: 17, scope: !2118)
!2122 = !DILocation(line: 912, column: 54, scope: !2118)
!2123 = !DILocation(line: 912, column: 17, scope: !2119)
!2124 = !DILocation(line: 913, column: 17, scope: !2118)
!2125 = !DILocation(line: 914, column: 41, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !421, line: 914, column: 17)
!2127 = !DILocation(line: 914, column: 17, scope: !2126)
!2128 = !DILocation(line: 914, column: 44, scope: !2126)
!2129 = !DILocation(line: 914, column: 17, scope: !2119)
!2130 = !DILocation(line: 915, column: 17, scope: !2126)
!2131 = !DILocation(line: 916, column: 9, scope: !2119)
!2132 = !DILocation(line: 918, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !817, file: !421, line: 918, column: 9)
!2134 = !DILocation(line: 918, column: 19, scope: !2133)
!2135 = !DILocation(line: 918, column: 9, scope: !817)
!2136 = !DILocation(line: 919, column: 45, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !421, line: 919, column: 13)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !421, line: 918, column: 34)
!2139 = !DILocation(line: 919, column: 13, scope: !2137)
!2140 = !DILocation(line: 919, column: 48, scope: !2137)
!2141 = !DILocation(line: 919, column: 13, scope: !2138)
!2142 = !DILocation(line: 920, column: 13, scope: !2137)
!2143 = !DILocation(line: 921, column: 5, scope: !2138)
!2144 = !DILocation(line: 923, column: 32, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !421, line: 923, column: 13)
!2146 = distinct !DILexicalBlock(scope: !2133, file: !421, line: 922, column: 10)
!2147 = !DILocation(line: 923, column: 43, scope: !2145)
!2148 = !DILocation(line: 923, column: 13, scope: !2145)
!2149 = !DILocation(line: 923, column: 46, scope: !2145)
!2150 = !DILocation(line: 923, column: 13, scope: !2146)
!2151 = !DILocation(line: 924, column: 13, scope: !2145)
!2152 = !DILocation(line: 927, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !817, file: !421, line: 927, column: 9)
!2154 = !DILocation(line: 927, column: 11, scope: !2153)
!2155 = !DILocation(line: 927, column: 14, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2153, file: !421, discriminator: 1)
!2157 = !DILocation(line: 927, column: 16, scope: !2153)
!2158 = !DILocation(line: 927, column: 9, scope: !817)
!2159 = !DILocation(line: 928, column: 38, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !421, line: 928, column: 13)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !421, line: 927, column: 38)
!2162 = !DILocation(line: 928, column: 13, scope: !2160)
!2163 = !DILocation(line: 928, column: 41, scope: !2160)
!2164 = !DILocation(line: 928, column: 13, scope: !2161)
!2165 = !DILocation(line: 929, column: 13, scope: !2160)
!2166 = !DILocation(line: 930, column: 32, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2161, file: !421, line: 930, column: 13)
!2168 = !DILocation(line: 930, column: 35, scope: !2167)
!2169 = !DILocation(line: 930, column: 13, scope: !2167)
!2170 = !DILocation(line: 930, column: 41, scope: !2167)
!2171 = !DILocation(line: 930, column: 13, scope: !2161)
!2172 = !DILocation(line: 931, column: 13, scope: !2167)
!2173 = !DILocation(line: 932, column: 5, scope: !2161)
!2174 = !DILocation(line: 933, column: 34, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !817, file: !421, line: 933, column: 9)
!2176 = !DILocation(line: 933, column: 9, scope: !2175)
!2177 = !DILocation(line: 933, column: 37, scope: !2175)
!2178 = !DILocation(line: 933, column: 9, scope: !817)
!2179 = !DILocation(line: 934, column: 9, scope: !2175)
!2180 = !DILocation(line: 933, column: 39, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2175, file: !421, discriminator: 1)
!2182 = !DILocation(line: 937, column: 5, scope: !817)
!2183 = !DILocation(line: 937, column: 10, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !830, file: !421, discriminator: 1)
!2185 = !DILocation(line: 937, column: 20, scope: !830)
!2186 = !DILocation(line: 937, column: 51, scope: !830)
!2187 = !DILocation(line: 937, column: 68, scope: !833)
!2188 = !DILocation(line: 937, column: 84, scope: !833)
!2189 = !DILocation(line: 937, column: 68, scope: !830)
!2190 = !DILocation(line: 937, column: 99, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !833, file: !421, discriminator: 2)
!2192 = !DILocation(line: 937, column: 104, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 4)
!2194 = !DILocation(line: 937, column: 114, scope: !832)
!2195 = !DILocation(line: 937, column: 144, scope: !832)
!2196 = !DILocation(line: 937, column: 170, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !832, file: !421, line: 937, column: 167)
!2198 = !DILocation(line: 937, column: 187, scope: !2197)
!2199 = !DILocation(line: 937, column: 167, scope: !2197)
!2200 = !DILocation(line: 937, column: 197, scope: !2197)
!2201 = !DILocation(line: 937, column: 167, scope: !832)
!2202 = !DILocation(line: 937, column: 167, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 5)
!2204 = !DILocation(line: 937, column: 228, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2197, file: !421, discriminator: 6)
!2206 = !DILocation(line: 937, column: 246, scope: !2197)
!2207 = !DILocation(line: 937, column: 256, scope: !2197)
!2208 = !DILocation(line: 937, column: 281, scope: !2197)
!2209 = !DILocation(line: 937, column: 212, scope: !2197)
!2210 = !DILocation(line: 937, column: 300, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !833, file: !421, discriminator: 7)
!2212 = !DILocation(line: 937, column: 300, scope: !832)
!2213 = !DILocation(line: 937, column: 300, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 8)
!2215 = !DILocation(line: 937, column: 300, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 9)
!2217 = !DILocation(line: 937, column: 313, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2219, file: !421, discriminator: 10)
!2219 = !DILexicalBlockFile(scope: !817, file: !421, discriminator: 3)
!2220 = !DILocation(line: 937, column: 313, scope: !830)
!2221 = !DILocation(line: 937, column: 313, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !830, file: !421, discriminator: 11)
!2223 = !DILocation(line: 938, column: 5, scope: !817)
!2224 = !DILocation(line: 938, column: 10, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !835, file: !421, discriminator: 1)
!2226 = !DILocation(line: 938, column: 20, scope: !835)
!2227 = !DILocation(line: 938, column: 51, scope: !835)
!2228 = !DILocation(line: 938, column: 59, scope: !838)
!2229 = !DILocation(line: 938, column: 75, scope: !838)
!2230 = !DILocation(line: 938, column: 59, scope: !835)
!2231 = !DILocation(line: 938, column: 90, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !838, file: !421, discriminator: 2)
!2233 = !DILocation(line: 938, column: 95, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 4)
!2235 = !DILocation(line: 938, column: 105, scope: !837)
!2236 = !DILocation(line: 938, column: 135, scope: !837)
!2237 = !DILocation(line: 938, column: 161, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !837, file: !421, line: 938, column: 158)
!2239 = !DILocation(line: 938, column: 178, scope: !2238)
!2240 = !DILocation(line: 938, column: 158, scope: !2238)
!2241 = !DILocation(line: 938, column: 188, scope: !2238)
!2242 = !DILocation(line: 938, column: 158, scope: !837)
!2243 = !DILocation(line: 938, column: 158, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 5)
!2245 = !DILocation(line: 938, column: 219, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2238, file: !421, discriminator: 6)
!2247 = !DILocation(line: 938, column: 237, scope: !2238)
!2248 = !DILocation(line: 938, column: 247, scope: !2238)
!2249 = !DILocation(line: 938, column: 272, scope: !2238)
!2250 = !DILocation(line: 938, column: 203, scope: !2238)
!2251 = !DILocation(line: 938, column: 291, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !838, file: !421, discriminator: 7)
!2253 = !DILocation(line: 938, column: 291, scope: !837)
!2254 = !DILocation(line: 938, column: 291, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 8)
!2256 = !DILocation(line: 938, column: 291, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 9)
!2258 = !DILocation(line: 938, column: 304, scope: !2218)
!2259 = !DILocation(line: 938, column: 304, scope: !835)
!2260 = !DILocation(line: 938, column: 304, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !835, file: !421, discriminator: 11)
!2262 = !DILocation(line: 939, column: 5, scope: !817)
!2263 = !DILocation(line: 939, column: 10, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !840, file: !421, discriminator: 1)
!2265 = !DILocation(line: 939, column: 20, scope: !840)
!2266 = !DILocation(line: 939, column: 51, scope: !840)
!2267 = !DILocation(line: 939, column: 59, scope: !843)
!2268 = !DILocation(line: 939, column: 75, scope: !843)
!2269 = !DILocation(line: 939, column: 59, scope: !840)
!2270 = !DILocation(line: 939, column: 90, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !843, file: !421, discriminator: 2)
!2272 = !DILocation(line: 939, column: 95, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 4)
!2274 = !DILocation(line: 939, column: 105, scope: !842)
!2275 = !DILocation(line: 939, column: 135, scope: !842)
!2276 = !DILocation(line: 939, column: 161, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !842, file: !421, line: 939, column: 158)
!2278 = !DILocation(line: 939, column: 178, scope: !2277)
!2279 = !DILocation(line: 939, column: 158, scope: !2277)
!2280 = !DILocation(line: 939, column: 188, scope: !2277)
!2281 = !DILocation(line: 939, column: 158, scope: !842)
!2282 = !DILocation(line: 939, column: 158, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 5)
!2284 = !DILocation(line: 939, column: 219, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2277, file: !421, discriminator: 6)
!2286 = !DILocation(line: 939, column: 237, scope: !2277)
!2287 = !DILocation(line: 939, column: 247, scope: !2277)
!2288 = !DILocation(line: 939, column: 272, scope: !2277)
!2289 = !DILocation(line: 939, column: 203, scope: !2277)
!2290 = !DILocation(line: 939, column: 291, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !843, file: !421, discriminator: 7)
!2292 = !DILocation(line: 939, column: 291, scope: !842)
!2293 = !DILocation(line: 939, column: 291, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 8)
!2295 = !DILocation(line: 939, column: 291, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 9)
!2297 = !DILocation(line: 939, column: 304, scope: !2218)
!2298 = !DILocation(line: 939, column: 304, scope: !840)
!2299 = !DILocation(line: 939, column: 304, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !840, file: !421, discriminator: 11)
!2301 = !DILocation(line: 940, column: 5, scope: !817)
!2302 = !DILocation(line: 940, column: 10, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !845, file: !421, discriminator: 1)
!2304 = !DILocation(line: 940, column: 20, scope: !845)
!2305 = !DILocation(line: 940, column: 51, scope: !845)
!2306 = !DILocation(line: 940, column: 60, scope: !848)
!2307 = !DILocation(line: 940, column: 76, scope: !848)
!2308 = !DILocation(line: 940, column: 60, scope: !845)
!2309 = !DILocation(line: 940, column: 91, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !848, file: !421, discriminator: 2)
!2311 = !DILocation(line: 940, column: 96, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 4)
!2313 = !DILocation(line: 940, column: 106, scope: !847)
!2314 = !DILocation(line: 940, column: 136, scope: !847)
!2315 = !DILocation(line: 940, column: 162, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !847, file: !421, line: 940, column: 159)
!2317 = !DILocation(line: 940, column: 179, scope: !2316)
!2318 = !DILocation(line: 940, column: 159, scope: !2316)
!2319 = !DILocation(line: 940, column: 189, scope: !2316)
!2320 = !DILocation(line: 940, column: 159, scope: !847)
!2321 = !DILocation(line: 940, column: 159, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 5)
!2323 = !DILocation(line: 940, column: 220, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2316, file: !421, discriminator: 6)
!2325 = !DILocation(line: 940, column: 238, scope: !2316)
!2326 = !DILocation(line: 940, column: 248, scope: !2316)
!2327 = !DILocation(line: 940, column: 273, scope: !2316)
!2328 = !DILocation(line: 940, column: 204, scope: !2316)
!2329 = !DILocation(line: 940, column: 292, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !848, file: !421, discriminator: 7)
!2331 = !DILocation(line: 940, column: 292, scope: !847)
!2332 = !DILocation(line: 940, column: 292, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 8)
!2334 = !DILocation(line: 940, column: 292, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 9)
!2336 = !DILocation(line: 940, column: 305, scope: !2218)
!2337 = !DILocation(line: 940, column: 305, scope: !845)
!2338 = !DILocation(line: 940, column: 305, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !845, file: !421, discriminator: 11)
!2340 = !DILocation(line: 941, column: 5, scope: !817)
!2341 = !DILocation(line: 942, column: 1, scope: !817)
!2342 = !DILocation(line: 211, column: 34, scope: !553)
!2343 = !DILocation(line: 213, column: 40, scope: !553)
!2344 = !DILocation(line: 213, column: 58, scope: !553)
!2345 = !DILocation(line: 213, column: 12, scope: !553)
!2346 = !DILocation(line: 213, column: 5, scope: !553)
!2347 = !DILocation(line: 224, column: 37, scope: !556)
!2348 = !DILocation(line: 224, column: 53, scope: !556)
!2349 = !DILocation(line: 224, column: 69, scope: !556)
!2350 = !DILocation(line: 226, column: 5, scope: !556)
!2351 = !DILocation(line: 226, column: 15, scope: !556)
!2352 = !DILocation(line: 226, column: 23, scope: !556)
!2353 = !DILocation(line: 226, column: 22, scope: !556)
!2354 = !DILocation(line: 227, column: 5, scope: !556)
!2355 = !DILocation(line: 227, column: 15, scope: !556)
!2356 = !DILocation(line: 227, column: 24, scope: !556)
!2357 = !DILocation(line: 227, column: 23, scope: !556)
!2358 = !DILocation(line: 228, column: 5, scope: !556)
!2359 = !DILocation(line: 228, column: 15, scope: !556)
!2360 = !DILocation(line: 229, column: 5, scope: !556)
!2361 = !DILocation(line: 229, column: 15, scope: !556)
!2362 = !DILocation(line: 230, column: 5, scope: !556)
!2363 = !DILocation(line: 230, column: 20, scope: !556)
!2364 = !DILocation(line: 232, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !556, file: !421, line: 232, column: 9)
!2366 = !DILocation(line: 232, column: 14, scope: !2365)
!2367 = !DILocation(line: 232, column: 9, scope: !556)
!2368 = !DILocation(line: 234, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !421, line: 232, column: 29)
!2370 = !DILocation(line: 240, column: 10, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !556, file: !421, line: 240, column: 9)
!2372 = !DILocation(line: 240, column: 9, scope: !556)
!2373 = !DILocation(line: 241, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !421, line: 240, column: 17)
!2375 = !DILocation(line: 242, column: 25, scope: !2374)
!2376 = !DILocation(line: 242, column: 34, scope: !2374)
!2377 = !DILocation(line: 242, column: 43, scope: !2374)
!2378 = !DILocation(line: 243, column: 5, scope: !2374)
!2379 = !DILocation(line: 245, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !556, file: !421, line: 245, column: 9)
!2381 = !DILocation(line: 245, column: 21, scope: !2380)
!2382 = !DILocation(line: 245, column: 31, scope: !2380)
!2383 = !DILocation(line: 245, column: 40, scope: !2380)
!2384 = !DILocation(line: 245, column: 57, scope: !2380)
!2385 = !DILocation(line: 245, column: 9, scope: !556)
!2386 = !DILocation(line: 246, column: 33, scope: !2380)
!2387 = !DILocation(line: 246, column: 41, scope: !2380)
!2388 = !DILocation(line: 246, column: 20, scope: !2380)
!2389 = !DILocation(line: 246, column: 17, scope: !2380)
!2390 = !DILocation(line: 246, column: 9, scope: !2380)
!2391 = !DILocation(line: 251, column: 28, scope: !571)
!2392 = !DILocation(line: 251, column: 37, scope: !571)
!2393 = !DILocation(line: 251, column: 48, scope: !571)
!2394 = !DILocation(line: 251, column: 57, scope: !571)
!2395 = !DILocation(line: 251, column: 74, scope: !571)
!2396 = !DILocation(line: 251, column: 80, scope: !571)
!2397 = !DILocation(line: 251, column: 102, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !571, file: !421, discriminator: 1)
!2399 = !DILocation(line: 251, column: 86, scope: !571)
!2400 = !DILocation(line: 251, column: 110, scope: !571)
!2401 = !DILocation(line: 251, column: 119, scope: !571)
!2402 = !DILocation(line: 251, column: 136, scope: !571)
!2403 = !DILocation(line: 251, column: 9, scope: !556)
!2404 = !DILocation(line: 252, column: 9, scope: !570)
!2405 = !DILocation(line: 252, column: 13, scope: !570)
!2406 = !DILocation(line: 253, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !570, file: !421, line: 253, column: 13)
!2408 = !DILocation(line: 253, column: 13, scope: !570)
!2409 = !DILocation(line: 254, column: 47, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !421, line: 253, column: 22)
!2411 = !DILocation(line: 254, column: 56, scope: !2410)
!2412 = !DILocation(line: 254, column: 27, scope: !2410)
!2413 = !DILocation(line: 254, column: 25, scope: !2410)
!2414 = !DILocation(line: 255, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !421, line: 255, column: 17)
!2416 = !DILocation(line: 255, column: 29, scope: !2415)
!2417 = !DILocation(line: 255, column: 17, scope: !2410)
!2418 = !DILocation(line: 256, column: 17, scope: !2415)
!2419 = !DILocation(line: 257, column: 9, scope: !2410)
!2420 = !DILocation(line: 259, column: 25, scope: !2407)
!2421 = !DILocation(line: 266, column: 14, scope: !574)
!2422 = !DILocation(line: 266, column: 22, scope: !574)
!2423 = !DILocation(line: 266, column: 26, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !574, file: !421, discriminator: 1)
!2425 = !DILocation(line: 266, column: 13, scope: !570)
!2426 = !DILocation(line: 267, column: 13, scope: !573)
!2427 = !DILocation(line: 267, column: 23, scope: !573)
!2428 = !DILocation(line: 267, column: 30, scope: !573)
!2429 = !DILocation(line: 269, column: 17, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !573, file: !421, line: 269, column: 17)
!2431 = !DILocation(line: 269, column: 23, scope: !2430)
!2432 = !DILocation(line: 269, column: 17, scope: !573)
!2433 = !DILocation(line: 270, column: 24, scope: !2430)
!2434 = !DILocation(line: 270, column: 22, scope: !2430)
!2435 = !DILocation(line: 270, column: 17, scope: !2430)
!2436 = !DILocation(line: 271, column: 39, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2430, file: !421, line: 271, column: 22)
!2438 = !DILocation(line: 271, column: 48, scope: !2437)
!2439 = !DILocation(line: 271, column: 59, scope: !2437)
!2440 = !DILocation(line: 271, column: 68, scope: !2437)
!2441 = !DILocation(line: 271, column: 85, scope: !2437)
!2442 = !DILocation(line: 271, column: 22, scope: !2430)
!2443 = !DILocation(line: 272, column: 33, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2437, file: !421, line: 271, column: 92)
!2445 = !DILocation(line: 272, column: 42, scope: !2444)
!2446 = !DILocation(line: 272, column: 51, scope: !2444)
!2447 = !DILocation(line: 273, column: 24, scope: !2444)
!2448 = !DILocation(line: 273, column: 22, scope: !2444)
!2449 = !DILocation(line: 274, column: 13, scope: !2444)
!2450 = !DILocation(line: 276, column: 40, scope: !2437)
!2451 = !DILocation(line: 276, column: 24, scope: !2437)
!2452 = !DILocation(line: 276, column: 22, scope: !2437)
!2453 = !DILocation(line: 278, column: 17, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !573, file: !421, line: 278, column: 17)
!2455 = !DILocation(line: 278, column: 22, scope: !2454)
!2456 = !DILocation(line: 278, column: 17, scope: !573)
!2457 = !DILocation(line: 279, column: 17, scope: !2454)
!2458 = !DILocation(line: 280, column: 49, scope: !573)
!2459 = !DILocation(line: 280, column: 55, scope: !573)
!2460 = !DILocation(line: 280, column: 19, scope: !573)
!2461 = !DILocation(line: 280, column: 17, scope: !573)
!2462 = !DILocation(line: 281, column: 13, scope: !573)
!2463 = !DILocation(line: 281, column: 18, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 1)
!2465 = !DILocation(line: 281, column: 28, scope: !577)
!2466 = !DILocation(line: 281, column: 58, scope: !577)
!2467 = !DILocation(line: 281, column: 73, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !577, file: !421, line: 281, column: 70)
!2469 = !DILocation(line: 281, column: 90, scope: !2468)
!2470 = !DILocation(line: 281, column: 70, scope: !2468)
!2471 = !DILocation(line: 281, column: 100, scope: !2468)
!2472 = !DILocation(line: 281, column: 70, scope: !577)
!2473 = !DILocation(line: 281, column: 70, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 2)
!2475 = !DILocation(line: 281, column: 131, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2468, file: !421, discriminator: 3)
!2477 = !DILocation(line: 281, column: 149, scope: !2468)
!2478 = !DILocation(line: 281, column: 159, scope: !2468)
!2479 = !DILocation(line: 281, column: 184, scope: !2468)
!2480 = !DILocation(line: 281, column: 115, scope: !2468)
!2481 = !DILocation(line: 281, column: 203, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !573, file: !421, discriminator: 4)
!2483 = !DILocation(line: 281, column: 203, scope: !577)
!2484 = !DILocation(line: 281, column: 203, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 5)
!2486 = !DILocation(line: 282, column: 17, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !573, file: !421, line: 282, column: 17)
!2488 = !DILocation(line: 282, column: 21, scope: !2487)
!2489 = !DILocation(line: 282, column: 17, scope: !573)
!2490 = !DILocation(line: 283, column: 17, scope: !2487)
!2491 = !DILocation(line: 284, column: 13, scope: !573)
!2492 = !DILocation(line: 284, column: 18, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 1)
!2494 = !DILocation(line: 284, column: 28, scope: !579)
!2495 = !DILocation(line: 284, column: 58, scope: !579)
!2496 = !DILocation(line: 284, column: 74, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !579, file: !421, line: 284, column: 71)
!2498 = !DILocation(line: 284, column: 91, scope: !2497)
!2499 = !DILocation(line: 284, column: 71, scope: !2497)
!2500 = !DILocation(line: 284, column: 101, scope: !2497)
!2501 = !DILocation(line: 284, column: 71, scope: !579)
!2502 = !DILocation(line: 284, column: 71, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 2)
!2504 = !DILocation(line: 284, column: 132, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2497, file: !421, discriminator: 3)
!2506 = !DILocation(line: 284, column: 150, scope: !2497)
!2507 = !DILocation(line: 284, column: 160, scope: !2497)
!2508 = !DILocation(line: 284, column: 185, scope: !2497)
!2509 = !DILocation(line: 284, column: 116, scope: !2497)
!2510 = !DILocation(line: 284, column: 204, scope: !2482)
!2511 = !DILocation(line: 284, column: 204, scope: !579)
!2512 = !DILocation(line: 284, column: 204, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 5)
!2514 = !DILocation(line: 285, column: 21, scope: !573)
!2515 = !DILocation(line: 285, column: 19, scope: !573)
!2516 = !DILocation(line: 286, column: 9, scope: !574)
!2517 = !DILocation(line: 286, column: 9, scope: !2424)
!2518 = !DILocation(line: 286, column: 9, scope: !573)
!2519 = !DILocation(line: 290, column: 18, scope: !583)
!2520 = !DILocation(line: 290, column: 29, scope: !583)
!2521 = !DILocation(line: 290, column: 26, scope: !583)
!2522 = !DILocation(line: 290, column: 18, scope: !574)
!2523 = !DILocation(line: 291, column: 13, scope: !582)
!2524 = !DILocation(line: 291, column: 18, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 1)
!2526 = !DILocation(line: 291, column: 28, scope: !581)
!2527 = !DILocation(line: 291, column: 58, scope: !581)
!2528 = !DILocation(line: 291, column: 73, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !581, file: !421, line: 291, column: 70)
!2530 = !DILocation(line: 291, column: 90, scope: !2529)
!2531 = !DILocation(line: 291, column: 70, scope: !2529)
!2532 = !DILocation(line: 291, column: 100, scope: !2529)
!2533 = !DILocation(line: 291, column: 70, scope: !581)
!2534 = !DILocation(line: 291, column: 70, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 2)
!2536 = !DILocation(line: 291, column: 131, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2529, file: !421, discriminator: 3)
!2538 = !DILocation(line: 291, column: 149, scope: !2529)
!2539 = !DILocation(line: 291, column: 159, scope: !2529)
!2540 = !DILocation(line: 291, column: 184, scope: !2529)
!2541 = !DILocation(line: 291, column: 115, scope: !2529)
!2542 = !DILocation(line: 291, column: 203, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !582, file: !421, discriminator: 4)
!2544 = !DILocation(line: 291, column: 203, scope: !581)
!2545 = !DILocation(line: 291, column: 203, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 5)
!2547 = !DILocation(line: 292, column: 20, scope: !582)
!2548 = !DILocation(line: 292, column: 18, scope: !582)
!2549 = !DILocation(line: 293, column: 29, scope: !582)
!2550 = !DILocation(line: 293, column: 37, scope: !582)
!2551 = !DILocation(line: 293, column: 46, scope: !582)
!2552 = !DILocation(line: 294, column: 9, scope: !582)
!2553 = !DILocation(line: 295, column: 5, scope: !571)
!2554 = !DILocation(line: 295, column: 5, scope: !2398)
!2555 = !DILocation(line: 295, column: 5, scope: !570)
!2556 = !DILocation(line: 296, column: 12, scope: !556)
!2557 = !DILocation(line: 296, column: 6, scope: !556)
!2558 = !DILocation(line: 296, column: 10, scope: !556)
!2559 = !DILocation(line: 297, column: 12, scope: !556)
!2560 = !DILocation(line: 297, column: 6, scope: !556)
!2561 = !DILocation(line: 297, column: 10, scope: !556)
!2562 = !DILocation(line: 298, column: 5, scope: !556)
!2563 = !DILocation(line: 300, column: 5, scope: !556)
!2564 = !DILocation(line: 300, column: 10, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 1)
!2566 = !DILocation(line: 300, column: 20, scope: !585)
!2567 = !DILocation(line: 300, column: 50, scope: !585)
!2568 = !DILocation(line: 300, column: 65, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !585, file: !421, line: 300, column: 62)
!2570 = !DILocation(line: 300, column: 82, scope: !2569)
!2571 = !DILocation(line: 300, column: 62, scope: !2569)
!2572 = !DILocation(line: 300, column: 92, scope: !2569)
!2573 = !DILocation(line: 300, column: 62, scope: !585)
!2574 = !DILocation(line: 300, column: 62, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 2)
!2576 = !DILocation(line: 300, column: 123, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2569, file: !421, discriminator: 3)
!2578 = !DILocation(line: 300, column: 141, scope: !2569)
!2579 = !DILocation(line: 300, column: 151, scope: !2569)
!2580 = !DILocation(line: 300, column: 176, scope: !2569)
!2581 = !DILocation(line: 300, column: 107, scope: !2569)
!2582 = !DILocation(line: 300, column: 195, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !556, file: !421, discriminator: 4)
!2584 = !DILocation(line: 300, column: 195, scope: !585)
!2585 = !DILocation(line: 300, column: 195, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 5)
!2587 = !DILocation(line: 301, column: 5, scope: !556)
!2588 = !DILocation(line: 301, column: 10, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 1)
!2590 = !DILocation(line: 301, column: 20, scope: !587)
!2591 = !DILocation(line: 301, column: 50, scope: !587)
!2592 = !DILocation(line: 301, column: 66, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !587, file: !421, line: 301, column: 63)
!2594 = !DILocation(line: 301, column: 83, scope: !2593)
!2595 = !DILocation(line: 301, column: 63, scope: !2593)
!2596 = !DILocation(line: 301, column: 93, scope: !2593)
!2597 = !DILocation(line: 301, column: 63, scope: !587)
!2598 = !DILocation(line: 301, column: 63, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 2)
!2600 = !DILocation(line: 301, column: 124, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2593, file: !421, discriminator: 3)
!2602 = !DILocation(line: 301, column: 142, scope: !2593)
!2603 = !DILocation(line: 301, column: 152, scope: !2593)
!2604 = !DILocation(line: 301, column: 177, scope: !2593)
!2605 = !DILocation(line: 301, column: 108, scope: !2593)
!2606 = !DILocation(line: 301, column: 196, scope: !2583)
!2607 = !DILocation(line: 301, column: 196, scope: !587)
!2608 = !DILocation(line: 301, column: 196, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 5)
!2610 = !DILocation(line: 306, column: 19, scope: !556)
!2611 = !DILocation(line: 306, column: 18, scope: !556)
!2612 = !DILocation(line: 306, column: 16, scope: !556)
!2613 = !DILocation(line: 307, column: 17, scope: !556)
!2614 = !DILocation(line: 307, column: 22, scope: !556)
!2615 = !DILocation(line: 307, column: 27, scope: !556)
!2616 = !DILocation(line: 307, column: 5, scope: !556)
!2617 = !DILocation(line: 308, column: 9, scope: !592)
!2618 = !DILocation(line: 308, column: 20, scope: !592)
!2619 = !DILocation(line: 308, column: 9, scope: !556)
!2620 = !DILocation(line: 309, column: 14, scope: !590)
!2621 = !DILocation(line: 309, column: 13, scope: !590)
!2622 = !DILocation(line: 309, column: 17, scope: !590)
!2623 = !DILocation(line: 309, column: 13, scope: !591)
!2624 = !DILocation(line: 310, column: 19, scope: !590)
!2625 = !DILocation(line: 310, column: 14, scope: !590)
!2626 = !DILocation(line: 310, column: 17, scope: !590)
!2627 = !DILocation(line: 310, column: 13, scope: !590)
!2628 = !DILocation(line: 312, column: 13, scope: !590)
!2629 = !DILocation(line: 312, column: 18, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 1)
!2631 = !DILocation(line: 312, column: 28, scope: !589)
!2632 = !DILocation(line: 312, column: 58, scope: !589)
!2633 = !DILocation(line: 312, column: 79, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !589, file: !421, line: 312, column: 76)
!2635 = !DILocation(line: 312, column: 96, scope: !2634)
!2636 = !DILocation(line: 312, column: 76, scope: !2634)
!2637 = !DILocation(line: 312, column: 106, scope: !2634)
!2638 = !DILocation(line: 312, column: 76, scope: !589)
!2639 = !DILocation(line: 312, column: 76, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 2)
!2641 = !DILocation(line: 312, column: 137, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2634, file: !421, discriminator: 3)
!2643 = !DILocation(line: 312, column: 155, scope: !2634)
!2644 = !DILocation(line: 312, column: 165, scope: !2634)
!2645 = !DILocation(line: 312, column: 190, scope: !2634)
!2646 = !DILocation(line: 312, column: 121, scope: !2634)
!2647 = !DILocation(line: 312, column: 209, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !590, file: !421, discriminator: 4)
!2649 = !DILocation(line: 312, column: 209, scope: !589)
!2650 = !DILocation(line: 312, column: 209, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 5)
!2652 = !DILocation(line: 313, column: 5, scope: !591)
!2653 = !DILocation(line: 315, column: 48, scope: !594)
!2654 = !DILocation(line: 315, column: 84, scope: !594)
!2655 = !DILocation(line: 315, column: 122, scope: !594)
!2656 = !DILocation(line: 315, column: 153, scope: !594)
!2657 = !DILocation(line: 315, column: 161, scope: !594)
!2658 = !DILocation(line: 315, column: 190, scope: !594)
!2659 = !DILocation(line: 315, column: 207, scope: !594)
!2660 = !DILocation(line: 315, column: 219, scope: !594)
!2661 = !DILocation(line: 315, column: 227, scope: !594)
!2662 = !DILocation(line: 315, column: 244, scope: !594)
!2663 = !DILocation(line: 315, column: 304, scope: !594)
!2664 = !DILocation(line: 315, column: 316, scope: !594)
!2665 = !DILocation(line: 315, column: 278, scope: !594)
!2666 = !DILocation(line: 315, column: 333, scope: !594)
!2667 = !DILocation(line: 315, column: 435, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2669, file: !421, discriminator: 4)
!2669 = !DILexicalBlockFile(scope: !2670, file: !421, discriminator: 3)
!2670 = !DILexicalBlockFile(scope: !2671, file: !421, discriminator: 2)
!2671 = distinct !DILexicalBlock(scope: !594, file: !421, line: 315, column: 340)
!2672 = !DILocation(line: 315, column: 486, scope: !2671)
!2673 = !DILocation(line: 315, column: 502, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2671, file: !421, discriminator: 1)
!2675 = !DILocation(line: 315, column: 521, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2677, file: !421, discriminator: 6)
!2677 = !DILexicalBlockFile(scope: !594, file: !421, discriminator: 5)
!2678 = !DILocation(line: 315, column: 520, scope: !594)
!2679 = !DILocation(line: 315, column: 518, scope: !594)
!2680 = !DILocation(line: 315, column: 543, scope: !594)
!2681 = !DILocation(line: 315, column: 645, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2683, file: !421, discriminator: 10)
!2683 = !DILexicalBlockFile(scope: !2684, file: !421, discriminator: 9)
!2684 = !DILexicalBlockFile(scope: !2685, file: !421, discriminator: 8)
!2685 = distinct !DILexicalBlock(scope: !594, file: !421, line: 315, column: 550)
!2686 = !DILocation(line: 315, column: 696, scope: !2685)
!2687 = !DILocation(line: 315, column: 712, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2685, file: !421, discriminator: 7)
!2689 = !DILocation(line: 315, column: 723, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2691, file: !421, discriminator: 12)
!2691 = !DILexicalBlockFile(scope: !594, file: !421, discriminator: 11)
!2692 = !DILocation(line: 315, column: 719, scope: !2685)
!2693 = !DILocation(line: 315, column: 731, scope: !556)
!2694 = !DILocation(line: 315, column: 731, scope: !594)
!2695 = !DILocation(line: 315, column: 15, scope: !556)
!2696 = !DILocation(line: 315, column: 12, scope: !556)
!2697 = !DILocation(line: 316, column: 11, scope: !601)
!2698 = !DILocation(line: 316, column: 19, scope: !601)
!2699 = !DILocation(line: 316, column: 9, scope: !601)
!2700 = !{!1074, !1061, i64 32}
!2701 = !DILocation(line: 316, column: 37, scope: !601)
!2702 = !DILocation(line: 316, column: 35, scope: !601)
!2703 = !DILocation(line: 316, column: 9, scope: !556)
!2704 = !DILocation(line: 317, column: 11, scope: !600)
!2705 = !DILocation(line: 317, column: 19, scope: !600)
!2706 = !DILocation(line: 317, column: 9, scope: !600)
!2707 = !DILocation(line: 319, column: 9, scope: !600)
!2708 = !DILocation(line: 319, column: 14, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 1)
!2710 = !DILocation(line: 319, column: 24, scope: !599)
!2711 = !DILocation(line: 319, column: 55, scope: !599)
!2712 = !DILocation(line: 319, column: 54, scope: !599)
!2713 = !DILocation(line: 319, column: 69, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !599, file: !421, line: 319, column: 66)
!2715 = !DILocation(line: 319, column: 86, scope: !2714)
!2716 = !DILocation(line: 319, column: 66, scope: !2714)
!2717 = !DILocation(line: 319, column: 96, scope: !2714)
!2718 = !DILocation(line: 319, column: 66, scope: !599)
!2719 = !DILocation(line: 319, column: 66, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 2)
!2721 = !DILocation(line: 319, column: 127, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2714, file: !421, discriminator: 3)
!2723 = !DILocation(line: 319, column: 145, scope: !2714)
!2724 = !DILocation(line: 319, column: 155, scope: !2714)
!2725 = !DILocation(line: 319, column: 180, scope: !2714)
!2726 = !DILocation(line: 319, column: 111, scope: !2714)
!2727 = !DILocation(line: 319, column: 199, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !600, file: !421, discriminator: 4)
!2729 = !DILocation(line: 319, column: 199, scope: !599)
!2730 = !DILocation(line: 319, column: 199, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 5)
!2732 = !DILocation(line: 320, column: 9, scope: !600)
!2733 = !DILocation(line: 320, column: 14, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 1)
!2735 = !DILocation(line: 320, column: 24, scope: !603)
!2736 = !DILocation(line: 320, column: 55, scope: !603)
!2737 = !DILocation(line: 320, column: 54, scope: !603)
!2738 = !DILocation(line: 320, column: 69, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !603, file: !421, line: 320, column: 66)
!2740 = !DILocation(line: 320, column: 86, scope: !2739)
!2741 = !DILocation(line: 320, column: 66, scope: !2739)
!2742 = !DILocation(line: 320, column: 96, scope: !2739)
!2743 = !DILocation(line: 320, column: 66, scope: !603)
!2744 = !DILocation(line: 320, column: 66, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 2)
!2746 = !DILocation(line: 320, column: 127, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2739, file: !421, discriminator: 3)
!2748 = !DILocation(line: 320, column: 145, scope: !2739)
!2749 = !DILocation(line: 320, column: 155, scope: !2739)
!2750 = !DILocation(line: 320, column: 180, scope: !2739)
!2751 = !DILocation(line: 320, column: 111, scope: !2739)
!2752 = !DILocation(line: 320, column: 199, scope: !2728)
!2753 = !DILocation(line: 320, column: 199, scope: !603)
!2754 = !DILocation(line: 320, column: 199, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 5)
!2756 = !DILocation(line: 322, column: 16, scope: !600)
!2757 = !DILocation(line: 322, column: 10, scope: !600)
!2758 = !DILocation(line: 322, column: 14, scope: !600)
!2759 = !DILocation(line: 323, column: 16, scope: !600)
!2760 = !DILocation(line: 323, column: 10, scope: !600)
!2761 = !DILocation(line: 323, column: 14, scope: !600)
!2762 = !DILocation(line: 324, column: 26, scope: !600)
!2763 = !DILocation(line: 324, column: 25, scope: !600)
!2764 = !DILocation(line: 324, column: 33, scope: !600)
!2765 = !DILocation(line: 324, column: 42, scope: !600)
!2766 = !DILocation(line: 325, column: 26, scope: !600)
!2767 = !DILocation(line: 325, column: 25, scope: !600)
!2768 = !DILocation(line: 325, column: 33, scope: !600)
!2769 = !DILocation(line: 325, column: 42, scope: !600)
!2770 = !DILocation(line: 327, column: 9, scope: !600)
!2771 = !DILocation(line: 329, column: 30, scope: !556)
!2772 = !DILocation(line: 329, column: 35, scope: !556)
!2773 = !DILocation(line: 329, column: 40, scope: !556)
!2774 = !DILocation(line: 329, column: 5, scope: !556)
!2775 = !DILocation(line: 330, column: 7, scope: !556)
!2776 = !DILocation(line: 330, column: 15, scope: !556)
!2777 = !DILocation(line: 330, column: 5, scope: !556)
!2778 = !DILocation(line: 331, column: 1, scope: !556)
!2779 = !DILocation(line: 331, column: 1, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !556, file: !421, discriminator: 1)
!2781 = !DILocation(line: 351, column: 5, scope: !615)
!2782 = !DILocation(line: 352, column: 1, scope: !615)
!2783 = !DILocation(line: 355, column: 29, scope: !619)
!2784 = !DILocation(line: 355, column: 48, scope: !619)
!2785 = !DILocation(line: 355, column: 68, scope: !619)
!2786 = !DILocation(line: 357, column: 5, scope: !619)
!2787 = !DILocation(line: 357, column: 20, scope: !619)
!2788 = !DILocation(line: 357, column: 63, scope: !626)
!2789 = !DILocation(line: 357, column: 99, scope: !626)
!2790 = !DILocation(line: 357, column: 137, scope: !626)
!2791 = !DILocation(line: 357, column: 168, scope: !626)
!2792 = !DILocation(line: 357, column: 176, scope: !626)
!2793 = !DILocation(line: 357, column: 205, scope: !626)
!2794 = !DILocation(line: 357, column: 222, scope: !626)
!2795 = !DILocation(line: 357, column: 234, scope: !626)
!2796 = !DILocation(line: 357, column: 242, scope: !626)
!2797 = !DILocation(line: 357, column: 259, scope: !626)
!2798 = !DILocation(line: 357, column: 319, scope: !626)
!2799 = !DILocation(line: 357, column: 331, scope: !626)
!2800 = !DILocation(line: 357, column: 293, scope: !626)
!2801 = !DILocation(line: 357, column: 348, scope: !626)
!2802 = !DILocation(line: 357, column: 450, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2804, file: !421, discriminator: 4)
!2804 = !DILexicalBlockFile(scope: !2805, file: !421, discriminator: 3)
!2805 = !DILexicalBlockFile(scope: !2806, file: !421, discriminator: 2)
!2806 = distinct !DILexicalBlock(scope: !626, file: !421, line: 357, column: 355)
!2807 = !DILocation(line: 357, column: 501, scope: !2806)
!2808 = !DILocation(line: 357, column: 517, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2806, file: !421, discriminator: 1)
!2810 = !DILocation(line: 357, column: 536, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2812, file: !421, discriminator: 6)
!2812 = !DILexicalBlockFile(scope: !626, file: !421, discriminator: 5)
!2813 = !DILocation(line: 357, column: 535, scope: !626)
!2814 = !DILocation(line: 357, column: 533, scope: !626)
!2815 = !DILocation(line: 357, column: 558, scope: !626)
!2816 = !DILocation(line: 357, column: 660, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2818, file: !421, discriminator: 10)
!2818 = !DILexicalBlockFile(scope: !2819, file: !421, discriminator: 9)
!2819 = !DILexicalBlockFile(scope: !2820, file: !421, discriminator: 8)
!2820 = distinct !DILexicalBlock(scope: !626, file: !421, line: 357, column: 565)
!2821 = !DILocation(line: 357, column: 711, scope: !2820)
!2822 = !DILocation(line: 357, column: 727, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2820, file: !421, discriminator: 7)
!2824 = !DILocation(line: 357, column: 738, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2826, file: !421, discriminator: 12)
!2826 = !DILexicalBlockFile(scope: !626, file: !421, discriminator: 11)
!2827 = !DILocation(line: 357, column: 734, scope: !2820)
!2828 = !DILocation(line: 357, column: 746, scope: !619)
!2829 = !DILocation(line: 357, column: 746, scope: !626)
!2830 = !DILocation(line: 357, column: 30, scope: !619)
!2831 = !DILocation(line: 359, column: 15, scope: !619)
!2832 = !DILocation(line: 359, column: 23, scope: !619)
!2833 = !{!1074, !972, i64 104}
!2834 = !DILocation(line: 359, column: 6, scope: !619)
!2835 = !DILocation(line: 359, column: 13, scope: !619)
!2836 = !DILocation(line: 360, column: 16, scope: !619)
!2837 = !DILocation(line: 360, column: 24, scope: !619)
!2838 = !DILocation(line: 360, column: 6, scope: !619)
!2839 = !DILocation(line: 360, column: 14, scope: !619)
!2840 = !DILocation(line: 361, column: 20, scope: !619)
!2841 = !DILocation(line: 361, column: 28, scope: !619)
!2842 = !{!1074, !972, i64 120}
!2843 = !DILocation(line: 361, column: 6, scope: !619)
!2844 = !DILocation(line: 361, column: 18, scope: !619)
!2845 = !DILocation(line: 363, column: 5, scope: !619)
!2846 = !DILocation(line: 363, column: 10, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !631, file: !421, discriminator: 1)
!2848 = !DILocation(line: 363, column: 20, scope: !631)
!2849 = !DILocation(line: 363, column: 52, scope: !631)
!2850 = !DILocation(line: 363, column: 51, scope: !631)
!2851 = !DILocation(line: 363, column: 65, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !631, file: !421, line: 363, column: 65)
!2853 = !DILocation(line: 363, column: 81, scope: !2852)
!2854 = !DILocation(line: 363, column: 65, scope: !631)
!2855 = !DILocation(line: 363, column: 112, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2852, file: !421, discriminator: 2)
!2857 = !DILocation(line: 363, column: 131, scope: !2852)
!2858 = !DILocation(line: 363, column: 140, scope: !2852)
!2859 = !DILocation(line: 363, column: 96, scope: !2852)
!2860 = !DILocation(line: 363, column: 145, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2862, file: !421, discriminator: 4)
!2862 = !DILexicalBlockFile(scope: !619, file: !421, discriminator: 3)
!2863 = !DILocation(line: 363, column: 145, scope: !631)
!2864 = !DILocation(line: 363, column: 145, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !631, file: !421, discriminator: 5)
!2866 = !DILocation(line: 364, column: 5, scope: !619)
!2867 = !DILocation(line: 364, column: 10, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !633, file: !421, discriminator: 1)
!2869 = !DILocation(line: 364, column: 20, scope: !633)
!2870 = !DILocation(line: 364, column: 52, scope: !633)
!2871 = !DILocation(line: 364, column: 51, scope: !633)
!2872 = !DILocation(line: 364, column: 66, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !633, file: !421, line: 364, column: 66)
!2874 = !DILocation(line: 364, column: 82, scope: !2873)
!2875 = !DILocation(line: 364, column: 66, scope: !633)
!2876 = !DILocation(line: 364, column: 113, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2873, file: !421, discriminator: 2)
!2878 = !DILocation(line: 364, column: 132, scope: !2873)
!2879 = !DILocation(line: 364, column: 141, scope: !2873)
!2880 = !DILocation(line: 364, column: 97, scope: !2873)
!2881 = !DILocation(line: 364, column: 146, scope: !2861)
!2882 = !DILocation(line: 364, column: 146, scope: !633)
!2883 = !DILocation(line: 364, column: 146, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !633, file: !421, discriminator: 5)
!2885 = !DILocation(line: 365, column: 5, scope: !619)
!2886 = !DILocation(line: 365, column: 10, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !635, file: !421, discriminator: 1)
!2888 = !DILocation(line: 365, column: 20, scope: !635)
!2889 = !DILocation(line: 365, column: 52, scope: !635)
!2890 = !DILocation(line: 365, column: 51, scope: !635)
!2891 = !DILocation(line: 365, column: 70, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !635, file: !421, line: 365, column: 70)
!2893 = !DILocation(line: 365, column: 86, scope: !2892)
!2894 = !DILocation(line: 365, column: 70, scope: !635)
!2895 = !DILocation(line: 365, column: 117, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2892, file: !421, discriminator: 2)
!2897 = !DILocation(line: 365, column: 136, scope: !2892)
!2898 = !DILocation(line: 365, column: 145, scope: !2892)
!2899 = !DILocation(line: 365, column: 101, scope: !2892)
!2900 = !DILocation(line: 365, column: 150, scope: !2861)
!2901 = !DILocation(line: 365, column: 150, scope: !635)
!2902 = !DILocation(line: 365, column: 150, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !635, file: !421, discriminator: 5)
!2904 = !DILocation(line: 366, column: 1, scope: !619)
!2905 = !DILocation(line: 369, column: 28, scope: !636)
!2906 = !DILocation(line: 369, column: 46, scope: !636)
!2907 = !DILocation(line: 369, column: 65, scope: !636)
!2908 = !DILocation(line: 371, column: 5, scope: !636)
!2909 = !DILocation(line: 371, column: 15, scope: !636)
!2910 = !DILocation(line: 371, column: 25, scope: !636)
!2911 = !DILocation(line: 371, column: 36, scope: !636)
!2912 = !DILocation(line: 372, column: 5, scope: !636)
!2913 = !DILocation(line: 372, column: 20, scope: !636)
!2914 = !DILocation(line: 372, column: 63, scope: !646)
!2915 = !DILocation(line: 372, column: 99, scope: !646)
!2916 = !DILocation(line: 372, column: 137, scope: !646)
!2917 = !DILocation(line: 372, column: 168, scope: !646)
!2918 = !DILocation(line: 372, column: 176, scope: !646)
!2919 = !DILocation(line: 372, column: 205, scope: !646)
!2920 = !DILocation(line: 372, column: 222, scope: !646)
!2921 = !DILocation(line: 372, column: 234, scope: !646)
!2922 = !DILocation(line: 372, column: 242, scope: !646)
!2923 = !DILocation(line: 372, column: 259, scope: !646)
!2924 = !DILocation(line: 372, column: 319, scope: !646)
!2925 = !DILocation(line: 372, column: 331, scope: !646)
!2926 = !DILocation(line: 372, column: 293, scope: !646)
!2927 = !DILocation(line: 372, column: 348, scope: !646)
!2928 = !DILocation(line: 372, column: 450, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2930, file: !421, discriminator: 4)
!2930 = !DILexicalBlockFile(scope: !2931, file: !421, discriminator: 3)
!2931 = !DILexicalBlockFile(scope: !2932, file: !421, discriminator: 2)
!2932 = distinct !DILexicalBlock(scope: !646, file: !421, line: 372, column: 355)
!2933 = !DILocation(line: 372, column: 501, scope: !2932)
!2934 = !DILocation(line: 372, column: 517, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2932, file: !421, discriminator: 1)
!2936 = !DILocation(line: 372, column: 536, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2938, file: !421, discriminator: 6)
!2938 = !DILexicalBlockFile(scope: !646, file: !421, discriminator: 5)
!2939 = !DILocation(line: 372, column: 535, scope: !646)
!2940 = !DILocation(line: 372, column: 533, scope: !646)
!2941 = !DILocation(line: 372, column: 558, scope: !646)
!2942 = !DILocation(line: 372, column: 660, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2944, file: !421, discriminator: 10)
!2944 = !DILexicalBlockFile(scope: !2945, file: !421, discriminator: 9)
!2945 = !DILexicalBlockFile(scope: !2946, file: !421, discriminator: 8)
!2946 = distinct !DILexicalBlock(scope: !646, file: !421, line: 372, column: 565)
!2947 = !DILocation(line: 372, column: 711, scope: !2946)
!2948 = !DILocation(line: 372, column: 727, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2946, file: !421, discriminator: 7)
!2950 = !DILocation(line: 372, column: 738, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2952, file: !421, discriminator: 12)
!2952 = !DILexicalBlockFile(scope: !646, file: !421, discriminator: 11)
!2953 = !DILocation(line: 372, column: 734, scope: !2946)
!2954 = !DILocation(line: 372, column: 746, scope: !636)
!2955 = !DILocation(line: 372, column: 746, scope: !646)
!2956 = !DILocation(line: 372, column: 30, scope: !636)
!2957 = !DILocation(line: 374, column: 15, scope: !636)
!2958 = !DILocation(line: 374, column: 23, scope: !636)
!2959 = !DILocation(line: 374, column: 13, scope: !636)
!2960 = !DILocation(line: 375, column: 16, scope: !636)
!2961 = !DILocation(line: 375, column: 24, scope: !636)
!2962 = !DILocation(line: 375, column: 14, scope: !636)
!2963 = !DILocation(line: 376, column: 20, scope: !636)
!2964 = !DILocation(line: 376, column: 28, scope: !636)
!2965 = !DILocation(line: 376, column: 18, scope: !636)
!2966 = !DILocation(line: 378, column: 24, scope: !636)
!2967 = !DILocation(line: 378, column: 5, scope: !636)
!2968 = !DILocation(line: 378, column: 13, scope: !636)
!2969 = !DILocation(line: 378, column: 22, scope: !636)
!2970 = !DILocation(line: 379, column: 25, scope: !636)
!2971 = !DILocation(line: 379, column: 5, scope: !636)
!2972 = !DILocation(line: 379, column: 13, scope: !636)
!2973 = !DILocation(line: 379, column: 23, scope: !636)
!2974 = !DILocation(line: 380, column: 29, scope: !636)
!2975 = !DILocation(line: 380, column: 5, scope: !636)
!2976 = !DILocation(line: 380, column: 13, scope: !636)
!2977 = !DILocation(line: 380, column: 27, scope: !636)
!2978 = !DILocation(line: 382, column: 5, scope: !636)
!2979 = !DILocation(line: 382, column: 10, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !651, file: !421, discriminator: 1)
!2981 = !DILocation(line: 382, column: 20, scope: !651)
!2982 = !DILocation(line: 382, column: 51, scope: !651)
!2983 = !DILocation(line: 382, column: 65, scope: !654)
!2984 = !DILocation(line: 382, column: 81, scope: !654)
!2985 = !DILocation(line: 382, column: 65, scope: !651)
!2986 = !DILocation(line: 382, column: 96, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !654, file: !421, discriminator: 2)
!2988 = !DILocation(line: 382, column: 101, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 4)
!2990 = !DILocation(line: 382, column: 111, scope: !653)
!2991 = !DILocation(line: 382, column: 141, scope: !653)
!2992 = !DILocation(line: 382, column: 167, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !653, file: !421, line: 382, column: 164)
!2994 = !DILocation(line: 382, column: 184, scope: !2993)
!2995 = !DILocation(line: 382, column: 164, scope: !2993)
!2996 = !DILocation(line: 382, column: 194, scope: !2993)
!2997 = !DILocation(line: 382, column: 164, scope: !653)
!2998 = !DILocation(line: 382, column: 164, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 5)
!3000 = !DILocation(line: 382, column: 225, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2993, file: !421, discriminator: 6)
!3002 = !DILocation(line: 382, column: 243, scope: !2993)
!3003 = !DILocation(line: 382, column: 253, scope: !2993)
!3004 = !DILocation(line: 382, column: 278, scope: !2993)
!3005 = !DILocation(line: 382, column: 209, scope: !2993)
!3006 = !DILocation(line: 382, column: 297, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !654, file: !421, discriminator: 7)
!3008 = !DILocation(line: 382, column: 297, scope: !653)
!3009 = !DILocation(line: 382, column: 297, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 8)
!3011 = !DILocation(line: 382, column: 297, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 9)
!3013 = !DILocation(line: 382, column: 310, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3015, file: !421, discriminator: 10)
!3015 = !DILexicalBlockFile(scope: !636, file: !421, discriminator: 3)
!3016 = !DILocation(line: 382, column: 310, scope: !651)
!3017 = !DILocation(line: 382, column: 310, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !651, file: !421, discriminator: 11)
!3019 = !DILocation(line: 383, column: 5, scope: !636)
!3020 = !DILocation(line: 383, column: 10, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !656, file: !421, discriminator: 1)
!3022 = !DILocation(line: 383, column: 20, scope: !656)
!3023 = !DILocation(line: 383, column: 51, scope: !656)
!3024 = !DILocation(line: 383, column: 66, scope: !659)
!3025 = !DILocation(line: 383, column: 82, scope: !659)
!3026 = !DILocation(line: 383, column: 66, scope: !656)
!3027 = !DILocation(line: 383, column: 97, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !659, file: !421, discriminator: 2)
!3029 = !DILocation(line: 383, column: 102, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 4)
!3031 = !DILocation(line: 383, column: 112, scope: !658)
!3032 = !DILocation(line: 383, column: 142, scope: !658)
!3033 = !DILocation(line: 383, column: 168, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !658, file: !421, line: 383, column: 165)
!3035 = !DILocation(line: 383, column: 185, scope: !3034)
!3036 = !DILocation(line: 383, column: 165, scope: !3034)
!3037 = !DILocation(line: 383, column: 195, scope: !3034)
!3038 = !DILocation(line: 383, column: 165, scope: !658)
!3039 = !DILocation(line: 383, column: 165, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 5)
!3041 = !DILocation(line: 383, column: 226, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !3034, file: !421, discriminator: 6)
!3043 = !DILocation(line: 383, column: 244, scope: !3034)
!3044 = !DILocation(line: 383, column: 254, scope: !3034)
!3045 = !DILocation(line: 383, column: 279, scope: !3034)
!3046 = !DILocation(line: 383, column: 210, scope: !3034)
!3047 = !DILocation(line: 383, column: 298, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !659, file: !421, discriminator: 7)
!3049 = !DILocation(line: 383, column: 298, scope: !658)
!3050 = !DILocation(line: 383, column: 298, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 8)
!3052 = !DILocation(line: 383, column: 298, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 9)
!3054 = !DILocation(line: 383, column: 311, scope: !3014)
!3055 = !DILocation(line: 383, column: 311, scope: !656)
!3056 = !DILocation(line: 383, column: 311, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !656, file: !421, discriminator: 11)
!3058 = !DILocation(line: 384, column: 5, scope: !636)
!3059 = !DILocation(line: 384, column: 10, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !661, file: !421, discriminator: 1)
!3061 = !DILocation(line: 384, column: 20, scope: !661)
!3062 = !DILocation(line: 384, column: 51, scope: !661)
!3063 = !DILocation(line: 384, column: 70, scope: !664)
!3064 = !DILocation(line: 384, column: 86, scope: !664)
!3065 = !DILocation(line: 384, column: 70, scope: !661)
!3066 = !DILocation(line: 384, column: 101, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !664, file: !421, discriminator: 2)
!3068 = !DILocation(line: 384, column: 106, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 4)
!3070 = !DILocation(line: 384, column: 116, scope: !663)
!3071 = !DILocation(line: 384, column: 146, scope: !663)
!3072 = !DILocation(line: 384, column: 172, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !663, file: !421, line: 384, column: 169)
!3074 = !DILocation(line: 384, column: 189, scope: !3073)
!3075 = !DILocation(line: 384, column: 169, scope: !3073)
!3076 = !DILocation(line: 384, column: 199, scope: !3073)
!3077 = !DILocation(line: 384, column: 169, scope: !663)
!3078 = !DILocation(line: 384, column: 169, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 5)
!3080 = !DILocation(line: 384, column: 230, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3073, file: !421, discriminator: 6)
!3082 = !DILocation(line: 384, column: 248, scope: !3073)
!3083 = !DILocation(line: 384, column: 258, scope: !3073)
!3084 = !DILocation(line: 384, column: 283, scope: !3073)
!3085 = !DILocation(line: 384, column: 214, scope: !3073)
!3086 = !DILocation(line: 384, column: 302, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !664, file: !421, discriminator: 7)
!3088 = !DILocation(line: 384, column: 302, scope: !663)
!3089 = !DILocation(line: 384, column: 302, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 8)
!3091 = !DILocation(line: 384, column: 302, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 9)
!3093 = !DILocation(line: 384, column: 315, scope: !3014)
!3094 = !DILocation(line: 384, column: 315, scope: !661)
!3095 = !DILocation(line: 384, column: 315, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !661, file: !421, discriminator: 11)
!3097 = !DILocation(line: 385, column: 1, scope: !636)
!3098 = !DILocation(line: 392, column: 21, scope: !665)
!3099 = !DILocation(line: 392, column: 5, scope: !665)
!3100 = !DILocation(line: 394, column: 5, scope: !665)
!3101 = !DILocation(line: 400, column: 23, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !668, file: !421, line: 400, column: 9)
!3103 = !DILocation(line: 400, column: 44, scope: !3102)
!3104 = !DILocation(line: 400, column: 53, scope: !3102)
!3105 = !DILocation(line: 400, column: 9, scope: !668)
!3106 = !DILocation(line: 403, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3102, file: !421, line: 400, column: 68)
!3108 = !DILocation(line: 406, column: 19, scope: !668)
!3109 = !DILocation(line: 406, column: 5, scope: !668)
!3110 = !DILocation(line: 407, column: 5, scope: !668)
!3111 = !DILocation(line: 411, column: 48, scope: !669)
!3112 = !DILocation(line: 411, column: 63, scope: !669)
!3113 = !DILocation(line: 413, column: 50, scope: !669)
!3114 = !DILocation(line: 413, column: 55, scope: !669)
!3115 = !DILocation(line: 413, column: 12, scope: !669)
!3116 = !DILocation(line: 413, column: 5, scope: !669)
!3117 = !DILocation(line: 417, column: 49, scope: !673)
!3118 = !DILocation(line: 417, column: 64, scope: !673)
!3119 = !DILocation(line: 417, column: 90, scope: !673)
!3120 = !DILocation(line: 419, column: 5, scope: !673)
!3121 = !DILocation(line: 419, column: 15, scope: !673)
!3122 = !DILocation(line: 420, column: 5, scope: !673)
!3123 = !DILocation(line: 420, column: 15, scope: !673)
!3124 = !DILocation(line: 420, column: 19, scope: !673)
!3125 = !DILocation(line: 421, column: 5, scope: !673)
!3126 = !DILocation(line: 421, column: 9, scope: !673)
!3127 = !DILocation(line: 421, column: 15, scope: !673)
!3128 = !DILocation(line: 421, column: 14, scope: !673)
!3129 = !DILocation(line: 427, column: 9, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !673, file: !421, line: 427, column: 9)
!3131 = !DILocation(line: 427, column: 11, scope: !3130)
!3132 = !DILocation(line: 427, column: 16, scope: !3130)
!3133 = !DILocation(line: 427, column: 19, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3130, file: !421, discriminator: 1)
!3135 = !DILocation(line: 427, column: 9, scope: !673)
!3136 = !DILocation(line: 428, column: 9, scope: !3130)
!3137 = !DILocation(line: 432, column: 9, scope: !684)
!3138 = !DILocation(line: 432, column: 11, scope: !684)
!3139 = !DILocation(line: 432, column: 9, scope: !673)
!3140 = !DILocation(line: 433, column: 9, scope: !683)
!3141 = !DILocation(line: 433, column: 15, scope: !683)
!3142 = !DILocation(line: 433, column: 28, scope: !683)
!3143 = !DILocation(line: 433, column: 19, scope: !683)
!3144 = !DILocation(line: 434, column: 42, scope: !683)
!3145 = !DILocation(line: 434, column: 19, scope: !683)
!3146 = !DILocation(line: 434, column: 17, scope: !683)
!3147 = !DILocation(line: 435, column: 5, scope: !684)
!3148 = !DILocation(line: 435, column: 5, scope: !683)
!3149 = !DILocation(line: 438, column: 19, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !684, file: !421, line: 436, column: 10)
!3151 = !DILocation(line: 438, column: 17, scope: !3150)
!3152 = !DILocation(line: 481, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !673, file: !421, line: 481, column: 9)
!3154 = !DILocation(line: 481, column: 17, scope: !3153)
!3155 = !DILocation(line: 481, column: 9, scope: !673)
!3156 = !DILocation(line: 486, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !421, line: 482, column: 5)
!3158 = !DILocation(line: 489, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !673, file: !421, line: 489, column: 9)
!3160 = !DILocation(line: 489, column: 24, scope: !3159)
!3161 = !DILocation(line: 489, column: 9, scope: !673)
!3162 = !DILocation(line: 490, column: 13, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !421, line: 490, column: 13)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !421, line: 489, column: 39)
!3165 = !DILocation(line: 490, column: 29, scope: !3163)
!3166 = !DILocation(line: 490, column: 13, scope: !3164)
!3167 = !DILocation(line: 491, column: 45, scope: !3163)
!3168 = !DILocation(line: 491, column: 48, scope: !3163)
!3169 = !DILocation(line: 491, column: 57, scope: !3163)
!3170 = !DILocation(line: 491, column: 76, scope: !3163)
!3171 = !DILocation(line: 491, column: 20, scope: !3163)
!3172 = !DILocation(line: 491, column: 18, scope: !3163)
!3173 = !DILocation(line: 491, column: 13, scope: !3163)
!3174 = !DILocation(line: 493, column: 43, scope: !3163)
!3175 = !DILocation(line: 493, column: 46, scope: !3163)
!3176 = !DILocation(line: 493, column: 55, scope: !3163)
!3177 = !DILocation(line: 493, column: 20, scope: !3163)
!3178 = !DILocation(line: 493, column: 18, scope: !3163)
!3179 = !DILocation(line: 494, column: 5, scope: !3164)
!3180 = !DILocation(line: 496, column: 38, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3159, file: !421, line: 494, column: 12)
!3182 = !DILocation(line: 496, column: 41, scope: !3181)
!3183 = !DILocation(line: 496, column: 16, scope: !3181)
!3184 = !DILocation(line: 496, column: 14, scope: !3181)
!3185 = !DILocation(line: 498, column: 5, scope: !673)
!3186 = !DILocation(line: 498, column: 10, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 1)
!3188 = !DILocation(line: 498, column: 20, scope: !686)
!3189 = !DILocation(line: 498, column: 50, scope: !686)
!3190 = !DILocation(line: 498, column: 68, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !686, file: !421, line: 498, column: 65)
!3192 = !DILocation(line: 498, column: 85, scope: !3191)
!3193 = !DILocation(line: 498, column: 65, scope: !3191)
!3194 = !DILocation(line: 498, column: 95, scope: !3191)
!3195 = !DILocation(line: 498, column: 65, scope: !686)
!3196 = !DILocation(line: 498, column: 65, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 2)
!3198 = !DILocation(line: 498, column: 126, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3191, file: !421, discriminator: 3)
!3200 = !DILocation(line: 498, column: 144, scope: !3191)
!3201 = !DILocation(line: 498, column: 154, scope: !3191)
!3202 = !DILocation(line: 498, column: 179, scope: !3191)
!3203 = !DILocation(line: 498, column: 110, scope: !3191)
!3204 = !DILocation(line: 498, column: 198, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !673, file: !421, discriminator: 4)
!3206 = !DILocation(line: 498, column: 198, scope: !686)
!3207 = !DILocation(line: 498, column: 198, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 5)
!3209 = !DILocation(line: 500, column: 9, scope: !690)
!3210 = !DILocation(line: 500, column: 14, scope: !690)
!3211 = !DILocation(line: 500, column: 9, scope: !673)
!3212 = !DILocation(line: 501, column: 27, scope: !689)
!3213 = !DILocation(line: 501, column: 32, scope: !689)
!3214 = !DILocation(line: 501, column: 13, scope: !689)
!3215 = !DILocation(line: 501, column: 11, scope: !689)
!3216 = !DILocation(line: 502, column: 9, scope: !689)
!3217 = !DILocation(line: 502, column: 14, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 1)
!3219 = !DILocation(line: 502, column: 24, scope: !688)
!3220 = !DILocation(line: 502, column: 54, scope: !688)
!3221 = !DILocation(line: 502, column: 69, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !688, file: !421, line: 502, column: 66)
!3223 = !DILocation(line: 502, column: 86, scope: !3222)
!3224 = !DILocation(line: 502, column: 66, scope: !3222)
!3225 = !DILocation(line: 502, column: 96, scope: !3222)
!3226 = !DILocation(line: 502, column: 66, scope: !688)
!3227 = !DILocation(line: 502, column: 66, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 2)
!3229 = !DILocation(line: 502, column: 127, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3222, file: !421, discriminator: 3)
!3231 = !DILocation(line: 502, column: 145, scope: !3222)
!3232 = !DILocation(line: 502, column: 155, scope: !3222)
!3233 = !DILocation(line: 502, column: 180, scope: !3222)
!3234 = !DILocation(line: 502, column: 111, scope: !3222)
!3235 = !DILocation(line: 502, column: 199, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !689, file: !421, discriminator: 4)
!3237 = !DILocation(line: 502, column: 199, scope: !688)
!3238 = !DILocation(line: 502, column: 199, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 5)
!3240 = !DILocation(line: 503, column: 13, scope: !694)
!3241 = !DILocation(line: 503, column: 15, scope: !694)
!3242 = !DILocation(line: 503, column: 13, scope: !689)
!3243 = !DILocation(line: 504, column: 56, scope: !693)
!3244 = !DILocation(line: 504, column: 61, scope: !693)
!3245 = !DILocation(line: 504, column: 29, scope: !693)
!3246 = !DILocation(line: 504, column: 71, scope: !693)
!3247 = !DILocation(line: 504, column: 13, scope: !693)
!3248 = !DILocation(line: 505, column: 13, scope: !693)
!3249 = !DILocation(line: 505, column: 18, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 1)
!3251 = !DILocation(line: 505, column: 28, scope: !692)
!3252 = !DILocation(line: 505, column: 58, scope: !692)
!3253 = !DILocation(line: 505, column: 70, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !692, file: !421, line: 505, column: 67)
!3255 = !DILocation(line: 505, column: 87, scope: !3254)
!3256 = !DILocation(line: 505, column: 67, scope: !3254)
!3257 = !DILocation(line: 505, column: 97, scope: !3254)
!3258 = !DILocation(line: 505, column: 67, scope: !692)
!3259 = !DILocation(line: 505, column: 67, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 2)
!3261 = !DILocation(line: 505, column: 128, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !3254, file: !421, discriminator: 3)
!3263 = !DILocation(line: 505, column: 146, scope: !3254)
!3264 = !DILocation(line: 505, column: 156, scope: !3254)
!3265 = !DILocation(line: 505, column: 181, scope: !3254)
!3266 = !DILocation(line: 505, column: 112, scope: !3254)
!3267 = !DILocation(line: 505, column: 200, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !693, file: !421, discriminator: 4)
!3269 = !DILocation(line: 505, column: 200, scope: !692)
!3270 = !DILocation(line: 505, column: 200, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 5)
!3272 = !DILocation(line: 506, column: 9, scope: !693)
!3273 = !DILocation(line: 507, column: 5, scope: !689)
!3274 = !DILocation(line: 511, column: 5, scope: !673)
!3275 = !DILocation(line: 512, column: 1, scope: !673)
!3276 = !DILocation(line: 515, column: 42, scope: !695)
!3277 = !DILocation(line: 515, column: 59, scope: !695)
!3278 = !DILocation(line: 517, column: 5, scope: !695)
!3279 = !DILocation(line: 517, column: 15, scope: !695)
!3280 = !DILocation(line: 517, column: 22, scope: !695)
!3281 = !DILocation(line: 517, column: 59, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 1)
!3283 = !DILocation(line: 517, column: 33, scope: !695)
!3284 = !DILocation(line: 517, column: 22, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 2)
!3286 = !DILocation(line: 517, column: 15, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3288, file: !421, discriminator: 4)
!3288 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 3)
!3289 = !DILocation(line: 518, column: 5, scope: !695)
!3290 = !DILocation(line: 518, column: 15, scope: !695)
!3291 = !DILocation(line: 518, column: 62, scope: !695)
!3292 = !DILocation(line: 518, column: 67, scope: !695)
!3293 = !DILocation(line: 518, column: 24, scope: !695)
!3294 = !DILocation(line: 519, column: 5, scope: !695)
!3295 = !DILocation(line: 519, column: 10, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !704, file: !421, discriminator: 1)
!3297 = !DILocation(line: 519, column: 20, scope: !704)
!3298 = !DILocation(line: 519, column: 51, scope: !704)
!3299 = !DILocation(line: 519, column: 62, scope: !707)
!3300 = !DILocation(line: 519, column: 78, scope: !707)
!3301 = !DILocation(line: 519, column: 62, scope: !704)
!3302 = !DILocation(line: 519, column: 93, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !707, file: !421, discriminator: 2)
!3304 = !DILocation(line: 519, column: 98, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 4)
!3306 = !DILocation(line: 519, column: 108, scope: !706)
!3307 = !DILocation(line: 519, column: 138, scope: !706)
!3308 = !DILocation(line: 519, column: 164, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !706, file: !421, line: 519, column: 161)
!3310 = !DILocation(line: 519, column: 181, scope: !3309)
!3311 = !DILocation(line: 519, column: 161, scope: !3309)
!3312 = !DILocation(line: 519, column: 191, scope: !3309)
!3313 = !DILocation(line: 519, column: 161, scope: !706)
!3314 = !DILocation(line: 519, column: 161, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 5)
!3316 = !DILocation(line: 519, column: 222, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3309, file: !421, discriminator: 6)
!3318 = !DILocation(line: 519, column: 240, scope: !3309)
!3319 = !DILocation(line: 519, column: 250, scope: !3309)
!3320 = !DILocation(line: 519, column: 275, scope: !3309)
!3321 = !DILocation(line: 519, column: 206, scope: !3309)
!3322 = !DILocation(line: 519, column: 294, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !707, file: !421, discriminator: 7)
!3324 = !DILocation(line: 519, column: 294, scope: !706)
!3325 = !DILocation(line: 519, column: 294, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 8)
!3327 = !DILocation(line: 519, column: 294, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 9)
!3329 = !DILocation(line: 519, column: 307, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3288, file: !421, discriminator: 10)
!3331 = !DILocation(line: 519, column: 307, scope: !704)
!3332 = !DILocation(line: 519, column: 307, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !704, file: !421, discriminator: 11)
!3334 = !DILocation(line: 520, column: 12, scope: !695)
!3335 = !DILocation(line: 521, column: 1, scope: !695)
!3336 = !DILocation(line: 520, column: 5, scope: !695)
!3337 = !DILocation(line: 537, column: 30, scope: !708)
!3338 = !DILocation(line: 539, column: 50, scope: !708)
!3339 = !DILocation(line: 539, column: 12, scope: !708)
!3340 = !DILocation(line: 539, column: 5, scope: !708)
!3341 = !DILocation(line: 686, column: 32, scope: !711)
!3342 = !DILocation(line: 686, column: 47, scope: !711)
!3343 = !DILocation(line: 686, column: 63, scope: !711)
!3344 = !DILocation(line: 688, column: 5, scope: !711)
!3345 = !DILocation(line: 688, column: 15, scope: !711)
!3346 = !DILocation(line: 688, column: 22, scope: !711)
!3347 = !DILocation(line: 688, column: 31, scope: !711)
!3348 = !DILocation(line: 690, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !711, file: !421, line: 690, column: 9)
!3350 = !DILocation(line: 690, column: 13, scope: !3349)
!3351 = !DILocation(line: 690, column: 9, scope: !711)
!3352 = !DILocation(line: 691, column: 9, scope: !3349)
!3353 = !DILocation(line: 693, column: 12, scope: !711)
!3354 = !DILocation(line: 693, column: 10, scope: !711)
!3355 = !DILocation(line: 694, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !711, file: !421, line: 694, column: 9)
!3357 = !DILocation(line: 694, column: 14, scope: !3356)
!3358 = !DILocation(line: 694, column: 9, scope: !711)
!3359 = !DILocation(line: 695, column: 9, scope: !3356)
!3360 = !DILocation(line: 697, column: 14, scope: !711)
!3361 = !DILocation(line: 697, column: 12, scope: !711)
!3362 = !DILocation(line: 698, column: 9, scope: !722)
!3363 = !DILocation(line: 698, column: 16, scope: !722)
!3364 = !DILocation(line: 698, column: 9, scope: !711)
!3365 = !DILocation(line: 699, column: 9, scope: !721)
!3366 = !DILocation(line: 699, column: 14, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 1)
!3368 = !DILocation(line: 699, column: 24, scope: !720)
!3369 = !DILocation(line: 699, column: 54, scope: !720)
!3370 = !DILocation(line: 699, column: 69, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !720, file: !421, line: 699, column: 66)
!3372 = !DILocation(line: 699, column: 86, scope: !3371)
!3373 = !DILocation(line: 699, column: 66, scope: !3371)
!3374 = !DILocation(line: 699, column: 96, scope: !3371)
!3375 = !DILocation(line: 699, column: 66, scope: !720)
!3376 = !DILocation(line: 699, column: 66, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 2)
!3378 = !DILocation(line: 699, column: 127, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3371, file: !421, discriminator: 3)
!3380 = !DILocation(line: 699, column: 145, scope: !3371)
!3381 = !DILocation(line: 699, column: 155, scope: !3371)
!3382 = !DILocation(line: 699, column: 180, scope: !3371)
!3383 = !DILocation(line: 699, column: 111, scope: !3371)
!3384 = !DILocation(line: 699, column: 199, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !721, file: !421, discriminator: 4)
!3386 = !DILocation(line: 699, column: 199, scope: !720)
!3387 = !DILocation(line: 699, column: 199, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 5)
!3389 = !DILocation(line: 700, column: 9, scope: !721)
!3390 = !DILocation(line: 703, column: 9, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !711, file: !421, line: 703, column: 9)
!3392 = !DILocation(line: 703, column: 14, scope: !3391)
!3393 = !DILocation(line: 703, column: 9, scope: !711)
!3394 = !DILocation(line: 704, column: 14, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3391, file: !421, line: 703, column: 29)
!3396 = !DILocation(line: 705, column: 5, scope: !3395)
!3397 = !DILocation(line: 707, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !711, file: !421, line: 707, column: 9)
!3399 = !DILocation(line: 707, column: 14, scope: !3398)
!3400 = !DILocation(line: 707, column: 9, scope: !711)
!3401 = !DILocation(line: 708, column: 14, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !421, line: 707, column: 29)
!3403 = !DILocation(line: 709, column: 5, scope: !3402)
!3404 = !DILocation(line: 711, column: 21, scope: !711)
!3405 = !DILocation(line: 711, column: 28, scope: !711)
!3406 = !DILocation(line: 711, column: 37, scope: !711)
!3407 = !DILocation(line: 712, column: 46, scope: !711)
!3408 = !DILocation(line: 712, column: 25, scope: !711)
!3409 = !DILocation(line: 712, column: 7, scope: !711)
!3410 = !DILocation(line: 712, column: 33, scope: !711)
!3411 = !DILocation(line: 712, column: 6, scope: !711)
!3412 = !DILocation(line: 712, column: 44, scope: !711)
!3413 = !DILocation(line: 714, column: 30, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !711, file: !421, line: 714, column: 9)
!3415 = !DILocation(line: 714, column: 46, scope: !3414)
!3416 = !DILocation(line: 714, column: 9, scope: !3414)
!3417 = !DILocation(line: 714, column: 52, scope: !3414)
!3418 = !DILocation(line: 714, column: 9, scope: !711)
!3419 = !DILocation(line: 715, column: 9, scope: !3414)
!3420 = !DILocation(line: 716, column: 30, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !711, file: !421, line: 716, column: 9)
!3422 = !DILocation(line: 716, column: 46, scope: !3421)
!3423 = !DILocation(line: 716, column: 9, scope: !3421)
!3424 = !DILocation(line: 716, column: 52, scope: !3421)
!3425 = !DILocation(line: 716, column: 9, scope: !711)
!3426 = !DILocation(line: 717, column: 9, scope: !3421)
!3427 = !DILocation(line: 719, column: 27, scope: !711)
!3428 = !DILocation(line: 719, column: 46, scope: !711)
!3429 = !DILocation(line: 719, column: 52, scope: !711)
!3430 = !DILocation(line: 719, column: 13, scope: !711)
!3431 = !DILocation(line: 719, column: 11, scope: !711)
!3432 = !DILocation(line: 720, column: 9, scope: !726)
!3433 = !DILocation(line: 720, column: 15, scope: !726)
!3434 = !DILocation(line: 720, column: 9, scope: !711)
!3435 = !DILocation(line: 721, column: 51, scope: !725)
!3436 = !DILocation(line: 721, column: 60, scope: !725)
!3437 = !DILocation(line: 721, column: 25, scope: !725)
!3438 = !DILocation(line: 721, column: 70, scope: !725)
!3439 = !DILocation(line: 721, column: 9, scope: !725)
!3440 = !DILocation(line: 722, column: 9, scope: !725)
!3441 = !DILocation(line: 722, column: 14, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 1)
!3443 = !DILocation(line: 722, column: 24, scope: !724)
!3444 = !DILocation(line: 722, column: 54, scope: !724)
!3445 = !DILocation(line: 722, column: 70, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !724, file: !421, line: 722, column: 67)
!3447 = !DILocation(line: 722, column: 87, scope: !3446)
!3448 = !DILocation(line: 722, column: 67, scope: !3446)
!3449 = !DILocation(line: 722, column: 97, scope: !3446)
!3450 = !DILocation(line: 722, column: 67, scope: !724)
!3451 = !DILocation(line: 722, column: 67, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 2)
!3453 = !DILocation(line: 722, column: 128, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3446, file: !421, discriminator: 3)
!3455 = !DILocation(line: 722, column: 146, scope: !3446)
!3456 = !DILocation(line: 722, column: 156, scope: !3446)
!3457 = !DILocation(line: 722, column: 181, scope: !3446)
!3458 = !DILocation(line: 722, column: 112, scope: !3446)
!3459 = !DILocation(line: 722, column: 200, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !725, file: !421, discriminator: 4)
!3461 = !DILocation(line: 722, column: 200, scope: !724)
!3462 = !DILocation(line: 722, column: 200, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 5)
!3464 = !DILocation(line: 723, column: 5, scope: !725)
!3465 = !DILocation(line: 725, column: 5, scope: !711)
!3466 = !DILocation(line: 725, column: 10, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 1)
!3468 = !DILocation(line: 725, column: 20, scope: !728)
!3469 = !DILocation(line: 725, column: 50, scope: !728)
!3470 = !DILocation(line: 725, column: 65, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !728, file: !421, line: 725, column: 62)
!3472 = !DILocation(line: 725, column: 82, scope: !3471)
!3473 = !DILocation(line: 725, column: 62, scope: !3471)
!3474 = !DILocation(line: 725, column: 92, scope: !3471)
!3475 = !DILocation(line: 725, column: 62, scope: !728)
!3476 = !DILocation(line: 725, column: 62, scope: !3477)
!3477 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 2)
!3478 = !DILocation(line: 725, column: 123, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3471, file: !421, discriminator: 3)
!3480 = !DILocation(line: 725, column: 141, scope: !3471)
!3481 = !DILocation(line: 725, column: 151, scope: !3471)
!3482 = !DILocation(line: 725, column: 176, scope: !3471)
!3483 = !DILocation(line: 725, column: 107, scope: !3471)
!3484 = !DILocation(line: 725, column: 195, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !711, file: !421, discriminator: 4)
!3486 = !DILocation(line: 725, column: 195, scope: !728)
!3487 = !DILocation(line: 725, column: 195, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 5)
!3489 = !DILocation(line: 726, column: 5, scope: !711)
!3490 = !DILocation(line: 726, column: 10, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 1)
!3492 = !DILocation(line: 726, column: 20, scope: !730)
!3493 = !DILocation(line: 726, column: 50, scope: !730)
!3494 = !DILocation(line: 726, column: 67, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !730, file: !421, line: 726, column: 64)
!3496 = !DILocation(line: 726, column: 84, scope: !3495)
!3497 = !DILocation(line: 726, column: 64, scope: !3495)
!3498 = !DILocation(line: 726, column: 94, scope: !3495)
!3499 = !DILocation(line: 726, column: 64, scope: !730)
!3500 = !DILocation(line: 726, column: 64, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 2)
!3502 = !DILocation(line: 726, column: 125, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3495, file: !421, discriminator: 3)
!3504 = !DILocation(line: 726, column: 143, scope: !3495)
!3505 = !DILocation(line: 726, column: 153, scope: !3495)
!3506 = !DILocation(line: 726, column: 178, scope: !3495)
!3507 = !DILocation(line: 726, column: 109, scope: !3495)
!3508 = !DILocation(line: 726, column: 197, scope: !3485)
!3509 = !DILocation(line: 726, column: 197, scope: !730)
!3510 = !DILocation(line: 726, column: 197, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 5)
!3512 = !DILocation(line: 728, column: 5, scope: !711)
!3513 = !DILocation(line: 729, column: 1, scope: !711)
!3514 = !DILocation(line: 732, column: 36, scope: !731)
!3515 = !DILocation(line: 732, column: 50, scope: !731)
!3516 = !DILocation(line: 734, column: 18, scope: !731)
!3517 = !DILocation(line: 736, column: 18, scope: !731)
!3518 = !DILocation(line: 736, column: 28, scope: !731)
!3519 = !DILocation(line: 734, column: 5, scope: !731)
!3520 = !DILocation(line: 737, column: 1, scope: !731)
!3521 = !DILocation(line: 746, column: 18, scope: !737)
!3522 = !DILocation(line: 746, column: 5, scope: !737)
!3523 = !DILocation(line: 748, column: 1, scope: !737)
!3524 = !DILocation(line: 781, column: 32, scope: !763)
!3525 = !DILocation(line: 781, column: 48, scope: !763)
!3526 = !DILocation(line: 781, column: 64, scope: !763)
!3527 = !DILocation(line: 783, column: 5, scope: !763)
!3528 = !DILocation(line: 783, column: 17, scope: !763)
!3529 = !DILocation(line: 784, column: 5, scope: !763)
!3530 = !DILocation(line: 784, column: 15, scope: !763)
!3531 = !DILocation(line: 785, column: 5, scope: !763)
!3532 = !DILocation(line: 785, column: 15, scope: !763)
!3533 = !DILocation(line: 786, column: 5, scope: !763)
!3534 = !DILocation(line: 786, column: 15, scope: !763)
!3535 = !DILocation(line: 787, column: 5, scope: !763)
!3536 = !DILocation(line: 787, column: 15, scope: !763)
!3537 = !DILocation(line: 788, column: 5, scope: !763)
!3538 = !DILocation(line: 788, column: 15, scope: !763)
!3539 = !DILocation(line: 789, column: 19, scope: !763)
!3540 = !DILocation(line: 789, column: 11, scope: !763)
!3541 = !DILocation(line: 789, column: 9, scope: !763)
!3542 = !DILocation(line: 790, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !763, file: !421, line: 790, column: 9)
!3544 = !DILocation(line: 790, column: 13, scope: !3543)
!3545 = !DILocation(line: 790, column: 9, scope: !763)
!3546 = !DILocation(line: 791, column: 25, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !421, line: 790, column: 28)
!3548 = !DILocation(line: 791, column: 9, scope: !3547)
!3549 = !DILocation(line: 793, column: 9, scope: !3547)
!3550 = !DILocation(line: 795, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !763, file: !421, line: 795, column: 9)
!3552 = !DILocation(line: 795, column: 14, scope: !3551)
!3553 = !DILocation(line: 795, column: 9, scope: !763)
!3554 = !DILocation(line: 796, column: 16, scope: !3551)
!3555 = !DILocation(line: 796, column: 14, scope: !3551)
!3556 = !DILocation(line: 796, column: 9, scope: !3551)
!3557 = !DILocation(line: 797, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !763, file: !421, line: 797, column: 9)
!3559 = !DILocation(line: 797, column: 14, scope: !3558)
!3560 = !DILocation(line: 797, column: 9, scope: !763)
!3561 = !DILocation(line: 798, column: 25, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !421, line: 797, column: 29)
!3563 = !DILocation(line: 798, column: 23, scope: !3562)
!3564 = !DILocation(line: 798, column: 14, scope: !3562)
!3565 = !DILocation(line: 799, column: 13, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3562, file: !421, line: 799, column: 13)
!3567 = !DILocation(line: 799, column: 18, scope: !3566)
!3568 = !DILocation(line: 799, column: 13, scope: !3562)
!3569 = !DILocation(line: 800, column: 13, scope: !3566)
!3570 = !DILocation(line: 801, column: 5, scope: !3562)
!3571 = !DILocation(line: 802, column: 30, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !763, file: !421, line: 802, column: 9)
!3573 = !DILocation(line: 802, column: 9, scope: !3572)
!3574 = !DILocation(line: 802, column: 50, scope: !3572)
!3575 = !DILocation(line: 802, column: 9, scope: !763)
!3576 = !DILocation(line: 803, column: 50, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !421, line: 802, column: 65)
!3578 = !DILocation(line: 804, column: 59, scope: !3577)
!3579 = !DILocation(line: 804, column: 63, scope: !3577)
!3580 = !DILocation(line: 804, column: 62, scope: !3577)
!3581 = !DILocation(line: 803, column: 22, scope: !3577)
!3582 = !DILocation(line: 803, column: 20, scope: !3577)
!3583 = !DILocation(line: 805, column: 13, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3577, file: !421, line: 805, column: 13)
!3585 = !DILocation(line: 805, column: 24, scope: !3584)
!3586 = !DILocation(line: 805, column: 13, scope: !3577)
!3587 = !DILocation(line: 806, column: 13, scope: !3584)
!3588 = !DILocation(line: 807, column: 34, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3577, file: !421, line: 807, column: 13)
!3590 = !DILocation(line: 807, column: 54, scope: !3589)
!3591 = !DILocation(line: 807, column: 13, scope: !3589)
!3592 = !DILocation(line: 807, column: 66, scope: !3589)
!3593 = !DILocation(line: 807, column: 13, scope: !3577)
!3594 = !DILocation(line: 808, column: 13, scope: !3589)
!3595 = !DILocation(line: 809, column: 5, scope: !3577)
!3596 = !DILocation(line: 810, column: 26, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !763, file: !421, line: 810, column: 9)
!3598 = !DILocation(line: 810, column: 34, scope: !3597)
!3599 = !DILocation(line: 810, column: 45, scope: !3597)
!3600 = !DILocation(line: 810, column: 54, scope: !3597)
!3601 = !DILocation(line: 810, column: 71, scope: !3597)
!3602 = !DILocation(line: 810, column: 9, scope: !763)
!3603 = !DILocation(line: 811, column: 17, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !421, line: 810, column: 78)
!3605 = !DILocation(line: 811, column: 15, scope: !3604)
!3606 = !DILocation(line: 813, column: 25, scope: !3604)
!3607 = !DILocation(line: 813, column: 34, scope: !3604)
!3608 = !DILocation(line: 813, column: 43, scope: !3604)
!3609 = !DILocation(line: 814, column: 5, scope: !3604)
!3610 = !DILocation(line: 815, column: 33, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3597, file: !421, line: 814, column: 12)
!3612 = !DILocation(line: 815, column: 17, scope: !3611)
!3613 = !DILocation(line: 815, column: 15, scope: !3611)
!3614 = !DILocation(line: 816, column: 13, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3611, file: !421, line: 816, column: 13)
!3616 = !DILocation(line: 816, column: 19, scope: !3615)
!3617 = !DILocation(line: 816, column: 13, scope: !3611)
!3618 = !DILocation(line: 817, column: 13, scope: !3615)
!3619 = !DILocation(line: 821, column: 36, scope: !763)
!3620 = !DILocation(line: 821, column: 39, scope: !763)
!3621 = !DILocation(line: 821, column: 43, scope: !763)
!3622 = !DILocation(line: 821, column: 50, scope: !763)
!3623 = !DILocation(line: 820, column: 14, scope: !763)
!3624 = !DILocation(line: 820, column: 12, scope: !763)
!3625 = !DILocation(line: 820, column: 5, scope: !763)
!3626 = !DILocation(line: 823, column: 5, scope: !763)
!3627 = !DILocation(line: 823, column: 10, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !777, file: !421, discriminator: 1)
!3629 = !DILocation(line: 823, column: 20, scope: !777)
!3630 = !DILocation(line: 823, column: 51, scope: !777)
!3631 = !DILocation(line: 823, column: 63, scope: !780)
!3632 = !DILocation(line: 823, column: 79, scope: !780)
!3633 = !DILocation(line: 823, column: 63, scope: !777)
!3634 = !DILocation(line: 823, column: 94, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !780, file: !421, discriminator: 2)
!3636 = !DILocation(line: 823, column: 99, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 4)
!3638 = !DILocation(line: 823, column: 109, scope: !779)
!3639 = !DILocation(line: 823, column: 139, scope: !779)
!3640 = !DILocation(line: 823, column: 165, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !779, file: !421, line: 823, column: 162)
!3642 = !DILocation(line: 823, column: 182, scope: !3641)
!3643 = !DILocation(line: 823, column: 162, scope: !3641)
!3644 = !DILocation(line: 823, column: 192, scope: !3641)
!3645 = !DILocation(line: 823, column: 162, scope: !779)
!3646 = !DILocation(line: 823, column: 162, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 5)
!3648 = !DILocation(line: 823, column: 223, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3641, file: !421, discriminator: 6)
!3650 = !DILocation(line: 823, column: 241, scope: !3641)
!3651 = !DILocation(line: 823, column: 251, scope: !3641)
!3652 = !DILocation(line: 823, column: 276, scope: !3641)
!3653 = !DILocation(line: 823, column: 207, scope: !3641)
!3654 = !DILocation(line: 823, column: 295, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !780, file: !421, discriminator: 7)
!3656 = !DILocation(line: 823, column: 295, scope: !779)
!3657 = !DILocation(line: 823, column: 295, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 8)
!3659 = !DILocation(line: 823, column: 295, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 9)
!3661 = !DILocation(line: 823, column: 308, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3663, file: !421, discriminator: 10)
!3663 = !DILexicalBlockFile(scope: !763, file: !421, discriminator: 3)
!3664 = !DILocation(line: 823, column: 308, scope: !777)
!3665 = !DILocation(line: 823, column: 308, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !777, file: !421, discriminator: 11)
!3667 = !DILocation(line: 824, column: 5, scope: !763)
!3668 = !DILocation(line: 824, column: 10, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !782, file: !421, discriminator: 1)
!3670 = !DILocation(line: 824, column: 20, scope: !782)
!3671 = !DILocation(line: 824, column: 51, scope: !782)
!3672 = !DILocation(line: 824, column: 64, scope: !785)
!3673 = !DILocation(line: 824, column: 80, scope: !785)
!3674 = !DILocation(line: 824, column: 64, scope: !782)
!3675 = !DILocation(line: 824, column: 95, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !785, file: !421, discriminator: 2)
!3677 = !DILocation(line: 824, column: 100, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 4)
!3679 = !DILocation(line: 824, column: 110, scope: !784)
!3680 = !DILocation(line: 824, column: 140, scope: !784)
!3681 = !DILocation(line: 824, column: 166, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !784, file: !421, line: 824, column: 163)
!3683 = !DILocation(line: 824, column: 183, scope: !3682)
!3684 = !DILocation(line: 824, column: 163, scope: !3682)
!3685 = !DILocation(line: 824, column: 193, scope: !3682)
!3686 = !DILocation(line: 824, column: 163, scope: !784)
!3687 = !DILocation(line: 824, column: 163, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 5)
!3689 = !DILocation(line: 824, column: 224, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3682, file: !421, discriminator: 6)
!3691 = !DILocation(line: 824, column: 242, scope: !3682)
!3692 = !DILocation(line: 824, column: 252, scope: !3682)
!3693 = !DILocation(line: 824, column: 277, scope: !3682)
!3694 = !DILocation(line: 824, column: 208, scope: !3682)
!3695 = !DILocation(line: 824, column: 296, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !785, file: !421, discriminator: 7)
!3697 = !DILocation(line: 824, column: 296, scope: !784)
!3698 = !DILocation(line: 824, column: 296, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 8)
!3700 = !DILocation(line: 824, column: 296, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 9)
!3702 = !DILocation(line: 824, column: 309, scope: !3662)
!3703 = !DILocation(line: 824, column: 309, scope: !782)
!3704 = !DILocation(line: 824, column: 309, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !782, file: !421, discriminator: 11)
!3706 = !DILocation(line: 825, column: 5, scope: !763)
!3707 = !DILocation(line: 825, column: 10, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !787, file: !421, discriminator: 1)
!3709 = !DILocation(line: 825, column: 20, scope: !787)
!3710 = !DILocation(line: 825, column: 51, scope: !787)
!3711 = !DILocation(line: 825, column: 67, scope: !790)
!3712 = !DILocation(line: 825, column: 83, scope: !790)
!3713 = !DILocation(line: 825, column: 67, scope: !787)
!3714 = !DILocation(line: 825, column: 98, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !790, file: !421, discriminator: 2)
!3716 = !DILocation(line: 825, column: 103, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 4)
!3718 = !DILocation(line: 825, column: 113, scope: !789)
!3719 = !DILocation(line: 825, column: 143, scope: !789)
!3720 = !DILocation(line: 825, column: 169, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !789, file: !421, line: 825, column: 166)
!3722 = !DILocation(line: 825, column: 186, scope: !3721)
!3723 = !DILocation(line: 825, column: 166, scope: !3721)
!3724 = !DILocation(line: 825, column: 196, scope: !3721)
!3725 = !DILocation(line: 825, column: 166, scope: !789)
!3726 = !DILocation(line: 825, column: 166, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 5)
!3728 = !DILocation(line: 825, column: 227, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3721, file: !421, discriminator: 6)
!3730 = !DILocation(line: 825, column: 245, scope: !3721)
!3731 = !DILocation(line: 825, column: 255, scope: !3721)
!3732 = !DILocation(line: 825, column: 280, scope: !3721)
!3733 = !DILocation(line: 825, column: 211, scope: !3721)
!3734 = !DILocation(line: 825, column: 299, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !790, file: !421, discriminator: 7)
!3736 = !DILocation(line: 825, column: 299, scope: !789)
!3737 = !DILocation(line: 825, column: 299, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 8)
!3739 = !DILocation(line: 825, column: 299, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 9)
!3741 = !DILocation(line: 825, column: 312, scope: !3662)
!3742 = !DILocation(line: 825, column: 312, scope: !787)
!3743 = !DILocation(line: 825, column: 312, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !787, file: !421, discriminator: 11)
!3745 = !DILocation(line: 826, column: 5, scope: !763)
!3746 = !DILocation(line: 826, column: 10, scope: !3747)
!3747 = !DILexicalBlockFile(scope: !792, file: !421, discriminator: 1)
!3748 = !DILocation(line: 826, column: 20, scope: !792)
!3749 = !DILocation(line: 826, column: 51, scope: !792)
!3750 = !DILocation(line: 826, column: 68, scope: !795)
!3751 = !DILocation(line: 826, column: 84, scope: !795)
!3752 = !DILocation(line: 826, column: 68, scope: !792)
!3753 = !DILocation(line: 826, column: 99, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !795, file: !421, discriminator: 2)
!3755 = !DILocation(line: 826, column: 104, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 4)
!3757 = !DILocation(line: 826, column: 114, scope: !794)
!3758 = !DILocation(line: 826, column: 144, scope: !794)
!3759 = !DILocation(line: 826, column: 170, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !794, file: !421, line: 826, column: 167)
!3761 = !DILocation(line: 826, column: 187, scope: !3760)
!3762 = !DILocation(line: 826, column: 167, scope: !3760)
!3763 = !DILocation(line: 826, column: 197, scope: !3760)
!3764 = !DILocation(line: 826, column: 167, scope: !794)
!3765 = !DILocation(line: 826, column: 167, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 5)
!3767 = !DILocation(line: 826, column: 228, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3760, file: !421, discriminator: 6)
!3769 = !DILocation(line: 826, column: 246, scope: !3760)
!3770 = !DILocation(line: 826, column: 256, scope: !3760)
!3771 = !DILocation(line: 826, column: 281, scope: !3760)
!3772 = !DILocation(line: 826, column: 212, scope: !3760)
!3773 = !DILocation(line: 826, column: 300, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !795, file: !421, discriminator: 7)
!3775 = !DILocation(line: 826, column: 300, scope: !794)
!3776 = !DILocation(line: 826, column: 300, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 8)
!3778 = !DILocation(line: 826, column: 300, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 9)
!3780 = !DILocation(line: 826, column: 313, scope: !3662)
!3781 = !DILocation(line: 826, column: 313, scope: !792)
!3782 = !DILocation(line: 826, column: 313, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !792, file: !421, discriminator: 11)
!3784 = !DILocation(line: 827, column: 12, scope: !763)
!3785 = !DILocation(line: 827, column: 5, scope: !763)
!3786 = !DILocation(line: 828, column: 1, scope: !763)
!3787 = !DILocation(line: 833, column: 39, scope: !796)
!3788 = !DILocation(line: 833, column: 57, scope: !796)
!3789 = !DILocation(line: 834, column: 37, scope: !796)
!3790 = !DILocation(line: 834, column: 53, scope: !796)
!3791 = !DILocation(line: 836, column: 5, scope: !796)
!3792 = !DILocation(line: 836, column: 9, scope: !796)
!3793 = !DILocation(line: 837, column: 5, scope: !796)
!3794 = !DILocation(line: 837, column: 15, scope: !796)
!3795 = !DILocation(line: 838, column: 5, scope: !796)
!3796 = !DILocation(line: 838, column: 15, scope: !796)
!3797 = !DILocation(line: 839, column: 5, scope: !796)
!3798 = !DILocation(line: 839, column: 15, scope: !796)
!3799 = !DILocation(line: 841, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !796, file: !421, line: 841, column: 9)
!3801 = !DILocation(line: 841, column: 14, scope: !3800)
!3802 = !DILocation(line: 841, column: 9, scope: !796)
!3803 = !DILocation(line: 842, column: 25, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3800, file: !421, line: 841, column: 29)
!3805 = !DILocation(line: 842, column: 23, scope: !3804)
!3806 = !DILocation(line: 842, column: 14, scope: !3804)
!3807 = !DILocation(line: 843, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3804, file: !421, line: 843, column: 13)
!3809 = !DILocation(line: 843, column: 18, scope: !3808)
!3810 = !DILocation(line: 843, column: 13, scope: !3804)
!3811 = !DILocation(line: 844, column: 13, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !421, line: 843, column: 33)
!3813 = !DILocation(line: 846, column: 5, scope: !3804)
!3814 = !DILocation(line: 848, column: 9, scope: !811)
!3815 = !DILocation(line: 848, column: 13, scope: !811)
!3816 = !DILocation(line: 848, column: 9, scope: !796)
!3817 = !DILocation(line: 849, column: 39, scope: !810)
!3818 = !DILocation(line: 849, column: 18, scope: !810)
!3819 = !DILocation(line: 849, column: 16, scope: !810)
!3820 = !DILocation(line: 850, column: 13, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !810, file: !421, line: 850, column: 13)
!3822 = !DILocation(line: 850, column: 20, scope: !3821)
!3823 = !DILocation(line: 850, column: 13, scope: !810)
!3824 = !DILocation(line: 851, column: 13, scope: !3821)
!3825 = !DILocation(line: 852, column: 39, scope: !810)
!3826 = !DILocation(line: 852, column: 56, scope: !810)
!3827 = !DILocation(line: 852, column: 18, scope: !810)
!3828 = !DILocation(line: 852, column: 16, scope: !810)
!3829 = !DILocation(line: 853, column: 9, scope: !810)
!3830 = !DILocation(line: 853, column: 14, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 1)
!3832 = !DILocation(line: 853, column: 24, scope: !809)
!3833 = !DILocation(line: 853, column: 54, scope: !809)
!3834 = !DILocation(line: 853, column: 71, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !809, file: !421, line: 853, column: 68)
!3836 = !DILocation(line: 853, column: 88, scope: !3835)
!3837 = !DILocation(line: 853, column: 68, scope: !3835)
!3838 = !DILocation(line: 853, column: 98, scope: !3835)
!3839 = !DILocation(line: 853, column: 68, scope: !809)
!3840 = !DILocation(line: 853, column: 68, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 2)
!3842 = !DILocation(line: 853, column: 129, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3835, file: !421, discriminator: 3)
!3844 = !DILocation(line: 853, column: 147, scope: !3835)
!3845 = !DILocation(line: 853, column: 157, scope: !3835)
!3846 = !DILocation(line: 853, column: 182, scope: !3835)
!3847 = !DILocation(line: 853, column: 113, scope: !3835)
!3848 = !DILocation(line: 853, column: 201, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !810, file: !421, discriminator: 4)
!3850 = !DILocation(line: 853, column: 201, scope: !809)
!3851 = !DILocation(line: 853, column: 201, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 5)
!3853 = !DILocation(line: 854, column: 13, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !810, file: !421, line: 854, column: 13)
!3855 = !DILocation(line: 854, column: 20, scope: !3854)
!3856 = !DILocation(line: 854, column: 13, scope: !810)
!3857 = !DILocation(line: 855, column: 13, scope: !3854)
!3858 = !DILocation(line: 856, column: 5, scope: !810)
!3859 = !DILocation(line: 858, column: 30, scope: !796)
!3860 = !DILocation(line: 858, column: 36, scope: !796)
!3861 = !DILocation(line: 858, column: 42, scope: !796)
!3862 = !DILocation(line: 858, column: 11, scope: !796)
!3863 = !DILocation(line: 858, column: 9, scope: !796)
!3864 = !DILocation(line: 858, column: 5, scope: !796)
!3865 = !DILocation(line: 860, column: 5, scope: !796)
!3866 = !DILocation(line: 860, column: 10, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !813, file: !421, discriminator: 1)
!3868 = !DILocation(line: 860, column: 20, scope: !813)
!3869 = !DILocation(line: 860, column: 51, scope: !813)
!3870 = !DILocation(line: 860, column: 64, scope: !816)
!3871 = !DILocation(line: 860, column: 80, scope: !816)
!3872 = !DILocation(line: 860, column: 64, scope: !813)
!3873 = !DILocation(line: 860, column: 95, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !816, file: !421, discriminator: 2)
!3875 = !DILocation(line: 860, column: 100, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 4)
!3877 = !DILocation(line: 860, column: 110, scope: !815)
!3878 = !DILocation(line: 860, column: 140, scope: !815)
!3879 = !DILocation(line: 860, column: 166, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !815, file: !421, line: 860, column: 163)
!3881 = !DILocation(line: 860, column: 183, scope: !3880)
!3882 = !DILocation(line: 860, column: 163, scope: !3880)
!3883 = !DILocation(line: 860, column: 193, scope: !3880)
!3884 = !DILocation(line: 860, column: 163, scope: !815)
!3885 = !DILocation(line: 860, column: 163, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 5)
!3887 = !DILocation(line: 860, column: 224, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3880, file: !421, discriminator: 6)
!3889 = !DILocation(line: 860, column: 242, scope: !3880)
!3890 = !DILocation(line: 860, column: 252, scope: !3880)
!3891 = !DILocation(line: 860, column: 277, scope: !3880)
!3892 = !DILocation(line: 860, column: 208, scope: !3880)
!3893 = !DILocation(line: 860, column: 296, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !816, file: !421, discriminator: 7)
!3895 = !DILocation(line: 860, column: 296, scope: !815)
!3896 = !DILocation(line: 860, column: 296, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 8)
!3898 = !DILocation(line: 860, column: 296, scope: !3899)
!3899 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 9)
!3900 = !DILocation(line: 860, column: 309, scope: !3901)
!3901 = !DILexicalBlockFile(scope: !3902, file: !421, discriminator: 10)
!3902 = !DILexicalBlockFile(scope: !796, file: !421, discriminator: 3)
!3903 = !DILocation(line: 860, column: 309, scope: !813)
!3904 = !DILocation(line: 860, column: 309, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !813, file: !421, discriminator: 11)
!3906 = !DILocation(line: 861, column: 12, scope: !796)
!3907 = !DILocation(line: 861, column: 5, scope: !796)
!3908 = !DILocation(line: 862, column: 1, scope: !796)
!3909 = !DILocation(line: 948, column: 34, scope: !849)
!3910 = !DILocation(line: 948, column: 48, scope: !849)
!3911 = !DILocation(line: 950, column: 28, scope: !849)
!3912 = !DILocation(line: 950, column: 38, scope: !849)
!3913 = !DILocation(line: 950, column: 5, scope: !849)
!3914 = !DILocation(line: 951, column: 1, scope: !849)
!3915 = !DILocation(line: 1027, column: 36, scope: !888)
!3916 = !DILocation(line: 1027, column: 50, scope: !888)
!3917 = !DILocation(line: 1027, column: 62, scope: !888)
!3918 = !DILocation(line: 1029, column: 5, scope: !888)
!3919 = !DILocation(line: 1029, column: 15, scope: !888)
!3920 = !DILocation(line: 1030, column: 9, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !888, file: !421, line: 1030, column: 9)
!3922 = !DILocation(line: 1030, column: 18, scope: !3921)
!3923 = !DILocation(line: 1030, column: 9, scope: !888)
!3924 = !DILocation(line: 1031, column: 45, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3921, file: !421, line: 1030, column: 33)
!3926 = !DILocation(line: 1031, column: 19, scope: !3925)
!3927 = !DILocation(line: 1031, column: 17, scope: !3925)
!3928 = !DILocation(line: 1032, column: 13, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !421, line: 1032, column: 13)
!3930 = !DILocation(line: 1032, column: 21, scope: !3929)
!3931 = !DILocation(line: 1032, column: 13, scope: !3925)
!3932 = !DILocation(line: 1033, column: 13, scope: !3929)
!3933 = !DILocation(line: 1034, column: 5, scope: !3925)
!3934 = !DILocation(line: 1036, column: 17, scope: !3921)
!3935 = !DILocation(line: 1037, column: 32, scope: !888)
!3936 = !DILocation(line: 1037, column: 41, scope: !888)
!3937 = !DILocation(line: 1037, column: 49, scope: !888)
!3938 = !DILocation(line: 1037, column: 5, scope: !888)
!3939 = !DILocation(line: 1038, column: 5, scope: !888)
!3940 = !DILocation(line: 1038, column: 10, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !897, file: !421, discriminator: 1)
!3942 = !DILocation(line: 1038, column: 20, scope: !897)
!3943 = !DILocation(line: 1038, column: 51, scope: !897)
!3944 = !DILocation(line: 1038, column: 65, scope: !900)
!3945 = !DILocation(line: 1038, column: 81, scope: !900)
!3946 = !DILocation(line: 1038, column: 65, scope: !897)
!3947 = !DILocation(line: 1038, column: 96, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !900, file: !421, discriminator: 2)
!3949 = !DILocation(line: 1038, column: 101, scope: !3950)
!3950 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 4)
!3951 = !DILocation(line: 1038, column: 111, scope: !899)
!3952 = !DILocation(line: 1038, column: 141, scope: !899)
!3953 = !DILocation(line: 1038, column: 167, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !899, file: !421, line: 1038, column: 164)
!3955 = !DILocation(line: 1038, column: 184, scope: !3954)
!3956 = !DILocation(line: 1038, column: 164, scope: !3954)
!3957 = !DILocation(line: 1038, column: 194, scope: !3954)
!3958 = !DILocation(line: 1038, column: 164, scope: !899)
!3959 = !DILocation(line: 1038, column: 164, scope: !3960)
!3960 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 5)
!3961 = !DILocation(line: 1038, column: 225, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3954, file: !421, discriminator: 6)
!3963 = !DILocation(line: 1038, column: 243, scope: !3954)
!3964 = !DILocation(line: 1038, column: 253, scope: !3954)
!3965 = !DILocation(line: 1038, column: 278, scope: !3954)
!3966 = !DILocation(line: 1038, column: 209, scope: !3954)
!3967 = !DILocation(line: 1038, column: 297, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !900, file: !421, discriminator: 7)
!3969 = !DILocation(line: 1038, column: 297, scope: !899)
!3970 = !DILocation(line: 1038, column: 297, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 8)
!3972 = !DILocation(line: 1038, column: 297, scope: !3973)
!3973 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 9)
!3974 = !DILocation(line: 1038, column: 310, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3976, file: !421, discriminator: 10)
!3976 = !DILexicalBlockFile(scope: !888, file: !421, discriminator: 3)
!3977 = !DILocation(line: 1038, column: 310, scope: !897)
!3978 = !DILocation(line: 1038, column: 310, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !897, file: !421, discriminator: 11)
!3980 = !DILocation(line: 1039, column: 1, scope: !888)
!3981 = !DILocation(line: 959, column: 38, scope: !853)
!3982 = !DILocation(line: 959, column: 52, scope: !853)
!3983 = !DILocation(line: 959, column: 64, scope: !853)
!3984 = !DILocation(line: 961, column: 5, scope: !853)
!3985 = !DILocation(line: 961, column: 15, scope: !853)
!3986 = !DILocation(line: 961, column: 21, scope: !853)
!3987 = !DILocation(line: 961, column: 25, scope: !853)
!3988 = !DILocation(line: 961, column: 30, scope: !853)
!3989 = !DILocation(line: 970, column: 5, scope: !853)
!3990 = !DILocation(line: 971, column: 5, scope: !853)
!3991 = !DILocation(line: 974, column: 27, scope: !853)
!3992 = !DILocation(line: 974, column: 11, scope: !853)
!3993 = !DILocation(line: 974, column: 9, scope: !853)
!3994 = !DILocation(line: 975, column: 9, scope: !867)
!3995 = !DILocation(line: 975, column: 13, scope: !867)
!3996 = !DILocation(line: 975, column: 9, scope: !853)
!3997 = !DILocation(line: 976, column: 9, scope: !867)
!3998 = !DILocation(line: 978, column: 33, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !866, file: !421, line: 978, column: 13)
!4000 = !DILocation(line: 978, column: 50, scope: !3999)
!4001 = !DILocation(line: 978, column: 13, scope: !3999)
!4002 = !DILocation(line: 978, column: 13, scope: !866)
!4003 = !DILocation(line: 979, column: 13, scope: !3999)
!4004 = !DILocation(line: 980, column: 9, scope: !866)
!4005 = !DILocation(line: 980, column: 14, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 1)
!4007 = !DILocation(line: 980, column: 24, scope: !865)
!4008 = !DILocation(line: 980, column: 54, scope: !865)
!4009 = !DILocation(line: 980, column: 68, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !865, file: !421, line: 980, column: 65)
!4011 = !DILocation(line: 980, column: 85, scope: !4010)
!4012 = !DILocation(line: 980, column: 65, scope: !4010)
!4013 = !DILocation(line: 980, column: 95, scope: !4010)
!4014 = !DILocation(line: 980, column: 65, scope: !865)
!4015 = !DILocation(line: 980, column: 65, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 2)
!4017 = !DILocation(line: 980, column: 126, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4010, file: !421, discriminator: 3)
!4019 = !DILocation(line: 980, column: 144, scope: !4010)
!4020 = !DILocation(line: 980, column: 154, scope: !4010)
!4021 = !DILocation(line: 980, column: 179, scope: !4010)
!4022 = !DILocation(line: 980, column: 110, scope: !4010)
!4023 = !DILocation(line: 980, column: 198, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !866, file: !421, discriminator: 4)
!4025 = !DILocation(line: 980, column: 198, scope: !865)
!4026 = !DILocation(line: 980, column: 198, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 5)
!4028 = !DILocation(line: 982, column: 9, scope: !873)
!4029 = !DILocation(line: 982, column: 20, scope: !873)
!4030 = !DILocation(line: 982, column: 9, scope: !853)
!4031 = !DILocation(line: 983, column: 31, scope: !872)
!4032 = !DILocation(line: 983, column: 15, scope: !872)
!4033 = !DILocation(line: 983, column: 13, scope: !872)
!4034 = !DILocation(line: 984, column: 13, scope: !871)
!4035 = !DILocation(line: 984, column: 17, scope: !871)
!4036 = !DILocation(line: 984, column: 13, scope: !872)
!4037 = !DILocation(line: 985, column: 13, scope: !871)
!4038 = !DILocation(line: 987, column: 37, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !870, file: !421, line: 987, column: 17)
!4040 = !DILocation(line: 987, column: 54, scope: !4039)
!4041 = !DILocation(line: 987, column: 17, scope: !4039)
!4042 = !DILocation(line: 987, column: 17, scope: !870)
!4043 = !DILocation(line: 988, column: 17, scope: !4039)
!4044 = !DILocation(line: 989, column: 13, scope: !870)
!4045 = !DILocation(line: 989, column: 18, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 1)
!4047 = !DILocation(line: 989, column: 28, scope: !869)
!4048 = !DILocation(line: 989, column: 58, scope: !869)
!4049 = !DILocation(line: 989, column: 72, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !869, file: !421, line: 989, column: 69)
!4051 = !DILocation(line: 989, column: 89, scope: !4050)
!4052 = !DILocation(line: 989, column: 69, scope: !4050)
!4053 = !DILocation(line: 989, column: 99, scope: !4050)
!4054 = !DILocation(line: 989, column: 69, scope: !869)
!4055 = !DILocation(line: 989, column: 69, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 2)
!4057 = !DILocation(line: 989, column: 130, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4050, file: !421, discriminator: 3)
!4059 = !DILocation(line: 989, column: 148, scope: !4050)
!4060 = !DILocation(line: 989, column: 158, scope: !4050)
!4061 = !DILocation(line: 989, column: 183, scope: !4050)
!4062 = !DILocation(line: 989, column: 114, scope: !4050)
!4063 = !DILocation(line: 989, column: 202, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !870, file: !421, discriminator: 4)
!4065 = !DILocation(line: 989, column: 202, scope: !869)
!4066 = !DILocation(line: 989, column: 202, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 5)
!4068 = !DILocation(line: 991, column: 5, scope: !872)
!4069 = !DILocation(line: 992, column: 9, scope: !879)
!4070 = !DILocation(line: 992, column: 18, scope: !879)
!4071 = !DILocation(line: 992, column: 9, scope: !853)
!4072 = !DILocation(line: 993, column: 33, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !878, file: !421, line: 993, column: 13)
!4074 = !DILocation(line: 993, column: 52, scope: !4073)
!4075 = !DILocation(line: 993, column: 13, scope: !4073)
!4076 = !DILocation(line: 993, column: 13, scope: !878)
!4077 = !DILocation(line: 994, column: 13, scope: !4073)
!4078 = !DILocation(line: 996, column: 39, scope: !878)
!4079 = !DILocation(line: 996, column: 49, scope: !878)
!4080 = !DILocation(line: 996, column: 15, scope: !878)
!4081 = !DILocation(line: 996, column: 13, scope: !878)
!4082 = !DILocation(line: 997, column: 13, scope: !877)
!4083 = !DILocation(line: 997, column: 13, scope: !878)
!4084 = !DILocation(line: 998, column: 37, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !876, file: !421, line: 998, column: 17)
!4086 = !DILocation(line: 998, column: 52, scope: !4085)
!4087 = !DILocation(line: 998, column: 17, scope: !4085)
!4088 = !DILocation(line: 998, column: 17, scope: !876)
!4089 = !DILocation(line: 999, column: 17, scope: !4085)
!4090 = !DILocation(line: 1000, column: 13, scope: !876)
!4091 = !DILocation(line: 1000, column: 18, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 1)
!4093 = !DILocation(line: 1000, column: 28, scope: !875)
!4094 = !DILocation(line: 1000, column: 58, scope: !875)
!4095 = !DILocation(line: 1000, column: 72, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !875, file: !421, line: 1000, column: 69)
!4097 = !DILocation(line: 1000, column: 89, scope: !4096)
!4098 = !DILocation(line: 1000, column: 69, scope: !4096)
!4099 = !DILocation(line: 1000, column: 99, scope: !4096)
!4100 = !DILocation(line: 1000, column: 69, scope: !875)
!4101 = !DILocation(line: 1000, column: 69, scope: !4102)
!4102 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 2)
!4103 = !DILocation(line: 1000, column: 130, scope: !4104)
!4104 = !DILexicalBlockFile(scope: !4096, file: !421, discriminator: 3)
!4105 = !DILocation(line: 1000, column: 148, scope: !4096)
!4106 = !DILocation(line: 1000, column: 158, scope: !4096)
!4107 = !DILocation(line: 1000, column: 183, scope: !4096)
!4108 = !DILocation(line: 1000, column: 114, scope: !4096)
!4109 = !DILocation(line: 1000, column: 202, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !876, file: !421, discriminator: 4)
!4111 = !DILocation(line: 1000, column: 202, scope: !875)
!4112 = !DILocation(line: 1000, column: 202, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 5)
!4114 = !DILocation(line: 1001, column: 9, scope: !876)
!4115 = !DILocation(line: 1002, column: 5, scope: !878)
!4116 = !DILocation(line: 1003, column: 29, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !853, file: !421, line: 1003, column: 9)
!4118 = !DILocation(line: 1003, column: 9, scope: !4117)
!4119 = !DILocation(line: 1003, column: 9, scope: !853)
!4120 = !DILocation(line: 1004, column: 9, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !421, line: 1003, column: 66)
!4122 = !DILocation(line: 1005, column: 5, scope: !4121)
!4123 = !DILocation(line: 1006, column: 9, scope: !887)
!4124 = !DILocation(line: 1006, column: 16, scope: !887)
!4125 = !DILocation(line: 1006, column: 13, scope: !887)
!4126 = !DILocation(line: 1006, column: 9, scope: !853)
!4127 = !DILocation(line: 1007, column: 34, scope: !885)
!4128 = !DILocation(line: 1007, column: 14, scope: !885)
!4129 = !DILocation(line: 1007, column: 13, scope: !886)
!4130 = !DILocation(line: 1008, column: 32, scope: !884)
!4131 = !DILocation(line: 1008, column: 19, scope: !884)
!4132 = !DILocation(line: 1008, column: 17, scope: !884)
!4133 = !DILocation(line: 1009, column: 17, scope: !883)
!4134 = !DILocation(line: 1009, column: 17, scope: !884)
!4135 = !DILocation(line: 1010, column: 41, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !882, file: !421, line: 1010, column: 21)
!4137 = !DILocation(line: 1010, column: 55, scope: !4136)
!4138 = !DILocation(line: 1010, column: 21, scope: !4136)
!4139 = !DILocation(line: 1010, column: 21, scope: !882)
!4140 = !DILocation(line: 1011, column: 21, scope: !4136)
!4141 = !DILocation(line: 1012, column: 17, scope: !882)
!4142 = !DILocation(line: 1012, column: 22, scope: !4143)
!4143 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 1)
!4144 = !DILocation(line: 1012, column: 32, scope: !881)
!4145 = !DILocation(line: 1012, column: 62, scope: !881)
!4146 = !DILocation(line: 1012, column: 76, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !881, file: !421, line: 1012, column: 73)
!4148 = !DILocation(line: 1012, column: 93, scope: !4147)
!4149 = !DILocation(line: 1012, column: 73, scope: !4147)
!4150 = !DILocation(line: 1012, column: 103, scope: !4147)
!4151 = !DILocation(line: 1012, column: 73, scope: !881)
!4152 = !DILocation(line: 1012, column: 73, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 2)
!4154 = !DILocation(line: 1012, column: 134, scope: !4155)
!4155 = !DILexicalBlockFile(scope: !4147, file: !421, discriminator: 3)
!4156 = !DILocation(line: 1012, column: 152, scope: !4147)
!4157 = !DILocation(line: 1012, column: 162, scope: !4147)
!4158 = !DILocation(line: 1012, column: 187, scope: !4147)
!4159 = !DILocation(line: 1012, column: 118, scope: !4147)
!4160 = !DILocation(line: 1012, column: 206, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !882, file: !421, discriminator: 4)
!4162 = !DILocation(line: 1012, column: 206, scope: !881)
!4163 = !DILocation(line: 1012, column: 206, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 5)
!4165 = !DILocation(line: 1013, column: 13, scope: !882)
!4166 = !DILocation(line: 1014, column: 17, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !883, file: !421, line: 1013, column: 20)
!4168 = !DILocation(line: 1016, column: 9, scope: !884)
!4169 = !DILocation(line: 1017, column: 34, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !886, file: !421, line: 1017, column: 13)
!4171 = !DILocation(line: 1017, column: 14, scope: !4170)
!4172 = !DILocation(line: 1017, column: 13, scope: !886)
!4173 = !DILocation(line: 1018, column: 37, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !421, line: 1018, column: 17)
!4175 = distinct !DILexicalBlock(scope: !4170, file: !421, line: 1017, column: 65)
!4176 = !DILocation(line: 1018, column: 17, scope: !4174)
!4177 = !DILocation(line: 1018, column: 17, scope: !4175)
!4178 = !DILocation(line: 1020, column: 17, scope: !4174)
!4179 = !DILocation(line: 1021, column: 9, scope: !4175)
!4180 = !DILocation(line: 1022, column: 5, scope: !886)
!4181 = !DILocation(line: 1023, column: 19, scope: !853)
!4182 = !DILocation(line: 1023, column: 24, scope: !853)
!4183 = !DILocation(line: 1023, column: 27, scope: !853)
!4184 = !DILocation(line: 1023, column: 5, scope: !853)
!4185 = !DILocation(line: 1024, column: 1, scope: !853)
!4186 = !DILocation(line: 1094, column: 35, scope: !908)
!4187 = !DILocation(line: 1094, column: 49, scope: !908)
!4188 = !DILocation(line: 1096, column: 5, scope: !908)
!4189 = !DILocation(line: 1096, column: 11, scope: !908)
!4190 = !DILocation(line: 1097, column: 9, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !908, file: !421, line: 1097, column: 9)
!4192 = !DILocation(line: 1097, column: 18, scope: !4191)
!4193 = !DILocation(line: 1097, column: 32, scope: !4191)
!4194 = !DILocation(line: 1097, column: 35, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4191, file: !421, discriminator: 1)
!4196 = !DILocation(line: 1097, column: 42, scope: !4191)
!4197 = !DILocation(line: 1097, column: 9, scope: !908)
!4198 = !DILocation(line: 1098, column: 9, scope: !4191)
!4199 = !DILocation(line: 1099, column: 24, scope: !908)
!4200 = !DILocation(line: 1099, column: 10, scope: !908)
!4201 = !DILocation(line: 1099, column: 8, scope: !908)
!4202 = !DILocation(line: 1100, column: 28, scope: !908)
!4203 = !DILocation(line: 1100, column: 32, scope: !908)
!4204 = !DILocation(line: 1100, column: 12, scope: !908)
!4205 = !DILocation(line: 1100, column: 5, scope: !908)
!4206 = !DILocation(line: 1101, column: 1, scope: !908)
!4207 = !DILocation(line: 1084, column: 31, scope: !901)
!4208 = !DILocation(line: 1084, column: 45, scope: !901)
!4209 = !DILocation(line: 1086, column: 5, scope: !901)
!4210 = !DILocation(line: 1086, column: 11, scope: !901)
!4211 = !DILocation(line: 1087, column: 9, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !901, file: !421, line: 1087, column: 9)
!4213 = !DILocation(line: 1087, column: 18, scope: !4212)
!4214 = !DILocation(line: 1087, column: 32, scope: !4212)
!4215 = !DILocation(line: 1087, column: 36, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4212, file: !421, discriminator: 1)
!4217 = !DILocation(line: 1087, column: 35, scope: !4212)
!4218 = !DILocation(line: 1087, column: 45, scope: !4212)
!4219 = !DILocation(line: 1087, column: 53, scope: !4212)
!4220 = !DILocation(line: 1087, column: 56, scope: !4221)
!4221 = !DILexicalBlockFile(scope: !4212, file: !421, discriminator: 2)
!4222 = !DILocation(line: 1087, column: 63, scope: !4212)
!4223 = !DILocation(line: 1087, column: 9, scope: !901)
!4224 = !DILocation(line: 1088, column: 9, scope: !4212)
!4225 = !DILocation(line: 1089, column: 20, scope: !901)
!4226 = !DILocation(line: 1089, column: 10, scope: !901)
!4227 = !DILocation(line: 1089, column: 8, scope: !901)
!4228 = !DILocation(line: 1090, column: 28, scope: !901)
!4229 = !DILocation(line: 1090, column: 32, scope: !901)
!4230 = !DILocation(line: 1090, column: 12, scope: !901)
!4231 = !DILocation(line: 1090, column: 5, scope: !901)
!4232 = !DILocation(line: 1091, column: 1, scope: !901)
!4233 = !DILocation(line: 1048, column: 23, scope: !932)
!4234 = !DILocation(line: 1048, column: 31, scope: !932)
!4235 = !DILocation(line: 1050, column: 5, scope: !932)
!4236 = !DILocation(line: 1050, column: 9, scope: !932)
!4237 = !DILocation(line: 1051, column: 5, scope: !932)
!4238 = !DILocation(line: 1051, column: 10, scope: !932)
!4239 = !DILocation(line: 1053, column: 9, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1053, column: 9)
!4241 = !DILocation(line: 1053, column: 12, scope: !4240)
!4242 = !DILocation(line: 1053, column: 9, scope: !932)
!4243 = !DILocation(line: 1054, column: 9, scope: !4240)
!4244 = !DILocation(line: 1055, column: 12, scope: !946)
!4245 = !DILocation(line: 1055, column: 10, scope: !946)
!4246 = !DILocation(line: 1055, column: 17, scope: !4247)
!4247 = !DILexicalBlockFile(scope: !4248, file: !421, discriminator: 2)
!4248 = !DILexicalBlockFile(scope: !945, file: !421, discriminator: 1)
!4249 = !DILocation(line: 1055, column: 21, scope: !945)
!4250 = !DILocation(line: 1055, column: 19, scope: !945)
!4251 = !DILocation(line: 1055, column: 5, scope: !946)
!4252 = !DILocation(line: 1056, column: 9, scope: !944)
!4253 = !DILocation(line: 1056, column: 15, scope: !944)
!4254 = !DILocation(line: 1056, column: 28, scope: !944)
!4255 = !DILocation(line: 1057, column: 9, scope: !944)
!4256 = !DILocation(line: 1058, column: 14, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !944, file: !421, line: 1057, column: 12)
!4258 = !DILocation(line: 1058, column: 24, scope: !4257)
!4259 = !DILocation(line: 1059, column: 42, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !421, line: 1059, column: 17)
!4261 = !DILocation(line: 1060, column: 42, scope: !4260)
!4262 = !DILocation(line: 1059, column: 17, scope: !4260)
!4263 = !DILocation(line: 1060, column: 58, scope: !4260)
!4264 = !DILocation(line: 1059, column: 17, scope: !4257)
!4265 = !DILocation(line: 1061, column: 17, scope: !4260)
!4266 = !DILocation(line: 1067, column: 9, scope: !4257)
!4267 = !DILocation(line: 1067, column: 19, scope: !4268)
!4268 = !DILexicalBlockFile(scope: !944, file: !421, discriminator: 1)
!4269 = !DILocation(line: 1067, column: 18, scope: !944)
!4270 = !DILocation(line: 1067, column: 29, scope: !944)
!4271 = !DILocation(line: 1067, column: 37, scope: !944)
!4272 = !DILocation(line: 1067, column: 41, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !944, file: !421, discriminator: 2)
!4274 = !DILocation(line: 1067, column: 40, scope: !944)
!4275 = !DILocation(line: 1067, column: 51, scope: !944)
!4276 = !DILocation(line: 1067, column: 9, scope: !4277)
!4277 = !DILexicalBlockFile(scope: !4257, file: !421, discriminator: 3)
!4278 = !DILocation(line: 1068, column: 5, scope: !945)
!4279 = !DILocation(line: 1068, column: 5, scope: !944)
!4280 = !DILocation(line: 1055, column: 30, scope: !945)
!4281 = !DILocation(line: 1055, column: 5, scope: !945)
!4282 = !DILocation(line: 1069, column: 12, scope: !932)
!4283 = !DILocation(line: 1069, column: 5, scope: !932)
!4284 = !DILocation(line: 1070, column: 9, scope: !949)
!4285 = !DILocation(line: 1070, column: 14, scope: !949)
!4286 = !DILocation(line: 1070, column: 11, scope: !949)
!4287 = !DILocation(line: 1070, column: 9, scope: !932)
!4288 = !DILocation(line: 1071, column: 9, scope: !948)
!4289 = !DILocation(line: 1071, column: 15, scope: !948)
!4290 = !DILocation(line: 1071, column: 19, scope: !948)
!4291 = !DILocation(line: 1072, column: 9, scope: !948)
!4292 = !DILocation(line: 1072, column: 19, scope: !948)
!4293 = !DILocation(line: 1073, column: 9, scope: !948)
!4294 = !DILocation(line: 1073, column: 17, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4296, file: !421, discriminator: 7)
!4296 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 1)
!4297 = !DILocation(line: 1073, column: 16, scope: !948)
!4298 = !DILocation(line: 1073, column: 19, scope: !948)
!4299 = !DILocation(line: 1073, column: 26, scope: !948)
!4300 = !DILocation(line: 1073, column: 30, scope: !4301)
!4301 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 3)
!4302 = !DILocation(line: 1073, column: 29, scope: !948)
!4303 = !DILocation(line: 1073, column: 32, scope: !948)
!4304 = !DILocation(line: 1073, column: 40, scope: !948)
!4305 = !DILocation(line: 1073, column: 44, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 5)
!4307 = !DILocation(line: 1073, column: 43, scope: !948)
!4308 = !DILocation(line: 1073, column: 46, scope: !948)
!4309 = !DILocation(line: 1073, column: 9, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !4311, file: !421, discriminator: 6)
!4311 = !DILexicalBlockFile(scope: !4312, file: !421, discriminator: 4)
!4312 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 2)
!4313 = !DILocation(line: 1074, column: 14, scope: !948)
!4314 = !DILocation(line: 1075, column: 36, scope: !948)
!4315 = !DILocation(line: 1075, column: 15, scope: !948)
!4316 = !DILocation(line: 1075, column: 13, scope: !948)
!4317 = !DILocation(line: 1076, column: 13, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !948, file: !421, line: 1076, column: 13)
!4319 = !DILocation(line: 1076, column: 17, scope: !4318)
!4320 = !DILocation(line: 1076, column: 13, scope: !948)
!4321 = !DILocation(line: 1077, column: 13, scope: !4318)
!4322 = !DILocation(line: 1078, column: 16, scope: !948)
!4323 = !DILocation(line: 1078, column: 9, scope: !948)
!4324 = !DILocation(line: 1079, column: 5, scope: !949)
!4325 = !DILocation(line: 1080, column: 5, scope: !932)
!4326 = !DILocation(line: 1081, column: 1, scope: !932)
