; ModuleID = 'programs_new/Python-new/pytime.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.timeval = type { i64, i64 }
%struct._Py_clock_info_t = type { i8*, i32, i32, double }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.timezone = type { i32, i32 }

@PyExc_OverflowError = external global %struct._object*, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ftime()\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"timestamp out of range for platform time_t\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyTime_gettimeofday(%struct.timeval* %tp) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct.timeval** %tp.addr, metadata !373, metadata !471), !dbg !472
  %0 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8, !dbg !473, !tbaa !467
  call void @pygettimeofday(%struct.timeval* %0, %struct._Py_clock_info_t* null), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @pygettimeofday(%struct.timeval* %tp, %struct._Py_clock_info_t* %info) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %t = alloca %struct.timeb, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct.timeval** %tp.addr, metadata !434, metadata !471), !dbg !476
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !435, metadata !471), !dbg !477
  %0 = bitcast i32* %err to i8*, !dbg !478
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !478
  call void @llvm.dbg.declare(metadata i32* %err, metadata !436, metadata !471), !dbg !479
  %1 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8, !dbg !480, !tbaa !467
  %call = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #2, !dbg !481
  store i32 %call, i32* %err, align 4, !dbg !482, !tbaa !483
  %2 = load i32, i32* %err, align 4, !dbg !485, !tbaa !483
  %cmp = icmp eq i32 %2, 0, !dbg !487
  br i1 %cmp, label %if.then, label %if.end.2, !dbg !488

if.then:                                          ; preds = %entry
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !489, !tbaa !467
  %tobool = icmp ne %struct._Py_clock_info_t* %3, null, !dbg !489
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !492

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !493, !tbaa !467
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 0, !dbg !495
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8** %implementation, align 8, !dbg !496, !tbaa !497
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !500, !tbaa !467
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %5, i32 0, i32 3, !dbg !501
  store double 1.000000e-06, double* %resolution, align 8, !dbg !502, !tbaa !503
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !504, !tbaa !467
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 1, !dbg !505
  store i32 0, i32* %monotonic, align 4, !dbg !506, !tbaa !507
  %7 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !508, !tbaa !467
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %7, i32 0, i32 2, !dbg !509
  store i32 1, i32* %adjustable, align 4, !dbg !510, !tbaa !511
  br label %if.end, !dbg !512

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !513

if.end.2:                                         ; preds = %entry
  %8 = bitcast %struct.timeb* %t to i8*, !dbg !514
  call void @llvm.lifetime.start(i64 16, i8* %8) #2, !dbg !514
  call void @llvm.dbg.declare(metadata %struct.timeb* %t, metadata !437, metadata !471), !dbg !515
  %call3 = call i32 @ftime(%struct.timeb* %t), !dbg !516
  %time = getelementptr inbounds %struct.timeb, %struct.timeb* %t, i32 0, i32 0, !dbg !517
  %9 = load i64, i64* %time, align 8, !dbg !517, !tbaa !518
  %10 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8, !dbg !522, !tbaa !467
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0, !dbg !523
  store i64 %9, i64* %tv_sec, align 8, !dbg !524, !tbaa !525
  %millitm = getelementptr inbounds %struct.timeb, %struct.timeb* %t, i32 0, i32 1, !dbg !527
  %11 = load i16, i16* %millitm, align 2, !dbg !527, !tbaa !528
  %conv = zext i16 %11 to i32, !dbg !529
  %mul = mul i32 %conv, 1000, !dbg !530
  %conv4 = sext i32 %mul to i64, !dbg !529
  %12 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8, !dbg !531, !tbaa !467
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1, !dbg !532
  store i64 %conv4, i64* %tv_usec, align 8, !dbg !533, !tbaa !534
  %13 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !535, !tbaa !467
  %tobool5 = icmp ne %struct._Py_clock_info_t* %13, null, !dbg !535
  br i1 %tobool5, label %if.then.6, label %if.end.11, !dbg !537

if.then.6:                                        ; preds = %if.end.2
  %14 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !538, !tbaa !467
  %implementation7 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %14, i32 0, i32 0, !dbg !540
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %implementation7, align 8, !dbg !541, !tbaa !497
  %15 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !542, !tbaa !467
  %resolution8 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %15, i32 0, i32 3, !dbg !543
  store double 1.000000e-03, double* %resolution8, align 8, !dbg !544, !tbaa !503
  %16 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !545, !tbaa !467
  %monotonic9 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %16, i32 0, i32 1, !dbg !546
  store i32 0, i32* %monotonic9, align 4, !dbg !547, !tbaa !507
  %17 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !548, !tbaa !467
  %adjustable10 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %17, i32 0, i32 2, !dbg !549
  store i32 1, i32* %adjustable10, align 4, !dbg !550, !tbaa !511
  br label %if.end.11, !dbg !551

if.end.11:                                        ; preds = %if.then.6, %if.end.2
  %18 = bitcast %struct.timeb* %t to i8*, !dbg !552
  call void @llvm.lifetime.end(i64 16, i8* %18) #2, !dbg !552
  store i32 0, i32* %cleanup.dest.slot, !dbg !553
  br label %cleanup, !dbg !553

cleanup:                                          ; preds = %if.end.11, %if.end
  %19 = bitcast i32* %err to i8*, !dbg !554
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !554
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !553

unreachable:                                      ; No predecessors!
  unreachable
}

; Function Attrs: nounwind uwtable
define void @_PyTime_gettimeofday_info(%struct.timeval* %tp, %struct._Py_clock_info_t* %info) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct.timeval** %tp.addr, metadata !386, metadata !471), !dbg !556
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._Py_clock_info_t** %info.addr, metadata !387, metadata !471), !dbg !557
  %0 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8, !dbg !558, !tbaa !467
  %1 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8, !dbg !559, !tbaa !467
  call void @pygettimeofday(%struct.timeval* %0, %struct._Py_clock_info_t* %1), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: nounwind uwtable
define i64 @_PyLong_AsTime_t(%struct._object* %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !392, metadata !471), !dbg !562
  %0 = bitcast i64* %val to i8*, !dbg !563
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !563
  call void @llvm.dbg.declare(metadata i64* %val, metadata !393, metadata !471), !dbg !564
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !565, !tbaa !467
  %call = call i64 @PyLong_AsLongLong(%struct._object* %1), !dbg !566
  store i64 %call, i64* %val, align 8, !dbg !567, !tbaa !568
  %2 = load i64, i64* %val, align 8, !dbg !570, !tbaa !568
  %cmp = icmp eq i64 %2, -1, !dbg !572
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !573

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !574
  %tobool = icmp ne %struct._object* %call1, null, !dbg !574
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !576

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !577, !tbaa !467
  %call2 = call i32 @PyErr_ExceptionMatches(%struct._object* %3), !dbg !580
  %tobool3 = icmp ne i32 %call2, 0, !dbg !580
  br i1 %tobool3, label %if.then.4, label %if.end, !dbg !581

if.then.4:                                        ; preds = %if.then
  call void @error_time_t_overflow(), !dbg !582
  br label %if.end, !dbg !582

if.end:                                           ; preds = %if.then.4, %if.then
  store i64 -1, i64* %retval, !dbg !583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !583

if.end.5:                                         ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %val, align 8, !dbg !584, !tbaa !568
  store i64 %4, i64* %retval, !dbg !585
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %if.end.5, %if.end
  %5 = bitcast i64* %val to i8*, !dbg !586
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !586
  %6 = load i64, i64* %retval, !dbg !586
  ret i64 %6, !dbg !586
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @PyLong_AsLongLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @error_time_t_overflow() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !587, !tbaa !467
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_PyLong_FromTime_t(i64 %t) #0 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8, !tbaa !590
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !398, metadata !471), !dbg !591
  %0 = load i64, i64* %t.addr, align 8, !dbg !592, !tbaa !590
  %call = call %struct._object* @PyLong_FromLongLong(i64 %0), !dbg !593
  ret %struct._object* %call, !dbg !594
}

