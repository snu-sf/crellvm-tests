; ModuleID = 'irs-onlybc/myreadline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._Py_atomic_address = type { i8* }

@PyOS_InputHook = global i32 ()* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"input line too long\00", align 1
@_PyOS_ReadlineTState = common global %struct._ts* null, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"can't re-enter readline\00", align 1
@PyOS_ReadlineFunctionPointer = common global i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* null, align 8
@_PyOS_ReadlineLock = internal global i8* null, align 8

; Function Attrs: nounwind uwtable
define i8* @PyOS_StdioReadline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  %retval = alloca i8*, align 8
  %sys_stdin.addr = alloca %struct._IO_FILE*, align 8
  %sys_stdout.addr = alloca %struct._IO_FILE*, align 8
  %prompt.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %incr = alloca i64, align 8
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdin.addr, metadata !415, metadata !500), !dbg !501
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdout.addr, metadata !416, metadata !500), !dbg !502
  store i8* %prompt, i8** %prompt.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata i8** %prompt.addr, metadata !417, metadata !500), !dbg !503
  %0 = bitcast i64* %n to i8*, !dbg !504
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %n, metadata !418, metadata !500), !dbg !505
  %1 = bitcast i8** %p to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !506
  call void @llvm.dbg.declare(metadata i8** %p, metadata !419, metadata !500), !dbg !507
  %2 = bitcast i8** %pr to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !506
  call void @llvm.dbg.declare(metadata i8** %pr, metadata !420, metadata !500), !dbg !508
  store i64 100, i64* %n, align 8, !dbg !509, !tbaa !510
  %3 = load i64, i64* %n, align 8, !dbg !512, !tbaa !510
  %call = call i8* @PyMem_RawMalloc(i64 %3), !dbg !513
  store i8* %call, i8** %p, align 8, !dbg !514, !tbaa !496
  %4 = load i8*, i8** %p, align 8, !dbg !515, !tbaa !496
  %cmp = icmp eq i8* %4, null, !dbg !517
  br i1 %cmp, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !519

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !520, !tbaa !496
  %call1 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !521
  %6 = load i8*, i8** %prompt.addr, align 8, !dbg !522, !tbaa !496
  %tobool = icmp ne i8* %6, null, !dbg !522
  br i1 %tobool, label %if.then.2, label %if.end.4, !dbg !524

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !525, !tbaa !496
  %8 = load i8*, i8** %prompt.addr, align 8, !dbg !526, !tbaa !496
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %8), !dbg !527
  br label %if.end.4, !dbg !527

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !528, !tbaa !496
  %call5 = call i32 @fflush(%struct._IO_FILE* %9), !dbg !529
  %10 = load i8*, i8** %p, align 8, !dbg !530, !tbaa !496
  %11 = load i64, i64* %n, align 8, !dbg !531, !tbaa !510
  %conv = trunc i64 %11 to i32, !dbg !532
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !533, !tbaa !496
  %call6 = call i32 @my_fgets(i8* %10, i32 %conv, %struct._IO_FILE* %12), !dbg !534
  switch i32 %call6, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 -1, label %sw.bb.7
    i32 -2, label %sw.bb.7
  ], !dbg !535

sw.bb:                                            ; preds = %if.end.4
  %13 = load i8*, i8** %p, align 8, !dbg !536, !tbaa !496
  call void @PyMem_RawFree(i8* %13), !dbg !538
  store i8* null, i8** %retval, !dbg !539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !539

sw.bb.7:                                          ; preds = %if.end.4, %if.end.4
  br label %sw.default, !dbg !539

sw.default:                                       ; preds = %if.end.4, %sw.bb.7
  %14 = load i8*, i8** %p, align 8, !dbg !540, !tbaa !496
  store i8 0, i8* %14, align 1, !dbg !541, !tbaa !542
  br label %sw.epilog, !dbg !543

sw.epilog:                                        ; preds = %sw.default, %if.end.4
  %15 = load i8*, i8** %p, align 8, !dbg !544, !tbaa !496
  %call8 = call i64 @strlen(i8* %15) #8, !dbg !545
  store i64 %call8, i64* %n, align 8, !dbg !546, !tbaa !510
  br label %while.cond, !dbg !547

while.cond:                                       ; preds = %cleanup.cont, %sw.epilog
  %16 = load i64, i64* %n, align 8, !dbg !548, !tbaa !510
  %cmp9 = icmp ugt i64 %16, 0, !dbg !551
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !552

land.rhs:                                         ; preds = %while.cond
  %17 = load i64, i64* %n, align 8, !dbg !553, !tbaa !510
  %sub = sub i64 %17, 1, !dbg !555
  %18 = load i8*, i8** %p, align 8, !dbg !556, !tbaa !496
  %arrayidx = getelementptr i8, i8* %18, i64 %sub, !dbg !556
  %19 = load i8, i8* %arrayidx, align 1, !dbg !556, !tbaa !542
  %conv11 = sext i8 %19 to i32, !dbg !556
  %cmp12 = icmp ne i32 %conv11, 10, !dbg !557
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %20, label %while.body, label %while.end, !dbg !558

while.body:                                       ; preds = %land.end
  %21 = bitcast i64* %incr to i8*, !dbg !560
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !560
  call void @llvm.dbg.declare(metadata i64* %incr, metadata !421, metadata !500), !dbg !561
  %22 = load i64, i64* %n, align 8, !dbg !562, !tbaa !510
  %add = add i64 %22, 2, !dbg !563
  store i64 %add, i64* %incr, align 8, !dbg !561, !tbaa !510
  %23 = load i64, i64* %incr, align 8, !dbg !564, !tbaa !510
  %cmp14 = icmp ugt i64 %23, 2147483647, !dbg !566
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !567

if.then.16:                                       ; preds = %while.body
  %24 = load i8*, i8** %p, align 8, !dbg !568, !tbaa !496
  call void @PyMem_RawFree(i8* %24), !dbg !570
  %25 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !571, !tbaa !496
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !572
  store i8* null, i8** %retval, !dbg !573
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !573

if.end.17:                                        ; preds = %while.body
  %26 = load i8*, i8** %p, align 8, !dbg !574, !tbaa !496
  %27 = load i64, i64* %n, align 8, !dbg !575, !tbaa !510
  %28 = load i64, i64* %incr, align 8, !dbg !576, !tbaa !510
  %add18 = add i64 %27, %28, !dbg !577
  %call19 = call i8* @PyMem_RawRealloc(i8* %26, i64 %add18), !dbg !578
  store i8* %call19, i8** %pr, align 8, !dbg !579, !tbaa !496
  %29 = load i8*, i8** %pr, align 8, !dbg !580, !tbaa !496
  %cmp20 = icmp eq i8* %29, null, !dbg !582
  br i1 %cmp20, label %if.then.22, label %if.end.24, !dbg !583

if.then.22:                                       ; preds = %if.end.17
  %30 = load i8*, i8** %p, align 8, !dbg !584, !tbaa !496
  call void @PyMem_RawFree(i8* %30), !dbg !586
  %call23 = call %struct._object* @PyErr_NoMemory(), !dbg !587
  store i8* null, i8** %retval, !dbg !588
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !588

if.end.24:                                        ; preds = %if.end.17
  %31 = load i8*, i8** %pr, align 8, !dbg !589, !tbaa !496
  store i8* %31, i8** %p, align 8, !dbg !590, !tbaa !496
  %32 = load i8*, i8** %p, align 8, !dbg !591, !tbaa !496
  %33 = load i64, i64* %n, align 8, !dbg !593, !tbaa !510
  %add.ptr = getelementptr i8, i8* %32, i64 %33, !dbg !594
  %34 = load i64, i64* %incr, align 8, !dbg !595, !tbaa !510
  %conv25 = trunc i64 %34 to i32, !dbg !596
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !597, !tbaa !496
  %call26 = call i32 @my_fgets(i8* %add.ptr, i32 %conv25, %struct._IO_FILE* %35), !dbg !598
  %cmp27 = icmp ne i32 %call26, 0, !dbg !599
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !600

if.then.29:                                       ; preds = %if.end.24
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !601

if.end.30:                                        ; preds = %if.end.24
  %36 = load i8*, i8** %p, align 8, !dbg !602, !tbaa !496
  %37 = load i64, i64* %n, align 8, !dbg !603, !tbaa !510
  %add.ptr31 = getelementptr i8, i8* %36, i64 %37, !dbg !604
  %call32 = call i64 @strlen(i8* %add.ptr31) #8, !dbg !605
  %38 = load i64, i64* %n, align 8, !dbg !606, !tbaa !510
  %add33 = add i64 %38, %call32, !dbg !606
  store i64 %add33, i64* %n, align 8, !dbg !606, !tbaa !510
  store i32 0, i32* %cleanup.dest.slot, !dbg !607
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.22, %if.then.16
  %39 = bitcast i64* %incr to i8*, !dbg !608
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !608
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !547

while.end:                                        ; preds = %cleanup, %land.end
  %40 = load i8*, i8** %p, align 8, !dbg !609, !tbaa !496
  %41 = load i64, i64* %n, align 8, !dbg !610, !tbaa !510
  %add34 = add i64 %41, 1, !dbg !611
  %call35 = call i8* @PyMem_RawRealloc(i8* %40, i64 %add34), !dbg !612
  store i8* %call35, i8** %pr, align 8, !dbg !613, !tbaa !496
  %42 = load i8*, i8** %pr, align 8, !dbg !614, !tbaa !496
  %cmp36 = icmp eq i8* %42, null, !dbg !616
  br i1 %cmp36, label %if.then.38, label %if.end.40, !dbg !617

if.then.38:                                       ; preds = %while.end
  %43 = load i8*, i8** %p, align 8, !dbg !618, !tbaa !496
  call void @PyMem_RawFree(i8* %43), !dbg !620
  %call39 = call %struct._object* @PyErr_NoMemory(), !dbg !621
  store i8* null, i8** %retval, !dbg !622
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !622

