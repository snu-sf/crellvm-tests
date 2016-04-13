; ModuleID = 'irs-onlybc/getpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }

@module_search_path = internal global i32* null, align 8
@progpath = internal global [4097 x i32] zeroinitializer, align 16
@prefix = internal global [4097 x i32] zeroinitializer, align 16
@exec_prefix = internal global [4097 x i32] zeroinitializer, align 16
@calculate_path.delimiter = internal global [2 x i32] [i32 58, i32 0], align 4
@calculate_path.separator = internal global [2 x i32] [i32 47, i32 0], align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"PYTHONPATH\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c":plat-linux\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/usr/local\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lib/python3.4\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Unable to decode path variables in getpath.c: memory error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i32] [i32 112, i32 121, i32 118, i32 101, i32 110, i32 118, i32 46, i32 99, i32 102, i32 103, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 114, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i32] [i32 104, i32 111, i32 109, i32 101, i32 0], align 4
@Py_FrozenFlag = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"Could not find platform independent libraries <prefix>\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i32] [i32 108, i32 105, i32 98, i32 47, i32 112, i32 121, i32 116, i32 104, i32 111, i32 110, i32 48, i32 48, i32 46, i32 122, i32 105, i32 112, i32 0], align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"3.4\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Could not find platform dependent libraries <exec_prefix>\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i32] [i32 108, i32 105, i32 98, i32 47, i32 108, i32 105, i32 98, i32 45, i32 100, i32 121, i32 110, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@.str.14 = private unnamed_addr constant [58 x i8] c"Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Not enough memory for dynamic PYTHONPATH\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"buffer overflow in getpath.c's joinpath()\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.18 = private unnamed_addr constant [5 x i32] [i32 32, i32 9, i32 13, i32 10, i32 0], align 4
@.str.19 = private unnamed_addr constant [3 x i32] [i32 32, i32 9, i32 0], align 4
@.str.20 = private unnamed_addr constant [2 x i32] [i32 61, i32 0], align 4
@.str.21 = private unnamed_addr constant [3 x i32] [i32 13, i32 10, i32 0], align 4
@.str.22 = private unnamed_addr constant [6 x i32] [i32 111, i32 115, i32 46, i32 112, i32 121, i32 0], align 4
@.str.23 = private unnamed_addr constant [14 x i32] [i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 115, i32 47, i32 83, i32 101, i32 116, i32 117, i32 112, i32 0], align 4
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [4 x i32] [i32 76, i32 105, i32 98, i32 0], align 4
@Py_OptimizeFlag = external global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i32] [i32 111, i32 0], align 4
@.str.27 = private unnamed_addr constant [2 x i32] [i32 99, i32 0], align 4
@.str.28 = private unnamed_addr constant [12 x i32] [i32 108, i32 105, i32 98, i32 45, i32 100, i32 121, i32 110, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@.str.29 = private unnamed_addr constant [15 x i32] [i32 112, i32 121, i32 98, i32 117, i32 105, i32 108, i32 100, i32 100, i32 105, i32 114, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@.str.30 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4

; Function Attrs: nounwind uwtable
define void @Py_SetPath(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %prog = alloca i32*, align 8
  store i32* %path, i32** %path.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !353, metadata !574), !dbg !575
  %0 = load i32*, i32** @module_search_path, align 8, !dbg !576, !tbaa !570
  %cmp = icmp ne i32* %0, null, !dbg !578
  br i1 %cmp, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @module_search_path, align 8, !dbg !580, !tbaa !570
  %2 = bitcast i32* %1 to i8*, !dbg !580
  call void @PyMem_RawFree(i8* %2), !dbg !582
  store i32* null, i32** @module_search_path, align 8, !dbg !583, !tbaa !570
  br label %if.end, !dbg !584

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %path.addr, align 8, !dbg !585, !tbaa !570
  %cmp1 = icmp ne i32* %3, null, !dbg !586
  br i1 %cmp1, label %if.then.2, label %if.end.10, !dbg !587

if.then.2:                                        ; preds = %if.end
  %4 = bitcast i32** %prog to i8*, !dbg !588
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !588
  call void @llvm.dbg.declare(metadata i32** %prog, metadata !354, metadata !574), !dbg !589
  %call = call i32* @Py_GetProgramName(), !dbg !590
  store i32* %call, i32** %prog, align 8, !dbg !589, !tbaa !570
  %5 = load i32*, i32** %prog, align 8, !dbg !591, !tbaa !570
  %call3 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %5, i64 4096) #3, !dbg !592
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4, !dbg !593, !tbaa !594
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4, !dbg !596, !tbaa !594
  %6 = load i32*, i32** %path.addr, align 8, !dbg !597, !tbaa !570
  %call4 = call i64 @wcslen(i32* %6) #8, !dbg !598
  %add = add i64 %call4, 1, !dbg !599
  %mul = mul i64 %add, 4, !dbg !600
  %call5 = call i8* @PyMem_RawMalloc(i64 %mul), !dbg !601
  %7 = bitcast i8* %call5 to i32*, !dbg !601
  store i32* %7, i32** @module_search_path, align 8, !dbg !602, !tbaa !570
  %8 = load i32*, i32** @module_search_path, align 8, !dbg !603, !tbaa !570
  %cmp6 = icmp ne i32* %8, null, !dbg !605
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !606

if.then.7:                                        ; preds = %if.then.2
  %9 = load i32*, i32** @module_search_path, align 8, !dbg !607, !tbaa !570
  %10 = load i32*, i32** %path.addr, align 8, !dbg !608, !tbaa !570
  %call8 = call i32* @wcscpy(i32* %9, i32* %10) #3, !dbg !609
  br label %if.end.9, !dbg !609

if.end.9:                                         ; preds = %if.then.7, %if.then.2
  %11 = bitcast i32** %prog to i8*, !dbg !610
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !610
  br label %if.end.10, !dbg !611

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void, !dbg !612
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @PyMem_RawFree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32* @Py_GetProgramName() #2

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #4

declare i8* @PyMem_RawMalloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #5

; Function Attrs: nounwind
declare i32* @wcscpy(i32*, i32*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32* @Py_GetPath() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8, !dbg !613, !tbaa !570
  %tobool = icmp ne i32* %0, null, !dbg !613
  br i1 %tobool, label %if.end, label %if.then, !dbg !615

if.then:                                          ; preds = %entry
  call void @calculate_path(), !dbg !616
  br label %if.end, !dbg !616

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** @module_search_path, align 8, !dbg !617, !tbaa !570
  ret i32* %1, !dbg !618
}

; Function Attrs: nounwind uwtable
define internal void @calculate_path() #0 {
entry:
  %_rtpypath = alloca i8*, align 8
  %rtpypath = alloca i32*, align 8
  %home = alloca i32*, align 8
  %_path = alloca i8*, align 8
  %path_buffer = alloca i32*, align 8
  %path = alloca i32*, align 8
  %prog = alloca i32*, align 8
  %argv0_path = alloca [4097 x i32], align 16
  %zip_path = alloca [4097 x i32], align 16
  %pfound = alloca i32, align 4
  %efound = alloca i32, align 4
  %buf = alloca i32*, align 8
  %bufsz = alloca i64, align 8
  %prefixsz = alloca i64, align 8
  %defpath = alloca i32*, align 8
  %_pythonpath = alloca i32*, align 8
  %_prefix = alloca i32*, align 8
  %_exec_prefix = alloca i32*, align 8
  %lib_python = alloca i32*, align 8
  %delim = alloca i32*, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %tmpbuffer = alloca [4097 x i32], align 16
  %linklen = alloca i32, align 4
  %tmpbuffer70 = alloca [4097 x i32], align 16
  %env_cfg = alloca i32*, align 8
  %env_file = alloca %struct._IO_FILE*, align 8
  %rtpypath_len = alloca i64, align 8
  %delim167 = alloca i32*, align 8
  %delim217 = alloca i32*, align 8
  %len228 = alloca i64, align 8
  %end = alloca i64, align 8
  %0 = bitcast i8** %_rtpypath to i8*, !dbg !619
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !619
  call void @llvm.dbg.declare(metadata i8** %_rtpypath, metadata !367, metadata !574), !dbg !620
  %1 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !621, !tbaa !594
  %tobool = icmp ne i32 %1, 0, !dbg !621
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !621

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !622

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #3, !dbg !624
  br label %cond.end, !dbg !621

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ], !dbg !621
  store i8* %cond, i8** %_rtpypath, align 8, !dbg !626, !tbaa !570
  %2 = bitcast i32** %rtpypath to i8*, !dbg !629
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !629
  call void @llvm.dbg.declare(metadata i32** %rtpypath, metadata !368, metadata !574), !dbg !630
  store i32* null, i32** %rtpypath, align 8, !dbg !630, !tbaa !570
  %3 = bitcast i32** %home to i8*, !dbg !631
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !631
  call void @llvm.dbg.declare(metadata i32** %home, metadata !369, metadata !574), !dbg !632
  %call1 = call i32* @Py_GetPythonHome(), !dbg !633
  store i32* %call1, i32** %home, align 8, !dbg !632, !tbaa !570
  %4 = bitcast i8** %_path to i8*, !dbg !634
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !634
  call void @llvm.dbg.declare(metadata i8** %_path, metadata !370, metadata !574), !dbg !635
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !636
  store i8* %call2, i8** %_path, align 8, !dbg !635, !tbaa !570
  %5 = bitcast i32** %path_buffer to i8*, !dbg !637
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !637
  call void @llvm.dbg.declare(metadata i32** %path_buffer, metadata !371, metadata !574), !dbg !638
  store i32* null, i32** %path_buffer, align 8, !dbg !638, !tbaa !570
  %6 = bitcast i32** %path to i8*, !dbg !639
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !639
  call void @llvm.dbg.declare(metadata i32** %path, metadata !372, metadata !574), !dbg !640
  store i32* null, i32** %path, align 8, !dbg !640, !tbaa !570
  %7 = bitcast i32** %prog to i8*, !dbg !641
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !641
  call void @llvm.dbg.declare(metadata i32** %prog, metadata !373, metadata !574), !dbg !642
  %call3 = call i32* @Py_GetProgramName(), !dbg !643
  store i32* %call3, i32** %prog, align 8, !dbg !642, !tbaa !570
  %8 = bitcast [4097 x i32]* %argv0_path to i8*, !dbg !644
  call void @llvm.lifetime.start(i64 16388, i8* %8) #3, !dbg !644
  call void @llvm.dbg.declare(metadata [4097 x i32]* %argv0_path, metadata !374, metadata !574), !dbg !645
  %9 = bitcast [4097 x i32]* %zip_path to i8*, !dbg !646
  call void @llvm.lifetime.start(i64 16388, i8* %9) #3, !dbg !646
  call void @llvm.dbg.declare(metadata [4097 x i32]* %zip_path, metadata !378, metadata !574), !dbg !647
  %10 = bitcast i32* %pfound to i8*, !dbg !648
  call void @llvm.lifetime.start(i64 4, i8* %10) #3, !dbg !648
  call void @llvm.dbg.declare(metadata i32* %pfound, metadata !379, metadata !574), !dbg !649
  %11 = bitcast i32* %efound to i8*, !dbg !648
  call void @llvm.lifetime.start(i64 4, i8* %11) #3, !dbg !648
  call void @llvm.dbg.declare(metadata i32* %efound, metadata !380, metadata !574), !dbg !650
  %12 = bitcast i32** %buf to i8*, !dbg !651
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !651
  call void @llvm.dbg.declare(metadata i32** %buf, metadata !381, metadata !574), !dbg !652
  %13 = bitcast i64* %bufsz to i8*, !dbg !653
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !653
  call void @llvm.dbg.declare(metadata i64* %bufsz, metadata !382, metadata !574), !dbg !654
  %14 = bitcast i64* %prefixsz to i8*, !dbg !655
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !655
  call void @llvm.dbg.declare(metadata i64* %prefixsz, metadata !383, metadata !574), !dbg !656
  %15 = bitcast i32** %defpath to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !657
  call void @llvm.dbg.declare(metadata i32** %defpath, metadata !384, metadata !574), !dbg !658
  %16 = bitcast i32** %_pythonpath to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !659
  call void @llvm.dbg.declare(metadata i32** %_pythonpath, metadata !385, metadata !574), !dbg !660
  %17 = bitcast i32** %_prefix to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !659
  call void @llvm.dbg.declare(metadata i32** %_prefix, metadata !386, metadata !574), !dbg !661
  %18 = bitcast i32** %_exec_prefix to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 8, i8* %18) #3, !dbg !659
  call void @llvm.dbg.declare(metadata i32** %_exec_prefix, metadata !387, metadata !574), !dbg !662
  %19 = bitcast i32** %lib_python to i8*, !dbg !663
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !663
  call void @llvm.dbg.declare(metadata i32** %lib_python, metadata !388, metadata !574), !dbg !664
  %call4 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64* null), !dbg !665
  store i32* %call4, i32** %_pythonpath, align 8, !dbg !666, !tbaa !570
  %call5 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64* null), !dbg !667
  store i32* %call5, i32** %_prefix, align 8, !dbg !668, !tbaa !570
  %call6 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64* null), !dbg !669
  store i32* %call6, i32** %_exec_prefix, align 8, !dbg !670, !tbaa !570
  %call7 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64* null), !dbg !671
  store i32* %call7, i32** %lib_python, align 8, !dbg !672, !tbaa !570
  %20 = load i32*, i32** %_pythonpath, align 8, !dbg !673, !tbaa !570
  %tobool8 = icmp ne i32* %20, null, !dbg !673
  br i1 %tobool8, label %lor.lhs.false, label %if.then, !dbg !675

lor.lhs.false:                                    ; preds = %cond.end
  %21 = load i32*, i32** %_prefix, align 8, !dbg !676, !tbaa !570
  %tobool9 = icmp ne i32* %21, null, !dbg !676
  br i1 %tobool9, label %lor.lhs.false.10, label %if.then, !dbg !678

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %22 = load i32*, i32** %_exec_prefix, align 8, !dbg !679, !tbaa !570
  %tobool11 = icmp ne i32* %22, null, !dbg !679
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then, !dbg !681

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %23 = load i32*, i32** %lib_python, align 8, !dbg !682, !tbaa !570
  %tobool13 = icmp ne i32* %23, null, !dbg !682
  br i1 %tobool13, label %if.end, label %if.then, !dbg !684

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false, %cond.end
  call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !685
  unreachable, !dbg !685

if.end:                                           ; preds = %lor.lhs.false.12
  %24 = load i8*, i8** %_path, align 8, !dbg !687, !tbaa !570
  %tobool14 = icmp ne i8* %24, null, !dbg !687
  br i1 %tobool14, label %if.then.15, label %if.end.17, !dbg !689

if.then.15:                                       ; preds = %if.end
  %25 = load i8*, i8** %_path, align 8, !dbg !690, !tbaa !570
  %call16 = call i32* @_Py_char2wchar(i8* %25, i64* null), !dbg !692
  store i32* %call16, i32** %path_buffer, align 8, !dbg !693, !tbaa !570
  %26 = load i32*, i32** %path_buffer, align 8, !dbg !694, !tbaa !570
  store i32* %26, i32** %path, align 8, !dbg !695, !tbaa !570
  br label %if.end.17, !dbg !696

if.end.17:                                        ; preds = %if.then.15, %if.end
  %27 = load i32*, i32** %prog, align 8, !dbg !697, !tbaa !570
  %call18 = call i32* @wcschr(i32* %27, i32 47) #8, !dbg !698
  %tobool19 = icmp ne i32* %call18, null, !dbg !698
  br i1 %tobool19, label %if.then.20, label %if.else, !dbg !699

if.then.20:                                       ; preds = %if.end.17
  %28 = load i32*, i32** %prog, align 8, !dbg !700, !tbaa !570
  %call21 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %28, i64 4096) #3, !dbg !701
  br label %if.end.43, !dbg !701

if.else:                                          ; preds = %if.end.17
  %29 = load i32*, i32** %path, align 8, !dbg !702, !tbaa !570
  %tobool22 = icmp ne i32* %29, null, !dbg !702
  br i1 %tobool22, label %if.then.23, label %if.else.41, !dbg !703

if.then.23:                                       ; preds = %if.else
  br label %while.cond, !dbg !704

while.cond:                                       ; preds = %cleanup.cont, %if.then.23
  br label %while.body, !dbg !705

while.body:                                       ; preds = %while.cond
  %30 = bitcast i32** %delim to i8*, !dbg !708
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !708
  call void @llvm.dbg.declare(metadata i32** %delim, metadata !389, metadata !574), !dbg !709
  %31 = load i32*, i32** %path, align 8, !dbg !710, !tbaa !570
  %call24 = call i32* @wcschr(i32* %31, i32 58) #8, !dbg !711
  store i32* %call24, i32** %delim, align 8, !dbg !709, !tbaa !570
  %32 = load i32*, i32** %delim, align 8, !dbg !712, !tbaa !570
  %tobool25 = icmp ne i32* %32, null, !dbg !712
  br i1 %tobool25, label %if.then.26, label %if.else.30, !dbg !713

if.then.26:                                       ; preds = %while.body
  %33 = bitcast i64* %len to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !714
  call void @llvm.dbg.declare(metadata i64* %len, metadata !394, metadata !574), !dbg !715
  %34 = load i32*, i32** %delim, align 8, !dbg !716, !tbaa !570
  %35 = load i32*, i32** %path, align 8, !dbg !717, !tbaa !570
  %sub.ptr.lhs.cast = ptrtoint i32* %34 to i64, !dbg !718
  %sub.ptr.rhs.cast = ptrtoint i32* %35 to i64, !dbg !718
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !718
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !718
  store i64 %sub.ptr.div, i64* %len, align 8, !dbg !715, !tbaa !719
  %36 = load i64, i64* %len, align 8, !dbg !721, !tbaa !719
  %cmp = icmp ugt i64 %36, 4096, !dbg !723
  br i1 %cmp, label %if.then.27, label %if.end.28, !dbg !724

if.then.27:                                       ; preds = %if.then.26
  store i64 4096, i64* %len, align 8, !dbg !725, !tbaa !719
  br label %if.end.28, !dbg !726

if.end.28:                                        ; preds = %if.then.27, %if.then.26
  %37 = load i32*, i32** %path, align 8, !dbg !727, !tbaa !570
  %38 = load i64, i64* %len, align 8, !dbg !728, !tbaa !719
  %call29 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %37, i64 %38) #3, !dbg !729
  %39 = load i64, i64* %len, align 8, !dbg !730, !tbaa !719
  %add.ptr = getelementptr i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i64 %39, !dbg !731
  store i32 0, i32* %add.ptr, align 4, !dbg !732, !tbaa !594
  %40 = bitcast i64* %len to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !733
  br label %if.end.32, !dbg !734

if.else.30:                                       ; preds = %while.body
  %41 = load i32*, i32** %path, align 8, !dbg !735, !tbaa !570
  %call31 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %41, i64 4096) #3, !dbg !736
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.28
  %42 = load i32*, i32** %prog, align 8, !dbg !737, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %42), !dbg !738
  %call33 = call i32 @isxfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0)), !dbg !739
  %tobool34 = icmp ne i32 %call33, 0, !dbg !739
  br i1 %tobool34, label %if.then.35, label %if.end.36, !dbg !741

if.then.35:                                       ; preds = %if.end.32
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !742

if.end.36:                                        ; preds = %if.end.32
  %43 = load i32*, i32** %delim, align 8, !dbg !743, !tbaa !570
  %tobool37 = icmp ne i32* %43, null, !dbg !743
  br i1 %tobool37, label %if.end.39, label %if.then.38, !dbg !745

if.then.38:                                       ; preds = %if.end.36
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4, !dbg !746, !tbaa !594
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !748

if.end.39:                                        ; preds = %if.end.36
  %44 = load i32*, i32** %delim, align 8, !dbg !749, !tbaa !570
  %add.ptr40 = getelementptr i32, i32* %44, i64 1, !dbg !750
  store i32* %add.ptr40, i32** %path, align 8, !dbg !751, !tbaa !570
  store i32 0, i32* %cleanup.dest.slot, !dbg !752
  br label %cleanup, !dbg !752

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then.35
  %45 = bitcast i32** %delim to i8*, !dbg !753
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !753
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !704

while.end:                                        ; preds = %cleanup
  br label %if.end.42, !dbg !754

if.else.41:                                       ; preds = %if.else
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4, !dbg !755, !tbaa !594
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %while.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.20
  %46 = load i32*, i32** %path_buffer, align 8, !dbg !756, !tbaa !570
  %47 = bitcast i32* %46 to i8*, !dbg !756
  call void @PyMem_RawFree(i8* %47), !dbg !757
  %48 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4, !dbg !758, !tbaa !594
  %cmp44 = icmp ne i32 %48, 47, !dbg !760
  br i1 %cmp44, label %land.lhs.true, label %if.end.47, !dbg !761

land.lhs.true:                                    ; preds = %if.end.43
  %49 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4, !dbg !762, !tbaa !594
  %cmp45 = icmp ne i32 %49, 0, !dbg !764
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !765

if.then.46:                                       ; preds = %land.lhs.true
  call void @absolutize(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0)), !dbg !766
  br label %if.end.47, !dbg !766

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true, %if.end.43
  %arraydecay = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !767
  %call48 = call i32* @wcsncpy(i32* %arraydecay, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i64 4096) #3, !dbg !768
  %arrayidx = getelementptr [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i64 4096, !dbg !769
  store i32 0, i32* %arrayidx, align 4, !dbg !770, !tbaa !594
  %50 = bitcast [4097 x i32]* %tmpbuffer to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 16388, i8* %50) #3, !dbg !771
  call void @llvm.dbg.declare(metadata [4097 x i32]* %tmpbuffer, metadata !397, metadata !574), !dbg !772
  %51 = bitcast i32* %linklen to i8*, !dbg !773
  call void @llvm.lifetime.start(i64 4, i8* %51) #3, !dbg !773
  call void @llvm.dbg.declare(metadata i32* %linklen, metadata !399, metadata !574), !dbg !774
  %arraydecay49 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !775
  %call50 = call i32 @_Py_wreadlink(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %arraydecay49, i64 4096), !dbg !776
  store i32 %call50, i32* %linklen, align 4, !dbg !774, !tbaa !594
  br label %while.cond.51, !dbg !777

while.cond.51:                                    ; preds = %if.end.64, %if.end.47
  %52 = load i32, i32* %linklen, align 4, !dbg !778, !tbaa !594
  %cmp52 = icmp ne i32 %52, -1, !dbg !781
  br i1 %cmp52, label %while.body.53, label %while.end.68, !dbg !777

while.body.53:                                    ; preds = %while.cond.51
  %arrayidx54 = getelementptr [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i64 0, !dbg !782
  %53 = load i32, i32* %arrayidx54, align 4, !dbg !782, !tbaa !594
  %cmp55 = icmp eq i32 %53, 47, !dbg !785
  br i1 %cmp55, label %if.then.56, label %if.else.60, !dbg !786

if.then.56:                                       ; preds = %while.body.53
  %arraydecay57 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !787
  %arraydecay58 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !788
  %call59 = call i32* @wcsncpy(i32* %arraydecay57, i32* %arraydecay58, i64 4096) #3, !dbg !789
  br label %if.end.64, !dbg !789

if.else.60:                                       ; preds = %while.body.53
  %arraydecay61 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !790
  call void @reduce(i32* %arraydecay61), !dbg !792
  %arraydecay62 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !793
  %arraydecay63 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !794
  call void @joinpath(i32* %arraydecay62, i32* %arraydecay63), !dbg !795
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.60, %if.then.56
  %arraydecay65 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !796
  %arraydecay66 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !797
  %call67 = call i32 @_Py_wreadlink(i32* %arraydecay65, i32* %arraydecay66, i64 4096), !dbg !798
  store i32 %call67, i32* %linklen, align 4, !dbg !799, !tbaa !594
  br label %while.cond.51, !dbg !777

while.end.68:                                     ; preds = %while.cond.51
  %54 = bitcast i32* %linklen to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 4, i8* %54) #3, !dbg !800
  %55 = bitcast [4097 x i32]* %tmpbuffer to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 16388, i8* %55) #3, !dbg !800
  %arraydecay69 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !801
  call void @reduce(i32* %arraydecay69), !dbg !802
  %56 = bitcast [4097 x i32]* %tmpbuffer70 to i8*, !dbg !803
  call void @llvm.lifetime.start(i64 16388, i8* %56) #3, !dbg !803
  call void @llvm.dbg.declare(metadata [4097 x i32]* %tmpbuffer70, metadata !400, metadata !574), !dbg !804
  %57 = bitcast i32** %env_cfg to i8*, !dbg !805
  call void @llvm.lifetime.start(i64 8, i8* %57) #3, !dbg !805
  call void @llvm.dbg.declare(metadata i32** %env_cfg, metadata !402, metadata !574), !dbg !806
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @.str.6, i32 0, i32 0), i32** %env_cfg, align 8, !dbg !806, !tbaa !570
  %58 = bitcast %struct._IO_FILE** %env_file to i8*, !dbg !807
  call void @llvm.lifetime.start(i64 8, i8* %58) #3, !dbg !807
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %env_file, metadata !403, metadata !574), !dbg !808
  store %struct._IO_FILE* null, %struct._IO_FILE** %env_file, align 8, !dbg !808, !tbaa !570
  %arraydecay71 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !809
  %arraydecay72 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !810
  %call73 = call i32* @wcscpy(i32* %arraydecay71, i32* %arraydecay72) #3, !dbg !811
  %arraydecay74 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !812
  %59 = load i32*, i32** %env_cfg, align 8, !dbg !813, !tbaa !570
  call void @joinpath(i32* %arraydecay74, i32* %59), !dbg !814
  %arraydecay75 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !815
  %call76 = call %struct._IO_FILE* @_Py_wfopen(i32* %arraydecay75, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i32 0, i32 0)), !dbg !816
  store %struct._IO_FILE* %call76, %struct._IO_FILE** %env_file, align 8, !dbg !817, !tbaa !570
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8, !dbg !818, !tbaa !570
  %cmp77 = icmp eq %struct._IO_FILE* %60, null, !dbg !820
  br i1 %cmp77, label %if.then.78, label %if.end.89, !dbg !821