declare %struct._object* @PyLong_FromLongLong(i64) #3

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTime_t(%struct._object* %obj, i64* %sec, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  %d = alloca double, align 8
  %intpart = alloca double, align 8
  %err = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !405, metadata !471), !dbg !595
  store i64* %sec, i64** %sec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %sec.addr, metadata !406, metadata !471), !dbg !596
  store i32 %round, i32* %round.addr, align 4, !tbaa !597
  call void @llvm.dbg.declare(metadata i32* %round.addr, metadata !407, metadata !471), !dbg !598
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !599, !tbaa !467
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !600
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !600, !tbaa !601
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type, !dbg !603
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !604

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !605, !tbaa !467
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !607
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !607, !tbaa !601
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type), !dbg !608
  %tobool = icmp ne i32 %call, 0, !dbg !608
  br i1 %tobool, label %if.then, label %if.else.21, !dbg !609

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast double* %d to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !610
  call void @llvm.dbg.declare(metadata double* %d, metadata !408, metadata !471), !dbg !611
  %5 = bitcast double* %intpart to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !610
  call void @llvm.dbg.declare(metadata double* %intpart, metadata !411, metadata !471), !dbg !612
  %6 = bitcast double* %err to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !610
  call void @llvm.dbg.declare(metadata double* %err, metadata !412, metadata !471), !dbg !613
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !614, !tbaa !467
  %call2 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !615
  store double %call2, double* %d, align 8, !dbg !616, !tbaa !617
  %8 = load i32, i32* %round.addr, align 4, !dbg !618, !tbaa !597
  %cmp3 = icmp eq i32 %8, 1, !dbg !620
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !621

if.then.4:                                        ; preds = %if.then
  %9 = load double, double* %d, align 8, !dbg !622, !tbaa !617
  %cmp5 = fcmp oge double %9, 0.000000e+00, !dbg !625
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !626

if.then.6:                                        ; preds = %if.then.4
  %10 = load double, double* %d, align 8, !dbg !627, !tbaa !617
  %call7 = call double @ceil(double %10) #1, !dbg !628
  store double %call7, double* %d, align 8, !dbg !629, !tbaa !617
  br label %if.end, !dbg !630

if.else:                                          ; preds = %if.then.4
  %11 = load double, double* %d, align 8, !dbg !631, !tbaa !617
  %call8 = call double @floor(double %11) #1, !dbg !632
  store double %call8, double* %d, align 8, !dbg !633, !tbaa !617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9, !dbg !634

if.end.9:                                         ; preds = %if.end, %if.then
  %12 = load double, double* %d, align 8, !dbg !635, !tbaa !617
  %call10 = call double @modf(double %12, double* %intpart) #2, !dbg !636
  %13 = load double, double* %intpart, align 8, !dbg !637, !tbaa !617
  %conv = fptosi double %13 to i64, !dbg !638
  %14 = load i64*, i64** %sec.addr, align 8, !dbg !639, !tbaa !467
  store i64 %conv, i64* %14, align 8, !dbg !640, !tbaa !590
  %15 = load double, double* %intpart, align 8, !dbg !641, !tbaa !617
  %16 = load i64*, i64** %sec.addr, align 8, !dbg !642, !tbaa !467
  %17 = load i64, i64* %16, align 8, !dbg !643, !tbaa !590
  %conv11 = sitofp i64 %17 to double, !dbg !644
  %sub = fsub double %15, %conv11, !dbg !645
  store double %sub, double* %err, align 8, !dbg !646, !tbaa !617
  %18 = load double, double* %err, align 8, !dbg !647, !tbaa !617
  %cmp12 = fcmp ole double %18, -1.000000e+00, !dbg !649
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.14, !dbg !650

lor.lhs.false.14:                                 ; preds = %if.end.9
  %19 = load double, double* %err, align 8, !dbg !651, !tbaa !617
  %cmp15 = fcmp oge double %19, 1.000000e+00, !dbg !653
  br i1 %cmp15, label %if.then.17, label %if.end.18, !dbg !654

if.then.17:                                       ; preds = %lor.lhs.false.14, %if.end.9
  call void @error_time_t_overflow(), !dbg !655
  store i32 -1, i32* %retval, !dbg !657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !657

if.end.18:                                        ; preds = %lor.lhs.false.14
  store i32 0, i32* %retval, !dbg !658
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !658

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %20 = bitcast double* %err to i8*, !dbg !659
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !659
  %21 = bitcast double* %intpart to i8*, !dbg !659
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !659
  %22 = bitcast double* %d to i8*, !dbg !659
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !659
  br label %return

if.else.21:                                       ; preds = %lor.lhs.false
  %23 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !660, !tbaa !467
  %call22 = call i64 @_PyLong_AsTime_t(%struct._object* %23), !dbg !662
  %24 = load i64*, i64** %sec.addr, align 8, !dbg !663, !tbaa !467
  store i64 %call22, i64* %24, align 8, !dbg !664, !tbaa !590
  %25 = load i64*, i64** %sec.addr, align 8, !dbg !665, !tbaa !467
  %26 = load i64, i64* %25, align 8, !dbg !667, !tbaa !590
  %cmp23 = icmp eq i64 %26, -1, !dbg !668
  br i1 %cmp23, label %land.lhs.true, label %if.end.28, !dbg !669

land.lhs.true:                                    ; preds = %if.else.21
  %call25 = call %struct._object* @PyErr_Occurred(), !dbg !670
  %tobool26 = icmp ne %struct._object* %call25, null, !dbg !670
  br i1 %tobool26, label %if.then.27, label %if.end.28, !dbg !672

if.then.27:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !673
  br label %return, !dbg !673

if.end.28:                                        ; preds = %land.lhs.true, %if.else.21
  store i32 0, i32* %retval, !dbg !674
  br label %return, !dbg !674

return:                                           ; preds = %if.end.28, %if.then.27, %cleanup
  %27 = load i32, i32* %retval, !dbg !675
  ret i32 %27, !dbg !675
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare double @modf(double, double*) #5

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTimespec(%struct._object* %obj, i64* %sec, i64* %nsec, i32 %round) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %nsec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !418, metadata !471), !dbg !676
  store i64* %sec, i64** %sec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %sec.addr, metadata !419, metadata !471), !dbg !677
  store i64* %nsec, i64** %nsec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %nsec.addr, metadata !420, metadata !471), !dbg !678
  store i32 %round, i32* %round.addr, align 4, !tbaa !597
  call void @llvm.dbg.declare(metadata i32* %round.addr, metadata !421, metadata !471), !dbg !679
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !680, !tbaa !467
  %1 = load i64*, i64** %sec.addr, align 8, !dbg !681, !tbaa !467
  %2 = load i64*, i64** %nsec.addr, align 8, !dbg !682, !tbaa !467
  %3 = load i32, i32* %round.addr, align 4, !dbg !683, !tbaa !597
  %call = call i32 @_PyTime_ObjectToDenominator(%struct._object* %0, i64* %1, i64* %2, double 1.000000e+09, i32 %3), !dbg !684
  ret i32 %call, !dbg !685
}

; Function Attrs: nounwind uwtable
define internal i32 @_PyTime_ObjectToDenominator(%struct._object* %obj, i64* %sec, i64* %numerator, double %denominator, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %numerator.addr = alloca i64*, align 8
  %denominator.addr = alloca double, align 8
  %round.addr = alloca i32, align 4
  %d = alloca double, align 8
  %intpart = alloca double, align 8
  %err = alloca double, align 8
  %floatpart = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !452, metadata !471), !dbg !686
  store i64* %sec, i64** %sec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %sec.addr, metadata !453, metadata !471), !dbg !687
  store i64* %numerator, i64** %numerator.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %numerator.addr, metadata !454, metadata !471), !dbg !688
  store double %denominator, double* %denominator.addr, align 8, !tbaa !617
  call void @llvm.dbg.declare(metadata double* %denominator.addr, metadata !455, metadata !471), !dbg !689
  store i32 %round, i32* %round.addr, align 4, !tbaa !597
  call void @llvm.dbg.declare(metadata i32* %round.addr, metadata !456, metadata !471), !dbg !690
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !691, !tbaa !467
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !692
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !692, !tbaa !601
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type, !dbg !693
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !694

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !695, !tbaa !467
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !697
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !697, !tbaa !601
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type), !dbg !698
  %tobool = icmp ne i32 %call, 0, !dbg !698
  br i1 %tobool, label %if.then, label %if.else.31, !dbg !699

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast double* %d to i8*, !dbg !700
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !700
  call void @llvm.dbg.declare(metadata double* %d, metadata !457, metadata !471), !dbg !701
  %5 = bitcast double* %intpart to i8*, !dbg !700
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !700
  call void @llvm.dbg.declare(metadata double* %intpart, metadata !460, metadata !471), !dbg !702
  %6 = bitcast double* %err to i8*, !dbg !700
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !700
  call void @llvm.dbg.declare(metadata double* %err, metadata !461, metadata !471), !dbg !703
  %7 = bitcast double* %floatpart to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !704
  call void @llvm.dbg.declare(metadata double* %floatpart, metadata !462, metadata !471), !dbg !705
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !706, !tbaa !467
  %call2 = call double @PyFloat_AsDouble(%struct._object* %8), !dbg !707
  store double %call2, double* %d, align 8, !dbg !708, !tbaa !617
  %9 = load double, double* %d, align 8, !dbg !709, !tbaa !617
  %call3 = call double @modf(double %9, double* %intpart) #2, !dbg !710
  store volatile double %call3, double* %floatpart, align 8, !dbg !711, !tbaa !617
  %10 = load volatile double, double* %floatpart, align 8, !dbg !712, !tbaa !617
  %cmp4 = fcmp olt double %10, 0.000000e+00, !dbg !714
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !715

