; ModuleID = 'myreadline.o.bc'
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
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"input line too long\00", align 1
@_PyOS_ReadlineTState = common global %struct._ts* null, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"can't re-enter readline\00", align 1
@PyOS_ReadlineFunctionPointer = common global i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* null, align 8
@_PyOS_ReadlineLock = internal unnamed_addr global i8* null, align 8

; Function Attrs: nounwind uwtable
define i8* @PyOS_StdioReadline(%struct._IO_FILE* nocapture %sys_stdin, %struct._IO_FILE* nocapture %sys_stdout, i8* readonly %prompt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %sys_stdin, i64 0, metadata !414, metadata !495), !dbg !496
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %sys_stdout, i64 0, metadata !415, metadata !495), !dbg !497
  tail call void @llvm.dbg.value(metadata i8* %prompt, i64 0, metadata !416, metadata !495), !dbg !498
  tail call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !417, metadata !495), !dbg !499
  %call = tail call i8* @PyMem_RawMalloc(i64 100) #4, !dbg !500
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !418, metadata !495), !dbg !501
  %cmp = icmp eq i8* %call, null, !dbg !502
  br i1 %cmp, label %cleanup.41, label %if.end, !dbg !504

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fflush(%struct._IO_FILE* %sys_stdout) #4, !dbg !505
  %tobool = icmp eq i8* %prompt, null, !dbg !506
  br i1 %tobool, label %if.end.4, label %if.then.2, !dbg !508

if.then.2:                                        ; preds = %if.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !509, !tbaa !510
  %fputs = tail call i32 @fputs(i8* %prompt, %struct._IO_FILE* %0) #7, !dbg !514
  br label %if.end.4, !dbg !514

if.end.4:                                         ; preds = %if.end, %if.then.2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !515, !tbaa !510
  %call5 = tail call i32 @fflush(%struct._IO_FILE* %1) #4, !dbg !516
  %call6 = tail call fastcc i32 @my_fgets(i8* %call, i32 100, %struct._IO_FILE* %sys_stdin), !dbg !517
  switch i32 %call6, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
  ], !dbg !518

sw.bb:                                            ; preds = %if.end.4
  tail call void @PyMem_RawFree(i8* %call) #4, !dbg !519
  br label %cleanup.41, !dbg !521

sw.default:                                       ; preds = %if.end.4
  store i8 0, i8* %call, align 1, !dbg !522, !tbaa !523
  br label %sw.epilog, !dbg !524

sw.epilog:                                        ; preds = %sw.default, %if.end.4
  %call8 = tail call i64 @strlen(i8* %call) #8, !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %call8, i64 0, metadata !417, metadata !495), !dbg !499
  %cmp9.78 = icmp eq i64 %call8, 0, !dbg !526
  br i1 %cmp9.78, label %while.end, label %land.rhs.preheader, !dbg !527

land.rhs.preheader:                               ; preds = %sw.epilog
  br label %land.rhs, !dbg !528

land.rhs:                                         ; preds = %land.rhs.preheader, %cleanup.thread75
  %p.080 = phi i8* [ %call19, %cleanup.thread75 ], [ %call, %land.rhs.preheader ]
  %n.079 = phi i64 [ %add33, %cleanup.thread75 ], [ %call8, %land.rhs.preheader ]
  %sub = add i64 %n.079, -1, !dbg !528
  %arrayidx = getelementptr i8, i8* %p.080, i64 %sub, !dbg !529
  %2 = load i8, i8* %arrayidx, align 1, !dbg !529, !tbaa !523
  %cmp12 = icmp eq i8 %2, 10, !dbg !530
  br i1 %cmp12, label %while.end.loopexit, label %while.body, !dbg !531

while.body:                                       ; preds = %land.rhs
  %add = add i64 %n.079, 2, !dbg !533
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !420, metadata !495), !dbg !534
  %cmp14 = icmp ugt i64 %add, 2147483647, !dbg !535
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !537

if.then.16:                                       ; preds = %while.body
  %p.080.lcssa102 = phi i8* [ %p.080, %while.body ]
  tail call void @PyMem_RawFree(i8* %p.080.lcssa102) #4, !dbg !538
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !540, !tbaa !510
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !541
  br label %cleanup.41, !dbg !542