if.end.40:                                        ; preds = %while.end
  %44 = load i8*, i8** %pr, align 8, !dbg !623, !tbaa !496
  store i8* %44, i8** %retval, !dbg !624
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !624

cleanup.41:                                       ; preds = %if.end.40, %if.then.38, %cleanup, %sw.bb, %if.then
  %45 = bitcast i8** %pr to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !625
  %46 = bitcast i8** %p to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !625
  %47 = bitcast i64* %n to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !625
  %48 = load i8*, i8** %retval, !dbg !625
  ret i8* %48, !dbg !625
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @PyMem_RawMalloc(i64) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @my_fgets(i8* %buf, i32 %len, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !456, metadata !500), !dbg !626
  store i32 %len, i32* %len.addr, align 4, !tbaa !627
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !457, metadata !500), !dbg !629
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !458, metadata !500), !dbg !630
  %0 = bitcast i8** %p to i8*, !dbg !631
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !631
  call void @llvm.dbg.declare(metadata i8** %p, metadata !459, metadata !500), !dbg !632
  %1 = bitcast i32* %err to i8*, !dbg !633
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !633
  call void @llvm.dbg.declare(metadata i32* %err, metadata !460, metadata !500), !dbg !634
  br label %while.cond, !dbg !635

while.cond:                                       ; preds = %cleanup, %entry
  br label %while.body, !dbg !636

while.body:                                       ; preds = %while.cond
  %2 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !638, !tbaa !496
  %cmp = icmp ne i32 ()* %2, null, !dbg !640
  br i1 %cmp, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %while.body
  %3 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !642, !tbaa !496
  %call = call i32 %3(), !dbg !643
  br label %if.end, !dbg !644

if.end:                                           ; preds = %if.then, %while.body
  %call1 = call i32* @__errno_location() #1, !dbg !645
  store i32 0, i32* %call1, align 4, !dbg !646, !tbaa !627
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !647, !tbaa !496
  call void @clearerr(%struct._IO_FILE* %4) #2, !dbg !648
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !649, !tbaa !496
  %6 = load i32, i32* %len.addr, align 4, !dbg !651, !tbaa !627
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !652, !tbaa !496
  %call2 = call i8* @fgets(i8* %5, i32 %6, %struct._IO_FILE* %7), !dbg !653
  store i8* %call2, i8** %p, align 8, !dbg !654, !tbaa !496
  %8 = load i8*, i8** %p, align 8, !dbg !655, !tbaa !496
  %cmp3 = icmp ne i8* %8, null, !dbg !657
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !658

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !659

if.end.5:                                         ; preds = %if.end
  %call6 = call i32* @__errno_location() #1, !dbg !660
  %9 = load i32, i32* %call6, align 4, !dbg !661, !tbaa !627
  store i32 %9, i32* %err, align 4, !dbg !662, !tbaa !627
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !663, !tbaa !496
  %call7 = call i32 @feof(%struct._IO_FILE* %10) #2, !dbg !665
  %tobool = icmp ne i32 %call7, 0, !dbg !665
  br i1 %tobool, label %if.then.8, label %if.end.9, !dbg !666

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !667, !tbaa !496
  call void @clearerr(%struct._IO_FILE* %11) #2, !dbg !669
  store i32 -1, i32* %retval, !dbg !670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !670

if.end.9:                                         ; preds = %if.end.5
  %12 = load i32, i32* %err, align 4, !dbg !671, !tbaa !627
  %cmp10 = icmp eq i32 %12, 4, !dbg !672
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !673

if.then.11:                                       ; preds = %if.end.9
  %13 = bitcast i32* %s to i8*, !dbg !674
  call void @llvm.lifetime.start(i64 4, i8* %13) #2, !dbg !674
  call void @llvm.dbg.declare(metadata i32* %s, metadata !461, metadata !500), !dbg !675
  %14 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !676, !tbaa !496
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !677
  %call12 = call i32 @PyErr_CheckSignals(), !dbg !678
  store i32 %call12, i32* %s, align 4, !dbg !679, !tbaa !627
  %call13 = call %struct._ts* @PyEval_SaveThread(), !dbg !680
  %15 = load i32, i32* %s, align 4, !dbg !681, !tbaa !627
  %cmp14 = icmp slt i32 %15, 0, !dbg !683
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !684

if.then.15:                                       ; preds = %if.then.11
  store i32 1, i32* %retval, !dbg !685
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !685

if.end.16:                                        ; preds = %if.then.11
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !686

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %16 = bitcast i32* %s to i8*, !dbg !687
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !687
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.22 [
    i32 2, label %while.cond
  ]

if.end.17:                                        ; preds = %if.end.9
  %call18 = call i32 @PyOS_InterruptOccurred(), !dbg !688
  %tobool19 = icmp ne i32 %call18, 0, !dbg !688
  br i1 %tobool19, label %if.then.20, label %if.end.21, !dbg !690

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %retval, !dbg !691
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !691

if.end.21:                                        ; preds = %if.end.17
  store i32 -2, i32* %retval, !dbg !693
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !693

cleanup.22:                                       ; preds = %if.end.21, %if.then.20, %cleanup, %if.then.8, %if.then.4
  %17 = bitcast i32* %err to i8*, !dbg !694
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !694
  %18 = bitcast i8** %p to i8*, !dbg !694
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !694
  %19 = load i32, i32* %retval, !dbg !694
  ret i32 %19, !dbg !694
}

declare void @PyMem_RawFree(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i8* @PyMem_RawRealloc(i8*, i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i8* @PyOS_Readline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  %retval = alloca i8*, align 8
  %sys_stdin.addr = alloca %struct._IO_FILE*, align 8
  %sys_stdout.addr = alloca %struct._IO_FILE*, align 8
  %prompt.addr = alloca i8*, align 8
  %rv = alloca i8*, align 8
  %res = alloca i8*, align 8
  %len = alloca i64, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %atomic_val11 = alloca %struct._Py_atomic_address*, align 8
  %result13 = alloca i8*, align 8
  %volatile_data15 = alloca i8**, align 8
  %order18 = alloca i32, align 4
  %tmp25 = alloca i8*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdin.addr, metadata !425, metadata !500), !dbg !695
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %sys_stdout.addr, metadata !426, metadata !500), !dbg !696
  store i8* %prompt, i8** %prompt.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata i8** %prompt.addr, metadata !427, metadata !500), !dbg !697
  %0 = bitcast i8** %rv to i8*, !dbg !698
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !698
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !428, metadata !500), !dbg !699
  %1 = bitcast i8** %res to i8*, !dbg !698
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !698
  call void @llvm.dbg.declare(metadata i8** %res, metadata !429, metadata !500), !dbg !700
  %2 = bitcast i64* %len to i8*, !dbg !701
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !701
  call void @llvm.dbg.declare(metadata i64* %len, metadata !430, metadata !500), !dbg !702
  %3 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !703, !tbaa !496
  %4 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !704
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !431, metadata !500), !dbg !705
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !705, !tbaa !496
  %5 = bitcast i8** %result to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !706
  call void @llvm.dbg.declare(metadata i8** %result, metadata !439, metadata !500), !dbg !707
  %6 = bitcast i8*** %volatile_data to i8*, !dbg !708
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !708
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !440, metadata !500), !dbg !709
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !710, !tbaa !496
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %7, i32 0, i32 0, !dbg !711
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !709, !tbaa !496
  %8 = bitcast i32* %order to i8*, !dbg !712
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !712
  call void @llvm.dbg.declare(metadata i32* %order, metadata !443, metadata !500), !dbg !713
  store i32 0, i32* %order, align 4, !dbg !713, !tbaa !542
  %9 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !714, !tbaa !496
  %10 = bitcast %struct._Py_atomic_address* %9 to i8*, !dbg !714
  %11 = load i32, i32* %order, align 4, !dbg !715, !tbaa !542
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %10, i32 %11), !dbg !716
  %12 = load i32, i32* %order, align 4, !dbg !717, !tbaa !542
  switch i32 %12, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !718

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !719
  br label %sw.epilog, !dbg !724

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !725

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %13 = load i8**, i8*** %volatile_data, align 8, !dbg !727, !tbaa !496
  %14 = load volatile i8*, i8** %13, align 8, !dbg !730, !tbaa !496
  store i8* %14, i8** %result, align 8, !dbg !731, !tbaa !496
  %15 = load i32, i32* %order, align 4, !dbg !732, !tbaa !542
  switch i32 %15, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !733

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !734
  br label %sw.epilog.3, !dbg !739

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !740

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %16 = load i8*, i8** %result, align 8, !dbg !742, !tbaa !496
  store i8* %16, i8** %tmp, !dbg !745, !tbaa !496
  %17 = bitcast i32* %order to i8*, !dbg !746
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !746
  %18 = bitcast i8*** %volatile_data to i8*, !dbg !746
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !746
  %19 = bitcast i8** %result to i8*, !dbg !746
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !746
  %20 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !746
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !746
  %21 = load i8*, i8** %tmp, !dbg !747, !tbaa !496
  %22 = bitcast i8* %21 to %struct._ts*, !dbg !748
  %cmp = icmp eq %struct._ts* %3, %22, !dbg !749
  br i1 %cmp, label %if.then, label %if.end, !dbg !750

if.then:                                          ; preds = %sw.epilog.3
  %23 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !751, !tbaa !496
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)), !dbg !753
  store i8* null, i8** %retval, !dbg !754
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !754

if.end:                                           ; preds = %sw.epilog.3
  %24 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !755, !tbaa !496
  %cmp4 = icmp eq i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* %24, null, !dbg !757
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !758

