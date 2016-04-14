; ModuleID = 'programs_new/Python-new/dynload_shlib.bc.ll'
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
%struct.anon = type { i64, i64, i8* }
%struct._Py_atomic_address = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@.str = private unnamed_addr constant [16 x i8] c".cpython-34m.so\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".abi3.so\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@_PyImport_DynLoadFiletab = global [4 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"./%-.255s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PyInit_%.200s\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@nhandles = internal global i32 0, align 4
@handles = internal global [128 x %struct.anon] zeroinitializer, align 16
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown dlopen() error\00", align 1

; Function Attrs: nounwind uwtable
define void ()* @_PyImport_GetDynLoadFunc(i8* %shortname, i8* %pathname, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca void ()*, align 8
  %shortname.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca void ()*, align 8
  %handle = alloca i8*, align 8
  %funcname = alloca [258 x i8], align 16
  %pathbuf = alloca [260 x i8], align 16
  %dlopenflags = alloca i32, align 4
  %i = alloca i32, align 4
  %statb = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %mod_name = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %error_ob = alloca %struct._object*, align 8
  %error = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  store i8* %shortname, i8** %shortname.addr, align 8, !tbaa !574
  call void @llvm.dbg.declare(metadata i8** %shortname.addr, metadata !420, metadata !578), !dbg !579
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !574
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !421, metadata !578), !dbg !580
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !574
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !422, metadata !578), !dbg !581
  %0 = bitcast void ()** %p to i8*, !dbg !582
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !582
  call void @llvm.dbg.declare(metadata void ()** %p, metadata !423, metadata !578), !dbg !583
  %1 = bitcast i8** %handle to i8*, !dbg !584
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !584
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !424, metadata !578), !dbg !585
  %2 = bitcast [258 x i8]* %funcname to i8*, !dbg !586
  call void @llvm.lifetime.start(i64 258, i8* %2) #2, !dbg !586
  call void @llvm.dbg.declare(metadata [258 x i8]* %funcname, metadata !425, metadata !578), !dbg !587
  %3 = bitcast [260 x i8]* %pathbuf to i8*, !dbg !588
  call void @llvm.lifetime.start(i64 260, i8* %3) #2, !dbg !588
  call void @llvm.dbg.declare(metadata [260 x i8]* %pathbuf, metadata !429, metadata !578), !dbg !589
  %4 = bitcast i32* %dlopenflags to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %dlopenflags, metadata !433, metadata !578), !dbg !591
  store i32 0, i32* %dlopenflags, align 4, !dbg !591, !tbaa !592
  %5 = load i8*, i8** %pathname.addr, align 8, !dbg !594, !tbaa !574
  %call = call i8* @strchr(i8* %5, i32 47) #2, !dbg !596
  %cmp = icmp eq i8* %call, null, !dbg !597
  br i1 %cmp, label %if.then, label %if.end, !dbg !598

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [260 x i8], [260 x i8]* %pathbuf, i32 0, i32 0, !dbg !599
  %6 = load i8*, i8** %pathname.addr, align 8, !dbg !601, !tbaa !574
  %call1 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %6), !dbg !602
  %arraydecay2 = getelementptr inbounds [260 x i8], [260 x i8]* %pathbuf, i32 0, i32 0, !dbg !603
  store i8* %arraydecay2, i8** %pathname.addr, align 8, !dbg !604, !tbaa !574
  br label %if.end, !dbg !605

if.end:                                           ; preds = %if.then, %entry
  %arraydecay3 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0, !dbg !606
  %7 = load i8*, i8** %shortname.addr, align 8, !dbg !607, !tbaa !574
  %call4 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay3, i64 258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %7), !dbg !608
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !609, !tbaa !574
  %cmp5 = icmp ne %struct._IO_FILE* %8, null, !dbg !610
  br i1 %cmp5, label %if.then.6, label %if.end.37, !dbg !611

if.then.6:                                        ; preds = %if.end
  %9 = bitcast i32* %i to i8*, !dbg !612
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !612
  call void @llvm.dbg.declare(metadata i32* %i, metadata !434, metadata !578), !dbg !613
  %10 = bitcast %struct.stat* %statb to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 144, i8* %10) #2, !dbg !614
  call void @llvm.dbg.declare(metadata %struct.stat* %statb, metadata !437, metadata !578), !dbg !615
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !616, !tbaa !574
  %call7 = call i32 @fileno(%struct._IO_FILE* %11) #2, !dbg !618
  %call8 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %call7, %struct.stat* %statb) #2, !dbg !619
  %cmp9 = icmp eq i32 %call8, -1, !dbg !620
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !621

if.then.10:                                       ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !622, !tbaa !574
  %call11 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12), !dbg !624
  store void ()* null, void ()** %retval, !dbg !625
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !625

if.end.12:                                        ; preds = %if.then.6
  store i32 0, i32* %i, align 4, !dbg !626, !tbaa !592
  br label %for.cond, !dbg !628

for.cond:                                         ; preds = %for.inc, %if.end.12
  %13 = load i32, i32* %i, align 4, !dbg !629, !tbaa !592
  %14 = load i32, i32* @nhandles, align 4, !dbg !633, !tbaa !592
  %cmp13 = icmp slt i32 %13, %14, !dbg !634
  br i1 %cmp13, label %for.body, label %for.end, !dbg !635

for.body:                                         ; preds = %for.cond
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 0, !dbg !636
  %15 = load i64, i64* %st_dev, align 8, !dbg !636, !tbaa !639
  %16 = load i32, i32* %i, align 4, !dbg !643, !tbaa !592
  %idxprom = sext i32 %16 to i64, !dbg !644
  %arrayidx = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom, !dbg !644
  %dev = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0, !dbg !645
  %17 = load i64, i64* %dev, align 8, !dbg !645, !tbaa !646
  %cmp14 = icmp eq i64 %15, %17, !dbg !648
  br i1 %cmp14, label %land.lhs.true, label %if.end.24, !dbg !649

land.lhs.true:                                    ; preds = %for.body
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 1, !dbg !650
  %18 = load i64, i64* %st_ino, align 8, !dbg !650, !tbaa !651
  %19 = load i32, i32* %i, align 4, !dbg !652, !tbaa !592
  %idxprom15 = sext i32 %19 to i64, !dbg !653
  %arrayidx16 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom15, !dbg !653
  %ino = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 1, !dbg !654
  %20 = load i64, i64* %ino, align 8, !dbg !654, !tbaa !655
  %cmp17 = icmp eq i64 %18, %20, !dbg !656
  br i1 %cmp17, label %if.then.18, label %if.end.24, !dbg !657

if.then.18:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %i, align 4, !dbg !658, !tbaa !592
  %idxprom19 = sext i32 %21 to i64, !dbg !660
  %arrayidx20 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom19, !dbg !660
  %handle21 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 2, !dbg !661
  %22 = load i8*, i8** %handle21, align 8, !dbg !661, !tbaa !662
  %arraydecay22 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0, !dbg !663
  %call23 = call i8* @dlsym(i8* %22, i8* %arraydecay22) #2, !dbg !664
  %23 = bitcast i8* %call23 to void ()*, !dbg !665
  store void ()* %23, void ()** %p, align 8, !dbg !666, !tbaa !574
  %24 = load void ()*, void ()** %p, align 8, !dbg !667, !tbaa !574
  store void ()* %24, void ()** %retval, !dbg !668
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !668

if.end.24:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !669

for.inc:                                          ; preds = %if.end.24
  %25 = load i32, i32* %i, align 4, !dbg !670, !tbaa !592
  %inc = add i32 %25, 1, !dbg !670
  store i32 %inc, i32* %i, align 4, !dbg !670, !tbaa !592
  br label %for.cond, !dbg !671

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* @nhandles, align 4, !dbg !672, !tbaa !592
  %cmp25 = icmp slt i32 %26, 128, !dbg !674
  br i1 %cmp25, label %if.then.26, label %if.end.35, !dbg !675

if.then.26:                                       ; preds = %for.end
  %st_dev27 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 0, !dbg !676
  %27 = load i64, i64* %st_dev27, align 8, !dbg !676, !tbaa !639
  %28 = load i32, i32* @nhandles, align 4, !dbg !678, !tbaa !592
  %idxprom28 = sext i32 %28 to i64, !dbg !679
  %arrayidx29 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom28, !dbg !679
  %dev30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 0, !dbg !680
  store i64 %27, i64* %dev30, align 8, !dbg !681, !tbaa !646
  %st_ino31 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 1, !dbg !682
  %29 = load i64, i64* %st_ino31, align 8, !dbg !682, !tbaa !651
  %30 = load i32, i32* @nhandles, align 4, !dbg !683, !tbaa !592
  %idxprom32 = sext i32 %30 to i64, !dbg !684
  %arrayidx33 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom32, !dbg !684
  %ino34 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 1, !dbg !685
  store i64 %29, i64* %ino34, align 8, !dbg !686, !tbaa !655
  br label %if.end.35, !dbg !687

if.end.35:                                        ; preds = %if.then.26, %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !688
  br label %cleanup, !dbg !688

cleanup:                                          ; preds = %if.end.35, %if.then.18, %if.then.10
  %31 = bitcast %struct.stat* %statb to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 144, i8* %31) #2, !dbg !689
  %32 = bitcast i32* %i to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !689
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.37, !dbg !691

if.end.37:                                        ; preds = %cleanup.cont, %if.end
  %33 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !692
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !692
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !474, metadata !578), !dbg !693
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !693, !tbaa !574
  %34 = bitcast i8** %result to i8*, !dbg !694
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !694
  call void @llvm.dbg.declare(metadata i8** %result, metadata !481, metadata !578), !dbg !695
  %35 = bitcast i8*** %volatile_data to i8*, !dbg !696
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !696
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !482, metadata !578), !dbg !697
  %36 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !698, !tbaa !574
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %36, i32 0, i32 0, !dbg !699
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !697, !tbaa !574
  %37 = bitcast i32* %order to i8*, !dbg !700
  call void @llvm.lifetime.start(i64 4, i8* %37) #2, !dbg !700
  call void @llvm.dbg.declare(metadata i32* %order, metadata !485, metadata !578), !dbg !701
  store i32 0, i32* %order, align 4, !dbg !701, !tbaa !702
  %38 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !703, !tbaa !574
  %39 = bitcast %struct._Py_atomic_address* %38 to i8*, !dbg !703
  %40 = load i32, i32* %order, align 4, !dbg !704, !tbaa !702
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %39, i32 %40), !dbg !705
  %41 = load i32, i32* %order, align 4, !dbg !706, !tbaa !702
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %if.end.37
  %.off = add i32 %41, -2
  %SwitchLeaf3 = icmp ule i32 %.off, 2
  br i1 %SwitchLeaf3, label %sw.bb, label %NewDefault.1

sw.bb:                                            ; preds = %LeafBlock.2
  call void @_Py_atomic_thread_fence(i32 2), !dbg !707
  br label %sw.epilog, !dbg !712

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %sw.default