if.end.17:                                        ; preds = %while.body
  %add18 = add i64 %add, %n.079, !dbg !543
  %call19 = tail call i8* @PyMem_RawRealloc(i8* %p.080, i64 %add18) #4, !dbg !544
  tail call void @llvm.dbg.value(metadata i8* %call19, i64 0, metadata !419, metadata !495), !dbg !545
  %cmp20 = icmp eq i8* %call19, null, !dbg !546
  br i1 %cmp20, label %if.then.22, label %if.end.24, !dbg !548

if.then.22:                                       ; preds = %if.end.17
  %p.080.lcssa103 = phi i8* [ %p.080, %if.end.17 ]
  tail call void @PyMem_RawFree(i8* %p.080.lcssa103) #4, !dbg !549
  %call23 = tail call %struct._object* @PyErr_NoMemory() #4, !dbg !551
  br label %cleanup.41, !dbg !552

if.end.24:                                        ; preds = %if.end.17
  tail call void @llvm.dbg.value(metadata i8* %call19, i64 0, metadata !418, metadata !495), !dbg !501
  %add.ptr = getelementptr i8, i8* %call19, i64 %n.079, !dbg !553
  %conv25 = trunc i64 %add to i32, !dbg !555
  %call26 = tail call fastcc i32 @my_fgets(i8* %add.ptr, i32 %conv25, %struct._IO_FILE* %sys_stdin), !dbg !556
  %cmp27 = icmp eq i32 %call26, 0, !dbg !557
  br i1 %cmp27, label %cleanup.thread75, label %while.end.loopexit, !dbg !558

cleanup.thread75:                                 ; preds = %if.end.24
  %call32 = tail call i64 @strlen(i8* %add.ptr) #8, !dbg !559
  %add33 = add i64 %call32, %n.079, !dbg !560
  tail call void @llvm.dbg.value(metadata i64 %add33, i64 0, metadata !417, metadata !495), !dbg !499
  %cmp9 = icmp eq i64 %add33, 0, !dbg !526
  br i1 %cmp9, label %while.end.loopexit, label %land.rhs, !dbg !527

while.end.loopexit:                               ; preds = %if.end.24, %land.rhs, %cleanup.thread75
  %n.2.ph = phi i64 [ 0, %cleanup.thread75 ], [ %n.079, %land.rhs ], [ %n.079, %if.end.24 ]
  %p.2.ph = phi i8* [ %call19, %cleanup.thread75 ], [ %p.080, %land.rhs ], [ %call19, %if.end.24 ]
  br label %while.end, !dbg !561

while.end:                                        ; preds = %while.end.loopexit, %sw.epilog
  %n.2 = phi i64 [ 0, %sw.epilog ], [ %n.2.ph, %while.end.loopexit ]
  %p.2 = phi i8* [ %call, %sw.epilog ], [ %p.2.ph, %while.end.loopexit ]
  %add34 = add i64 %n.2, 1, !dbg !561
  %call35 = tail call i8* @PyMem_RawRealloc(i8* %p.2, i64 %add34) #4, !dbg !562
  tail call void @llvm.dbg.value(metadata i8* %call35, i64 0, metadata !419, metadata !495), !dbg !545
  %cmp36 = icmp eq i8* %call35, null, !dbg !563
  br i1 %cmp36, label %if.then.38, label %cleanup.41, !dbg !565

if.then.38:                                       ; preds = %while.end
  tail call void @PyMem_RawFree(i8* %p.2) #4, !dbg !566
  %call39 = tail call %struct._object* @PyErr_NoMemory() #4, !dbg !568
  br label %cleanup.41, !dbg !569

cleanup.41:                                       ; preds = %if.then.22, %if.then.16, %while.end, %entry, %if.then.38, %sw.bb
  %retval.2 = phi i8* [ null, %if.then.38 ], [ null, %sw.bb ], [ null, %entry ], [ %call35, %while.end ], [ null, %if.then.16 ], [ null, %if.then.22 ]
  ret i8* %retval.2, !dbg !570
}

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @my_fgets(i8* %buf, i32 %len, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !455, metadata !495), !dbg !571
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !456, metadata !495), !dbg !572
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !457, metadata !495), !dbg !573
  %call1 = tail call i32* @__errno_location() #6, !dbg !574
  br label %while.body, !dbg !575