if.then.78:                                       ; preds = %while.end.68
  %call79 = call i32* @__errno_location() #1, !dbg !822
  store i32 0, i32* %call79, align 4, !dbg !824, !tbaa !594
  %arraydecay80 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !825
  call void @reduce(i32* %arraydecay80), !dbg !826
  %arraydecay81 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !827
  call void @reduce(i32* %arraydecay81), !dbg !828
  %arraydecay82 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !829
  %61 = load i32*, i32** %env_cfg, align 8, !dbg !830, !tbaa !570
  call void @joinpath(i32* %arraydecay82, i32* %61), !dbg !831
  %arraydecay83 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !832
  %call84 = call %struct._IO_FILE* @_Py_wfopen(i32* %arraydecay83, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i32 0, i32 0)), !dbg !833
  store %struct._IO_FILE* %call84, %struct._IO_FILE** %env_file, align 8, !dbg !834, !tbaa !570
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8, !dbg !835, !tbaa !570
  %cmp85 = icmp eq %struct._IO_FILE* %62, null, !dbg !837
  br i1 %cmp85, label %if.then.86, label %if.end.88, !dbg !838

if.then.86:                                       ; preds = %if.then.78
  %call87 = call i32* @__errno_location() #1, !dbg !839
  store i32 0, i32* %call87, align 4, !dbg !841, !tbaa !594
  br label %if.end.88, !dbg !842

if.end.88:                                        ; preds = %if.then.86, %if.then.78
  br label %if.end.89, !dbg !843

if.end.89:                                        ; preds = %if.end.88, %while.end.68
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8, !dbg !844, !tbaa !570
  %cmp90 = icmp ne %struct._IO_FILE* %63, null, !dbg !846
  br i1 %cmp90, label %if.then.91, label %if.end.101, !dbg !847

if.then.91:                                       ; preds = %if.end.89
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8, !dbg !848, !tbaa !570
  %arraydecay92 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !851
  %call93 = call i32 @find_env_config_value(%struct._IO_FILE* %64, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.8, i32 0, i32 0), i32* %arraydecay92), !dbg !852
  %tobool94 = icmp ne i32 %call93, 0, !dbg !852
  br i1 %tobool94, label %if.then.95, label %if.end.99, !dbg !853

if.then.95:                                       ; preds = %if.then.91
  %arraydecay96 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !854
  %arraydecay97 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer70, i32 0, i32 0, !dbg !856
  %call98 = call i32* @wcscpy(i32* %arraydecay96, i32* %arraydecay97) #3, !dbg !857
  br label %if.end.99, !dbg !858

if.end.99:                                        ; preds = %if.then.95, %if.then.91
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8, !dbg !859, !tbaa !570
  %call100 = call i32 @fclose(%struct._IO_FILE* %65), !dbg !860
  store %struct._IO_FILE* null, %struct._IO_FILE** %env_file, align 8, !dbg !861, !tbaa !570
  br label %if.end.101, !dbg !862

if.end.101:                                       ; preds = %if.end.99, %if.end.89
  %66 = bitcast %struct._IO_FILE** %env_file to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !863
  %67 = bitcast i32** %env_cfg to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !863
  %68 = bitcast [4097 x i32]* %tmpbuffer70 to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 16388, i8* %68) #3, !dbg !863
  %arraydecay102 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !864
  %69 = load i32*, i32** %home, align 8, !dbg !865, !tbaa !570
  %70 = load i32*, i32** %_prefix, align 8, !dbg !866, !tbaa !570
  %71 = load i32*, i32** %lib_python, align 8, !dbg !867, !tbaa !570
  %call103 = call i32 @search_for_prefix(i32* %arraydecay102, i32* %69, i32* %70, i32* %71), !dbg !868
  store i32 %call103, i32* %pfound, align 4, !dbg !869, !tbaa !594
  %72 = load i32, i32* %pfound, align 4, !dbg !870, !tbaa !594
  %tobool104 = icmp ne i32 %72, 0, !dbg !870
  br i1 %tobool104, label %if.else.111, label %if.then.105, !dbg !872

if.then.105:                                      ; preds = %if.end.101
  %73 = load i32, i32* @Py_FrozenFlag, align 4, !dbg !873, !tbaa !594
  %tobool106 = icmp ne i32 %73, 0, !dbg !873
  br i1 %tobool106, label %if.end.109, label %if.then.107, !dbg !876

if.then.107:                                      ; preds = %if.then.105
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !877, !tbaa !570
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0)), !dbg !878
  br label %if.end.109, !dbg !878

if.end.109:                                       ; preds = %if.then.107, %if.then.105
  %75 = load i32*, i32** %_prefix, align 8, !dbg !879, !tbaa !570
  %call110 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %75, i64 4096) #3, !dbg !880
  %76 = load i32*, i32** %lib_python, align 8, !dbg !881, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %76), !dbg !882
  br label %if.end.112, !dbg !883

if.else.111:                                      ; preds = %if.end.101
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !884
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.111, %if.end.109
  %arraydecay113 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !885
  %call114 = call i32* @wcsncpy(i32* %arraydecay113, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i64 4096) #3, !dbg !886
  %arrayidx115 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 4096, !dbg !887
  store i32 0, i32* %arrayidx115, align 4, !dbg !888, !tbaa !594
  %77 = load i32, i32* %pfound, align 4, !dbg !889, !tbaa !594
  %cmp116 = icmp sgt i32 %77, 0, !dbg !891
  br i1 %cmp116, label %if.then.117, label %if.else.120, !dbg !892

if.then.117:                                      ; preds = %if.end.112
  %arraydecay118 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !893
  call void @reduce(i32* %arraydecay118), !dbg !895
  %arraydecay119 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !896
  call void @reduce(i32* %arraydecay119), !dbg !897
  br label %if.end.123, !dbg !898

if.else.120:                                      ; preds = %if.end.112
  %arraydecay121 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !899
  %78 = load i32*, i32** %_prefix, align 8, !dbg !900, !tbaa !570
  %call122 = call i32* @wcsncpy(i32* %arraydecay121, i32* %78, i64 4096) #3, !dbg !901
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.117
  %arraydecay124 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !902
  call void @joinpath(i32* %arraydecay124, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @.str.10, i32 0, i32 0)), !dbg !903
  %arraydecay125 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !904
  %call126 = call i64 @wcslen(i32* %arraydecay125) #8, !dbg !905
  store i64 %call126, i64* %bufsz, align 8, !dbg !906, !tbaa !719
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i64 0), align 1, !dbg !907, !tbaa !908
  %conv = sext i8 %79 to i32, !dbg !907
  %80 = load i64, i64* %bufsz, align 8, !dbg !909, !tbaa !719
  %sub = sub i64 %80, 6, !dbg !910
  %arrayidx127 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 %sub, !dbg !911
  store i32 %conv, i32* %arrayidx127, align 4, !dbg !912, !tbaa !594
  %81 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i64 2), align 1, !dbg !913, !tbaa !908
  %conv128 = sext i8 %81 to i32, !dbg !913
  %82 = load i64, i64* %bufsz, align 8, !dbg !914, !tbaa !719
  %sub129 = sub i64 %82, 5, !dbg !915
  %arrayidx130 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 %sub129, !dbg !916
  store i32 %conv128, i32* %arrayidx130, align 4, !dbg !917, !tbaa !594
  %arraydecay131 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0, !dbg !918
  %83 = load i32*, i32** %home, align 8, !dbg !919, !tbaa !570
  %84 = load i32*, i32** %_exec_prefix, align 8, !dbg !920, !tbaa !570
  %85 = load i32*, i32** %lib_python, align 8, !dbg !921, !tbaa !570
  %call132 = call i32 @search_for_exec_prefix(i32* %arraydecay131, i32* %83, i32* %84, i32* %85), !dbg !922
  store i32 %call132, i32* %efound, align 4, !dbg !923, !tbaa !594
  %86 = load i32, i32* %efound, align 4, !dbg !924, !tbaa !594
  %tobool133 = icmp ne i32 %86, 0, !dbg !924
  br i1 %tobool133, label %if.end.140, label %if.then.134, !dbg !926

if.then.134:                                      ; preds = %if.end.123
  %87 = load i32, i32* @Py_FrozenFlag, align 4, !dbg !927, !tbaa !594
  %tobool135 = icmp ne i32 %87, 0, !dbg !927
  br i1 %tobool135, label %if.end.138, label %if.then.136, !dbg !930

if.then.136:                                      ; preds = %if.then.134
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !931, !tbaa !570
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0)), !dbg !932
  br label %if.end.138, !dbg !932

if.end.138:                                       ; preds = %if.then.136, %if.then.134
  %89 = load i32*, i32** %_exec_prefix, align 8, !dbg !933, !tbaa !570
  %call139 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %89, i64 4096) #3, !dbg !934
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @.str.13, i32 0, i32 0)), !dbg !935
  br label %if.end.140, !dbg !936

if.end.140:                                       ; preds = %if.end.138, %if.end.123
  %90 = load i32, i32* %pfound, align 4, !dbg !937, !tbaa !594
  %tobool141 = icmp ne i32 %90, 0, !dbg !937
  br i1 %tobool141, label %lor.lhs.false.142, label %land.lhs.true.144, !dbg !939

lor.lhs.false.142:                                ; preds = %if.end.140
  %91 = load i32, i32* %efound, align 4, !dbg !940, !tbaa !594
  %tobool143 = icmp ne i32 %91, 0, !dbg !940
  br i1 %tobool143, label %if.end.148, label %land.lhs.true.144, !dbg !942

land.lhs.true.144:                                ; preds = %lor.lhs.false.142, %if.end.140
  %92 = load i32, i32* @Py_FrozenFlag, align 4, !dbg !943, !tbaa !594
  %tobool145 = icmp ne i32 %92, 0, !dbg !943
  br i1 %tobool145, label %if.end.148, label %if.then.146, !dbg !946

if.then.146:                                      ; preds = %land.lhs.true.144
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !947, !tbaa !570
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i32 0, i32 0)), !dbg !948
  br label %if.end.148, !dbg !948

if.end.148:                                       ; preds = %if.then.146, %land.lhs.true.144, %lor.lhs.false.142
  store i64 0, i64* %bufsz, align 8, !dbg !949, !tbaa !719
  %94 = load i8*, i8** %_rtpypath, align 8, !dbg !950, !tbaa !570
  %tobool149 = icmp ne i8* %94, null, !dbg !950
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.162, !dbg !951

land.lhs.true.150:                                ; preds = %if.end.148
  %95 = load i8*, i8** %_rtpypath, align 8, !dbg !952, !tbaa !570
  %arrayidx151 = getelementptr i8, i8* %95, i64 0, !dbg !952
  %96 = load i8, i8* %arrayidx151, align 1, !dbg !952, !tbaa !908
  %conv152 = sext i8 %96 to i32, !dbg !952
  %cmp153 = icmp ne i32 %conv152, 0, !dbg !954
  br i1 %cmp153, label %if.then.155, label %if.end.162, !dbg !955

if.then.155:                                      ; preds = %land.lhs.true.150
  %97 = bitcast i64* %rtpypath_len to i8*, !dbg !956
  call void @llvm.lifetime.start(i64 8, i8* %97) #3, !dbg !956
  call void @llvm.dbg.declare(metadata i64* %rtpypath_len, metadata !404, metadata !574), !dbg !957
  %98 = load i8*, i8** %_rtpypath, align 8, !dbg !958, !tbaa !570
  %call156 = call i32* @_Py_char2wchar(i8* %98, i64* %rtpypath_len), !dbg !959
  store i32* %call156, i32** %rtpypath, align 8, !dbg !960, !tbaa !570
  %99 = load i32*, i32** %rtpypath, align 8, !dbg !961, !tbaa !570
  %cmp157 = icmp ne i32* %99, null, !dbg !963
  br i1 %cmp157, label %if.then.159, label %if.end.161, !dbg !964

if.then.159:                                      ; preds = %if.then.155
  %100 = load i64, i64* %rtpypath_len, align 8, !dbg !965, !tbaa !719
  %add = add i64 %100, 1, !dbg !966
  %101 = load i64, i64* %bufsz, align 8, !dbg !967, !tbaa !719
  %add160 = add i64 %101, %add, !dbg !967
  store i64 %add160, i64* %bufsz, align 8, !dbg !967, !tbaa !719
  br label %if.end.161, !dbg !968

if.end.161:                                       ; preds = %if.then.159, %if.then.155
  %102 = bitcast i64* %rtpypath_len to i8*, !dbg !969
  call void @llvm.lifetime.end(i64 8, i8* %102) #3, !dbg !969
  br label %if.end.162, !dbg !970

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.150, %if.end.148
  %103 = load i32*, i32** %_pythonpath, align 8, !dbg !971, !tbaa !570
  store i32* %103, i32** %defpath, align 8, !dbg !972, !tbaa !570
  %call163 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #8, !dbg !973
  %add164 = add i64 %call163, 1, !dbg !974
  store i64 %add164, i64* %prefixsz, align 8, !dbg !975, !tbaa !719
  br label %while.cond.165, !dbg !976

while.cond.165:                                   ; preds = %cleanup.cont.191, %if.end.162
  br label %while.body.166, !dbg !977

while.body.166:                                   ; preds = %while.cond.165
  %104 = bitcast i32** %delim167 to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 8, i8* %104) #3, !dbg !979
  call void @llvm.dbg.declare(metadata i32** %delim167, metadata !407, metadata !574), !dbg !980
  %105 = load i32*, i32** %defpath, align 8, !dbg !981, !tbaa !570
  %call168 = call i32* @wcschr(i32* %105, i32 58) #8, !dbg !982
  store i32* %call168, i32** %delim167, align 8, !dbg !980, !tbaa !570
  %106 = load i32*, i32** %defpath, align 8, !dbg !983, !tbaa !570
  %arrayidx169 = getelementptr i32, i32* %106, i64 0, !dbg !983
  %107 = load i32, i32* %arrayidx169, align 4, !dbg !983, !tbaa !594
  %cmp170 = icmp ne i32 %107, 47, !dbg !985
  br i1 %cmp170, label %if.then.172, label %if.end.174, !dbg !986

if.then.172:                                      ; preds = %while.body.166
  %108 = load i64, i64* %prefixsz, align 8, !dbg !987, !tbaa !719
  %109 = load i64, i64* %bufsz, align 8, !dbg !988, !tbaa !719
  %add173 = add i64 %109, %108, !dbg !988
  store i64 %add173, i64* %bufsz, align 8, !dbg !988, !tbaa !719
  br label %if.end.174, !dbg !989

if.end.174:                                       ; preds = %if.then.172, %while.body.166
  %110 = load i32*, i32** %delim167, align 8, !dbg !990, !tbaa !570
  %tobool175 = icmp ne i32* %110, null, !dbg !990
  br i1 %tobool175, label %if.then.176, label %if.else.183, !dbg !992

if.then.176:                                      ; preds = %if.end.174
  %111 = load i32*, i32** %delim167, align 8, !dbg !993, !tbaa !570
  %112 = load i32*, i32** %defpath, align 8, !dbg !994, !tbaa !570
  %sub.ptr.lhs.cast177 = ptrtoint i32* %111 to i64, !dbg !995
  %sub.ptr.rhs.cast178 = ptrtoint i32* %112 to i64, !dbg !995
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178, !dbg !995
  %sub.ptr.div180 = sdiv exact i64 %sub.ptr.sub179, 4, !dbg !995
  %add181 = add i64 %sub.ptr.div180, 1, !dbg !996
  %113 = load i64, i64* %bufsz, align 8, !dbg !997, !tbaa !719
  %add182 = add i64 %113, %add181, !dbg !997
  store i64 %add182, i64* %bufsz, align 8, !dbg !997, !tbaa !719
  br label %if.end.187, !dbg !998

if.else.183:                                      ; preds = %if.end.174
  %114 = load i32*, i32** %defpath, align 8, !dbg !999, !tbaa !570
  %call184 = call i64 @wcslen(i32* %114) #8, !dbg !1001
  %add185 = add i64 %call184, 1, !dbg !1002
  %115 = load i64, i64* %bufsz, align 8, !dbg !1003, !tbaa !719
  %add186 = add i64 %115, %add185, !dbg !1003
  store i64 %add186, i64* %bufsz, align 8, !dbg !1003, !tbaa !719
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.189, !dbg !1004

if.end.187:                                       ; preds = %if.then.176
  %116 = load i32*, i32** %delim167, align 8, !dbg !1005, !tbaa !570
  %add.ptr188 = getelementptr i32, i32* %116, i64 1, !dbg !1006
  store i32* %add.ptr188, i32** %defpath, align 8, !dbg !1007, !tbaa !570
  store i32 0, i32* %cleanup.dest.slot, !dbg !1008
  br label %cleanup.189, !dbg !1008

cleanup.189:                                      ; preds = %if.end.187, %if.else.183
  %117 = bitcast i32** %delim167 to i8*, !dbg !1009
  call void @llvm.lifetime.end(i64 8, i8* %117) #3, !dbg !1009
  %cleanup.dest.190 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.190, label %unreachable [
    i32 0, label %cleanup.cont.191
    i32 7, label %while.end.192
  ]

cleanup.cont.191:                                 ; preds = %cleanup.189
  br label %while.cond.165, !dbg !976

while.end.192:                                    ; preds = %cleanup.189
  %arraydecay193 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !1010
  %call194 = call i64 @wcslen(i32* %arraydecay193) #8, !dbg !1011
  %add195 = add i64 %call194, 1, !dbg !1012
  %118 = load i64, i64* %bufsz, align 8, !dbg !1013, !tbaa !719
  %add196 = add i64 %118, %add195, !dbg !1013
  store i64 %add196, i64* %bufsz, align 8, !dbg !1013, !tbaa !719
  %call197 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #8, !dbg !1014
  %add198 = add i64 %call197, 1, !dbg !1015
  %119 = load i64, i64* %bufsz, align 8, !dbg !1016, !tbaa !719
  %add199 = add i64 %119, %add198, !dbg !1016
  store i64 %add199, i64* %bufsz, align 8, !dbg !1016, !tbaa !719
  %120 = load i64, i64* %bufsz, align 8, !dbg !1017, !tbaa !719
  %mul = mul i64 %120, 4, !dbg !1018
  %call200 = call i8* @PyMem_Malloc(i64 %mul), !dbg !1019
  %121 = bitcast i8* %call200 to i32*, !dbg !1020
  store i32* %121, i32** %buf, align 8, !dbg !1021, !tbaa !570
  %122 = load i32*, i32** %buf, align 8, !dbg !1022, !tbaa !570
  %cmp201 = icmp eq i32* %122, null, !dbg !1024
  br i1 %cmp201, label %if.then.203, label %if.end.204, !dbg !1025

if.then.203:                                      ; preds = %while.end.192
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !1026
  unreachable, !dbg !1026

if.end.204:                                       ; preds = %while.end.192
  %123 = load i32*, i32** %rtpypath, align 8, !dbg !1028, !tbaa !570
  %tobool205 = icmp ne i32* %123, null, !dbg !1028
  br i1 %tobool205, label %if.then.206, label %if.else.209, !dbg !1030

if.then.206:                                      ; preds = %if.end.204
  %124 = load i32*, i32** %buf, align 8, !dbg !1031, !tbaa !570
  %125 = load i32*, i32** %rtpypath, align 8, !dbg !1033, !tbaa !570
  %call207 = call i32* @wcscpy(i32* %124, i32* %125) #3, !dbg !1034
  %126 = load i32*, i32** %buf, align 8, !dbg !1035, !tbaa !570
  %call208 = call i32* @wcscat(i32* %126, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #3, !dbg !1036
  br label %if.end.211, !dbg !1037

if.else.209:                                      ; preds = %if.end.204
  %127 = load i32*, i32** %buf, align 8, !dbg !1038, !tbaa !570
  %arrayidx210 = getelementptr i32, i32* %127, i64 0, !dbg !1038
  store i32 0, i32* %arrayidx210, align 4, !dbg !1039, !tbaa !594
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %if.then.206
  %128 = load i32*, i32** %buf, align 8, !dbg !1040, !tbaa !570
  %arraydecay212 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0, !dbg !1041
  %call213 = call i32* @wcscat(i32* %128, i32* %arraydecay212) #3, !dbg !1042
  %129 = load i32*, i32** %buf, align 8, !dbg !1043, !tbaa !570
  %call214 = call i32* @wcscat(i32* %129, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #3, !dbg !1044
  %130 = load i32*, i32** %_pythonpath, align 8, !dbg !1045, !tbaa !570
  store i32* %130, i32** %defpath, align 8, !dbg !1046, !tbaa !570
  br label %while.cond.215, !dbg !1047

while.cond.215:                                   ; preds = %cleanup.cont.244, %if.end.211
  br label %while.body.216, !dbg !1048

while.body.216:                                   ; preds = %while.cond.215
  %131 = bitcast i32** %delim217 to i8*, !dbg !1049
  call void @llvm.lifetime.start(i64 8, i8* %131) #3, !dbg !1049
  call void @llvm.dbg.declare(metadata i32** %delim217, metadata !409, metadata !574), !dbg !1050
  %132 = load i32*, i32** %defpath, align 8, !dbg !1051, !tbaa !570
  %call218 = call i32* @wcschr(i32* %132, i32 58) #8, !dbg !1052
  store i32* %call218, i32** %delim217, align 8, !dbg !1050, !tbaa !570
  %133 = load i32*, i32** %defpath, align 8, !dbg !1053, !tbaa !570
  %arrayidx219 = getelementptr i32, i32* %133, i64 0, !dbg !1053
  %134 = load i32, i32* %arrayidx219, align 4, !dbg !1053, !tbaa !594
  %cmp220 = icmp ne i32 %134, 47, !dbg !1055
  br i1 %cmp220, label %if.then.222, label %if.end.225, !dbg !1056

if.then.222:                                      ; preds = %while.body.216
  %135 = load i32*, i32** %buf, align 8, !dbg !1057, !tbaa !570
  %call223 = call i32* @wcscat(i32* %135, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #3, !dbg !1059
  %136 = load i32*, i32** %buf, align 8, !dbg !1060, !tbaa !570
  %call224 = call i32* @wcscat(i32* %136, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #3, !dbg !1061
  br label %if.end.225, !dbg !1062

if.end.225:                                       ; preds = %if.then.222, %while.body.216
  %137 = load i32*, i32** %delim217, align 8, !dbg !1063, !tbaa !570
  %tobool226 = icmp ne i32* %137, null, !dbg !1063
  br i1 %tobool226, label %if.then.227, label %if.else.238, !dbg !1064

if.then.227:                                      ; preds = %if.end.225
  %138 = bitcast i64* %len228 to i8*, !dbg !1065
  call void @llvm.lifetime.start(i64 8, i8* %138) #3, !dbg !1065
  call void @llvm.dbg.declare(metadata i64* %len228, metadata !411, metadata !574), !dbg !1066
  %139 = load i32*, i32** %delim217, align 8, !dbg !1067, !tbaa !570
  %140 = load i32*, i32** %defpath, align 8, !dbg !1068, !tbaa !570
  %sub.ptr.lhs.cast229 = ptrtoint i32* %139 to i64, !dbg !1069
  %sub.ptr.rhs.cast230 = ptrtoint i32* %140 to i64, !dbg !1069
  %sub.ptr.sub231 = sub i64 %sub.ptr.lhs.cast229, %sub.ptr.rhs.cast230, !dbg !1069
  %sub.ptr.div232 = sdiv exact i64 %sub.ptr.sub231, 4, !dbg !1069
  %add233 = add i64 %sub.ptr.div232, 1, !dbg !1070
  store i64 %add233, i64* %len228, align 8, !dbg !1066, !tbaa !719
  %141 = bitcast i64* %end to i8*, !dbg !1071
  call void @llvm.lifetime.start(i64 8, i8* %141) #3, !dbg !1071
  call void @llvm.dbg.declare(metadata i64* %end, metadata !414, metadata !574), !dbg !1072
  %142 = load i32*, i32** %buf, align 8, !dbg !1073, !tbaa !570
  %call234 = call i64 @wcslen(i32* %142) #8, !dbg !1074
  %143 = load i64, i64* %len228, align 8, !dbg !1075, !tbaa !719
  %add235 = add i64 %call234, %143, !dbg !1076
  store i64 %add235, i64* %end, align 8, !dbg !1072, !tbaa !719
  %144 = load i32*, i32** %buf, align 8, !dbg !1077, !tbaa !570
  %145 = load i32*, i32** %defpath, align 8, !dbg !1078, !tbaa !570
  %146 = load i64, i64* %len228, align 8, !dbg !1079, !tbaa !719
  %call236 = call i32* @wcsncat(i32* %144, i32* %145, i64 %146) #3, !dbg !1080
  %147 = load i32*, i32** %buf, align 8, !dbg !1081, !tbaa !570
  %148 = load i64, i64* %end, align 8, !dbg !1082, !tbaa !719
  %add.ptr237 = getelementptr i32, i32* %147, i64 %148, !dbg !1083
  store i32 0, i32* %add.ptr237, align 4, !dbg !1084, !tbaa !594
  %149 = bitcast i64* %end to i8*, !dbg !1085
  call void @llvm.lifetime.end(i64 8, i8* %149) #3, !dbg !1085
  %150 = bitcast i64* %len228 to i8*, !dbg !1085
  call void @llvm.lifetime.end(i64 8, i8* %150) #3, !dbg !1085
  br label %if.end.240, !dbg !1086

if.else.238:                                      ; preds = %if.end.225
  %151 = load i32*, i32** %buf, align 8, !dbg !1087, !tbaa !570
  %152 = load i32*, i32** %defpath, align 8, !dbg !1089, !tbaa !570
  %call239 = call i32* @wcscat(i32* %151, i32* %152) #3, !dbg !1090
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !1091

if.end.240:                                       ; preds = %if.then.227
  %153 = load i32*, i32** %delim217, align 8, !dbg !1092, !tbaa !570
  %add.ptr241 = getelementptr i32, i32* %153, i64 1, !dbg !1093
  store i32* %add.ptr241, i32** %defpath, align 8, !dbg !1094, !tbaa !570
  store i32 0, i32* %cleanup.dest.slot, !dbg !1095
  br label %cleanup.242, !dbg !1095

cleanup.242:                                      ; preds = %if.end.240, %if.else.238
  %154 = bitcast i32** %delim217 to i8*, !dbg !1096
  call void @llvm.lifetime.end(i64 8, i8* %154) #3, !dbg !1096
  %cleanup.dest.243 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.243, label %unreachable [
    i32 0, label %cleanup.cont.244
    i32 9, label %while.end.245
  ]

cleanup.cont.244:                                 ; preds = %cleanup.242
  br label %while.cond.215, !dbg !1047

while.end.245:                                    ; preds = %cleanup.242
  %155 = load i32*, i32** %buf, align 8, !dbg !1097, !tbaa !570
  %call246 = call i32* @wcscat(i32* %155, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #3, !dbg !1098
  %156 = load i32*, i32** %buf, align 8, !dbg !1099, !tbaa !570
  %call247 = call i32* @wcscat(i32* %156, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #3, !dbg !1100
  %157 = load i32*, i32** %buf, align 8, !dbg !1101, !tbaa !570
  store i32* %157, i32** @module_search_path, align 8, !dbg !1102, !tbaa !570
  %158 = load i32, i32* %pfound, align 4, !dbg !1103, !tbaa !594
  %cmp248 = icmp sgt i32 %158, 0, !dbg !1105
  br i1 %cmp248, label %if.then.250, label %if.else.255, !dbg !1106

if.then.250:                                      ; preds = %while.end.245
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1107
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1109
  %159 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4, !dbg !1110, !tbaa !594
  %tobool251 = icmp ne i32 %159, 0, !dbg !1110
  br i1 %tobool251, label %if.end.254, label %if.then.252, !dbg !1112

if.then.252:                                      ; preds = %if.then.250
  %call253 = call i32* @wcscpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #3, !dbg !1113
  br label %if.end.254, !dbg !1113

if.end.254:                                       ; preds = %if.then.252, %if.then.250
  br label %if.end.257, !dbg !1114

if.else.255:                                      ; preds = %while.end.245
  %160 = load i32*, i32** %_prefix, align 8, !dbg !1115, !tbaa !570
  %call256 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %160, i64 4096) #3, !dbg !1116
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.255, %if.end.254
  %161 = load i32, i32* %efound, align 4, !dbg !1117, !tbaa !594
  %cmp258 = icmp sgt i32 %161, 0, !dbg !1119
  br i1 %cmp258, label %if.then.260, label %if.else.265, !dbg !1120

if.then.260:                                      ; preds = %if.end.257
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1121
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1123
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1124
  %162 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4, !dbg !1125, !tbaa !594
  %tobool261 = icmp ne i32 %162, 0, !dbg !1125
  br i1 %tobool261, label %if.end.264, label %if.then.262, !dbg !1127

if.then.262:                                      ; preds = %if.then.260
  %call263 = call i32* @wcscpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #3, !dbg !1128
  br label %if.end.264, !dbg !1128

if.end.264:                                       ; preds = %if.then.262, %if.then.260
  br label %if.end.267, !dbg !1129

if.else.265:                                      ; preds = %if.end.257
  %163 = load i32*, i32** %_exec_prefix, align 8, !dbg !1130, !tbaa !570
  %call266 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %163, i64 4096) #3, !dbg !1131
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.265, %if.end.264
  %164 = load i32*, i32** %_pythonpath, align 8, !dbg !1132, !tbaa !570
  %165 = bitcast i32* %164 to i8*, !dbg !1132
  call void @PyMem_RawFree(i8* %165), !dbg !1133
  %166 = load i32*, i32** %_prefix, align 8, !dbg !1134, !tbaa !570
  %167 = bitcast i32* %166 to i8*, !dbg !1134
  call void @PyMem_RawFree(i8* %167), !dbg !1135
  %168 = load i32*, i32** %_exec_prefix, align 8, !dbg !1136, !tbaa !570
  %169 = bitcast i32* %168 to i8*, !dbg !1136
  call void @PyMem_RawFree(i8* %169), !dbg !1137
  %170 = load i32*, i32** %lib_python, align 8, !dbg !1138, !tbaa !570
  %171 = bitcast i32* %170 to i8*, !dbg !1138
  call void @PyMem_RawFree(i8* %171), !dbg !1139
  %172 = load i32*, i32** %rtpypath, align 8, !dbg !1140, !tbaa !570
  %173 = bitcast i32* %172 to i8*, !dbg !1140
  call void @PyMem_RawFree(i8* %173), !dbg !1141
  %174 = bitcast i32** %lib_python to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %174) #3, !dbg !1142
  %175 = bitcast i32** %_exec_prefix to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %175) #3, !dbg !1142
  %176 = bitcast i32** %_prefix to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %176) #3, !dbg !1142
  %177 = bitcast i32** %_pythonpath to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %177) #3, !dbg !1142
  %178 = bitcast i32** %defpath to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %178) #3, !dbg !1142
  %179 = bitcast i64* %prefixsz to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %179) #3, !dbg !1142
  %180 = bitcast i64* %bufsz to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %180) #3, !dbg !1142
  %181 = bitcast i32** %buf to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %181) #3, !dbg !1142
  %182 = bitcast i32* %efound to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 4, i8* %182) #3, !dbg !1142
  %183 = bitcast i32* %pfound to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 4, i8* %183) #3, !dbg !1142
  %184 = bitcast [4097 x i32]* %zip_path to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 16388, i8* %184) #3, !dbg !1142
  %185 = bitcast [4097 x i32]* %argv0_path to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 16388, i8* %185) #3, !dbg !1142
  %186 = bitcast i32** %prog to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %186) #3, !dbg !1142
  %187 = bitcast i32** %path to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %187) #3, !dbg !1142
  %188 = bitcast i32** %path_buffer to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %188) #3, !dbg !1142
  %189 = bitcast i8** %_path to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %189) #3, !dbg !1142
  %190 = bitcast i32** %home to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %190) #3, !dbg !1142
  %191 = bitcast i32** %rtpypath to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %191) #3, !dbg !1142
  %192 = bitcast i8** %_rtpypath to i8*, !dbg !1142
  call void @llvm.lifetime.end(i64 8, i8* %192) #3, !dbg !1142
  ret void, !dbg !1142