sw.default:                                       ; preds = %NewDefault.1
  br label %sw.epilog, !dbg !713

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %42 = load i8**, i8*** %volatile_data, align 8, !dbg !715, !tbaa !574
  %43 = load volatile i8*, i8** %42, align 8, !dbg !718, !tbaa !574
  store i8* %43, i8** %result, align 8, !dbg !719, !tbaa !574
  %44 = load i32, i32* %order, align 4, !dbg !720, !tbaa !702
  br label %NodeBlock

NodeBlock:                                        ; preds = %sw.epilog
  %Pivot = icmp slt i32 %44, 3
  br i1 %Pivot, label %LeafBlock.5, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock
  %.off.8 = add i32 %44, -3
  %SwitchLeaf9 = icmp ule i32 %.off.8, 1
  br i1 %SwitchLeaf9, label %sw.bb.38, label %NewDefault.4

LeafBlock.5:                                      ; preds = %NodeBlock
  %SwitchLeaf6 = icmp eq i32 %44, 1
  br i1 %SwitchLeaf6, label %sw.bb.38, label %NewDefault.4

sw.bb.38:                                         ; preds = %LeafBlock.7, %LeafBlock.5
  call void @_Py_atomic_signal_fence(i32 1), !dbg !721
  br label %sw.epilog.40, !dbg !726

NewDefault.4:                                     ; preds = %LeafBlock.7, %LeafBlock.5
  br label %sw.default.39

sw.default.39:                                    ; preds = %NewDefault.4
  br label %sw.epilog.40, !dbg !727

sw.epilog.40:                                     ; preds = %sw.default.39, %sw.bb.38
  %45 = load i8*, i8** %result, align 8, !dbg !729, !tbaa !574
  store i8* %45, i8** %tmp, !dbg !732, !tbaa !574
  %46 = bitcast i32* %order to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 4, i8* %46) #2, !dbg !733
  %47 = bitcast i8*** %volatile_data to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !733
  %48 = bitcast i8** %result to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !733
  %49 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !733
  %50 = load i8*, i8** %tmp, !dbg !734, !tbaa !574
  %51 = bitcast i8* %50 to %struct._ts*, !dbg !735
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %51, i32 0, i32 2, !dbg !736
  %52 = load %struct._is*, %struct._is** %interp, align 8, !dbg !736, !tbaa !737
  %dlopenflags41 = getelementptr inbounds %struct._is, %struct._is* %52, i32 0, i32 12, !dbg !739
  %53 = load i32, i32* %dlopenflags41, align 4, !dbg !739, !tbaa !740
  store i32 %53, i32* %dlopenflags, align 4, !dbg !742, !tbaa !592
  %54 = load i8*, i8** %pathname.addr, align 8, !dbg !743, !tbaa !574
  %55 = load i32, i32* %dlopenflags, align 4, !dbg !744, !tbaa !592
  %call42 = call i8* @dlopen(i8* %54, i32 %55) #2, !dbg !745
  store i8* %call42, i8** %handle, align 8, !dbg !746, !tbaa !574
  %56 = load i8*, i8** %handle, align 8, !dbg !747, !tbaa !574
  %cmp43 = icmp eq i8* %56, null, !dbg !748
  br i1 %cmp43, label %if.then.44, label %if.end.139, !dbg !749

if.then.44:                                       ; preds = %sw.epilog.40
  %57 = bitcast %struct._object** %mod_name to i8*, !dbg !750
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !750
  call void @llvm.dbg.declare(metadata %struct._object** %mod_name, metadata !487, metadata !578), !dbg !751
  %58 = bitcast %struct._object** %path to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !752
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !490, metadata !578), !dbg !753
  %59 = bitcast %struct._object** %error_ob to i8*, !dbg !754
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !754
  call void @llvm.dbg.declare(metadata %struct._object** %error_ob, metadata !491, metadata !578), !dbg !755
  %60 = bitcast i8** %error to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !756
  call void @llvm.dbg.declare(metadata i8** %error, metadata !492, metadata !578), !dbg !757
  %call49 = call i8* @dlerror() #2, !dbg !758
  store i8* %call49, i8** %error, align 8, !dbg !757, !tbaa !574
  %61 = load i8*, i8** %error, align 8, !dbg !759, !tbaa !574
  %cmp50 = icmp eq i8* %61, null, !dbg !761
  br i1 %cmp50, label %if.then.51, label %if.end.52, !dbg !762

if.then.51:                                       ; preds = %if.then.44
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8** %error, align 8, !dbg !763, !tbaa !574
  br label %if.end.52, !dbg !764

if.end.52:                                        ; preds = %if.then.51, %if.then.44
  %62 = load i8*, i8** %error, align 8, !dbg !765, !tbaa !574
  %call53 = call %struct._object* @PyUnicode_FromString(i8* %62), !dbg !766
  store %struct._object* %call53, %struct._object** %error_ob, align 8, !dbg !767, !tbaa !574
  %63 = load %struct._object*, %struct._object** %error_ob, align 8, !dbg !768, !tbaa !574
  %cmp54 = icmp eq %struct._object* %63, null, !dbg !770
  br i1 %cmp54, label %if.then.55, label %if.end.56, !dbg !771

if.then.55:                                       ; preds = %if.end.52
  store void ()* null, void ()** %retval, !dbg !772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135, !dbg !772

if.end.56:                                        ; preds = %if.end.52
  %64 = load i8*, i8** %shortname.addr, align 8, !dbg !773, !tbaa !574
  %call57 = call %struct._object* @PyUnicode_FromString(i8* %64), !dbg !774
  store %struct._object* %call57, %struct._object** %mod_name, align 8, !dbg !775, !tbaa !574
  %65 = load %struct._object*, %struct._object** %mod_name, align 8, !dbg !776, !tbaa !574
  %cmp58 = icmp eq %struct._object* %65, null, !dbg !777
  br i1 %cmp58, label %if.then.59, label %if.end.64, !dbg !778

if.then.59:                                       ; preds = %if.end.56
  br label %do.body, !dbg !779

do.body:                                          ; preds = %if.then.59
  %66 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !780
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !780
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !493, metadata !578), !dbg !782
  %67 = load %struct._object*, %struct._object** %error_ob, align 8, !dbg !783, !tbaa !574
  store %struct._object* %67, %struct._object** %_py_decref_tmp, align 8, !dbg !782, !tbaa !574
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !784, !tbaa !574
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !786
  %69 = load i64, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !788
  %dec = add i64 %69, -1, !dbg !787
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !788
  %cmp61 = icmp ne i64 %dec, 0, !dbg !790
  br i1 %cmp61, label %if.then.62, label %if.else, !dbg !791

if.then.62:                                       ; preds = %do.body
  br label %if.end.63, !dbg !792

if.else:                                          ; preds = %do.body
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !794, !tbaa !574
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !796
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !796, !tbaa !797
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !798
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !798, !tbaa !799
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !802, !tbaa !574
  call void %72(%struct._object* %73), !dbg !803
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.62
  %74 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !804
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !804
  br label %do.cond, !dbg !806

do.cond:                                          ; preds = %if.end.63
  br label %do.end, !dbg !807

do.end:                                           ; preds = %do.cond
  store void ()* null, void ()** %retval, !dbg !809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135, !dbg !809

if.end.64:                                        ; preds = %if.end.56
  %75 = load i8*, i8** %pathname.addr, align 8, !dbg !810, !tbaa !574
  %call65 = call %struct._object* @PyUnicode_FromString(i8* %75), !dbg !811
  store %struct._object* %call65, %struct._object** %path, align 8, !dbg !812, !tbaa !574
  %76 = load %struct._object*, %struct._object** %path, align 8, !dbg !813, !tbaa !574
  %cmp66 = icmp eq %struct._object* %76, null, !dbg !814
  br i1 %cmp66, label %if.then.67, label %if.end.94, !dbg !815

if.then.67:                                       ; preds = %if.end.64
  br label %do.body.68, !dbg !816

do.body.68:                                       ; preds = %if.then.67
  %77 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !817
  call void @llvm.lifetime.start(i64 8, i8* %77) #2, !dbg !817
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp70, metadata !497, metadata !578), !dbg !819
  %78 = load %struct._object*, %struct._object** %error_ob, align 8, !dbg !820, !tbaa !574
  store %struct._object* %78, %struct._object** %_py_decref_tmp70, align 8, !dbg !819, !tbaa !574
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !821, !tbaa !574
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !823
  %80 = load i64, i64* %ob_refcnt71, align 8, !dbg !824, !tbaa !788
  %dec72 = add i64 %80, -1, !dbg !824
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !824, !tbaa !788
  %cmp73 = icmp ne i64 %dec72, 0, !dbg !825
  br i1 %cmp73, label %if.then.74, label %if.else.75, !dbg !826

if.then.74:                                       ; preds = %do.body.68
  br label %if.end.78, !dbg !827

if.else.75:                                       ; preds = %do.body.68
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !829, !tbaa !574
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !831
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !831, !tbaa !797
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !832
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !832, !tbaa !799
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !833, !tbaa !574
  call void %83(%struct._object* %84), !dbg !834
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %85 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !835
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !835
  br label %do.cond.79, !dbg !837

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !838

do.end.80:                                        ; preds = %do.cond.79
  br label %do.body.81, !dbg !840

do.body.81:                                       ; preds = %do.end.80
  %86 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !841
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !841
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp83, metadata !501, metadata !578), !dbg !843
  %87 = load %struct._object*, %struct._object** %mod_name, align 8, !dbg !844, !tbaa !574
  store %struct._object* %87, %struct._object** %_py_decref_tmp83, align 8, !dbg !843, !tbaa !574
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !845, !tbaa !574
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !847
  %89 = load i64, i64* %ob_refcnt84, align 8, !dbg !848, !tbaa !788
  %dec85 = add i64 %89, -1, !dbg !848
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !848, !tbaa !788
  %cmp86 = icmp ne i64 %dec85, 0, !dbg !849
  br i1 %cmp86, label %if.then.87, label %if.else.88, !dbg !850

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91, !dbg !851

if.else.88:                                       ; preds = %do.body.81
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !853, !tbaa !574
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !855
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !855, !tbaa !797
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !856
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !856, !tbaa !799
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !857, !tbaa !574
  call void %92(%struct._object* %93), !dbg !858
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  %94 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !859
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !859
  br label %do.cond.92, !dbg !860

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !861

do.end.93:                                        ; preds = %do.cond.92
  store void ()* null, void ()** %retval, !dbg !863
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135, !dbg !863

if.end.94:                                        ; preds = %if.end.64
  %95 = load %struct._object*, %struct._object** %error_ob, align 8, !dbg !864, !tbaa !574
  %96 = load %struct._object*, %struct._object** %mod_name, align 8, !dbg !865, !tbaa !574
  %97 = load %struct._object*, %struct._object** %path, align 8, !dbg !866, !tbaa !574
  %call95 = call %struct._object* @PyErr_SetImportError(%struct._object* %95, %struct._object* %96, %struct._object* %97), !dbg !867
  br label %do.body.96, !dbg !868