if.then.5:                                        ; preds = %if.end
  store i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_StdioReadline, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !759, !tbaa !496
  br label %if.end.6, !dbg !761

if.end.6:                                         ; preds = %if.then.5, %if.end
  %25 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !762, !tbaa !496
  %cmp7 = icmp eq i8* %25, null, !dbg !764
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !765

if.then.8:                                        ; preds = %if.end.6
  %call = call i8* @PyThread_allocate_lock(), !dbg !766
  store i8* %call, i8** @_PyOS_ReadlineLock, align 8, !dbg !768, !tbaa !496
  br label %if.end.9, !dbg !769

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %26 = bitcast %struct._Py_atomic_address** %atomic_val11 to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val11, metadata !445, metadata !500), !dbg !771
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val11, align 8, !dbg !771, !tbaa !496
  %27 = bitcast i8** %result13 to i8*, !dbg !772
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !772
  call void @llvm.dbg.declare(metadata i8** %result13, metadata !447, metadata !500), !dbg !773
  %28 = bitcast i8*** %volatile_data15 to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !774
  call void @llvm.dbg.declare(metadata i8*** %volatile_data15, metadata !448, metadata !500), !dbg !775
  %29 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val11, align 8, !dbg !776, !tbaa !496
  %_value16 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %29, i32 0, i32 0, !dbg !777
  store i8** %_value16, i8*** %volatile_data15, align 8, !dbg !775, !tbaa !496
  %30 = bitcast i32* %order18 to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 4, i8* %30) #2, !dbg !778
  call void @llvm.dbg.declare(metadata i32* %order18, metadata !449, metadata !500), !dbg !779
  store i32 0, i32* %order18, align 4, !dbg !779, !tbaa !542
  %31 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val11, align 8, !dbg !780, !tbaa !496
  %32 = bitcast %struct._Py_atomic_address* %31 to i8*, !dbg !780
  %33 = load i32, i32* %order18, align 4, !dbg !781, !tbaa !542
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %32, i32 %33), !dbg !782
  %34 = load i32, i32* %order18, align 4, !dbg !783, !tbaa !542
  switch i32 %34, label %sw.default.20 [
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.19
  ], !dbg !784

sw.bb.19:                                         ; preds = %if.end.9, %if.end.9, %if.end.9
  call void @_Py_atomic_thread_fence(i32 2), !dbg !785
  br label %sw.epilog.21, !dbg !790

sw.default.20:                                    ; preds = %if.end.9
  br label %sw.epilog.21, !dbg !791

sw.epilog.21:                                     ; preds = %sw.default.20, %sw.bb.19
  %35 = load i8**, i8*** %volatile_data15, align 8, !dbg !793, !tbaa !496
  %36 = load volatile i8*, i8** %35, align 8, !dbg !796, !tbaa !496
  store i8* %36, i8** %result13, align 8, !dbg !797, !tbaa !496
  %37 = load i32, i32* %order18, align 4, !dbg !798, !tbaa !542
  switch i32 %37, label %sw.default.23 [
    i32 1, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.22
  ], !dbg !799

sw.bb.22:                                         ; preds = %sw.epilog.21, %sw.epilog.21, %sw.epilog.21
  call void @_Py_atomic_signal_fence(i32 1), !dbg !800
  br label %sw.epilog.24, !dbg !805

sw.default.23:                                    ; preds = %sw.epilog.21
  br label %sw.epilog.24, !dbg !806

sw.epilog.24:                                     ; preds = %sw.default.23, %sw.bb.22
  %38 = load i8*, i8** %result13, align 8, !dbg !808, !tbaa !496
  store i8* %38, i8** %tmp25, !dbg !811, !tbaa !496
  %39 = bitcast i32* %order18 to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !812
  %40 = bitcast i8*** %volatile_data15 to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !812
  %41 = bitcast i8** %result13 to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !812
  %42 = bitcast %struct._Py_atomic_address** %atomic_val11 to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !812
  %43 = load i8*, i8** %tmp25, !dbg !813, !tbaa !496
  %44 = bitcast i8* %43 to %struct._ts*, !dbg !814
  store %struct._ts* %44, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !815, !tbaa !496
  %45 = bitcast %struct._ts** %_save to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !816
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !450, metadata !500), !dbg !817
  %call27 = call %struct._ts* @PyEval_SaveThread(), !dbg !818
  store %struct._ts* %call27, %struct._ts** %_save, align 8, !dbg !819, !tbaa !496
  %46 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !820, !tbaa !496
  %call28 = call i32 @PyThread_acquire_lock(i8* %46, i32 1), !dbg !821
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !822, !tbaa !496
  %call29 = call i32 @fileno(%struct._IO_FILE* %47) #2, !dbg !824
  %call30 = call i32 @isatty(i32 %call29) #2, !dbg !825
  %tobool = icmp ne i32 %call30, 0, !dbg !825
  br i1 %tobool, label %lor.lhs.false, label %if.then.34, !dbg !826

lor.lhs.false:                                    ; preds = %sw.epilog.24
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !827, !tbaa !496
  %call31 = call i32 @fileno(%struct._IO_FILE* %48) #2, !dbg !829
  %call32 = call i32 @isatty(i32 %call31) #2, !dbg !830
  %tobool33 = icmp ne i32 %call32, 0, !dbg !830
  br i1 %tobool33, label %if.else, label %if.then.34, !dbg !831

if.then.34:                                       ; preds = %lor.lhs.false, %sw.epilog.24
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !832, !tbaa !496
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !833, !tbaa !496
  %51 = load i8*, i8** %prompt.addr, align 8, !dbg !834, !tbaa !496
  %call35 = call i8* @PyOS_StdioReadline(%struct._IO_FILE* %49, %struct._IO_FILE* %50, i8* %51), !dbg !835
  store i8* %call35, i8** %rv, align 8, !dbg !836, !tbaa !496
  br label %if.end.37, !dbg !837

if.else:                                          ; preds = %lor.lhs.false
  %52 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !838, !tbaa !496
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8, !dbg !839, !tbaa !496
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8, !dbg !840, !tbaa !496
  %55 = load i8*, i8** %prompt.addr, align 8, !dbg !841, !tbaa !496
  %call36 = call i8* %52(%struct._IO_FILE* %53, %struct._IO_FILE* %54, i8* %55), !dbg !842
  store i8* %call36, i8** %rv, align 8, !dbg !843, !tbaa !496
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %56 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !844, !tbaa !496
  call void @PyEval_RestoreThread(%struct._ts* %56), !dbg !845
  %57 = bitcast %struct._ts** %_save to i8*, !dbg !846
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !846
  %58 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !847, !tbaa !496
  call void @PyThread_release_lock(i8* %58), !dbg !848
  store %struct._ts* null, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !849, !tbaa !496
  %59 = load i8*, i8** %rv, align 8, !dbg !850, !tbaa !496
  %cmp38 = icmp eq i8* %59, null, !dbg !852
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !853

if.then.39:                                       ; preds = %if.end.37
  store i8* null, i8** %retval, !dbg !854
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !854

if.end.40:                                        ; preds = %if.end.37
  %60 = load i8*, i8** %rv, align 8, !dbg !855, !tbaa !496
  %call41 = call i64 @strlen(i8* %60) #8, !dbg !856
  %add = add i64 %call41, 1, !dbg !857
  store i64 %add, i64* %len, align 8, !dbg !858, !tbaa !510
  %61 = load i64, i64* %len, align 8, !dbg !859, !tbaa !510
  %call42 = call i8* @PyMem_Malloc(i64 %61), !dbg !860
  store i8* %call42, i8** %res, align 8, !dbg !861, !tbaa !496
  %62 = load i8*, i8** %res, align 8, !dbg !862, !tbaa !496
  %cmp43 = icmp ne i8* %62, null, !dbg !864
  br i1 %cmp43, label %if.then.44, label %if.end.45, !dbg !865

if.then.44:                                       ; preds = %if.end.40
  %63 = load i8*, i8** %res, align 8, !dbg !866, !tbaa !496
  %64 = load i8*, i8** %rv, align 8, !dbg !867, !tbaa !496
  %65 = load i64, i64* %len, align 8, !dbg !868, !tbaa !510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 %65, i32 1, i1 false), !dbg !869
  br label %if.end.45, !dbg !869

if.end.45:                                        ; preds = %if.then.44, %if.end.40
  %66 = load i8*, i8** %rv, align 8, !dbg !870, !tbaa !496
  call void @PyMem_RawFree(i8* %66), !dbg !871
  %67 = load i8*, i8** %res, align 8, !dbg !872, !tbaa !496
  store i8* %67, i8** %retval, !dbg !873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !873

cleanup:                                          ; preds = %if.end.45, %if.then.39, %if.then
  %68 = bitcast i64* %len to i8*, !dbg !874
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !874
  %69 = bitcast i8** %res to i8*, !dbg !874
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !874
  %70 = bitcast i8** %rv to i8*, !dbg !874
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !874
  %71 = load i8*, i8** %retval, !dbg !874
  ret i8* %71, !dbg !874
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !496
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !472, metadata !500), !dbg !875
  store i32 %order, i32* %order.addr, align 4, !tbaa !542
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !473, metadata !500), !dbg !876
  %0 = load i8*, i8** %address.addr, align 8, !dbg !877, !tbaa !496
  %1 = load i32, i32* %order.addr, align 4, !dbg !878, !tbaa !542
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !879

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !880

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !882

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !883, !tbaa !542
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !884

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !885

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !887

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !888
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !542
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !478, metadata !500), !dbg !889
  %0 = load i32, i32* %order.addr, align 4, !dbg !890, !tbaa !542
  %cmp = icmp ne i32 %0, 0, !dbg !892
  br i1 %cmp, label %if.then, label %if.end, !dbg !893

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !894, !srcloc !895
  br label %if.end, !dbg !894

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !896
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !542
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !481, metadata !500), !dbg !897
  %0 = load i32, i32* %order.addr, align 4, !dbg !898, !tbaa !542
  %cmp = icmp ne i32 %0, 0, !dbg !900
  br i1 %cmp, label %if.then, label %if.end, !dbg !901

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !902, !srcloc !903
  br label %if.end, !dbg !902

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !904
}

