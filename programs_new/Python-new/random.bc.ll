; ModuleID = 'irs-onlybc/random.bc'
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
%union._Py_HashSecret_t = type { %struct.anon.1 }
%struct.anon.1 = type { [16 x i8], i64 }
%struct.anon.3 = type { i32, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [30 x i8] c"negative argument not allowed\00", align 1
@_Py_HashSecret = external global %union._Py_HashSecret_t, align 8
@_Py_HashSecret_Initialized = internal global i32 0, align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"PYTHONHASHSEED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"PYTHONHASHSEED must be \22random\22 or an integer in range [0; 4294967295]\00", align 1
@urandom_cache = internal global %struct.anon.3 { i32 -1, i64 0, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@PyExc_NotImplementedError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"/dev/urandom (or equivalent) not found\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to read %zi bytes from /dev/urandom\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to open /dev/urandom\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to read bytes from /dev/urandom\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_PyOS_URandom(i8* %buffer, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !32, metadata !547), !dbg !548
  store i64 %size, i64* %size.addr, align 8, !tbaa !549
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !33, metadata !547), !dbg !551
  %0 = load i64, i64* %size.addr, align 8, !dbg !552, !tbaa !549
  %cmp = icmp slt i64 %0, 0, !dbg !554
  br i1 %cmp, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !556, !tbaa !543
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !558
  store i32 -1, i32* %retval, !dbg !559
  br label %return, !dbg !559

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !560, !tbaa !549
  %cmp1 = icmp eq i64 %2, 0, !dbg !562
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !563

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !564
  br label %return, !dbg !564

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !565, !tbaa !543
  %4 = load i64, i64* %size.addr, align 8, !dbg !566, !tbaa !549
  %call4 = call i32 @dev_urandom_python(i8* %3, i64 %4), !dbg !567
  store i32 %call4, i32* %retval, !dbg !568
  br label %return, !dbg !568

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load i32, i32* %retval, !dbg !569
  ret i32 %5, !dbg !569
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @dev_urandom_python(i8* %buffer, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %n = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save46 = alloca %struct._ts*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !56, metadata !547), !dbg !570
  store i64 %size, i64* %size.addr, align 8, !tbaa !549
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !57, metadata !547), !dbg !571
  %0 = bitcast i32* %fd to i8*, !dbg !572
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !572
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !58, metadata !547), !dbg !573
  %1 = bitcast i64* %n to i8*, !dbg !574
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !574
  call void @llvm.dbg.declare(metadata i64* %n, metadata !59, metadata !547), !dbg !575
  %2 = bitcast %struct.stat* %st to i8*, !dbg !576
  call void @llvm.lifetime.start(i64 144, i8* %2) #3, !dbg !576
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !60, metadata !547), !dbg !577
  %3 = load i64, i64* %size.addr, align 8, !dbg !578, !tbaa !549
  %cmp = icmp sle i64 %3, 0, !dbg !580
  br i1 %cmp, label %if.then, label %if.end, !dbg !581

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !582
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !582

if.end:                                           ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !583, !tbaa !585
  %cmp1 = icmp sge i32 %4, 0, !dbg !588
  br i1 %cmp1, label %if.then.2, label %if.end.8, !dbg !589

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !590, !tbaa !585
  %call = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %5, %struct.stat* %st) #3, !dbg !593
  %tobool = icmp ne i32 %call, 0, !dbg !593
  br i1 %tobool, label %if.then.6, label %lor.lhs.false, !dbg !594

lor.lhs.false:                                    ; preds = %if.then.2
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0, !dbg !595
  %6 = load i64, i64* %st_dev, align 8, !dbg !595, !tbaa !597
  %7 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 1), align 8, !dbg !600, !tbaa !601
  %cmp3 = icmp ne i64 %6, %7, !dbg !602
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4, !dbg !603

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !604
  %8 = load i64, i64* %st_ino, align 8, !dbg !604, !tbaa !605
  %9 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 2), align 8, !dbg !606, !tbaa !607
  %cmp5 = icmp ne i64 %8, %9, !dbg !608
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !609

if.then.6:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then.2
  store i32 -1, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !610, !tbaa !585
  br label %if.end.7, !dbg !612

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  br label %if.end.8, !dbg !613

if.end.8:                                         ; preds = %if.end.7, %if.end
  %10 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !614, !tbaa !585
  %cmp9 = icmp sge i32 %10, 0, !dbg !615
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !616

if.then.10:                                       ; preds = %if.end.8
  %11 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !617, !tbaa !585
  store i32 %11, i32* %fd, align 4, !dbg !618, !tbaa !619
  br label %if.end.45, !dbg !620

if.else:                                          ; preds = %if.end.8
  %12 = bitcast %struct._ts** %_save to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !621
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !99, metadata !547), !dbg !622
  %call11 = call %struct._ts* @PyEval_SaveThread(), !dbg !623
  store %struct._ts* %call11, %struct._ts** %_save, align 8, !dbg !624, !tbaa !543
  %call12 = call i32 @_Py_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !625
  store i32 %call12, i32* %fd, align 4, !dbg !626, !tbaa !619
  %13 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !627, !tbaa !543
  call void @PyEval_RestoreThread(%struct._ts* %13), !dbg !628
  %14 = bitcast %struct._ts** %_save to i8*, !dbg !629
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !629
  %15 = load i32, i32* %fd, align 4, !dbg !630, !tbaa !619
  %cmp13 = icmp slt i32 %15, 0, !dbg !632
  br i1 %cmp13, label %if.then.14, label %if.end.30, !dbg !633

if.then.14:                                       ; preds = %if.else
  %call15 = call i32* @__errno_location() #1, !dbg !634
  %16 = load i32, i32* %call15, align 4, !dbg !637, !tbaa !619
  %cmp16 = icmp eq i32 %16, 2, !dbg !638
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.17, !dbg !639

lor.lhs.false.17:                                 ; preds = %if.then.14
  %call18 = call i32* @__errno_location() #1, !dbg !640
  %17 = load i32, i32* %call18, align 4, !dbg !642, !tbaa !619
  %cmp19 = icmp eq i32 %17, 6, !dbg !643
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20, !dbg !644

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %call21 = call i32* @__errno_location() #1, !dbg !645
  %18 = load i32, i32* %call21, align 4, !dbg !646, !tbaa !619
  %cmp22 = icmp eq i32 %18, 19, !dbg !647
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23, !dbg !648

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %call24 = call i32* @__errno_location() #1, !dbg !649
  %19 = load i32, i32* %call24, align 4, !dbg !650, !tbaa !619
  %cmp25 = icmp eq i32 %19, 13, !dbg !651
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !652

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false.17, %if.then.14
  %20 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8, !dbg !653, !tbaa !543
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0)), !dbg !654
  br label %if.end.29, !dbg !654

if.else.27:                                       ; preds = %lor.lhs.false.23
  %21 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !655, !tbaa !543
  %call28 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21), !dbg !656
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  store i32 -1, i32* %retval, !dbg !657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !657

if.end.30:                                        ; preds = %if.else
  %22 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !658, !tbaa !585
  %cmp31 = icmp sge i32 %22, 0, !dbg !660
  br i1 %cmp31, label %if.then.32, label %if.else.34, !dbg !661

if.then.32:                                       ; preds = %if.end.30
  %23 = load i32, i32* %fd, align 4, !dbg !662, !tbaa !619
  %call33 = call i32 @close(i32 %23), !dbg !664
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !665, !tbaa !585
  store i32 %24, i32* %fd, align 4, !dbg !666, !tbaa !619
  br label %if.end.44, !dbg !667

if.else.34:                                       ; preds = %if.end.30
  %25 = load i32, i32* %fd, align 4, !dbg !668, !tbaa !619
  %call35 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %25, %struct.stat* %st) #3, !dbg !671
  %tobool36 = icmp ne i32 %call35, 0, !dbg !671
  br i1 %tobool36, label %if.then.37, label %if.else.40, !dbg !672

if.then.37:                                       ; preds = %if.else.34
  %26 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !673, !tbaa !543
  %call38 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %26), !dbg !675
  %27 = load i32, i32* %fd, align 4, !dbg !676, !tbaa !619
  %call39 = call i32 @close(i32 %27), !dbg !677
  store i32 -1, i32* %retval, !dbg !678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !678

if.else.40:                                       ; preds = %if.else.34
  %28 = load i32, i32* %fd, align 4, !dbg !679, !tbaa !619
  store i32 %28, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !681, !tbaa !585
  %st_dev41 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0, !dbg !682
  %29 = load i64, i64* %st_dev41, align 8, !dbg !682, !tbaa !597
  store i64 %29, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 1), align 8, !dbg !683, !tbaa !601
  %st_ino42 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !684
  %30 = load i64, i64* %st_ino42, align 8, !dbg !684, !tbaa !605
  store i64 %30, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 2), align 8, !dbg !685, !tbaa !607
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.32
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.10
  %31 = bitcast %struct._ts** %_save46 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !686
  call void @llvm.dbg.declare(metadata %struct._ts** %_save46, metadata !482, metadata !547), !dbg !687
  %call47 = call %struct._ts* @PyEval_SaveThread(), !dbg !688
  store %struct._ts* %call47, %struct._ts** %_save46, align 8, !dbg !689, !tbaa !543
  br label %do.body, !dbg !690

do.body:                                          ; preds = %do.cond.56, %if.end.45
  br label %do.body.48, !dbg !691

do.body.48:                                       ; preds = %land.end, %do.body
  %32 = load i32, i32* %fd, align 4, !dbg !693, !tbaa !619
  %33 = load i8*, i8** %buffer.addr, align 8, !dbg !695, !tbaa !543
  %34 = load i64, i64* %size.addr, align 8, !dbg !696, !tbaa !549
  %call49 = call i64 @read(i32 %32, i8* %33, i64 %34), !dbg !697
  store i64 %call49, i64* %n, align 8, !dbg !698, !tbaa !549
  br label %do.cond, !dbg !699

do.cond:                                          ; preds = %do.body.48
  %35 = load i64, i64* %n, align 8, !dbg !700, !tbaa !549
  %cmp50 = icmp slt i64 %35, 0, !dbg !702
  br i1 %cmp50, label %land.rhs, label %land.end, !dbg !703

land.rhs:                                         ; preds = %do.cond
  %call51 = call i32* @__errno_location() #1, !dbg !704
  %36 = load i32, i32* %call51, align 4, !dbg !706, !tbaa !619
  %cmp52 = icmp eq i32 %36, 4, !dbg !707
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %37 = phi i1 [ false, %do.cond ], [ %cmp52, %land.rhs ]
  br i1 %37, label %do.body.48, label %do.end, !dbg !708

do.end:                                           ; preds = %land.end
  %38 = load i64, i64* %n, align 8, !dbg !710, !tbaa !549
  %cmp53 = icmp sle i64 %38, 0, !dbg !712
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !713

if.then.54:                                       ; preds = %do.end
  br label %do.end.58, !dbg !714

if.end.55:                                        ; preds = %do.end
  %39 = load i64, i64* %n, align 8, !dbg !715, !tbaa !549
  %40 = load i8*, i8** %buffer.addr, align 8, !dbg !716, !tbaa !543
  %add.ptr = getelementptr i8, i8* %40, i64 %39, !dbg !716
  store i8* %add.ptr, i8** %buffer.addr, align 8, !dbg !716, !tbaa !543
  %41 = load i64, i64* %n, align 8, !dbg !717, !tbaa !549
  %42 = load i64, i64* %size.addr, align 8, !dbg !718, !tbaa !549
  %sub = sub i64 %42, %41, !dbg !718
  store i64 %sub, i64* %size.addr, align 8, !dbg !718, !tbaa !549
  br label %do.cond.56, !dbg !719