unreachable:                                      ; preds = %cleanup.242, %cleanup.189, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetPrefix() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8, !dbg !1143, !tbaa !570
  %tobool = icmp ne i32* %0, null, !dbg !1143
  br i1 %tobool, label %if.end, label %if.then, !dbg !1145

if.then:                                          ; preds = %entry
  call void @calculate_path(), !dbg !1146
  br label %if.end, !dbg !1146

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), !dbg !1147
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetExecPrefix() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8, !dbg !1148, !tbaa !570
  %tobool = icmp ne i32* %0, null, !dbg !1148
  br i1 %tobool, label %if.end, label %if.then, !dbg !1150

if.then:                                          ; preds = %entry
  call void @calculate_path(), !dbg !1151
  br label %if.end, !dbg !1151

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), !dbg !1152
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetProgramFullPath() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8, !dbg !1153, !tbaa !570
  %tobool = icmp ne i32* %0, null, !dbg !1153
  br i1 %tobool, label %if.end, label %if.then, !dbg !1155

if.then:                                          ; preds = %entry
  call void @calculate_path(), !dbg !1156
  br label %if.end, !dbg !1156

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), !dbg !1157
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i32* @Py_GetPythonHome() #2

declare i32* @_Py_char2wchar(i8*, i64*) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #5

; Function Attrs: nounwind uwtable
define internal void @joinpath(i32* %buffer, i32* %stuff) #0 {
entry:
  %buffer.addr = alloca i32*, align 8
  %stuff.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %k = alloca i64, align 8
  store i32* %buffer, i32** %buffer.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %buffer.addr, metadata !419, metadata !574), !dbg !1158
  store i32* %stuff, i32** %stuff.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %stuff.addr, metadata !420, metadata !574), !dbg !1159
  %0 = bitcast i64* %n to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1160
  call void @llvm.dbg.declare(metadata i64* %n, metadata !421, metadata !574), !dbg !1161
  %1 = bitcast i64* %k to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1160
  call void @llvm.dbg.declare(metadata i64* %k, metadata !422, metadata !574), !dbg !1162
  %2 = load i32*, i32** %stuff.addr, align 8, !dbg !1163, !tbaa !570
  %arrayidx = getelementptr i32, i32* %2, i64 0, !dbg !1163
  %3 = load i32, i32* %arrayidx, align 4, !dbg !1163, !tbaa !594
  %cmp = icmp eq i32 %3, 47, !dbg !1165
  br i1 %cmp, label %if.then, label %if.else, !dbg !1166

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8, !dbg !1167, !tbaa !719
  br label %if.end.8, !dbg !1168

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %buffer.addr, align 8, !dbg !1169, !tbaa !570
  %call = call i64 @wcslen(i32* %4) #8, !dbg !1171
  store i64 %call, i64* %n, align 8, !dbg !1172, !tbaa !719
  %5 = load i64, i64* %n, align 8, !dbg !1173, !tbaa !719
  %cmp1 = icmp ugt i64 %5, 0, !dbg !1175
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !1176

land.lhs.true:                                    ; preds = %if.else
  %6 = load i64, i64* %n, align 8, !dbg !1177, !tbaa !719
  %sub = sub i64 %6, 1, !dbg !1179
  %7 = load i32*, i32** %buffer.addr, align 8, !dbg !1180, !tbaa !570
  %arrayidx2 = getelementptr i32, i32* %7, i64 %sub, !dbg !1180
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !1180, !tbaa !594
  %cmp3 = icmp ne i32 %8, 47, !dbg !1181
  br i1 %cmp3, label %land.lhs.true.4, label %if.end, !dbg !1182

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load i64, i64* %n, align 8, !dbg !1183, !tbaa !719
  %cmp5 = icmp ult i64 %9, 4096, !dbg !1185
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !1186

if.then.6:                                        ; preds = %land.lhs.true.4
  %10 = load i64, i64* %n, align 8, !dbg !1187, !tbaa !719
  %inc = add i64 %10, 1, !dbg !1187
  store i64 %inc, i64* %n, align 8, !dbg !1187, !tbaa !719
  %11 = load i32*, i32** %buffer.addr, align 8, !dbg !1188, !tbaa !570
  %arrayidx7 = getelementptr i32, i32* %11, i64 %10, !dbg !1188
  store i32 47, i32* %arrayidx7, align 4, !dbg !1189, !tbaa !594
  br label %if.end, !dbg !1188

if.end:                                           ; preds = %if.then.6, %land.lhs.true.4, %land.lhs.true, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load i64, i64* %n, align 8, !dbg !1190, !tbaa !719
  %cmp9 = icmp ugt i64 %12, 4096, !dbg !1192
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1193

if.then.10:                                       ; preds = %if.end.8
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !1194
  unreachable, !dbg !1194

if.end.11:                                        ; preds = %if.end.8
  %13 = load i32*, i32** %stuff.addr, align 8, !dbg !1195, !tbaa !570
  %call12 = call i64 @wcslen(i32* %13) #8, !dbg !1196
  store i64 %call12, i64* %k, align 8, !dbg !1197, !tbaa !719
  %14 = load i64, i64* %n, align 8, !dbg !1198, !tbaa !719
  %15 = load i64, i64* %k, align 8, !dbg !1200, !tbaa !719
  %add = add i64 %14, %15, !dbg !1201
  %cmp13 = icmp ugt i64 %add, 4096, !dbg !1202
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1203

if.then.14:                                       ; preds = %if.end.11
  %16 = load i64, i64* %n, align 8, !dbg !1204, !tbaa !719
  %sub15 = sub i64 4096, %16, !dbg !1205
  store i64 %sub15, i64* %k, align 8, !dbg !1206, !tbaa !719
  br label %if.end.16, !dbg !1207

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %17 = load i32*, i32** %buffer.addr, align 8, !dbg !1208, !tbaa !570
  %18 = load i64, i64* %n, align 8, !dbg !1209, !tbaa !719
  %add.ptr = getelementptr i32, i32* %17, i64 %18, !dbg !1210
  %19 = load i32*, i32** %stuff.addr, align 8, !dbg !1211, !tbaa !570
  %20 = load i64, i64* %k, align 8, !dbg !1212, !tbaa !719
  %call17 = call i32* @wcsncpy(i32* %add.ptr, i32* %19, i64 %20) #3, !dbg !1213
  %21 = load i64, i64* %n, align 8, !dbg !1214, !tbaa !719
  %22 = load i64, i64* %k, align 8, !dbg !1215, !tbaa !719
  %add18 = add i64 %21, %22, !dbg !1216
  %23 = load i32*, i32** %buffer.addr, align 8, !dbg !1217, !tbaa !570
  %arrayidx19 = getelementptr i32, i32* %23, i64 %add18, !dbg !1217
  store i32 0, i32* %arrayidx19, align 4, !dbg !1218, !tbaa !594
  %24 = bitcast i64* %k to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !1219
  %25 = bitcast i64* %n to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !1219
  ret void, !dbg !1219
}

; Function Attrs: nounwind uwtable
define internal i32 @isxfile(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %filename, i32** %filename.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %filename.addr, metadata !427, metadata !574), !dbg !1220
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !1221
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !428, metadata !574), !dbg !1222
  %1 = load i32*, i32** %filename.addr, align 8, !dbg !1223, !tbaa !570
  %call = call i32 @_Py_wstat(i32* %1, %struct.stat* %buf), !dbg !1225
  %cmp = icmp ne i32 %call, 0, !dbg !1226
  br i1 %cmp, label %if.then, label %if.end, !dbg !1227

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1228

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !1229
  %2 = load i32, i32* %st_mode, align 4, !dbg !1229, !tbaa !1231
  %and = and i32 %2, 61440, !dbg !1234
  %cmp1 = icmp eq i32 %and, 32768, !dbg !1235
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !1236

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1237

if.end.3:                                         ; preds = %if.end
  %st_mode4 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !1238
  %3 = load i32, i32* %st_mode4, align 4, !dbg !1238, !tbaa !1231
  %and5 = and i32 %3, 73, !dbg !1240
  %cmp6 = icmp eq i32 %and5, 0, !dbg !1241
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1242

if.then.7:                                        ; preds = %if.end.3
  store i32 0, i32* %retval, !dbg !1243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1243

if.end.8:                                         ; preds = %if.end.3
  store i32 1, i32* %retval, !dbg !1244
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1244

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.2, %if.then
  %4 = bitcast %struct.stat* %buf to i8*, !dbg !1245
  call void @llvm.lifetime.end(i64 144, i8* %4) #3, !dbg !1245
  %5 = load i32, i32* %retval, !dbg !1245
  ret i32 %5, !dbg !1245
}

; Function Attrs: nounwind uwtable
define internal void @absolutize(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %buffer = alloca [4097 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store i32* %path, i32** %path.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !469, metadata !574), !dbg !1246
  %0 = bitcast [4097 x i32]* %buffer to i8*, !dbg !1247
  call void @llvm.lifetime.start(i64 16388, i8* %0) #3, !dbg !1247
  call void @llvm.dbg.declare(metadata [4097 x i32]* %buffer, metadata !470, metadata !574), !dbg !1248
  %1 = load i32*, i32** %path.addr, align 8, !dbg !1249, !tbaa !570
  %arrayidx = getelementptr i32, i32* %1, i64 0, !dbg !1249
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1249, !tbaa !594
  %cmp = icmp eq i32 %2, 47, !dbg !1251
  br i1 %cmp, label %if.then, label %if.end, !dbg !1252

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1253

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4097 x i32], [4097 x i32]* %buffer, i32 0, i32 0, !dbg !1254
  %3 = load i32*, i32** %path.addr, align 8, !dbg !1255, !tbaa !570
  call void @copy_absolute(i32* %arraydecay, i32* %3, i64 4097), !dbg !1256
  %4 = load i32*, i32** %path.addr, align 8, !dbg !1257, !tbaa !570
  %arraydecay1 = getelementptr inbounds [4097 x i32], [4097 x i32]* %buffer, i32 0, i32 0, !dbg !1258
  %call = call i32* @wcscpy(i32* %4, i32* %arraydecay1) #3, !dbg !1259
  store i32 0, i32* %cleanup.dest.slot, !dbg !1260
  br label %cleanup, !dbg !1260

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast [4097 x i32]* %buffer to i8*, !dbg !1261
  call void @llvm.lifetime.end(i64 16388, i8* %5) #3, !dbg !1261
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1260

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @_Py_wreadlink(i32*, i32*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @reduce(i32* %dir) #0 {
entry:
  %dir.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  store i32* %dir, i32** %dir.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %dir.addr, metadata !480, metadata !574), !dbg !1263
  %0 = bitcast i64* %i to i8*, !dbg !1264
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1264
  call void @llvm.dbg.declare(metadata i64* %i, metadata !481, metadata !574), !dbg !1265
  %1 = load i32*, i32** %dir.addr, align 8, !dbg !1266, !tbaa !570
  %call = call i64 @wcslen(i32* %1) #8, !dbg !1267
  store i64 %call, i64* %i, align 8, !dbg !1265, !tbaa !719
  br label %while.cond, !dbg !1268

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %i, align 8, !dbg !1269, !tbaa !719
  %cmp = icmp ugt i64 %2, 0, !dbg !1272
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1273

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, i64* %i, align 8, !dbg !1274, !tbaa !719
  %4 = load i32*, i32** %dir.addr, align 8, !dbg !1276, !tbaa !570
  %arrayidx = getelementptr i32, i32* %4, i64 %3, !dbg !1276
  %5 = load i32, i32* %arrayidx, align 4, !dbg !1276, !tbaa !594
  %cmp1 = icmp ne i32 %5, 47, !dbg !1277
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !1278

while.body:                                       ; preds = %land.end
  %7 = load i64, i64* %i, align 8, !dbg !1280, !tbaa !719
  %dec = add i64 %7, -1, !dbg !1280
  store i64 %dec, i64* %i, align 8, !dbg !1280, !tbaa !719
  br label %while.cond, !dbg !1268

while.end:                                        ; preds = %land.end
  %8 = load i64, i64* %i, align 8, !dbg !1281, !tbaa !719
  %9 = load i32*, i32** %dir.addr, align 8, !dbg !1282, !tbaa !570
  %arrayidx2 = getelementptr i32, i32* %9, i64 %8, !dbg !1282
  store i32 0, i32* %arrayidx2, align 4, !dbg !1283, !tbaa !594
  %10 = bitcast i64* %i to i8*, !dbg !1284
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !1284
  ret void, !dbg !1284
}

declare %struct._IO_FILE* @_Py_wfopen(i32*, i32*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal i32 @find_env_config_value(%struct._IO_FILE* %env_file, i32* %key, i32* %value) #0 {
entry:
  %env_file.addr = alloca %struct._IO_FILE*, align 8
  %key.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %buffer = alloca [8193 x i8], align 16
  %p = alloca i8*, align 8
  %tmpbuffer = alloca [8193 x i32], align 16
  %decoded = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %k = alloca i64, align 8
  %state = alloca i32*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tok = alloca i32*, align 8
  store %struct._IO_FILE* %env_file, %struct._IO_FILE** %env_file.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %env_file.addr, metadata !486, metadata !574), !dbg !1285
  store i32* %key, i32** %key.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %key.addr, metadata !487, metadata !574), !dbg !1286
  store i32* %value, i32** %value.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !488, metadata !574), !dbg !1287
  %0 = bitcast i32* %result to i8*, !dbg !1288
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %result, metadata !489, metadata !574), !dbg !1289
  store i32 0, i32* %result, align 4, !dbg !1289, !tbaa !594
  %1 = bitcast [8193 x i8]* %buffer to i8*, !dbg !1290
  call void @llvm.lifetime.start(i64 8193, i8* %1) #3, !dbg !1290
  call void @llvm.dbg.declare(metadata [8193 x i8]* %buffer, metadata !490, metadata !574), !dbg !1291
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8, !dbg !1292, !tbaa !570
  %call = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 0), !dbg !1293
  br label %while.cond, !dbg !1294

while.cond:                                       ; preds = %cleanup.cont.63, %cleanup.58, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8, !dbg !1295, !tbaa !570
  %call1 = call i32 @feof(%struct._IO_FILE* %3) #3, !dbg !1298
  %tobool = icmp ne i32 %call1, 0, !dbg !1299
  %lnot = xor i1 %tobool, true, !dbg !1299
  br i1 %lnot, label %while.body, label %while.end, !dbg !1294

while.body:                                       ; preds = %while.cond
  %4 = bitcast i8** %p to i8*, !dbg !1300
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1300
  call void @llvm.dbg.declare(metadata i8** %p, metadata !494, metadata !574), !dbg !1301
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %buffer, i32 0, i32 0, !dbg !1302
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8, !dbg !1303, !tbaa !570
  %call2 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %5), !dbg !1304
  store i8* %call2, i8** %p, align 8, !dbg !1301, !tbaa !570
  %6 = bitcast [8193 x i32]* %tmpbuffer to i8*, !dbg !1305
  call void @llvm.lifetime.start(i64 32772, i8* %6) #3, !dbg !1305
  call void @llvm.dbg.declare(metadata [8193 x i32]* %tmpbuffer, metadata !496, metadata !574), !dbg !1306
  %7 = bitcast %struct._object** %decoded to i8*, !dbg !1307
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1307
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !498, metadata !574), !dbg !1308
  %8 = bitcast i32* %n to i8*, !dbg !1309
  call void @llvm.lifetime.start(i64 4, i8* %8) #3, !dbg !1309
  call void @llvm.dbg.declare(metadata i32* %n, metadata !499, metadata !574), !dbg !1310
  %9 = load i8*, i8** %p, align 8, !dbg !1311, !tbaa !570
  %cmp = icmp eq i8* %9, null, !dbg !1313
  br i1 %cmp, label %if.then, label %if.end, !dbg !1314

if.then:                                          ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1315

if.end:                                           ; preds = %while.body
  %10 = load i8*, i8** %p, align 8, !dbg !1316, !tbaa !570
  %call3 = call i64 @strlen(i8* %10) #8, !dbg !1317
  %conv = trunc i64 %call3 to i32, !dbg !1317
  store i32 %conv, i32* %n, align 4, !dbg !1318, !tbaa !594
  %11 = load i32, i32* %n, align 4, !dbg !1319, !tbaa !594
  %sub = sub i32 %11, 1, !dbg !1321
  %idxprom = sext i32 %sub to i64, !dbg !1322
  %12 = load i8*, i8** %p, align 8, !dbg !1322, !tbaa !570
  %arrayidx = getelementptr i8, i8* %12, i64 %idxprom, !dbg !1322
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1322, !tbaa !908
  %conv4 = sext i8 %13 to i32, !dbg !1322
  %cmp5 = icmp ne i32 %conv4, 10, !dbg !1323
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !1324

if.then.7:                                        ; preds = %if.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1325

if.end.8:                                         ; preds = %if.end
  %14 = load i8*, i8** %p, align 8, !dbg !1327, !tbaa !570
  %arrayidx9 = getelementptr i8, i8* %14, i64 0, !dbg !1327
  %15 = load i8, i8* %arrayidx9, align 1, !dbg !1327, !tbaa !908
  %conv10 = sext i8 %15 to i32, !dbg !1327
  %cmp11 = icmp eq i32 %conv10, 35, !dbg !1329
  br i1 %cmp11, label %if.then.13, label %if.end.14, !dbg !1330

if.then.13:                                       ; preds = %if.end.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1331

if.end.14:                                        ; preds = %if.end.8
  %arraydecay15 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buffer, i32 0, i32 0, !dbg !1332
  %16 = load i32, i32* %n, align 4, !dbg !1333, !tbaa !594
  %conv16 = sext i32 %16 to i64, !dbg !1333
  %call17 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %arraydecay15, i64 %conv16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)), !dbg !1334
  store %struct._object* %call17, %struct._object** %decoded, align 8, !dbg !1335, !tbaa !570
  %17 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1336, !tbaa !570
  %cmp18 = icmp ne %struct._object* %17, null, !dbg !1337
  br i1 %cmp18, label %if.then.20, label %if.end.57, !dbg !1338

if.then.20:                                       ; preds = %if.end.14
  %18 = bitcast i64* %k to i8*, !dbg !1339
  call void @llvm.lifetime.start(i64 8, i8* %18) #3, !dbg !1339
  call void @llvm.dbg.declare(metadata i64* %k, metadata !500, metadata !574), !dbg !1340
  %19 = bitcast i32** %state to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !1341
  call void @llvm.dbg.declare(metadata i32** %state, metadata !503, metadata !574), !dbg !1342
  %20 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1343, !tbaa !570
  %arraydecay21 = getelementptr inbounds [8193 x i32], [8193 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !1344
  %call22 = call i64 @PyUnicode_AsWideChar(%struct._object* %20, i32* %arraydecay21, i64 8192), !dbg !1345
  store i64 %call22, i64* %k, align 8, !dbg !1346, !tbaa !719
  br label %do.body, !dbg !1347

do.body:                                          ; preds = %if.then.20
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1348
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !504, metadata !574), !dbg !1350
  %22 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1351, !tbaa !570
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !1350, !tbaa !570
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1352, !tbaa !570
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1354
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1355, !tbaa !1356
  %dec = add i64 %24, -1, !dbg !1355
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1355, !tbaa !1356
  %cmp23 = icmp ne i64 %dec, 0, !dbg !1358
  br i1 %cmp23, label %if.then.25, label %if.else, !dbg !1359

if.then.25:                                       ; preds = %do.body
  br label %if.end.26, !dbg !1360

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1362, !tbaa !570
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1364
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1364, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1366
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1366, !tbaa !1367
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1370, !tbaa !570
  call void %27(%struct._object* %28), !dbg !1371
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1372
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1372
  br label %do.cond, !dbg !1374

do.cond:                                          ; preds = %if.end.26
  br label %do.end, !dbg !1375

do.end:                                           ; preds = %do.cond
  %30 = load i64, i64* %k, align 8, !dbg !1377, !tbaa !719
  %cmp27 = icmp sge i64 %30, 0, !dbg !1378
  br i1 %cmp27, label %if.then.29, label %if.end.52, !dbg !1379

if.then.29:                                       ; preds = %do.end
  %31 = bitcast i32** %tok to i8*, !dbg !1380
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !1380
  call void @llvm.dbg.declare(metadata i32** %tok, metadata !506, metadata !574), !dbg !1381
  %arraydecay30 = getelementptr inbounds [8193 x i32], [8193 x i32]* %tmpbuffer, i32 0, i32 0, !dbg !1382
  %call31 = call i32* @wcstok(i32* %arraydecay30, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.18, i32 0, i32 0), i32** %state) #3, !dbg !1383
  store i32* %call31, i32** %tok, align 8, !dbg !1381, !tbaa !570
  %32 = load i32*, i32** %tok, align 8, !dbg !1384, !tbaa !570
  %cmp32 = icmp ne i32* %32, null, !dbg !1386
  br i1 %cmp32, label %land.lhs.true, label %if.end.51, !dbg !1387

land.lhs.true:                                    ; preds = %if.then.29
  %33 = load i32*, i32** %tok, align 8, !dbg !1388, !tbaa !570
  %34 = load i32*, i32** %key.addr, align 8, !dbg !1390, !tbaa !570
  %call34 = call i32 @wcscmp(i32* %33, i32* %34) #8, !dbg !1391
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1391
  br i1 %tobool35, label %if.end.51, label %if.then.36, !dbg !1392