while.body:                                       ; preds = %entry, %if.then.11
  %0 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8, !dbg !576, !tbaa !510
  %cmp = icmp eq i32 ()* %0, null, !dbg !578
  br i1 %cmp, label %if.end, label %if.then, !dbg !579

if.then:                                          ; preds = %while.body
  %call = tail call i32 %0() #4, !dbg !580
  br label %if.end, !dbg !581

if.end:                                           ; preds = %while.body, %if.then
  store i32 0, i32* %call1, align 4, !dbg !582, !tbaa !583
  tail call void @clearerr(%struct._IO_FILE* %fp) #4, !dbg !585
  %call2 = tail call i8* @fgets(i8* %buf, i32 %len, %struct._IO_FILE* %fp) #4, !dbg !586
  tail call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !458, metadata !495), !dbg !588
  %cmp3 = icmp eq i8* %call2, null, !dbg !589
  br i1 %cmp3, label %if.end.5, label %cleanup.22.loopexit, !dbg !591

if.end.5:                                         ; preds = %if.end
  %1 = load i32, i32* %call1, align 4, !dbg !592, !tbaa !583
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !459, metadata !495), !dbg !593
  %call7 = tail call i32 @feof(%struct._IO_FILE* %fp) #4, !dbg !594
  %tobool = icmp eq i32 %call7, 0, !dbg !594
  br i1 %tobool, label %if.end.9, label %if.then.8, !dbg !596

if.then.8:                                        ; preds = %if.end.5
  tail call void @clearerr(%struct._IO_FILE* %fp) #4, !dbg !597
  br label %cleanup.22, !dbg !599

if.end.9:                                         ; preds = %if.end.5
  %cmp10 = icmp eq i32 %1, 4, !dbg !600
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !601

if.then.11:                                       ; preds = %if.end.9
  %2 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !602, !tbaa !510
  tail call void @PyEval_RestoreThread(%struct._ts* %2) #4, !dbg !603
  %call12 = tail call i32 @PyErr_CheckSignals() #4, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %call12, i64 0, metadata !460, metadata !495), !dbg !605
  %call13 = tail call %struct._ts* @PyEval_SaveThread() #4, !dbg !606
  %not.cmp14 = icmp sgt i32 %call12, -1, !dbg !607
  br i1 %not.cmp14, label %while.body, label %cleanup.22.loopexit

if.end.17:                                        ; preds = %if.end.9
  %call18 = tail call i32 @PyOS_InterruptOccurred() #4, !dbg !609
  %tobool19 = icmp eq i32 %call18, 0, !dbg !609
  %.30 = select i1 %tobool19, i32 -2, i32 1, !dbg !611
  br label %cleanup.22, !dbg !611

cleanup.22.loopexit:                              ; preds = %if.then.11, %if.end
  %retval.2.ph = phi i32 [ 1, %if.then.11 ], [ 0, %if.end ]
  br label %cleanup.22, !dbg !612

cleanup.22:                                       ; preds = %cleanup.22.loopexit, %if.end.17, %if.then.8
  %retval.2 = phi i32 [ -1, %if.then.8 ], [ %.30, %if.end.17 ], [ %retval.2.ph, %cleanup.22.loopexit ]
  ret i32 %retval.2, !dbg !612
}

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @PyMem_RawRealloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define i8* @PyOS_Readline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %sys_stdin, i64 0, metadata !424, metadata !495), !dbg !613
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %sys_stdout, i64 0, metadata !425, metadata !495), !dbg !614
  tail call void @llvm.dbg.value(metadata i8* %prompt, i64 0, metadata !426, metadata !495), !dbg !615
  %0 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !616, !tbaa !510
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !430, metadata !495), !dbg !617
  tail call void @llvm.dbg.value(metadata !618, i64 0, metadata !439, metadata !495), !dbg !617
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !442, metadata !495), !dbg !617
  %1 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !619, !tbaa !510
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !438, metadata !495), !dbg !617
  %2 = bitcast i8* %1 to %struct._ts*, !dbg !622
  %cmp = icmp eq %struct._ts* %0, %2, !dbg !623
  br i1 %cmp, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !625, !tbaa !510
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !627
  br label %cleanup, !dbg !628