do.cond.56:                                       ; preds = %if.end.55
  %43 = load i64, i64* %size.addr, align 8, !dbg !720, !tbaa !549
  %cmp57 = icmp slt i64 0, %43, !dbg !722
  br i1 %cmp57, label %do.body, label %do.end.58, !dbg !719

do.end.58:                                        ; preds = %do.cond.56, %if.then.54
  %44 = load %struct._ts*, %struct._ts** %_save46, align 8, !dbg !723, !tbaa !543
  call void @PyEval_RestoreThread(%struct._ts* %44), !dbg !724
  %45 = bitcast %struct._ts** %_save46 to i8*, !dbg !725
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !725
  %46 = load i64, i64* %n, align 8, !dbg !726, !tbaa !549
  %cmp59 = icmp sle i64 %46, 0, !dbg !728
  br i1 %cmp59, label %if.then.60, label %if.end.67, !dbg !729

if.then.60:                                       ; preds = %do.end.58
  %47 = load i64, i64* %n, align 8, !dbg !730, !tbaa !549
  %cmp61 = icmp slt i64 %47, 0, !dbg !733
  br i1 %cmp61, label %if.then.62, label %if.else.64, !dbg !734

if.then.62:                                       ; preds = %if.then.60
  %48 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !735, !tbaa !543
  %call63 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %48), !dbg !736
  br label %if.end.66, !dbg !736

if.else.64:                                       ; preds = %if.then.60
  %49 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !737, !tbaa !543
  %50 = load i64, i64* %size.addr, align 8, !dbg !738, !tbaa !549
  %call65 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i64 %50), !dbg !739
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  store i32 -1, i32* %retval, !dbg !740
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !740

if.end.67:                                        ; preds = %do.end.58
  store i32 0, i32* %retval, !dbg !741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !741

cleanup:                                          ; preds = %if.end.67, %if.end.66, %if.then.37, %if.end.29, %if.then
  %51 = bitcast %struct.stat* %st to i8*, !dbg !742
  call void @llvm.lifetime.end(i64 144, i8* %51) #3, !dbg !742
  %52 = bitcast i64* %n to i8*, !dbg !742
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !742
  %53 = bitcast i32* %fd to i8*, !dbg !742
  call void @llvm.lifetime.end(i64 4, i8* %53) #3, !dbg !742
  %54 = load i32, i32* %retval, !dbg !742
  ret i32 %54, !dbg !742
}

; Function Attrs: nounwind uwtable
define void @_PyRandom_Init() #0 {
entry:
  %env = alloca i8*, align 8
  %secret = alloca i8*, align 8
  %secret_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %endptr = alloca i8*, align 8
  %seed = alloca i64, align 8
  %0 = bitcast i8** %env to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !743
  call void @llvm.dbg.declare(metadata i8** %env, metadata !38, metadata !547), !dbg !744
  %1 = bitcast i8** %secret to i8*, !dbg !745
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !745
  call void @llvm.dbg.declare(metadata i8** %secret, metadata !39, metadata !547), !dbg !746
  store i8* getelementptr inbounds (%union._Py_HashSecret_t, %union._Py_HashSecret_t* @_Py_HashSecret, i32 0, i32 0, i32 0, i32 0), i8** %secret, align 8, !dbg !746, !tbaa !543
  %2 = bitcast i64* %secret_size to i8*, !dbg !747
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !747
  call void @llvm.dbg.declare(metadata i64* %secret_size, metadata !40, metadata !547), !dbg !748
  store i64 24, i64* %secret_size, align 8, !dbg !748, !tbaa !549
  %3 = load i32, i32* @_Py_HashSecret_Initialized, align 4, !dbg !749, !tbaa !619
  %tobool = icmp ne i32 %3, 0, !dbg !749
  br i1 %tobool, label %if.then, label %if.end, !dbg !751

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !752

if.end:                                           ; preds = %entry
  store i32 1, i32* @_Py_HashSecret_Initialized, align 4, !dbg !753, !tbaa !619
  %4 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !754, !tbaa !619
  %tobool1 = icmp ne i32 %4, 0, !dbg !754
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !754

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !755

cond.false:                                       ; preds = %if.end
  %call = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !757
  br label %cond.end, !dbg !754

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ], !dbg !754
  store i8* %cond, i8** %env, align 8, !dbg !759, !tbaa !543
  %5 = load i8*, i8** %env, align 8, !dbg !762, !tbaa !543
  %tobool2 = icmp ne i8* %5, null, !dbg !762
  br i1 %tobool2, label %land.lhs.true, label %if.else.76, !dbg !763

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i8*, i8** %env, align 8, !dbg !764, !tbaa !543
  %7 = load i8, i8* %6, align 1, !dbg !766, !tbaa !767
  %conv = sext i8 %7 to i32, !dbg !766
  %cmp = icmp ne i32 %conv, 0, !dbg !768
  br i1 %cmp, label %land.lhs.true.4, label %if.else.76, !dbg !769

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = bitcast i64* %__s1_len to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !770
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !41, metadata !547), !dbg !772
  %9 = bitcast i64* %__s2_len to i8*, !dbg !773
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !773
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !44, metadata !547), !dbg !774
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.5, label %cond.false.47, !dbg !775

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  store i64 6, i64* %__s2_len, align 8, !dbg !776, !tbaa !549
  %10 = load i64, i64* %__s2_len, align 8, !dbg !778, !tbaa !549
  %cmp6 = icmp ult i64 %10, 4, !dbg !779
  br i1 %cmp6, label %cond.true.8, label %cond.false.47, !dbg !780

cond.true.8:                                      ; preds = %land.lhs.true.5
  %11 = bitcast i8** %__s1 to i8*, !dbg !781
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !781
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !45, metadata !547), !dbg !783
  %12 = load i8*, i8** %env, align 8, !dbg !784, !tbaa !543
  store i8* %12, i8** %__s1, align 8, !dbg !783, !tbaa !543
  %13 = bitcast i32* %__result to i8*, !dbg !785
  call void @llvm.lifetime.start(i64 4, i8* %13) #3, !dbg !785
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !47, metadata !547), !dbg !786
  %14 = load i8*, i8** %__s1, align 8, !dbg !787, !tbaa !543
  %arrayidx = getelementptr i8, i8* %14, i64 0, !dbg !787
  %15 = load i8, i8* %arrayidx, align 1, !dbg !787, !tbaa !767
  %conv11 = zext i8 %15 to i32, !dbg !787
  %16 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), align 1, !dbg !788, !tbaa !767
  %conv12 = zext i8 %16 to i32, !dbg !788
  %sub = sub i32 %conv11, %conv12, !dbg !789
  store i32 %sub, i32* %__result, align 4, !dbg !786, !tbaa !619
  %17 = load i64, i64* %__s2_len, align 8, !dbg !790, !tbaa !549
  %cmp13 = icmp ugt i64 %17, 0, !dbg !792
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.45, !dbg !793

land.lhs.true.15:                                 ; preds = %cond.true.8
  %18 = load i32, i32* %__result, align 4, !dbg !794, !tbaa !619
  %cmp16 = icmp eq i32 %18, 0, !dbg !796
  br i1 %cmp16, label %if.then.18, label %if.end.45, !dbg !797

if.then.18:                                       ; preds = %land.lhs.true.15
  %19 = load i8*, i8** %__s1, align 8, !dbg !798, !tbaa !543
  %arrayidx19 = getelementptr i8, i8* %19, i64 1, !dbg !798
  %20 = load i8, i8* %arrayidx19, align 1, !dbg !798, !tbaa !767
  %conv20 = zext i8 %20 to i32, !dbg !798
  %21 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 1), align 1, !dbg !801, !tbaa !767
  %conv21 = zext i8 %21 to i32, !dbg !801
  %sub22 = sub i32 %conv20, %conv21, !dbg !802
  store i32 %sub22, i32* %__result, align 4, !dbg !803, !tbaa !619
  %22 = load i64, i64* %__s2_len, align 8, !dbg !804, !tbaa !549
  %cmp23 = icmp ugt i64 %22, 1, !dbg !806
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.44, !dbg !807

land.lhs.true.25:                                 ; preds = %if.then.18
  %23 = load i32, i32* %__result, align 4, !dbg !808, !tbaa !619
  %cmp26 = icmp eq i32 %23, 0, !dbg !810
  br i1 %cmp26, label %if.then.28, label %if.end.44, !dbg !811

if.then.28:                                       ; preds = %land.lhs.true.25
  %24 = load i8*, i8** %__s1, align 8, !dbg !812, !tbaa !543
  %arrayidx29 = getelementptr i8, i8* %24, i64 2, !dbg !812
  %25 = load i8, i8* %arrayidx29, align 1, !dbg !812, !tbaa !767
  %conv30 = zext i8 %25 to i32, !dbg !812
  %26 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 2), align 1, !dbg !815, !tbaa !767
  %conv31 = zext i8 %26 to i32, !dbg !815
  %sub32 = sub i32 %conv30, %conv31, !dbg !816
  store i32 %sub32, i32* %__result, align 4, !dbg !817, !tbaa !619
  %27 = load i64, i64* %__s2_len, align 8, !dbg !818, !tbaa !549
  %cmp33 = icmp ugt i64 %27, 2, !dbg !820
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.43, !dbg !821

land.lhs.true.35:                                 ; preds = %if.then.28
  %28 = load i32, i32* %__result, align 4, !dbg !822, !tbaa !619
  %cmp36 = icmp eq i32 %28, 0, !dbg !824
  br i1 %cmp36, label %if.then.38, label %if.end.43, !dbg !825

if.then.38:                                       ; preds = %land.lhs.true.35
  %29 = load i8*, i8** %__s1, align 8, !dbg !826, !tbaa !543
  %arrayidx39 = getelementptr i8, i8* %29, i64 3, !dbg !826
  %30 = load i8, i8* %arrayidx39, align 1, !dbg !826, !tbaa !767
  %conv40 = zext i8 %30 to i32, !dbg !826
  %31 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i64 3), align 1, !dbg !828, !tbaa !767
  %conv41 = zext i8 %31 to i32, !dbg !828
  %sub42 = sub i32 %conv40, %conv41, !dbg !829
  store i32 %sub42, i32* %__result, align 4, !dbg !830, !tbaa !619
  br label %if.end.43, !dbg !831

if.end.43:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.then.28
  br label %if.end.44, !dbg !832

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.25, %if.then.18
  br label %if.end.45, !dbg !836

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.15, %cond.true.8
  %32 = load i32, i32* %__result, align 4, !dbg !840, !tbaa !619
  store i32 %32, i32* %tmp46, !dbg !844, !tbaa !619
  %33 = bitcast i32* %__result to i8*, !dbg !845
  call void @llvm.lifetime.end(i64 4, i8* %33) #3, !dbg !845
  %34 = bitcast i8** %__s1 to i8*, !dbg !845
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !845
  %35 = load i32, i32* %tmp46, !dbg !846, !tbaa !619
  br label %cond.end.49, !dbg !780

cond.false.47:                                    ; preds = %land.lhs.true.5, %land.lhs.true.4
  %36 = load i8*, i8** %env, align 8, !dbg !847, !tbaa !543
  %call48 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #3, !dbg !850
  br label %cond.end.49, !dbg !780