declare i8* @PyThread_allocate_lock() #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #6

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #6

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare void @PyThread_release_lock(i8*) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #6

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #6

declare i32 @PyErr_CheckSignals() #3

declare i32 @PyOS_InterruptOccurred() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!493, !494}
!llvm.ident = !{!495}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !409, globals: !482)
!1 = !DIFile(filename: "myreadline.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !14, !15, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !18, line: 139, baseType: !19)
!18 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !18, line: 69, size: 1536, align: 64, elements: !20)
!20 = !{!21, !23, !24, !379, !382, !383, !384, !385, !386, !387, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !19, file: !18, line: 72, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !18, line: 73, baseType: !22, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !19, file: !18, line: 74, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !18, line: 44, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !18, line: 19, size: 832, align: 64, elements: !28)
!28 = !{!29, !31, !32, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !18, line: 21, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !27, file: !18, line: 22, baseType: !22, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !27, file: !18, line: 24, baseType: !33, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !35, line: 109, baseType: !36)
!35 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !35, line: 105, size: 128, align: 64, elements: !37)
!37 = !{!38, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !36, file: !35, line: 107, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !40, line: 177, baseType: !41)
!40 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 181, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!45 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !36, file: !35, line: 108, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !35, line: 334, size: 3200, align: 64, elements: !49)
!49 = !{!50, !56, !59, !60, !61, !66, !127, !132, !137, !138, !143, !195, !226, !238, !244, !245, !246, !248, !250, !281, !282, !283, !292, !293, !298, !299, !301, !303, !313, !316, !334, !335, !336, !338, !340, !341, !343, !348, !353, !358, !359, !360, !361, !362, !363, !364, !365, !367}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !48, file: !35, line: 335, baseType: !51, size: 192, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !35, line: 114, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 111, size: 192, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !52, file: !35, line: 112, baseType: !34, size: 128, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !52, file: !35, line: 113, baseType: !39, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !48, file: !35, line: 336, baseType: !57, size: 64, align: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !48, file: !35, line: 337, baseType: !39, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !48, file: !35, line: 337, baseType: !39, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !48, file: !35, line: 341, baseType: !62, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !35, line: 308, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !33}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !48, file: !35, line: 342, baseType: !67, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !35, line: 314, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!15, !33, !71, !15}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 48, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 246, size: 1728, align: 64, elements: !75)
!74 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !96, !97, !98, !99, !101, !103, !105, !109, !112, !114, !115, !116, !117, !118, !122, !123}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !74, line: 247, baseType: !15, size: 32, align: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !73, file: !74, line: 252, baseType: !12, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !73, file: !74, line: 253, baseType: !12, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !73, file: !74, line: 254, baseType: !12, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !73, file: !74, line: 255, baseType: !12, size: 64, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !73, file: !74, line: 256, baseType: !12, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !73, file: !74, line: 257, baseType: !12, size: 64, align: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !73, file: !74, line: 258, baseType: !12, size: 64, align: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !73, file: !74, line: 259, baseType: !12, size: 64, align: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !73, file: !74, line: 261, baseType: !12, size: 64, align: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !73, file: !74, line: 262, baseType: !12, size: 64, align: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !73, file: !74, line: 263, baseType: !12, size: 64, align: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !73, file: !74, line: 265, baseType: !89, size: 64, align: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !74, line: 161, size: 192, align: 64, elements: !91)
!91 = !{!92, !93, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !90, file: !74, line: 162, baseType: !89, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !90, file: !74, line: 163, baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !90, file: !74, line: 167, baseType: !15, size: 32, align: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !73, file: !74, line: 267, baseType: !94, size: 64, align: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !73, file: !74, line: 269, baseType: !15, size: 32, align: 32, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !73, file: !74, line: 273, baseType: !15, size: 32, align: 32, offset: 928)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !73, file: !74, line: 275, baseType: !100, size: 64, align: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 140, baseType: !45)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !73, file: !74, line: 279, baseType: !102, size: 16, align: 16, offset: 1024)
!102 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !73, file: !74, line: 280, baseType: !104, size: 8, align: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !73, file: !74, line: 281, baseType: !106, size: 8, align: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !73, file: !74, line: 285, baseType: !110, size: 64, align: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !74, line: 155, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !74, line: 294, baseType: !113, size: 64, align: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 141, baseType: !45)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !73, file: !74, line: 303, baseType: !14, size: 64, align: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !73, file: !74, line: 304, baseType: !14, size: 64, align: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !73, file: !74, line: 305, baseType: !14, size: 64, align: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !73, file: !74, line: 306, baseType: !14, size: 64, align: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !73, file: !74, line: 307, baseType: !119, size: 64, align: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 62, baseType: !121)
!120 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!121 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !73, file: !74, line: 309, baseType: !15, size: 32, align: 32, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !73, file: !74, line: 311, baseType: !124, size: 160, align: 8, offset: 1568)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 20)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !48, file: !35, line: 343, baseType: !128, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !35, line: 316, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!33, !33, !12}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !48, file: !35, line: 344, baseType: !133, size: 64, align: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !35, line: 318, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!15, !33, !12, !33}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !48, file: !35, line: 345, baseType: !14, size: 64, align: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !48, file: !35, line: 346, baseType: !139, size: 64, align: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !35, line: 320, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!33, !33}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !48, file: !35, line: 350, baseType: !144, size: 64, align: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !35, line: 278, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 236, size: 2176, align: 64, elements: !147)
!147 = !{!148, !153, !154, !155, !156, !157, !162, !164, !165, !166, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !146, file: !35, line: 241, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !35, line: 166, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!33, !33, !33}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !146, file: !35, line: 242, baseType: !149, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !146, file: !35, line: 243, baseType: !149, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !146, file: !35, line: 244, baseType: !149, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !146, file: !35, line: 245, baseType: !149, size: 64, align: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !146, file: !35, line: 246, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !35, line: 167, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!33, !33, !33, !33}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !146, file: !35, line: 247, baseType: !163, size: 64, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !35, line: 165, baseType: !140)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !146, file: !35, line: 248, baseType: !163, size: 64, align: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !146, file: !35, line: 249, baseType: !163, size: 64, align: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !146, file: !35, line: 250, baseType: !167, size: 64, align: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !35, line: 168, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!15, !33}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !146, file: !35, line: 251, baseType: !163, size: 64, align: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !146, file: !35, line: 252, baseType: !149, size: 64, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !146, file: !35, line: 253, baseType: !149, size: 64, align: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !146, file: !35, line: 254, baseType: !149, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !146, file: !35, line: 255, baseType: !149, size: 64, align: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !146, file: !35, line: 256, baseType: !149, size: 64, align: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !146, file: !35, line: 257, baseType: !163, size: 64, align: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !146, file: !35, line: 258, baseType: !14, size: 64, align: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !146, file: !35, line: 259, baseType: !163, size: 64, align: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !146, file: !35, line: 261, baseType: !149, size: 64, align: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !146, file: !35, line: 262, baseType: !149, size: 64, align: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !146, file: !35, line: 263, baseType: !149, size: 64, align: 64, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !146, file: !35, line: 264, baseType: !149, size: 64, align: 64, offset: 1408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !146, file: !35, line: 265, baseType: !158, size: 64, align: 64, offset: 1472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !146, file: !35, line: 266, baseType: !149, size: 64, align: 64, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !146, file: !35, line: 267, baseType: !149, size: 64, align: 64, offset: 1600)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !146, file: !35, line: 268, baseType: !149, size: 64, align: 64, offset: 1664)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !146, file: !35, line: 269, baseType: !149, size: 64, align: 64, offset: 1728)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !146, file: !35, line: 270, baseType: !149, size: 64, align: 64, offset: 1792)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !146, file: !35, line: 272, baseType: !149, size: 64, align: 64, offset: 1856)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !146, file: !35, line: 273, baseType: !149, size: 64, align: 64, offset: 1920)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !146, file: !35, line: 274, baseType: !149, size: 64, align: 64, offset: 1984)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !146, file: !35, line: 275, baseType: !149, size: 64, align: 64, offset: 2048)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !146, file: !35, line: 277, baseType: !163, size: 64, align: 64, offset: 2112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !48, file: !35, line: 351, baseType: !196, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !35, line: 292, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 280, size: 640, align: 64, elements: !199)
!199 = !{!200, !205, !206, !211, !212, !213, !218, !219, !224, !225}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !198, file: !35, line: 281, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !35, line: 169, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!39, !33}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !198, file: !35, line: 282, baseType: !149, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !198, file: !35, line: 283, baseType: !207, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !35, line: 170, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!33, !33, !39}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !198, file: !35, line: 284, baseType: !207, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !198, file: !35, line: 285, baseType: !14, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !198, file: !35, line: 286, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !35, line: 172, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!15, !33, !39, !33}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !198, file: !35, line: 287, baseType: !14, size: 64, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !198, file: !35, line: 288, baseType: !220, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !35, line: 231, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!15, !33, !33}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !198, file: !35, line: 290, baseType: !149, size: 64, align: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !198, file: !35, line: 291, baseType: !207, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !48, file: !35, line: 352, baseType: !227, size: 64, align: 64, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !35, line: 298, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 294, size: 192, align: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !229, file: !35, line: 295, baseType: !201, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !229, file: !35, line: 296, baseType: !149, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !229, file: !35, line: 297, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !35, line: 174, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!15, !33, !33, !33}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !48, file: !35, line: 356, baseType: !239, size: 64, align: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !35, line: 321, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !33}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !40, line: 186, baseType: !39)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !48, file: !35, line: 357, baseType: !158, size: 64, align: 64, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !48, file: !35, line: 358, baseType: !139, size: 64, align: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !48, file: !35, line: 359, baseType: !247, size: 64, align: 64, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !35, line: 317, baseType: !150)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !48, file: !35, line: 360, baseType: !249, size: 64, align: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !35, line: 319, baseType: !235)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !48, file: !35, line: 363, baseType: !251, size: 64, align: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !35, line: 304, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 301, size: 128, align: 64, elements: !254)
!254 = !{!255, !276}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !253, file: !35, line: 302, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !35, line: 193, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!15, !33, !260, !15}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !35, line: 191, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !35, line: 178, size: 640, align: 64, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !35, line: 179, baseType: !14, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !262, file: !35, line: 180, baseType: !33, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !262, file: !35, line: 181, baseType: !39, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !262, file: !35, line: 182, baseType: !39, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !262, file: !35, line: 184, baseType: !15, size: 32, align: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !262, file: !35, line: 185, baseType: !15, size: 32, align: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !262, file: !35, line: 186, baseType: !12, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !262, file: !35, line: 187, baseType: !272, size: 64, align: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !262, file: !35, line: 188, baseType: !272, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !262, file: !35, line: 189, baseType: !272, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !262, file: !35, line: 190, baseType: !14, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !253, file: !35, line: 303, baseType: !277, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !35, line: 194, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !33, !260}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !48, file: !35, line: 366, baseType: !121, size: 64, align: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !48, file: !35, line: 368, baseType: !57, size: 64, align: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !48, file: !35, line: 372, baseType: !284, size: 64, align: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !35, line: 233, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!15, !33, !288, !14}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !35, line: 232, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!15, !33, !14}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !48, file: !35, line: 375, baseType: !167, size: 64, align: 64, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !48, file: !35, line: 379, baseType: !294, size: 64, align: 64, offset: 1600)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !35, line: 322, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!33, !33, !33, !15}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !48, file: !35, line: 382, baseType: !39, size: 64, align: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !48, file: !35, line: 385, baseType: !300, size: 64, align: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !35, line: 323, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !48, file: !35, line: 386, baseType: !302, size: 64, align: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !35, line: 324, baseType: !140)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !48, file: !35, line: 389, baseType: !304, size: 64, align: 64, offset: 1856)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !306, line: 40, size: 256, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !305, file: !306, line: 41, baseType: !57, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !305, file: !306, line: 42, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !306, line: 18, baseType: !150)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !305, file: !306, line: 43, baseType: !15, size: 32, align: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !305, file: !306, line: 45, baseType: !57, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !48, file: !35, line: 390, baseType: !314, size: 64, align: 64, offset: 1920)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !35, line: 390, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !48, file: !35, line: 391, baseType: !317, size: 64, align: 64, offset: 1984)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !319, line: 11, size: 320, align: 64, elements: !320)
!319 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!320 = !{!321, !322, !327, !332, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !319, line: 12, baseType: !12, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !319, line: 13, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !319, line: 8, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!33, !33, !14}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !318, file: !319, line: 14, baseType: !328, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !319, line: 9, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!15, !33, !33, !14}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !318, file: !319, line: 15, baseType: !12, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !318, file: !319, line: 16, baseType: !14, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !48, file: !35, line: 392, baseType: !47, size: 64, align: 64, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !48, file: !35, line: 393, baseType: !33, size: 64, align: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !48, file: !35, line: 394, baseType: !337, size: 64, align: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !35, line: 325, baseType: !159)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !48, file: !35, line: 395, baseType: !339, size: 64, align: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !35, line: 326, baseType: !235)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !48, file: !35, line: 396, baseType: !39, size: 64, align: 64, offset: 2304)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !48, file: !35, line: 397, baseType: !342, size: 64, align: 64, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !35, line: 327, baseType: !235)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !48, file: !35, line: 398, baseType: !344, size: 64, align: 64, offset: 2432)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !35, line: 329, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!33, !47, !39}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !48, file: !35, line: 399, baseType: !349, size: 64, align: 64, offset: 2496)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !35, line: 328, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!33, !47, !33, !33}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !48, file: !35, line: 400, baseType: !354, size: 64, align: 64, offset: 2560)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !35, line: 307, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !14}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !48, file: !35, line: 401, baseType: !167, size: 64, align: 64, offset: 2624)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !48, file: !35, line: 402, baseType: !33, size: 64, align: 64, offset: 2688)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !48, file: !35, line: 403, baseType: !33, size: 64, align: 64, offset: 2752)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !48, file: !35, line: 404, baseType: !33, size: 64, align: 64, offset: 2816)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !48, file: !35, line: 405, baseType: !33, size: 64, align: 64, offset: 2880)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !48, file: !35, line: 406, baseType: !33, size: 64, align: 64, offset: 2944)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !48, file: !35, line: 407, baseType: !62, size: 64, align: 64, offset: 3008)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !48, file: !35, line: 410, baseType: !366, size: 32, align: 32, offset: 3072)
!366 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !48, file: !35, line: 412, baseType: !62, size: 64, align: 64, offset: 3136)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !27, file: !18, line: 25, baseType: !33, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !27, file: !18, line: 26, baseType: !33, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !27, file: !18, line: 27, baseType: !33, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !27, file: !18, line: 28, baseType: !33, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !27, file: !18, line: 30, baseType: !33, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !27, file: !18, line: 31, baseType: !33, size: 64, align: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !27, file: !18, line: 32, baseType: !33, size: 64, align: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !27, file: !18, line: 33, baseType: !15, size: 32, align: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !27, file: !18, line: 34, baseType: !15, size: 32, align: 32, offset: 672)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !27, file: !18, line: 37, baseType: !15, size: 32, align: 32, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !27, file: !18, line: 43, baseType: !33, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !19, file: !18, line: 76, baseType: !380, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !18, line: 50, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !19, file: !18, line: 77, baseType: !15, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !19, file: !18, line: 78, baseType: !13, size: 8, align: 8, offset: 288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !19, file: !18, line: 80, baseType: !13, size: 8, align: 8, offset: 296)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !19, file: !18, line: 85, baseType: !15, size: 32, align: 32, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !19, file: !18, line: 86, baseType: !15, size: 32, align: 32, offset: 352)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !19, file: !18, line: 88, baseType: !388, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !18, line: 54, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!15, !33, !380, !15, !33}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !19, file: !18, line: 89, baseType: !388, size: 64, align: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !19, file: !18, line: 90, baseType: !33, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !19, file: !18, line: 91, baseType: !33, size: 64, align: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !19, file: !18, line: 93, baseType: !33, size: 64, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !19, file: !18, line: 94, baseType: !33, size: 64, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !19, file: !18, line: 95, baseType: !33, size: 64, align: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !19, file: !18, line: 97, baseType: !33, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !19, file: !18, line: 98, baseType: !33, size: 64, align: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !19, file: !18, line: 99, baseType: !33, size: 64, align: 64, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !19, file: !18, line: 101, baseType: !33, size: 64, align: 64, offset: 1024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !19, file: !18, line: 103, baseType: !15, size: 32, align: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !19, file: !18, line: 105, baseType: !33, size: 64, align: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !19, file: !18, line: 106, baseType: !45, size: 64, align: 64, offset: 1216)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !19, file: !18, line: 108, baseType: !15, size: 32, align: 32, offset: 1280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !19, file: !18, line: 109, baseType: !33, size: 64, align: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !19, file: !18, line: 134, baseType: !355, size: 64, align: 64, offset: 1408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !19, file: !18, line: 135, baseType: !14, size: 64, align: 64, offset: 1472)
!409 = !{!410, !423, !452, !465, !474, !479}
!410 = !DISubprogram(name: "PyOS_StdioReadline", scope: !411, file: !411, line: 108, type: !412, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_StdioReadline, variables: !414)
!411 = !DIFile(filename: "Parser/myreadline.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DISubroutineType(types: !413)
!413 = !{!12, !71, !71, !57}
!414 = !{!415, !416, !417, !418, !419, !420, !421}
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdin", arg: 1, scope: !410, file: !411, line: 108, type: !71)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdout", arg: 2, scope: !410, file: !411, line: 108, type: !71)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 3, scope: !410, file: !411, line: 108, type: !57)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !410, file: !411, line: 110, type: !119)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !410, file: !411, line: 111, type: !12)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pr", scope: !410, file: !411, line: 111, type: !12)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !422, file: !411, line: 137, type: !119)
!422 = distinct !DILexicalBlock(scope: !410, file: !411, line: 136, column: 37)
!423 = !DISubprogram(name: "PyOS_Readline", scope: !411, file: !411, line: 175, type: !412, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_Readline, variables: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !439, !440, !443, !445, !447, !448, !449, !450}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdin", arg: 1, scope: !423, file: !411, line: 175, type: !71)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdout", arg: 2, scope: !423, file: !411, line: 175, type: !71)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 3, scope: !423, file: !411, line: 175, type: !57)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !423, file: !411, line: 177, type: !12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !423, file: !411, line: 177, type: !12)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !423, file: !411, line: 178, type: !119)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !432, file: !411, line: 180, type: !434)
!432 = distinct !DILexicalBlock(scope: !433, file: !411, line: 180, column: 65)
!433 = distinct !DILexicalBlock(scope: !423, file: !411, line: 180, column: 9)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !436, file: !4, line: 32, baseType: !14, size: 64, align: 64)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !432, file: !411, line: 180, type: !14)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !432, file: !411, line: 180, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !432, file: !411, line: 180, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !446, file: !411, line: 197, type: !434)
!446 = distinct !DILexicalBlock(scope: !423, file: !411, line: 197, column: 60)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !446, file: !411, line: 197, type: !14)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !446, file: !411, line: 197, type: !441)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !446, file: !411, line: 197, type: !444)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !451, file: !411, line: 198, type: !16)
!451 = distinct !DILexicalBlock(scope: !423, file: !411, line: 198, column: 5)
!452 = !DISubprogram(name: "my_fgets", scope: !411, file: !411, line: 32, type: !453, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct._IO_FILE*)* @my_fgets, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!15, !12, !15, !71}
!455 = !{!456, !457, !458, !459, !460, !461}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !452, file: !411, line: 32, type: !12)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !452, file: !411, line: 32, type: !15)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !452, file: !411, line: 32, type: !71)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !452, file: !411, line: 37, type: !12)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !452, file: !411, line: 38, type: !15)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !462, file: !411, line: 82, type: !15)
!462 = distinct !DILexicalBlock(scope: !463, file: !411, line: 81, column: 23)
!463 = distinct !DILexicalBlock(scope: !464, file: !411, line: 81, column: 13)
!464 = distinct !DILexicalBlock(scope: !452, file: !411, line: 39, column: 15)
!465 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !466, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !471)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !444}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!471 = !{!472, !473}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !465, file: !4, line: 59, type: !468)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !465, file: !4, line: 59, type: !444)
!474 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !475, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !444}
!477 = !{!478}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !474, file: !4, line: 51, type: !444)
!479 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !475, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !480)
!480 = !{!481}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !479, file: !4, line: 44, type: !444)
!482 = !{!483, !487, !488, !490}
!483 = !DIGlobalVariable(name: "PyOS_InputHook", scope: !0, file: !411, line: 26, type: !484, isLocal: false, isDefinition: true, variable: i32 ()** @PyOS_InputHook)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!15}
!487 = !DIGlobalVariable(name: "_PyOS_ReadlineTState", scope: !0, file: !411, line: 19, type: !16, isLocal: false, isDefinition: true, variable: %struct._ts** @_PyOS_ReadlineTState)
!488 = !DIGlobalVariable(name: "PyOS_ReadlineFunctionPointer", scope: !0, file: !411, line: 169, type: !489, isLocal: false, isDefinition: true, variable: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!490 = !DIGlobalVariable(name: "_PyOS_ReadlineLock", scope: !0, file: !411, line: 23, type: !491, isLocal: true, isDefinition: true, variable: i8** @_PyOS_ReadlineLock)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !492, line: 5, baseType: !14)
!492 = !DIFile(filename: "Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!493 = !{i32 2, !"Dwarf Version", i32 4}
!494 = !{i32 2, !"Debug Info Version", i32 3}
!495 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!496 = !{!497, !497, i64 0}
!497 = !{!"any pointer", !498, i64 0}
!498 = !{!"omnipotent char", !499, i64 0}
!499 = !{!"Simple C/C++ TBAA"}
!500 = !DIExpression()
!501 = !DILocation(line: 108, column: 26, scope: !410)
!502 = !DILocation(line: 108, column: 43, scope: !410)
!503 = !DILocation(line: 108, column: 67, scope: !410)
!504 = !DILocation(line: 110, column: 5, scope: !410)
!505 = !DILocation(line: 110, column: 12, scope: !410)
!506 = !DILocation(line: 111, column: 5, scope: !410)
!507 = !DILocation(line: 111, column: 11, scope: !410)
!508 = !DILocation(line: 111, column: 15, scope: !410)
!509 = !DILocation(line: 113, column: 7, scope: !410)
!510 = !{!511, !511, i64 0}
!511 = !{!"long", !498, i64 0}
!512 = !DILocation(line: 114, column: 33, scope: !410)
!513 = !DILocation(line: 114, column: 17, scope: !410)
!514 = !DILocation(line: 114, column: 7, scope: !410)
!515 = !DILocation(line: 115, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !410, file: !411, line: 115, column: 9)
!517 = !DILocation(line: 115, column: 11, scope: !516)
!518 = !DILocation(line: 115, column: 9, scope: !410)
!519 = !DILocation(line: 116, column: 9, scope: !516)
!520 = !DILocation(line: 118, column: 12, scope: !410)
!521 = !DILocation(line: 118, column: 5, scope: !410)
!522 = !DILocation(line: 119, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !410, file: !411, line: 119, column: 9)
!524 = !DILocation(line: 119, column: 9, scope: !410)
!525 = !DILocation(line: 120, column: 17, scope: !523)
!526 = !DILocation(line: 120, column: 31, scope: !523)
!527 = !DILocation(line: 120, column: 9, scope: !523)
!528 = !DILocation(line: 121, column: 12, scope: !410)
!529 = !DILocation(line: 121, column: 5, scope: !410)
!530 = !DILocation(line: 123, column: 22, scope: !410)
!531 = !DILocation(line: 123, column: 30, scope: !410)
!532 = !DILocation(line: 123, column: 25, scope: !410)
!533 = !DILocation(line: 123, column: 33, scope: !410)
!534 = !DILocation(line: 123, column: 13, scope: !410)
!535 = !DILocation(line: 123, column: 5, scope: !410)
!536 = !DILocation(line: 127, column: 23, scope: !537)
!537 = distinct !DILexicalBlock(scope: !410, file: !411, line: 123, column: 45)
!538 = !DILocation(line: 127, column: 9, scope: !537)
!539 = !DILocation(line: 128, column: 9, scope: !537)
!540 = !DILocation(line: 132, column: 10, scope: !537)
!541 = !DILocation(line: 132, column: 12, scope: !537)
!542 = !{!498, !498, i64 0}
!543 = !DILocation(line: 133, column: 9, scope: !537)
!544 = !DILocation(line: 135, column: 16, scope: !410)
!545 = !DILocation(line: 135, column: 9, scope: !410)
!546 = !DILocation(line: 135, column: 7, scope: !410)
!547 = !DILocation(line: 136, column: 5, scope: !410)
!548 = !DILocation(line: 136, column: 12, scope: !549)
!549 = !DILexicalBlockFile(scope: !550, file: !411, discriminator: 4)
!550 = !DILexicalBlockFile(scope: !410, file: !411, discriminator: 1)
!551 = !DILocation(line: 136, column: 14, scope: !410)
!552 = !DILocation(line: 136, column: 18, scope: !410)
!553 = !DILocation(line: 136, column: 23, scope: !554)
!554 = !DILexicalBlockFile(scope: !410, file: !411, discriminator: 2)
!555 = !DILocation(line: 136, column: 24, scope: !410)
!556 = !DILocation(line: 136, column: 21, scope: !410)
!557 = !DILocation(line: 136, column: 28, scope: !410)
!558 = !DILocation(line: 136, column: 5, scope: !559)
!559 = !DILexicalBlockFile(scope: !410, file: !411, discriminator: 3)
!560 = !DILocation(line: 137, column: 9, scope: !422)
!561 = !DILocation(line: 137, column: 16, scope: !422)
!562 = !DILocation(line: 137, column: 23, scope: !422)
!563 = !DILocation(line: 137, column: 24, scope: !422)
!564 = !DILocation(line: 138, column: 13, scope: !565)
!565 = distinct !DILexicalBlock(scope: !422, file: !411, line: 138, column: 13)
!566 = !DILocation(line: 138, column: 18, scope: !565)
!567 = !DILocation(line: 138, column: 13, scope: !422)
!568 = !DILocation(line: 139, column: 27, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !411, line: 138, column: 32)
!570 = !DILocation(line: 139, column: 13, scope: !569)
!571 = !DILocation(line: 140, column: 29, scope: !569)
!572 = !DILocation(line: 140, column: 13, scope: !569)
!573 = !DILocation(line: 141, column: 13, scope: !569)
!574 = !DILocation(line: 143, column: 39, scope: !422)
!575 = !DILocation(line: 143, column: 42, scope: !422)
!576 = !DILocation(line: 143, column: 46, scope: !422)
!577 = !DILocation(line: 143, column: 44, scope: !422)
!578 = !DILocation(line: 143, column: 22, scope: !422)
!579 = !DILocation(line: 143, column: 12, scope: !422)
!580 = !DILocation(line: 144, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !422, file: !411, line: 144, column: 13)
!582 = !DILocation(line: 144, column: 16, scope: !581)
!583 = !DILocation(line: 144, column: 13, scope: !422)
!584 = !DILocation(line: 145, column: 27, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !411, line: 144, column: 31)
!586 = !DILocation(line: 145, column: 13, scope: !585)
!587 = !DILocation(line: 146, column: 13, scope: !585)
!588 = !DILocation(line: 147, column: 13, scope: !585)
!589 = !DILocation(line: 149, column: 13, scope: !422)
!590 = !DILocation(line: 149, column: 11, scope: !422)
!591 = !DILocation(line: 150, column: 22, scope: !592)
!592 = distinct !DILexicalBlock(scope: !422, file: !411, line: 150, column: 13)
!593 = !DILocation(line: 150, column: 24, scope: !592)
!594 = !DILocation(line: 150, column: 23, scope: !592)
!595 = !DILocation(line: 150, column: 32, scope: !592)
!596 = !DILocation(line: 150, column: 27, scope: !592)
!597 = !DILocation(line: 150, column: 38, scope: !592)
!598 = !DILocation(line: 150, column: 13, scope: !592)
!599 = !DILocation(line: 150, column: 49, scope: !592)
!600 = !DILocation(line: 150, column: 13, scope: !422)
!601 = !DILocation(line: 151, column: 13, scope: !592)
!602 = !DILocation(line: 152, column: 21, scope: !422)
!603 = !DILocation(line: 152, column: 23, scope: !422)
!604 = !DILocation(line: 152, column: 22, scope: !422)
!605 = !DILocation(line: 152, column: 14, scope: !422)
!606 = !DILocation(line: 152, column: 11, scope: !422)
!607 = !DILocation(line: 153, column: 5, scope: !410)
!608 = !DILocation(line: 153, column: 5, scope: !550)
!609 = !DILocation(line: 154, column: 35, scope: !410)
!610 = !DILocation(line: 154, column: 38, scope: !410)
!611 = !DILocation(line: 154, column: 39, scope: !410)
!612 = !DILocation(line: 154, column: 18, scope: !410)
!613 = !DILocation(line: 154, column: 8, scope: !410)
!614 = !DILocation(line: 155, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !410, file: !411, line: 155, column: 9)
!616 = !DILocation(line: 155, column: 12, scope: !615)
!617 = !DILocation(line: 155, column: 9, scope: !410)
!618 = !DILocation(line: 156, column: 23, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !411, line: 155, column: 27)
!620 = !DILocation(line: 156, column: 9, scope: !619)
!621 = !DILocation(line: 157, column: 9, scope: !619)
!622 = !DILocation(line: 158, column: 9, scope: !619)
!623 = !DILocation(line: 160, column: 12, scope: !410)
!624 = !DILocation(line: 160, column: 5, scope: !410)
!625 = !DILocation(line: 161, column: 1, scope: !410)
!626 = !DILocation(line: 32, column: 16, scope: !452)
!627 = !{!628, !628, i64 0}
!628 = !{!"int", !498, i64 0}
!629 = !DILocation(line: 32, column: 25, scope: !452)
!630 = !DILocation(line: 32, column: 36, scope: !452)
!631 = !DILocation(line: 37, column: 5, scope: !452)
!632 = !DILocation(line: 37, column: 11, scope: !452)
!633 = !DILocation(line: 38, column: 5, scope: !452)
!634 = !DILocation(line: 38, column: 9, scope: !452)
!635 = !DILocation(line: 39, column: 5, scope: !452)
!636 = !DILocation(line: 39, column: 5, scope: !637)
!637 = !DILexicalBlockFile(scope: !452, file: !411, discriminator: 1)
!638 = !DILocation(line: 40, column: 13, scope: !639)
!639 = distinct !DILexicalBlock(scope: !464, file: !411, line: 40, column: 13)
!640 = !DILocation(line: 40, column: 28, scope: !639)
!641 = !DILocation(line: 40, column: 13, scope: !464)
!642 = !DILocation(line: 41, column: 20, scope: !639)
!643 = !DILocation(line: 41, column: 19, scope: !639)
!644 = !DILocation(line: 41, column: 13, scope: !639)
!645 = !DILocation(line: 42, column: 11, scope: !464)
!646 = !DILocation(line: 42, column: 32, scope: !464)
!647 = !DILocation(line: 43, column: 18, scope: !464)
!648 = !DILocation(line: 43, column: 9, scope: !464)
!649 = !DILocation(line: 45, column: 23, scope: !650)
!650 = distinct !DILexicalBlock(scope: !464, file: !411, line: 44, column: 13)
!651 = !DILocation(line: 45, column: 28, scope: !650)
!652 = !DILocation(line: 45, column: 33, scope: !650)
!653 = !DILocation(line: 45, column: 17, scope: !650)
!654 = !DILocation(line: 45, column: 15, scope: !650)
!655 = !DILocation(line: 48, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !464, file: !411, line: 48, column: 13)
!657 = !DILocation(line: 48, column: 15, scope: !656)
!658 = !DILocation(line: 48, column: 13, scope: !464)
!659 = !DILocation(line: 49, column: 13, scope: !656)
!660 = !DILocation(line: 50, column: 17, scope: !464)
!661 = !DILocation(line: 50, column: 16, scope: !464)
!662 = !DILocation(line: 50, column: 13, scope: !464)
!663 = !DILocation(line: 76, column: 18, scope: !664)
!664 = distinct !DILexicalBlock(scope: !464, file: !411, line: 76, column: 13)
!665 = !DILocation(line: 76, column: 13, scope: !664)
!666 = !DILocation(line: 76, column: 13, scope: !464)
!667 = !DILocation(line: 77, column: 22, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !411, line: 76, column: 23)
!669 = !DILocation(line: 77, column: 13, scope: !668)
!670 = !DILocation(line: 78, column: 13, scope: !668)
!671 = !DILocation(line: 81, column: 13, scope: !463)
!672 = !DILocation(line: 81, column: 17, scope: !463)
!673 = !DILocation(line: 81, column: 13, scope: !464)
!674 = !DILocation(line: 82, column: 13, scope: !462)
!675 = !DILocation(line: 82, column: 17, scope: !462)
!676 = !DILocation(line: 84, column: 34, scope: !462)
!677 = !DILocation(line: 84, column: 13, scope: !462)
!678 = !DILocation(line: 86, column: 17, scope: !462)
!679 = !DILocation(line: 86, column: 15, scope: !462)
!680 = !DILocation(line: 88, column: 13, scope: !462)
!681 = !DILocation(line: 90, column: 17, scope: !682)
!682 = distinct !DILexicalBlock(scope: !462, file: !411, line: 90, column: 17)
!683 = !DILocation(line: 90, column: 19, scope: !682)
!684 = !DILocation(line: 90, column: 17, scope: !462)
!685 = !DILocation(line: 91, column: 21, scope: !682)
!686 = !DILocation(line: 93, column: 13, scope: !462)
!687 = !DILocation(line: 94, column: 9, scope: !463)
!688 = !DILocation(line: 96, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !464, file: !411, line: 96, column: 13)
!690 = !DILocation(line: 96, column: 13, scope: !464)
!691 = !DILocation(line: 97, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !411, line: 96, column: 39)
!693 = !DILocation(line: 99, column: 9, scope: !464)
!694 = !DILocation(line: 102, column: 1, scope: !452)
!695 = !DILocation(line: 175, column: 21, scope: !423)
!696 = !DILocation(line: 175, column: 38, scope: !423)
!697 = !DILocation(line: 175, column: 62, scope: !423)
!698 = !DILocation(line: 177, column: 5, scope: !423)
!699 = !DILocation(line: 177, column: 11, scope: !423)
!700 = !DILocation(line: 177, column: 16, scope: !423)
!701 = !DILocation(line: 178, column: 5, scope: !423)
!702 = !DILocation(line: 178, column: 12, scope: !423)
!703 = !DILocation(line: 180, column: 9, scope: !433)
!704 = !DILocation(line: 180, column: 67, scope: !432)
!705 = !DILocation(line: 180, column: 103, scope: !432)
!706 = !DILocation(line: 180, column: 141, scope: !432)
!707 = !DILocation(line: 180, column: 172, scope: !432)
!708 = !DILocation(line: 180, column: 180, scope: !432)
!709 = !DILocation(line: 180, column: 209, scope: !432)
!710 = !DILocation(line: 180, column: 226, scope: !432)
!711 = !DILocation(line: 180, column: 238, scope: !432)
!712 = !DILocation(line: 180, column: 246, scope: !432)
!713 = !DILocation(line: 180, column: 263, scope: !432)
!714 = !DILocation(line: 180, column: 323, scope: !432)
!715 = !DILocation(line: 180, column: 335, scope: !432)
!716 = !DILocation(line: 180, column: 297, scope: !432)
!717 = !DILocation(line: 180, column: 352, scope: !432)
!718 = !DILocation(line: 180, column: 345, scope: !432)
!719 = !DILocation(line: 180, column: 454, scope: !720)
!720 = !DILexicalBlockFile(scope: !721, file: !411, discriminator: 4)
!721 = !DILexicalBlockFile(scope: !722, file: !411, discriminator: 3)
!722 = !DILexicalBlockFile(scope: !723, file: !411, discriminator: 2)
!723 = distinct !DILexicalBlock(scope: !432, file: !411, line: 180, column: 359)
!724 = !DILocation(line: 180, column: 505, scope: !723)
!725 = !DILocation(line: 180, column: 521, scope: !726)
!726 = !DILexicalBlockFile(scope: !723, file: !411, discriminator: 1)
!727 = !DILocation(line: 180, column: 540, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !411, discriminator: 6)
!729 = !DILexicalBlockFile(scope: !432, file: !411, discriminator: 5)
!730 = !DILocation(line: 180, column: 539, scope: !432)
!731 = !DILocation(line: 180, column: 537, scope: !432)
!732 = !DILocation(line: 180, column: 562, scope: !432)
!733 = !DILocation(line: 180, column: 555, scope: !432)
!734 = !DILocation(line: 180, column: 664, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !411, discriminator: 10)
!736 = !DILexicalBlockFile(scope: !737, file: !411, discriminator: 9)
!737 = !DILexicalBlockFile(scope: !738, file: !411, discriminator: 8)
!738 = distinct !DILexicalBlock(scope: !432, file: !411, line: 180, column: 569)
!739 = !DILocation(line: 180, column: 715, scope: !738)
!740 = !DILocation(line: 180, column: 731, scope: !741)
!741 = !DILexicalBlockFile(scope: !738, file: !411, discriminator: 7)
!742 = !DILocation(line: 180, column: 742, scope: !743)
!743 = !DILexicalBlockFile(scope: !744, file: !411, discriminator: 12)
!744 = !DILexicalBlockFile(scope: !432, file: !411, discriminator: 11)
!745 = !DILocation(line: 180, column: 738, scope: !738)
!746 = !DILocation(line: 180, column: 750, scope: !433)
!747 = !DILocation(line: 180, column: 750, scope: !432)
!748 = !DILocation(line: 180, column: 34, scope: !433)
!749 = !DILocation(line: 180, column: 30, scope: !433)
!750 = !DILocation(line: 180, column: 9, scope: !423)
!751 = !DILocation(line: 181, column: 25, scope: !752)
!752 = distinct !DILexicalBlock(scope: !433, file: !411, line: 180, column: 755)
!753 = !DILocation(line: 181, column: 9, scope: !752)
!754 = !DILocation(line: 183, column: 9, scope: !752)
!755 = !DILocation(line: 187, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !423, file: !411, line: 187, column: 9)
!757 = !DILocation(line: 187, column: 38, scope: !756)
!758 = !DILocation(line: 187, column: 9, scope: !423)
!759 = !DILocation(line: 188, column: 38, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !411, line: 187, column: 53)
!761 = !DILocation(line: 189, column: 5, scope: !760)
!762 = !DILocation(line: 192, column: 9, scope: !763)
!763 = distinct !DILexicalBlock(scope: !423, file: !411, line: 192, column: 9)
!764 = !DILocation(line: 192, column: 28, scope: !763)
!765 = !DILocation(line: 192, column: 9, scope: !423)
!766 = !DILocation(line: 193, column: 30, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !411, line: 192, column: 43)
!768 = !DILocation(line: 193, column: 28, scope: !767)
!769 = !DILocation(line: 194, column: 5, scope: !767)
!770 = !DILocation(line: 197, column: 62, scope: !446)
!771 = !DILocation(line: 197, column: 98, scope: !446)
!772 = !DILocation(line: 197, column: 136, scope: !446)
!773 = !DILocation(line: 197, column: 167, scope: !446)
!774 = !DILocation(line: 197, column: 175, scope: !446)
!775 = !DILocation(line: 197, column: 204, scope: !446)
!776 = !DILocation(line: 197, column: 221, scope: !446)
!777 = !DILocation(line: 197, column: 233, scope: !446)
!778 = !DILocation(line: 197, column: 241, scope: !446)
!779 = !DILocation(line: 197, column: 258, scope: !446)
!780 = !DILocation(line: 197, column: 318, scope: !446)
!781 = !DILocation(line: 197, column: 330, scope: !446)
!782 = !DILocation(line: 197, column: 292, scope: !446)
!783 = !DILocation(line: 197, column: 347, scope: !446)
!784 = !DILocation(line: 197, column: 340, scope: !446)
!785 = !DILocation(line: 197, column: 449, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !411, discriminator: 4)
!787 = !DILexicalBlockFile(scope: !788, file: !411, discriminator: 3)
!788 = !DILexicalBlockFile(scope: !789, file: !411, discriminator: 2)
!789 = distinct !DILexicalBlock(scope: !446, file: !411, line: 197, column: 354)
!790 = !DILocation(line: 197, column: 500, scope: !789)
!791 = !DILocation(line: 197, column: 516, scope: !792)
!792 = !DILexicalBlockFile(scope: !789, file: !411, discriminator: 1)
!793 = !DILocation(line: 197, column: 535, scope: !794)
!794 = !DILexicalBlockFile(scope: !795, file: !411, discriminator: 6)
!795 = !DILexicalBlockFile(scope: !446, file: !411, discriminator: 5)
!796 = !DILocation(line: 197, column: 534, scope: !446)
!797 = !DILocation(line: 197, column: 532, scope: !446)
!798 = !DILocation(line: 197, column: 557, scope: !446)
!799 = !DILocation(line: 197, column: 550, scope: !446)
!800 = !DILocation(line: 197, column: 659, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !411, discriminator: 10)
!802 = !DILexicalBlockFile(scope: !803, file: !411, discriminator: 9)
!803 = !DILexicalBlockFile(scope: !804, file: !411, discriminator: 8)
!804 = distinct !DILexicalBlock(scope: !446, file: !411, line: 197, column: 564)
!805 = !DILocation(line: 197, column: 710, scope: !804)
!806 = !DILocation(line: 197, column: 726, scope: !807)
!807 = !DILexicalBlockFile(scope: !804, file: !411, discriminator: 7)
!808 = !DILocation(line: 197, column: 737, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !411, discriminator: 12)
!810 = !DILexicalBlockFile(scope: !446, file: !411, discriminator: 11)
!811 = !DILocation(line: 197, column: 733, scope: !804)
!812 = !DILocation(line: 197, column: 745, scope: !423)
!813 = !DILocation(line: 197, column: 745, scope: !446)
!814 = !DILocation(line: 197, column: 29, scope: !423)
!815 = !DILocation(line: 197, column: 26, scope: !423)
!816 = !DILocation(line: 198, column: 7, scope: !451)
!817 = !DILocation(line: 198, column: 22, scope: !451)
!818 = !DILocation(line: 198, column: 37, scope: !451)
!819 = !DILocation(line: 198, column: 35, scope: !451)
!820 = !DILocation(line: 200, column: 27, scope: !451)
!821 = !DILocation(line: 200, column: 5, scope: !451)
!822 = !DILocation(line: 208, column: 26, scope: !823)
!823 = distinct !DILexicalBlock(scope: !451, file: !411, line: 208, column: 9)
!824 = !DILocation(line: 208, column: 18, scope: !823)
!825 = !DILocation(line: 208, column: 10, scope: !823)
!826 = !DILocation(line: 208, column: 38, scope: !823)
!827 = !DILocation(line: 208, column: 58, scope: !828)
!828 = !DILexicalBlockFile(scope: !823, file: !411, discriminator: 1)
!829 = !DILocation(line: 208, column: 50, scope: !823)
!830 = !DILocation(line: 208, column: 42, scope: !823)
!831 = !DILocation(line: 208, column: 9, scope: !451)
!832 = !DILocation(line: 209, column: 34, scope: !823)
!833 = !DILocation(line: 209, column: 45, scope: !823)
!834 = !DILocation(line: 209, column: 57, scope: !823)
!835 = !DILocation(line: 209, column: 14, scope: !823)
!836 = !DILocation(line: 209, column: 12, scope: !823)
!837 = !DILocation(line: 209, column: 9, scope: !823)
!838 = !DILocation(line: 211, column: 16, scope: !823)
!839 = !DILocation(line: 211, column: 46, scope: !823)
!840 = !DILocation(line: 211, column: 57, scope: !823)
!841 = !DILocation(line: 212, column: 46, scope: !823)
!842 = !DILocation(line: 211, column: 14, scope: !823)
!843 = !DILocation(line: 211, column: 12, scope: !823)
!844 = !DILocation(line: 213, column: 26, scope: !451)
!845 = !DILocation(line: 213, column: 5, scope: !451)
!846 = !DILocation(line: 213, column: 34, scope: !423)
!847 = !DILocation(line: 216, column: 27, scope: !423)
!848 = !DILocation(line: 216, column: 5, scope: !423)
!849 = !DILocation(line: 219, column: 26, scope: !423)
!850 = !DILocation(line: 221, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !423, file: !411, line: 221, column: 9)
!852 = !DILocation(line: 221, column: 12, scope: !851)
!853 = !DILocation(line: 221, column: 9, scope: !423)
!854 = !DILocation(line: 222, column: 9, scope: !851)
!855 = !DILocation(line: 224, column: 18, scope: !423)
!856 = !DILocation(line: 224, column: 11, scope: !423)
!857 = !DILocation(line: 224, column: 22, scope: !423)
!858 = !DILocation(line: 224, column: 9, scope: !423)
!859 = !DILocation(line: 225, column: 24, scope: !423)
!860 = !DILocation(line: 225, column: 11, scope: !423)
!861 = !DILocation(line: 225, column: 9, scope: !423)
!862 = !DILocation(line: 226, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !423, file: !411, line: 226, column: 9)
!864 = !DILocation(line: 226, column: 13, scope: !863)
!865 = !DILocation(line: 226, column: 9, scope: !423)
!866 = !DILocation(line: 227, column: 16, scope: !863)
!867 = !DILocation(line: 227, column: 21, scope: !863)
!868 = !DILocation(line: 227, column: 25, scope: !863)
!869 = !DILocation(line: 227, column: 9, scope: !863)
!870 = !DILocation(line: 228, column: 19, scope: !423)
!871 = !DILocation(line: 228, column: 5, scope: !423)
!872 = !DILocation(line: 230, column: 12, scope: !423)
!873 = !DILocation(line: 230, column: 5, scope: !423)
!874 = !DILocation(line: 231, column: 1, scope: !423)
!875 = !DILocation(line: 59, column: 48, scope: !465)
!876 = !DILocation(line: 59, column: 74, scope: !465)
!877 = !DILocation(line: 61, column: 11, scope: !465)
!878 = !DILocation(line: 62, column: 12, scope: !465)
!879 = !DILocation(line: 62, column: 5, scope: !465)
!880 = !DILocation(line: 67, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !465, file: !4, line: 62, column: 19)
!882 = !DILocation(line: 70, column: 9, scope: !881)
!883 = !DILocation(line: 72, column: 12, scope: !465)
!884 = !DILocation(line: 72, column: 5, scope: !465)
!885 = !DILocation(line: 77, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !465, file: !4, line: 72, column: 19)
!887 = !DILocation(line: 80, column: 9, scope: !886)
!888 = !DILocation(line: 82, column: 1, scope: !465)
!889 = !DILocation(line: 51, column: 42, scope: !474)
!890 = !DILocation(line: 53, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !474, file: !4, line: 53, column: 9)
!892 = !DILocation(line: 53, column: 15, scope: !891)
!893 = !DILocation(line: 53, column: 9, scope: !474)
!894 = !DILocation(line: 54, column: 9, scope: !891)
!895 = !{i32 154996}
!896 = !DILocation(line: 55, column: 1, scope: !474)
!897 = !DILocation(line: 44, column: 42, scope: !479)
!898 = !DILocation(line: 46, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !479, file: !4, line: 46, column: 9)
!900 = !DILocation(line: 46, column: 15, scope: !899)
!901 = !DILocation(line: 46, column: 9, scope: !479)
!902 = !DILocation(line: 47, column: 9, scope: !899)
!903 = !{i32 154836}
!904 = !DILocation(line: 48, column: 1, scope: !479)