do.body.96:                                       ; preds = %if.end.94
  %98 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !869
  call void @llvm.lifetime.start(i64 8, i8* %98) #2, !dbg !869
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp98, metadata !503, metadata !578), !dbg !871
  %99 = load %struct._object*, %struct._object** %error_ob, align 8, !dbg !872, !tbaa !574
  store %struct._object* %99, %struct._object** %_py_decref_tmp98, align 8, !dbg !871, !tbaa !574
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !873, !tbaa !574
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0, !dbg !875
  %101 = load i64, i64* %ob_refcnt99, align 8, !dbg !876, !tbaa !788
  %dec100 = add i64 %101, -1, !dbg !876
  store i64 %dec100, i64* %ob_refcnt99, align 8, !dbg !876, !tbaa !788
  %cmp101 = icmp ne i64 %dec100, 0, !dbg !877
  br i1 %cmp101, label %if.then.102, label %if.else.103, !dbg !878

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106, !dbg !879

if.else.103:                                      ; preds = %do.body.96
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !881, !tbaa !574
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1, !dbg !883
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !883, !tbaa !797
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4, !dbg !884
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !884, !tbaa !799
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !885, !tbaa !574
  call void %104(%struct._object* %105), !dbg !886
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %106 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !887
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !887
  br label %do.cond.107, !dbg !889

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !890

do.end.108:                                       ; preds = %do.cond.107
  br label %do.body.109, !dbg !892

do.body.109:                                      ; preds = %do.end.108
  %107 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !893
  call void @llvm.lifetime.start(i64 8, i8* %107) #2, !dbg !893
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp111, metadata !505, metadata !578), !dbg !895
  %108 = load %struct._object*, %struct._object** %mod_name, align 8, !dbg !896, !tbaa !574
  store %struct._object* %108, %struct._object** %_py_decref_tmp111, align 8, !dbg !895, !tbaa !574
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !897, !tbaa !574
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0, !dbg !899
  %110 = load i64, i64* %ob_refcnt112, align 8, !dbg !900, !tbaa !788
  %dec113 = add i64 %110, -1, !dbg !900
  store i64 %dec113, i64* %ob_refcnt112, align 8, !dbg !900, !tbaa !788
  %cmp114 = icmp ne i64 %dec113, 0, !dbg !901
  br i1 %cmp114, label %if.then.115, label %if.else.116, !dbg !902

if.then.115:                                      ; preds = %do.body.109
  br label %if.end.119, !dbg !903

if.else.116:                                      ; preds = %do.body.109
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !905, !tbaa !574
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1, !dbg !907
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8, !dbg !907, !tbaa !797
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4, !dbg !908
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8, !dbg !908, !tbaa !799
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !909, !tbaa !574
  call void %113(%struct._object* %114), !dbg !910
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  %115 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !911
  call void @llvm.lifetime.end(i64 8, i8* %115) #2, !dbg !911
  br label %do.cond.120, !dbg !912

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121, !dbg !913

do.end.121:                                       ; preds = %do.cond.120
  br label %do.body.122, !dbg !915

do.body.122:                                      ; preds = %do.end.121
  %116 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !916
  call void @llvm.lifetime.start(i64 8, i8* %116) #2, !dbg !916
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp124, metadata !507, metadata !578), !dbg !918
  %117 = load %struct._object*, %struct._object** %path, align 8, !dbg !919, !tbaa !574
  store %struct._object* %117, %struct._object** %_py_decref_tmp124, align 8, !dbg !918, !tbaa !574
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !920, !tbaa !574
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0, !dbg !922
  %119 = load i64, i64* %ob_refcnt125, align 8, !dbg !923, !tbaa !788
  %dec126 = add i64 %119, -1, !dbg !923
  store i64 %dec126, i64* %ob_refcnt125, align 8, !dbg !923, !tbaa !788
  %cmp127 = icmp ne i64 %dec126, 0, !dbg !924
  br i1 %cmp127, label %if.then.128, label %if.else.129, !dbg !925

if.then.128:                                      ; preds = %do.body.122
  br label %if.end.132, !dbg !926

if.else.129:                                      ; preds = %do.body.122
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !928, !tbaa !574
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1, !dbg !930
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !930, !tbaa !797
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4, !dbg !931
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8, !dbg !931, !tbaa !799
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !932, !tbaa !574
  call void %122(%struct._object* %123), !dbg !933
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  %124 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !934
  call void @llvm.lifetime.end(i64 8, i8* %124) #2, !dbg !934
  br label %do.cond.133, !dbg !935

do.cond.133:                                      ; preds = %if.end.132
  br label %do.end.134, !dbg !936

do.end.134:                                       ; preds = %do.cond.133
  store void ()* null, void ()** %retval, !dbg !938
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135, !dbg !938

cleanup.135:                                      ; preds = %do.end.134, %do.end.93, %do.end, %if.then.55
  %125 = bitcast i8** %error to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !939
  %126 = bitcast %struct._object** %error_ob to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !939
  %127 = bitcast %struct._object** %path to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !939
  %128 = bitcast %struct._object** %mod_name to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !939
  br label %cleanup.151

if.end.139:                                       ; preds = %sw.epilog.40
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !940, !tbaa !574
  %cmp140 = icmp ne %struct._IO_FILE* %129, null, !dbg !942
  br i1 %cmp140, label %land.lhs.true.141, label %if.end.148, !dbg !943

land.lhs.true.141:                                ; preds = %if.end.139
  %130 = load i32, i32* @nhandles, align 4, !dbg !944, !tbaa !592
  %cmp142 = icmp slt i32 %130, 128, !dbg !946
  br i1 %cmp142, label %if.then.143, label %if.end.148, !dbg !947

if.then.143:                                      ; preds = %land.lhs.true.141
  %131 = load i8*, i8** %handle, align 8, !dbg !948, !tbaa !574
  %132 = load i32, i32* @nhandles, align 4, !dbg !949, !tbaa !592
  %inc144 = add i32 %132, 1, !dbg !949
  store i32 %inc144, i32* @nhandles, align 4, !dbg !949, !tbaa !592
  %idxprom145 = sext i32 %132 to i64, !dbg !950
  %arrayidx146 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom145, !dbg !950
  %handle147 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx146, i32 0, i32 2, !dbg !951
  store i8* %131, i8** %handle147, align 8, !dbg !952, !tbaa !662
  br label %if.end.148, !dbg !950

if.end.148:                                       ; preds = %if.then.143, %land.lhs.true.141, %if.end.139
  %133 = load i8*, i8** %handle, align 8, !dbg !953, !tbaa !574
  %arraydecay149 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0, !dbg !954
  %call150 = call i8* @dlsym(i8* %133, i8* %arraydecay149) #2, !dbg !955
  %134 = bitcast i8* %call150 to void ()*, !dbg !956
  store void ()* %134, void ()** %p, align 8, !dbg !957, !tbaa !574
  %135 = load void ()*, void ()** %p, align 8, !dbg !958, !tbaa !574
  store void ()* %135, void ()** %retval, !dbg !959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151, !dbg !959

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.151

cleanup.151:                                      ; preds = %NewDefault, %if.end.148, %cleanup.135
  %136 = bitcast i32* %dlopenflags to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !960
  %137 = bitcast [260 x i8]* %pathbuf to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 260, i8* %137) #2, !dbg !960
  %138 = bitcast [258 x i8]* %funcname to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 258, i8* %138) #2, !dbg !960
  %139 = bitcast i8** %handle to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !960
  %140 = bitcast void ()** %p to i8*, !dbg !960
  call void @llvm.lifetime.end(i64 8, i8* %140) #2, !dbg !960
  %141 = load void ()*, void ()** %retval, !dbg !960
  ret void ()* %141, !dbg !960
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #4

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !574
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !543, metadata !578), !dbg !961
  store i32 %order, i32* %order.addr, align 4, !tbaa !702
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !544, metadata !578), !dbg !962
  %0 = load i8*, i8** %address.addr, align 8, !dbg !963, !tbaa !574
  %1 = load i32, i32* %order.addr, align 4, !dbg !964, !tbaa !702
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
  br label %sw.epilog, !dbg !965

sw.bb.1:                                          ; preds = %LeafBlock
  br label %sw.epilog, !dbg !967

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !968, !tbaa !702
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
  br label %sw.epilog.4, !dbg !969

sw.bb.3:                                          ; preds = %NodeBlock.11, %LeafBlock.4
  br label %sw.epilog.4, !dbg !971

NewDefault.3:                                     ; preds = %LeafBlock.8, %LeafBlock.4
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %NewDefault.3, %sw.bb.3, %sw.bb.2
  ret void, !dbg !972
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !702
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !549, metadata !578), !dbg !973
  %0 = load i32, i32* %order.addr, align 4, !dbg !974, !tbaa !702
  %cmp = icmp ne i32 %0, 0, !dbg !976
  br i1 %cmp, label %if.then, label %if.end, !dbg !977

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !978, !srcloc !979
  br label %if.end, !dbg !978

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !980
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !702
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !552, metadata !578), !dbg !981
  %0 = load i32, i32* %order.addr, align 4, !dbg !982, !tbaa !702
  %cmp = icmp ne i32 %0, 0, !dbg !984
  br i1 %cmp, label %if.then, label %if.end, !dbg !985

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !986, !srcloc !987
  br label %if.end, !dbg !986

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !988
}

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @dlerror() #3