cond.end.49:                                      ; preds = %cond.false.47, %if.end.45
  %cond50 = phi i32 [ %35, %if.end.45 ], [ %call48, %cond.false.47 ], !dbg !780
  store i32 %cond50, i32* %tmp, !dbg !851, !tbaa !619
  %37 = bitcast i64* %__s2_len to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !854
  %38 = bitcast i64* %__s1_len to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !854
  %39 = load i32, i32* %tmp, !dbg !855, !tbaa !619
  %cmp51 = icmp ne i32 %39, 0, !dbg !856
  br i1 %cmp51, label %if.then.53, label %if.else.76, !dbg !857

if.then.53:                                       ; preds = %cond.end.49
  %40 = bitcast i8** %endptr to i8*, !dbg !858
  call void @llvm.lifetime.start(i64 8, i8* %40) #3, !dbg !858
  call void @llvm.dbg.declare(metadata i8** %endptr, metadata !48, metadata !547), !dbg !859
  %41 = load i8*, i8** %env, align 8, !dbg !860, !tbaa !543
  store i8* %41, i8** %endptr, align 8, !dbg !859, !tbaa !543
  %42 = bitcast i64* %seed to i8*, !dbg !861
  call void @llvm.lifetime.start(i64 8, i8* %42) #3, !dbg !861
  call void @llvm.dbg.declare(metadata i64* %seed, metadata !50, metadata !547), !dbg !862
  %43 = load i8*, i8** %env, align 8, !dbg !863, !tbaa !543
  %call56 = call i64 @strtoul(i8* %43, i8** %endptr, i32 10) #3, !dbg !864
  store i64 %call56, i64* %seed, align 8, !dbg !865, !tbaa !549
  %44 = load i8*, i8** %endptr, align 8, !dbg !866, !tbaa !543
  %45 = load i8, i8* %44, align 1, !dbg !868, !tbaa !767
  %conv57 = sext i8 %45 to i32, !dbg !868
  %cmp58 = icmp ne i32 %conv57, 0, !dbg !869
  br i1 %cmp58, label %if.then.69, label %lor.lhs.false, !dbg !870

lor.lhs.false:                                    ; preds = %if.then.53
  %46 = load i64, i64* %seed, align 8, !dbg !871, !tbaa !549
  %cmp60 = icmp ugt i64 %46, 4294967295, !dbg !873
  br i1 %cmp60, label %if.then.69, label %lor.lhs.false.62, !dbg !874

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %call63 = call i32* @__errno_location() #1, !dbg !875
  %47 = load i32, i32* %call63, align 4, !dbg !876, !tbaa !619
  %cmp64 = icmp eq i32 %47, 34, !dbg !877
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.70, !dbg !878

land.lhs.true.66:                                 ; preds = %lor.lhs.false.62
  %48 = load i64, i64* %seed, align 8, !dbg !879, !tbaa !549
  %cmp67 = icmp eq i64 %48, -1, !dbg !881
  br i1 %cmp67, label %if.then.69, label %if.end.70, !dbg !882

if.then.69:                                       ; preds = %land.lhs.true.66, %lor.lhs.false, %if.then.53
  call void @Py_FatalError(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !883
  unreachable, !dbg !883

if.end.70:                                        ; preds = %land.lhs.true.66, %lor.lhs.false.62
  %49 = load i64, i64* %seed, align 8, !dbg !885, !tbaa !549
  %cmp71 = icmp eq i64 %49, 0, !dbg !887
  br i1 %cmp71, label %if.then.73, label %if.else, !dbg !888

if.then.73:                                       ; preds = %if.end.70
  %50 = load i8*, i8** %secret, align 8, !dbg !889, !tbaa !543
  %51 = load i64, i64* %secret_size, align 8, !dbg !891, !tbaa !549
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %51, i32 1, i1 false), !dbg !892
  br label %if.end.75, !dbg !893

if.else:                                          ; preds = %if.end.70
  %52 = load i64, i64* %seed, align 8, !dbg !894, !tbaa !549
  %conv74 = trunc i64 %52 to i32, !dbg !894
  %53 = load i8*, i8** %secret, align 8, !dbg !896, !tbaa !543
  %54 = load i64, i64* %secret_size, align 8, !dbg !897, !tbaa !549
  call void @lcg_urandom(i32 %conv74, i8* %53, i64 %54), !dbg !898
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.73
  %55 = bitcast i64* %seed to i8*, !dbg !899
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !899
  %56 = bitcast i8** %endptr to i8*, !dbg !899
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !899
  br label %if.end.77, !dbg !900

if.else.76:                                       ; preds = %cond.end.49, %land.lhs.true, %cond.end
  %57 = load i8*, i8** %secret, align 8, !dbg !901, !tbaa !543
  %58 = load i64, i64* %secret_size, align 8, !dbg !903, !tbaa !549
  call void @dev_urandom_noraise(i8* %57, i64 %58), !dbg !904
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.end.75
  store i32 0, i32* %cleanup.dest.slot, !dbg !905
  br label %cleanup, !dbg !905

cleanup:                                          ; preds = %if.end.77, %if.then
  %59 = bitcast i64* %secret_size to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !906
  %60 = bitcast i8** %secret to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %60) #3, !dbg !906
  %61 = bitcast i8** %env to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !906
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !905

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @lcg_urandom(i32 %x0, i8* %buffer, i64 %size) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %x = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !619
  call void @llvm.dbg.declare(metadata i32* %x0.addr, metadata !515, metadata !547), !dbg !907
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !516, metadata !547), !dbg !908
  store i64 %size, i64* %size.addr, align 8, !tbaa !549
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !517, metadata !547), !dbg !909
  %0 = bitcast i64* %index to i8*, !dbg !910
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !910
  call void @llvm.dbg.declare(metadata i64* %index, metadata !518, metadata !547), !dbg !911
  %1 = bitcast i32* %x to i8*, !dbg !912
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !912
  call void @llvm.dbg.declare(metadata i32* %x, metadata !519, metadata !547), !dbg !913
  %2 = load i32, i32* %x0.addr, align 4, !dbg !914, !tbaa !619
  store i32 %2, i32* %x, align 4, !dbg !915, !tbaa !619
  store i64 0, i64* %index, align 8, !dbg !916, !tbaa !549
  br label %for.cond, !dbg !918

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %index, align 8, !dbg !919, !tbaa !549
  %4 = load i64, i64* %size.addr, align 8, !dbg !923, !tbaa !549
  %cmp = icmp ult i64 %3, %4, !dbg !924
  br i1 %cmp, label %for.body, label %for.end, !dbg !925

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x, align 4, !dbg !926, !tbaa !619
  %mul = mul i32 %5, 214013, !dbg !926
  store i32 %mul, i32* %x, align 4, !dbg !926, !tbaa !619
  %6 = load i32, i32* %x, align 4, !dbg !928, !tbaa !619
  %add = add i32 %6, 2531011, !dbg !928
  store i32 %add, i32* %x, align 4, !dbg !928, !tbaa !619
  %7 = load i32, i32* %x, align 4, !dbg !929, !tbaa !619
  %shr = lshr i32 %7, 16, !dbg !930
  %and = and i32 %shr, 255, !dbg !931
  %conv = trunc i32 %and to i8, !dbg !932
  %8 = load i64, i64* %index, align 8, !dbg !933, !tbaa !549
  %9 = load i8*, i8** %buffer.addr, align 8, !dbg !934, !tbaa !543
  %arrayidx = getelementptr i8, i8* %9, i64 %8, !dbg !934
  store i8 %conv, i8* %arrayidx, align 1, !dbg !935, !tbaa !767
  br label %for.inc, !dbg !936

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %index, align 8, !dbg !937, !tbaa !549
  %inc = add i64 %10, 1, !dbg !937
  store i64 %inc, i64* %index, align 8, !dbg !937, !tbaa !549
  br label %for.cond, !dbg !938

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %x to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !dbg !939
  %12 = bitcast i64* %index to i8*, !dbg !939
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !939
  ret void, !dbg !939
}

; Function Attrs: nounwind uwtable
define internal void @dev_urandom_noraise(i8* %buffer, i64 %size) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %n = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !524, metadata !547), !dbg !940
  store i64 %size, i64* %size.addr, align 8, !tbaa !549
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !525, metadata !547), !dbg !941
  %0 = bitcast i32* %fd to i8*, !dbg !942
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !942
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !526, metadata !547), !dbg !943
  %1 = bitcast i64* %n to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !944
  call void @llvm.dbg.declare(metadata i64* %n, metadata !527, metadata !547), !dbg !945
  %call = call i32 @_Py_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !946
  store i32 %call, i32* %fd, align 4, !dbg !947, !tbaa !619
  %2 = load i32, i32* %fd, align 4, !dbg !948, !tbaa !619
  %cmp = icmp slt i32 %2, 0, !dbg !950
  br i1 %cmp, label %if.then, label %if.end, !dbg !951

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !952
  unreachable, !dbg !952

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !953

while.cond:                                       ; preds = %if.end.8, %if.end
  %3 = load i64, i64* %size.addr, align 8, !dbg !954, !tbaa !549
  %cmp1 = icmp slt i64 0, %3, !dbg !957
  br i1 %cmp1, label %while.body, label %while.end, !dbg !953

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !958

do.body:                                          ; preds = %land.end, %while.body
  %4 = load i32, i32* %fd, align 4, !dbg !960, !tbaa !619
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !962, !tbaa !543
  %6 = load i64, i64* %size.addr, align 8, !dbg !963, !tbaa !549
  %call2 = call i64 @read(i32 %4, i8* %5, i64 %6), !dbg !964
  store i64 %call2, i64* %n, align 8, !dbg !965, !tbaa !549
  br label %do.cond, !dbg !966

do.cond:                                          ; preds = %do.body
  %7 = load i64, i64* %n, align 8, !dbg !967, !tbaa !549
  %cmp3 = icmp slt i64 %7, 0, !dbg !969
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !970

land.rhs:                                         ; preds = %do.cond
  %call4 = call i32* @__errno_location() #1, !dbg !971
  %8 = load i32, i32* %call4, align 4, !dbg !973, !tbaa !619
  %cmp5 = icmp eq i32 %8, 4, !dbg !974
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %do.body, label %do.end, !dbg !975

do.end:                                           ; preds = %land.end
  %10 = load i64, i64* %n, align 8, !dbg !977, !tbaa !549
  %cmp6 = icmp sle i64 %10, 0, !dbg !979
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !980

if.then.7:                                        ; preds = %do.end
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !981
  unreachable, !dbg !981

if.end.8:                                         ; preds = %do.end
  %11 = load i64, i64* %n, align 8, !dbg !983, !tbaa !549
  %12 = load i8*, i8** %buffer.addr, align 8, !dbg !984, !tbaa !543
  %add.ptr = getelementptr i8, i8* %12, i64 %11, !dbg !984
  store i8* %add.ptr, i8** %buffer.addr, align 8, !dbg !984, !tbaa !543
  %13 = load i64, i64* %n, align 8, !dbg !985, !tbaa !549
  %14 = load i64, i64* %size.addr, align 8, !dbg !986, !tbaa !549
  %sub = sub i64 %14, %13, !dbg !986
  store i64 %sub, i64* %size.addr, align 8, !dbg !986, !tbaa !549
  br label %while.cond, !dbg !953

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %fd, align 4, !dbg !987, !tbaa !619
  %call9 = call i32 @close(i32 %15), !dbg !988
  %16 = bitcast i64* %n to i8*, !dbg !989
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !989
  %17 = bitcast i32* %fd to i8*, !dbg !989
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !989
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define void @_PyRandom_Fini() #0 {
entry:
  call void @dev_urandom_close(), !dbg !990
  ret void, !dbg !991
}