if.end:                                           ; preds = %entry
  %4 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !629, !tbaa !510
  %cmp4 = icmp eq i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* %4, null, !dbg !631
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !632

if.then.5:                                        ; preds = %if.end
  store i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_StdioReadline, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !633, !tbaa !510
  br label %if.end.6, !dbg !635

if.end.6:                                         ; preds = %if.then.5, %if.end
  %5 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !636, !tbaa !510
  %cmp7 = icmp eq i8* %5, null, !dbg !638
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !639

if.then.8:                                        ; preds = %if.end.6
  %call = tail call i8* @PyThread_allocate_lock() #4, !dbg !640
  store i8* %call, i8** @_PyOS_ReadlineLock, align 8, !dbg !642, !tbaa !510
  br label %if.end.9, !dbg !643

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !444, metadata !495), !dbg !644
  tail call void @llvm.dbg.value(metadata !618, i64 0, metadata !447, metadata !495), !dbg !644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !448, metadata !495), !dbg !644
  %6 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !645, !tbaa !510
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !446, metadata !495), !dbg !644
  store i8* %6, i8** bitcast (%struct._ts** @_PyOS_ReadlineTState to i8**), align 8, !dbg !648, !tbaa !510
  %call27 = tail call %struct._ts* @PyEval_SaveThread() #4, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct._ts* %call27, i64 0, metadata !449, metadata !495), !dbg !649
  %7 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !650, !tbaa !510
  %call28 = tail call i32 @PyThread_acquire_lock(i8* %7, i32 1) #4, !dbg !651
  %call29 = tail call i32 @fileno(%struct._IO_FILE* %sys_stdin) #4, !dbg !652
  %call30 = tail call i32 @isatty(i32 %call29) #4, !dbg !654
  %tobool = icmp eq i32 %call30, 0, !dbg !654
  br i1 %tobool, label %if.then.34, label %lor.lhs.false, !dbg !655

lor.lhs.false:                                    ; preds = %if.end.9
  %call31 = tail call i32 @fileno(%struct._IO_FILE* %sys_stdout) #4, !dbg !656
  %call32 = tail call i32 @isatty(i32 %call31) #4, !dbg !657
  %tobool33 = icmp eq i32 %call32, 0, !dbg !657
  br i1 %tobool33, label %if.then.34, label %if.else, !dbg !658

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.9
  %call35 = tail call i8* @PyOS_StdioReadline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt), !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %call35, i64 0, metadata !427, metadata !495), !dbg !660
  br label %if.end.37, !dbg !661

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8, !dbg !662, !tbaa !510
  %call36 = tail call i8* %8(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #4, !dbg !663
  tail call void @llvm.dbg.value(metadata i8* %call36, i64 0, metadata !427, metadata !495), !dbg !660
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %rv.0 = phi i8* [ %call36, %if.else ], [ %call35, %if.then.34 ]
  tail call void @PyEval_RestoreThread(%struct._ts* %call27) #4, !dbg !664
  %9 = load i8*, i8** @_PyOS_ReadlineLock, align 8, !dbg !665, !tbaa !510
  tail call void @PyThread_release_lock(i8* %9) #4, !dbg !666
  store %struct._ts* null, %struct._ts** @_PyOS_ReadlineTState, align 8, !dbg !667, !tbaa !510
  %cmp38 = icmp eq i8* %rv.0, null, !dbg !668
  br i1 %cmp38, label %cleanup, label %if.end.40, !dbg !670

if.end.40:                                        ; preds = %if.end.37
  %call41 = tail call i64 @strlen(i8* %rv.0) #8, !dbg !671
  %add = add i64 %call41, 1, !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !429, metadata !495), !dbg !673
  %call42 = tail call i8* @PyMem_Malloc(i64 %add) #4, !dbg !674
  tail call void @llvm.dbg.value(metadata i8* %call42, i64 0, metadata !428, metadata !495), !dbg !675
  %cmp43 = icmp eq i8* %call42, null, !dbg !676
  br i1 %cmp43, label %if.end.45, label %if.then.44, !dbg !678

if.then.44:                                       ; preds = %if.end.40
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call42, i8* %rv.0, i64 %add, i32 1, i1 false), !dbg !679
  br label %if.end.45, !dbg !679