if.then.36:                                       ; preds = %land.lhs.true
  %call37 = call i32* @wcstok(i32* null, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.19, i32 0, i32 0), i32** %state) #3, !dbg !1393
  store i32* %call37, i32** %tok, align 8, !dbg !1395, !tbaa !570
  %35 = load i32*, i32** %tok, align 8, !dbg !1396, !tbaa !570
  %cmp38 = icmp ne i32* %35, null, !dbg !1398
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.50, !dbg !1399

land.lhs.true.40:                                 ; preds = %if.then.36
  %36 = load i32*, i32** %tok, align 8, !dbg !1400, !tbaa !570
  %call41 = call i32 @wcscmp(i32* %36, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.20, i32 0, i32 0)) #8, !dbg !1402
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1402
  br i1 %tobool42, label %if.end.50, label %if.then.43, !dbg !1403

if.then.43:                                       ; preds = %land.lhs.true.40
  %call44 = call i32* @wcstok(i32* null, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.21, i32 0, i32 0), i32** %state) #3, !dbg !1404
  store i32* %call44, i32** %tok, align 8, !dbg !1406, !tbaa !570
  %37 = load i32*, i32** %tok, align 8, !dbg !1407, !tbaa !570
  %cmp45 = icmp ne i32* %37, null, !dbg !1409
  br i1 %cmp45, label %if.then.47, label %if.end.49, !dbg !1410

if.then.47:                                       ; preds = %if.then.43
  %38 = load i32*, i32** %value.addr, align 8, !dbg !1411, !tbaa !570
  %39 = load i32*, i32** %tok, align 8, !dbg !1413, !tbaa !570
  %call48 = call i32* @wcsncpy(i32* %38, i32* %39, i64 4096) #3, !dbg !1414
  store i32 1, i32* %result, align 4, !dbg !1415, !tbaa !594
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1416

if.end.49:                                        ; preds = %if.then.43
  br label %if.end.50, !dbg !1417

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.40, %if.then.36
  br label %if.end.51, !dbg !1418

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true, %if.then.29
  store i32 0, i32* %cleanup.dest.slot, !dbg !1419
  br label %cleanup, !dbg !1419

cleanup:                                          ; preds = %if.end.51, %if.then.47
  %40 = bitcast i32** %tok to i8*, !dbg !1420
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1420
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52, !dbg !1422

if.end.52:                                        ; preds = %cleanup.cont, %do.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1423
  br label %cleanup.53, !dbg !1423

cleanup.53:                                       ; preds = %if.end.52, %cleanup
  %41 = bitcast i32** %state to i8*, !dbg !1424
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1424
  %42 = bitcast i64* %k to i8*, !dbg !1424
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1424
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.58 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.53
  br label %if.end.57, !dbg !1426

if.end.57:                                        ; preds = %cleanup.cont.56, %if.end.14
  store i32 0, i32* %cleanup.dest.slot, !dbg !1427
  br label %cleanup.58, !dbg !1427

cleanup.58:                                       ; preds = %if.end.57, %cleanup.53, %if.then.13, %if.then.7, %if.then
  %43 = bitcast i32* %n to i8*, !dbg !1428
  call void @llvm.lifetime.end(i64 4, i8* %43) #3, !dbg !1428
  %44 = bitcast %struct._object** %decoded to i8*, !dbg !1428
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !1428
  %45 = bitcast [8193 x i32]* %tmpbuffer to i8*, !dbg !1428
  call void @llvm.lifetime.end(i64 32772, i8* %45) #3, !dbg !1428
  %46 = bitcast i8** %p to i8*, !dbg !1428
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !1428
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %unreachable [
    i32 0, label %cleanup.cont.63
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont.63:                                  ; preds = %cleanup.58
  br label %while.cond, !dbg !1294

while.end:                                        ; preds = %cleanup.58, %while.cond
  %47 = load i32, i32* %result, align 4, !dbg !1429, !tbaa !594
  store i32 1, i32* %cleanup.dest.slot
  %48 = bitcast [8193 x i8]* %buffer to i8*, !dbg !1430
  call void @llvm.lifetime.end(i64 8193, i8* %48) #3, !dbg !1430
  %49 = bitcast i32* %result to i8*, !dbg !1430
  call void @llvm.lifetime.end(i64 4, i8* %49) #3, !dbg !1430
  ret i32 %47, !dbg !1431

unreachable:                                      ; preds = %cleanup.58
  unreachable
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @search_for_prefix(i32* %argv0_path, i32* %home, i32* %_prefix, i32* %lib_python) #0 {
entry:
  %retval = alloca i32, align 4
  %argv0_path.addr = alloca i32*, align 8
  %home.addr = alloca i32*, align 8
  %_prefix.addr = alloca i32*, align 8
  %lib_python.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %vpath = alloca i32*, align 8
  %delim = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %argv0_path, i32** %argv0_path.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %argv0_path.addr, metadata !513, metadata !574), !dbg !1432
  store i32* %home, i32** %home.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %home.addr, metadata !514, metadata !574), !dbg !1433
  store i32* %_prefix, i32** %_prefix.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %_prefix.addr, metadata !515, metadata !574), !dbg !1434
  store i32* %lib_python, i32** %lib_python.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %lib_python.addr, metadata !516, metadata !574), !dbg !1435
  %0 = bitcast i64* %n to i8*, !dbg !1436
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1436
  call void @llvm.dbg.declare(metadata i64* %n, metadata !517, metadata !574), !dbg !1437
  %1 = bitcast i32** %vpath to i8*, !dbg !1438
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1438
  call void @llvm.dbg.declare(metadata i32** %vpath, metadata !518, metadata !574), !dbg !1439
  %2 = load i32*, i32** %home.addr, align 8, !dbg !1440, !tbaa !570
  %tobool = icmp ne i32* %2, null, !dbg !1440
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1441

if.then:                                          ; preds = %entry
  %3 = bitcast i32** %delim to i8*, !dbg !1442
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1442
  call void @llvm.dbg.declare(metadata i32** %delim, metadata !519, metadata !574), !dbg !1443
  %4 = load i32*, i32** %home.addr, align 8, !dbg !1444, !tbaa !570
  %call = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %4, i64 4096) #3, !dbg !1445
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4, !dbg !1446, !tbaa !594
  %call1 = call i32* @wcschr(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32 58) #8, !dbg !1447
  store i32* %call1, i32** %delim, align 8, !dbg !1448, !tbaa !570
  %5 = load i32*, i32** %delim, align 8, !dbg !1449, !tbaa !570
  %tobool2 = icmp ne i32* %5, null, !dbg !1449
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1451

if.then.3:                                        ; preds = %if.then
  %6 = load i32*, i32** %delim, align 8, !dbg !1452, !tbaa !570
  store i32 0, i32* %6, align 4, !dbg !1453, !tbaa !594
  br label %if.end, !dbg !1454

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load i32*, i32** %lib_python.addr, align 8, !dbg !1455, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %7), !dbg !1456
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0)), !dbg !1457
  store i32 1, i32* %retval, !dbg !1458
  store i32 1, i32* %cleanup.dest.slot
  %8 = bitcast i32** %delim to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1459
  br label %cleanup

if.end.4:                                         ; preds = %entry
  %9 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1460, !tbaa !570
  %call5 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %9, i64 4096) #3, !dbg !1461
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4, !dbg !1462, !tbaa !594
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.23, i32 0, i32 0)), !dbg !1463
  %call6 = call i32 @isfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1464
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1464
  br i1 %tobool7, label %if.then.8, label %if.end.17, !dbg !1466

if.then.8:                                        ; preds = %if.end.4
  %call9 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i64* null), !dbg !1467
  store i32* %call9, i32** %vpath, align 8, !dbg !1469, !tbaa !570
  %10 = load i32*, i32** %vpath, align 8, !dbg !1470, !tbaa !570
  %cmp = icmp ne i32* %10, null, !dbg !1472
  br i1 %cmp, label %if.then.10, label %if.end.16, !dbg !1473

if.then.10:                                       ; preds = %if.then.8
  %11 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1474, !tbaa !570
  %call11 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %11, i64 4096) #3, !dbg !1476
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4, !dbg !1477, !tbaa !594
  %12 = load i32*, i32** %vpath, align 8, !dbg !1478, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %12), !dbg !1479
  %13 = load i32*, i32** %vpath, align 8, !dbg !1480, !tbaa !570
  %14 = bitcast i32* %13 to i8*, !dbg !1480
  call void @PyMem_RawFree(i8* %14), !dbg !1481
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.25, i32 0, i32 0)), !dbg !1482
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0)), !dbg !1483
  %call12 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1484
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1484
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !1486

if.then.14:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval, !dbg !1487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1487

if.end.15:                                        ; preds = %if.then.10
  br label %if.end.16, !dbg !1488

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  br label %if.end.17, !dbg !1489

if.end.17:                                        ; preds = %if.end.16, %if.end.4
  %15 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1490, !tbaa !570
  call void @copy_absolute(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %15, i64 4097), !dbg !1491
  br label %do.body, !dbg !1492

do.body:                                          ; preds = %do.cond, %if.end.17
  %call18 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #8, !dbg !1493
  store i64 %call18, i64* %n, align 8, !dbg !1495, !tbaa !719
  %16 = load i32*, i32** %lib_python.addr, align 8, !dbg !1496, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %16), !dbg !1497
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0)), !dbg !1498
  %call19 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1499
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1499
  br i1 %tobool20, label %if.then.21, label %if.end.22, !dbg !1501

if.then.21:                                       ; preds = %do.body
  store i32 1, i32* %retval, !dbg !1502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1502

if.end.22:                                        ; preds = %do.body
  %17 = load i64, i64* %n, align 8, !dbg !1503, !tbaa !719
  %arrayidx = getelementptr [4097 x i32], [4097 x i32]* @prefix, i32 0, i64 %17, !dbg !1504
  store i32 0, i32* %arrayidx, align 4, !dbg !1505, !tbaa !594
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1506
  br label %do.cond, !dbg !1507

do.cond:                                          ; preds = %if.end.22
  %18 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4, !dbg !1508, !tbaa !594
  %tobool23 = icmp ne i32 %18, 0, !dbg !1507
  br i1 %tobool23, label %do.body, label %do.end, !dbg !1507

do.end:                                           ; preds = %do.cond
  %19 = load i32*, i32** %_prefix.addr, align 8, !dbg !1510, !tbaa !570
  %call24 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %19, i64 4096) #3, !dbg !1511
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4, !dbg !1512, !tbaa !594
  %20 = load i32*, i32** %lib_python.addr, align 8, !dbg !1513, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %20), !dbg !1514
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0)), !dbg !1515
  %call25 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)), !dbg !1516
  %tobool26 = icmp ne i32 %call25, 0, !dbg !1516
  br i1 %tobool26, label %if.then.27, label %if.end.28, !dbg !1518

if.then.27:                                       ; preds = %do.end
  store i32 1, i32* %retval, !dbg !1519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1519

if.end.28:                                        ; preds = %do.end
  store i32 0, i32* %retval, !dbg !1520
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1520

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.21, %if.then.14, %if.end
  %21 = bitcast i32** %vpath to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1521
  %22 = bitcast i64* %n to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1521
  %23 = load i32, i32* %retval, !dbg !1521
  ret i32 %23, !dbg !1521
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @search_for_exec_prefix(i32* %argv0_path, i32* %home, i32* %_exec_prefix, i32* %lib_python) #0 {
entry:
  %retval = alloca i32, align 4
  %argv0_path.addr = alloca i32*, align 8
  %home.addr = alloca i32*, align 8
  %_exec_prefix.addr = alloca i32*, align 8
  %lib_python.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %delim = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [4097 x i8], align 16
  %decoded = alloca %struct._object*, align 8
  %rel_builddir_path = alloca [4097 x i32], align 16
  %k = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32* %argv0_path, i32** %argv0_path.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %argv0_path.addr, metadata !531, metadata !574), !dbg !1522
  store i32* %home, i32** %home.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %home.addr, metadata !532, metadata !574), !dbg !1523
  store i32* %_exec_prefix, i32** %_exec_prefix.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %_exec_prefix.addr, metadata !533, metadata !574), !dbg !1524
  store i32* %lib_python, i32** %lib_python.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %lib_python.addr, metadata !534, metadata !574), !dbg !1525
  %0 = bitcast i64* %n to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %n, metadata !535, metadata !574), !dbg !1527
  %1 = load i32*, i32** %home.addr, align 8, !dbg !1528, !tbaa !570
  %tobool = icmp ne i32* %1, null, !dbg !1528
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !1529

if.then:                                          ; preds = %entry
  %2 = bitcast i32** %delim to i8*, !dbg !1530
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1530
  call void @llvm.dbg.declare(metadata i32** %delim, metadata !536, metadata !574), !dbg !1531
  %3 = load i32*, i32** %home.addr, align 8, !dbg !1532, !tbaa !570
  %call = call i32* @wcschr(i32* %3, i32 58) #8, !dbg !1533
  store i32* %call, i32** %delim, align 8, !dbg !1534, !tbaa !570
  %4 = load i32*, i32** %delim, align 8, !dbg !1535, !tbaa !570
  %tobool1 = icmp ne i32* %4, null, !dbg !1535
  br i1 %tobool1, label %if.then.2, label %if.else, !dbg !1537

if.then.2:                                        ; preds = %if.then
  %5 = load i32*, i32** %delim, align 8, !dbg !1538, !tbaa !570
  %add.ptr = getelementptr i32, i32* %5, i64 1, !dbg !1539
  %call3 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %add.ptr, i64 4096) #3, !dbg !1540
  br label %if.end, !dbg !1540

if.else:                                          ; preds = %if.then
  %6 = load i32*, i32** %home.addr, align 8, !dbg !1541, !tbaa !570
  %call4 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %6, i64 4096) #3, !dbg !1542
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4, !dbg !1543, !tbaa !594
  %7 = load i32*, i32** %lib_python.addr, align 8, !dbg !1544, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %7), !dbg !1545
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0)), !dbg !1546
  store i32 1, i32* %retval, !dbg !1547
  store i32 1, i32* %cleanup.dest.slot
  %8 = bitcast i32** %delim to i8*, !dbg !1548
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1548
  br label %cleanup.58

if.end.5:                                         ; preds = %entry
  %9 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1549, !tbaa !570
  %call6 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %9, i64 4096) #3, !dbg !1550
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4, !dbg !1551, !tbaa !594
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([15 x i32], [15 x i32]* @.str.29, i32 0, i32 0)), !dbg !1552
  %call7 = call i32 @isfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1553
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1553
  br i1 %tobool8, label %if.then.9, label %if.end.42, !dbg !1554

if.then.9:                                        ; preds = %if.end.5
  %10 = bitcast %struct._IO_FILE** %f to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1555
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !539, metadata !574), !dbg !1556
  %call10 = call %struct._IO_FILE* @_Py_wfopen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.30, i32 0, i32 0)), !dbg !1557
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f, align 8, !dbg !1556, !tbaa !570
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !1558, !tbaa !570
  %cmp = icmp eq %struct._IO_FILE* %11, null, !dbg !1559
  br i1 %cmp, label %if.then.11, label %if.else.13, !dbg !1560

if.then.11:                                       ; preds = %if.then.9
  %call12 = call i32* @__errno_location() #1, !dbg !1561
  store i32 0, i32* %call12, align 4, !dbg !1562, !tbaa !594
  br label %if.end.38, !dbg !1563

if.else.13:                                       ; preds = %if.then.9
  %12 = bitcast [4097 x i8]* %buf to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 4097, i8* %12) #3, !dbg !1564
  call void @llvm.dbg.declare(metadata [4097 x i8]* %buf, metadata !542, metadata !574), !dbg !1565
  %13 = bitcast %struct._object** %decoded to i8*, !dbg !1566
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !546, metadata !574), !dbg !1567
  %14 = bitcast [4097 x i32]* %rel_builddir_path to i8*, !dbg !1568
  call void @llvm.lifetime.start(i64 16388, i8* %14) #3, !dbg !1568
  call void @llvm.dbg.declare(metadata [4097 x i32]* %rel_builddir_path, metadata !547, metadata !574), !dbg !1569
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0, !dbg !1570
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !1571, !tbaa !570
  %call14 = call i64 @fread(i8* %arraydecay, i64 1, i64 4096, %struct._IO_FILE* %15), !dbg !1572
  store i64 %call14, i64* %n, align 8, !dbg !1573, !tbaa !719
  %16 = load i64, i64* %n, align 8, !dbg !1574, !tbaa !719
  %arrayidx = getelementptr [4097 x i8], [4097 x i8]* %buf, i32 0, i64 %16, !dbg !1575
  store i8 0, i8* %arrayidx, align 1, !dbg !1576, !tbaa !908
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !1577, !tbaa !570
  %call15 = call i32 @fclose(%struct._IO_FILE* %17), !dbg !1578
  %arraydecay16 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0, !dbg !1579
  %18 = load i64, i64* %n, align 8, !dbg !1580, !tbaa !719
  %call17 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %arraydecay16, i64 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)), !dbg !1581
  store %struct._object* %call17, %struct._object** %decoded, align 8, !dbg !1582, !tbaa !570
  %19 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1583, !tbaa !570
  %cmp18 = icmp ne %struct._object* %19, null, !dbg !1584
  br i1 %cmp18, label %if.then.19, label %if.end.32, !dbg !1585

if.then.19:                                       ; preds = %if.else.13
  %20 = bitcast i64* %k to i8*, !dbg !1586
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !1586
  call void @llvm.dbg.declare(metadata i64* %k, metadata !548, metadata !574), !dbg !1587
  %21 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1588, !tbaa !570
  %arraydecay20 = getelementptr inbounds [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i32 0, !dbg !1589
  %call21 = call i64 @PyUnicode_AsWideChar(%struct._object* %21, i32* %arraydecay20, i64 4096), !dbg !1590
  store i64 %call21, i64* %k, align 8, !dbg !1591, !tbaa !719
  br label %do.body, !dbg !1592

do.body:                                          ; preds = %if.then.19
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !1593
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !551, metadata !574), !dbg !1595
  %23 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1596, !tbaa !570
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1595, !tbaa !570
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1597, !tbaa !570
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1599
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1600, !tbaa !1356
  %dec = add i64 %25, -1, !dbg !1600
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1600, !tbaa !1356
  %cmp22 = icmp ne i64 %dec, 0, !dbg !1601
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1602

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1603

if.else.24:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1605, !tbaa !570
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1607
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1607, !tbaa !1365
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1608
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1608, !tbaa !1367
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1609, !tbaa !570
  call void %28(%struct._object* %29), !dbg !1610
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1611
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !1611
  br label %do.cond, !dbg !1613

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1614

do.end:                                           ; preds = %do.cond
  %31 = load i64, i64* %k, align 8, !dbg !1616, !tbaa !719
  %cmp26 = icmp sge i64 %31, 0, !dbg !1618
  br i1 %cmp26, label %if.then.27, label %if.end.31, !dbg !1619

if.then.27:                                       ; preds = %do.end
  %32 = load i64, i64* %k, align 8, !dbg !1620, !tbaa !719
  %arrayidx28 = getelementptr [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i64 %32, !dbg !1622
  store i32 0, i32* %arrayidx28, align 4, !dbg !1623, !tbaa !594
  %33 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1624, !tbaa !570
  %call29 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %33, i64 4096) #3, !dbg !1625
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4, !dbg !1626, !tbaa !594
  %arraydecay30 = getelementptr inbounds [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i32 0, !dbg !1627
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %arraydecay30), !dbg !1628
  store i32 -1, i32* %retval, !dbg !1629
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1629

if.end.31:                                        ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1630
  br label %cleanup, !dbg !1630

cleanup:                                          ; preds = %if.end.31, %if.then.27
  %34 = bitcast i64* %k to i8*, !dbg !1631
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !1631
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32, !dbg !1633

if.end.32:                                        ; preds = %cleanup.cont, %if.else.13
  store i32 0, i32* %cleanup.dest.slot, !dbg !1634
  br label %cleanup.33, !dbg !1634

cleanup.33:                                       ; preds = %if.end.32, %cleanup
  %35 = bitcast [4097 x i32]* %rel_builddir_path to i8*, !dbg !1635
  call void @llvm.lifetime.end(i64 16388, i8* %35) #3, !dbg !1635
  %36 = bitcast %struct._object** %decoded to i8*, !dbg !1635
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1635
  %37 = bitcast [4097 x i8]* %buf to i8*, !dbg !1635
  call void @llvm.lifetime.end(i64 4097, i8* %37) #3, !dbg !1635
  %cleanup.dest.36 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.36, label %cleanup.39 [
    i32 0, label %cleanup.cont.37
  ]

cleanup.cont.37:                                  ; preds = %cleanup.33
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont.37, %if.then.11
  store i32 0, i32* %cleanup.dest.slot, !dbg !1637
  br label %cleanup.39, !dbg !1637

cleanup.39:                                       ; preds = %if.end.38, %cleanup.33
  %38 = bitcast %struct._IO_FILE** %f to i8*, !dbg !1638
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1638
  %cleanup.dest.40 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.40, label %cleanup.58 [
    i32 0, label %cleanup.cont.41
  ]

cleanup.cont.41:                                  ; preds = %cleanup.39
  br label %if.end.42, !dbg !1640

if.end.42:                                        ; preds = %cleanup.cont.41, %if.end.5
  %39 = load i32*, i32** %argv0_path.addr, align 8, !dbg !1641, !tbaa !570
  call void @copy_absolute(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %39, i64 4097), !dbg !1642
  br label %do.body.43, !dbg !1643

do.body.43:                                       ; preds = %do.cond.50, %if.end.42
  %call44 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #8, !dbg !1644
  store i64 %call44, i64* %n, align 8, !dbg !1646, !tbaa !719
  %40 = load i32*, i32** %lib_python.addr, align 8, !dbg !1647, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %40), !dbg !1648
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0)), !dbg !1649
  %call45 = call i32 @isdir(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1650
  %tobool46 = icmp ne i32 %call45, 0, !dbg !1650
  br i1 %tobool46, label %if.then.47, label %if.end.48, !dbg !1652

if.then.47:                                       ; preds = %do.body.43
  store i32 1, i32* %retval, !dbg !1653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1653

if.end.48:                                        ; preds = %do.body.43
  %41 = load i64, i64* %n, align 8, !dbg !1654, !tbaa !719
  %arrayidx49 = getelementptr [4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 %41, !dbg !1655
  store i32 0, i32* %arrayidx49, align 4, !dbg !1656, !tbaa !594
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1657
  br label %do.cond.50, !dbg !1658

do.cond.50:                                       ; preds = %if.end.48
  %42 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4, !dbg !1659, !tbaa !594
  %tobool51 = icmp ne i32 %42, 0, !dbg !1658
  br i1 %tobool51, label %do.body.43, label %do.end.52, !dbg !1658

do.end.52:                                        ; preds = %do.cond.50
  %43 = load i32*, i32** %_exec_prefix.addr, align 8, !dbg !1661, !tbaa !570
  %call53 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %43, i64 4096) #3, !dbg !1662
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4, !dbg !1663, !tbaa !594
  %44 = load i32*, i32** %lib_python.addr, align 8, !dbg !1664, !tbaa !570
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %44), !dbg !1665
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0)), !dbg !1666
  %call54 = call i32 @isdir(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)), !dbg !1667
  %tobool55 = icmp ne i32 %call54, 0, !dbg !1667
  br i1 %tobool55, label %if.then.56, label %if.end.57, !dbg !1669

if.then.56:                                       ; preds = %do.end.52
  store i32 1, i32* %retval, !dbg !1670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1670

if.end.57:                                        ; preds = %do.end.52
  store i32 0, i32* %retval, !dbg !1671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1671

cleanup.58:                                       ; preds = %if.end.57, %if.then.56, %if.then.47, %cleanup.39, %if.end
  %45 = bitcast i64* %n to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !1672
  %46 = load i32, i32* %retval, !dbg !1672
  ret i32 %46, !dbg !1672
}

declare i8* @PyMem_Malloc(i64) #2

; Function Attrs: nounwind
declare i32* @wcscat(i32*, i32*) #4

; Function Attrs: nounwind
declare i32* @wcsncat(i32*, i32*, i64) #4

declare i32 @_Py_wstat(i32*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal void @copy_absolute(i32* %path, i32* %p, i64 %pathlen) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %pathlen.addr = alloca i64, align 8
  store i32* %path, i32** %path.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !475, metadata !574), !dbg !1673
  store i32* %p, i32** %p.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !476, metadata !574), !dbg !1674
  store i64 %pathlen, i64* %pathlen.addr, align 8, !tbaa !719
  call void @llvm.dbg.declare(metadata i64* %pathlen.addr, metadata !477, metadata !574), !dbg !1675
  %0 = load i32*, i32** %p.addr, align 8, !dbg !1676, !tbaa !570
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !1676
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1676, !tbaa !594
  %cmp = icmp eq i32 %1, 47, !dbg !1678
  br i1 %cmp, label %if.then, label %if.else, !dbg !1679

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %path.addr, align 8, !dbg !1680, !tbaa !570
  %3 = load i32*, i32** %p.addr, align 8, !dbg !1681, !tbaa !570
  %call = call i32* @wcscpy(i32* %2, i32* %3) #3, !dbg !1682
  br label %if.end.10, !dbg !1682

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %path.addr, align 8, !dbg !1683, !tbaa !570
  %5 = load i64, i64* %pathlen.addr, align 8, !dbg !1686, !tbaa !719
  %call1 = call i32* @_Py_wgetcwd(i32* %4, i64 %5), !dbg !1687
  %tobool = icmp ne i32* %call1, null, !dbg !1687
  br i1 %tobool, label %if.end, label %if.then.2, !dbg !1688

if.then.2:                                        ; preds = %if.else
  %6 = load i32*, i32** %path.addr, align 8, !dbg !1689, !tbaa !570
  %7 = load i32*, i32** %p.addr, align 8, !dbg !1691, !tbaa !570
  %call3 = call i32* @wcscpy(i32* %6, i32* %7) #3, !dbg !1692
  br label %if.end.10, !dbg !1693