; Function Attrs: nounwind uwtable
define internal void @dev_urandom_close() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !992, !tbaa !585
  %cmp = icmp sge i32 %0, 0, !dbg !994
  br i1 %cmp, label %if.then, label %if.end, !dbg !995

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !996, !tbaa !585
  %call = call i32 @close(i32 %1), !dbg !998
  store i32 -1, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4, !dbg !999, !tbaa !585
  br label %if.end, !dbg !1000

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1001
}

declare %struct._ts* @PyEval_SaveThread() #2

declare i32 @_Py_open(i8*, i32) #2

declare void @PyEval_RestoreThread(%struct._ts*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare i32 @close(i32) #2

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #7 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !619
  call void @llvm.dbg.declare(metadata i32* %__fd.addr, metadata !509, metadata !547), !dbg !1002
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !510, metadata !547), !dbg !1003
  %0 = load i32, i32* %__fd.addr, align 4, !dbg !1004, !tbaa !619
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !1005, !tbaa !543
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #3, !dbg !1006
  ret i32 %call, !dbg !1007
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!540, !541}
!llvm.ident = !{!542}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !24, globals: !529)
!1 = !DIFile(filename: "random.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !8, !11, !13, !15, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 62, baseType: !10)
!9 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!24 = !{!25, !34, !51, !52, !484, !511, !520, !528}
!25 = !DISubprogram(name: "_PyOS_URandom", scope: !26, file: !26, line: 235, type: !27, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @_PyOS_URandom, variables: !31)
!26 = !DIFile(filename: "Python/random.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !17}
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !{!32, !33}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 1, scope: !25, file: !26, line: 235, type: !30)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !25, file: !26, line: 235, type: !17)
!34 = !DISubprogram(name: "_PyRandom_Init", scope: !26, file: !26, line: 253, type: !35, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyRandom_Init, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !{!38, !39, !40, !41, !44, !45, !47, !48, !50}
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "env", scope: !34, file: !26, line: 255, type: !4)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "secret", scope: !34, file: !26, line: 256, type: !6)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "secret_size", scope: !34, file: !26, line: 257, type: !17)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !42, file: !26, line: 270, type: !8)
!42 = distinct !DILexicalBlock(scope: !43, file: !26, line: 270, column: 47)
!43 = distinct !DILexicalBlock(scope: !34, file: !26, line: 270, column: 9)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !42, file: !26, line: 270, type: !8)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !46, file: !26, line: 270, type: !13)
!46 = distinct !DILexicalBlock(scope: !42, file: !26, line: 270, column: 1590)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !46, file: !26, line: 270, type: !29)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endptr", scope: !49, file: !26, line: 271, type: !4)
!49 = distinct !DILexicalBlock(scope: !43, file: !26, line: 270, column: 2169)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seed", scope: !49, file: !26, line: 272, type: !10)
!51 = !DISubprogram(name: "_PyRandom_Fini", scope: !26, file: !26, line: 299, type: !35, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyRandom_Fini, variables: !2)
!52 = !DISubprogram(name: "dev_urandom_python", scope: !26, file: !26, line: 115, type: !53, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @dev_urandom_python, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!29, !4, !17}
!55 = !{!56, !57, !58, !59, !60, !99, !482}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 1, scope: !52, file: !26, line: 115, type: !4)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !52, file: !26, line: 115, type: !17)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !52, file: !26, line: 117, type: !29)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !52, file: !26, line: 118, type: !17)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !52, file: !26, line: 119, type: !61)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !62, line: 46, size: 1152, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!63 = !{!64, !66, !68, !70, !73, !75, !77, !78, !79, !81, !83, !85, !93, !94, !95}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !61, file: !62, line: 48, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !22, line: 133, baseType: !10)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !61, file: !62, line: 53, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !22, line: 136, baseType: !10)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !61, file: !62, line: 61, baseType: !69, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !22, line: 139, baseType: !10)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !61, file: !62, line: 62, baseType: !71, size: 32, align: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !22, line: 138, baseType: !72)
!72 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !61, file: !62, line: 64, baseType: !74, size: 32, align: 32, offset: 224)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !22, line: 134, baseType: !72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !61, file: !62, line: 65, baseType: !76, size: 32, align: 32, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !22, line: 135, baseType: !72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !61, file: !62, line: 67, baseType: !29, size: 32, align: 32, offset: 288)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !61, file: !62, line: 69, baseType: !65, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !61, file: !62, line: 74, baseType: !80, size: 64, align: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 140, baseType: !23)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !61, file: !62, line: 78, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !22, line: 162, baseType: !23)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !61, file: !62, line: 80, baseType: !84, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !22, line: 167, baseType: !23)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !61, file: !62, line: 91, baseType: !86, size: 128, align: 64, offset: 576)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !87, line: 120, size: 128, align: 64, elements: !88)
!87 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !86, file: !87, line: 122, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 148, baseType: !23)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !86, file: !87, line: 123, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !22, line: 184, baseType: !23)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !61, file: !62, line: 92, baseType: !86, size: 128, align: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !61, file: !62, line: 93, baseType: !86, size: 128, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !61, file: !62, line: 106, baseType: !96, size: 192, align: 64, offset: 960)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 192, align: 64, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 3)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !100, file: !26, line: 138, type: !103)
!100 = distinct !DILexicalBlock(scope: !101, file: !26, line: 138, column: 9)
!101 = distinct !DILexicalBlock(scope: !102, file: !26, line: 137, column: 10)
!102 = distinct !DILexicalBlock(scope: !52, file: !26, line: 135, column: 9)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !105, line: 139, baseType: !106)
!105 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !105, line: 69, size: 1536, align: 64, elements: !107)
!107 = !{!108, !110, !111, !452, !455, !456, !457, !458, !459, !460, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !105, line: 72, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !105, line: 73, baseType: !109, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !106, file: !105, line: 74, baseType: !112, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !105, line: 44, baseType: !114)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !105, line: 19, size: 832, align: 64, elements: !115)
!115 = !{!116, !118, !119, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !105, line: 21, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !114, file: !105, line: 22, baseType: !109, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !114, file: !105, line: 24, baseType: !120, size: 64, align: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !122, line: 109, baseType: !123)
!122 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !122, line: 105, size: 128, align: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !123, file: !122, line: 107, baseType: !17, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !123, file: !122, line: 108, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !122, line: 334, size: 3200, align: 64, elements: !129)
!129 = !{!130, !136, !137, !138, !139, !144, !201, !206, !211, !212, !217, !269, !300, !312, !318, !319, !320, !322, !324, !355, !356, !357, !366, !367, !372, !373, !375, !377, !387, !390, !408, !409, !410, !412, !414, !415, !417, !422, !427, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !128, file: !122, line: 335, baseType: !131, size: 192, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !122, line: 114, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 111, size: 192, align: 64, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !132, file: !122, line: 112, baseType: !121, size: 128, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !132, file: !122, line: 113, baseType: !17, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !128, file: !122, line: 336, baseType: !15, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !128, file: !122, line: 337, baseType: !17, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !128, file: !122, line: 337, baseType: !17, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !128, file: !122, line: 341, baseType: !140, size: 64, align: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !122, line: 308, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !120}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !128, file: !122, line: 342, baseType: !145, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !122, line: 314, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!29, !120, !149, !29}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !151)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !152, line: 246, size: 1728, align: 64, elements: !153)
!152 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !174, !175, !176, !177, !178, !180, !182, !186, !189, !191, !192, !193, !194, !195, !196, !197}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !151, file: !152, line: 247, baseType: !29, size: 32, align: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !151, file: !152, line: 252, baseType: !4, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !151, file: !152, line: 253, baseType: !4, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !151, file: !152, line: 254, baseType: !4, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !151, file: !152, line: 255, baseType: !4, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !151, file: !152, line: 256, baseType: !4, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !151, file: !152, line: 257, baseType: !4, size: 64, align: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !151, file: !152, line: 258, baseType: !4, size: 64, align: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !151, file: !152, line: 259, baseType: !4, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !151, file: !152, line: 261, baseType: !4, size: 64, align: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !151, file: !152, line: 262, baseType: !4, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !151, file: !152, line: 263, baseType: !4, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !151, file: !152, line: 265, baseType: !167, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !152, line: 161, size: 192, align: 64, elements: !169)
!169 = !{!170, !171, !173}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !168, file: !152, line: 162, baseType: !167, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !168, file: !152, line: 163, baseType: !172, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !168, file: !152, line: 167, baseType: !29, size: 32, align: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !151, file: !152, line: 267, baseType: !172, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !151, file: !152, line: 269, baseType: !29, size: 32, align: 32, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !151, file: !152, line: 273, baseType: !29, size: 32, align: 32, offset: 928)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !151, file: !152, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !151, file: !152, line: 279, baseType: !179, size: 16, align: 16, offset: 1024)
!179 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !151, file: !152, line: 280, baseType: !181, size: 8, align: 8, offset: 1040)
!181 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !151, file: !152, line: 281, baseType: !183, size: 8, align: 8, offset: 1048)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !151, file: !152, line: 285, baseType: !187, size: 64, align: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !152, line: 155, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !151, file: !152, line: 294, baseType: !190, size: 64, align: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 141, baseType: !23)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !151, file: !152, line: 303, baseType: !30, size: 64, align: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !151, file: !152, line: 304, baseType: !30, size: 64, align: 64, offset: 1280)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !151, file: !152, line: 305, baseType: !30, size: 64, align: 64, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !151, file: !152, line: 306, baseType: !30, size: 64, align: 64, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !151, file: !152, line: 307, baseType: !8, size: 64, align: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !151, file: !152, line: 309, baseType: !29, size: 32, align: 32, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !151, file: !152, line: 311, baseType: !198, size: 160, align: 8, offset: 1568)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !128, file: !122, line: 343, baseType: !202, size: 64, align: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !122, line: 316, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!120, !120, !4}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !128, file: !122, line: 344, baseType: !207, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !122, line: 318, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!29, !120, !4, !120}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !128, file: !122, line: 345, baseType: !30, size: 64, align: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !128, file: !122, line: 346, baseType: !213, size: 64, align: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !122, line: 320, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!120, !120}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !128, file: !122, line: 350, baseType: !218, size: 64, align: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !122, line: 278, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 236, size: 2176, align: 64, elements: !221)
!221 = !{!222, !227, !228, !229, !230, !231, !236, !238, !239, !240, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !220, file: !122, line: 241, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !122, line: 166, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!120, !120, !120}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !220, file: !122, line: 242, baseType: !223, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !220, file: !122, line: 243, baseType: !223, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !220, file: !122, line: 244, baseType: !223, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !220, file: !122, line: 245, baseType: !223, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !220, file: !122, line: 246, baseType: !232, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !122, line: 167, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!120, !120, !120, !120}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !220, file: !122, line: 247, baseType: !237, size: 64, align: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !122, line: 165, baseType: !214)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !220, file: !122, line: 248, baseType: !237, size: 64, align: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !220, file: !122, line: 249, baseType: !237, size: 64, align: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !220, file: !122, line: 250, baseType: !241, size: 64, align: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !122, line: 168, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!29, !120}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !220, file: !122, line: 251, baseType: !237, size: 64, align: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !220, file: !122, line: 252, baseType: !223, size: 64, align: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !220, file: !122, line: 253, baseType: !223, size: 64, align: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !220, file: !122, line: 254, baseType: !223, size: 64, align: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !220, file: !122, line: 255, baseType: !223, size: 64, align: 64, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !220, file: !122, line: 256, baseType: !223, size: 64, align: 64, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !220, file: !122, line: 257, baseType: !237, size: 64, align: 64, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !220, file: !122, line: 258, baseType: !30, size: 64, align: 64, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !220, file: !122, line: 259, baseType: !237, size: 64, align: 64, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !220, file: !122, line: 261, baseType: !223, size: 64, align: 64, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !220, file: !122, line: 262, baseType: !223, size: 64, align: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !220, file: !122, line: 263, baseType: !223, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !220, file: !122, line: 264, baseType: !223, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !220, file: !122, line: 265, baseType: !232, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !220, file: !122, line: 266, baseType: !223, size: 64, align: 64, offset: 1536)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !220, file: !122, line: 267, baseType: !223, size: 64, align: 64, offset: 1600)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !220, file: !122, line: 268, baseType: !223, size: 64, align: 64, offset: 1664)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !220, file: !122, line: 269, baseType: !223, size: 64, align: 64, offset: 1728)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !220, file: !122, line: 270, baseType: !223, size: 64, align: 64, offset: 1792)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !220, file: !122, line: 272, baseType: !223, size: 64, align: 64, offset: 1856)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !220, file: !122, line: 273, baseType: !223, size: 64, align: 64, offset: 1920)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !220, file: !122, line: 274, baseType: !223, size: 64, align: 64, offset: 1984)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !220, file: !122, line: 275, baseType: !223, size: 64, align: 64, offset: 2048)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !220, file: !122, line: 277, baseType: !237, size: 64, align: 64, offset: 2112)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !128, file: !122, line: 351, baseType: !270, size: 64, align: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !122, line: 292, baseType: !272)
!272 = !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 280, size: 640, align: 64, elements: !273)
!273 = !{!274, !279, !280, !285, !286, !287, !292, !293, !298, !299}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !272, file: !122, line: 281, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !122, line: 169, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!17, !120}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !272, file: !122, line: 282, baseType: !223, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !272, file: !122, line: 283, baseType: !281, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !122, line: 170, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!120, !120, !17}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !272, file: !122, line: 284, baseType: !281, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !272, file: !122, line: 285, baseType: !30, size: 64, align: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !272, file: !122, line: 286, baseType: !288, size: 64, align: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !122, line: 172, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!29, !120, !17, !120}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !272, file: !122, line: 287, baseType: !30, size: 64, align: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !272, file: !122, line: 288, baseType: !294, size: 64, align: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !122, line: 231, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!29, !120, !120}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !272, file: !122, line: 290, baseType: !223, size: 64, align: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !272, file: !122, line: 291, baseType: !281, size: 64, align: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !128, file: !122, line: 352, baseType: !301, size: 64, align: 64, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !122, line: 298, baseType: !303)
!303 = !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 294, size: 192, align: 64, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !303, file: !122, line: 295, baseType: !275, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !303, file: !122, line: 296, baseType: !223, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !303, file: !122, line: 297, baseType: !308, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !122, line: 174, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!29, !120, !120, !120}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !128, file: !122, line: 356, baseType: !313, size: 64, align: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !122, line: 321, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !120}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !128, file: !122, line: 357, baseType: !232, size: 64, align: 64, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !128, file: !122, line: 358, baseType: !213, size: 64, align: 64, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !128, file: !122, line: 359, baseType: !321, size: 64, align: 64, offset: 1152)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !122, line: 317, baseType: !224)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !128, file: !122, line: 360, baseType: !323, size: 64, align: 64, offset: 1216)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !122, line: 319, baseType: !309)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !128, file: !122, line: 363, baseType: !325, size: 64, align: 64, offset: 1280)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !122, line: 304, baseType: !327)
!327 = !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 301, size: 128, align: 64, elements: !328)
!328 = !{!329, !350}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !327, file: !122, line: 302, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !122, line: 193, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!29, !120, !334, !29}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !122, line: 191, baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !122, line: 178, size: 640, align: 64, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !347, !348, !349}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !336, file: !122, line: 179, baseType: !30, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !336, file: !122, line: 180, baseType: !120, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !336, file: !122, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !336, file: !122, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !336, file: !122, line: 184, baseType: !29, size: 32, align: 32, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !336, file: !122, line: 185, baseType: !29, size: 32, align: 32, offset: 288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !336, file: !122, line: 186, baseType: !4, size: 64, align: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !336, file: !122, line: 187, baseType: !346, size: 64, align: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !336, file: !122, line: 188, baseType: !346, size: 64, align: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !336, file: !122, line: 189, baseType: !346, size: 64, align: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !336, file: !122, line: 190, baseType: !30, size: 64, align: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !327, file: !122, line: 303, baseType: !351, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !122, line: 194, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !120, !334}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !128, file: !122, line: 366, baseType: !10, size: 64, align: 64, offset: 1344)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !128, file: !122, line: 368, baseType: !15, size: 64, align: 64, offset: 1408)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !128, file: !122, line: 372, baseType: !358, size: 64, align: 64, offset: 1472)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !122, line: 233, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!29, !120, !362, !30}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !122, line: 232, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!29, !120, !30}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !128, file: !122, line: 375, baseType: !241, size: 64, align: 64, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !128, file: !122, line: 379, baseType: !368, size: 64, align: 64, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !122, line: 322, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!120, !120, !120, !29}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !128, file: !122, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !128, file: !122, line: 385, baseType: !374, size: 64, align: 64, offset: 1728)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !122, line: 323, baseType: !214)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !128, file: !122, line: 386, baseType: !376, size: 64, align: 64, offset: 1792)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !122, line: 324, baseType: !214)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !128, file: !122, line: 389, baseType: !378, size: 64, align: 64, offset: 1856)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !380, line: 40, size: 256, align: 64, elements: !381)
!380 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!381 = !{!382, !383, !385, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !379, file: !380, line: 41, baseType: !15, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !379, file: !380, line: 42, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !380, line: 18, baseType: !224)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !379, file: !380, line: 43, baseType: !29, size: 32, align: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !379, file: !380, line: 45, baseType: !15, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !128, file: !122, line: 390, baseType: !388, size: 64, align: 64, offset: 1920)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !122, line: 390, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !128, file: !122, line: 391, baseType: !391, size: 64, align: 64, offset: 1984)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !393, line: 11, size: 320, align: 64, elements: !394)
!393 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!394 = !{!395, !396, !401, !406, !407}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !393, line: 12, baseType: !4, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !392, file: !393, line: 13, baseType: !397, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !393, line: 8, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!120, !120, !30}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !392, file: !393, line: 14, baseType: !402, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !393, line: 9, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!29, !120, !120, !30}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !392, file: !393, line: 15, baseType: !4, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !392, file: !393, line: 16, baseType: !30, size: 64, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !128, file: !122, line: 392, baseType: !127, size: 64, align: 64, offset: 2048)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !128, file: !122, line: 393, baseType: !120, size: 64, align: 64, offset: 2112)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !128, file: !122, line: 394, baseType: !411, size: 64, align: 64, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !122, line: 325, baseType: !233)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !128, file: !122, line: 395, baseType: !413, size: 64, align: 64, offset: 2240)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !122, line: 326, baseType: !309)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !128, file: !122, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !128, file: !122, line: 397, baseType: !416, size: 64, align: 64, offset: 2368)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !122, line: 327, baseType: !309)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !128, file: !122, line: 398, baseType: !418, size: 64, align: 64, offset: 2432)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !122, line: 329, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!120, !127, !17}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !128, file: !122, line: 399, baseType: !423, size: 64, align: 64, offset: 2496)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !122, line: 328, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!120, !127, !120, !120}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !128, file: !122, line: 400, baseType: !428, size: 64, align: 64, offset: 2560)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !122, line: 307, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !30}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !128, file: !122, line: 401, baseType: !241, size: 64, align: 64, offset: 2624)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !128, file: !122, line: 402, baseType: !120, size: 64, align: 64, offset: 2688)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !128, file: !122, line: 403, baseType: !120, size: 64, align: 64, offset: 2752)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !128, file: !122, line: 404, baseType: !120, size: 64, align: 64, offset: 2816)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !128, file: !122, line: 405, baseType: !120, size: 64, align: 64, offset: 2880)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !128, file: !122, line: 406, baseType: !120, size: 64, align: 64, offset: 2944)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !128, file: !122, line: 407, baseType: !140, size: 64, align: 64, offset: 3008)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !128, file: !122, line: 410, baseType: !72, size: 32, align: 32, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !128, file: !122, line: 412, baseType: !140, size: 64, align: 64, offset: 3136)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !114, file: !105, line: 25, baseType: !120, size: 64, align: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !114, file: !105, line: 26, baseType: !120, size: 64, align: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !114, file: !105, line: 27, baseType: !120, size: 64, align: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !114, file: !105, line: 28, baseType: !120, size: 64, align: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !114, file: !105, line: 30, baseType: !120, size: 64, align: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !114, file: !105, line: 31, baseType: !120, size: 64, align: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !114, file: !105, line: 32, baseType: !120, size: 64, align: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !114, file: !105, line: 33, baseType: !29, size: 32, align: 32, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !114, file: !105, line: 34, baseType: !29, size: 32, align: 32, offset: 672)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !114, file: !105, line: 37, baseType: !29, size: 32, align: 32, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !114, file: !105, line: 43, baseType: !120, size: 64, align: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !106, file: !105, line: 76, baseType: !453, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !105, line: 50, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !106, file: !105, line: 77, baseType: !29, size: 32, align: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !106, file: !105, line: 78, baseType: !5, size: 8, align: 8, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !106, file: !105, line: 80, baseType: !5, size: 8, align: 8, offset: 296)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !106, file: !105, line: 85, baseType: !29, size: 32, align: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !106, file: !105, line: 86, baseType: !29, size: 32, align: 32, offset: 352)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !106, file: !105, line: 88, baseType: !461, size: 64, align: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !105, line: 54, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!29, !120, !453, !29, !120}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !106, file: !105, line: 89, baseType: !461, size: 64, align: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !106, file: !105, line: 90, baseType: !120, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !106, file: !105, line: 91, baseType: !120, size: 64, align: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !106, file: !105, line: 93, baseType: !120, size: 64, align: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !106, file: !105, line: 94, baseType: !120, size: 64, align: 64, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !106, file: !105, line: 95, baseType: !120, size: 64, align: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !106, file: !105, line: 97, baseType: !120, size: 64, align: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !106, file: !105, line: 98, baseType: !120, size: 64, align: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !106, file: !105, line: 99, baseType: !120, size: 64, align: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !106, file: !105, line: 101, baseType: !120, size: 64, align: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !106, file: !105, line: 103, baseType: !29, size: 32, align: 32, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !106, file: !105, line: 105, baseType: !120, size: 64, align: 64, offset: 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !106, file: !105, line: 106, baseType: !23, size: 64, align: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !106, file: !105, line: 108, baseType: !29, size: 32, align: 32, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !106, file: !105, line: 109, baseType: !120, size: 64, align: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !106, file: !105, line: 134, baseType: !429, size: 64, align: 64, offset: 1408)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !106, file: !105, line: 135, baseType: !30, size: 64, align: 64, offset: 1472)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !483, file: !26, line: 171, type: !103)
!483 = distinct !DILexicalBlock(scope: !52, file: !26, line: 171, column: 5)
!484 = !DISubprogram(name: "fstat64", scope: !485, file: !485, line: 517, type: !486, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.stat64*)* @fstat64, variables: !508)
!485 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!486 = !DISubroutineType(types: !487)
!487 = !{!29, !29, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !62, line: 119, size: 1152, align: 64, elements: !490)
!490 = !{!491, !492, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !505, !506, !507}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !489, file: !62, line: 121, baseType: !65, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !489, file: !62, line: 123, baseType: !493, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !22, line: 137, baseType: !10)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !489, file: !62, line: 124, baseType: !69, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !489, file: !62, line: 125, baseType: !71, size: 32, align: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !489, file: !62, line: 132, baseType: !74, size: 32, align: 32, offset: 224)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !489, file: !62, line: 133, baseType: !76, size: 32, align: 32, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !489, file: !62, line: 135, baseType: !29, size: 32, align: 32, offset: 288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !489, file: !62, line: 136, baseType: !65, size: 64, align: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !489, file: !62, line: 137, baseType: !80, size: 64, align: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !489, file: !62, line: 143, baseType: !82, size: 64, align: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !489, file: !62, line: 144, baseType: !503, size: 64, align: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !22, line: 168, baseType: !23)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !489, file: !62, line: 152, baseType: !86, size: 128, align: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !489, file: !62, line: 153, baseType: !86, size: 128, align: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !489, file: !62, line: 154, baseType: !86, size: 128, align: 64, offset: 832)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !489, file: !62, line: 164, baseType: !96, size: 192, align: 64, offset: 960)
!508 = !{!509, !510}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !484, file: !485, line: 517, type: !29)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !484, file: !485, line: 517, type: !488)
!511 = !DISubprogram(name: "lcg_urandom", scope: !26, file: !26, line: 215, type: !512, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i64)* @lcg_urandom, variables: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !72, !6, !8}
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x0", arg: 1, scope: !511, file: !26, line: 215, type: !72)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 2, scope: !511, file: !26, line: 215, type: !6)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !511, file: !26, line: 215, type: !8)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !511, file: !26, line: 217, type: !8)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !511, file: !26, line: 218, type: !72)
!520 = !DISubprogram(name: "dev_urandom_noraise", scope: !26, file: !26, line: 84, type: !521, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i64)* @dev_urandom_noraise, variables: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !6, !17}
!523 = !{!524, !525, !526, !527}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 1, scope: !520, file: !26, line: 84, type: !6)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !520, file: !26, line: 84, type: !17)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !520, file: !26, line: 86, type: !29)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !520, file: !26, line: 87, type: !17)
!528 = !DISubprogram(name: "dev_urandom_close", scope: !26, file: !26, line: 198, type: !35, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @dev_urandom_close, variables: !2)
!529 = !{!530, !539}
!530 = !DIGlobalVariable(name: "urandom_cache", scope: !0, file: !26, line: 79, type: !531, isLocal: true, isDefinition: true, variable: %struct.anon.3* @urandom_cache)
!531 = !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 75, size: 192, align: 64, elements: !532)
!532 = !{!533, !534, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !531, file: !26, line: 76, baseType: !29, size: 32, align: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !531, file: !26, line: 77, baseType: !535, size: 64, align: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !536, line: 60, baseType: !65)
!536 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !531, file: !26, line: 78, baseType: !538, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !536, line: 50, baseType: !493)
!539 = !DIGlobalVariable(name: "_Py_HashSecret_Initialized", scope: !0, file: !26, line: 14, type: !29, isLocal: true, isDefinition: true, variable: i32* @_Py_HashSecret_Initialized)
!540 = !{i32 2, !"Dwarf Version", i32 4}
!541 = !{i32 2, !"Debug Info Version", i32 3}
!542 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!543 = !{!544, !544, i64 0}
!544 = !{!"any pointer", !545, i64 0}
!545 = !{!"omnipotent char", !546, i64 0}
!546 = !{!"Simple C/C++ TBAA"}
!547 = !DIExpression()
!548 = !DILocation(line: 235, column: 21, scope: !25)
!549 = !{!550, !550, i64 0}
!550 = !{!"long", !545, i64 0}
!551 = !DILocation(line: 235, column: 40, scope: !25)
!552 = !DILocation(line: 237, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !25, file: !26, line: 237, column: 9)
!554 = !DILocation(line: 237, column: 14, scope: !553)
!555 = !DILocation(line: 237, column: 9, scope: !25)
!556 = !DILocation(line: 238, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !26, line: 237, column: 19)
!558 = !DILocation(line: 238, column: 9, scope: !557)
!559 = !DILocation(line: 240, column: 9, scope: !557)
!560 = !DILocation(line: 242, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !25, file: !26, line: 242, column: 9)
!562 = !DILocation(line: 242, column: 14, scope: !561)
!563 = !DILocation(line: 242, column: 9, scope: !25)
!564 = !DILocation(line: 243, column: 9, scope: !561)
!565 = !DILocation(line: 248, column: 38, scope: !25)
!566 = !DILocation(line: 248, column: 46, scope: !25)
!567 = !DILocation(line: 248, column: 12, scope: !25)
!568 = !DILocation(line: 248, column: 5, scope: !25)
!569 = !DILocation(line: 250, column: 1, scope: !25)
!570 = !DILocation(line: 115, column: 26, scope: !52)
!571 = !DILocation(line: 115, column: 45, scope: !52)
!572 = !DILocation(line: 117, column: 5, scope: !52)
!573 = !DILocation(line: 117, column: 9, scope: !52)
!574 = !DILocation(line: 118, column: 5, scope: !52)
!575 = !DILocation(line: 118, column: 16, scope: !52)
!576 = !DILocation(line: 119, column: 5, scope: !52)
!577 = !DILocation(line: 119, column: 17, scope: !52)
!578 = !DILocation(line: 121, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !52, file: !26, line: 121, column: 9)
!580 = !DILocation(line: 121, column: 14, scope: !579)
!581 = !DILocation(line: 121, column: 9, scope: !52)
!582 = !DILocation(line: 122, column: 9, scope: !579)
!583 = !DILocation(line: 124, column: 23, scope: !584)
!584 = distinct !DILexicalBlock(scope: !52, file: !26, line: 124, column: 9)
!585 = !{!586, !587, i64 0}
!586 = !{!"", !587, i64 0, !550, i64 8, !550, i64 16}
!587 = !{!"int", !545, i64 0}
!588 = !DILocation(line: 124, column: 26, scope: !584)
!589 = !DILocation(line: 124, column: 9, scope: !52)
!590 = !DILocation(line: 126, column: 33, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !26, line: 126, column: 13)
!592 = distinct !DILexicalBlock(scope: !584, file: !26, line: 124, column: 32)
!593 = !DILocation(line: 126, column: 13, scope: !591)
!594 = !DILocation(line: 127, column: 13, scope: !591)
!595 = !DILocation(line: 127, column: 19, scope: !596)
!596 = !DILexicalBlockFile(scope: !591, file: !26, discriminator: 1)
!597 = !{!598, !550, i64 0}
!598 = !{!"stat", !550, i64 0, !550, i64 8, !550, i64 16, !587, i64 24, !587, i64 28, !587, i64 32, !587, i64 36, !550, i64 40, !550, i64 48, !550, i64 56, !550, i64 64, !599, i64 72, !599, i64 88, !599, i64 104, !545, i64 120}
!599 = !{!"timespec", !550, i64 0, !550, i64 8}
!600 = !DILocation(line: 127, column: 43, scope: !591)
!601 = !{!586, !550, i64 8}
!602 = !DILocation(line: 127, column: 26, scope: !591)
!603 = !DILocation(line: 128, column: 13, scope: !591)
!604 = !DILocation(line: 128, column: 19, scope: !596)
!605 = !{!598, !550, i64 8}
!606 = !DILocation(line: 128, column: 43, scope: !591)
!607 = !{!586, !550, i64 16}
!608 = !DILocation(line: 128, column: 26, scope: !591)
!609 = !DILocation(line: 126, column: 13, scope: !592)
!610 = !DILocation(line: 132, column: 30, scope: !611)
!611 = distinct !DILexicalBlock(scope: !591, file: !26, line: 128, column: 51)
!612 = !DILocation(line: 133, column: 9, scope: !611)
!613 = !DILocation(line: 134, column: 5, scope: !592)
!614 = !DILocation(line: 135, column: 23, scope: !102)
!615 = !DILocation(line: 135, column: 26, scope: !102)
!616 = !DILocation(line: 135, column: 9, scope: !52)
!617 = !DILocation(line: 136, column: 28, scope: !102)
!618 = !DILocation(line: 136, column: 12, scope: !102)
!619 = !{!587, !587, i64 0}
!620 = !DILocation(line: 136, column: 9, scope: !102)
!621 = !DILocation(line: 138, column: 11, scope: !100)
!622 = !DILocation(line: 138, column: 26, scope: !100)
!623 = !DILocation(line: 138, column: 41, scope: !100)
!624 = !DILocation(line: 138, column: 39, scope: !100)
!625 = !DILocation(line: 139, column: 14, scope: !100)
!626 = !DILocation(line: 139, column: 12, scope: !100)
!627 = !DILocation(line: 140, column: 30, scope: !100)
!628 = !DILocation(line: 140, column: 9, scope: !100)
!629 = !DILocation(line: 140, column: 38, scope: !101)
!630 = !DILocation(line: 141, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !101, file: !26, line: 141, column: 13)
!632 = !DILocation(line: 141, column: 16, scope: !631)
!633 = !DILocation(line: 141, column: 13, scope: !101)
!634 = !DILocation(line: 143, column: 19, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !26, line: 143, column: 17)
!636 = distinct !DILexicalBlock(scope: !631, file: !26, line: 142, column: 9)
!637 = !DILocation(line: 143, column: 18, scope: !635)
!638 = !DILocation(line: 143, column: 40, scope: !635)
!639 = !DILocation(line: 143, column: 45, scope: !635)
!640 = !DILocation(line: 143, column: 50, scope: !641)
!641 = !DILexicalBlockFile(scope: !635, file: !26, discriminator: 1)
!642 = !DILocation(line: 143, column: 49, scope: !635)
!643 = !DILocation(line: 143, column: 71, scope: !635)
!644 = !DILocation(line: 143, column: 76, scope: !635)
!645 = !DILocation(line: 144, column: 19, scope: !635)
!646 = !DILocation(line: 144, column: 18, scope: !635)
!647 = !DILocation(line: 144, column: 40, scope: !635)
!648 = !DILocation(line: 144, column: 46, scope: !635)
!649 = !DILocation(line: 144, column: 51, scope: !641)
!650 = !DILocation(line: 144, column: 50, scope: !635)
!651 = !DILocation(line: 144, column: 72, scope: !635)
!652 = !DILocation(line: 143, column: 17, scope: !636)
!653 = !DILocation(line: 145, column: 33, scope: !635)
!654 = !DILocation(line: 145, column: 17, scope: !635)
!655 = !DILocation(line: 148, column: 36, scope: !635)
!656 = !DILocation(line: 148, column: 17, scope: !635)
!657 = !DILocation(line: 149, column: 13, scope: !636)
!658 = !DILocation(line: 151, column: 27, scope: !659)
!659 = distinct !DILexicalBlock(scope: !101, file: !26, line: 151, column: 13)
!660 = !DILocation(line: 151, column: 30, scope: !659)
!661 = !DILocation(line: 151, column: 13, scope: !101)
!662 = !DILocation(line: 154, column: 19, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !26, line: 151, column: 36)
!664 = !DILocation(line: 154, column: 13, scope: !663)
!665 = !DILocation(line: 155, column: 32, scope: !663)
!666 = !DILocation(line: 155, column: 16, scope: !663)
!667 = !DILocation(line: 156, column: 9, scope: !663)
!668 = !DILocation(line: 158, column: 23, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !26, line: 158, column: 17)
!670 = distinct !DILexicalBlock(scope: !659, file: !26, line: 157, column: 14)
!671 = !DILocation(line: 158, column: 17, scope: !669)
!672 = !DILocation(line: 158, column: 17, scope: !670)
!673 = !DILocation(line: 159, column: 36, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !26, line: 158, column: 33)
!675 = !DILocation(line: 159, column: 17, scope: !674)
!676 = !DILocation(line: 160, column: 23, scope: !674)
!677 = !DILocation(line: 160, column: 17, scope: !674)
!678 = !DILocation(line: 161, column: 17, scope: !674)
!679 = !DILocation(line: 164, column: 36, scope: !680)
!680 = distinct !DILexicalBlock(scope: !669, file: !26, line: 163, column: 18)
!681 = !DILocation(line: 164, column: 34, scope: !680)
!682 = !DILocation(line: 165, column: 43, scope: !680)
!683 = !DILocation(line: 165, column: 38, scope: !680)
!684 = !DILocation(line: 166, column: 43, scope: !680)
!685 = !DILocation(line: 166, column: 38, scope: !680)
!686 = !DILocation(line: 171, column: 7, scope: !483)
!687 = !DILocation(line: 171, column: 22, scope: !483)
!688 = !DILocation(line: 171, column: 37, scope: !483)
!689 = !DILocation(line: 171, column: 35, scope: !483)
!690 = !DILocation(line: 172, column: 5, scope: !483)
!691 = !DILocation(line: 173, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !483, file: !26, line: 172, column: 8)
!693 = !DILocation(line: 174, column: 22, scope: !694)
!694 = distinct !DILexicalBlock(scope: !692, file: !26, line: 173, column: 12)
!695 = !DILocation(line: 174, column: 26, scope: !694)
!696 = !DILocation(line: 174, column: 42, scope: !694)
!697 = !DILocation(line: 174, column: 17, scope: !694)
!698 = !DILocation(line: 174, column: 15, scope: !694)
!699 = !DILocation(line: 175, column: 9, scope: !694)
!700 = !DILocation(line: 175, column: 18, scope: !701)
!701 = !DILexicalBlockFile(scope: !692, file: !26, discriminator: 1)
!702 = !DILocation(line: 175, column: 20, scope: !692)
!703 = !DILocation(line: 175, column: 24, scope: !692)
!704 = !DILocation(line: 175, column: 29, scope: !705)
!705 = !DILexicalBlockFile(scope: !692, file: !26, discriminator: 2)
!706 = !DILocation(line: 175, column: 28, scope: !692)
!707 = !DILocation(line: 175, column: 50, scope: !692)
!708 = !DILocation(line: 175, column: 9, scope: !709)
!709 = !DILexicalBlockFile(scope: !694, file: !26, discriminator: 3)
!710 = !DILocation(line: 176, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !692, file: !26, line: 176, column: 13)
!712 = !DILocation(line: 176, column: 15, scope: !711)
!713 = !DILocation(line: 176, column: 13, scope: !692)
!714 = !DILocation(line: 177, column: 13, scope: !711)
!715 = !DILocation(line: 178, column: 19, scope: !692)
!716 = !DILocation(line: 178, column: 16, scope: !692)
!717 = !DILocation(line: 179, column: 29, scope: !692)
!718 = !DILocation(line: 179, column: 14, scope: !692)
!719 = !DILocation(line: 180, column: 5, scope: !692)
!720 = !DILocation(line: 180, column: 18, scope: !721)
!721 = !DILexicalBlockFile(scope: !483, file: !26, discriminator: 1)
!722 = !DILocation(line: 180, column: 16, scope: !483)
!723 = !DILocation(line: 181, column: 26, scope: !483)
!724 = !DILocation(line: 181, column: 5, scope: !483)
!725 = !DILocation(line: 181, column: 34, scope: !52)
!726 = !DILocation(line: 183, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !52, file: !26, line: 183, column: 9)
!728 = !DILocation(line: 183, column: 11, scope: !727)
!729 = !DILocation(line: 183, column: 9, scope: !52)
!730 = !DILocation(line: 186, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !26, line: 186, column: 13)
!732 = distinct !DILexicalBlock(scope: !727, file: !26, line: 184, column: 5)
!733 = !DILocation(line: 186, column: 15, scope: !731)
!734 = !DILocation(line: 186, column: 13, scope: !732)
!735 = !DILocation(line: 187, column: 32, scope: !731)
!736 = !DILocation(line: 187, column: 13, scope: !731)
!737 = !DILocation(line: 189, column: 26, scope: !731)
!738 = !DILocation(line: 191, column: 26, scope: !731)
!739 = !DILocation(line: 189, column: 13, scope: !731)
!740 = !DILocation(line: 192, column: 9, scope: !732)
!741 = !DILocation(line: 194, column: 5, scope: !52)
!742 = !DILocation(line: 195, column: 1, scope: !52)
!743 = !DILocation(line: 255, column: 5, scope: !34)
!744 = !DILocation(line: 255, column: 11, scope: !34)
!745 = !DILocation(line: 256, column: 5, scope: !34)
!746 = !DILocation(line: 256, column: 20, scope: !34)
!747 = !DILocation(line: 257, column: 5, scope: !34)
!748 = !DILocation(line: 257, column: 16, scope: !34)
!749 = !DILocation(line: 260, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !34, file: !26, line: 260, column: 9)
!751 = !DILocation(line: 260, column: 9, scope: !34)
!752 = !DILocation(line: 261, column: 9, scope: !750)
!753 = !DILocation(line: 262, column: 32, scope: !34)
!754 = !DILocation(line: 269, column: 12, scope: !34)
!755 = !DILocation(line: 269, column: 12, scope: !756)
!756 = !DILexicalBlockFile(scope: !34, file: !26, discriminator: 1)
!757 = !DILocation(line: 269, column: 52, scope: !758)
!758 = !DILexicalBlockFile(scope: !34, file: !26, discriminator: 2)
!759 = !DILocation(line: 269, column: 9, scope: !760)
!760 = !DILexicalBlockFile(scope: !761, file: !26, discriminator: 4)
!761 = !DILexicalBlockFile(scope: !34, file: !26, discriminator: 3)
!762 = !DILocation(line: 270, column: 9, scope: !43)
!763 = !DILocation(line: 270, column: 13, scope: !43)
!764 = !DILocation(line: 270, column: 17, scope: !765)
!765 = !DILexicalBlockFile(scope: !43, file: !26, discriminator: 1)
!766 = !DILocation(line: 270, column: 16, scope: !43)
!767 = !{!545, !545, i64 0}
!768 = !DILocation(line: 270, column: 21, scope: !43)
!769 = !DILocation(line: 270, column: 29, scope: !43)
!770 = !DILocation(line: 270, column: 49, scope: !771)
!771 = !DILexicalBlockFile(scope: !42, file: !26, discriminator: 2)
!772 = !DILocation(line: 270, column: 56, scope: !42)
!773 = !DILocation(line: 270, column: 49, scope: !42)
!774 = !DILocation(line: 270, column: 66, scope: !42)
!775 = !DILocation(line: 270, column: 1385, scope: !42)
!776 = !DILocation(line: 270, column: 1398, scope: !777)
!777 = !DILexicalBlockFile(scope: !42, file: !26, discriminator: 3)
!778 = !DILocation(line: 270, column: 1419, scope: !42)
!779 = !DILocation(line: 270, column: 1428, scope: !42)
!780 = !DILocation(line: 270, column: 1269, scope: !42)
!781 = !DILocation(line: 270, column: 1592, scope: !782)
!782 = !DILexicalBlockFile(scope: !46, file: !26, discriminator: 5)
!783 = !DILocation(line: 270, column: 1613, scope: !46)
!784 = !DILocation(line: 270, column: 1660, scope: !46)
!785 = !DILocation(line: 270, column: 1666, scope: !46)
!786 = !DILocation(line: 270, column: 1679, scope: !46)
!787 = !DILocation(line: 270, column: 1690, scope: !46)
!788 = !DILocation(line: 270, column: 1700, scope: !46)
!789 = !DILocation(line: 270, column: 1698, scope: !46)
!790 = !DILocation(line: 270, column: 1760, scope: !791)
!791 = distinct !DILexicalBlock(scope: !46, file: !26, line: 270, column: 1760)
!792 = !DILocation(line: 270, column: 1769, scope: !791)
!793 = !DILocation(line: 270, column: 1773, scope: !791)
!794 = !DILocation(line: 270, column: 1776, scope: !795)
!795 = !DILexicalBlockFile(scope: !791, file: !26, discriminator: 7)
!796 = !DILocation(line: 270, column: 1785, scope: !791)
!797 = !DILocation(line: 270, column: 1760, scope: !46)
!798 = !DILocation(line: 270, column: 1805, scope: !799)
!799 = !DILexicalBlockFile(scope: !800, file: !26, discriminator: 9)
!800 = distinct !DILexicalBlock(scope: !791, file: !26, line: 270, column: 1791)
!801 = !DILocation(line: 270, column: 1815, scope: !800)
!802 = !DILocation(line: 270, column: 1813, scope: !800)
!803 = !DILocation(line: 270, column: 1802, scope: !800)
!804 = !DILocation(line: 270, column: 1876, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !26, line: 270, column: 1876)
!806 = !DILocation(line: 270, column: 1885, scope: !805)
!807 = !DILocation(line: 270, column: 1889, scope: !805)
!808 = !DILocation(line: 270, column: 1892, scope: !809)
!809 = !DILexicalBlockFile(scope: !805, file: !26, discriminator: 11)
!810 = !DILocation(line: 270, column: 1901, scope: !805)
!811 = !DILocation(line: 270, column: 1876, scope: !800)
!812 = !DILocation(line: 270, column: 1921, scope: !813)
!813 = !DILexicalBlockFile(scope: !814, file: !26, discriminator: 13)
!814 = distinct !DILexicalBlock(scope: !805, file: !26, line: 270, column: 1907)
!815 = !DILocation(line: 270, column: 1931, scope: !814)
!816 = !DILocation(line: 270, column: 1929, scope: !814)
!817 = !DILocation(line: 270, column: 1918, scope: !814)
!818 = !DILocation(line: 270, column: 1992, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !26, line: 270, column: 1992)
!820 = !DILocation(line: 270, column: 2001, scope: !819)
!821 = !DILocation(line: 270, column: 2005, scope: !819)
!822 = !DILocation(line: 270, column: 2008, scope: !823)
!823 = !DILexicalBlockFile(scope: !819, file: !26, discriminator: 15)
!824 = !DILocation(line: 270, column: 2017, scope: !819)
!825 = !DILocation(line: 270, column: 1992, scope: !814)
!826 = !DILocation(line: 270, column: 2035, scope: !827)
!827 = !DILexicalBlockFile(scope: !819, file: !26, discriminator: 17)
!828 = !DILocation(line: 270, column: 2045, scope: !819)
!829 = !DILocation(line: 270, column: 2043, scope: !819)
!830 = !DILocation(line: 270, column: 2032, scope: !819)
!831 = !DILocation(line: 270, column: 2023, scope: !819)
!832 = !DILocation(line: 270, column: 2102, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !26, discriminator: 19)
!834 = !DILexicalBlockFile(scope: !835, file: !26, discriminator: 18)
!835 = !DILexicalBlockFile(scope: !814, file: !26, discriminator: 16)
!836 = !DILocation(line: 270, column: 2104, scope: !837)
!837 = !DILexicalBlockFile(scope: !838, file: !26, discriminator: 20)
!838 = !DILexicalBlockFile(scope: !839, file: !26, discriminator: 14)
!839 = !DILexicalBlockFile(scope: !800, file: !26, discriminator: 12)
!840 = !DILocation(line: 270, column: 2106, scope: !841)
!841 = !DILexicalBlockFile(scope: !842, file: !26, discriminator: 21)
!842 = !DILexicalBlockFile(scope: !843, file: !26, discriminator: 10)
!843 = !DILexicalBlockFile(scope: !46, file: !26, discriminator: 8)
!844 = !DILocation(line: 270, column: 1788, scope: !791)
!845 = !DILocation(line: 270, column: 2116, scope: !42)
!846 = !DILocation(line: 270, column: 2116, scope: !46)
!847 = !DILocation(line: 270, column: 2141, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !26, discriminator: 6)
!849 = !DILexicalBlockFile(scope: !42, file: !26, discriminator: 4)
!850 = !DILocation(line: 270, column: 2123, scope: !42)
!851 = !DILocation(line: 270, column: 49, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !26, discriminator: 23)
!853 = !DILexicalBlockFile(scope: !42, file: !26, discriminator: 22)
!854 = !DILocation(line: 270, column: 2160, scope: !43)
!855 = !DILocation(line: 270, column: 2160, scope: !42)
!856 = !DILocation(line: 270, column: 2163, scope: !43)
!857 = !DILocation(line: 270, column: 9, scope: !34)
!858 = !DILocation(line: 271, column: 9, scope: !49)
!859 = !DILocation(line: 271, column: 15, scope: !49)
!860 = !DILocation(line: 271, column: 24, scope: !49)
!861 = !DILocation(line: 272, column: 9, scope: !49)
!862 = !DILocation(line: 272, column: 23, scope: !49)
!863 = !DILocation(line: 273, column: 24, scope: !49)
!864 = !DILocation(line: 273, column: 16, scope: !49)
!865 = !DILocation(line: 273, column: 14, scope: !49)
!866 = !DILocation(line: 274, column: 14, scope: !867)
!867 = distinct !DILexicalBlock(scope: !49, file: !26, line: 274, column: 13)
!868 = !DILocation(line: 274, column: 13, scope: !867)
!869 = !DILocation(line: 274, column: 21, scope: !867)
!870 = !DILocation(line: 275, column: 13, scope: !867)
!871 = !DILocation(line: 275, column: 16, scope: !872)
!872 = !DILexicalBlockFile(scope: !867, file: !26, discriminator: 1)
!873 = !DILocation(line: 275, column: 21, scope: !867)
!874 = !DILocation(line: 276, column: 13, scope: !867)
!875 = !DILocation(line: 276, column: 19, scope: !872)
!876 = !DILocation(line: 276, column: 18, scope: !867)
!877 = !DILocation(line: 276, column: 40, scope: !867)
!878 = !DILocation(line: 276, column: 46, scope: !867)
!879 = !DILocation(line: 276, column: 49, scope: !880)
!880 = !DILexicalBlockFile(scope: !867, file: !26, discriminator: 2)
!881 = !DILocation(line: 276, column: 54, scope: !867)
!882 = !DILocation(line: 274, column: 13, scope: !49)
!883 = !DILocation(line: 278, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !867, file: !26, line: 277, column: 9)
!885 = !DILocation(line: 281, column: 13, scope: !886)
!886 = distinct !DILexicalBlock(scope: !49, file: !26, line: 281, column: 13)
!887 = !DILocation(line: 281, column: 18, scope: !886)
!888 = !DILocation(line: 281, column: 13, scope: !49)
!889 = !DILocation(line: 283, column: 20, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !26, line: 281, column: 24)
!891 = !DILocation(line: 283, column: 31, scope: !890)
!892 = !DILocation(line: 283, column: 13, scope: !890)
!893 = !DILocation(line: 284, column: 9, scope: !890)
!894 = !DILocation(line: 286, column: 25, scope: !895)
!895 = distinct !DILexicalBlock(scope: !886, file: !26, line: 285, column: 14)
!896 = !DILocation(line: 286, column: 31, scope: !895)
!897 = !DILocation(line: 286, column: 39, scope: !895)
!898 = !DILocation(line: 286, column: 13, scope: !895)
!899 = !DILocation(line: 288, column: 5, scope: !43)
!900 = !DILocation(line: 288, column: 5, scope: !49)
!901 = !DILocation(line: 293, column: 29, scope: !902)
!902 = distinct !DILexicalBlock(scope: !43, file: !26, line: 289, column: 10)
!903 = !DILocation(line: 293, column: 37, scope: !902)
!904 = !DILocation(line: 293, column: 9, scope: !902)
!905 = !DILocation(line: 296, column: 1, scope: !34)
!906 = !DILocation(line: 296, column: 1, scope: !756)
!907 = !DILocation(line: 215, column: 26, scope: !511)
!908 = !DILocation(line: 215, column: 45, scope: !511)
!909 = !DILocation(line: 215, column: 60, scope: !511)
!910 = !DILocation(line: 217, column: 5, scope: !511)
!911 = !DILocation(line: 217, column: 12, scope: !511)
!912 = !DILocation(line: 218, column: 5, scope: !511)
!913 = !DILocation(line: 218, column: 18, scope: !511)
!914 = !DILocation(line: 220, column: 9, scope: !511)
!915 = !DILocation(line: 220, column: 7, scope: !511)
!916 = !DILocation(line: 221, column: 15, scope: !917)
!917 = distinct !DILexicalBlock(scope: !511, file: !26, line: 221, column: 5)
!918 = !DILocation(line: 221, column: 10, scope: !917)
!919 = !DILocation(line: 221, column: 19, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !26, discriminator: 2)
!921 = !DILexicalBlockFile(scope: !922, file: !26, discriminator: 1)
!922 = distinct !DILexicalBlock(scope: !917, file: !26, line: 221, column: 5)
!923 = !DILocation(line: 221, column: 27, scope: !922)
!924 = !DILocation(line: 221, column: 25, scope: !922)
!925 = !DILocation(line: 221, column: 5, scope: !917)
!926 = !DILocation(line: 222, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !26, line: 221, column: 42)
!928 = !DILocation(line: 223, column: 11, scope: !927)
!929 = !DILocation(line: 225, column: 26, scope: !927)
!930 = !DILocation(line: 225, column: 28, scope: !927)
!931 = !DILocation(line: 225, column: 35, scope: !927)
!932 = !DILocation(line: 225, column: 25, scope: !927)
!933 = !DILocation(line: 225, column: 16, scope: !927)
!934 = !DILocation(line: 225, column: 9, scope: !927)
!935 = !DILocation(line: 225, column: 23, scope: !927)
!936 = !DILocation(line: 226, column: 5, scope: !927)
!937 = !DILocation(line: 221, column: 38, scope: !922)
!938 = !DILocation(line: 221, column: 5, scope: !922)
!939 = !DILocation(line: 227, column: 1, scope: !511)
!940 = !DILocation(line: 84, column: 36, scope: !520)
!941 = !DILocation(line: 84, column: 55, scope: !520)
!942 = !DILocation(line: 86, column: 5, scope: !520)
!943 = !DILocation(line: 86, column: 9, scope: !520)
!944 = !DILocation(line: 87, column: 5, scope: !520)
!945 = !DILocation(line: 87, column: 16, scope: !520)
!946 = !DILocation(line: 91, column: 10, scope: !520)
!947 = !DILocation(line: 91, column: 8, scope: !520)
!948 = !DILocation(line: 92, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !520, file: !26, line: 92, column: 9)
!950 = !DILocation(line: 92, column: 12, scope: !949)
!951 = !DILocation(line: 92, column: 9, scope: !520)
!952 = !DILocation(line: 93, column: 9, scope: !949)
!953 = !DILocation(line: 95, column: 5, scope: !520)
!954 = !DILocation(line: 95, column: 16, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !26, discriminator: 2)
!956 = !DILexicalBlockFile(scope: !520, file: !26, discriminator: 1)
!957 = !DILocation(line: 95, column: 14, scope: !520)
!958 = !DILocation(line: 97, column: 9, scope: !959)
!959 = distinct !DILexicalBlock(scope: !520, file: !26, line: 96, column: 5)
!960 = !DILocation(line: 98, column: 22, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !26, line: 97, column: 12)
!962 = !DILocation(line: 98, column: 26, scope: !961)
!963 = !DILocation(line: 98, column: 42, scope: !961)
!964 = !DILocation(line: 98, column: 17, scope: !961)
!965 = !DILocation(line: 98, column: 15, scope: !961)
!966 = !DILocation(line: 99, column: 9, scope: !961)
!967 = !DILocation(line: 99, column: 18, scope: !968)
!968 = !DILexicalBlockFile(scope: !959, file: !26, discriminator: 1)
!969 = !DILocation(line: 99, column: 20, scope: !959)
!970 = !DILocation(line: 99, column: 24, scope: !959)
!971 = !DILocation(line: 99, column: 29, scope: !972)
!972 = !DILexicalBlockFile(scope: !959, file: !26, discriminator: 2)
!973 = !DILocation(line: 99, column: 28, scope: !959)
!974 = !DILocation(line: 99, column: 50, scope: !959)
!975 = !DILocation(line: 99, column: 9, scope: !976)
!976 = !DILexicalBlockFile(scope: !961, file: !26, discriminator: 3)
!977 = !DILocation(line: 100, column: 13, scope: !978)
!978 = distinct !DILexicalBlock(scope: !959, file: !26, line: 100, column: 13)
!979 = !DILocation(line: 100, column: 15, scope: !978)
!980 = !DILocation(line: 100, column: 13, scope: !959)
!981 = !DILocation(line: 103, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !26, line: 101, column: 9)
!983 = !DILocation(line: 106, column: 19, scope: !959)
!984 = !DILocation(line: 106, column: 16, scope: !959)
!985 = !DILocation(line: 107, column: 29, scope: !959)
!986 = !DILocation(line: 107, column: 14, scope: !959)
!987 = !DILocation(line: 109, column: 11, scope: !520)
!988 = !DILocation(line: 109, column: 5, scope: !520)
!989 = !DILocation(line: 110, column: 1, scope: !520)
!990 = !DILocation(line: 302, column: 5, scope: !51)
!991 = !DILocation(line: 304, column: 1, scope: !51)
!992 = !DILocation(line: 200, column: 23, scope: !993)
!993 = distinct !DILexicalBlock(scope: !528, file: !26, line: 200, column: 9)
!994 = !DILocation(line: 200, column: 26, scope: !993)
!995 = !DILocation(line: 200, column: 9, scope: !528)
!996 = !DILocation(line: 201, column: 29, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !26, line: 200, column: 32)
!998 = !DILocation(line: 201, column: 9, scope: !997)
!999 = !DILocation(line: 202, column: 26, scope: !997)
!1000 = !DILocation(line: 203, column: 5, scope: !997)
!1001 = !DILocation(line: 204, column: 1, scope: !528)
!1002 = !DILocation(line: 517, column: 45, scope: !484)
!1003 = !DILocation(line: 517, column: 66, scope: !484)
!1004 = !DILocation(line: 519, column: 25, scope: !484)
!1005 = !DILocation(line: 519, column: 31, scope: !484)
!1006 = !DILocation(line: 519, column: 10, scope: !484)
!1007 = !DILocation(line: 519, column: 3, scope: !484)