declare %struct._object* @PyUnicode_FromString(i8*) #4

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #5 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !592
  call void @llvm.dbg.declare(metadata i32* %__fd.addr, metadata !534, metadata !578), !dbg !989
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !574
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !535, metadata !578), !dbg !990
  %0 = load i32, i32* %__fd.addr, align 4, !dbg !991, !tbaa !592
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !992, !tbaa !574
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #2, !dbg !993
  ret i32 %call, !dbg !994
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!571, !572}
!llvm.ident = !{!573}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !414, globals: !553)
!1 = !DIFile(filename: "dynload_shlib.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !13, !18, !35}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "dl_funcptr", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./Python/importdl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !20, line: 139, baseType: !21)
!20 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !20, line: 69, size: 1536, align: 64, elements: !22)
!22 = !{!23, !25, !26, !384, !387, !388, !389, !390, !391, !392, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !21, file: !20, line: 72, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !20, line: 73, baseType: !24, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !21, file: !20, line: 74, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !20, line: 44, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !20, line: 19, size: 832, align: 64, elements: !30)
!30 = !{!31, !33, !34, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !20, line: 21, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !29, file: !20, line: 22, baseType: !24, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !29, file: !20, line: 24, baseType: !35, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !37, line: 109, baseType: !38)
!37 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !37, line: 105, size: 128, align: 64, elements: !39)
!39 = !{!40, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !38, file: !37, line: 107, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !42, line: 177, baseType: !43)
!42 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !44, line: 102, baseType: !45)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 181, baseType: !47)
!46 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!47 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !38, file: !37, line: 108, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !37, line: 334, size: 3200, align: 64, elements: !51)
!51 = !{!52, !58, !62, !63, !64, !69, !132, !137, !142, !143, !148, !200, !231, !243, !249, !250, !251, !253, !255, !286, !287, !288, !297, !298, !303, !304, !306, !308, !318, !321, !339, !340, !341, !343, !345, !346, !348, !353, !358, !363, !364, !365, !366, !367, !368, !369, !370, !372}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !50, file: !37, line: 335, baseType: !53, size: 192, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !37, line: 114, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 111, size: 192, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !54, file: !37, line: 112, baseType: !36, size: 128, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !54, file: !37, line: 113, baseType: !41, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !50, file: !37, line: 336, baseType: !59, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !50, file: !37, line: 337, baseType: !41, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !50, file: !37, line: 337, baseType: !41, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !50, file: !37, line: 341, baseType: !65, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !37, line: 308, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !35}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !50, file: !37, line: 342, baseType: !70, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !37, line: 314, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !35, !75, !74}
!74 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 48, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 246, size: 1728, align: 64, elements: !79)
!78 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!79 = !{!80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !101, !102, !103, !104, !106, !108, !110, !114, !117, !119, !120, !121, !122, !123, !127, !128}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !78, line: 247, baseType: !74, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !77, file: !78, line: 252, baseType: !82, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !77, file: !78, line: 253, baseType: !82, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !77, file: !78, line: 254, baseType: !82, size: 64, align: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !77, file: !78, line: 255, baseType: !82, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !77, file: !78, line: 256, baseType: !82, size: 64, align: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !77, file: !78, line: 257, baseType: !82, size: 64, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !77, file: !78, line: 258, baseType: !82, size: 64, align: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !77, file: !78, line: 259, baseType: !82, size: 64, align: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !77, file: !78, line: 261, baseType: !82, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !77, file: !78, line: 262, baseType: !82, size: 64, align: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !77, file: !78, line: 263, baseType: !82, size: 64, align: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !77, file: !78, line: 265, baseType: !94, size: 64, align: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !78, line: 161, size: 192, align: 64, elements: !96)
!96 = !{!97, !98, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !95, file: !78, line: 162, baseType: !94, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !95, file: !78, line: 163, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !95, file: !78, line: 167, baseType: !74, size: 32, align: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !77, file: !78, line: 267, baseType: !99, size: 64, align: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !77, file: !78, line: 269, baseType: !74, size: 32, align: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !77, file: !78, line: 273, baseType: !74, size: 32, align: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !77, file: !78, line: 275, baseType: !105, size: 64, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 140, baseType: !47)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !77, file: !78, line: 279, baseType: !107, size: 16, align: 16, offset: 1024)
!107 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !77, file: !78, line: 280, baseType: !109, size: 8, align: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !77, file: !78, line: 281, baseType: !111, size: 8, align: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !77, file: !78, line: 285, baseType: !115, size: 64, align: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !78, line: 155, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !78, line: 294, baseType: !118, size: 64, align: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 141, baseType: !47)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !77, file: !78, line: 303, baseType: !12, size: 64, align: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !77, file: !78, line: 304, baseType: !12, size: 64, align: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !77, file: !78, line: 305, baseType: !12, size: 64, align: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !77, file: !78, line: 306, baseType: !12, size: 64, align: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !77, file: !78, line: 307, baseType: !124, size: 64, align: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 62, baseType: !126)
!125 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !77, file: !78, line: 309, baseType: !74, size: 32, align: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !77, file: !78, line: 311, baseType: !129, size: 160, align: 8, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !50, file: !37, line: 343, baseType: !133, size: 64, align: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !37, line: 316, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!35, !35, !82}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !50, file: !37, line: 344, baseType: !138, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !37, line: 318, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!74, !35, !82, !35}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !50, file: !37, line: 345, baseType: !12, size: 64, align: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !50, file: !37, line: 346, baseType: !144, size: 64, align: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !37, line: 320, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!35, !35}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !50, file: !37, line: 350, baseType: !149, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !37, line: 278, baseType: !151)
!151 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 236, size: 2176, align: 64, elements: !152)
!152 = !{!153, !158, !159, !160, !161, !162, !167, !169, !170, !171, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !151, file: !37, line: 241, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !37, line: 166, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!35, !35, !35}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !151, file: !37, line: 242, baseType: !154, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !151, file: !37, line: 243, baseType: !154, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !151, file: !37, line: 244, baseType: !154, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !151, file: !37, line: 245, baseType: !154, size: 64, align: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !151, file: !37, line: 246, baseType: !163, size: 64, align: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !37, line: 167, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!35, !35, !35, !35}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !151, file: !37, line: 247, baseType: !168, size: 64, align: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !37, line: 165, baseType: !145)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !151, file: !37, line: 248, baseType: !168, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !151, file: !37, line: 249, baseType: !168, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !151, file: !37, line: 250, baseType: !172, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !37, line: 168, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!74, !35}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !151, file: !37, line: 251, baseType: !168, size: 64, align: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !151, file: !37, line: 252, baseType: !154, size: 64, align: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !151, file: !37, line: 253, baseType: !154, size: 64, align: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !151, file: !37, line: 254, baseType: !154, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !151, file: !37, line: 255, baseType: !154, size: 64, align: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !151, file: !37, line: 256, baseType: !154, size: 64, align: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !151, file: !37, line: 257, baseType: !168, size: 64, align: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !151, file: !37, line: 258, baseType: !12, size: 64, align: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !151, file: !37, line: 259, baseType: !168, size: 64, align: 64, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !151, file: !37, line: 261, baseType: !154, size: 64, align: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !151, file: !37, line: 262, baseType: !154, size: 64, align: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !151, file: !37, line: 263, baseType: !154, size: 64, align: 64, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !151, file: !37, line: 264, baseType: !154, size: 64, align: 64, offset: 1408)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !151, file: !37, line: 265, baseType: !163, size: 64, align: 64, offset: 1472)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !151, file: !37, line: 266, baseType: !154, size: 64, align: 64, offset: 1536)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !151, file: !37, line: 267, baseType: !154, size: 64, align: 64, offset: 1600)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !151, file: !37, line: 268, baseType: !154, size: 64, align: 64, offset: 1664)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !151, file: !37, line: 269, baseType: !154, size: 64, align: 64, offset: 1728)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !151, file: !37, line: 270, baseType: !154, size: 64, align: 64, offset: 1792)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !151, file: !37, line: 272, baseType: !154, size: 64, align: 64, offset: 1856)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !151, file: !37, line: 273, baseType: !154, size: 64, align: 64, offset: 1920)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !151, file: !37, line: 274, baseType: !154, size: 64, align: 64, offset: 1984)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !151, file: !37, line: 275, baseType: !154, size: 64, align: 64, offset: 2048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !151, file: !37, line: 277, baseType: !168, size: 64, align: 64, offset: 2112)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !50, file: !37, line: 351, baseType: !201, size: 64, align: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !37, line: 292, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 280, size: 640, align: 64, elements: !204)
!204 = !{!205, !210, !211, !216, !217, !218, !223, !224, !229, !230}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !203, file: !37, line: 281, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !37, line: 169, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!41, !35}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !203, file: !37, line: 282, baseType: !154, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !203, file: !37, line: 283, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !37, line: 170, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!35, !35, !41}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !203, file: !37, line: 284, baseType: !212, size: 64, align: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !203, file: !37, line: 285, baseType: !12, size: 64, align: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !203, file: !37, line: 286, baseType: !219, size: 64, align: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !37, line: 172, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!74, !35, !41, !35}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !203, file: !37, line: 287, baseType: !12, size: 64, align: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !203, file: !37, line: 288, baseType: !225, size: 64, align: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !37, line: 231, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!74, !35, !35}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !203, file: !37, line: 290, baseType: !154, size: 64, align: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !203, file: !37, line: 291, baseType: !212, size: 64, align: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !50, file: !37, line: 352, baseType: !232, size: 64, align: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !37, line: 298, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 294, size: 192, align: 64, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !234, file: !37, line: 295, baseType: !206, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !234, file: !37, line: 296, baseType: !154, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !234, file: !37, line: 297, baseType: !239, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !37, line: 174, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!74, !35, !35, !35}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !50, file: !37, line: 356, baseType: !244, size: 64, align: 64, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !37, line: 321, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !35}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !42, line: 186, baseType: !41)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !50, file: !37, line: 357, baseType: !163, size: 64, align: 64, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !50, file: !37, line: 358, baseType: !144, size: 64, align: 64, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !50, file: !37, line: 359, baseType: !252, size: 64, align: 64, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !37, line: 317, baseType: !155)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !50, file: !37, line: 360, baseType: !254, size: 64, align: 64, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !37, line: 319, baseType: !240)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !50, file: !37, line: 363, baseType: !256, size: 64, align: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !37, line: 304, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 301, size: 128, align: 64, elements: !259)
!259 = !{!260, !281}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !258, file: !37, line: 302, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !37, line: 193, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!74, !35, !265, !74}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !37, line: 191, baseType: !267)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !37, line: 178, size: 640, align: 64, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !278, !279, !280}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !267, file: !37, line: 179, baseType: !12, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !267, file: !37, line: 180, baseType: !35, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !267, file: !37, line: 181, baseType: !41, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !267, file: !37, line: 182, baseType: !41, size: 64, align: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !267, file: !37, line: 184, baseType: !74, size: 32, align: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !267, file: !37, line: 185, baseType: !74, size: 32, align: 32, offset: 288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !267, file: !37, line: 186, baseType: !82, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !267, file: !37, line: 187, baseType: !277, size: 64, align: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !267, file: !37, line: 188, baseType: !277, size: 64, align: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !267, file: !37, line: 189, baseType: !277, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !267, file: !37, line: 190, baseType: !12, size: 64, align: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !258, file: !37, line: 303, baseType: !282, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !37, line: 194, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !35, !265}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !50, file: !37, line: 366, baseType: !126, size: 64, align: 64, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !50, file: !37, line: 368, baseType: !59, size: 64, align: 64, offset: 1408)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !50, file: !37, line: 372, baseType: !289, size: 64, align: 64, offset: 1472)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !37, line: 233, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!74, !35, !293, !12}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !37, line: 232, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!74, !35, !12}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !50, file: !37, line: 375, baseType: !172, size: 64, align: 64, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !50, file: !37, line: 379, baseType: !299, size: 64, align: 64, offset: 1600)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !37, line: 322, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!35, !35, !35, !74}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !50, file: !37, line: 382, baseType: !41, size: 64, align: 64, offset: 1664)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !50, file: !37, line: 385, baseType: !305, size: 64, align: 64, offset: 1728)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !37, line: 323, baseType: !145)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !50, file: !37, line: 386, baseType: !307, size: 64, align: 64, offset: 1792)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !37, line: 324, baseType: !145)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !50, file: !37, line: 389, baseType: !309, size: 64, align: 64, offset: 1856)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !311, line: 40, size: 256, align: 64, elements: !312)
!311 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!312 = !{!313, !314, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !310, file: !311, line: 41, baseType: !59, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !310, file: !311, line: 42, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !311, line: 18, baseType: !155)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !310, file: !311, line: 43, baseType: !74, size: 32, align: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !310, file: !311, line: 45, baseType: !59, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !50, file: !37, line: 390, baseType: !319, size: 64, align: 64, offset: 1920)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !37, line: 390, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !50, file: !37, line: 391, baseType: !322, size: 64, align: 64, offset: 1984)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !324, line: 11, size: 320, align: 64, elements: !325)
!324 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!325 = !{!326, !327, !332, !337, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 12, baseType: !82, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !323, file: !324, line: 13, baseType: !328, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !324, line: 8, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!35, !35, !12}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !323, file: !324, line: 14, baseType: !333, size: 64, align: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !324, line: 9, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!74, !35, !35, !12}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !323, file: !324, line: 15, baseType: !82, size: 64, align: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !323, file: !324, line: 16, baseType: !12, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !50, file: !37, line: 392, baseType: !49, size: 64, align: 64, offset: 2048)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !50, file: !37, line: 393, baseType: !35, size: 64, align: 64, offset: 2112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !50, file: !37, line: 394, baseType: !342, size: 64, align: 64, offset: 2176)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !37, line: 325, baseType: !164)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !50, file: !37, line: 395, baseType: !344, size: 64, align: 64, offset: 2240)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !37, line: 326, baseType: !240)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !50, file: !37, line: 396, baseType: !41, size: 64, align: 64, offset: 2304)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !50, file: !37, line: 397, baseType: !347, size: 64, align: 64, offset: 2368)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !37, line: 327, baseType: !240)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !50, file: !37, line: 398, baseType: !349, size: 64, align: 64, offset: 2432)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !37, line: 329, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!35, !49, !41}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !50, file: !37, line: 399, baseType: !354, size: 64, align: 64, offset: 2496)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !37, line: 328, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!35, !49, !35, !35}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !50, file: !37, line: 400, baseType: !359, size: 64, align: 64, offset: 2560)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !37, line: 307, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !12}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !50, file: !37, line: 401, baseType: !172, size: 64, align: 64, offset: 2624)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !50, file: !37, line: 402, baseType: !35, size: 64, align: 64, offset: 2688)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !50, file: !37, line: 403, baseType: !35, size: 64, align: 64, offset: 2752)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !50, file: !37, line: 404, baseType: !35, size: 64, align: 64, offset: 2816)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !50, file: !37, line: 405, baseType: !35, size: 64, align: 64, offset: 2880)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !50, file: !37, line: 406, baseType: !35, size: 64, align: 64, offset: 2944)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !50, file: !37, line: 407, baseType: !65, size: 64, align: 64, offset: 3008)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !50, file: !37, line: 410, baseType: !371, size: 32, align: 32, offset: 3072)
!371 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !50, file: !37, line: 412, baseType: !65, size: 64, align: 64, offset: 3136)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !29, file: !20, line: 25, baseType: !35, size: 64, align: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !29, file: !20, line: 26, baseType: !35, size: 64, align: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !29, file: !20, line: 27, baseType: !35, size: 64, align: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !29, file: !20, line: 28, baseType: !35, size: 64, align: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !29, file: !20, line: 30, baseType: !35, size: 64, align: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !29, file: !20, line: 31, baseType: !35, size: 64, align: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !29, file: !20, line: 32, baseType: !35, size: 64, align: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !29, file: !20, line: 33, baseType: !74, size: 32, align: 32, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !29, file: !20, line: 34, baseType: !74, size: 32, align: 32, offset: 672)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !29, file: !20, line: 37, baseType: !74, size: 32, align: 32, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !29, file: !20, line: 43, baseType: !35, size: 64, align: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !21, file: !20, line: 76, baseType: !385, size: 64, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !20, line: 50, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !21, file: !20, line: 77, baseType: !74, size: 32, align: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !21, file: !20, line: 78, baseType: !61, size: 8, align: 8, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !21, file: !20, line: 80, baseType: !61, size: 8, align: 8, offset: 296)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !21, file: !20, line: 85, baseType: !74, size: 32, align: 32, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !21, file: !20, line: 86, baseType: !74, size: 32, align: 32, offset: 352)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !21, file: !20, line: 88, baseType: !393, size: 64, align: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !20, line: 54, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!74, !35, !385, !74, !35}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !21, file: !20, line: 89, baseType: !393, size: 64, align: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !21, file: !20, line: 90, baseType: !35, size: 64, align: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !21, file: !20, line: 91, baseType: !35, size: 64, align: 64, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !21, file: !20, line: 93, baseType: !35, size: 64, align: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !21, file: !20, line: 94, baseType: !35, size: 64, align: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !21, file: !20, line: 95, baseType: !35, size: 64, align: 64, offset: 768)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !21, file: !20, line: 97, baseType: !35, size: 64, align: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !21, file: !20, line: 98, baseType: !35, size: 64, align: 64, offset: 896)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !21, file: !20, line: 99, baseType: !35, size: 64, align: 64, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !21, file: !20, line: 101, baseType: !35, size: 64, align: 64, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !21, file: !20, line: 103, baseType: !74, size: 32, align: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !21, file: !20, line: 105, baseType: !35, size: 64, align: 64, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !21, file: !20, line: 106, baseType: !47, size: 64, align: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !21, file: !20, line: 108, baseType: !74, size: 32, align: 32, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !21, file: !20, line: 109, baseType: !35, size: 64, align: 64, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !21, file: !20, line: 134, baseType: !360, size: 64, align: 64, offset: 1408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !21, file: !20, line: 135, baseType: !12, size: 64, align: 64, offset: 1472)
!414 = !{!415, !509, !536, !545, !550}
!415 = !DISubprogram(name: "_PyImport_GetDynLoadFunc", scope: !416, file: !416, line: 54, type: !417, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void ()* (i8*, i8*, %struct._IO_FILE*)* @_PyImport_GetDynLoadFunc, variables: !419)
!416 = !DIFile(filename: "./Python/dynload_shlib.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!417 = !DISubroutineType(types: !418)
!418 = !{!13, !59, !59, !75}
!419 = !{!420, !421, !422, !423, !424, !425, !429, !433, !434, !437, !474, !481, !482, !485, !487, !490, !491, !492, !493, !497, !501, !503, !505, !507}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "shortname", arg: 1, scope: !415, file: !416, line: 54, type: !59)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 2, scope: !415, file: !416, line: 55, type: !59)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !415, file: !416, line: 55, type: !75)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !415, file: !416, line: 57, type: !13)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !415, file: !416, line: 58, type: !12)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "funcname", scope: !415, file: !416, line: 59, type: !426)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2064, align: 8, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 258)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbuf", scope: !415, file: !416, line: 60, type: !430)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2080, align: 8, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 260)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dlopenflags", scope: !415, file: !416, line: 61, type: !74)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !435, file: !416, line: 73, type: !74)
!435 = distinct !DILexicalBlock(scope: !436, file: !416, line: 72, column: 27)
!436 = distinct !DILexicalBlock(scope: !415, file: !416, line: 72, column: 9)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statb", scope: !435, file: !416, line: 74, type: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !439, line: 46, size: 1152, align: 64, elements: !440)
!439 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!440 = !{!441, !443, !445, !447, !449, !451, !453, !454, !455, !456, !458, !460, !468, !469, !470}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !438, file: !439, line: 48, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !46, line: 133, baseType: !126)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !438, file: !439, line: 53, baseType: !444, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !46, line: 136, baseType: !126)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !438, file: !439, line: 61, baseType: !446, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !46, line: 139, baseType: !126)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !438, file: !439, line: 62, baseType: !448, size: 32, align: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !46, line: 138, baseType: !371)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !438, file: !439, line: 64, baseType: !450, size: 32, align: 32, offset: 224)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !46, line: 134, baseType: !371)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !438, file: !439, line: 65, baseType: !452, size: 32, align: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !46, line: 135, baseType: !371)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !438, file: !439, line: 67, baseType: !74, size: 32, align: 32, offset: 288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !438, file: !439, line: 69, baseType: !442, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !438, file: !439, line: 74, baseType: !105, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !438, file: !439, line: 78, baseType: !457, size: 64, align: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !46, line: 162, baseType: !47)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !438, file: !439, line: 80, baseType: !459, size: 64, align: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !46, line: 167, baseType: !47)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !438, file: !439, line: 91, baseType: !461, size: 128, align: 64, offset: 576)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !462, line: 120, size: 128, align: 64, elements: !463)
!462 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!463 = !{!464, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !461, file: !462, line: 122, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !46, line: 148, baseType: !47)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !461, file: !462, line: 123, baseType: !467, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !46, line: 184, baseType: !47)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !438, file: !439, line: 92, baseType: !461, size: 128, align: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !438, file: !439, line: 93, baseType: !461, size: 128, align: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !438, file: !439, line: 106, baseType: !471, size: 192, align: 64, offset: 960)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, align: 64, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 3)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !475, file: !416, line: 93, type: !476)
!475 = distinct !DILexicalBlock(scope: !415, file: !416, line: 93, column: 51)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !478, file: !4, line: 32, baseType: !12, size: 64, align: 64)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !475, file: !416, line: 93, type: !12)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !475, file: !416, line: 93, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !475, file: !416, line: 93, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod_name", scope: !488, file: !416, line: 98, type: !35)
!488 = distinct !DILexicalBlock(scope: !489, file: !416, line: 97, column: 31)
!489 = distinct !DILexicalBlock(scope: !415, file: !416, line: 97, column: 9)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !488, file: !416, line: 99, type: !35)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_ob", scope: !488, file: !416, line: 100, type: !35)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !488, file: !416, line: 101, type: !59)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !416, line: 109, type: !35)
!494 = distinct !DILexicalBlock(scope: !495, file: !416, line: 109, column: 16)
!495 = distinct !DILexicalBlock(scope: !496, file: !416, line: 108, column: 37)
!496 = distinct !DILexicalBlock(scope: !488, file: !416, line: 108, column: 13)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !498, file: !416, line: 114, type: !35)
!498 = distinct !DILexicalBlock(scope: !499, file: !416, line: 114, column: 16)
!499 = distinct !DILexicalBlock(scope: !500, file: !416, line: 113, column: 33)
!500 = distinct !DILexicalBlock(scope: !488, file: !416, line: 113, column: 13)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !416, line: 115, type: !35)
!502 = distinct !DILexicalBlock(scope: !499, file: !416, line: 115, column: 16)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !416, line: 119, type: !35)
!504 = distinct !DILexicalBlock(scope: !488, file: !416, line: 119, column: 12)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !506, file: !416, line: 120, type: !35)
!506 = distinct !DILexicalBlock(scope: !488, file: !416, line: 120, column: 12)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !416, line: 121, type: !35)
!508 = distinct !DILexicalBlock(scope: !488, file: !416, line: 121, column: 12)
!509 = !DISubprogram(name: "fstat64", scope: !510, file: !510, line: 517, type: !511, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.stat64*)* @fstat64, variables: !533)
!510 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!511 = !DISubroutineType(types: !512)
!512 = !{!74, !74, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !439, line: 119, size: 1152, align: 64, elements: !515)
!515 = !{!516, !517, !519, !520, !521, !522, !523, !524, !525, !526, !527, !529, !530, !531, !532}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !514, file: !439, line: 121, baseType: !442, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !514, file: !439, line: 123, baseType: !518, size: 64, align: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !46, line: 137, baseType: !126)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !514, file: !439, line: 124, baseType: !446, size: 64, align: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !514, file: !439, line: 125, baseType: !448, size: 32, align: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !514, file: !439, line: 132, baseType: !450, size: 32, align: 32, offset: 224)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !514, file: !439, line: 133, baseType: !452, size: 32, align: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !514, file: !439, line: 135, baseType: !74, size: 32, align: 32, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !514, file: !439, line: 136, baseType: !442, size: 64, align: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !514, file: !439, line: 137, baseType: !105, size: 64, align: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !514, file: !439, line: 143, baseType: !457, size: 64, align: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !514, file: !439, line: 144, baseType: !528, size: 64, align: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !46, line: 168, baseType: !47)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !514, file: !439, line: 152, baseType: !461, size: 128, align: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !514, file: !439, line: 153, baseType: !461, size: 128, align: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !514, file: !439, line: 154, baseType: !461, size: 128, align: 64, offset: 832)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !514, file: !439, line: 164, baseType: !471, size: 192, align: 64, offset: 960)
!533 = !{!534, !535}
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !509, file: !510, line: 517, type: !74)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !509, file: !510, line: 517, type: !513)
!536 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !537, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !542)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539, !486}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!542 = !{!543, !544}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !536, file: !4, line: 59, type: !539)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !536, file: !4, line: 59, type: !486)
!545 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !546, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !486}
!548 = !{!549}
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !545, file: !4, line: 51, type: !486)
!550 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !546, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !551)
!551 = !{!552}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !550, file: !4, line: 44, type: !486)
!553 = !{!554, !558, !570}
!554 = !DIGlobalVariable(name: "_PyImport_DynLoadFiletab", scope: !0, file: !416, line: 35, type: !555, isLocal: false, isDefinition: true, variable: [4 x i8*]* @_PyImport_DynLoadFiletab)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, align: 64, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 4)
!558 = !DIGlobalVariable(name: "handles", scope: !0, file: !416, line: 50, type: !559, isLocal: true, isDefinition: true, variable: [128 x %struct.anon]* @handles)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 24576, align: 64, elements: !568)
!560 = !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 46, size: 192, align: 64, elements: !561)
!561 = !{!562, !565, !567}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !560, file: !416, line: 47, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !564, line: 60, baseType: !442)
!564 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !560, file: !416, line: 48, baseType: !566, size: 64, align: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !564, line: 50, baseType: !518)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !560, file: !416, line: 49, baseType: !12, size: 64, align: 64, offset: 128)
!568 = !{!569}
!569 = !DISubrange(count: 128)
!570 = !DIGlobalVariable(name: "nhandles", scope: !0, file: !416, line: 51, type: !74, isLocal: true, isDefinition: true, variable: i32* @nhandles)
!571 = !{i32 2, !"Dwarf Version", i32 4}
!572 = !{i32 2, !"Debug Info Version", i32 3}
!573 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!574 = !{!575, !575, i64 0}
!575 = !{!"any pointer", !576, i64 0}
!576 = !{!"omnipotent char", !577, i64 0}
!577 = !{!"Simple C/C++ TBAA"}
!578 = !DIExpression()
!579 = !DILocation(line: 54, column: 49, scope: !415)
!580 = !DILocation(line: 55, column: 49, scope: !415)
!581 = !DILocation(line: 55, column: 65, scope: !415)
!582 = !DILocation(line: 57, column: 5, scope: !415)
!583 = !DILocation(line: 57, column: 16, scope: !415)
!584 = !DILocation(line: 58, column: 5, scope: !415)
!585 = !DILocation(line: 58, column: 11, scope: !415)
!586 = !DILocation(line: 59, column: 5, scope: !415)
!587 = !DILocation(line: 59, column: 10, scope: !415)
!588 = !DILocation(line: 60, column: 5, scope: !415)
!589 = !DILocation(line: 60, column: 10, scope: !415)
!590 = !DILocation(line: 61, column: 5, scope: !415)
!591 = !DILocation(line: 61, column: 9, scope: !415)
!592 = !{!593, !593, i64 0}
!593 = !{!"int", !576, i64 0}
!594 = !DILocation(line: 63, column: 164, scope: !595)
!595 = distinct !DILexicalBlock(scope: !415, file: !416, line: 63, column: 9)
!596 = !DILocation(line: 63, column: 146, scope: !595)
!597 = !DILocation(line: 63, column: 181, scope: !595)
!598 = !DILocation(line: 63, column: 9, scope: !415)
!599 = !DILocation(line: 65, column: 23, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !416, line: 63, column: 196)
!601 = !DILocation(line: 65, column: 62, scope: !600)
!602 = !DILocation(line: 65, column: 9, scope: !600)
!603 = !DILocation(line: 66, column: 20, scope: !600)
!604 = !DILocation(line: 66, column: 18, scope: !600)
!605 = !DILocation(line: 67, column: 5, scope: !600)
!606 = !DILocation(line: 69, column: 19, scope: !415)
!607 = !DILocation(line: 70, column: 39, scope: !415)
!608 = !DILocation(line: 69, column: 5, scope: !415)
!609 = !DILocation(line: 72, column: 9, scope: !436)
!610 = !DILocation(line: 72, column: 12, scope: !436)
!611 = !DILocation(line: 72, column: 9, scope: !415)
!612 = !DILocation(line: 73, column: 9, scope: !435)
!613 = !DILocation(line: 73, column: 13, scope: !435)
!614 = !DILocation(line: 74, column: 9, scope: !435)
!615 = !DILocation(line: 74, column: 21, scope: !435)
!616 = !DILocation(line: 75, column: 26, scope: !617)
!617 = distinct !DILexicalBlock(scope: !435, file: !416, line: 75, column: 13)
!618 = !DILocation(line: 75, column: 19, scope: !617)
!619 = !DILocation(line: 75, column: 13, scope: !617)
!620 = !DILocation(line: 75, column: 39, scope: !617)
!621 = !DILocation(line: 75, column: 13, scope: !435)
!622 = !DILocation(line: 76, column: 32, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !416, line: 75, column: 46)
!624 = !DILocation(line: 76, column: 13, scope: !623)
!625 = !DILocation(line: 77, column: 13, scope: !623)
!626 = !DILocation(line: 79, column: 16, scope: !627)
!627 = distinct !DILexicalBlock(scope: !435, file: !416, line: 79, column: 9)
!628 = !DILocation(line: 79, column: 14, scope: !627)
!629 = !DILocation(line: 79, column: 21, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !416, discriminator: 2)
!631 = !DILexicalBlockFile(scope: !632, file: !416, discriminator: 1)
!632 = distinct !DILexicalBlock(scope: !627, file: !416, line: 79, column: 9)
!633 = !DILocation(line: 79, column: 25, scope: !632)
!634 = !DILocation(line: 79, column: 23, scope: !632)
!635 = !DILocation(line: 79, column: 9, scope: !627)
!636 = !DILocation(line: 80, column: 23, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !416, line: 80, column: 17)
!638 = distinct !DILexicalBlock(scope: !632, file: !416, line: 79, column: 40)
!639 = !{!640, !641, i64 0}
!640 = !{!"stat", !641, i64 0, !641, i64 8, !641, i64 16, !593, i64 24, !593, i64 28, !593, i64 32, !593, i64 36, !641, i64 40, !641, i64 48, !641, i64 56, !641, i64 64, !642, i64 72, !642, i64 88, !642, i64 104, !576, i64 120}
!641 = !{!"long", !576, i64 0}
!642 = !{!"timespec", !641, i64 0, !641, i64 8}
!643 = !DILocation(line: 80, column: 41, scope: !637)
!644 = !DILocation(line: 80, column: 33, scope: !637)
!645 = !DILocation(line: 80, column: 44, scope: !637)
!646 = !{!647, !641, i64 0}
!647 = !{!"", !641, i64 0, !641, i64 8, !575, i64 16}
!648 = !DILocation(line: 80, column: 30, scope: !637)
!649 = !DILocation(line: 80, column: 48, scope: !637)
!650 = !DILocation(line: 81, column: 23, scope: !637)
!651 = !{!640, !641, i64 8}
!652 = !DILocation(line: 81, column: 41, scope: !637)
!653 = !DILocation(line: 81, column: 33, scope: !637)
!654 = !DILocation(line: 81, column: 44, scope: !637)
!655 = !{!647, !641, i64 8}
!656 = !DILocation(line: 81, column: 30, scope: !637)
!657 = !DILocation(line: 80, column: 17, scope: !638)
!658 = !DILocation(line: 82, column: 48, scope: !659)
!659 = distinct !DILexicalBlock(scope: !637, file: !416, line: 81, column: 49)
!660 = !DILocation(line: 82, column: 40, scope: !659)
!661 = !DILocation(line: 82, column: 51, scope: !659)
!662 = !{!647, !575, i64 16}
!663 = !DILocation(line: 83, column: 40, scope: !659)
!664 = !DILocation(line: 82, column: 34, scope: !659)
!665 = !DILocation(line: 82, column: 21, scope: !659)
!666 = !DILocation(line: 82, column: 19, scope: !659)
!667 = !DILocation(line: 84, column: 24, scope: !659)
!668 = !DILocation(line: 84, column: 17, scope: !659)
!669 = !DILocation(line: 86, column: 9, scope: !638)
!670 = !DILocation(line: 79, column: 36, scope: !632)
!671 = !DILocation(line: 79, column: 9, scope: !632)
!672 = !DILocation(line: 87, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !435, file: !416, line: 87, column: 13)
!674 = !DILocation(line: 87, column: 22, scope: !673)
!675 = !DILocation(line: 87, column: 13, scope: !435)
!676 = !DILocation(line: 88, column: 43, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !416, line: 87, column: 29)
!678 = !DILocation(line: 88, column: 21, scope: !677)
!679 = !DILocation(line: 88, column: 13, scope: !677)
!680 = !DILocation(line: 88, column: 31, scope: !677)
!681 = !DILocation(line: 88, column: 35, scope: !677)
!682 = !DILocation(line: 89, column: 43, scope: !677)
!683 = !DILocation(line: 89, column: 21, scope: !677)
!684 = !DILocation(line: 89, column: 13, scope: !677)
!685 = !DILocation(line: 89, column: 31, scope: !677)
!686 = !DILocation(line: 89, column: 35, scope: !677)
!687 = !DILocation(line: 90, column: 9, scope: !677)
!688 = !DILocation(line: 91, column: 5, scope: !436)
!689 = !DILocation(line: 91, column: 5, scope: !690)
!690 = !DILexicalBlockFile(scope: !436, file: !416, discriminator: 1)
!691 = !DILocation(line: 91, column: 5, scope: !435)
!692 = !DILocation(line: 93, column: 53, scope: !475)
!693 = !DILocation(line: 93, column: 89, scope: !475)
!694 = !DILocation(line: 93, column: 127, scope: !475)
!695 = !DILocation(line: 93, column: 158, scope: !475)
!696 = !DILocation(line: 93, column: 166, scope: !475)
!697 = !DILocation(line: 93, column: 195, scope: !475)
!698 = !DILocation(line: 93, column: 212, scope: !475)
!699 = !DILocation(line: 93, column: 224, scope: !475)
!700 = !DILocation(line: 93, column: 232, scope: !475)
!701 = !DILocation(line: 93, column: 249, scope: !475)
!702 = !{!576, !576, i64 0}
!703 = !DILocation(line: 93, column: 309, scope: !475)
!704 = !DILocation(line: 93, column: 321, scope: !475)
!705 = !DILocation(line: 93, column: 283, scope: !475)
!706 = !DILocation(line: 93, column: 338, scope: !475)
!707 = !DILocation(line: 93, column: 440, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !416, discriminator: 4)
!709 = !DILexicalBlockFile(scope: !710, file: !416, discriminator: 3)
!710 = !DILexicalBlockFile(scope: !711, file: !416, discriminator: 2)
!711 = distinct !DILexicalBlock(scope: !475, file: !416, line: 93, column: 345)
!712 = !DILocation(line: 93, column: 491, scope: !711)
!713 = !DILocation(line: 93, column: 507, scope: !714)
!714 = !DILexicalBlockFile(scope: !711, file: !416, discriminator: 1)
!715 = !DILocation(line: 93, column: 526, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !416, discriminator: 6)
!717 = !DILexicalBlockFile(scope: !475, file: !416, discriminator: 5)
!718 = !DILocation(line: 93, column: 525, scope: !475)
!719 = !DILocation(line: 93, column: 523, scope: !475)
!720 = !DILocation(line: 93, column: 548, scope: !475)
!721 = !DILocation(line: 93, column: 650, scope: !722)
!722 = !DILexicalBlockFile(scope: !723, file: !416, discriminator: 10)
!723 = !DILexicalBlockFile(scope: !724, file: !416, discriminator: 9)
!724 = !DILexicalBlockFile(scope: !725, file: !416, discriminator: 8)
!725 = distinct !DILexicalBlock(scope: !475, file: !416, line: 93, column: 555)
!726 = !DILocation(line: 93, column: 701, scope: !725)
!727 = !DILocation(line: 93, column: 717, scope: !728)
!728 = !DILexicalBlockFile(scope: !725, file: !416, discriminator: 7)
!729 = !DILocation(line: 93, column: 728, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !416, discriminator: 12)
!731 = !DILexicalBlockFile(scope: !475, file: !416, discriminator: 11)
!732 = !DILocation(line: 93, column: 724, scope: !725)
!733 = !DILocation(line: 93, column: 736, scope: !415)
!734 = !DILocation(line: 93, column: 736, scope: !475)
!735 = !DILocation(line: 93, column: 20, scope: !415)
!736 = !DILocation(line: 93, column: 741, scope: !415)
!737 = !{!738, !575, i64 16}
!738 = !{!"_ts", !575, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !593, i64 32, !576, i64 36, !576, i64 37, !593, i64 40, !593, i64 44, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !575, i64 96, !575, i64 104, !575, i64 112, !575, i64 120, !575, i64 128, !593, i64 136, !575, i64 144, !641, i64 152, !593, i64 160, !575, i64 168, !575, i64 176, !575, i64 184}
!739 = !DILocation(line: 93, column: 749, scope: !415)
!740 = !{!741, !593, i64 88}
!741 = !{!"_is", !575, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !575, i64 32, !575, i64 40, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !593, i64 80, !593, i64 84, !593, i64 88, !575, i64 96}
!742 = !DILocation(line: 93, column: 17, scope: !415)
!743 = !DILocation(line: 95, column: 21, scope: !415)
!744 = !DILocation(line: 95, column: 31, scope: !415)
!745 = !DILocation(line: 95, column: 14, scope: !415)
!746 = !DILocation(line: 95, column: 12, scope: !415)
!747 = !DILocation(line: 97, column: 9, scope: !489)
!748 = !DILocation(line: 97, column: 16, scope: !489)
!749 = !DILocation(line: 97, column: 9, scope: !415)
!750 = !DILocation(line: 98, column: 9, scope: !488)
!751 = !DILocation(line: 98, column: 19, scope: !488)
!752 = !DILocation(line: 99, column: 9, scope: !488)
!753 = !DILocation(line: 99, column: 19, scope: !488)
!754 = !DILocation(line: 100, column: 9, scope: !488)
!755 = !DILocation(line: 100, column: 19, scope: !488)
!756 = !DILocation(line: 101, column: 9, scope: !488)
!757 = !DILocation(line: 101, column: 21, scope: !488)
!758 = !DILocation(line: 101, column: 29, scope: !488)
!759 = !DILocation(line: 102, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !488, file: !416, line: 102, column: 13)
!761 = !DILocation(line: 102, column: 19, scope: !760)
!762 = !DILocation(line: 102, column: 13, scope: !488)
!763 = !DILocation(line: 103, column: 19, scope: !760)
!764 = !DILocation(line: 103, column: 13, scope: !760)
!765 = !DILocation(line: 104, column: 41, scope: !488)
!766 = !DILocation(line: 104, column: 20, scope: !488)
!767 = !DILocation(line: 104, column: 18, scope: !488)
!768 = !DILocation(line: 105, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !488, file: !416, line: 105, column: 13)
!770 = !DILocation(line: 105, column: 22, scope: !769)
!771 = !DILocation(line: 105, column: 13, scope: !488)
!772 = !DILocation(line: 106, column: 13, scope: !769)
!773 = !DILocation(line: 107, column: 41, scope: !488)
!774 = !DILocation(line: 107, column: 20, scope: !488)
!775 = !DILocation(line: 107, column: 18, scope: !488)
!776 = !DILocation(line: 108, column: 13, scope: !496)
!777 = !DILocation(line: 108, column: 22, scope: !496)
!778 = !DILocation(line: 108, column: 13, scope: !488)
!779 = !DILocation(line: 109, column: 13, scope: !495)
!780 = !DILocation(line: 109, column: 18, scope: !781)
!781 = !DILexicalBlockFile(scope: !494, file: !416, discriminator: 1)
!782 = !DILocation(line: 109, column: 28, scope: !494)
!783 = !DILocation(line: 109, column: 58, scope: !494)
!784 = !DILocation(line: 109, column: 77, scope: !785)
!785 = distinct !DILexicalBlock(scope: !494, file: !416, line: 109, column: 74)
!786 = !DILocation(line: 109, column: 94, scope: !785)
!787 = !DILocation(line: 109, column: 74, scope: !785)
!788 = !{!789, !641, i64 0}
!789 = !{!"_object", !641, i64 0, !575, i64 8}
!790 = !DILocation(line: 109, column: 104, scope: !785)
!791 = !DILocation(line: 109, column: 74, scope: !494)
!792 = !DILocation(line: 109, column: 74, scope: !793)
!793 = !DILexicalBlockFile(scope: !494, file: !416, discriminator: 2)
!794 = !DILocation(line: 109, column: 135, scope: !795)
!795 = !DILexicalBlockFile(scope: !785, file: !416, discriminator: 3)
!796 = !DILocation(line: 109, column: 153, scope: !785)
!797 = !{!789, !575, i64 8}
!798 = !DILocation(line: 109, column: 163, scope: !785)
!799 = !{!800, !575, i64 48}
!800 = !{!"_typeobject", !801, i64 0, !575, i64 24, !641, i64 32, !641, i64 40, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !575, i64 96, !575, i64 104, !575, i64 112, !575, i64 120, !575, i64 128, !575, i64 136, !575, i64 144, !575, i64 152, !575, i64 160, !641, i64 168, !575, i64 176, !575, i64 184, !575, i64 192, !575, i64 200, !641, i64 208, !575, i64 216, !575, i64 224, !575, i64 232, !575, i64 240, !575, i64 248, !575, i64 256, !575, i64 264, !575, i64 272, !575, i64 280, !641, i64 288, !575, i64 296, !575, i64 304, !575, i64 312, !575, i64 320, !575, i64 328, !575, i64 336, !575, i64 344, !575, i64 352, !575, i64 360, !575, i64 368, !575, i64 376, !593, i64 384, !575, i64 392}
!801 = !{!"", !789, i64 0, !641, i64 16}
!802 = !DILocation(line: 109, column: 188, scope: !785)
!803 = !DILocation(line: 109, column: 119, scope: !785)
!804 = !DILocation(line: 109, column: 207, scope: !805)
!805 = !DILexicalBlockFile(scope: !495, file: !416, discriminator: 4)
!806 = !DILocation(line: 109, column: 207, scope: !494)
!807 = !DILocation(line: 109, column: 207, scope: !808)
!808 = !DILexicalBlockFile(scope: !494, file: !416, discriminator: 5)
!809 = !DILocation(line: 110, column: 13, scope: !495)
!810 = !DILocation(line: 112, column: 37, scope: !488)
!811 = !DILocation(line: 112, column: 16, scope: !488)
!812 = !DILocation(line: 112, column: 14, scope: !488)
!813 = !DILocation(line: 113, column: 13, scope: !500)
!814 = !DILocation(line: 113, column: 18, scope: !500)
!815 = !DILocation(line: 113, column: 13, scope: !488)
!816 = !DILocation(line: 114, column: 13, scope: !499)
!817 = !DILocation(line: 114, column: 18, scope: !818)
!818 = !DILexicalBlockFile(scope: !498, file: !416, discriminator: 1)
!819 = !DILocation(line: 114, column: 28, scope: !498)
!820 = !DILocation(line: 114, column: 58, scope: !498)
!821 = !DILocation(line: 114, column: 77, scope: !822)
!822 = distinct !DILexicalBlock(scope: !498, file: !416, line: 114, column: 74)
!823 = !DILocation(line: 114, column: 94, scope: !822)
!824 = !DILocation(line: 114, column: 74, scope: !822)
!825 = !DILocation(line: 114, column: 104, scope: !822)
!826 = !DILocation(line: 114, column: 74, scope: !498)
!827 = !DILocation(line: 114, column: 74, scope: !828)
!828 = !DILexicalBlockFile(scope: !498, file: !416, discriminator: 2)
!829 = !DILocation(line: 114, column: 135, scope: !830)
!830 = !DILexicalBlockFile(scope: !822, file: !416, discriminator: 3)
!831 = !DILocation(line: 114, column: 153, scope: !822)
!832 = !DILocation(line: 114, column: 163, scope: !822)
!833 = !DILocation(line: 114, column: 188, scope: !822)
!834 = !DILocation(line: 114, column: 119, scope: !822)
!835 = !DILocation(line: 114, column: 207, scope: !836)
!836 = !DILexicalBlockFile(scope: !499, file: !416, discriminator: 4)
!837 = !DILocation(line: 114, column: 207, scope: !498)
!838 = !DILocation(line: 114, column: 207, scope: !839)
!839 = !DILexicalBlockFile(scope: !498, file: !416, discriminator: 5)
!840 = !DILocation(line: 115, column: 13, scope: !499)
!841 = !DILocation(line: 115, column: 18, scope: !842)
!842 = !DILexicalBlockFile(scope: !502, file: !416, discriminator: 1)
!843 = !DILocation(line: 115, column: 28, scope: !502)
!844 = !DILocation(line: 115, column: 58, scope: !502)
!845 = !DILocation(line: 115, column: 77, scope: !846)
!846 = distinct !DILexicalBlock(scope: !502, file: !416, line: 115, column: 74)
!847 = !DILocation(line: 115, column: 94, scope: !846)
!848 = !DILocation(line: 115, column: 74, scope: !846)
!849 = !DILocation(line: 115, column: 104, scope: !846)
!850 = !DILocation(line: 115, column: 74, scope: !502)
!851 = !DILocation(line: 115, column: 74, scope: !852)
!852 = !DILexicalBlockFile(scope: !502, file: !416, discriminator: 2)
!853 = !DILocation(line: 115, column: 135, scope: !854)
!854 = !DILexicalBlockFile(scope: !846, file: !416, discriminator: 3)
!855 = !DILocation(line: 115, column: 153, scope: !846)
!856 = !DILocation(line: 115, column: 163, scope: !846)
!857 = !DILocation(line: 115, column: 188, scope: !846)
!858 = !DILocation(line: 115, column: 119, scope: !846)
!859 = !DILocation(line: 115, column: 207, scope: !836)
!860 = !DILocation(line: 115, column: 207, scope: !502)
!861 = !DILocation(line: 115, column: 207, scope: !862)
!862 = !DILexicalBlockFile(scope: !502, file: !416, discriminator: 5)
!863 = !DILocation(line: 116, column: 13, scope: !499)
!864 = !DILocation(line: 118, column: 30, scope: !488)
!865 = !DILocation(line: 118, column: 40, scope: !488)
!866 = !DILocation(line: 118, column: 50, scope: !488)
!867 = !DILocation(line: 118, column: 9, scope: !488)
!868 = !DILocation(line: 119, column: 9, scope: !488)
!869 = !DILocation(line: 119, column: 14, scope: !870)
!870 = !DILexicalBlockFile(scope: !504, file: !416, discriminator: 1)
!871 = !DILocation(line: 119, column: 24, scope: !504)
!872 = !DILocation(line: 119, column: 54, scope: !504)
!873 = !DILocation(line: 119, column: 73, scope: !874)
!874 = distinct !DILexicalBlock(scope: !504, file: !416, line: 119, column: 70)
!875 = !DILocation(line: 119, column: 90, scope: !874)
!876 = !DILocation(line: 119, column: 70, scope: !874)
!877 = !DILocation(line: 119, column: 100, scope: !874)
!878 = !DILocation(line: 119, column: 70, scope: !504)
!879 = !DILocation(line: 119, column: 70, scope: !880)
!880 = !DILexicalBlockFile(scope: !504, file: !416, discriminator: 2)
!881 = !DILocation(line: 119, column: 131, scope: !882)
!882 = !DILexicalBlockFile(scope: !874, file: !416, discriminator: 3)
!883 = !DILocation(line: 119, column: 149, scope: !874)
!884 = !DILocation(line: 119, column: 159, scope: !874)
!885 = !DILocation(line: 119, column: 184, scope: !874)
!886 = !DILocation(line: 119, column: 115, scope: !874)
!887 = !DILocation(line: 119, column: 203, scope: !888)
!888 = !DILexicalBlockFile(scope: !488, file: !416, discriminator: 4)
!889 = !DILocation(line: 119, column: 203, scope: !504)
!890 = !DILocation(line: 119, column: 203, scope: !891)
!891 = !DILexicalBlockFile(scope: !504, file: !416, discriminator: 5)
!892 = !DILocation(line: 120, column: 9, scope: !488)
!893 = !DILocation(line: 120, column: 14, scope: !894)
!894 = !DILexicalBlockFile(scope: !506, file: !416, discriminator: 1)
!895 = !DILocation(line: 120, column: 24, scope: !506)
!896 = !DILocation(line: 120, column: 54, scope: !506)
!897 = !DILocation(line: 120, column: 73, scope: !898)
!898 = distinct !DILexicalBlock(scope: !506, file: !416, line: 120, column: 70)
!899 = !DILocation(line: 120, column: 90, scope: !898)
!900 = !DILocation(line: 120, column: 70, scope: !898)
!901 = !DILocation(line: 120, column: 100, scope: !898)
!902 = !DILocation(line: 120, column: 70, scope: !506)
!903 = !DILocation(line: 120, column: 70, scope: !904)
!904 = !DILexicalBlockFile(scope: !506, file: !416, discriminator: 2)
!905 = !DILocation(line: 120, column: 131, scope: !906)
!906 = !DILexicalBlockFile(scope: !898, file: !416, discriminator: 3)
!907 = !DILocation(line: 120, column: 149, scope: !898)
!908 = !DILocation(line: 120, column: 159, scope: !898)
!909 = !DILocation(line: 120, column: 184, scope: !898)
!910 = !DILocation(line: 120, column: 115, scope: !898)
!911 = !DILocation(line: 120, column: 203, scope: !888)
!912 = !DILocation(line: 120, column: 203, scope: !506)
!913 = !DILocation(line: 120, column: 203, scope: !914)
!914 = !DILexicalBlockFile(scope: !506, file: !416, discriminator: 5)
!915 = !DILocation(line: 121, column: 9, scope: !488)
!916 = !DILocation(line: 121, column: 14, scope: !917)
!917 = !DILexicalBlockFile(scope: !508, file: !416, discriminator: 1)
!918 = !DILocation(line: 121, column: 24, scope: !508)
!919 = !DILocation(line: 121, column: 54, scope: !508)
!920 = !DILocation(line: 121, column: 69, scope: !921)
!921 = distinct !DILexicalBlock(scope: !508, file: !416, line: 121, column: 66)
!922 = !DILocation(line: 121, column: 86, scope: !921)
!923 = !DILocation(line: 121, column: 66, scope: !921)
!924 = !DILocation(line: 121, column: 96, scope: !921)
!925 = !DILocation(line: 121, column: 66, scope: !508)
!926 = !DILocation(line: 121, column: 66, scope: !927)
!927 = !DILexicalBlockFile(scope: !508, file: !416, discriminator: 2)
!928 = !DILocation(line: 121, column: 127, scope: !929)
!929 = !DILexicalBlockFile(scope: !921, file: !416, discriminator: 3)
!930 = !DILocation(line: 121, column: 145, scope: !921)
!931 = !DILocation(line: 121, column: 155, scope: !921)
!932 = !DILocation(line: 121, column: 180, scope: !921)
!933 = !DILocation(line: 121, column: 111, scope: !921)
!934 = !DILocation(line: 121, column: 199, scope: !888)
!935 = !DILocation(line: 121, column: 199, scope: !508)
!936 = !DILocation(line: 121, column: 199, scope: !937)
!937 = !DILexicalBlockFile(scope: !508, file: !416, discriminator: 5)
!938 = !DILocation(line: 122, column: 9, scope: !488)
!939 = !DILocation(line: 123, column: 5, scope: !489)
!940 = !DILocation(line: 124, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !415, file: !416, line: 124, column: 9)
!942 = !DILocation(line: 124, column: 12, scope: !941)
!943 = !DILocation(line: 124, column: 26, scope: !941)
!944 = !DILocation(line: 124, column: 29, scope: !945)
!945 = !DILexicalBlockFile(scope: !941, file: !416, discriminator: 1)
!946 = !DILocation(line: 124, column: 38, scope: !941)
!947 = !DILocation(line: 124, column: 9, scope: !415)
!948 = !DILocation(line: 125, column: 38, scope: !941)
!949 = !DILocation(line: 125, column: 25, scope: !941)
!950 = !DILocation(line: 125, column: 9, scope: !941)
!951 = !DILocation(line: 125, column: 29, scope: !941)
!952 = !DILocation(line: 125, column: 36, scope: !941)
!953 = !DILocation(line: 126, column: 28, scope: !415)
!954 = !DILocation(line: 126, column: 36, scope: !415)
!955 = !DILocation(line: 126, column: 22, scope: !415)
!956 = !DILocation(line: 126, column: 9, scope: !415)
!957 = !DILocation(line: 126, column: 7, scope: !415)
!958 = !DILocation(line: 127, column: 12, scope: !415)
!959 = !DILocation(line: 127, column: 5, scope: !415)
!960 = !DILocation(line: 128, column: 1, scope: !415)
!961 = !DILocation(line: 59, column: 48, scope: !536)
!962 = !DILocation(line: 59, column: 74, scope: !536)
!963 = !DILocation(line: 61, column: 11, scope: !536)
!964 = !DILocation(line: 62, column: 12, scope: !536)
!965 = !DILocation(line: 67, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !536, file: !4, line: 62, column: 19)
!967 = !DILocation(line: 70, column: 9, scope: !966)
!968 = !DILocation(line: 72, column: 12, scope: !536)
!969 = !DILocation(line: 77, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !536, file: !4, line: 72, column: 19)
!971 = !DILocation(line: 80, column: 9, scope: !970)
!972 = !DILocation(line: 82, column: 1, scope: !536)
!973 = !DILocation(line: 51, column: 42, scope: !545)
!974 = !DILocation(line: 53, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !545, file: !4, line: 53, column: 9)
!976 = !DILocation(line: 53, column: 15, scope: !975)
!977 = !DILocation(line: 53, column: 9, scope: !545)
!978 = !DILocation(line: 54, column: 9, scope: !975)
!979 = !{i32 154982}
!980 = !DILocation(line: 55, column: 1, scope: !545)
!981 = !DILocation(line: 44, column: 42, scope: !550)
!982 = !DILocation(line: 46, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !550, file: !4, line: 46, column: 9)
!984 = !DILocation(line: 46, column: 15, scope: !983)
!985 = !DILocation(line: 46, column: 9, scope: !550)
!986 = !DILocation(line: 47, column: 9, scope: !983)
!987 = !{i32 154822}
!988 = !DILocation(line: 48, column: 1, scope: !550)
!989 = !DILocation(line: 517, column: 45, scope: !509)
!990 = !DILocation(line: 517, column: 66, scope: !509)
!991 = !DILocation(line: 519, column: 25, scope: !509)
!992 = !DILocation(line: 519, column: 31, scope: !509)
!993 = !DILocation(line: 519, column: 10, scope: !509)
!994 = !DILocation(line: 519, column: 3, scope: !509)