if.end:                                           ; preds = %if.else
  %8 = load i32*, i32** %p.addr, align 8, !dbg !1694, !tbaa !570
  %arrayidx4 = getelementptr i32, i32* %8, i64 0, !dbg !1694
  %9 = load i32, i32* %arrayidx4, align 4, !dbg !1694, !tbaa !594
  %cmp5 = icmp eq i32 %9, 46, !dbg !1696
  br i1 %cmp5, label %land.lhs.true, label %if.end.9, !dbg !1697

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32*, i32** %p.addr, align 8, !dbg !1698, !tbaa !570
  %arrayidx6 = getelementptr i32, i32* %10, i64 1, !dbg !1698
  %11 = load i32, i32* %arrayidx6, align 4, !dbg !1698, !tbaa !594
  %cmp7 = icmp eq i32 %11, 47, !dbg !1700
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1701

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load i32*, i32** %p.addr, align 8, !dbg !1702, !tbaa !570
  %add.ptr = getelementptr i32, i32* %12, i64 2, !dbg !1702
  store i32* %add.ptr, i32** %p.addr, align 8, !dbg !1702, !tbaa !570
  br label %if.end.9, !dbg !1703

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  %13 = load i32*, i32** %path.addr, align 8, !dbg !1704, !tbaa !570
  %14 = load i32*, i32** %p.addr, align 8, !dbg !1705, !tbaa !570
  call void @joinpath(i32* %13, i32* %14), !dbg !1706
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.2, %if.end.9, %if.then
  ret void, !dbg !1707
}

declare i32* @_Py_wgetcwd(i32*, i64) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #2

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #2

; Function Attrs: nounwind
declare i32* @wcstok(i32*, i32*, i32**) #4

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #5

; Function Attrs: nounwind uwtable
define internal i32 @isfile(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %filename, i32** %filename.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %filename.addr, metadata !524, metadata !574), !dbg !1708
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !1709
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !1709
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !525, metadata !574), !dbg !1710
  %1 = load i32*, i32** %filename.addr, align 8, !dbg !1711, !tbaa !570
  %call = call i32 @_Py_wstat(i32* %1, %struct.stat* %buf), !dbg !1713
  %cmp = icmp ne i32 %call, 0, !dbg !1714
  br i1 %cmp, label %if.then, label %if.end, !dbg !1715

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1716

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !1717
  %2 = load i32, i32* %st_mode, align 4, !dbg !1717, !tbaa !1231
  %and = and i32 %2, 61440, !dbg !1719
  %cmp1 = icmp eq i32 %and, 32768, !dbg !1720
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !1721

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1722
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1722

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1723

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %3 = bitcast %struct.stat* %buf to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 144, i8* %3) #3, !dbg !1724
  %4 = load i32, i32* %retval, !dbg !1724
  ret i32 %4, !dbg !1724
}

; Function Attrs: nounwind uwtable
define internal i32 @ismodule(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  store i32* %filename, i32** %filename.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %filename.addr, metadata !528, metadata !574), !dbg !1725
  %0 = load i32*, i32** %filename.addr, align 8, !dbg !1726, !tbaa !570
  %call = call i32 @isfile(i32* %0), !dbg !1728
  %tobool = icmp ne i32 %call, 0, !dbg !1728
  br i1 %tobool, label %if.then, label %if.end, !dbg !1729

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !1730
  br label %return, !dbg !1730

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %filename.addr, align 8, !dbg !1731, !tbaa !570
  %call1 = call i64 @wcslen(i32* %1) #8, !dbg !1733
  %cmp = icmp ult i64 %call1, 4096, !dbg !1734
  br i1 %cmp, label %if.then.2, label %if.end.9, !dbg !1735

if.then.2:                                        ; preds = %if.end
  %2 = load i32*, i32** %filename.addr, align 8, !dbg !1736, !tbaa !570
  %3 = load i32, i32* @Py_OptimizeFlag, align 4, !dbg !1738, !tbaa !594
  %tobool3 = icmp ne i32 %3, 0, !dbg !1738
  %cond = select i1 %tobool3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.26, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.27, i32 0, i32 0), !dbg !1738
  %call4 = call i32* @wcscat(i32* %2, i32* %cond) #3, !dbg !1739
  %4 = load i32*, i32** %filename.addr, align 8, !dbg !1740, !tbaa !570
  %call5 = call i32 @isfile(i32* %4), !dbg !1742
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1742
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !1743

if.then.7:                                        ; preds = %if.then.2
  store i32 1, i32* %retval, !dbg !1744
  br label %return, !dbg !1744

if.end.8:                                         ; preds = %if.then.2
  br label %if.end.9, !dbg !1745