if.then.5:                                        ; preds = %if.then
  %11 = load volatile double, double* %floatpart, align 8, !dbg !716, !tbaa !617
  %add = fadd double 1.000000e+00, %11, !dbg !718
  store volatile double %add, double* %floatpart, align 8, !dbg !719, !tbaa !617
  %12 = load double, double* %intpart, align 8, !dbg !720, !tbaa !617
  %sub = fsub double %12, 1.000000e+00, !dbg !720
  store double %sub, double* %intpart, align 8, !dbg !720, !tbaa !617
  br label %if.end, !dbg !721

if.end:                                           ; preds = %if.then.5, %if.then
  %13 = load double, double* %denominator.addr, align 8, !dbg !722, !tbaa !617
  %14 = load volatile double, double* %floatpart, align 8, !dbg !723, !tbaa !617
  %mul = fmul double %14, %13, !dbg !723
  store volatile double %mul, double* %floatpart, align 8, !dbg !723, !tbaa !617
  %15 = load i32, i32* %round.addr, align 4, !dbg !724, !tbaa !597
  %cmp6 = icmp eq i32 %15, 1, !dbg !726
  br i1 %cmp6, label %if.then.7, label %if.end.17, !dbg !727

if.then.7:                                        ; preds = %if.end
  %16 = load double, double* %intpart, align 8, !dbg !728, !tbaa !617
  %cmp8 = fcmp oge double %16, 0.000000e+00, !dbg !731
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !732

if.then.9:                                        ; preds = %if.then.7
  %17 = load volatile double, double* %floatpart, align 8, !dbg !733, !tbaa !617
  %call10 = call double @ceil(double %17) #1, !dbg !735
  store volatile double %call10, double* %floatpart, align 8, !dbg !736, !tbaa !617
  %18 = load volatile double, double* %floatpart, align 8, !dbg !737, !tbaa !617
  %19 = load double, double* %denominator.addr, align 8, !dbg !739, !tbaa !617
  %cmp11 = fcmp oge double %18, %19, !dbg !740
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !741

if.then.12:                                       ; preds = %if.then.9
  store volatile double 0.000000e+00, double* %floatpart, align 8, !dbg !742, !tbaa !617
  %20 = load double, double* %intpart, align 8, !dbg !744, !tbaa !617
  %add13 = fadd double %20, 1.000000e+00, !dbg !744
  store double %add13, double* %intpart, align 8, !dbg !744, !tbaa !617
  br label %if.end.14, !dbg !745

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.16, !dbg !746

if.else:                                          ; preds = %if.then.7
  %21 = load volatile double, double* %floatpart, align 8, !dbg !747, !tbaa !617
  %call15 = call double @floor(double %21) #1, !dbg !749
  store volatile double %call15, double* %floatpart, align 8, !dbg !750, !tbaa !617
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.14
  br label %if.end.17, !dbg !751

if.end.17:                                        ; preds = %if.end.16, %if.end
  %22 = load double, double* %intpart, align 8, !dbg !752, !tbaa !617
  %conv = fptosi double %22 to i64, !dbg !753
  %23 = load i64*, i64** %sec.addr, align 8, !dbg !754, !tbaa !467
  store i64 %conv, i64* %23, align 8, !dbg !755, !tbaa !590
  %24 = load double, double* %intpart, align 8, !dbg !756, !tbaa !617
  %25 = load i64*, i64** %sec.addr, align 8, !dbg !757, !tbaa !467
  %26 = load i64, i64* %25, align 8, !dbg !758, !tbaa !590
  %conv18 = sitofp i64 %26 to double, !dbg !759
  %sub19 = fsub double %24, %conv18, !dbg !760
  store double %sub19, double* %err, align 8, !dbg !761, !tbaa !617
  %27 = load double, double* %err, align 8, !dbg !762, !tbaa !617
  %cmp20 = fcmp ole double %27, -1.000000e+00, !dbg !764
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.22, !dbg !765

lor.lhs.false.22:                                 ; preds = %if.end.17
  %28 = load double, double* %err, align 8, !dbg !766, !tbaa !617
  %cmp23 = fcmp oge double %28, 1.000000e+00, !dbg !768
  br i1 %cmp23, label %if.then.25, label %if.end.26, !dbg !769

if.then.25:                                       ; preds = %lor.lhs.false.22, %if.end.17
  call void @error_time_t_overflow(), !dbg !770
  store i32 -1, i32* %retval, !dbg !772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !772

if.end.26:                                        ; preds = %lor.lhs.false.22
  %29 = load volatile double, double* %floatpart, align 8, !dbg !773, !tbaa !617
  %conv27 = fptosi double %29 to i64, !dbg !774
  %30 = load i64*, i64** %numerator.addr, align 8, !dbg !775, !tbaa !467
  store i64 %conv27, i64* %30, align 8, !dbg !776, !tbaa !590
  store i32 0, i32* %retval, !dbg !777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !777

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %31 = bitcast double* %floatpart to i8*, !dbg !778
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !778
  %32 = bitcast double* %err to i8*, !dbg !778
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !778
  %33 = bitcast double* %intpart to i8*, !dbg !778
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !778
  %34 = bitcast double* %d to i8*, !dbg !778
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !778
  br label %return

if.else.31:                                       ; preds = %lor.lhs.false
  %35 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !779, !tbaa !467
  %call32 = call i64 @_PyLong_AsTime_t(%struct._object* %35), !dbg !781
  %36 = load i64*, i64** %sec.addr, align 8, !dbg !782, !tbaa !467
  store i64 %call32, i64* %36, align 8, !dbg !783, !tbaa !590
  %37 = load i64*, i64** %sec.addr, align 8, !dbg !784, !tbaa !467
  %38 = load i64, i64* %37, align 8, !dbg !786, !tbaa !590
  %cmp33 = icmp eq i64 %38, -1, !dbg !787
  br i1 %cmp33, label %land.lhs.true, label %if.end.38, !dbg !788

land.lhs.true:                                    ; preds = %if.else.31
  %call35 = call %struct._object* @PyErr_Occurred(), !dbg !789
  %tobool36 = icmp ne %struct._object* %call35, null, !dbg !789
  br i1 %tobool36, label %if.then.37, label %if.end.38, !dbg !791

if.then.37:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !792
  br label %return, !dbg !792

if.end.38:                                        ; preds = %land.lhs.true, %if.else.31
  %39 = load i64*, i64** %numerator.addr, align 8, !dbg !793, !tbaa !467
  store i64 0, i64* %39, align 8, !dbg !794, !tbaa !590
  store i32 0, i32* %retval, !dbg !795
  br label %return, !dbg !795

return:                                           ; preds = %if.end.38, %if.then.37, %cleanup
  %40 = load i32, i32* %retval, !dbg !796
  ret i32 %40, !dbg !796
}

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTimeval(%struct._object* %obj, i64* %sec, i64* %usec, i32 %round) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %usec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !424, metadata !471), !dbg !797
  store i64* %sec, i64** %sec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %sec.addr, metadata !425, metadata !471), !dbg !798
  store i64* %usec, i64** %usec.addr, align 8, !tbaa !467
  call void @llvm.dbg.declare(metadata i64** %usec.addr, metadata !426, metadata !471), !dbg !799
  store i32 %round, i32* %round.addr, align 4, !tbaa !597
  call void @llvm.dbg.declare(metadata i32* %round.addr, metadata !427, metadata !471), !dbg !800
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !801, !tbaa !467
  %1 = load i64*, i64** %sec.addr, align 8, !dbg !802, !tbaa !467
  %2 = load i64*, i64** %usec.addr, align 8, !dbg !803, !tbaa !467
  %3 = load i32, i32* %round.addr, align 4, !dbg !804, !tbaa !597
  %call = call i32 @_PyTime_ObjectToDenominator(%struct._object* %0, i64* %1, i64* %2, double 1.000000e+06, i32 %3), !dbg !805
  ret i32 %call, !dbg !806
}