if.end.45:                                        ; preds = %if.end.40, %if.then.44
  tail call void @PyMem_RawFree(i8* %rv.0) #4, !dbg !680
  br label %cleanup, !dbg !681

cleanup:                                          ; preds = %if.end.37, %if.end.45, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call42, %if.end.45 ], [ null, %if.end.37 ]
  ret i8* %retval.0, !dbg !682
}

declare i8* @PyThread_allocate_lock() #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #2

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyThread_release_lock(i8*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #2

declare i32 @PyErr_CheckSignals() #1

declare i32 @PyOS_InterruptOccurred() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { cold }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!492, !493}
!llvm.ident = !{!494}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !409, globals: !481)
!1 = !DIFile(filename: "Parser/myreadline.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!18 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!35 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !35, line: 105, size: 128, align: 64, elements: !37)
!37 = !{!38, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !36, file: !35, line: 107, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !40, line: 177, baseType: !41)
!40 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 181, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!74 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!120 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!306 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!319 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!409 = !{!410, !422, !451, !464, !473, !478}
!410 = !DISubprogram(name: "PyOS_StdioReadline", scope: !1, file: !1, line: 108, type: !411, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_StdioReadline, variables: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!12, !71, !71, !57}
!413 = !{!414, !415, !416, !417, !418, !419, !420}
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdin", arg: 1, scope: !410, file: !1, line: 108, type: !71)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdout", arg: 2, scope: !410, file: !1, line: 108, type: !71)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 3, scope: !410, file: !1, line: 108, type: !57)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !410, file: !1, line: 110, type: !119)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !410, file: !1, line: 111, type: !12)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pr", scope: !410, file: !1, line: 111, type: !12)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !421, file: !1, line: 137, type: !119)
!421 = distinct !DILexicalBlock(scope: !410, file: !1, line: 136, column: 37)
!422 = !DISubprogram(name: "PyOS_Readline", scope: !1, file: !1, line: 175, type: !411, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_Readline, variables: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !438, !439, !442, !444, !446, !447, !448, !449}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdin", arg: 1, scope: !422, file: !1, line: 175, type: !71)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sys_stdout", arg: 2, scope: !422, file: !1, line: 175, type: !71)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prompt", arg: 3, scope: !422, file: !1, line: 175, type: !57)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !422, file: !1, line: 177, type: !12)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !422, file: !1, line: 177, type: !12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !422, file: !1, line: 178, type: !119)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !431, file: !1, line: 180, type: !433)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 180, column: 33)
!432 = distinct !DILexicalBlock(scope: !422, file: !1, line: 180, column: 9)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !435, file: !4, line: 32, baseType: !14, size: 64, align: 64)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !431, file: !1, line: 180, type: !14)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !431, file: !1, line: 180, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !431, file: !1, line: 180, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !445, file: !1, line: 197, type: !433)
!445 = distinct !DILexicalBlock(scope: !422, file: !1, line: 197, column: 28)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !445, file: !1, line: 197, type: !14)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !445, file: !1, line: 197, type: !440)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !445, file: !1, line: 197, type: !443)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !450, file: !1, line: 198, type: !16)
!450 = distinct !DILexicalBlock(scope: !422, file: !1, line: 198, column: 5)
!451 = !DISubprogram(name: "my_fgets", scope: !1, file: !1, line: 32, type: !452, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct._IO_FILE*)* @my_fgets, variables: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!15, !12, !15, !71}
!454 = !{!455, !456, !457, !458, !459, !460}
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !451, file: !1, line: 32, type: !12)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !451, file: !1, line: 32, type: !15)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !451, file: !1, line: 32, type: !71)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !451, file: !1, line: 37, type: !12)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !451, file: !1, line: 38, type: !15)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !461, file: !1, line: 82, type: !15)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 81, column: 27)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 81, column: 13)
!463 = distinct !DILexicalBlock(scope: !451, file: !1, line: 39, column: 15)
!464 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !465, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !470)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467, !443}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!470 = !{!471, !472}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !464, file: !4, line: 59, type: !467)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !464, file: !4, line: 59, type: !443)
!473 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !474, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !443}
!476 = !{!477}
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !473, file: !4, line: 51, type: !443)
!478 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !474, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !479)
!479 = !{!480}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !478, file: !4, line: 44, type: !443)
!481 = !{!482, !486, !487, !489}
!482 = !DIGlobalVariable(name: "PyOS_InputHook", scope: !0, file: !1, line: 26, type: !483, isLocal: false, isDefinition: true, variable: i32 ()** @PyOS_InputHook)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!15}
!486 = !DIGlobalVariable(name: "_PyOS_ReadlineTState", scope: !0, file: !1, line: 19, type: !16, isLocal: false, isDefinition: true, variable: %struct._ts** @_PyOS_ReadlineTState)
!487 = !DIGlobalVariable(name: "PyOS_ReadlineFunctionPointer", scope: !0, file: !1, line: 169, type: !488, isLocal: false, isDefinition: true, variable: i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!489 = !DIGlobalVariable(name: "_PyOS_ReadlineLock", scope: !0, file: !1, line: 23, type: !490, isLocal: true, isDefinition: true, variable: i8** @_PyOS_ReadlineLock)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !491, line: 5, baseType: !14)
!491 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!492 = !{i32 2, !"Dwarf Version", i32 4}
!493 = !{i32 2, !"Debug Info Version", i32 3}
!494 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!495 = !DIExpression()
!496 = !DILocation(line: 108, column: 26, scope: !410)
!497 = !DILocation(line: 108, column: 43, scope: !410)
!498 = !DILocation(line: 108, column: 67, scope: !410)
!499 = !DILocation(line: 110, column: 12, scope: !410)
!500 = !DILocation(line: 114, column: 17, scope: !410)
!501 = !DILocation(line: 111, column: 11, scope: !410)
!502 = !DILocation(line: 115, column: 11, scope: !503)
!503 = distinct !DILexicalBlock(scope: !410, file: !1, line: 115, column: 9)
!504 = !DILocation(line: 115, column: 9, scope: !410)
!505 = !DILocation(line: 118, column: 5, scope: !410)
!506 = !DILocation(line: 119, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !410, file: !1, line: 119, column: 9)
!508 = !DILocation(line: 119, column: 9, scope: !410)
!509 = !DILocation(line: 120, column: 17, scope: !507)
!510 = !{!511, !511, i64 0}
!511 = !{!"any pointer", !512, i64 0}
!512 = !{!"omnipotent char", !513, i64 0}
!513 = !{!"Simple C/C++ TBAA"}
!514 = !DILocation(line: 120, column: 9, scope: !507)
!515 = !DILocation(line: 121, column: 12, scope: !410)
!516 = !DILocation(line: 121, column: 5, scope: !410)
!517 = !DILocation(line: 123, column: 13, scope: !410)
!518 = !DILocation(line: 123, column: 5, scope: !410)
!519 = !DILocation(line: 127, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !410, file: !1, line: 123, column: 45)
!521 = !DILocation(line: 128, column: 9, scope: !520)
!522 = !DILocation(line: 132, column: 12, scope: !520)
!523 = !{!512, !512, i64 0}
!524 = !DILocation(line: 133, column: 9, scope: !520)
!525 = !DILocation(line: 135, column: 9, scope: !410)
!526 = !DILocation(line: 136, column: 14, scope: !410)
!527 = !DILocation(line: 136, column: 18, scope: !410)
!528 = !DILocation(line: 136, column: 24, scope: !410)
!529 = !DILocation(line: 136, column: 21, scope: !410)
!530 = !DILocation(line: 136, column: 28, scope: !410)
!531 = !DILocation(line: 136, column: 5, scope: !532)
!532 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 3)
!533 = !DILocation(line: 137, column: 24, scope: !421)
!534 = !DILocation(line: 137, column: 16, scope: !421)
!535 = !DILocation(line: 138, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !421, file: !1, line: 138, column: 13)
!537 = !DILocation(line: 138, column: 13, scope: !421)
!538 = !DILocation(line: 139, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 138, column: 29)
!540 = !DILocation(line: 140, column: 29, scope: !539)
!541 = !DILocation(line: 140, column: 13, scope: !539)
!542 = !DILocation(line: 141, column: 13, scope: !539)
!543 = !DILocation(line: 143, column: 44, scope: !421)
!544 = !DILocation(line: 143, column: 22, scope: !421)
!545 = !DILocation(line: 111, column: 15, scope: !410)
!546 = !DILocation(line: 144, column: 16, scope: !547)
!547 = distinct !DILexicalBlock(scope: !421, file: !1, line: 144, column: 13)
!548 = !DILocation(line: 144, column: 13, scope: !421)
!549 = !DILocation(line: 145, column: 13, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !1, line: 144, column: 25)
!551 = !DILocation(line: 146, column: 13, scope: !550)
!552 = !DILocation(line: 147, column: 13, scope: !550)
!553 = !DILocation(line: 150, column: 23, scope: !554)
!554 = distinct !DILexicalBlock(scope: !421, file: !1, line: 150, column: 13)
!555 = !DILocation(line: 150, column: 27, scope: !554)
!556 = !DILocation(line: 150, column: 13, scope: !554)
!557 = !DILocation(line: 150, column: 49, scope: !554)
!558 = !DILocation(line: 150, column: 13, scope: !421)
!559 = !DILocation(line: 152, column: 14, scope: !421)
!560 = !DILocation(line: 152, column: 11, scope: !421)
!561 = !DILocation(line: 154, column: 39, scope: !410)
!562 = !DILocation(line: 154, column: 18, scope: !410)
!563 = !DILocation(line: 155, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !410, file: !1, line: 155, column: 9)
!565 = !DILocation(line: 155, column: 9, scope: !410)
!566 = !DILocation(line: 156, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !1, line: 155, column: 21)
!568 = !DILocation(line: 157, column: 9, scope: !567)
!569 = !DILocation(line: 158, column: 9, scope: !567)
!570 = !DILocation(line: 161, column: 1, scope: !410)
!571 = !DILocation(line: 32, column: 16, scope: !451)
!572 = !DILocation(line: 32, column: 25, scope: !451)
!573 = !DILocation(line: 32, column: 36, scope: !451)
!574 = !DILocation(line: 42, column: 9, scope: !463)
!575 = !DILocation(line: 39, column: 5, scope: !451)
!576 = !DILocation(line: 40, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !463, file: !1, line: 40, column: 13)
!578 = !DILocation(line: 40, column: 28, scope: !577)
!579 = !DILocation(line: 40, column: 13, scope: !463)
!580 = !DILocation(line: 41, column: 19, scope: !577)
!581 = !DILocation(line: 41, column: 13, scope: !577)
!582 = !DILocation(line: 42, column: 15, scope: !463)
!583 = !{!584, !584, i64 0}
!584 = !{!"int", !512, i64 0}
!585 = !DILocation(line: 43, column: 9, scope: !463)
!586 = !DILocation(line: 45, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !463, file: !1, line: 44, column: 13)
!588 = !DILocation(line: 37, column: 11, scope: !451)
!589 = !DILocation(line: 48, column: 15, scope: !590)
!590 = distinct !DILexicalBlock(scope: !463, file: !1, line: 48, column: 13)
!591 = !DILocation(line: 48, column: 13, scope: !463)
!592 = !DILocation(line: 50, column: 15, scope: !463)
!593 = !DILocation(line: 38, column: 9, scope: !451)
!594 = !DILocation(line: 76, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !463, file: !1, line: 76, column: 13)
!596 = !DILocation(line: 76, column: 13, scope: !463)
!597 = !DILocation(line: 77, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 76, column: 23)
!599 = !DILocation(line: 78, column: 13, scope: !598)
!600 = !DILocation(line: 81, column: 17, scope: !462)
!601 = !DILocation(line: 81, column: 13, scope: !463)
!602 = !DILocation(line: 84, column: 34, scope: !461)
!603 = !DILocation(line: 84, column: 13, scope: !461)
!604 = !DILocation(line: 86, column: 17, scope: !461)
!605 = !DILocation(line: 82, column: 17, scope: !461)
!606 = !DILocation(line: 88, column: 13, scope: !461)
!607 = !DILocation(line: 91, column: 21, scope: !608)
!608 = distinct !DILexicalBlock(scope: !461, file: !1, line: 90, column: 17)
!609 = !DILocation(line: 96, column: 13, scope: !610)
!610 = distinct !DILexicalBlock(scope: !463, file: !1, line: 96, column: 13)
!611 = !DILocation(line: 99, column: 9, scope: !463)
!612 = !DILocation(line: 102, column: 1, scope: !451)
!613 = !DILocation(line: 175, column: 21, scope: !422)
!614 = !DILocation(line: 175, column: 38, scope: !422)
!615 = !DILocation(line: 175, column: 62, scope: !422)
!616 = !DILocation(line: 180, column: 9, scope: !432)
!617 = !DILocation(line: 180, column: 33, scope: !431)
!618 = !{}
!619 = !DILocation(line: 180, column: 33, scope: !620)
!620 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 6)
!621 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 5)
!622 = !DILocation(line: 180, column: 33, scope: !432)
!623 = !DILocation(line: 180, column: 30, scope: !432)
!624 = !DILocation(line: 180, column: 9, scope: !422)
!625 = !DILocation(line: 181, column: 25, scope: !626)
!626 = distinct !DILexicalBlock(scope: !432, file: !1, line: 180, column: 54)
!627 = !DILocation(line: 181, column: 9, scope: !626)
!628 = !DILocation(line: 183, column: 9, scope: !626)
!629 = !DILocation(line: 187, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !422, file: !1, line: 187, column: 9)
!631 = !DILocation(line: 187, column: 38, scope: !630)
!632 = !DILocation(line: 187, column: 9, scope: !422)
!633 = !DILocation(line: 188, column: 38, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !1, line: 187, column: 47)
!635 = !DILocation(line: 189, column: 5, scope: !634)
!636 = !DILocation(line: 192, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !422, file: !1, line: 192, column: 9)
!638 = !DILocation(line: 192, column: 28, scope: !637)
!639 = !DILocation(line: 192, column: 9, scope: !422)
!640 = !DILocation(line: 193, column: 30, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !1, line: 192, column: 37)
!642 = !DILocation(line: 193, column: 28, scope: !641)
!643 = !DILocation(line: 194, column: 5, scope: !641)
!644 = !DILocation(line: 197, column: 28, scope: !445)
!645 = !DILocation(line: 197, column: 28, scope: !646)
!646 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 6)
!647 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 5)
!648 = !DILocation(line: 197, column: 26, scope: !422)
!649 = !DILocation(line: 198, column: 5, scope: !450)
!650 = !DILocation(line: 200, column: 27, scope: !450)
!651 = !DILocation(line: 200, column: 5, scope: !450)
!652 = !DILocation(line: 208, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !450, file: !1, line: 208, column: 9)
!654 = !DILocation(line: 208, column: 10, scope: !653)
!655 = !DILocation(line: 208, column: 38, scope: !653)
!656 = !DILocation(line: 208, column: 50, scope: !653)
!657 = !DILocation(line: 208, column: 42, scope: !653)
!658 = !DILocation(line: 208, column: 9, scope: !450)
!659 = !DILocation(line: 209, column: 14, scope: !653)
!660 = !DILocation(line: 177, column: 11, scope: !422)
!661 = !DILocation(line: 209, column: 9, scope: !653)
!662 = !DILocation(line: 211, column: 16, scope: !653)
!663 = !DILocation(line: 211, column: 14, scope: !653)
!664 = !DILocation(line: 213, column: 5, scope: !450)
!665 = !DILocation(line: 216, column: 27, scope: !422)
!666 = !DILocation(line: 216, column: 5, scope: !422)
!667 = !DILocation(line: 219, column: 26, scope: !422)
!668 = !DILocation(line: 221, column: 12, scope: !669)
!669 = distinct !DILexicalBlock(scope: !422, file: !1, line: 221, column: 9)
!670 = !DILocation(line: 221, column: 9, scope: !422)
!671 = !DILocation(line: 224, column: 11, scope: !422)
!672 = !DILocation(line: 224, column: 22, scope: !422)
!673 = !DILocation(line: 178, column: 12, scope: !422)
!674 = !DILocation(line: 225, column: 11, scope: !422)
!675 = !DILocation(line: 177, column: 16, scope: !422)
!676 = !DILocation(line: 226, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !422, file: !1, line: 226, column: 9)
!678 = !DILocation(line: 226, column: 9, scope: !422)
!679 = !DILocation(line: 227, column: 9, scope: !677)
!680 = !DILocation(line: 228, column: 5, scope: !422)
!681 = !DILocation(line: 230, column: 5, scope: !422)
!682 = !DILocation(line: 231, column: 1, scope: !422)