if.end.9:                                         ; preds = %if.end.8, %if.end
  store i32 0, i32* %retval, !dbg !1746
  br label %return, !dbg !1746

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %5 = load i32, i32* %retval, !dbg !1747
  ret i32 %5, !dbg !1747
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @isdir(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %filename, i32** %filename.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i32** %filename.addr, metadata !555, metadata !574), !dbg !1748
  %0 = bitcast %struct.stat* %buf to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !1749
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !556, metadata !574), !dbg !1750
  %1 = load i32*, i32** %filename.addr, align 8, !dbg !1751, !tbaa !570
  %call = call i32 @_Py_wstat(i32* %1, %struct.stat* %buf), !dbg !1753
  %cmp = icmp ne i32 %call, 0, !dbg !1754
  br i1 %cmp, label %if.then, label %if.end, !dbg !1755

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1756

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3, !dbg !1757
  %2 = load i32, i32* %st_mode, align 4, !dbg !1757, !tbaa !1231
  %and = and i32 %2, 61440, !dbg !1759
  %cmp1 = icmp eq i32 %and, 16384, !dbg !1760
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !1761

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1762
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1762

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval, !dbg !1763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1763

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %3 = bitcast %struct.stat* %buf to i8*, !dbg !1764
  call void @llvm.lifetime.end(i64 144, i8* %3) #3, !dbg !1764
  %4 = load i32, i32* %retval, !dbg !1764
  ret i32 %4, !dbg !1764
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!567, !568}
!llvm.ident = !{!569}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !345, globals: !557)
!1 = !DIFile(filename: "getpath.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 90, baseType: !8)
!7 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !43, !104, !109, !114, !115, !120, !172, !203, !215, !221, !222, !223, !225, !227, !258, !259, !260, !269, !270, !275, !276, !278, !280, !290, !293, !311, !312, !313, !315, !317, !318, !320, !325, !330, !335, !336, !337, !338, !339, !340, !341, !342, !344}
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
!42 = !{null, !9}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!8, !9, !48, !8}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 246, size: 1728, align: 64, elements: !52)
!51 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!52 = !{!53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !74, !75, !76, !77, !79, !81, !83, !87, !90, !92, !93, !94, !95, !96, !99, !100}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 247, baseType: !8, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 252, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 253, baseType: !55, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 254, baseType: !55, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 255, baseType: !55, size: 64, align: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 256, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 257, baseType: !55, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 258, baseType: !55, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 259, baseType: !55, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 261, baseType: !55, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 262, baseType: !55, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 263, baseType: !55, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 265, baseType: !67, size: 64, align: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 161, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !68, file: !51, line: 162, baseType: !67, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !68, file: !51, line: 163, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !68, file: !51, line: 167, baseType: !8, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 267, baseType: !72, size: 64, align: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 269, baseType: !8, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 273, baseType: !8, size: 32, align: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 275, baseType: !78, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 279, baseType: !80, size: 16, align: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 280, baseType: !82, size: 8, align: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 281, baseType: !84, size: 8, align: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 285, baseType: !88, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 155, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 294, baseType: !91, size: 64, align: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !50, file: !51, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !50, file: !51, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !50, file: !51, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !50, file: !51, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 307, baseType: !97, size: 64, align: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 62, baseType: !98)
!98 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 309, baseType: !8, size: 32, align: 32, offset: 1536)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 311, baseType: !101, size: 160, align: 8, offset: 1568)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !105, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!9, !9, !55}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !110, size: 64, align: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!8, !9, !55, !9}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !116, size: 64, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!9, !9}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !121, size: 64, align: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !124)
!124 = !{!125, !130, !131, !132, !133, !134, !139, !141, !142, !143, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !123, file: !11, line: 241, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!9, !9, !9}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !123, file: !11, line: 242, baseType: !126, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !123, file: !11, line: 243, baseType: !126, size: 64, align: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !123, file: !11, line: 244, baseType: !126, size: 64, align: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !123, file: !11, line: 245, baseType: !126, size: 64, align: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !123, file: !11, line: 246, baseType: !135, size: 64, align: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!9, !9, !9, !9}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !123, file: !11, line: 247, baseType: !140, size: 64, align: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !117)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !123, file: !11, line: 248, baseType: !140, size: 64, align: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !123, file: !11, line: 249, baseType: !140, size: 64, align: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !123, file: !11, line: 250, baseType: !144, size: 64, align: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!8, !9}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !123, file: !11, line: 251, baseType: !140, size: 64, align: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !123, file: !11, line: 252, baseType: !126, size: 64, align: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !123, file: !11, line: 253, baseType: !126, size: 64, align: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !123, file: !11, line: 254, baseType: !126, size: 64, align: 64, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !123, file: !11, line: 255, baseType: !126, size: 64, align: 64, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !123, file: !11, line: 256, baseType: !126, size: 64, align: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !123, file: !11, line: 257, baseType: !140, size: 64, align: 64, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !123, file: !11, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !123, file: !11, line: 259, baseType: !140, size: 64, align: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !123, file: !11, line: 261, baseType: !126, size: 64, align: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !123, file: !11, line: 262, baseType: !126, size: 64, align: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !123, file: !11, line: 263, baseType: !126, size: 64, align: 64, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !123, file: !11, line: 264, baseType: !126, size: 64, align: 64, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !123, file: !11, line: 265, baseType: !135, size: 64, align: 64, offset: 1472)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !123, file: !11, line: 266, baseType: !126, size: 64, align: 64, offset: 1536)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !123, file: !11, line: 267, baseType: !126, size: 64, align: 64, offset: 1600)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !123, file: !11, line: 268, baseType: !126, size: 64, align: 64, offset: 1664)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !123, file: !11, line: 269, baseType: !126, size: 64, align: 64, offset: 1728)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !123, file: !11, line: 270, baseType: !126, size: 64, align: 64, offset: 1792)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !123, file: !11, line: 272, baseType: !126, size: 64, align: 64, offset: 1856)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !123, file: !11, line: 273, baseType: !126, size: 64, align: 64, offset: 1920)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !123, file: !11, line: 274, baseType: !126, size: 64, align: 64, offset: 1984)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !123, file: !11, line: 275, baseType: !126, size: 64, align: 64, offset: 2048)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !123, file: !11, line: 277, baseType: !140, size: 64, align: 64, offset: 2112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !173, size: 64, align: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !176)
!176 = !{!177, !182, !183, !188, !189, !190, !195, !196, !201, !202}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !175, file: !11, line: 281, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!15, !9}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !175, file: !11, line: 282, baseType: !126, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !175, file: !11, line: 283, baseType: !184, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!9, !9, !15}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !175, file: !11, line: 284, baseType: !184, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !175, file: !11, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !175, file: !11, line: 286, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!8, !9, !15, !9}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !175, file: !11, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !175, file: !11, line: 288, baseType: !197, size: 64, align: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!8, !9, !9}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !175, file: !11, line: 290, baseType: !126, size: 64, align: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !175, file: !11, line: 291, baseType: !184, size: 64, align: 64, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !204, size: 64, align: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !206, file: !11, line: 295, baseType: !178, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !206, file: !11, line: 296, baseType: !126, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !206, file: !11, line: 297, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!8, !9, !9, !9}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !216, size: 64, align: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !9}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !135, size: 64, align: 64, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !116, size: 64, align: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !224, size: 64, align: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !127)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !226, size: 64, align: 64, offset: 1216)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !212)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !228, size: 64, align: 64, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !231)
!231 = !{!232, !253}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !230, file: !11, line: 302, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!8, !9, !237, !8}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !250, !251, !252}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !239, file: !11, line: 179, baseType: !4, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !239, file: !11, line: 180, baseType: !9, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !239, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !239, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !239, file: !11, line: 184, baseType: !8, size: 32, align: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !239, file: !11, line: 185, baseType: !8, size: 32, align: 32, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !239, file: !11, line: 186, baseType: !55, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !239, file: !11, line: 187, baseType: !249, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !239, file: !11, line: 188, baseType: !249, size: 64, align: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !239, file: !11, line: 189, baseType: !249, size: 64, align: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !239, file: !11, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !230, file: !11, line: 303, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !9, !237}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !98, size: 64, align: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !261, size: 64, align: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!8, !9, !265, !4}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!8, !9, !4}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !144, size: 64, align: 64, offset: 1536)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !271, size: 64, align: 64, offset: 1600)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!9, !9, !9, !8}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !277, size: 64, align: 64, offset: 1728)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !117)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !279, size: 64, align: 64, offset: 1792)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !117)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !281, size: 64, align: 64, offset: 1856)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !283, line: 40, size: 256, align: 64, elements: !284)
!283 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!284 = !{!285, !286, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !282, file: !283, line: 41, baseType: !33, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !282, file: !283, line: 42, baseType: !287, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !283, line: 18, baseType: !127)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !282, file: !283, line: 43, baseType: !8, size: 32, align: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !282, file: !283, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !291, size: 64, align: 64, offset: 1920)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !11, line: 390, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !294, size: 64, align: 64, offset: 1984)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !296, line: 11, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!297 = !{!298, !299, !304, !309, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 12, baseType: !55, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !295, file: !296, line: 13, baseType: !300, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !296, line: 8, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!9, !9, !4}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !295, file: !296, line: 14, baseType: !305, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !296, line: 9, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!8, !9, !9, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 15, baseType: !55, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !295, file: !296, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !9, size: 64, align: 64, offset: 2112)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !314, size: 64, align: 64, offset: 2176)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !136)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !316, size: 64, align: 64, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !212)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !319, size: 64, align: 64, offset: 2368)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !212)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !321, size: 64, align: 64, offset: 2432)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!9, !23, !15}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !326, size: 64, align: 64, offset: 2496)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!9, !23, !9, !9}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !331, size: 64, align: 64, offset: 2560)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !4}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !144, size: 64, align: 64, offset: 2624)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !9, size: 64, align: 64, offset: 2688)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !9, size: 64, align: 64, offset: 2752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !9, size: 64, align: 64, offset: 2816)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !9, size: 64, align: 64, offset: 2880)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !9, size: 64, align: 64, offset: 2944)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !343, size: 32, align: 32, offset: 3072)
!343 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!345 = !{!346, !357, !360, !361, !362, !363, !415, !423, !465, !471, !478, !482, !509, !522, !526, !529, !553}
!346 = !DISubprogram(name: "Py_SetPath", scope: !347, file: !347, line: 824, type: !348, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @Py_SetPath, variables: !352)
!347 = !DIFile(filename: "./Modules/getpath.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!352 = !{!353, !354}
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !346, file: !347, line: 824, type: !350)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prog", scope: !355, file: !347, line: 832, type: !5)
!355 = distinct !DILexicalBlock(scope: !356, file: !347, line: 830, column: 29)
!356 = distinct !DILexicalBlock(scope: !346, file: !347, line: 830, column: 9)
!357 = !DISubprogram(name: "Py_GetPath", scope: !347, file: !347, line: 842, type: !358, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, function: i32* ()* @Py_GetPath, variables: !2)
!358 = !DISubroutineType(types: !359)
!359 = !{!5}
!360 = !DISubprogram(name: "Py_GetPrefix", scope: !347, file: !347, line: 850, type: !358, isLocal: false, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: true, function: i32* ()* @Py_GetPrefix, variables: !2)
!361 = !DISubprogram(name: "Py_GetExecPrefix", scope: !347, file: !347, line: 858, type: !358, isLocal: false, isDefinition: true, scopeLine: 859, flags: DIFlagPrototyped, isOptimized: true, function: i32* ()* @Py_GetExecPrefix, variables: !2)
!362 = !DISubprogram(name: "Py_GetProgramFullPath", scope: !347, file: !347, line: 866, type: !358, isLocal: false, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, function: i32* ()* @Py_GetProgramFullPath, variables: !2)
!363 = !DISubprogram(name: "calculate_path", scope: !347, file: !347, line: 459, type: !364, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @calculate_path, variables: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{null}
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !394, !397, !399, !400, !402, !403, !404, !407, !409, !411, !414}
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_rtpypath", scope: !363, file: !347, line: 465, type: !55)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rtpypath", scope: !363, file: !347, line: 466, type: !5)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "home", scope: !363, file: !347, line: 467, type: !5)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_path", scope: !363, file: !347, line: 468, type: !55)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_buffer", scope: !363, file: !347, line: 469, type: !5)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !363, file: !347, line: 470, type: !5)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prog", scope: !363, file: !347, line: 471, type: !5)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv0_path", scope: !363, file: !347, line: 472, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131104, align: 32, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 4097)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zip_path", scope: !363, file: !347, line: 473, type: !375)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfound", scope: !363, file: !347, line: 474, type: !8)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "efound", scope: !363, file: !347, line: 474, type: !8)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !363, file: !347, line: 475, type: !5)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsz", scope: !363, file: !347, line: 476, type: !97)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prefixsz", scope: !363, file: !347, line: 477, type: !97)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defpath", scope: !363, file: !347, line: 478, type: !5)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_pythonpath", scope: !363, file: !347, line: 491, type: !5)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_prefix", scope: !363, file: !347, line: 491, type: !5)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_exec_prefix", scope: !363, file: !347, line: 491, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lib_python", scope: !363, file: !347, line: 492, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delim", scope: !390, file: !347, line: 538, type: !5)
!390 = distinct !DILexicalBlock(scope: !391, file: !347, line: 537, column: 19)
!391 = distinct !DILexicalBlock(scope: !392, file: !347, line: 536, column: 20)
!392 = distinct !DILexicalBlock(scope: !393, file: !347, line: 536, column: 14)
!393 = distinct !DILexicalBlock(scope: !363, file: !347, line: 515, column: 9)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !395, file: !347, line: 541, type: !97)
!395 = distinct !DILexicalBlock(scope: !396, file: !347, line: 540, column: 24)
!396 = distinct !DILexicalBlock(scope: !390, file: !347, line: 540, column: 17)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpbuffer", scope: !398, file: !347, line: 611, type: !375)
!398 = distinct !DILexicalBlock(scope: !363, file: !347, line: 610, column: 5)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linklen", scope: !398, file: !347, line: 612, type: !8)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpbuffer", scope: !401, file: !347, line: 639, type: !375)
!401 = distinct !DILexicalBlock(scope: !363, file: !347, line: 638, column: 5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "env_cfg", scope: !401, file: !347, line: 640, type: !5)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "env_file", scope: !401, file: !347, line: 641, type: !48)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rtpypath_len", scope: !405, file: !347, line: 711, type: !97)
!405 = distinct !DILexicalBlock(scope: !406, file: !347, line: 710, column: 44)
!406 = distinct !DILexicalBlock(scope: !363, file: !347, line: 710, column: 9)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delim", scope: !408, file: !347, line: 720, type: !5)
!408 = distinct !DILexicalBlock(scope: !363, file: !347, line: 719, column: 15)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delim", scope: !410, file: !347, line: 761, type: !5)
!410 = distinct !DILexicalBlock(scope: !363, file: !347, line: 760, column: 15)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !412, file: !347, line: 769, type: !97)
!412 = distinct !DILexicalBlock(scope: !413, file: !347, line: 768, column: 20)
!413 = distinct !DILexicalBlock(scope: !410, file: !347, line: 768, column: 13)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !412, file: !347, line: 770, type: !97)
!415 = !DISubprogram(name: "joinpath", scope: !347, file: !347, line: 207, type: !416, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @joinpath, variables: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !5, !5}
!418 = !{!419, !420, !421, !422}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 1, scope: !415, file: !347, line: 207, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stuff", arg: 2, scope: !415, file: !347, line: 207, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !415, file: !347, line: 209, type: !97)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !415, file: !347, line: 209, type: !97)
!423 = !DISubprogram(name: "isxfile", scope: !347, file: !347, line: 172, type: !424, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @isxfile, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!8, !5}
!426 = !{!427, !428}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !423, file: !347, line: 172, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !423, file: !347, line: 174, type: !429)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !430, line: 46, size: 1152, align: 64, elements: !431)
!430 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!431 = !{!432, !434, !436, !438, !440, !442, !444, !445, !446, !447, !449, !451, !459, !460, !461}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !429, file: !430, line: 48, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 133, baseType: !98)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !429, file: !430, line: 53, baseType: !435, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 136, baseType: !98)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !429, file: !430, line: 61, baseType: !437, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 139, baseType: !98)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !429, file: !430, line: 62, baseType: !439, size: 32, align: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 138, baseType: !343)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !429, file: !430, line: 64, baseType: !441, size: 32, align: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 134, baseType: !343)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !429, file: !430, line: 65, baseType: !443, size: 32, align: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 135, baseType: !343)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !429, file: !430, line: 67, baseType: !8, size: 32, align: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !429, file: !430, line: 69, baseType: !433, size: 64, align: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !429, file: !430, line: 74, baseType: !78, size: 64, align: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !429, file: !430, line: 78, baseType: !448, size: 64, align: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 162, baseType: !21)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !429, file: !430, line: 80, baseType: !450, size: 64, align: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 167, baseType: !21)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !429, file: !430, line: 91, baseType: !452, size: 128, align: 64, offset: 576)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !453, line: 120, size: 128, align: 64, elements: !454)
!453 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!454 = !{!455, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !452, file: !453, line: 122, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 148, baseType: !21)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !452, file: !453, line: 123, baseType: !458, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 184, baseType: !21)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !429, file: !430, line: 92, baseType: !452, size: 128, align: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !429, file: !430, line: 93, baseType: !452, size: 128, align: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !429, file: !430, line: 106, baseType: !462, size: 192, align: 64, offset: 960)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 192, align: 64, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DISubprogram(name: "absolutize", scope: !347, file: !347, line: 247, type: !466, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @absolutize, variables: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !5}
!468 = !{!469, !470}
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !465, file: !347, line: 247, type: !5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !465, file: !347, line: 249, type: !375)
!471 = !DISubprogram(name: "copy_absolute", scope: !347, file: !347, line: 229, type: !472, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i64)* @copy_absolute, variables: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !5, !5, !97}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !471, file: !347, line: 229, type: !5)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !471, file: !347, line: 229, type: !5)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathlen", arg: 3, scope: !471, file: !347, line: 229, type: !97)
!478 = !DISubprogram(name: "reduce", scope: !347, file: !347, line: 135, type: !466, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @reduce, variables: !479)
!479 = !{!480, !481}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !478, file: !347, line: 135, type: !5)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !478, file: !347, line: 137, type: !97)
!482 = !DISubprogram(name: "find_env_config_value", scope: !347, file: !347, line: 263, type: !483, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IO_FILE*, i32*, i32*)* @find_env_config_value, variables: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!8, !48, !350, !5}
!485 = !{!486, !487, !488, !489, !490, !494, !496, !498, !499, !500, !503, !504, !506}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "env_file", arg: 1, scope: !482, file: !347, line: 263, type: !48)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !482, file: !347, line: 263, type: !350)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !482, file: !347, line: 263, type: !5)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !482, file: !347, line: 265, type: !8)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !482, file: !347, line: 266, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 65544, align: 8, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 8193)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !495, file: !347, line: 270, type: !55)
!495 = distinct !DILexicalBlock(scope: !482, file: !347, line: 269, column: 29)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpbuffer", scope: !495, file: !347, line: 271, type: !497)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 262176, align: 32, elements: !492)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !495, file: !347, line: 272, type: !9)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !495, file: !347, line: 273, type: !8)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !501, file: !347, line: 286, type: !15)
!501 = distinct !DILexicalBlock(scope: !502, file: !347, line: 285, column: 36)
!502 = distinct !DILexicalBlock(scope: !495, file: !347, line: 285, column: 13)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !501, file: !347, line: 287, type: !5)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !505, file: !347, line: 290, type: !9)
!505 = distinct !DILexicalBlock(scope: !501, file: !347, line: 290, column: 16)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !507, file: !347, line: 292, type: !5)
!507 = distinct !DILexicalBlock(scope: !508, file: !347, line: 291, column: 25)
!508 = distinct !DILexicalBlock(scope: !501, file: !347, line: 291, column: 17)
!509 = !DISubprogram(name: "search_for_prefix", scope: !347, file: !347, line: 314, type: !510, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i32*, i32*)* @search_for_prefix, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!8, !5, !5, !5, !5}
!512 = !{!513, !514, !515, !516, !517, !518, !519}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv0_path", arg: 1, scope: !509, file: !347, line: 314, type: !5)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "home", arg: 2, scope: !509, file: !347, line: 314, type: !5)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_prefix", arg: 3, scope: !509, file: !347, line: 314, type: !5)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lib_python", arg: 4, scope: !509, file: !347, line: 315, type: !5)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !509, file: !347, line: 317, type: !97)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vpath", scope: !509, file: !347, line: 318, type: !5)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delim", scope: !520, file: !347, line: 322, type: !5)
!520 = distinct !DILexicalBlock(scope: !521, file: !347, line: 321, column: 15)
!521 = distinct !DILexicalBlock(scope: !509, file: !347, line: 321, column: 9)
!522 = !DISubprogram(name: "isfile", scope: !347, file: !347, line: 144, type: !424, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @isfile, variables: !523)
!523 = !{!524, !525}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !522, file: !347, line: 144, type: !5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !522, file: !347, line: 146, type: !429)
!526 = !DISubprogram(name: "ismodule", scope: !347, file: !347, line: 156, type: !424, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @ismodule, variables: !527)
!527 = !{!528}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !526, file: !347, line: 156, type: !5)
!529 = !DISubprogram(name: "search_for_exec_prefix", scope: !347, file: !347, line: 381, type: !510, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i32*, i32*)* @search_for_exec_prefix, variables: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !539, !542, !546, !547, !548, !551}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv0_path", arg: 1, scope: !529, file: !347, line: 381, type: !5)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "home", arg: 2, scope: !529, file: !347, line: 381, type: !5)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_exec_prefix", arg: 3, scope: !529, file: !347, line: 382, type: !5)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lib_python", arg: 4, scope: !529, file: !347, line: 382, type: !5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !529, file: !347, line: 384, type: !97)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delim", scope: !537, file: !347, line: 388, type: !5)
!537 = distinct !DILexicalBlock(scope: !538, file: !347, line: 387, column: 15)
!538 = distinct !DILexicalBlock(scope: !529, file: !347, line: 387, column: 9)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !540, file: !347, line: 407, type: !48)
!540 = distinct !DILexicalBlock(scope: !541, file: !347, line: 406, column: 30)
!541 = distinct !DILexicalBlock(scope: !529, file: !347, line: 406, column: 9)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !543, file: !347, line: 411, type: !545)
!543 = distinct !DILexicalBlock(scope: !544, file: !347, line: 410, column: 14)
!544 = distinct !DILexicalBlock(scope: !540, file: !347, line: 408, column: 13)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32776, align: 8, elements: !376)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !543, file: !347, line: 412, type: !9)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rel_builddir_path", scope: !543, file: !347, line: 413, type: !375)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !549, file: !347, line: 419, type: !15)
!549 = distinct !DILexicalBlock(scope: !550, file: !347, line: 418, column: 40)
!550 = distinct !DILexicalBlock(scope: !543, file: !347, line: 418, column: 17)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !552, file: !347, line: 422, type: !9)
!552 = distinct !DILexicalBlock(scope: !549, file: !347, line: 422, column: 20)
!553 = !DISubprogram(name: "isdir", scope: !347, file: !347, line: 186, type: !424, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @isdir, variables: !554)
!554 = !{!555, !556}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !553, file: !347, line: 186, type: !5)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !553, file: !347, line: 188, type: !429)
!557 = !{!558, !559, !560, !561, !562, !566}
!558 = !DIGlobalVariable(name: "prefix", scope: !0, file: !347, line: 129, type: !375, isLocal: true, isDefinition: true, variable: [4097 x i32]* @prefix)
!559 = !DIGlobalVariable(name: "exec_prefix", scope: !0, file: !347, line: 130, type: !375, isLocal: true, isDefinition: true, variable: [4097 x i32]* @exec_prefix)
!560 = !DIGlobalVariable(name: "progpath", scope: !0, file: !347, line: 131, type: !375, isLocal: true, isDefinition: true, variable: [4097 x i32]* @progpath)
!561 = !DIGlobalVariable(name: "module_search_path", scope: !0, file: !347, line: 132, type: !5, isLocal: true, isDefinition: true, variable: i32** @module_search_path)
!562 = !DIGlobalVariable(name: "delimiter", scope: !363, file: !347, line: 463, type: !563, isLocal: true, isDefinition: true, variable: [2 x i32]* @calculate_path.delimiter)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, align: 32, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 2)
!566 = !DIGlobalVariable(name: "separator", scope: !363, file: !347, line: 464, type: !563, isLocal: true, isDefinition: true, variable: [2 x i32]* @calculate_path.separator)
!567 = !{i32 2, !"Dwarf Version", i32 4}
!568 = !{i32 2, !"Debug Info Version", i32 3}
!569 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!570 = !{!571, !571, i64 0}
!571 = !{!"any pointer", !572, i64 0}
!572 = !{!"omnipotent char", !573, i64 0}
!573 = !{!"Simple C/C++ TBAA"}
!574 = !DIExpression()
!575 = !DILocation(line: 824, column: 27, scope: !346)
!576 = !DILocation(line: 826, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !346, file: !347, line: 826, column: 9)
!578 = !DILocation(line: 826, column: 28, scope: !577)
!579 = !DILocation(line: 826, column: 9, scope: !346)
!580 = !DILocation(line: 827, column: 23, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !347, line: 826, column: 43)
!582 = !DILocation(line: 827, column: 9, scope: !581)
!583 = !DILocation(line: 828, column: 28, scope: !581)
!584 = !DILocation(line: 829, column: 5, scope: !581)
!585 = !DILocation(line: 830, column: 9, scope: !356)
!586 = !DILocation(line: 830, column: 14, scope: !356)
!587 = !DILocation(line: 830, column: 9, scope: !346)
!588 = !DILocation(line: 832, column: 9, scope: !355)
!589 = !DILocation(line: 832, column: 18, scope: !355)
!590 = !DILocation(line: 832, column: 25, scope: !355)
!591 = !DILocation(line: 833, column: 27, scope: !355)
!592 = !DILocation(line: 833, column: 9, scope: !355)
!593 = !DILocation(line: 834, column: 36, scope: !355)
!594 = !{!595, !595, i64 0}
!595 = !{!"int", !572, i64 0}
!596 = !DILocation(line: 834, column: 24, scope: !355)
!597 = !DILocation(line: 835, column: 54, scope: !355)
!598 = !DILocation(line: 835, column: 47, scope: !355)
!599 = !DILocation(line: 835, column: 60, scope: !355)
!600 = !DILocation(line: 835, column: 65, scope: !355)
!601 = !DILocation(line: 835, column: 30, scope: !355)
!602 = !DILocation(line: 835, column: 28, scope: !355)
!603 = !DILocation(line: 836, column: 13, scope: !604)
!604 = distinct !DILexicalBlock(scope: !355, file: !347, line: 836, column: 13)
!605 = !DILocation(line: 836, column: 32, scope: !604)
!606 = !DILocation(line: 836, column: 13, scope: !355)
!607 = !DILocation(line: 837, column: 20, scope: !604)
!608 = !DILocation(line: 837, column: 40, scope: !604)
!609 = !DILocation(line: 837, column: 13, scope: !604)
!610 = !DILocation(line: 838, column: 5, scope: !356)
!611 = !DILocation(line: 838, column: 5, scope: !355)
!612 = !DILocation(line: 839, column: 1, scope: !346)
!613 = !DILocation(line: 844, column: 10, scope: !614)
!614 = distinct !DILexicalBlock(scope: !357, file: !347, line: 844, column: 9)
!615 = !DILocation(line: 844, column: 9, scope: !357)
!616 = !DILocation(line: 845, column: 9, scope: !614)
!617 = !DILocation(line: 846, column: 12, scope: !357)
!618 = !DILocation(line: 846, column: 5, scope: !357)
!619 = !DILocation(line: 465, column: 5, scope: !363)
!620 = !DILocation(line: 465, column: 11, scope: !363)
!621 = !DILocation(line: 465, column: 24, scope: !363)
!622 = !DILocation(line: 465, column: 24, scope: !623)
!623 = !DILexicalBlockFile(scope: !363, file: !347, discriminator: 1)
!624 = !DILocation(line: 465, column: 64, scope: !625)
!625 = !DILexicalBlockFile(scope: !363, file: !347, discriminator: 2)
!626 = !DILocation(line: 465, column: 11, scope: !627)
!627 = !DILexicalBlockFile(scope: !628, file: !347, discriminator: 4)
!628 = !DILexicalBlockFile(scope: !363, file: !347, discriminator: 3)
!629 = !DILocation(line: 466, column: 5, scope: !363)
!630 = !DILocation(line: 466, column: 14, scope: !363)
!631 = !DILocation(line: 467, column: 5, scope: !363)
!632 = !DILocation(line: 467, column: 14, scope: !363)
!633 = !DILocation(line: 467, column: 21, scope: !363)
!634 = !DILocation(line: 468, column: 5, scope: !363)
!635 = !DILocation(line: 468, column: 11, scope: !363)
!636 = !DILocation(line: 468, column: 19, scope: !363)
!637 = !DILocation(line: 469, column: 5, scope: !363)
!638 = !DILocation(line: 469, column: 14, scope: !363)
!639 = !DILocation(line: 470, column: 5, scope: !363)
!640 = !DILocation(line: 470, column: 14, scope: !363)
!641 = !DILocation(line: 471, column: 5, scope: !363)
!642 = !DILocation(line: 471, column: 14, scope: !363)
!643 = !DILocation(line: 471, column: 21, scope: !363)
!644 = !DILocation(line: 472, column: 5, scope: !363)
!645 = !DILocation(line: 472, column: 13, scope: !363)
!646 = !DILocation(line: 473, column: 5, scope: !363)
!647 = !DILocation(line: 473, column: 13, scope: !363)
!648 = !DILocation(line: 474, column: 5, scope: !363)
!649 = !DILocation(line: 474, column: 9, scope: !363)
!650 = !DILocation(line: 474, column: 17, scope: !363)
!651 = !DILocation(line: 475, column: 5, scope: !363)
!652 = !DILocation(line: 475, column: 14, scope: !363)
!653 = !DILocation(line: 476, column: 5, scope: !363)
!654 = !DILocation(line: 476, column: 12, scope: !363)
!655 = !DILocation(line: 477, column: 5, scope: !363)
!656 = !DILocation(line: 477, column: 12, scope: !363)
!657 = !DILocation(line: 478, column: 5, scope: !363)
!658 = !DILocation(line: 478, column: 14, scope: !363)
!659 = !DILocation(line: 491, column: 5, scope: !363)
!660 = !DILocation(line: 491, column: 14, scope: !363)
!661 = !DILocation(line: 491, column: 28, scope: !363)
!662 = !DILocation(line: 491, column: 38, scope: !363)
!663 = !DILocation(line: 492, column: 5, scope: !363)
!664 = !DILocation(line: 492, column: 14, scope: !363)
!665 = !DILocation(line: 494, column: 19, scope: !363)
!666 = !DILocation(line: 494, column: 17, scope: !363)
!667 = !DILocation(line: 495, column: 15, scope: !363)
!668 = !DILocation(line: 495, column: 13, scope: !363)
!669 = !DILocation(line: 496, column: 20, scope: !363)
!670 = !DILocation(line: 496, column: 18, scope: !363)
!671 = !DILocation(line: 497, column: 18, scope: !363)
!672 = !DILocation(line: 497, column: 16, scope: !363)
!673 = !DILocation(line: 499, column: 10, scope: !674)
!674 = distinct !DILexicalBlock(scope: !363, file: !347, line: 499, column: 9)
!675 = !DILocation(line: 499, column: 22, scope: !674)
!676 = !DILocation(line: 499, column: 26, scope: !677)
!677 = !DILexicalBlockFile(scope: !674, file: !347, discriminator: 1)
!678 = !DILocation(line: 499, column: 34, scope: !674)
!679 = !DILocation(line: 499, column: 38, scope: !680)
!680 = !DILexicalBlockFile(scope: !674, file: !347, discriminator: 2)
!681 = !DILocation(line: 499, column: 51, scope: !674)
!682 = !DILocation(line: 499, column: 55, scope: !683)
!683 = !DILexicalBlockFile(scope: !674, file: !347, discriminator: 3)
!684 = !DILocation(line: 499, column: 9, scope: !363)
!685 = !DILocation(line: 500, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !674, file: !347, line: 499, column: 67)
!687 = !DILocation(line: 505, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !363, file: !347, line: 505, column: 9)
!689 = !DILocation(line: 505, column: 9, scope: !363)
!690 = !DILocation(line: 506, column: 38, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !347, line: 505, column: 16)
!692 = !DILocation(line: 506, column: 23, scope: !691)
!693 = !DILocation(line: 506, column: 21, scope: !691)
!694 = !DILocation(line: 507, column: 16, scope: !691)
!695 = !DILocation(line: 507, column: 14, scope: !691)
!696 = !DILocation(line: 508, column: 5, scope: !691)
!697 = !DILocation(line: 515, column: 16, scope: !393)
!698 = !DILocation(line: 515, column: 9, scope: !393)
!699 = !DILocation(line: 515, column: 9, scope: !363)
!700 = !DILocation(line: 516, column: 27, scope: !393)
!701 = !DILocation(line: 516, column: 9, scope: !393)
!702 = !DILocation(line: 536, column: 14, scope: !392)
!703 = !DILocation(line: 536, column: 14, scope: !393)
!704 = !DILocation(line: 537, column: 9, scope: !391)
!705 = !DILocation(line: 537, column: 9, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !347, discriminator: 2)
!707 = !DILexicalBlockFile(scope: !391, file: !347, discriminator: 1)
!708 = !DILocation(line: 538, column: 13, scope: !390)
!709 = !DILocation(line: 538, column: 22, scope: !390)
!710 = !DILocation(line: 538, column: 37, scope: !390)
!711 = !DILocation(line: 538, column: 30, scope: !390)
!712 = !DILocation(line: 540, column: 17, scope: !396)
!713 = !DILocation(line: 540, column: 17, scope: !390)
!714 = !DILocation(line: 541, column: 17, scope: !395)
!715 = !DILocation(line: 541, column: 24, scope: !395)
!716 = !DILocation(line: 541, column: 30, scope: !395)
!717 = !DILocation(line: 541, column: 38, scope: !395)
!718 = !DILocation(line: 541, column: 36, scope: !395)
!719 = !{!720, !720, i64 0}
!720 = !{!"long", !572, i64 0}
!721 = !DILocation(line: 542, column: 21, scope: !722)
!722 = distinct !DILexicalBlock(scope: !395, file: !347, line: 542, column: 21)
!723 = !DILocation(line: 542, column: 25, scope: !722)
!724 = !DILocation(line: 542, column: 21, scope: !395)
!725 = !DILocation(line: 543, column: 25, scope: !722)
!726 = !DILocation(line: 543, column: 21, scope: !722)
!727 = !DILocation(line: 544, column: 35, scope: !395)
!728 = !DILocation(line: 544, column: 41, scope: !395)
!729 = !DILocation(line: 544, column: 17, scope: !395)
!730 = !DILocation(line: 545, column: 30, scope: !395)
!731 = !DILocation(line: 545, column: 28, scope: !395)
!732 = !DILocation(line: 545, column: 35, scope: !395)
!733 = !DILocation(line: 546, column: 13, scope: !396)
!734 = !DILocation(line: 546, column: 13, scope: !395)
!735 = !DILocation(line: 548, column: 35, scope: !396)
!736 = !DILocation(line: 548, column: 17, scope: !396)
!737 = !DILocation(line: 550, column: 32, scope: !390)
!738 = !DILocation(line: 550, column: 13, scope: !390)
!739 = !DILocation(line: 551, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !390, file: !347, line: 551, column: 17)
!741 = !DILocation(line: 551, column: 17, scope: !390)
!742 = !DILocation(line: 552, column: 17, scope: !740)
!743 = !DILocation(line: 554, column: 18, scope: !744)
!744 = distinct !DILexicalBlock(scope: !390, file: !347, line: 554, column: 17)
!745 = !DILocation(line: 554, column: 17, scope: !390)
!746 = !DILocation(line: 555, column: 29, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !347, line: 554, column: 25)
!748 = !DILocation(line: 556, column: 17, scope: !747)
!749 = !DILocation(line: 558, column: 20, scope: !390)
!750 = !DILocation(line: 558, column: 26, scope: !390)
!751 = !DILocation(line: 558, column: 18, scope: !390)
!752 = !DILocation(line: 559, column: 9, scope: !391)
!753 = !DILocation(line: 559, column: 9, scope: !707)
!754 = !DILocation(line: 560, column: 5, scope: !391)
!755 = !DILocation(line: 562, column: 21, scope: !392)
!756 = !DILocation(line: 563, column: 19, scope: !363)
!757 = !DILocation(line: 563, column: 5, scope: !363)
!758 = !DILocation(line: 564, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !363, file: !347, line: 564, column: 9)
!760 = !DILocation(line: 564, column: 21, scope: !759)
!761 = !DILocation(line: 564, column: 29, scope: !759)
!762 = !DILocation(line: 564, column: 32, scope: !763)
!763 = !DILexicalBlockFile(scope: !759, file: !347, discriminator: 1)
!764 = !DILocation(line: 564, column: 44, scope: !759)
!765 = !DILocation(line: 564, column: 9, scope: !363)
!766 = !DILocation(line: 565, column: 9, scope: !759)
!767 = !DILocation(line: 566, column: 13, scope: !363)
!768 = !DILocation(line: 566, column: 5, scope: !363)
!769 = !DILocation(line: 567, column: 5, scope: !363)
!770 = !DILocation(line: 567, column: 22, scope: !363)
!771 = !DILocation(line: 611, column: 9, scope: !398)
!772 = !DILocation(line: 611, column: 17, scope: !398)
!773 = !DILocation(line: 612, column: 9, scope: !398)
!774 = !DILocation(line: 612, column: 13, scope: !398)
!775 = !DILocation(line: 612, column: 47, scope: !398)
!776 = !DILocation(line: 612, column: 23, scope: !398)
!777 = !DILocation(line: 613, column: 9, scope: !398)
!778 = !DILocation(line: 613, column: 16, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !347, discriminator: 2)
!780 = !DILexicalBlockFile(scope: !398, file: !347, discriminator: 1)
!781 = !DILocation(line: 613, column: 24, scope: !398)
!782 = !DILocation(line: 614, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !347, line: 614, column: 17)
!784 = distinct !DILexicalBlock(scope: !398, file: !347, line: 613, column: 31)
!785 = !DILocation(line: 614, column: 30, scope: !783)
!786 = !DILocation(line: 614, column: 17, scope: !784)
!787 = !DILocation(line: 617, column: 25, scope: !783)
!788 = !DILocation(line: 617, column: 37, scope: !783)
!789 = !DILocation(line: 617, column: 17, scope: !783)
!790 = !DILocation(line: 620, column: 24, scope: !791)
!791 = distinct !DILexicalBlock(scope: !783, file: !347, line: 618, column: 18)
!792 = !DILocation(line: 620, column: 17, scope: !791)
!793 = !DILocation(line: 621, column: 26, scope: !791)
!794 = !DILocation(line: 621, column: 38, scope: !791)
!795 = !DILocation(line: 621, column: 17, scope: !791)
!796 = !DILocation(line: 623, column: 37, scope: !784)
!797 = !DILocation(line: 623, column: 49, scope: !784)
!798 = !DILocation(line: 623, column: 23, scope: !784)
!799 = !DILocation(line: 623, column: 21, scope: !784)
!800 = !DILocation(line: 625, column: 5, scope: !363)
!801 = !DILocation(line: 628, column: 12, scope: !363)
!802 = !DILocation(line: 628, column: 5, scope: !363)
!803 = !DILocation(line: 639, column: 9, scope: !401)
!804 = !DILocation(line: 639, column: 17, scope: !401)
!805 = !DILocation(line: 640, column: 9, scope: !401)
!806 = !DILocation(line: 640, column: 18, scope: !401)
!807 = !DILocation(line: 641, column: 9, scope: !401)
!808 = !DILocation(line: 641, column: 16, scope: !401)
!809 = !DILocation(line: 643, column: 16, scope: !401)
!810 = !DILocation(line: 643, column: 27, scope: !401)
!811 = !DILocation(line: 643, column: 9, scope: !401)
!812 = !DILocation(line: 645, column: 18, scope: !401)
!813 = !DILocation(line: 645, column: 29, scope: !401)
!814 = !DILocation(line: 645, column: 9, scope: !401)
!815 = !DILocation(line: 646, column: 31, scope: !401)
!816 = !DILocation(line: 646, column: 20, scope: !401)
!817 = !DILocation(line: 646, column: 18, scope: !401)
!818 = !DILocation(line: 647, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !401, file: !347, line: 647, column: 13)
!820 = !DILocation(line: 647, column: 22, scope: !819)
!821 = !DILocation(line: 647, column: 13, scope: !401)
!822 = !DILocation(line: 648, column: 15, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !347, line: 647, column: 37)
!824 = !DILocation(line: 648, column: 36, scope: !823)
!825 = !DILocation(line: 649, column: 20, scope: !823)
!826 = !DILocation(line: 649, column: 13, scope: !823)
!827 = !DILocation(line: 650, column: 20, scope: !823)
!828 = !DILocation(line: 650, column: 13, scope: !823)
!829 = !DILocation(line: 651, column: 22, scope: !823)
!830 = !DILocation(line: 651, column: 33, scope: !823)
!831 = !DILocation(line: 651, column: 13, scope: !823)
!832 = !DILocation(line: 652, column: 35, scope: !823)
!833 = !DILocation(line: 652, column: 24, scope: !823)
!834 = !DILocation(line: 652, column: 22, scope: !823)
!835 = !DILocation(line: 653, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !823, file: !347, line: 653, column: 17)
!837 = !DILocation(line: 653, column: 26, scope: !836)
!838 = !DILocation(line: 653, column: 17, scope: !823)
!839 = !DILocation(line: 654, column: 19, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !347, line: 653, column: 41)
!841 = !DILocation(line: 654, column: 40, scope: !840)
!842 = !DILocation(line: 655, column: 13, scope: !840)
!843 = !DILocation(line: 656, column: 9, scope: !823)
!844 = !DILocation(line: 657, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !401, file: !347, line: 657, column: 13)
!846 = !DILocation(line: 657, column: 22, scope: !845)
!847 = !DILocation(line: 657, column: 13, scope: !401)
!848 = !DILocation(line: 659, column: 39, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !347, line: 659, column: 17)
!850 = distinct !DILexicalBlock(scope: !845, file: !347, line: 657, column: 37)
!851 = !DILocation(line: 659, column: 58, scope: !849)
!852 = !DILocation(line: 659, column: 17, scope: !849)
!853 = !DILocation(line: 659, column: 17, scope: !850)
!854 = !DILocation(line: 660, column: 24, scope: !855)
!855 = distinct !DILexicalBlock(scope: !849, file: !347, line: 659, column: 70)
!856 = !DILocation(line: 660, column: 36, scope: !855)
!857 = !DILocation(line: 660, column: 17, scope: !855)
!858 = !DILocation(line: 661, column: 13, scope: !855)
!859 = !DILocation(line: 662, column: 20, scope: !850)
!860 = !DILocation(line: 662, column: 13, scope: !850)
!861 = !DILocation(line: 663, column: 22, scope: !850)
!862 = !DILocation(line: 664, column: 9, scope: !850)
!863 = !DILocation(line: 665, column: 5, scope: !363)
!864 = !DILocation(line: 667, column: 32, scope: !363)
!865 = !DILocation(line: 667, column: 44, scope: !363)
!866 = !DILocation(line: 667, column: 50, scope: !363)
!867 = !DILocation(line: 667, column: 59, scope: !363)
!868 = !DILocation(line: 667, column: 14, scope: !363)
!869 = !DILocation(line: 667, column: 12, scope: !363)
!870 = !DILocation(line: 668, column: 10, scope: !871)
!871 = distinct !DILexicalBlock(scope: !363, file: !347, line: 668, column: 9)
!872 = !DILocation(line: 668, column: 9, scope: !363)
!873 = !DILocation(line: 669, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !347, line: 669, column: 13)
!875 = distinct !DILexicalBlock(scope: !871, file: !347, line: 668, column: 18)
!876 = !DILocation(line: 669, column: 13, scope: !875)
!877 = !DILocation(line: 670, column: 21, scope: !874)
!878 = !DILocation(line: 670, column: 13, scope: !874)
!879 = !DILocation(line: 672, column: 25, scope: !875)
!880 = !DILocation(line: 672, column: 9, scope: !875)
!881 = !DILocation(line: 673, column: 26, scope: !875)
!882 = !DILocation(line: 673, column: 9, scope: !875)
!883 = !DILocation(line: 674, column: 5, scope: !875)
!884 = !DILocation(line: 676, column: 9, scope: !871)
!885 = !DILocation(line: 678, column: 13, scope: !363)
!886 = !DILocation(line: 678, column: 5, scope: !363)
!887 = !DILocation(line: 679, column: 5, scope: !363)
!888 = !DILocation(line: 679, column: 20, scope: !363)
!889 = !DILocation(line: 680, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !363, file: !347, line: 680, column: 9)
!891 = !DILocation(line: 680, column: 16, scope: !890)
!892 = !DILocation(line: 680, column: 9, scope: !363)
!893 = !DILocation(line: 681, column: 16, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !347, line: 680, column: 21)
!895 = !DILocation(line: 681, column: 9, scope: !894)
!896 = !DILocation(line: 682, column: 16, scope: !894)
!897 = !DILocation(line: 682, column: 9, scope: !894)
!898 = !DILocation(line: 683, column: 5, scope: !894)
!899 = !DILocation(line: 685, column: 17, scope: !890)
!900 = !DILocation(line: 685, column: 27, scope: !890)
!901 = !DILocation(line: 685, column: 9, scope: !890)
!902 = !DILocation(line: 686, column: 14, scope: !363)
!903 = !DILocation(line: 686, column: 5, scope: !363)
!904 = !DILocation(line: 687, column: 20, scope: !363)
!905 = !DILocation(line: 687, column: 13, scope: !363)
!906 = !DILocation(line: 687, column: 11, scope: !363)
!907 = !DILocation(line: 688, column: 27, scope: !363)
!908 = !{!572, !572, i64 0}
!909 = !DILocation(line: 688, column: 14, scope: !363)
!910 = !DILocation(line: 688, column: 20, scope: !363)
!911 = !DILocation(line: 688, column: 5, scope: !363)
!912 = !DILocation(line: 688, column: 25, scope: !363)
!913 = !DILocation(line: 689, column: 27, scope: !363)
!914 = !DILocation(line: 689, column: 14, scope: !363)
!915 = !DILocation(line: 689, column: 20, scope: !363)
!916 = !DILocation(line: 689, column: 5, scope: !363)
!917 = !DILocation(line: 689, column: 25, scope: !363)
!918 = !DILocation(line: 691, column: 37, scope: !363)
!919 = !DILocation(line: 691, column: 49, scope: !363)
!920 = !DILocation(line: 692, column: 37, scope: !363)
!921 = !DILocation(line: 692, column: 51, scope: !363)
!922 = !DILocation(line: 691, column: 14, scope: !363)
!923 = !DILocation(line: 691, column: 12, scope: !363)
!924 = !DILocation(line: 693, column: 10, scope: !925)
!925 = distinct !DILexicalBlock(scope: !363, file: !347, line: 693, column: 9)
!926 = !DILocation(line: 693, column: 9, scope: !363)
!927 = !DILocation(line: 694, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !347, line: 694, column: 13)
!929 = distinct !DILexicalBlock(scope: !925, file: !347, line: 693, column: 18)
!930 = !DILocation(line: 694, column: 13, scope: !929)
!931 = !DILocation(line: 695, column: 21, scope: !928)
!932 = !DILocation(line: 695, column: 13, scope: !928)
!933 = !DILocation(line: 697, column: 30, scope: !929)
!934 = !DILocation(line: 697, column: 9, scope: !929)
!935 = !DILocation(line: 698, column: 9, scope: !929)
!936 = !DILocation(line: 699, column: 5, scope: !929)
!937 = !DILocation(line: 702, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !363, file: !347, line: 702, column: 9)
!939 = !DILocation(line: 702, column: 18, scope: !938)
!940 = !DILocation(line: 702, column: 22, scope: !941)
!941 = !DILexicalBlockFile(scope: !938, file: !347, discriminator: 1)
!942 = !DILocation(line: 702, column: 30, scope: !938)
!943 = !DILocation(line: 702, column: 34, scope: !944)
!944 = !DILexicalBlockFile(scope: !945, file: !347, discriminator: 3)
!945 = !DILexicalBlockFile(scope: !938, file: !347, discriminator: 2)
!946 = !DILocation(line: 702, column: 9, scope: !363)
!947 = !DILocation(line: 703, column: 17, scope: !938)
!948 = !DILocation(line: 703, column: 9, scope: !938)
!949 = !DILocation(line: 708, column: 11, scope: !363)
!950 = !DILocation(line: 710, column: 9, scope: !406)
!951 = !DILocation(line: 710, column: 19, scope: !406)
!952 = !DILocation(line: 710, column: 22, scope: !953)
!953 = !DILexicalBlockFile(scope: !406, file: !347, discriminator: 1)
!954 = !DILocation(line: 710, column: 35, scope: !406)
!955 = !DILocation(line: 710, column: 9, scope: !363)
!956 = !DILocation(line: 711, column: 9, scope: !405)
!957 = !DILocation(line: 711, column: 16, scope: !405)
!958 = !DILocation(line: 712, column: 35, scope: !405)
!959 = !DILocation(line: 712, column: 20, scope: !405)
!960 = !DILocation(line: 712, column: 18, scope: !405)
!961 = !DILocation(line: 713, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !405, file: !347, line: 713, column: 13)
!963 = !DILocation(line: 713, column: 22, scope: !962)
!964 = !DILocation(line: 713, column: 13, scope: !405)
!965 = !DILocation(line: 714, column: 22, scope: !962)
!966 = !DILocation(line: 714, column: 35, scope: !962)
!967 = !DILocation(line: 714, column: 19, scope: !962)
!968 = !DILocation(line: 714, column: 13, scope: !962)
!969 = !DILocation(line: 715, column: 5, scope: !406)
!970 = !DILocation(line: 715, column: 5, scope: !405)
!971 = !DILocation(line: 717, column: 15, scope: !363)
!972 = !DILocation(line: 717, column: 13, scope: !363)
!973 = !DILocation(line: 718, column: 16, scope: !363)
!974 = !DILocation(line: 718, column: 31, scope: !363)
!975 = !DILocation(line: 718, column: 14, scope: !363)
!976 = !DILocation(line: 719, column: 5, scope: !363)
!977 = !DILocation(line: 719, column: 5, scope: !978)
!978 = !DILexicalBlockFile(scope: !623, file: !347, discriminator: 2)
!979 = !DILocation(line: 720, column: 9, scope: !408)
!980 = !DILocation(line: 720, column: 18, scope: !408)
!981 = !DILocation(line: 720, column: 33, scope: !408)
!982 = !DILocation(line: 720, column: 26, scope: !408)
!983 = !DILocation(line: 722, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !408, file: !347, line: 722, column: 13)
!985 = !DILocation(line: 722, column: 24, scope: !984)
!986 = !DILocation(line: 722, column: 13, scope: !408)
!987 = !DILocation(line: 724, column: 22, scope: !984)
!988 = !DILocation(line: 724, column: 19, scope: !984)
!989 = !DILocation(line: 724, column: 13, scope: !984)
!990 = !DILocation(line: 726, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !408, file: !347, line: 726, column: 13)
!992 = !DILocation(line: 726, column: 13, scope: !408)
!993 = !DILocation(line: 727, column: 22, scope: !991)
!994 = !DILocation(line: 727, column: 30, scope: !991)
!995 = !DILocation(line: 727, column: 28, scope: !991)
!996 = !DILocation(line: 727, column: 38, scope: !991)
!997 = !DILocation(line: 727, column: 19, scope: !991)
!998 = !DILocation(line: 727, column: 13, scope: !991)
!999 = !DILocation(line: 729, column: 29, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !347, line: 728, column: 14)
!1001 = !DILocation(line: 729, column: 22, scope: !1000)
!1002 = !DILocation(line: 729, column: 38, scope: !1000)
!1003 = !DILocation(line: 729, column: 19, scope: !1000)
!1004 = !DILocation(line: 730, column: 13, scope: !1000)
!1005 = !DILocation(line: 732, column: 19, scope: !408)
!1006 = !DILocation(line: 732, column: 25, scope: !408)
!1007 = !DILocation(line: 732, column: 17, scope: !408)
!1008 = !DILocation(line: 733, column: 5, scope: !363)
!1009 = !DILocation(line: 733, column: 5, scope: !623)
!1010 = !DILocation(line: 735, column: 21, scope: !363)
!1011 = !DILocation(line: 735, column: 14, scope: !363)
!1012 = !DILocation(line: 735, column: 31, scope: !363)
!1013 = !DILocation(line: 735, column: 11, scope: !363)
!1014 = !DILocation(line: 736, column: 14, scope: !363)
!1015 = !DILocation(line: 736, column: 34, scope: !363)
!1016 = !DILocation(line: 736, column: 11, scope: !363)
!1017 = !DILocation(line: 738, column: 35, scope: !363)
!1018 = !DILocation(line: 738, column: 41, scope: !363)
!1019 = !DILocation(line: 738, column: 22, scope: !363)
!1020 = !DILocation(line: 738, column: 11, scope: !363)
!1021 = !DILocation(line: 738, column: 9, scope: !363)
!1022 = !DILocation(line: 739, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !363, file: !347, line: 739, column: 9)
!1024 = !DILocation(line: 739, column: 13, scope: !1023)
!1025 = !DILocation(line: 739, column: 9, scope: !363)
!1026 = !DILocation(line: 740, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !347, line: 739, column: 28)
!1028 = !DILocation(line: 745, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !363, file: !347, line: 745, column: 9)
!1030 = !DILocation(line: 745, column: 9, scope: !363)
!1031 = !DILocation(line: 746, column: 16, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !347, line: 745, column: 19)
!1033 = !DILocation(line: 746, column: 21, scope: !1032)
!1034 = !DILocation(line: 746, column: 9, scope: !1032)
!1035 = !DILocation(line: 747, column: 16, scope: !1032)
!1036 = !DILocation(line: 747, column: 9, scope: !1032)
!1037 = !DILocation(line: 748, column: 5, scope: !1032)
!1038 = !DILocation(line: 750, column: 9, scope: !1029)
!1039 = !DILocation(line: 750, column: 16, scope: !1029)
!1040 = !DILocation(line: 753, column: 12, scope: !363)
!1041 = !DILocation(line: 753, column: 17, scope: !363)
!1042 = !DILocation(line: 753, column: 5, scope: !363)
!1043 = !DILocation(line: 754, column: 12, scope: !363)
!1044 = !DILocation(line: 754, column: 5, scope: !363)
!1045 = !DILocation(line: 759, column: 15, scope: !363)
!1046 = !DILocation(line: 759, column: 13, scope: !363)
!1047 = !DILocation(line: 760, column: 5, scope: !363)
!1048 = !DILocation(line: 760, column: 5, scope: !978)
!1049 = !DILocation(line: 761, column: 9, scope: !410)
!1050 = !DILocation(line: 761, column: 18, scope: !410)
!1051 = !DILocation(line: 761, column: 33, scope: !410)
!1052 = !DILocation(line: 761, column: 26, scope: !410)
!1053 = !DILocation(line: 763, column: 13, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !410, file: !347, line: 763, column: 13)
!1055 = !DILocation(line: 763, column: 24, scope: !1054)
!1056 = !DILocation(line: 763, column: 13, scope: !410)
!1057 = !DILocation(line: 764, column: 20, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !347, line: 763, column: 33)
!1059 = !DILocation(line: 764, column: 13, scope: !1058)
!1060 = !DILocation(line: 765, column: 20, scope: !1058)
!1061 = !DILocation(line: 765, column: 13, scope: !1058)
!1062 = !DILocation(line: 766, column: 9, scope: !1058)
!1063 = !DILocation(line: 768, column: 13, scope: !413)
!1064 = !DILocation(line: 768, column: 13, scope: !410)
!1065 = !DILocation(line: 769, column: 13, scope: !412)
!1066 = !DILocation(line: 769, column: 20, scope: !412)
!1067 = !DILocation(line: 769, column: 26, scope: !412)
!1068 = !DILocation(line: 769, column: 34, scope: !412)
!1069 = !DILocation(line: 769, column: 32, scope: !412)
!1070 = !DILocation(line: 769, column: 42, scope: !412)
!1071 = !DILocation(line: 770, column: 13, scope: !412)
!1072 = !DILocation(line: 770, column: 20, scope: !412)
!1073 = !DILocation(line: 770, column: 33, scope: !412)
!1074 = !DILocation(line: 770, column: 26, scope: !412)
!1075 = !DILocation(line: 770, column: 40, scope: !412)
!1076 = !DILocation(line: 770, column: 38, scope: !412)
!1077 = !DILocation(line: 771, column: 21, scope: !412)
!1078 = !DILocation(line: 771, column: 26, scope: !412)
!1079 = !DILocation(line: 771, column: 35, scope: !412)
!1080 = !DILocation(line: 771, column: 13, scope: !412)
!1081 = !DILocation(line: 772, column: 15, scope: !412)
!1082 = !DILocation(line: 772, column: 21, scope: !412)
!1083 = !DILocation(line: 772, column: 19, scope: !412)
!1084 = !DILocation(line: 772, column: 26, scope: !412)
!1085 = !DILocation(line: 773, column: 9, scope: !413)
!1086 = !DILocation(line: 773, column: 9, scope: !412)
!1087 = !DILocation(line: 775, column: 20, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !413, file: !347, line: 774, column: 14)
!1089 = !DILocation(line: 775, column: 25, scope: !1088)
!1090 = !DILocation(line: 775, column: 13, scope: !1088)
!1091 = !DILocation(line: 776, column: 13, scope: !1088)
!1092 = !DILocation(line: 778, column: 19, scope: !410)
!1093 = !DILocation(line: 778, column: 25, scope: !410)
!1094 = !DILocation(line: 778, column: 17, scope: !410)
!1095 = !DILocation(line: 779, column: 5, scope: !363)
!1096 = !DILocation(line: 779, column: 5, scope: !623)
!1097 = !DILocation(line: 780, column: 12, scope: !363)
!1098 = !DILocation(line: 780, column: 5, scope: !363)
!1099 = !DILocation(line: 783, column: 12, scope: !363)
!1100 = !DILocation(line: 783, column: 5, scope: !363)
!1101 = !DILocation(line: 786, column: 26, scope: !363)
!1102 = !DILocation(line: 786, column: 24, scope: !363)
!1103 = !DILocation(line: 793, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !363, file: !347, line: 793, column: 9)
!1105 = !DILocation(line: 793, column: 16, scope: !1104)
!1106 = !DILocation(line: 793, column: 9, scope: !363)
!1107 = !DILocation(line: 794, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !347, line: 793, column: 21)
!1109 = !DILocation(line: 795, column: 9, scope: !1108)
!1110 = !DILocation(line: 798, column: 14, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !347, line: 798, column: 13)
!1112 = !DILocation(line: 798, column: 13, scope: !1108)
!1113 = !DILocation(line: 799, column: 17, scope: !1111)
!1114 = !DILocation(line: 800, column: 5, scope: !1108)
!1115 = !DILocation(line: 802, column: 25, scope: !1104)
!1116 = !DILocation(line: 802, column: 9, scope: !1104)
!1117 = !DILocation(line: 804, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !363, file: !347, line: 804, column: 9)
!1119 = !DILocation(line: 804, column: 16, scope: !1118)
!1120 = !DILocation(line: 804, column: 9, scope: !363)
!1121 = !DILocation(line: 805, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !347, line: 804, column: 21)
!1123 = !DILocation(line: 806, column: 9, scope: !1122)
!1124 = !DILocation(line: 807, column: 9, scope: !1122)
!1125 = !DILocation(line: 808, column: 14, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !347, line: 808, column: 13)
!1127 = !DILocation(line: 808, column: 13, scope: !1122)
!1128 = !DILocation(line: 809, column: 17, scope: !1126)
!1129 = !DILocation(line: 810, column: 5, scope: !1122)
!1130 = !DILocation(line: 812, column: 30, scope: !1118)
!1131 = !DILocation(line: 812, column: 9, scope: !1118)
!1132 = !DILocation(line: 814, column: 19, scope: !363)
!1133 = !DILocation(line: 814, column: 5, scope: !363)
!1134 = !DILocation(line: 815, column: 19, scope: !363)
!1135 = !DILocation(line: 815, column: 5, scope: !363)
!1136 = !DILocation(line: 816, column: 19, scope: !363)
!1137 = !DILocation(line: 816, column: 5, scope: !363)
!1138 = !DILocation(line: 817, column: 19, scope: !363)
!1139 = !DILocation(line: 817, column: 5, scope: !363)
!1140 = !DILocation(line: 818, column: 19, scope: !363)
!1141 = !DILocation(line: 818, column: 5, scope: !363)
!1142 = !DILocation(line: 819, column: 1, scope: !363)
!1143 = !DILocation(line: 852, column: 10, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !360, file: !347, line: 852, column: 9)
!1145 = !DILocation(line: 852, column: 9, scope: !360)
!1146 = !DILocation(line: 853, column: 9, scope: !1144)
!1147 = !DILocation(line: 854, column: 5, scope: !360)
!1148 = !DILocation(line: 860, column: 10, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !361, file: !347, line: 860, column: 9)
!1150 = !DILocation(line: 860, column: 9, scope: !361)
!1151 = !DILocation(line: 861, column: 9, scope: !1149)
!1152 = !DILocation(line: 862, column: 5, scope: !361)
!1153 = !DILocation(line: 868, column: 10, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !362, file: !347, line: 868, column: 9)
!1155 = !DILocation(line: 868, column: 9, scope: !362)
!1156 = !DILocation(line: 869, column: 9, scope: !1154)
!1157 = !DILocation(line: 870, column: 5, scope: !362)
!1158 = !DILocation(line: 207, column: 19, scope: !415)
!1159 = !DILocation(line: 207, column: 36, scope: !415)
!1160 = !DILocation(line: 209, column: 5, scope: !415)
!1161 = !DILocation(line: 209, column: 12, scope: !415)
!1162 = !DILocation(line: 209, column: 15, scope: !415)
!1163 = !DILocation(line: 210, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !415, file: !347, line: 210, column: 9)
!1165 = !DILocation(line: 210, column: 18, scope: !1164)
!1166 = !DILocation(line: 210, column: 9, scope: !415)
!1167 = !DILocation(line: 211, column: 11, scope: !1164)
!1168 = !DILocation(line: 211, column: 9, scope: !1164)
!1169 = !DILocation(line: 213, column: 20, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !347, line: 212, column: 10)
!1171 = !DILocation(line: 213, column: 13, scope: !1170)
!1172 = !DILocation(line: 213, column: 11, scope: !1170)
!1173 = !DILocation(line: 214, column: 13, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !347, line: 214, column: 13)
!1175 = !DILocation(line: 214, column: 15, scope: !1174)
!1176 = !DILocation(line: 214, column: 19, scope: !1174)
!1177 = !DILocation(line: 214, column: 29, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1174, file: !347, discriminator: 1)
!1179 = !DILocation(line: 214, column: 30, scope: !1174)
!1180 = !DILocation(line: 214, column: 22, scope: !1174)
!1181 = !DILocation(line: 214, column: 34, scope: !1174)
!1182 = !DILocation(line: 214, column: 42, scope: !1174)
!1183 = !DILocation(line: 214, column: 45, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1174, file: !347, discriminator: 2)
!1185 = !DILocation(line: 214, column: 47, scope: !1174)
!1186 = !DILocation(line: 214, column: 13, scope: !1170)
!1187 = !DILocation(line: 215, column: 21, scope: !1174)
!1188 = !DILocation(line: 215, column: 13, scope: !1174)
!1189 = !DILocation(line: 215, column: 25, scope: !1174)
!1190 = !DILocation(line: 217, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !415, file: !347, line: 217, column: 9)
!1192 = !DILocation(line: 217, column: 11, scope: !1191)
!1193 = !DILocation(line: 217, column: 9, scope: !415)
!1194 = !DILocation(line: 218, column: 9, scope: !1191)
!1195 = !DILocation(line: 219, column: 16, scope: !415)
!1196 = !DILocation(line: 219, column: 9, scope: !415)
!1197 = !DILocation(line: 219, column: 7, scope: !415)
!1198 = !DILocation(line: 220, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !415, file: !347, line: 220, column: 9)
!1200 = !DILocation(line: 220, column: 13, scope: !1199)
!1201 = !DILocation(line: 220, column: 11, scope: !1199)
!1202 = !DILocation(line: 220, column: 15, scope: !1199)
!1203 = !DILocation(line: 220, column: 9, scope: !415)
!1204 = !DILocation(line: 221, column: 20, scope: !1199)
!1205 = !DILocation(line: 221, column: 18, scope: !1199)
!1206 = !DILocation(line: 221, column: 11, scope: !1199)
!1207 = !DILocation(line: 221, column: 9, scope: !1199)
!1208 = !DILocation(line: 222, column: 13, scope: !415)
!1209 = !DILocation(line: 222, column: 20, scope: !415)
!1210 = !DILocation(line: 222, column: 19, scope: !415)
!1211 = !DILocation(line: 222, column: 23, scope: !415)
!1212 = !DILocation(line: 222, column: 30, scope: !415)
!1213 = !DILocation(line: 222, column: 5, scope: !415)
!1214 = !DILocation(line: 223, column: 12, scope: !415)
!1215 = !DILocation(line: 223, column: 14, scope: !415)
!1216 = !DILocation(line: 223, column: 13, scope: !415)
!1217 = !DILocation(line: 223, column: 5, scope: !415)
!1218 = !DILocation(line: 223, column: 17, scope: !415)
!1219 = !DILocation(line: 224, column: 1, scope: !415)
!1220 = !DILocation(line: 172, column: 18, scope: !423)
!1221 = !DILocation(line: 174, column: 5, scope: !423)
!1222 = !DILocation(line: 174, column: 17, scope: !423)
!1223 = !DILocation(line: 175, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !423, file: !347, line: 175, column: 9)
!1225 = !DILocation(line: 175, column: 9, scope: !1224)
!1226 = !DILocation(line: 175, column: 35, scope: !1224)
!1227 = !DILocation(line: 175, column: 9, scope: !423)
!1228 = !DILocation(line: 176, column: 9, scope: !1224)
!1229 = !DILocation(line: 177, column: 18, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !423, file: !347, line: 177, column: 9)
!1231 = !{!1232, !595, i64 24}
!1232 = !{!"stat", !720, i64 0, !720, i64 8, !720, i64 16, !595, i64 24, !595, i64 28, !595, i64 32, !595, i64 36, !720, i64 40, !720, i64 48, !720, i64 56, !720, i64 64, !1233, i64 72, !1233, i64 88, !1233, i64 104, !572, i64 120}
!1233 = !{!"timespec", !720, i64 0, !720, i64 8}
!1234 = !DILocation(line: 177, column: 28, scope: !1230)
!1235 = !DILocation(line: 177, column: 39, scope: !1230)
!1236 = !DILocation(line: 177, column: 9, scope: !423)
!1237 = !DILocation(line: 178, column: 9, scope: !1230)
!1238 = !DILocation(line: 179, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !423, file: !347, line: 179, column: 9)
!1240 = !DILocation(line: 179, column: 22, scope: !1239)
!1241 = !DILocation(line: 179, column: 30, scope: !1239)
!1242 = !DILocation(line: 179, column: 9, scope: !423)
!1243 = !DILocation(line: 180, column: 9, scope: !1239)
!1244 = !DILocation(line: 181, column: 5, scope: !423)
!1245 = !DILocation(line: 182, column: 1, scope: !423)
!1246 = !DILocation(line: 247, column: 21, scope: !465)
!1247 = !DILocation(line: 249, column: 5, scope: !465)
!1248 = !DILocation(line: 249, column: 13, scope: !465)
!1249 = !DILocation(line: 251, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !465, file: !347, line: 251, column: 9)
!1251 = !DILocation(line: 251, column: 17, scope: !1250)
!1252 = !DILocation(line: 251, column: 9, scope: !465)
!1253 = !DILocation(line: 252, column: 9, scope: !1250)
!1254 = !DILocation(line: 253, column: 19, scope: !465)
!1255 = !DILocation(line: 253, column: 27, scope: !465)
!1256 = !DILocation(line: 253, column: 5, scope: !465)
!1257 = !DILocation(line: 254, column: 12, scope: !465)
!1258 = !DILocation(line: 254, column: 18, scope: !465)
!1259 = !DILocation(line: 254, column: 5, scope: !465)
!1260 = !DILocation(line: 255, column: 1, scope: !465)
!1261 = !DILocation(line: 255, column: 1, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !465, file: !347, discriminator: 1)
!1263 = !DILocation(line: 135, column: 17, scope: !478)
!1264 = !DILocation(line: 137, column: 5, scope: !478)
!1265 = !DILocation(line: 137, column: 12, scope: !478)
!1266 = !DILocation(line: 137, column: 23, scope: !478)
!1267 = !DILocation(line: 137, column: 16, scope: !478)
!1268 = !DILocation(line: 138, column: 5, scope: !478)
!1269 = !DILocation(line: 138, column: 12, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !347, discriminator: 4)
!1271 = !DILexicalBlockFile(scope: !478, file: !347, discriminator: 1)
!1272 = !DILocation(line: 138, column: 14, scope: !478)
!1273 = !DILocation(line: 138, column: 18, scope: !478)
!1274 = !DILocation(line: 138, column: 25, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !478, file: !347, discriminator: 2)
!1276 = !DILocation(line: 138, column: 21, scope: !478)
!1277 = !DILocation(line: 138, column: 28, scope: !478)
!1278 = !DILocation(line: 138, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !478, file: !347, discriminator: 3)
!1280 = !DILocation(line: 139, column: 9, scope: !478)
!1281 = !DILocation(line: 140, column: 9, scope: !478)
!1282 = !DILocation(line: 140, column: 5, scope: !478)
!1283 = !DILocation(line: 140, column: 12, scope: !478)
!1284 = !DILocation(line: 141, column: 1, scope: !478)
!1285 = !DILocation(line: 263, column: 30, scope: !482)
!1286 = !DILocation(line: 263, column: 56, scope: !482)
!1287 = !DILocation(line: 263, column: 71, scope: !482)
!1288 = !DILocation(line: 265, column: 5, scope: !482)
!1289 = !DILocation(line: 265, column: 9, scope: !482)
!1290 = !DILocation(line: 266, column: 5, scope: !482)
!1291 = !DILocation(line: 266, column: 10, scope: !482)
!1292 = !DILocation(line: 268, column: 11, scope: !482)
!1293 = !DILocation(line: 268, column: 5, scope: !482)
!1294 = !DILocation(line: 269, column: 5, scope: !482)
!1295 = !DILocation(line: 269, column: 18, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !347, discriminator: 2)
!1297 = !DILexicalBlockFile(scope: !482, file: !347, discriminator: 1)
!1298 = !DILocation(line: 269, column: 13, scope: !482)
!1299 = !DILocation(line: 269, column: 12, scope: !482)
!1300 = !DILocation(line: 270, column: 9, scope: !495)
!1301 = !DILocation(line: 270, column: 16, scope: !495)
!1302 = !DILocation(line: 270, column: 26, scope: !495)
!1303 = !DILocation(line: 270, column: 42, scope: !495)
!1304 = !DILocation(line: 270, column: 20, scope: !495)
!1305 = !DILocation(line: 271, column: 9, scope: !495)
!1306 = !DILocation(line: 271, column: 17, scope: !495)
!1307 = !DILocation(line: 272, column: 9, scope: !495)
!1308 = !DILocation(line: 272, column: 20, scope: !495)
!1309 = !DILocation(line: 273, column: 9, scope: !495)
!1310 = !DILocation(line: 273, column: 13, scope: !495)
!1311 = !DILocation(line: 275, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !495, file: !347, line: 275, column: 13)
!1313 = !DILocation(line: 275, column: 15, scope: !1312)
!1314 = !DILocation(line: 275, column: 13, scope: !495)
!1315 = !DILocation(line: 276, column: 13, scope: !1312)
!1316 = !DILocation(line: 277, column: 20, scope: !495)
!1317 = !DILocation(line: 277, column: 13, scope: !495)
!1318 = !DILocation(line: 277, column: 11, scope: !495)
!1319 = !DILocation(line: 278, column: 15, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !495, file: !347, line: 278, column: 13)
!1321 = !DILocation(line: 278, column: 17, scope: !1320)
!1322 = !DILocation(line: 278, column: 13, scope: !1320)
!1323 = !DILocation(line: 278, column: 22, scope: !1320)
!1324 = !DILocation(line: 278, column: 13, scope: !495)
!1325 = !DILocation(line: 280, column: 13, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1320, file: !347, line: 278, column: 31)
!1327 = !DILocation(line: 282, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !495, file: !347, line: 282, column: 13)
!1329 = !DILocation(line: 282, column: 18, scope: !1328)
!1330 = !DILocation(line: 282, column: 13, scope: !495)
!1331 = !DILocation(line: 283, column: 13, scope: !1328)
!1332 = !DILocation(line: 284, column: 40, scope: !495)
!1333 = !DILocation(line: 284, column: 48, scope: !495)
!1334 = !DILocation(line: 284, column: 19, scope: !495)
!1335 = !DILocation(line: 284, column: 17, scope: !495)
!1336 = !DILocation(line: 285, column: 13, scope: !502)
!1337 = !DILocation(line: 285, column: 21, scope: !502)
!1338 = !DILocation(line: 285, column: 13, scope: !495)
!1339 = !DILocation(line: 286, column: 13, scope: !501)
!1340 = !DILocation(line: 286, column: 24, scope: !501)
!1341 = !DILocation(line: 287, column: 13, scope: !501)
!1342 = !DILocation(line: 287, column: 23, scope: !501)
!1343 = !DILocation(line: 288, column: 38, scope: !501)
!1344 = !DILocation(line: 289, column: 38, scope: !501)
!1345 = !DILocation(line: 288, column: 17, scope: !501)
!1346 = !DILocation(line: 288, column: 15, scope: !501)
!1347 = !DILocation(line: 290, column: 13, scope: !501)
!1348 = !DILocation(line: 290, column: 18, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !505, file: !347, discriminator: 1)
!1350 = !DILocation(line: 290, column: 28, scope: !505)
!1351 = !DILocation(line: 290, column: 58, scope: !505)
!1352 = !DILocation(line: 290, column: 76, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !505, file: !347, line: 290, column: 73)
!1354 = !DILocation(line: 290, column: 93, scope: !1353)
!1355 = !DILocation(line: 290, column: 73, scope: !1353)
!1356 = !{!1357, !720, i64 0}
!1357 = !{!"_object", !720, i64 0, !571, i64 8}
!1358 = !DILocation(line: 290, column: 103, scope: !1353)
!1359 = !DILocation(line: 290, column: 73, scope: !505)
!1360 = !DILocation(line: 290, column: 73, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !505, file: !347, discriminator: 2)
!1362 = !DILocation(line: 290, column: 134, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1353, file: !347, discriminator: 3)
!1364 = !DILocation(line: 290, column: 152, scope: !1353)
!1365 = !{!1357, !571, i64 8}
!1366 = !DILocation(line: 290, column: 162, scope: !1353)
!1367 = !{!1368, !571, i64 48}
!1368 = !{!"_typeobject", !1369, i64 0, !571, i64 24, !720, i64 32, !720, i64 40, !571, i64 48, !571, i64 56, !571, i64 64, !571, i64 72, !571, i64 80, !571, i64 88, !571, i64 96, !571, i64 104, !571, i64 112, !571, i64 120, !571, i64 128, !571, i64 136, !571, i64 144, !571, i64 152, !571, i64 160, !720, i64 168, !571, i64 176, !571, i64 184, !571, i64 192, !571, i64 200, !720, i64 208, !571, i64 216, !571, i64 224, !571, i64 232, !571, i64 240, !571, i64 248, !571, i64 256, !571, i64 264, !571, i64 272, !571, i64 280, !720, i64 288, !571, i64 296, !571, i64 304, !571, i64 312, !571, i64 320, !571, i64 328, !571, i64 336, !571, i64 344, !571, i64 352, !571, i64 360, !571, i64 368, !571, i64 376, !595, i64 384, !571, i64 392}
!1369 = !{!"", !1357, i64 0, !720, i64 16}
!1370 = !DILocation(line: 290, column: 187, scope: !1353)
!1371 = !DILocation(line: 290, column: 118, scope: !1353)
!1372 = !DILocation(line: 290, column: 206, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !501, file: !347, discriminator: 4)
!1374 = !DILocation(line: 290, column: 206, scope: !505)
!1375 = !DILocation(line: 290, column: 206, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !505, file: !347, discriminator: 5)
!1377 = !DILocation(line: 291, column: 17, scope: !508)
!1378 = !DILocation(line: 291, column: 19, scope: !508)
!1379 = !DILocation(line: 291, column: 17, scope: !501)
!1380 = !DILocation(line: 292, column: 17, scope: !507)
!1381 = !DILocation(line: 292, column: 27, scope: !507)
!1382 = !DILocation(line: 292, column: 40, scope: !507)
!1383 = !DILocation(line: 292, column: 33, scope: !507)
!1384 = !DILocation(line: 293, column: 22, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !507, file: !347, line: 293, column: 21)
!1386 = !DILocation(line: 293, column: 26, scope: !1385)
!1387 = !DILocation(line: 293, column: 41, scope: !1385)
!1388 = !DILocation(line: 293, column: 52, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1385, file: !347, discriminator: 1)
!1390 = !DILocation(line: 293, column: 57, scope: !1385)
!1391 = !DILocation(line: 293, column: 45, scope: !1385)
!1392 = !DILocation(line: 293, column: 21, scope: !507)
!1393 = !DILocation(line: 294, column: 27, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1385, file: !347, line: 293, column: 63)
!1395 = !DILocation(line: 294, column: 25, scope: !1394)
!1396 = !DILocation(line: 295, column: 26, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !347, line: 295, column: 25)
!1398 = !DILocation(line: 295, column: 30, scope: !1397)
!1399 = !DILocation(line: 295, column: 45, scope: !1397)
!1400 = !DILocation(line: 295, column: 56, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1397, file: !347, discriminator: 1)
!1402 = !DILocation(line: 295, column: 49, scope: !1397)
!1403 = !DILocation(line: 295, column: 25, scope: !1394)
!1404 = !DILocation(line: 296, column: 31, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !347, line: 295, column: 68)
!1406 = !DILocation(line: 296, column: 29, scope: !1405)
!1407 = !DILocation(line: 297, column: 29, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !347, line: 297, column: 29)
!1409 = !DILocation(line: 297, column: 33, scope: !1408)
!1410 = !DILocation(line: 297, column: 29, scope: !1405)
!1411 = !DILocation(line: 298, column: 37, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 297, column: 48)
!1413 = !DILocation(line: 298, column: 44, scope: !1412)
!1414 = !DILocation(line: 298, column: 29, scope: !1412)
!1415 = !DILocation(line: 299, column: 36, scope: !1412)
!1416 = !DILocation(line: 300, column: 29, scope: !1412)
!1417 = !DILocation(line: 302, column: 21, scope: !1405)
!1418 = !DILocation(line: 303, column: 17, scope: !1394)
!1419 = !DILocation(line: 304, column: 13, scope: !508)
!1420 = !DILocation(line: 304, column: 13, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !508, file: !347, discriminator: 1)
!1422 = !DILocation(line: 304, column: 13, scope: !507)
!1423 = !DILocation(line: 305, column: 9, scope: !502)
!1424 = !DILocation(line: 305, column: 9, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !502, file: !347, discriminator: 1)
!1426 = !DILocation(line: 305, column: 9, scope: !501)
!1427 = !DILocation(line: 306, column: 5, scope: !482)
!1428 = !DILocation(line: 306, column: 5, scope: !1297)
!1429 = !DILocation(line: 307, column: 12, scope: !482)
!1430 = !DILocation(line: 308, column: 1, scope: !482)
!1431 = !DILocation(line: 307, column: 5, scope: !482)
!1432 = !DILocation(line: 314, column: 28, scope: !509)
!1433 = !DILocation(line: 314, column: 49, scope: !509)
!1434 = !DILocation(line: 314, column: 64, scope: !509)
!1435 = !DILocation(line: 315, column: 28, scope: !509)
!1436 = !DILocation(line: 317, column: 5, scope: !509)
!1437 = !DILocation(line: 317, column: 12, scope: !509)
!1438 = !DILocation(line: 318, column: 5, scope: !509)
!1439 = !DILocation(line: 318, column: 14, scope: !509)
!1440 = !DILocation(line: 321, column: 9, scope: !521)
!1441 = !DILocation(line: 321, column: 9, scope: !509)
!1442 = !DILocation(line: 322, column: 9, scope: !520)
!1443 = !DILocation(line: 322, column: 18, scope: !520)
!1444 = !DILocation(line: 323, column: 25, scope: !520)
!1445 = !DILocation(line: 323, column: 9, scope: !520)
!1446 = !DILocation(line: 324, column: 22, scope: !520)
!1447 = !DILocation(line: 325, column: 17, scope: !520)
!1448 = !DILocation(line: 325, column: 15, scope: !520)
!1449 = !DILocation(line: 326, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !520, file: !347, line: 326, column: 13)
!1451 = !DILocation(line: 326, column: 13, scope: !520)
!1452 = !DILocation(line: 327, column: 14, scope: !1450)
!1453 = !DILocation(line: 327, column: 20, scope: !1450)
!1454 = !DILocation(line: 327, column: 13, scope: !1450)
!1455 = !DILocation(line: 328, column: 26, scope: !520)
!1456 = !DILocation(line: 328, column: 9, scope: !520)
!1457 = !DILocation(line: 329, column: 9, scope: !520)
!1458 = !DILocation(line: 330, column: 9, scope: !520)
!1459 = !DILocation(line: 331, column: 5, scope: !521)
!1460 = !DILocation(line: 334, column: 21, scope: !509)
!1461 = !DILocation(line: 334, column: 5, scope: !509)
!1462 = !DILocation(line: 335, column: 18, scope: !509)
!1463 = !DILocation(line: 336, column: 5, scope: !509)
!1464 = !DILocation(line: 337, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !509, file: !347, line: 337, column: 9)
!1466 = !DILocation(line: 337, column: 9, scope: !509)
!1467 = !DILocation(line: 339, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !347, line: 337, column: 25)
!1469 = !DILocation(line: 339, column: 15, scope: !1468)
!1470 = !DILocation(line: 340, column: 13, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !347, line: 340, column: 13)
!1472 = !DILocation(line: 340, column: 19, scope: !1471)
!1473 = !DILocation(line: 340, column: 13, scope: !1468)
!1474 = !DILocation(line: 341, column: 29, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !347, line: 340, column: 34)
!1476 = !DILocation(line: 341, column: 13, scope: !1475)
!1477 = !DILocation(line: 342, column: 26, scope: !1475)
!1478 = !DILocation(line: 343, column: 30, scope: !1475)
!1479 = !DILocation(line: 343, column: 13, scope: !1475)
!1480 = !DILocation(line: 344, column: 27, scope: !1475)
!1481 = !DILocation(line: 344, column: 13, scope: !1475)
!1482 = !DILocation(line: 345, column: 13, scope: !1475)
!1483 = !DILocation(line: 346, column: 13, scope: !1475)
!1484 = !DILocation(line: 347, column: 17, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1475, file: !347, line: 347, column: 17)
!1486 = !DILocation(line: 347, column: 17, scope: !1475)
!1487 = !DILocation(line: 348, column: 17, scope: !1485)
!1488 = !DILocation(line: 349, column: 9, scope: !1475)
!1489 = !DILocation(line: 350, column: 5, scope: !1468)
!1490 = !DILocation(line: 353, column: 27, scope: !509)
!1491 = !DILocation(line: 353, column: 5, scope: !509)
!1492 = !DILocation(line: 354, column: 5, scope: !509)
!1493 = !DILocation(line: 355, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !509, file: !347, line: 354, column: 8)
!1495 = !DILocation(line: 355, column: 11, scope: !1494)
!1496 = !DILocation(line: 356, column: 26, scope: !1494)
!1497 = !DILocation(line: 356, column: 9, scope: !1494)
!1498 = !DILocation(line: 357, column: 9, scope: !1494)
!1499 = !DILocation(line: 358, column: 13, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !347, line: 358, column: 13)
!1501 = !DILocation(line: 358, column: 13, scope: !1494)
!1502 = !DILocation(line: 359, column: 13, scope: !1500)
!1503 = !DILocation(line: 360, column: 16, scope: !1494)
!1504 = !DILocation(line: 360, column: 9, scope: !1494)
!1505 = !DILocation(line: 360, column: 19, scope: !1494)
!1506 = !DILocation(line: 361, column: 9, scope: !1494)
!1507 = !DILocation(line: 362, column: 5, scope: !1494)
!1508 = !DILocation(line: 362, column: 14, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !509, file: !347, discriminator: 1)
!1510 = !DILocation(line: 365, column: 21, scope: !509)
!1511 = !DILocation(line: 365, column: 5, scope: !509)
!1512 = !DILocation(line: 366, column: 18, scope: !509)
!1513 = !DILocation(line: 367, column: 22, scope: !509)
!1514 = !DILocation(line: 367, column: 5, scope: !509)
!1515 = !DILocation(line: 368, column: 5, scope: !509)
!1516 = !DILocation(line: 369, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !509, file: !347, line: 369, column: 9)
!1518 = !DILocation(line: 369, column: 9, scope: !509)
!1519 = !DILocation(line: 370, column: 9, scope: !1517)
!1520 = !DILocation(line: 373, column: 5, scope: !509)
!1521 = !DILocation(line: 374, column: 1, scope: !509)
!1522 = !DILocation(line: 381, column: 33, scope: !529)
!1523 = !DILocation(line: 381, column: 54, scope: !529)
!1524 = !DILocation(line: 382, column: 33, scope: !529)
!1525 = !DILocation(line: 382, column: 56, scope: !529)
!1526 = !DILocation(line: 384, column: 5, scope: !529)
!1527 = !DILocation(line: 384, column: 12, scope: !529)
!1528 = !DILocation(line: 387, column: 9, scope: !538)
!1529 = !DILocation(line: 387, column: 9, scope: !529)
!1530 = !DILocation(line: 388, column: 9, scope: !537)
!1531 = !DILocation(line: 388, column: 18, scope: !537)
!1532 = !DILocation(line: 389, column: 24, scope: !537)
!1533 = !DILocation(line: 389, column: 17, scope: !537)
!1534 = !DILocation(line: 389, column: 15, scope: !537)
!1535 = !DILocation(line: 390, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !537, file: !347, line: 390, column: 13)
!1537 = !DILocation(line: 390, column: 13, scope: !537)
!1538 = !DILocation(line: 391, column: 34, scope: !1536)
!1539 = !DILocation(line: 391, column: 39, scope: !1536)
!1540 = !DILocation(line: 391, column: 13, scope: !1536)
!1541 = !DILocation(line: 393, column: 34, scope: !1536)
!1542 = !DILocation(line: 393, column: 13, scope: !1536)
!1543 = !DILocation(line: 394, column: 27, scope: !537)
!1544 = !DILocation(line: 395, column: 31, scope: !537)
!1545 = !DILocation(line: 395, column: 9, scope: !537)
!1546 = !DILocation(line: 396, column: 9, scope: !537)
!1547 = !DILocation(line: 397, column: 9, scope: !537)
!1548 = !DILocation(line: 398, column: 5, scope: !538)
!1549 = !DILocation(line: 403, column: 26, scope: !529)
!1550 = !DILocation(line: 403, column: 5, scope: !529)
!1551 = !DILocation(line: 404, column: 23, scope: !529)
!1552 = !DILocation(line: 405, column: 5, scope: !529)
!1553 = !DILocation(line: 406, column: 9, scope: !541)
!1554 = !DILocation(line: 406, column: 9, scope: !529)
!1555 = !DILocation(line: 407, column: 9, scope: !540)
!1556 = !DILocation(line: 407, column: 15, scope: !540)
!1557 = !DILocation(line: 407, column: 19, scope: !540)
!1558 = !DILocation(line: 408, column: 13, scope: !544)
!1559 = !DILocation(line: 408, column: 15, scope: !544)
!1560 = !DILocation(line: 408, column: 13, scope: !540)
!1561 = !DILocation(line: 409, column: 15, scope: !544)
!1562 = !DILocation(line: 409, column: 36, scope: !544)
!1563 = !DILocation(line: 409, column: 13, scope: !544)
!1564 = !DILocation(line: 411, column: 13, scope: !543)
!1565 = !DILocation(line: 411, column: 18, scope: !543)
!1566 = !DILocation(line: 412, column: 13, scope: !543)
!1567 = !DILocation(line: 412, column: 23, scope: !543)
!1568 = !DILocation(line: 413, column: 13, scope: !543)
!1569 = !DILocation(line: 413, column: 21, scope: !543)
!1570 = !DILocation(line: 414, column: 23, scope: !543)
!1571 = !DILocation(line: 414, column: 37, scope: !543)
!1572 = !DILocation(line: 414, column: 17, scope: !543)
!1573 = !DILocation(line: 414, column: 15, scope: !543)
!1574 = !DILocation(line: 415, column: 17, scope: !543)
!1575 = !DILocation(line: 415, column: 13, scope: !543)
!1576 = !DILocation(line: 415, column: 20, scope: !543)
!1577 = !DILocation(line: 416, column: 20, scope: !543)
!1578 = !DILocation(line: 416, column: 13, scope: !543)
!1579 = !DILocation(line: 417, column: 44, scope: !543)
!1580 = !DILocation(line: 417, column: 49, scope: !543)
!1581 = !DILocation(line: 417, column: 23, scope: !543)
!1582 = !DILocation(line: 417, column: 21, scope: !543)
!1583 = !DILocation(line: 418, column: 17, scope: !550)
!1584 = !DILocation(line: 418, column: 25, scope: !550)
!1585 = !DILocation(line: 418, column: 17, scope: !543)
!1586 = !DILocation(line: 419, column: 17, scope: !549)
!1587 = !DILocation(line: 419, column: 28, scope: !549)
!1588 = !DILocation(line: 420, column: 42, scope: !549)
!1589 = !DILocation(line: 421, column: 42, scope: !549)
!1590 = !DILocation(line: 420, column: 21, scope: !549)
!1591 = !DILocation(line: 420, column: 19, scope: !549)
!1592 = !DILocation(line: 422, column: 17, scope: !549)
!1593 = !DILocation(line: 422, column: 22, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !552, file: !347, discriminator: 1)
!1595 = !DILocation(line: 422, column: 32, scope: !552)
!1596 = !DILocation(line: 422, column: 62, scope: !552)
!1597 = !DILocation(line: 422, column: 80, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !552, file: !347, line: 422, column: 77)
!1599 = !DILocation(line: 422, column: 97, scope: !1598)
!1600 = !DILocation(line: 422, column: 77, scope: !1598)
!1601 = !DILocation(line: 422, column: 107, scope: !1598)
!1602 = !DILocation(line: 422, column: 77, scope: !552)
!1603 = !DILocation(line: 422, column: 77, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !552, file: !347, discriminator: 2)
!1605 = !DILocation(line: 422, column: 138, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1598, file: !347, discriminator: 3)
!1607 = !DILocation(line: 422, column: 156, scope: !1598)
!1608 = !DILocation(line: 422, column: 166, scope: !1598)
!1609 = !DILocation(line: 422, column: 191, scope: !1598)
!1610 = !DILocation(line: 422, column: 122, scope: !1598)
!1611 = !DILocation(line: 422, column: 210, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !549, file: !347, discriminator: 4)
!1613 = !DILocation(line: 422, column: 210, scope: !552)
!1614 = !DILocation(line: 422, column: 210, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !552, file: !347, discriminator: 5)
!1616 = !DILocation(line: 423, column: 21, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !549, file: !347, line: 423, column: 21)
!1618 = !DILocation(line: 423, column: 23, scope: !1617)
!1619 = !DILocation(line: 423, column: 21, scope: !549)
!1620 = !DILocation(line: 424, column: 39, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !347, line: 423, column: 29)
!1622 = !DILocation(line: 424, column: 21, scope: !1621)
!1623 = !DILocation(line: 424, column: 42, scope: !1621)
!1624 = !DILocation(line: 425, column: 42, scope: !1621)
!1625 = !DILocation(line: 425, column: 21, scope: !1621)
!1626 = !DILocation(line: 426, column: 39, scope: !1621)
!1627 = !DILocation(line: 427, column: 43, scope: !1621)
!1628 = !DILocation(line: 427, column: 21, scope: !1621)
!1629 = !DILocation(line: 428, column: 21, scope: !1621)
!1630 = !DILocation(line: 430, column: 13, scope: !550)
!1631 = !DILocation(line: 430, column: 13, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !550, file: !347, discriminator: 1)
!1633 = !DILocation(line: 430, column: 13, scope: !549)
!1634 = !DILocation(line: 431, column: 9, scope: !544)
!1635 = !DILocation(line: 431, column: 9, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !544, file: !347, discriminator: 1)
!1637 = !DILocation(line: 432, column: 5, scope: !541)
!1638 = !DILocation(line: 432, column: 5, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !541, file: !347, discriminator: 1)
!1640 = !DILocation(line: 432, column: 5, scope: !540)
!1641 = !DILocation(line: 435, column: 32, scope: !529)
!1642 = !DILocation(line: 435, column: 5, scope: !529)
!1643 = !DILocation(line: 436, column: 5, scope: !529)
!1644 = !DILocation(line: 437, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !529, file: !347, line: 436, column: 8)
!1646 = !DILocation(line: 437, column: 11, scope: !1645)
!1647 = !DILocation(line: 438, column: 31, scope: !1645)
!1648 = !DILocation(line: 438, column: 9, scope: !1645)
!1649 = !DILocation(line: 439, column: 9, scope: !1645)
!1650 = !DILocation(line: 440, column: 13, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !347, line: 440, column: 13)
!1652 = !DILocation(line: 440, column: 13, scope: !1645)
!1653 = !DILocation(line: 441, column: 13, scope: !1651)
!1654 = !DILocation(line: 442, column: 21, scope: !1645)
!1655 = !DILocation(line: 442, column: 9, scope: !1645)
!1656 = !DILocation(line: 442, column: 24, scope: !1645)
!1657 = !DILocation(line: 443, column: 9, scope: !1645)
!1658 = !DILocation(line: 444, column: 5, scope: !1645)
!1659 = !DILocation(line: 444, column: 14, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !529, file: !347, discriminator: 1)
!1661 = !DILocation(line: 447, column: 26, scope: !529)
!1662 = !DILocation(line: 447, column: 5, scope: !529)
!1663 = !DILocation(line: 448, column: 23, scope: !529)
!1664 = !DILocation(line: 449, column: 27, scope: !529)
!1665 = !DILocation(line: 449, column: 5, scope: !529)
!1666 = !DILocation(line: 450, column: 5, scope: !529)
!1667 = !DILocation(line: 451, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !529, file: !347, line: 451, column: 9)
!1669 = !DILocation(line: 451, column: 9, scope: !529)
!1670 = !DILocation(line: 452, column: 9, scope: !1668)
!1671 = !DILocation(line: 455, column: 5, scope: !529)
!1672 = !DILocation(line: 456, column: 1, scope: !529)
!1673 = !DILocation(line: 229, column: 24, scope: !471)
!1674 = !DILocation(line: 229, column: 39, scope: !471)
!1675 = !DILocation(line: 229, column: 49, scope: !471)
!1676 = !DILocation(line: 231, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !471, file: !347, line: 231, column: 9)
!1678 = !DILocation(line: 231, column: 14, scope: !1677)
!1679 = !DILocation(line: 231, column: 9, scope: !471)
!1680 = !DILocation(line: 232, column: 16, scope: !1677)
!1681 = !DILocation(line: 232, column: 22, scope: !1677)
!1682 = !DILocation(line: 232, column: 9, scope: !1677)
!1683 = !DILocation(line: 234, column: 26, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !347, line: 234, column: 13)
!1685 = distinct !DILexicalBlock(scope: !1677, file: !347, line: 233, column: 10)
!1686 = !DILocation(line: 234, column: 32, scope: !1684)
!1687 = !DILocation(line: 234, column: 14, scope: !1684)
!1688 = !DILocation(line: 234, column: 13, scope: !1685)
!1689 = !DILocation(line: 236, column: 20, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !347, line: 234, column: 42)
!1691 = !DILocation(line: 236, column: 26, scope: !1690)
!1692 = !DILocation(line: 236, column: 13, scope: !1690)
!1693 = !DILocation(line: 237, column: 13, scope: !1690)
!1694 = !DILocation(line: 239, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !347, line: 239, column: 13)
!1696 = !DILocation(line: 239, column: 18, scope: !1695)
!1697 = !DILocation(line: 239, column: 25, scope: !1695)
!1698 = !DILocation(line: 239, column: 28, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1695, file: !347, discriminator: 1)
!1700 = !DILocation(line: 239, column: 33, scope: !1695)
!1701 = !DILocation(line: 239, column: 13, scope: !1685)
!1702 = !DILocation(line: 240, column: 15, scope: !1695)
!1703 = !DILocation(line: 240, column: 13, scope: !1695)
!1704 = !DILocation(line: 241, column: 18, scope: !1685)
!1705 = !DILocation(line: 241, column: 24, scope: !1685)
!1706 = !DILocation(line: 241, column: 9, scope: !1685)
!1707 = !DILocation(line: 243, column: 1, scope: !471)
!1708 = !DILocation(line: 144, column: 17, scope: !522)
!1709 = !DILocation(line: 146, column: 5, scope: !522)
!1710 = !DILocation(line: 146, column: 17, scope: !522)
!1711 = !DILocation(line: 147, column: 19, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !522, file: !347, line: 147, column: 9)
!1713 = !DILocation(line: 147, column: 9, scope: !1712)
!1714 = !DILocation(line: 147, column: 35, scope: !1712)
!1715 = !DILocation(line: 147, column: 9, scope: !522)
!1716 = !DILocation(line: 148, column: 9, scope: !1712)
!1717 = !DILocation(line: 149, column: 18, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !522, file: !347, line: 149, column: 9)
!1719 = !DILocation(line: 149, column: 28, scope: !1718)
!1720 = !DILocation(line: 149, column: 39, scope: !1718)
!1721 = !DILocation(line: 149, column: 9, scope: !522)
!1722 = !DILocation(line: 150, column: 9, scope: !1718)
!1723 = !DILocation(line: 151, column: 5, scope: !522)
!1724 = !DILocation(line: 152, column: 1, scope: !522)
!1725 = !DILocation(line: 156, column: 19, scope: !526)
!1726 = !DILocation(line: 158, column: 16, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !526, file: !347, line: 158, column: 9)
!1728 = !DILocation(line: 158, column: 9, scope: !1727)
!1729 = !DILocation(line: 158, column: 9, scope: !526)
!1730 = !DILocation(line: 159, column: 9, scope: !1727)
!1731 = !DILocation(line: 162, column: 16, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !526, file: !347, line: 162, column: 9)
!1733 = !DILocation(line: 162, column: 9, scope: !1732)
!1734 = !DILocation(line: 162, column: 26, scope: !1732)
!1735 = !DILocation(line: 162, column: 9, scope: !526)
!1736 = !DILocation(line: 163, column: 16, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !347, line: 162, column: 34)
!1738 = !DILocation(line: 163, column: 26, scope: !1737)
!1739 = !DILocation(line: 163, column: 9, scope: !1737)
!1740 = !DILocation(line: 164, column: 20, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !347, line: 164, column: 13)
!1742 = !DILocation(line: 164, column: 13, scope: !1741)
!1743 = !DILocation(line: 164, column: 13, scope: !1737)
!1744 = !DILocation(line: 165, column: 13, scope: !1741)
!1745 = !DILocation(line: 166, column: 5, scope: !1737)
!1746 = !DILocation(line: 167, column: 5, scope: !526)
!1747 = !DILocation(line: 168, column: 1, scope: !526)
!1748 = !DILocation(line: 186, column: 16, scope: !553)
!1749 = !DILocation(line: 188, column: 5, scope: !553)
!1750 = !DILocation(line: 188, column: 17, scope: !553)
!1751 = !DILocation(line: 189, column: 19, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !553, file: !347, line: 189, column: 9)
!1753 = !DILocation(line: 189, column: 9, scope: !1752)
!1754 = !DILocation(line: 189, column: 35, scope: !1752)
!1755 = !DILocation(line: 189, column: 9, scope: !553)
!1756 = !DILocation(line: 190, column: 9, scope: !1752)
!1757 = !DILocation(line: 191, column: 18, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !553, file: !347, line: 191, column: 9)
!1759 = !DILocation(line: 191, column: 28, scope: !1758)
!1760 = !DILocation(line: 191, column: 39, scope: !1758)
!1761 = !DILocation(line: 191, column: 9, scope: !553)
!1762 = !DILocation(line: 192, column: 9, scope: !1758)
!1763 = !DILocation(line: 193, column: 5, scope: !553)
!1764 = !DILocation(line: 194, column: 1, scope: !553)