; Function Attrs: nounwind uwtable
define void @_PyTime_Init() #0 {
entry:
  ret void, !dbg !807
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare i32 @ftime(%struct.timeb*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!464, !465}
!llvm.ident = !{!466}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !359)
!1 = !DIFile(filename: "pytime.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pytime.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "_PyTime_ROUND_DOWN", value: 0)
!7 = !DIEnumerator(name: "_PyTime_ROUND_UP", value: 1)
!8 = !{!9, !14, !15, !352, !353, !98, !13}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !10, line: 75, baseType: !11)
!10 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !12, line: 148, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !17, line: 109, baseType: !18)
!17 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !17, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !17, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !12, line: 181, baseType: !13)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !17, line: 108, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !17, line: 334, size: 3200, align: 64, elements: !29)
!29 = !{!30, !36, !40, !41, !42, !47, !111, !116, !121, !122, !127, !179, !210, !222, !228, !229, !230, !232, !234, !265, !266, !267, !276, !277, !282, !283, !285, !287, !297, !300, !318, !319, !320, !322, !324, !325, !327, !332, !337, !342, !343, !344, !345, !346, !347, !348, !349, !351}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !17, line: 335, baseType: !31, size: 192, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !17, line: 114, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 111, size: 192, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !32, file: !17, line: 112, baseType: !16, size: 128, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !32, file: !17, line: 113, baseType: !21, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !28, file: !17, line: 336, baseType: !37, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !28, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !28, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !28, file: !17, line: 341, baseType: !43, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !17, line: 308, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !15}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !28, file: !17, line: 342, baseType: !48, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !17, line: 314, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !15, !53, !52}
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 48, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 246, size: 1728, align: 64, elements: !57)
!56 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!57 = !{!58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !79, !80, !81, !82, !84, !86, !88, !92, !95, !97, !99, !100, !101, !102, !106, !107}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 247, baseType: !52, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 252, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 253, baseType: !60, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 254, baseType: !60, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 255, baseType: !60, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 256, baseType: !60, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 257, baseType: !60, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 258, baseType: !60, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 259, baseType: !60, size: 64, align: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 261, baseType: !60, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 262, baseType: !60, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 263, baseType: !60, size: 64, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 265, baseType: !72, size: 64, align: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 161, size: 192, align: 64, elements: !74)
!74 = !{!75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !73, file: !56, line: 162, baseType: !72, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !73, file: !56, line: 163, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !73, file: !56, line: 167, baseType: !52, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 267, baseType: !77, size: 64, align: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 269, baseType: !52, size: 32, align: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 273, baseType: !52, size: 32, align: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 275, baseType: !83, size: 64, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !12, line: 140, baseType: !13)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 279, baseType: !85, size: 16, align: 16, offset: 1024)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 280, baseType: !87, size: 8, align: 8, offset: 1040)
!87 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 281, baseType: !89, size: 8, align: 8, offset: 1048)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 285, baseType: !93, size: 64, align: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 155, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 294, baseType: !96, size: 64, align: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !12, line: 141, baseType: !13)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !55, file: !56, line: 303, baseType: !98, size: 64, align: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !55, file: !56, line: 304, baseType: !98, size: 64, align: 64, offset: 1280)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !55, file: !56, line: 305, baseType: !98, size: 64, align: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !55, file: !56, line: 306, baseType: !98, size: 64, align: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 307, baseType: !103, size: 64, align: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 62, baseType: !105)
!104 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!105 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 309, baseType: !52, size: 32, align: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 311, baseType: !108, size: 160, align: 8, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !28, file: !17, line: 343, baseType: !112, size: 64, align: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !17, line: 316, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!15, !15, !60}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !28, file: !17, line: 344, baseType: !117, size: 64, align: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !17, line: 318, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!52, !15, !60, !15}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !28, file: !17, line: 345, baseType: !98, size: 64, align: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !28, file: !17, line: 346, baseType: !123, size: 64, align: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !17, line: 320, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!15, !15}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !28, file: !17, line: 350, baseType: !128, size: 64, align: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !17, line: 278, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 236, size: 2176, align: 64, elements: !131)
!131 = !{!132, !137, !138, !139, !140, !141, !146, !148, !149, !150, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !130, file: !17, line: 241, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !17, line: 166, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!15, !15, !15}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !130, file: !17, line: 242, baseType: !133, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !130, file: !17, line: 243, baseType: !133, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !130, file: !17, line: 244, baseType: !133, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !130, file: !17, line: 245, baseType: !133, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !130, file: !17, line: 246, baseType: !142, size: 64, align: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !17, line: 167, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!15, !15, !15, !15}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !130, file: !17, line: 247, baseType: !147, size: 64, align: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !17, line: 165, baseType: !124)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !130, file: !17, line: 248, baseType: !147, size: 64, align: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !130, file: !17, line: 249, baseType: !147, size: 64, align: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !130, file: !17, line: 250, baseType: !151, size: 64, align: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !17, line: 168, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!52, !15}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !130, file: !17, line: 251, baseType: !147, size: 64, align: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !130, file: !17, line: 252, baseType: !133, size: 64, align: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !130, file: !17, line: 253, baseType: !133, size: 64, align: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !130, file: !17, line: 254, baseType: !133, size: 64, align: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !130, file: !17, line: 255, baseType: !133, size: 64, align: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !130, file: !17, line: 256, baseType: !133, size: 64, align: 64, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !130, file: !17, line: 257, baseType: !147, size: 64, align: 64, offset: 1024)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !130, file: !17, line: 258, baseType: !98, size: 64, align: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !130, file: !17, line: 259, baseType: !147, size: 64, align: 64, offset: 1152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !130, file: !17, line: 261, baseType: !133, size: 64, align: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !130, file: !17, line: 262, baseType: !133, size: 64, align: 64, offset: 1280)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !130, file: !17, line: 263, baseType: !133, size: 64, align: 64, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !130, file: !17, line: 264, baseType: !133, size: 64, align: 64, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !130, file: !17, line: 265, baseType: !142, size: 64, align: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !130, file: !17, line: 266, baseType: !133, size: 64, align: 64, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !130, file: !17, line: 267, baseType: !133, size: 64, align: 64, offset: 1600)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !130, file: !17, line: 268, baseType: !133, size: 64, align: 64, offset: 1664)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !130, file: !17, line: 269, baseType: !133, size: 64, align: 64, offset: 1728)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !130, file: !17, line: 270, baseType: !133, size: 64, align: 64, offset: 1792)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !130, file: !17, line: 272, baseType: !133, size: 64, align: 64, offset: 1856)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !130, file: !17, line: 273, baseType: !133, size: 64, align: 64, offset: 1920)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !130, file: !17, line: 274, baseType: !133, size: 64, align: 64, offset: 1984)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !130, file: !17, line: 275, baseType: !133, size: 64, align: 64, offset: 2048)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !130, file: !17, line: 277, baseType: !147, size: 64, align: 64, offset: 2112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !28, file: !17, line: 351, baseType: !180, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !17, line: 292, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 280, size: 640, align: 64, elements: !183)
!183 = !{!184, !189, !190, !195, !196, !197, !202, !203, !208, !209}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !182, file: !17, line: 281, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !17, line: 169, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!21, !15}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !182, file: !17, line: 282, baseType: !133, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !182, file: !17, line: 283, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !17, line: 170, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!15, !15, !21}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !182, file: !17, line: 284, baseType: !191, size: 64, align: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !182, file: !17, line: 285, baseType: !98, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !182, file: !17, line: 286, baseType: !198, size: 64, align: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !17, line: 172, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!52, !15, !21, !15}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !182, file: !17, line: 287, baseType: !98, size: 64, align: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !182, file: !17, line: 288, baseType: !204, size: 64, align: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !17, line: 231, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!52, !15, !15}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !182, file: !17, line: 290, baseType: !133, size: 64, align: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !182, file: !17, line: 291, baseType: !191, size: 64, align: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !28, file: !17, line: 352, baseType: !211, size: 64, align: 64, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !17, line: 298, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 294, size: 192, align: 64, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !213, file: !17, line: 295, baseType: !185, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !213, file: !17, line: 296, baseType: !133, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !213, file: !17, line: 297, baseType: !218, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !17, line: 174, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!52, !15, !15, !15}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !28, file: !17, line: 356, baseType: !223, size: 64, align: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !17, line: 321, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !15}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !22, line: 186, baseType: !21)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !28, file: !17, line: 357, baseType: !142, size: 64, align: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !28, file: !17, line: 358, baseType: !123, size: 64, align: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !28, file: !17, line: 359, baseType: !231, size: 64, align: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !17, line: 317, baseType: !134)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !28, file: !17, line: 360, baseType: !233, size: 64, align: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !17, line: 319, baseType: !219)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !28, file: !17, line: 363, baseType: !235, size: 64, align: 64, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !17, line: 304, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 301, size: 128, align: 64, elements: !238)
!238 = !{!239, !260}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !237, file: !17, line: 302, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !17, line: 193, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!52, !15, !244, !52}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !17, line: 191, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !17, line: 178, size: 640, align: 64, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !257, !258, !259}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !17, line: 179, baseType: !98, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !246, file: !17, line: 180, baseType: !15, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !246, file: !17, line: 181, baseType: !21, size: 64, align: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !246, file: !17, line: 182, baseType: !21, size: 64, align: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !246, file: !17, line: 184, baseType: !52, size: 32, align: 32, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !246, file: !17, line: 185, baseType: !52, size: 32, align: 32, offset: 288)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !246, file: !17, line: 186, baseType: !60, size: 64, align: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !246, file: !17, line: 187, baseType: !256, size: 64, align: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !246, file: !17, line: 188, baseType: !256, size: 64, align: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !246, file: !17, line: 189, baseType: !256, size: 64, align: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !246, file: !17, line: 190, baseType: !98, size: 64, align: 64, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !237, file: !17, line: 303, baseType: !261, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !17, line: 194, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !15, !244}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !28, file: !17, line: 366, baseType: !105, size: 64, align: 64, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !28, file: !17, line: 368, baseType: !37, size: 64, align: 64, offset: 1408)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !28, file: !17, line: 372, baseType: !268, size: 64, align: 64, offset: 1472)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !17, line: 233, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!52, !15, !272, !98}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !17, line: 232, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!52, !15, !98}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !28, file: !17, line: 375, baseType: !151, size: 64, align: 64, offset: 1536)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !28, file: !17, line: 379, baseType: !278, size: 64, align: 64, offset: 1600)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !17, line: 322, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!15, !15, !15, !52}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !28, file: !17, line: 382, baseType: !21, size: 64, align: 64, offset: 1664)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !28, file: !17, line: 385, baseType: !284, size: 64, align: 64, offset: 1728)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !17, line: 323, baseType: !124)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !28, file: !17, line: 386, baseType: !286, size: 64, align: 64, offset: 1792)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !17, line: 324, baseType: !124)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !28, file: !17, line: 389, baseType: !288, size: 64, align: 64, offset: 1856)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !290, line: 40, size: 256, align: 64, elements: !291)
!290 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!291 = !{!292, !293, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !289, file: !290, line: 41, baseType: !37, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !289, file: !290, line: 42, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !290, line: 18, baseType: !134)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !289, file: !290, line: 43, baseType: !52, size: 32, align: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !289, file: !290, line: 45, baseType: !37, size: 64, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !28, file: !17, line: 390, baseType: !298, size: 64, align: 64, offset: 1920)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !17, line: 390, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !28, file: !17, line: 391, baseType: !301, size: 64, align: 64, offset: 1984)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !303, line: 11, size: 320, align: 64, elements: !304)
!303 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!304 = !{!305, !306, !311, !316, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 12, baseType: !60, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !302, file: !303, line: 13, baseType: !307, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !303, line: 8, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!15, !15, !98}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !302, file: !303, line: 14, baseType: !312, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !303, line: 9, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!52, !15, !15, !98}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !302, file: !303, line: 15, baseType: !60, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !302, file: !303, line: 16, baseType: !98, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !28, file: !17, line: 392, baseType: !27, size: 64, align: 64, offset: 2048)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !28, file: !17, line: 393, baseType: !15, size: 64, align: 64, offset: 2112)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !28, file: !17, line: 394, baseType: !321, size: 64, align: 64, offset: 2176)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !17, line: 325, baseType: !143)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !28, file: !17, line: 395, baseType: !323, size: 64, align: 64, offset: 2240)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !17, line: 326, baseType: !219)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !28, file: !17, line: 396, baseType: !21, size: 64, align: 64, offset: 2304)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !28, file: !17, line: 397, baseType: !326, size: 64, align: 64, offset: 2368)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !17, line: 327, baseType: !219)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !28, file: !17, line: 398, baseType: !328, size: 64, align: 64, offset: 2432)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !17, line: 329, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!15, !27, !21}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !28, file: !17, line: 399, baseType: !333, size: 64, align: 64, offset: 2496)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !17, line: 328, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!15, !27, !15, !15}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !28, file: !17, line: 400, baseType: !338, size: 64, align: 64, offset: 2560)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !17, line: 307, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !98}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !28, file: !17, line: 401, baseType: !151, size: 64, align: 64, offset: 2624)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !28, file: !17, line: 402, baseType: !15, size: 64, align: 64, offset: 2688)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !28, file: !17, line: 403, baseType: !15, size: 64, align: 64, offset: 2752)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !28, file: !17, line: 404, baseType: !15, size: 64, align: 64, offset: 2816)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !28, file: !17, line: 405, baseType: !15, size: 64, align: 64, offset: 2880)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !28, file: !17, line: 406, baseType: !15, size: 64, align: 64, offset: 2944)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !28, file: !17, line: 407, baseType: !43, size: 64, align: 64, offset: 3008)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !28, file: !17, line: 410, baseType: !350, size: 32, align: 32, offset: 3072)
!350 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !28, file: !17, line: 412, baseType: !43, size: 64, align: 64, offset: 3136)
!352 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !355, line: 56, size: 64, align: 32, elements: !356)
!355 = !DIFile(filename: "/usr/include/sys/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !354, file: !355, line: 58, baseType: !52, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !354, file: !355, line: 59, baseType: !52, size: 32, align: 32, offset: 32)
!359 = !{!360, !374, !388, !394, !399, !413, !422, !428, !432, !447, !448}
!360 = !DISubprogram(name: "_PyTime_gettimeofday", scope: !361, file: !361, line: 105, type: !362, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.timeval*)* @_PyTime_gettimeofday, variables: !372)
!361 = !DIFile(filename: "Python/pytime.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyTime_timeval", file: !4, line: 17, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !367, line: 30, size: 128, align: 64, elements: !368)
!367 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !366, file: !367, line: 32, baseType: !11, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !366, file: !367, line: 33, baseType: !371, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !12, line: 150, baseType: !13)
!372 = !{!373}
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !360, file: !361, line: 105, type: !364)
!374 = !DISubprogram(name: "_PyTime_gettimeofday_info", scope: !361, file: !361, line: 111, type: !375, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.timeval*, %struct._Py_clock_info_t*)* @_PyTime_gettimeofday_info, variables: !385)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !364, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_clock_info_t", file: !4, line: 31, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 26, size: 192, align: 64, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !379, file: !4, line: 27, baseType: !37, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !379, file: !4, line: 28, baseType: !52, size: 32, align: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "adjustable", scope: !379, file: !4, line: 29, baseType: !52, size: 32, align: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !379, file: !4, line: 30, baseType: !352, size: 64, align: 64, offset: 128)
!385 = !{!386, !387}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !374, file: !361, line: 111, type: !364)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 2, scope: !374, file: !361, line: 111, type: !377)
!388 = !DISubprogram(name: "_PyLong_AsTime_t", scope: !361, file: !361, line: 124, type: !389, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*)* @_PyLong_AsTime_t, variables: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!9, !15}
!391 = !{!392, !393}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !388, file: !361, line: 124, type: !15)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !388, file: !361, line: 127, type: !14)
!394 = !DISubprogram(name: "_PyLong_FromTime_t", scope: !361, file: !361, line: 143, type: !395, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @_PyLong_FromTime_t, variables: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!15, !9}
!397 = !{!398}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 1, scope: !394, file: !361, line: 143, type: !9)
!399 = !DISubprogram(name: "_PyTime_ObjectToTime_t", scope: !361, file: !361, line: 204, type: !400, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*, i32)* @_PyTime_ObjectToTime_t, variables: !404)
!400 = !DISubroutineType(types: !401)
!401 = !{!52, !15, !402, !403}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyTime_round_t", file: !4, line: 62, baseType: !3)
!404 = !{!405, !406, !407, !408, !411, !412}
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !399, file: !361, line: 204, type: !15)
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sec", arg: 2, scope: !399, file: !361, line: 204, type: !402)
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "round", arg: 3, scope: !399, file: !361, line: 204, type: !403)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !409, file: !361, line: 207, type: !352)
!409 = distinct !DILexicalBlock(scope: !410, file: !361, line: 206, column: 129)
!410 = distinct !DILexicalBlock(scope: !399, file: !361, line: 206, column: 9)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !409, file: !361, line: 207, type: !352)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !409, file: !361, line: 207, type: !352)
!413 = !DISubprogram(name: "_PyTime_ObjectToTimespec", scope: !361, file: !361, line: 235, type: !414, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*, i64*, i32)* @_PyTime_ObjectToTimespec, variables: !417)
!414 = !DISubroutineType(types: !415)
!415 = !{!52, !15, !402, !416, !403}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !413, file: !361, line: 235, type: !15)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sec", arg: 2, scope: !413, file: !361, line: 235, type: !402)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsec", arg: 3, scope: !413, file: !361, line: 235, type: !416)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "round", arg: 4, scope: !413, file: !361, line: 236, type: !403)
!422 = !DISubprogram(name: "_PyTime_ObjectToTimeval", scope: !361, file: !361, line: 242, type: !414, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*, i64*, i32)* @_PyTime_ObjectToTimeval, variables: !423)
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !422, file: !361, line: 242, type: !15)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sec", arg: 2, scope: !422, file: !361, line: 242, type: !402)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "usec", arg: 3, scope: !422, file: !361, line: 242, type: !416)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "round", arg: 4, scope: !422, file: !361, line: 243, type: !403)
!428 = !DISubprogram(name: "_PyTime_Init", scope: !361, file: !361, line: 249, type: !429, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyTime_Init, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null}
!431 = !{}
!432 = !DISubprogram(name: "pygettimeofday", scope: !361, file: !361, line: 22, type: !375, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.timeval*, %struct._Py_clock_info_t*)* @pygettimeofday, variables: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tp", arg: 1, scope: !432, file: !361, line: 22, type: !364)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 2, scope: !432, file: !361, line: 22, type: !377)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !432, file: !361, line: 60, type: !52)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !438, file: !361, line: 79, type: !439)
!438 = distinct !DILexicalBlock(scope: !432, file: !361, line: 78, column: 5)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeb", file: !440, line: 31, size: 128, align: 64, elements: !441)
!440 = !DIFile(filename: "/usr/include/sys/timeb.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!441 = !{!442, !443, !444, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !439, file: !440, line: 33, baseType: !9, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "millitm", scope: !439, file: !440, line: 34, baseType: !85, size: 16, align: 16, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !439, file: !440, line: 35, baseType: !445, size: 16, align: 16, offset: 80)
!445 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dstflag", scope: !439, file: !440, line: 36, baseType: !445, size: 16, align: 16, offset: 96)
!447 = !DISubprogram(name: "error_time_t_overflow", scope: !361, file: !361, line: 117, type: !429, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @error_time_t_overflow, variables: !431)
!448 = !DISubprogram(name: "_PyTime_ObjectToDenominator", scope: !361, file: !361, line: 154, type: !449, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*, i64*, double, i32)* @_PyTime_ObjectToDenominator, variables: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!52, !15, !402, !416, !352, !403}
!451 = !{!452, !453, !454, !455, !456, !457, !460, !461, !462}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !448, file: !361, line: 154, type: !15)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sec", arg: 2, scope: !448, file: !361, line: 154, type: !402)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "numerator", arg: 3, scope: !448, file: !361, line: 154, type: !416)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "denominator", arg: 4, scope: !448, file: !361, line: 155, type: !352)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "round", arg: 5, scope: !448, file: !361, line: 155, type: !403)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !458, file: !361, line: 159, type: !352)
!458 = distinct !DILexicalBlock(scope: !459, file: !361, line: 158, column: 129)
!459 = distinct !DILexicalBlock(scope: !448, file: !361, line: 158, column: 9)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !458, file: !361, line: 159, type: !352)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !458, file: !361, line: 159, type: !352)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "floatpart", scope: !458, file: !361, line: 161, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !352)
!464 = !{i32 2, !"Dwarf Version", i32 4}
!465 = !{i32 2, !"Debug Info Version", i32 3}
!466 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!467 = !{!468, !468, i64 0}
!468 = !{!"any pointer", !469, i64 0}
!469 = !{!"omnipotent char", !470, i64 0}
!470 = !{!"Simple C/C++ TBAA"}
!471 = !DIExpression()
!472 = !DILocation(line: 105, column: 39, scope: !360)
!473 = !DILocation(line: 107, column: 20, scope: !360)
!474 = !DILocation(line: 107, column: 5, scope: !360)
!475 = !DILocation(line: 108, column: 1, scope: !360)
!476 = !DILocation(line: 22, column: 33, scope: !432)
!477 = !DILocation(line: 22, column: 55, scope: !432)
!478 = !DILocation(line: 60, column: 5, scope: !432)
!479 = !DILocation(line: 60, column: 9, scope: !432)
!480 = !DILocation(line: 64, column: 24, scope: !432)
!481 = !DILocation(line: 64, column: 11, scope: !432)
!482 = !DILocation(line: 64, column: 9, scope: !432)
!483 = !{!484, !484, i64 0}
!484 = !{!"int", !469, i64 0}
!485 = !DILocation(line: 66, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !432, file: !361, line: 66, column: 9)
!487 = !DILocation(line: 66, column: 13, scope: !486)
!488 = !DILocation(line: 66, column: 9, scope: !432)
!489 = !DILocation(line: 67, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !361, line: 67, column: 13)
!491 = distinct !DILexicalBlock(scope: !486, file: !361, line: 66, column: 19)
!492 = !DILocation(line: 67, column: 13, scope: !491)
!493 = !DILocation(line: 68, column: 13, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !361, line: 67, column: 19)
!495 = !DILocation(line: 68, column: 19, scope: !494)
!496 = !DILocation(line: 68, column: 34, scope: !494)
!497 = !{!498, !468, i64 0}
!498 = !{!"", !468, i64 0, !484, i64 8, !484, i64 12, !499, i64 16}
!499 = !{!"double", !469, i64 0}
!500 = !DILocation(line: 69, column: 13, scope: !494)
!501 = !DILocation(line: 69, column: 19, scope: !494)
!502 = !DILocation(line: 69, column: 30, scope: !494)
!503 = !{!498, !499, i64 16}
!504 = !DILocation(line: 70, column: 13, scope: !494)
!505 = !DILocation(line: 70, column: 19, scope: !494)
!506 = !DILocation(line: 70, column: 29, scope: !494)
!507 = !{!498, !484, i64 8}
!508 = !DILocation(line: 71, column: 13, scope: !494)
!509 = !DILocation(line: 71, column: 19, scope: !494)
!510 = !DILocation(line: 71, column: 30, scope: !494)
!511 = !{!498, !484, i64 12}
!512 = !DILocation(line: 72, column: 9, scope: !494)
!513 = !DILocation(line: 73, column: 9, scope: !491)
!514 = !DILocation(line: 79, column: 9, scope: !438)
!515 = !DILocation(line: 79, column: 22, scope: !438)
!516 = !DILocation(line: 80, column: 9, scope: !438)
!517 = !DILocation(line: 81, column: 24, scope: !438)
!518 = !{!519, !520, i64 0}
!519 = !{!"timeb", !520, i64 0, !521, i64 8, !521, i64 10, !521, i64 12}
!520 = !{!"long", !469, i64 0}
!521 = !{!"short", !469, i64 0}
!522 = !DILocation(line: 81, column: 9, scope: !438)
!523 = !DILocation(line: 81, column: 13, scope: !438)
!524 = !DILocation(line: 81, column: 20, scope: !438)
!525 = !{!526, !520, i64 0}
!526 = !{!"timeval", !520, i64 0, !520, i64 8}
!527 = !DILocation(line: 82, column: 25, scope: !438)
!528 = !{!519, !521, i64 8}
!529 = !DILocation(line: 82, column: 23, scope: !438)
!530 = !DILocation(line: 82, column: 33, scope: !438)
!531 = !DILocation(line: 82, column: 9, scope: !438)
!532 = !DILocation(line: 82, column: 13, scope: !438)
!533 = !DILocation(line: 82, column: 21, scope: !438)
!534 = !{!526, !520, i64 8}
!535 = !DILocation(line: 83, column: 13, scope: !536)
!536 = distinct !DILexicalBlock(scope: !438, file: !361, line: 83, column: 13)
!537 = !DILocation(line: 83, column: 13, scope: !438)
!538 = !DILocation(line: 84, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !361, line: 83, column: 19)
!540 = !DILocation(line: 84, column: 19, scope: !539)
!541 = !DILocation(line: 84, column: 34, scope: !539)
!542 = !DILocation(line: 85, column: 13, scope: !539)
!543 = !DILocation(line: 85, column: 19, scope: !539)
!544 = !DILocation(line: 85, column: 30, scope: !539)
!545 = !DILocation(line: 86, column: 13, scope: !539)
!546 = !DILocation(line: 86, column: 19, scope: !539)
!547 = !DILocation(line: 86, column: 29, scope: !539)
!548 = !DILocation(line: 87, column: 13, scope: !539)
!549 = !DILocation(line: 87, column: 19, scope: !539)
!550 = !DILocation(line: 87, column: 30, scope: !539)
!551 = !DILocation(line: 88, column: 9, scope: !539)
!552 = !DILocation(line: 89, column: 5, scope: !432)
!553 = !DILocation(line: 102, column: 1, scope: !432)
!554 = !DILocation(line: 102, column: 1, scope: !555)
!555 = !DILexicalBlockFile(scope: !432, file: !361, discriminator: 1)
!556 = !DILocation(line: 111, column: 44, scope: !374)
!557 = !DILocation(line: 111, column: 66, scope: !374)
!558 = !DILocation(line: 113, column: 20, scope: !374)
!559 = !DILocation(line: 113, column: 24, scope: !374)
!560 = !DILocation(line: 113, column: 5, scope: !374)
!561 = !DILocation(line: 114, column: 1, scope: !374)
!562 = !DILocation(line: 124, column: 28, scope: !388)
!563 = !DILocation(line: 127, column: 5, scope: !388)
!564 = !DILocation(line: 127, column: 15, scope: !388)
!565 = !DILocation(line: 128, column: 29, scope: !388)
!566 = !DILocation(line: 128, column: 11, scope: !388)
!567 = !DILocation(line: 128, column: 9, scope: !388)
!568 = !{!569, !569, i64 0}
!569 = !{!"long long", !469, i64 0}
!570 = !DILocation(line: 134, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !388, file: !361, line: 134, column: 9)
!572 = !DILocation(line: 134, column: 13, scope: !571)
!573 = !DILocation(line: 134, column: 19, scope: !571)
!574 = !DILocation(line: 134, column: 22, scope: !575)
!575 = !DILexicalBlockFile(scope: !571, file: !361, discriminator: 1)
!576 = !DILocation(line: 134, column: 9, scope: !388)
!577 = !DILocation(line: 135, column: 36, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !361, line: 135, column: 13)
!579 = distinct !DILexicalBlock(scope: !571, file: !361, line: 134, column: 40)
!580 = !DILocation(line: 135, column: 13, scope: !578)
!581 = !DILocation(line: 135, column: 13, scope: !579)
!582 = !DILocation(line: 136, column: 13, scope: !578)
!583 = !DILocation(line: 137, column: 9, scope: !579)
!584 = !DILocation(line: 139, column: 20, scope: !388)
!585 = !DILocation(line: 139, column: 5, scope: !388)
!586 = !DILocation(line: 140, column: 1, scope: !388)
!587 = !DILocation(line: 119, column: 21, scope: !447)
!588 = !DILocation(line: 119, column: 5, scope: !447)
!589 = !DILocation(line: 121, column: 1, scope: !447)
!590 = !{!520, !520, i64 0}
!591 = !DILocation(line: 143, column: 27, scope: !394)
!592 = !DILocation(line: 146, column: 43, scope: !394)
!593 = !DILocation(line: 146, column: 12, scope: !394)
!594 = !DILocation(line: 146, column: 5, scope: !394)
!595 = !DILocation(line: 204, column: 34, scope: !399)
!596 = !DILocation(line: 204, column: 47, scope: !399)
!597 = !{!469, !469, i64 0}
!598 = !DILocation(line: 204, column: 68, scope: !399)
!599 = !DILocation(line: 206, column: 24, scope: !410)
!600 = !DILocation(line: 206, column: 31, scope: !410)
!601 = !{!602, !468, i64 8}
!602 = !{!"_object", !520, i64 0, !468, i64 8}
!603 = !DILocation(line: 206, column: 40, scope: !410)
!604 = !DILocation(line: 206, column: 59, scope: !410)
!605 = !DILocation(line: 206, column: 93, scope: !606)
!606 = !DILexicalBlockFile(scope: !410, file: !361, discriminator: 1)
!607 = !DILocation(line: 206, column: 100, scope: !410)
!608 = !DILocation(line: 206, column: 62, scope: !410)
!609 = !DILocation(line: 206, column: 9, scope: !399)
!610 = !DILocation(line: 207, column: 9, scope: !409)
!611 = !DILocation(line: 207, column: 16, scope: !409)
!612 = !DILocation(line: 207, column: 19, scope: !409)
!613 = !DILocation(line: 207, column: 28, scope: !409)
!614 = !DILocation(line: 209, column: 30, scope: !409)
!615 = !DILocation(line: 209, column: 13, scope: !409)
!616 = !DILocation(line: 209, column: 11, scope: !409)
!617 = !{!499, !499, i64 0}
!618 = !DILocation(line: 210, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !409, file: !361, line: 210, column: 13)
!620 = !DILocation(line: 210, column: 19, scope: !619)
!621 = !DILocation(line: 210, column: 13, scope: !409)
!622 = !DILocation(line: 211, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !361, line: 211, column: 17)
!624 = distinct !DILexicalBlock(scope: !619, file: !361, line: 210, column: 40)
!625 = !DILocation(line: 211, column: 19, scope: !623)
!626 = !DILocation(line: 211, column: 17, scope: !624)
!627 = !DILocation(line: 212, column: 26, scope: !623)
!628 = !DILocation(line: 212, column: 21, scope: !623)
!629 = !DILocation(line: 212, column: 19, scope: !623)
!630 = !DILocation(line: 212, column: 17, scope: !623)
!631 = !DILocation(line: 214, column: 27, scope: !623)
!632 = !DILocation(line: 214, column: 21, scope: !623)
!633 = !DILocation(line: 214, column: 19, scope: !623)
!634 = !DILocation(line: 215, column: 9, scope: !624)
!635 = !DILocation(line: 216, column: 20, scope: !409)
!636 = !DILocation(line: 216, column: 15, scope: !409)
!637 = !DILocation(line: 218, column: 24, scope: !409)
!638 = !DILocation(line: 218, column: 16, scope: !409)
!639 = !DILocation(line: 218, column: 10, scope: !409)
!640 = !DILocation(line: 218, column: 14, scope: !409)
!641 = !DILocation(line: 219, column: 15, scope: !409)
!642 = !DILocation(line: 219, column: 34, scope: !409)
!643 = !DILocation(line: 219, column: 33, scope: !409)
!644 = !DILocation(line: 219, column: 25, scope: !409)
!645 = !DILocation(line: 219, column: 23, scope: !409)
!646 = !DILocation(line: 219, column: 13, scope: !409)
!647 = !DILocation(line: 220, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !409, file: !361, line: 220, column: 13)
!649 = !DILocation(line: 220, column: 17, scope: !648)
!650 = !DILocation(line: 220, column: 25, scope: !648)
!651 = !DILocation(line: 220, column: 28, scope: !652)
!652 = !DILexicalBlockFile(scope: !648, file: !361, discriminator: 1)
!653 = !DILocation(line: 220, column: 32, scope: !648)
!654 = !DILocation(line: 220, column: 13, scope: !409)
!655 = !DILocation(line: 221, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !361, line: 220, column: 40)
!657 = !DILocation(line: 222, column: 13, scope: !656)
!658 = !DILocation(line: 224, column: 9, scope: !409)
!659 = !DILocation(line: 225, column: 5, scope: !410)
!660 = !DILocation(line: 227, column: 33, scope: !661)
!661 = distinct !DILexicalBlock(scope: !410, file: !361, line: 226, column: 10)
!662 = !DILocation(line: 227, column: 16, scope: !661)
!663 = !DILocation(line: 227, column: 10, scope: !661)
!664 = !DILocation(line: 227, column: 14, scope: !661)
!665 = !DILocation(line: 228, column: 14, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !361, line: 228, column: 13)
!667 = !DILocation(line: 228, column: 13, scope: !666)
!668 = !DILocation(line: 228, column: 18, scope: !666)
!669 = !DILocation(line: 228, column: 32, scope: !666)
!670 = !DILocation(line: 228, column: 35, scope: !671)
!671 = !DILexicalBlockFile(scope: !666, file: !361, discriminator: 1)
!672 = !DILocation(line: 228, column: 13, scope: !661)
!673 = !DILocation(line: 229, column: 13, scope: !666)
!674 = !DILocation(line: 230, column: 9, scope: !661)
!675 = !DILocation(line: 232, column: 1, scope: !399)
!676 = !DILocation(line: 235, column: 36, scope: !413)
!677 = !DILocation(line: 235, column: 49, scope: !413)
!678 = !DILocation(line: 235, column: 60, scope: !413)
!679 = !DILocation(line: 236, column: 42, scope: !413)
!680 = !DILocation(line: 238, column: 40, scope: !413)
!681 = !DILocation(line: 238, column: 45, scope: !413)
!682 = !DILocation(line: 238, column: 50, scope: !413)
!683 = !DILocation(line: 238, column: 61, scope: !413)
!684 = !DILocation(line: 238, column: 12, scope: !413)
!685 = !DILocation(line: 238, column: 5, scope: !413)
!686 = !DILocation(line: 154, column: 39, scope: !448)
!687 = !DILocation(line: 154, column: 52, scope: !448)
!688 = !DILocation(line: 154, column: 63, scope: !448)
!689 = !DILocation(line: 155, column: 36, scope: !448)
!690 = !DILocation(line: 155, column: 65, scope: !448)
!691 = !DILocation(line: 158, column: 24, scope: !459)
!692 = !DILocation(line: 158, column: 31, scope: !459)
!693 = !DILocation(line: 158, column: 40, scope: !459)
!694 = !DILocation(line: 158, column: 59, scope: !459)
!695 = !DILocation(line: 158, column: 93, scope: !696)
!696 = !DILexicalBlockFile(scope: !459, file: !361, discriminator: 1)
!697 = !DILocation(line: 158, column: 100, scope: !459)
!698 = !DILocation(line: 158, column: 62, scope: !459)
!699 = !DILocation(line: 158, column: 9, scope: !448)
!700 = !DILocation(line: 159, column: 9, scope: !458)
!701 = !DILocation(line: 159, column: 16, scope: !458)
!702 = !DILocation(line: 159, column: 19, scope: !458)
!703 = !DILocation(line: 159, column: 28, scope: !458)
!704 = !DILocation(line: 161, column: 9, scope: !458)
!705 = !DILocation(line: 161, column: 25, scope: !458)
!706 = !DILocation(line: 163, column: 30, scope: !458)
!707 = !DILocation(line: 163, column: 13, scope: !458)
!708 = !DILocation(line: 163, column: 11, scope: !458)
!709 = !DILocation(line: 164, column: 26, scope: !458)
!710 = !DILocation(line: 164, column: 21, scope: !458)
!711 = !DILocation(line: 164, column: 19, scope: !458)
!712 = !DILocation(line: 165, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !458, file: !361, line: 165, column: 13)
!714 = !DILocation(line: 165, column: 23, scope: !713)
!715 = !DILocation(line: 165, column: 13, scope: !458)
!716 = !DILocation(line: 166, column: 31, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !361, line: 165, column: 28)
!718 = !DILocation(line: 166, column: 29, scope: !717)
!719 = !DILocation(line: 166, column: 23, scope: !717)
!720 = !DILocation(line: 167, column: 21, scope: !717)
!721 = !DILocation(line: 168, column: 9, scope: !717)
!722 = !DILocation(line: 170, column: 22, scope: !458)
!723 = !DILocation(line: 170, column: 19, scope: !458)
!724 = !DILocation(line: 171, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !458, file: !361, line: 171, column: 13)
!726 = !DILocation(line: 171, column: 19, scope: !725)
!727 = !DILocation(line: 171, column: 13, scope: !458)
!728 = !DILocation(line: 172, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !361, line: 172, column: 17)
!730 = distinct !DILexicalBlock(scope: !725, file: !361, line: 171, column: 40)
!731 = !DILocation(line: 172, column: 25, scope: !729)
!732 = !DILocation(line: 172, column: 17, scope: !730)
!733 = !DILocation(line: 173, column: 34, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !361, line: 172, column: 31)
!735 = !DILocation(line: 173, column: 29, scope: !734)
!736 = !DILocation(line: 173, column: 27, scope: !734)
!737 = !DILocation(line: 174, column: 21, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !361, line: 174, column: 21)
!739 = !DILocation(line: 174, column: 34, scope: !738)
!740 = !DILocation(line: 174, column: 31, scope: !738)
!741 = !DILocation(line: 174, column: 21, scope: !734)
!742 = !DILocation(line: 175, column: 31, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !361, line: 174, column: 47)
!744 = !DILocation(line: 176, column: 29, scope: !743)
!745 = !DILocation(line: 177, column: 17, scope: !743)
!746 = !DILocation(line: 178, column: 13, scope: !734)
!747 = !DILocation(line: 180, column: 35, scope: !748)
!748 = distinct !DILexicalBlock(scope: !729, file: !361, line: 179, column: 18)
!749 = !DILocation(line: 180, column: 29, scope: !748)
!750 = !DILocation(line: 180, column: 27, scope: !748)
!751 = !DILocation(line: 182, column: 9, scope: !730)
!752 = !DILocation(line: 184, column: 24, scope: !458)
!753 = !DILocation(line: 184, column: 16, scope: !458)
!754 = !DILocation(line: 184, column: 10, scope: !458)
!755 = !DILocation(line: 184, column: 14, scope: !458)
!756 = !DILocation(line: 185, column: 15, scope: !458)
!757 = !DILocation(line: 185, column: 34, scope: !458)
!758 = !DILocation(line: 185, column: 33, scope: !458)
!759 = !DILocation(line: 185, column: 25, scope: !458)
!760 = !DILocation(line: 185, column: 23, scope: !458)
!761 = !DILocation(line: 185, column: 13, scope: !458)
!762 = !DILocation(line: 186, column: 13, scope: !763)
!763 = distinct !DILexicalBlock(scope: !458, file: !361, line: 186, column: 13)
!764 = !DILocation(line: 186, column: 17, scope: !763)
!765 = !DILocation(line: 186, column: 25, scope: !763)
!766 = !DILocation(line: 186, column: 28, scope: !767)
!767 = !DILexicalBlockFile(scope: !763, file: !361, discriminator: 1)
!768 = !DILocation(line: 186, column: 32, scope: !763)
!769 = !DILocation(line: 186, column: 13, scope: !458)
!770 = !DILocation(line: 187, column: 13, scope: !771)
!771 = distinct !DILexicalBlock(scope: !763, file: !361, line: 186, column: 40)
!772 = !DILocation(line: 188, column: 13, scope: !771)
!773 = !DILocation(line: 191, column: 28, scope: !458)
!774 = !DILocation(line: 191, column: 22, scope: !458)
!775 = !DILocation(line: 191, column: 10, scope: !458)
!776 = !DILocation(line: 191, column: 20, scope: !458)
!777 = !DILocation(line: 192, column: 9, scope: !458)
!778 = !DILocation(line: 193, column: 5, scope: !459)
!779 = !DILocation(line: 195, column: 33, scope: !780)
!780 = distinct !DILexicalBlock(scope: !459, file: !361, line: 194, column: 10)
!781 = !DILocation(line: 195, column: 16, scope: !780)
!782 = !DILocation(line: 195, column: 10, scope: !780)
!783 = !DILocation(line: 195, column: 14, scope: !780)
!784 = !DILocation(line: 196, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !361, line: 196, column: 13)
!786 = !DILocation(line: 196, column: 13, scope: !785)
!787 = !DILocation(line: 196, column: 18, scope: !785)
!788 = !DILocation(line: 196, column: 32, scope: !785)
!789 = !DILocation(line: 196, column: 35, scope: !790)
!790 = !DILexicalBlockFile(scope: !785, file: !361, discriminator: 1)
!791 = !DILocation(line: 196, column: 13, scope: !780)
!792 = !DILocation(line: 197, column: 13, scope: !785)
!793 = !DILocation(line: 198, column: 10, scope: !780)
!794 = !DILocation(line: 198, column: 20, scope: !780)
!795 = !DILocation(line: 199, column: 9, scope: !780)
!796 = !DILocation(line: 201, column: 1, scope: !448)
!797 = !DILocation(line: 242, column: 35, scope: !422)
!798 = !DILocation(line: 242, column: 48, scope: !422)
!799 = !DILocation(line: 242, column: 59, scope: !422)
!800 = !DILocation(line: 243, column: 41, scope: !422)
!801 = !DILocation(line: 245, column: 40, scope: !422)
!802 = !DILocation(line: 245, column: 45, scope: !422)
!803 = !DILocation(line: 245, column: 50, scope: !422)
!804 = !DILocation(line: 245, column: 61, scope: !422)
!805 = !DILocation(line: 245, column: 12, scope: !422)
!806 = !DILocation(line: 245, column: 5, scope: !422)
!807 = !DILocation(line: 252, column: 1, scope: !428)
