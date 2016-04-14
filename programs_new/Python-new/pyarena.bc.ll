; ModuleID = 'programs_new/Python-new/pyarena.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._arena = type { %struct._block*, %struct._block*, %struct._object* }
%struct._block = type { i64, i64, %struct._block*, i8* }
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

; Function Attrs: nounwind uwtable
define %struct._arena* @PyArena_New() #0 {
entry:
  %retval = alloca %struct._arena*, align 8
  %arena = alloca %struct._arena*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._arena** %arena to i8*, !dbg !421
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !421
  call void @llvm.dbg.declare(metadata %struct._arena** %arena, metadata !369, metadata !422), !dbg !423
  %call = call i8* @PyMem_Malloc(i64 24), !dbg !424
  %1 = bitcast i8* %call to %struct._arena*, !dbg !425
  store %struct._arena* %1, %struct._arena** %arena, align 8, !dbg !423, !tbaa !426
  %2 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !430, !tbaa !426
  %tobool = icmp ne %struct._arena* %2, null, !dbg !430
  br i1 %tobool, label %if.end, label %if.then, !dbg !432

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !433
  %3 = bitcast %struct._object* %call1 to %struct._arena*, !dbg !434
  store %struct._arena* %3, %struct._arena** %retval, !dbg !435
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !435

if.end:                                           ; preds = %entry
  %call2 = call %struct._block* @block_new(i64 8192), !dbg !436
  %4 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !437, !tbaa !426
  %a_head = getelementptr inbounds %struct._arena, %struct._arena* %4, i32 0, i32 0, !dbg !438
  store %struct._block* %call2, %struct._block** %a_head, align 8, !dbg !439, !tbaa !440
  %5 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !442, !tbaa !426
  %a_head3 = getelementptr inbounds %struct._arena, %struct._arena* %5, i32 0, i32 0, !dbg !443
  %6 = load %struct._block*, %struct._block** %a_head3, align 8, !dbg !443, !tbaa !440
  %7 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !444, !tbaa !426
  %a_cur = getelementptr inbounds %struct._arena, %struct._arena* %7, i32 0, i32 1, !dbg !445
  store %struct._block* %6, %struct._block** %a_cur, align 8, !dbg !446, !tbaa !447
  %8 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !448, !tbaa !426
  %a_head4 = getelementptr inbounds %struct._arena, %struct._arena* %8, i32 0, i32 0, !dbg !450
  %9 = load %struct._block*, %struct._block** %a_head4, align 8, !dbg !450, !tbaa !440
  %tobool5 = icmp ne %struct._block* %9, null, !dbg !448
  br i1 %tobool5, label %if.end.8, label %if.then.6, !dbg !451

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !452, !tbaa !426
  %11 = bitcast %struct._arena* %10 to i8*, !dbg !454
  call void @PyMem_Free(i8* %11), !dbg !455
  %call7 = call %struct._object* @PyErr_NoMemory(), !dbg !456
  %12 = bitcast %struct._object* %call7 to %struct._arena*, !dbg !457
  store %struct._arena* %12, %struct._arena** %retval, !dbg !458
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !458

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyList_New(i64 0), !dbg !459
  %13 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !460, !tbaa !426
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %13, i32 0, i32 2, !dbg !461
  store %struct._object* %call9, %struct._object** %a_objects, align 8, !dbg !462, !tbaa !463
  %14 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !464, !tbaa !426
  %a_objects10 = getelementptr inbounds %struct._arena, %struct._arena* %14, i32 0, i32 2, !dbg !466
  %15 = load %struct._object*, %struct._object** %a_objects10, align 8, !dbg !466, !tbaa !463
  %tobool11 = icmp ne %struct._object* %15, null, !dbg !464
  br i1 %tobool11, label %if.end.15, label %if.then.12, !dbg !467

if.then.12:                                       ; preds = %if.end.8
  %16 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !468, !tbaa !426
  %a_head13 = getelementptr inbounds %struct._arena, %struct._arena* %16, i32 0, i32 0, !dbg !470
  %17 = load %struct._block*, %struct._block** %a_head13, align 8, !dbg !470, !tbaa !440
  call void @block_free(%struct._block* %17), !dbg !471
  %18 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !472, !tbaa !426
  %19 = bitcast %struct._arena* %18 to i8*, !dbg !473
  call void @PyMem_Free(i8* %19), !dbg !474
  %call14 = call %struct._object* @PyErr_NoMemory(), !dbg !475
  %20 = bitcast %struct._object* %call14 to %struct._arena*, !dbg !476
  store %struct._arena* %20, %struct._arena** %retval, !dbg !477
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !477

if.end.15:                                        ; preds = %if.end.8
  %21 = load %struct._arena*, %struct._arena** %arena, align 8, !dbg !478, !tbaa !426
  store %struct._arena* %21, %struct._arena** %retval, !dbg !479
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !479

cleanup:                                          ; preds = %if.end.15, %if.then.12, %if.then.6, %if.then
  %22 = bitcast %struct._arena** %arena to i8*, !dbg !480
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !480
  %23 = load %struct._arena*, %struct._arena** %retval, !dbg !480
  ret %struct._arena* %23, !dbg !480
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define internal %struct._block* @block_new(i64 %size) #0 {
entry:
  %retval = alloca %struct._block*, align 8
  %size.addr = alloca i64, align 8
  %b = alloca %struct._block*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8, !tbaa !481
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !399, metadata !422), !dbg !483
  %0 = bitcast %struct._block** %b to i8*, !dbg !484
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !484
  call void @llvm.dbg.declare(metadata %struct._block** %b, metadata !400, metadata !422), !dbg !485
  %1 = load i64, i64* %size.addr, align 8, !dbg !486, !tbaa !481
  %add = add i64 32, %1, !dbg !487
  %call = call i8* @PyMem_Malloc(i64 %add), !dbg !488
  %2 = bitcast i8* %call to %struct._block*, !dbg !489
  store %struct._block* %2, %struct._block** %b, align 8, !dbg !485, !tbaa !426
  %3 = load %struct._block*, %struct._block** %b, align 8, !dbg !490, !tbaa !426
  %tobool = icmp ne %struct._block* %3, null, !dbg !490
  br i1 %tobool, label %if.end, label %if.then, !dbg !492

if.then:                                          ; preds = %entry
  store %struct._block* null, %struct._block** %retval, !dbg !493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !493

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !494, !tbaa !481
  %5 = load %struct._block*, %struct._block** %b, align 8, !dbg !495, !tbaa !426
  %ab_size = getelementptr inbounds %struct._block, %struct._block* %5, i32 0, i32 0, !dbg !496
  store i64 %4, i64* %ab_size, align 8, !dbg !497, !tbaa !498
  %6 = load %struct._block*, %struct._block** %b, align 8, !dbg !500, !tbaa !426
  %add.ptr = getelementptr %struct._block, %struct._block* %6, i64 1, !dbg !501
  %7 = bitcast %struct._block* %add.ptr to i8*, !dbg !502
  %8 = load %struct._block*, %struct._block** %b, align 8, !dbg !503, !tbaa !426
  %ab_mem = getelementptr inbounds %struct._block, %struct._block* %8, i32 0, i32 3, !dbg !504
  store i8* %7, i8** %ab_mem, align 8, !dbg !505, !tbaa !506
  %9 = load %struct._block*, %struct._block** %b, align 8, !dbg !507, !tbaa !426
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %9, i32 0, i32 2, !dbg !508
  store %struct._block* null, %struct._block** %ab_next, align 8, !dbg !509, !tbaa !510
  %10 = load %struct._block*, %struct._block** %b, align 8, !dbg !511, !tbaa !426
  %ab_mem1 = getelementptr inbounds %struct._block, %struct._block* %10, i32 0, i32 3, !dbg !512
  %11 = load i8*, i8** %ab_mem1, align 8, !dbg !512, !tbaa !506
  %12 = ptrtoint i8* %11 to i64, !dbg !513
  %add2 = add i64 %12, 7, !dbg !514
  %and = and i64 %add2, -8, !dbg !515
  %13 = inttoptr i64 %and to i8*, !dbg !516
  %14 = load %struct._block*, %struct._block** %b, align 8, !dbg !517, !tbaa !426
  %ab_mem3 = getelementptr inbounds %struct._block, %struct._block* %14, i32 0, i32 3, !dbg !518
  %15 = load i8*, i8** %ab_mem3, align 8, !dbg !518, !tbaa !506
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64, !dbg !519
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64, !dbg !519
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !519
  %16 = load %struct._block*, %struct._block** %b, align 8, !dbg !520, !tbaa !426
  %ab_offset = getelementptr inbounds %struct._block, %struct._block* %16, i32 0, i32 1, !dbg !521
  store i64 %sub.ptr.sub, i64* %ab_offset, align 8, !dbg !522, !tbaa !523
  %17 = load %struct._block*, %struct._block** %b, align 8, !dbg !524, !tbaa !426
  store %struct._block* %17, %struct._block** %retval, !dbg !525
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !525

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct._block** %b to i8*, !dbg !526
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !526
  %19 = load %struct._block*, %struct._block** %retval, !dbg !526
  ret %struct._block* %19, !dbg !526
}

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyList_New(i64) #3

; Function Attrs: nounwind uwtable
define internal void @block_free(%struct._block* %b) #0 {
entry:
  %b.addr = alloca %struct._block*, align 8
  %next = alloca %struct._block*, align 8
  store %struct._block* %b, %struct._block** %b.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._block** %b.addr, metadata !405, metadata !422), !dbg !527
  br label %while.cond, !dbg !528

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !529, !tbaa !426
  %tobool = icmp ne %struct._block* %0, null, !dbg !528
  br i1 %tobool, label %while.body, label %while.end, !dbg !528

while.body:                                       ; preds = %while.cond
  %1 = bitcast %struct._block** %next to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !532
  call void @llvm.dbg.declare(metadata %struct._block** %next, metadata !406, metadata !422), !dbg !533
  %2 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !534, !tbaa !426
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %2, i32 0, i32 2, !dbg !535
  %3 = load %struct._block*, %struct._block** %ab_next, align 8, !dbg !535, !tbaa !510
  store %struct._block* %3, %struct._block** %next, align 8, !dbg !533, !tbaa !426
  %4 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !536, !tbaa !426
  %5 = bitcast %struct._block* %4 to i8*, !dbg !536
  call void @PyMem_Free(i8* %5), !dbg !537
  %6 = load %struct._block*, %struct._block** %next, align 8, !dbg !538, !tbaa !426
  store %struct._block* %6, %struct._block** %b.addr, align 8, !dbg !539, !tbaa !426
  %7 = bitcast %struct._block** %next to i8*, !dbg !540
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !540
  br label %while.cond, !dbg !528

while.end:                                        ; preds = %while.cond
  ret void, !dbg !541
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @PyArena_Free(%struct._arena* %arena) #0 {
entry:
  %arena.addr = alloca %struct._arena*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._arena** %arena.addr, metadata !374, metadata !422), !dbg !542
  %0 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !543, !tbaa !426
  %a_head = getelementptr inbounds %struct._arena, %struct._arena* %0, i32 0, i32 0, !dbg !544
  %1 = load %struct._block*, %struct._block** %a_head, align 8, !dbg !544, !tbaa !440
  call void @block_free(%struct._block* %1), !dbg !545
  br label %do.body, !dbg !546

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !547
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !375, metadata !422), !dbg !549
  %3 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !550, !tbaa !426
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %3, i32 0, i32 2, !dbg !551
  %4 = load %struct._object*, %struct._object** %a_objects, align 8, !dbg !551, !tbaa !463
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !549, !tbaa !426
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !552, !tbaa !426
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !554
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !555, !tbaa !556
  %dec = add i64 %6, -1, !dbg !555
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !555, !tbaa !556
  %cmp = icmp ne i64 %dec, 0, !dbg !558
  br i1 %cmp, label %if.then, label %if.else, !dbg !559

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !560

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !562, !tbaa !426
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !564
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !564, !tbaa !565
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !566
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !566, !tbaa !567
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !571, !tbaa !426
  call void %9(%struct._object* %10), !dbg !572
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !573
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !573
  br label %do.end, !dbg !575

do.end:                                           ; preds = %if.end
  %12 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !576, !tbaa !426
  %13 = bitcast %struct._arena* %12 to i8*, !dbg !576
  call void @PyMem_Free(i8* %13), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: nounwind uwtable
define i8* @PyArena_Malloc(%struct._arena* %arena, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._arena** %arena.addr, metadata !381, metadata !422), !dbg !579
  store i64 %size, i64* %size.addr, align 8, !tbaa !481
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !382, metadata !422), !dbg !580
  %0 = bitcast i8** %p to i8*, !dbg !581
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !581
  call void @llvm.dbg.declare(metadata i8** %p, metadata !383, metadata !422), !dbg !582
  %1 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !583, !tbaa !426
  %a_cur = getelementptr inbounds %struct._arena, %struct._arena* %1, i32 0, i32 1, !dbg !584
  %2 = load %struct._block*, %struct._block** %a_cur, align 8, !dbg !584, !tbaa !447
  %3 = load i64, i64* %size.addr, align 8, !dbg !585, !tbaa !481
  %call = call i8* @block_alloc(%struct._block* %2, i64 %3), !dbg !586
  store i8* %call, i8** %p, align 8, !dbg !582, !tbaa !426
  %4 = load i8*, i8** %p, align 8, !dbg !587, !tbaa !426
  %tobool = icmp ne i8* %4, null, !dbg !587
  br i1 %tobool, label %if.end, label %if.then, !dbg !589

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !590
  %5 = bitcast %struct._object* %call1 to i8*, !dbg !590
  store i8* %5, i8** %retval, !dbg !591
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !591

if.end:                                           ; preds = %entry
  %6 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !592, !tbaa !426
  %a_cur2 = getelementptr inbounds %struct._arena, %struct._arena* %6, i32 0, i32 1, !dbg !594
  %7 = load %struct._block*, %struct._block** %a_cur2, align 8, !dbg !594, !tbaa !447
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %7, i32 0, i32 2, !dbg !595
  %8 = load %struct._block*, %struct._block** %ab_next, align 8, !dbg !595, !tbaa !510
  %tobool3 = icmp ne %struct._block* %8, null, !dbg !592
  br i1 %tobool3, label %if.then.4, label %if.end.8, !dbg !596

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !597, !tbaa !426
  %a_cur5 = getelementptr inbounds %struct._arena, %struct._arena* %9, i32 0, i32 1, !dbg !599
  %10 = load %struct._block*, %struct._block** %a_cur5, align 8, !dbg !599, !tbaa !447
  %ab_next6 = getelementptr inbounds %struct._block, %struct._block* %10, i32 0, i32 2, !dbg !600
  %11 = load %struct._block*, %struct._block** %ab_next6, align 8, !dbg !600, !tbaa !510
  %12 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !601, !tbaa !426
  %a_cur7 = getelementptr inbounds %struct._arena, %struct._arena* %12, i32 0, i32 1, !dbg !602
  store %struct._block* %11, %struct._block** %a_cur7, align 8, !dbg !603, !tbaa !447
  br label %if.end.8, !dbg !604

if.end.8:                                         ; preds = %if.then.4, %if.end
  %13 = load i8*, i8** %p, align 8, !dbg !605, !tbaa !426
  store i8* %13, i8** %retval, !dbg !606
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !606

cleanup:                                          ; preds = %if.end.8, %if.then
  %14 = bitcast i8** %p to i8*, !dbg !607
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !607
  %15 = load i8*, i8** %retval, !dbg !607
  ret i8* %15, !dbg !607
}

; Function Attrs: nounwind uwtable
define internal i8* @block_alloc(%struct._block* %b, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %b.addr = alloca %struct._block*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %newbl = alloca %struct._block*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._block* %b, %struct._block** %b.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._block** %b.addr, metadata !412, metadata !422), !dbg !608
  store i64 %size, i64* %size.addr, align 8, !tbaa !481
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !413, metadata !422), !dbg !609
  %0 = bitcast i8** %p to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !610
  call void @llvm.dbg.declare(metadata i8** %p, metadata !414, metadata !422), !dbg !611
  %1 = load i64, i64* %size.addr, align 8, !dbg !612, !tbaa !481
  %add = add i64 %1, 7, !dbg !613
  %and = and i64 %add, -8, !dbg !614
  store i64 %and, i64* %size.addr, align 8, !dbg !615, !tbaa !481
  %2 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !616, !tbaa !426
  %ab_offset = getelementptr inbounds %struct._block, %struct._block* %2, i32 0, i32 1, !dbg !617
  %3 = load i64, i64* %ab_offset, align 8, !dbg !617, !tbaa !523
  %4 = load i64, i64* %size.addr, align 8, !dbg !618, !tbaa !481
  %add1 = add i64 %3, %4, !dbg !619
  %5 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !620, !tbaa !426
  %ab_size = getelementptr inbounds %struct._block, %struct._block* %5, i32 0, i32 0, !dbg !621
  %6 = load i64, i64* %ab_size, align 8, !dbg !621, !tbaa !498
  %cmp = icmp ugt i64 %add1, %6, !dbg !622
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !623

if.then:                                          ; preds = %entry
  %7 = bitcast %struct._block** %newbl to i8*, !dbg !624
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !624
  call void @llvm.dbg.declare(metadata %struct._block** %newbl, metadata !415, metadata !422), !dbg !625
  %8 = load i64, i64* %size.addr, align 8, !dbg !626, !tbaa !481
  %cmp2 = icmp ult i64 %8, 8192, !dbg !627
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !626

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !628

cond.false:                                       ; preds = %if.then
  %9 = load i64, i64* %size.addr, align 8, !dbg !630, !tbaa !481
  br label %cond.end, !dbg !626

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8192, %cond.true ], [ %9, %cond.false ], !dbg !626
  %call = call %struct._block* @block_new(i64 %cond), !dbg !631
  store %struct._block* %call, %struct._block** %newbl, align 8, !dbg !625, !tbaa !426
  %10 = load %struct._block*, %struct._block** %newbl, align 8, !dbg !632, !tbaa !426
  %tobool = icmp ne %struct._block* %10, null, !dbg !632
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !634

if.then.3:                                        ; preds = %cond.end
  store i8* null, i8** %retval, !dbg !635
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !635

if.end:                                           ; preds = %cond.end
  %11 = load %struct._block*, %struct._block** %newbl, align 8, !dbg !636, !tbaa !426
  %12 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !637, !tbaa !426
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %12, i32 0, i32 2, !dbg !638
  store %struct._block* %11, %struct._block** %ab_next, align 8, !dbg !639, !tbaa !510
  %13 = load %struct._block*, %struct._block** %newbl, align 8, !dbg !640, !tbaa !426
  store %struct._block* %13, %struct._block** %b.addr, align 8, !dbg !641, !tbaa !426
  store i32 0, i32* %cleanup.dest.slot, !dbg !642
  br label %cleanup, !dbg !642

cleanup:                                          ; preds = %if.end, %if.then.3
  %14 = bitcast %struct._block** %newbl to i8*, !dbg !643
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !643
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.4, !dbg !645

if.end.4:                                         ; preds = %cleanup.cont, %entry
  %15 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !646, !tbaa !426
  %ab_mem = getelementptr inbounds %struct._block, %struct._block* %15, i32 0, i32 3, !dbg !647
  %16 = load i8*, i8** %ab_mem, align 8, !dbg !647, !tbaa !506
  %17 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !648, !tbaa !426
  %ab_offset5 = getelementptr inbounds %struct._block, %struct._block* %17, i32 0, i32 1, !dbg !649
  %18 = load i64, i64* %ab_offset5, align 8, !dbg !649, !tbaa !523
  %add.ptr = getelementptr i8, i8* %16, i64 %18, !dbg !650
  store i8* %add.ptr, i8** %p, align 8, !dbg !651, !tbaa !426
  %19 = load i64, i64* %size.addr, align 8, !dbg !652, !tbaa !481
  %20 = load %struct._block*, %struct._block** %b.addr, align 8, !dbg !653, !tbaa !426
  %ab_offset6 = getelementptr inbounds %struct._block, %struct._block* %20, i32 0, i32 1, !dbg !654
  %21 = load i64, i64* %ab_offset6, align 8, !dbg !655, !tbaa !523
  %add7 = add i64 %21, %19, !dbg !655
  store i64 %add7, i64* %ab_offset6, align 8, !dbg !655, !tbaa !523
  %22 = load i8*, i8** %p, align 8, !dbg !656, !tbaa !426
  store i8* %22, i8** %retval, !dbg !657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8, !dbg !657

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.8

cleanup.8:                                        ; preds = %NewDefault, %if.end.4
  %23 = bitcast i8** %p to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !658
  %24 = load i8*, i8** %retval, !dbg !658
  ret i8* %24, !dbg !658
}

; Function Attrs: nounwind uwtable
define i32 @PyArena_AddPyObject(%struct._arena* %arena, %struct._object* %obj) #0 {
entry:
  %arena.addr = alloca %struct._arena*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._arena** %arena.addr, metadata !388, metadata !422), !dbg !659
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !426
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !389, metadata !422), !dbg !660
  %0 = bitcast i32* %r to i8*, !dbg !661
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !661
  call void @llvm.dbg.declare(metadata i32* %r, metadata !390, metadata !422), !dbg !662
  %1 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !663, !tbaa !426
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %1, i32 0, i32 2, !dbg !664
  %2 = load %struct._object*, %struct._object** %a_objects, align 8, !dbg !664, !tbaa !463
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !665, !tbaa !426
  %call = call i32 @PyList_Append(%struct._object* %2, %struct._object* %3), !dbg !666
  store i32 %call, i32* %r, align 4, !dbg !662, !tbaa !667
  %4 = load i32, i32* %r, align 4, !dbg !668, !tbaa !667
  %cmp = icmp sge i32 %4, 0, !dbg !669
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !670

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !671

do.body:                                          ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !672
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !672
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !391, metadata !422), !dbg !674
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !675, !tbaa !426
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !674, !tbaa !426
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !676, !tbaa !426
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !678
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !679, !tbaa !556
  %dec = add i64 %8, -1, !dbg !679
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !679, !tbaa !556
  %cmp1 = icmp ne i64 %dec, 0, !dbg !680
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !681

if.then.2:                                        ; preds = %do.body
  br label %if.end, !dbg !682

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !684, !tbaa !426
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !686
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !686, !tbaa !565
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !687
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !687, !tbaa !567
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !688, !tbaa !426
  call void %11(%struct._object* %12), !dbg !689
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !690
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !690
  br label %do.cond, !dbg !692

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !693

do.end:                                           ; preds = %do.cond
  br label %if.end.3, !dbg !695

if.end.3:                                         ; preds = %do.end, %entry
  %14 = load i32, i32* %r, align 4, !dbg !696, !tbaa !667
  %15 = bitcast i32* %r to i8*, !dbg !697
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !697
  ret i32 %14, !dbg !698
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!418, !419}
!llvm.ident = !{!420}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !364)
!1 = !DIFile(filename: "pyarena.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !23, !26, !11, !73, !361, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArena", file: !6, line: 12, baseType: !7)
!6 = !DIFile(filename: "Include/pyarena.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arena", file: !8, line: 45, size: 192, align: 64, elements: !9)
!8 = !DIFile(filename: "Python/pyarena.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !{!10, !24, !25}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "a_head", scope: !7, file: !8, line: 50, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "block", file: !8, line: 38, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_block", file: !8, line: 16, size: 256, align: 64, elements: !14)
!14 = !{!15, !19, !20, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ab_size", scope: !13, file: !8, line: 21, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 62, baseType: !18)
!17 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ab_offset", scope: !13, file: !8, line: 26, baseType: !16, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ab_next", scope: !13, file: !8, line: 32, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ab_mem", scope: !13, file: !8, line: 37, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "a_cur", scope: !7, file: !8, line: 57, baseType: !11, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "a_objects", scope: !7, file: !8, line: 63, baseType: !26, size: 64, align: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !28, line: 109, baseType: !29)
!28 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !28, line: 105, size: 128, align: 64, elements: !30)
!30 = !{!31, !39}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !29, file: !28, line: 107, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !33, line: 177, baseType: !34)
!33 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !35, line: 102, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 181, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !29, file: !28, line: 108, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !28, line: 334, size: 3200, align: 64, elements: !42)
!42 = !{!43, !49, !53, !54, !55, !60, !120, !125, !130, !131, !136, !188, !219, !231, !237, !238, !239, !241, !243, !274, !275, !276, !285, !286, !291, !292, !294, !296, !306, !309, !327, !328, !329, !331, !333, !334, !336, !341, !346, !351, !352, !353, !354, !355, !356, !357, !358, !360}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !41, file: !28, line: 335, baseType: !44, size: 192, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !28, line: 114, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 111, size: 192, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !45, file: !28, line: 112, baseType: !27, size: 128, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !45, file: !28, line: 113, baseType: !32, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !41, file: !28, line: 336, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !41, file: !28, line: 337, baseType: !32, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !41, file: !28, line: 337, baseType: !32, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !41, file: !28, line: 341, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !28, line: 308, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !26}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !41, file: !28, line: 342, baseType: !61, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !28, line: 314, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !26, !66, !65}
!65 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 48, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !69, line: 246, size: 1728, align: 64, elements: !70)
!69 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!70 = !{!71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !92, !93, !94, !95, !97, !99, !101, !105, !108, !110, !111, !112, !113, !114, !115, !116}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !68, file: !69, line: 247, baseType: !65, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !68, file: !69, line: 252, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !68, file: !69, line: 253, baseType: !73, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !68, file: !69, line: 254, baseType: !73, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !68, file: !69, line: 255, baseType: !73, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !68, file: !69, line: 256, baseType: !73, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !68, file: !69, line: 257, baseType: !73, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !68, file: !69, line: 258, baseType: !73, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !68, file: !69, line: 259, baseType: !73, size: 64, align: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !68, file: !69, line: 261, baseType: !73, size: 64, align: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !68, file: !69, line: 262, baseType: !73, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !68, file: !69, line: 263, baseType: !73, size: 64, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !68, file: !69, line: 265, baseType: !85, size: 64, align: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !69, line: 161, size: 192, align: 64, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !86, file: !69, line: 162, baseType: !85, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !86, file: !69, line: 163, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !86, file: !69, line: 167, baseType: !65, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !68, file: !69, line: 267, baseType: !90, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !68, file: !69, line: 269, baseType: !65, size: 32, align: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !68, file: !69, line: 273, baseType: !65, size: 32, align: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !68, file: !69, line: 275, baseType: !96, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 140, baseType: !38)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !68, file: !69, line: 279, baseType: !98, size: 16, align: 16, offset: 1024)
!98 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !68, file: !69, line: 280, baseType: !100, size: 8, align: 8, offset: 1040)
!100 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !68, file: !69, line: 281, baseType: !102, size: 8, align: 8, offset: 1048)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !68, file: !69, line: 285, baseType: !106, size: 64, align: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !69, line: 155, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !68, file: !69, line: 294, baseType: !109, size: 64, align: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 141, baseType: !38)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !68, file: !69, line: 303, baseType: !23, size: 64, align: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !68, file: !69, line: 304, baseType: !23, size: 64, align: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !68, file: !69, line: 305, baseType: !23, size: 64, align: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !68, file: !69, line: 306, baseType: !23, size: 64, align: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !68, file: !69, line: 307, baseType: !16, size: 64, align: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !68, file: !69, line: 309, baseType: !65, size: 32, align: 32, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !68, file: !69, line: 311, baseType: !117, size: 160, align: 8, offset: 1568)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, align: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 20)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !41, file: !28, line: 343, baseType: !121, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !28, line: 316, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!26, !26, !73}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !41, file: !28, line: 344, baseType: !126, size: 64, align: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !28, line: 318, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!65, !26, !73, !26}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !41, file: !28, line: 345, baseType: !23, size: 64, align: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !41, file: !28, line: 346, baseType: !132, size: 64, align: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !28, line: 320, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!26, !26}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !41, file: !28, line: 350, baseType: !137, size: 64, align: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !28, line: 278, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 236, size: 2176, align: 64, elements: !140)
!140 = !{!141, !146, !147, !148, !149, !150, !155, !157, !158, !159, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !139, file: !28, line: 241, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !28, line: 166, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!26, !26, !26}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !139, file: !28, line: 242, baseType: !142, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !139, file: !28, line: 243, baseType: !142, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !139, file: !28, line: 244, baseType: !142, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !139, file: !28, line: 245, baseType: !142, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !139, file: !28, line: 246, baseType: !151, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !28, line: 167, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!26, !26, !26, !26}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !139, file: !28, line: 247, baseType: !156, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !28, line: 165, baseType: !133)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !139, file: !28, line: 248, baseType: !156, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !139, file: !28, line: 249, baseType: !156, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !139, file: !28, line: 250, baseType: !160, size: 64, align: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !28, line: 168, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!65, !26}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !139, file: !28, line: 251, baseType: !156, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !139, file: !28, line: 252, baseType: !142, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !139, file: !28, line: 253, baseType: !142, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !139, file: !28, line: 254, baseType: !142, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !139, file: !28, line: 255, baseType: !142, size: 64, align: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !139, file: !28, line: 256, baseType: !142, size: 64, align: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !139, file: !28, line: 257, baseType: !156, size: 64, align: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !139, file: !28, line: 258, baseType: !23, size: 64, align: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !139, file: !28, line: 259, baseType: !156, size: 64, align: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !139, file: !28, line: 261, baseType: !142, size: 64, align: 64, offset: 1216)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !139, file: !28, line: 262, baseType: !142, size: 64, align: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !139, file: !28, line: 263, baseType: !142, size: 64, align: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !139, file: !28, line: 264, baseType: !142, size: 64, align: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !139, file: !28, line: 265, baseType: !151, size: 64, align: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !139, file: !28, line: 266, baseType: !142, size: 64, align: 64, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !139, file: !28, line: 267, baseType: !142, size: 64, align: 64, offset: 1600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !139, file: !28, line: 268, baseType: !142, size: 64, align: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !139, file: !28, line: 269, baseType: !142, size: 64, align: 64, offset: 1728)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !139, file: !28, line: 270, baseType: !142, size: 64, align: 64, offset: 1792)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !139, file: !28, line: 272, baseType: !142, size: 64, align: 64, offset: 1856)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !139, file: !28, line: 273, baseType: !142, size: 64, align: 64, offset: 1920)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !139, file: !28, line: 274, baseType: !142, size: 64, align: 64, offset: 1984)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !139, file: !28, line: 275, baseType: !142, size: 64, align: 64, offset: 2048)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !139, file: !28, line: 277, baseType: !156, size: 64, align: 64, offset: 2112)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !41, file: !28, line: 351, baseType: !189, size: 64, align: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !28, line: 292, baseType: !191)
!191 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 280, size: 640, align: 64, elements: !192)
!192 = !{!193, !198, !199, !204, !205, !206, !211, !212, !217, !218}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !191, file: !28, line: 281, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !28, line: 169, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!32, !26}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !191, file: !28, line: 282, baseType: !142, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !191, file: !28, line: 283, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !28, line: 170, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!26, !26, !32}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !191, file: !28, line: 284, baseType: !200, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !191, file: !28, line: 285, baseType: !23, size: 64, align: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !191, file: !28, line: 286, baseType: !207, size: 64, align: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !28, line: 172, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!65, !26, !32, !26}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !191, file: !28, line: 287, baseType: !23, size: 64, align: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !191, file: !28, line: 288, baseType: !213, size: 64, align: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !28, line: 231, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!65, !26, !26}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !191, file: !28, line: 290, baseType: !142, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !191, file: !28, line: 291, baseType: !200, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !41, file: !28, line: 352, baseType: !220, size: 64, align: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !28, line: 298, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 294, size: 192, align: 64, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !222, file: !28, line: 295, baseType: !194, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !222, file: !28, line: 296, baseType: !142, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !222, file: !28, line: 297, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !28, line: 174, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!65, !26, !26, !26}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !41, file: !28, line: 356, baseType: !232, size: 64, align: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !28, line: 321, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !26}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !33, line: 186, baseType: !32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !41, file: !28, line: 357, baseType: !151, size: 64, align: 64, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !41, file: !28, line: 358, baseType: !132, size: 64, align: 64, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !41, file: !28, line: 359, baseType: !240, size: 64, align: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !28, line: 317, baseType: !143)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !41, file: !28, line: 360, baseType: !242, size: 64, align: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !28, line: 319, baseType: !228)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !41, file: !28, line: 363, baseType: !244, size: 64, align: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !28, line: 304, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 301, size: 128, align: 64, elements: !247)
!247 = !{!248, !269}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !246, file: !28, line: 302, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !28, line: 193, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!65, !26, !253, !65}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !28, line: 191, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !28, line: 178, size: 640, align: 64, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !266, !267, !268}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !28, line: 179, baseType: !23, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !255, file: !28, line: 180, baseType: !26, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !255, file: !28, line: 181, baseType: !32, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !255, file: !28, line: 182, baseType: !32, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !255, file: !28, line: 184, baseType: !65, size: 32, align: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !255, file: !28, line: 185, baseType: !65, size: 32, align: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !255, file: !28, line: 186, baseType: !73, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !255, file: !28, line: 187, baseType: !265, size: 64, align: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !255, file: !28, line: 188, baseType: !265, size: 64, align: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !255, file: !28, line: 189, baseType: !265, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !255, file: !28, line: 190, baseType: !23, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !246, file: !28, line: 303, baseType: !270, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !28, line: 194, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !26, !253}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !41, file: !28, line: 366, baseType: !18, size: 64, align: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !41, file: !28, line: 368, baseType: !50, size: 64, align: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !41, file: !28, line: 372, baseType: !277, size: 64, align: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !28, line: 233, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!65, !26, !281, !23}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !28, line: 232, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!65, !26, !23}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !41, file: !28, line: 375, baseType: !160, size: 64, align: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !41, file: !28, line: 379, baseType: !287, size: 64, align: 64, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !28, line: 322, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!26, !26, !26, !65}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !41, file: !28, line: 382, baseType: !32, size: 64, align: 64, offset: 1664)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !41, file: !28, line: 385, baseType: !293, size: 64, align: 64, offset: 1728)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !28, line: 323, baseType: !133)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !41, file: !28, line: 386, baseType: !295, size: 64, align: 64, offset: 1792)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !28, line: 324, baseType: !133)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !41, file: !28, line: 389, baseType: !297, size: 64, align: 64, offset: 1856)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !299, line: 40, size: 256, align: 64, elements: !300)
!299 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!300 = !{!301, !302, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !298, file: !299, line: 41, baseType: !50, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !298, file: !299, line: 42, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !299, line: 18, baseType: !143)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !298, file: !299, line: 43, baseType: !65, size: 32, align: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !298, file: !299, line: 45, baseType: !50, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !41, file: !28, line: 390, baseType: !307, size: 64, align: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !28, line: 390, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !41, file: !28, line: 391, baseType: !310, size: 64, align: 64, offset: 1984)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !312, line: 11, size: 320, align: 64, elements: !313)
!312 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!313 = !{!314, !315, !320, !325, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 12, baseType: !73, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !311, file: !312, line: 13, baseType: !316, size: 64, align: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !312, line: 8, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!26, !26, !23}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !311, file: !312, line: 14, baseType: !321, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !312, line: 9, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!65, !26, !26, !23}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 15, baseType: !73, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !311, file: !312, line: 16, baseType: !23, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !41, file: !28, line: 392, baseType: !40, size: 64, align: 64, offset: 2048)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !41, file: !28, line: 393, baseType: !26, size: 64, align: 64, offset: 2112)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !41, file: !28, line: 394, baseType: !330, size: 64, align: 64, offset: 2176)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !28, line: 325, baseType: !152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !41, file: !28, line: 395, baseType: !332, size: 64, align: 64, offset: 2240)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !28, line: 326, baseType: !228)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !41, file: !28, line: 396, baseType: !32, size: 64, align: 64, offset: 2304)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !41, file: !28, line: 397, baseType: !335, size: 64, align: 64, offset: 2368)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !28, line: 327, baseType: !228)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !41, file: !28, line: 398, baseType: !337, size: 64, align: 64, offset: 2432)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !28, line: 329, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!26, !40, !32}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !41, file: !28, line: 399, baseType: !342, size: 64, align: 64, offset: 2496)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !28, line: 328, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!26, !40, !26, !26}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !41, file: !28, line: 400, baseType: !347, size: 64, align: 64, offset: 2560)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !28, line: 307, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !23}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !41, file: !28, line: 401, baseType: !160, size: 64, align: 64, offset: 2624)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !41, file: !28, line: 402, baseType: !26, size: 64, align: 64, offset: 2688)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !41, file: !28, line: 403, baseType: !26, size: 64, align: 64, offset: 2752)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !41, file: !28, line: 404, baseType: !26, size: 64, align: 64, offset: 2816)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !41, file: !28, line: 405, baseType: !26, size: 64, align: 64, offset: 2880)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !41, file: !28, line: 406, baseType: !26, size: 64, align: 64, offset: 2944)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !41, file: !28, line: 407, baseType: !56, size: 64, align: 64, offset: 3008)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !41, file: !28, line: 410, baseType: !359, size: 32, align: 32, offset: 3072)
!359 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !41, file: !28, line: 412, baseType: !56, size: 64, align: 64, offset: 3136)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uintptr_t", file: !33, line: 153, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !363, line: 122, baseType: !18)
!363 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!364 = !{!365, !370, !377, !384, !395, !401, !408}
!365 = !DISubprogram(name: "PyArena_New", scope: !8, file: !8, line: 128, type: !366, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._arena* ()* @PyArena_New, variables: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!4}
!368 = !{!369}
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arena", scope: !365, file: !8, line: 130, type: !4)
!370 = !DISubprogram(name: "PyArena_Free", scope: !8, file: !8, line: 157, type: !371, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._arena*)* @PyArena_Free, variables: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !4}
!373 = !{!374, !375}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !370, file: !8, line: 157, type: !4)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !376, file: !8, line: 175, type: !26)
!376 = distinct !DILexicalBlock(scope: !370, file: !8, line: 175, column: 8)
!377 = !DISubprogram(name: "PyArena_Malloc", scope: !8, file: !8, line: 180, type: !378, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._arena*, i64)* @PyArena_Malloc, variables: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!23, !4, !16}
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !377, file: !8, line: 180, type: !4)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !377, file: !8, line: 180, type: !16)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !377, file: !8, line: 182, type: !23)
!384 = !DISubprogram(name: "PyArena_AddPyObject", scope: !8, file: !8, line: 203, type: !385, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._arena*, %struct._object*)* @PyArena_AddPyObject, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!65, !4, !26}
!387 = !{!388, !389, !390, !391}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !384, file: !8, line: 203, type: !4)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !384, file: !8, line: 203, type: !26)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !384, file: !8, line: 205, type: !65)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !392, file: !8, line: 207, type: !26)
!392 = distinct !DILexicalBlock(scope: !393, file: !8, line: 207, column: 12)
!393 = distinct !DILexicalBlock(scope: !394, file: !8, line: 206, column: 17)
!394 = distinct !DILexicalBlock(scope: !384, file: !8, line: 206, column: 9)
!395 = !DISubprogram(name: "block_new", scope: !8, file: !8, line: 76, type: !396, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._block* (i64)* @block_new, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!11, !16}
!398 = !{!399, !400}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !395, file: !8, line: 76, type: !16)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !395, file: !8, line: 80, type: !11)
!401 = !DISubprogram(name: "block_free", scope: !8, file: !8, line: 92, type: !402, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._block*)* @block_free, variables: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !11}
!404 = !{!405, !406}
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !401, file: !8, line: 92, type: !11)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !407, file: !8, line: 94, type: !11)
!407 = distinct !DILexicalBlock(scope: !401, file: !8, line: 93, column: 15)
!408 = !DISubprogram(name: "block_alloc", scope: !8, file: !8, line: 101, type: !409, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._block*, i64)* @block_alloc, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!23, !11, !16}
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !408, file: !8, line: 101, type: !11)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !408, file: !8, line: 101, type: !16)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !408, file: !8, line: 103, type: !23)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newbl", scope: !416, file: !8, line: 111, type: !11)
!416 = distinct !DILexicalBlock(scope: !417, file: !8, line: 106, column: 43)
!417 = distinct !DILexicalBlock(scope: !408, file: !8, line: 106, column: 9)
!418 = !{i32 2, !"Dwarf Version", i32 4}
!419 = !{i32 2, !"Debug Info Version", i32 3}
!420 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!421 = !DILocation(line: 130, column: 5, scope: !365)
!422 = !DIExpression()
!423 = !DILocation(line: 130, column: 14, scope: !365)
!424 = !DILocation(line: 130, column: 33, scope: !365)
!425 = !DILocation(line: 130, column: 22, scope: !365)
!426 = !{!427, !427, i64 0}
!427 = !{!"any pointer", !428, i64 0}
!428 = !{!"omnipotent char", !429, i64 0}
!429 = !{!"Simple C/C++ TBAA"}
!430 = !DILocation(line: 131, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !365, file: !8, line: 131, column: 9)
!432 = !DILocation(line: 131, column: 9, scope: !365)
!433 = !DILocation(line: 132, column: 26, scope: !431)
!434 = !DILocation(line: 132, column: 16, scope: !431)
!435 = !DILocation(line: 132, column: 9, scope: !431)
!436 = !DILocation(line: 134, column: 21, scope: !365)
!437 = !DILocation(line: 134, column: 5, scope: !365)
!438 = !DILocation(line: 134, column: 12, scope: !365)
!439 = !DILocation(line: 134, column: 19, scope: !365)
!440 = !{!441, !427, i64 0}
!441 = !{!"_arena", !427, i64 0, !427, i64 8, !427, i64 16}
!442 = !DILocation(line: 135, column: 20, scope: !365)
!443 = !DILocation(line: 135, column: 27, scope: !365)
!444 = !DILocation(line: 135, column: 5, scope: !365)
!445 = !DILocation(line: 135, column: 12, scope: !365)
!446 = !DILocation(line: 135, column: 18, scope: !365)
!447 = !{!441, !427, i64 8}
!448 = !DILocation(line: 136, column: 10, scope: !449)
!449 = distinct !DILexicalBlock(scope: !365, file: !8, line: 136, column: 9)
!450 = !DILocation(line: 136, column: 17, scope: !449)
!451 = !DILocation(line: 136, column: 9, scope: !365)
!452 = !DILocation(line: 137, column: 28, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !8, line: 136, column: 25)
!454 = !DILocation(line: 137, column: 20, scope: !453)
!455 = !DILocation(line: 137, column: 9, scope: !453)
!456 = !DILocation(line: 138, column: 26, scope: !453)
!457 = !DILocation(line: 138, column: 16, scope: !453)
!458 = !DILocation(line: 138, column: 9, scope: !453)
!459 = !DILocation(line: 140, column: 24, scope: !365)
!460 = !DILocation(line: 140, column: 5, scope: !365)
!461 = !DILocation(line: 140, column: 12, scope: !365)
!462 = !DILocation(line: 140, column: 22, scope: !365)
!463 = !{!441, !427, i64 16}
!464 = !DILocation(line: 141, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !365, file: !8, line: 141, column: 9)
!466 = !DILocation(line: 141, column: 17, scope: !465)
!467 = !DILocation(line: 141, column: 9, scope: !365)
!468 = !DILocation(line: 142, column: 20, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !8, line: 141, column: 28)
!470 = !DILocation(line: 142, column: 27, scope: !469)
!471 = !DILocation(line: 142, column: 9, scope: !469)
!472 = !DILocation(line: 143, column: 28, scope: !469)
!473 = !DILocation(line: 143, column: 20, scope: !469)
!474 = !DILocation(line: 143, column: 9, scope: !469)
!475 = !DILocation(line: 144, column: 26, scope: !469)
!476 = !DILocation(line: 144, column: 16, scope: !469)
!477 = !DILocation(line: 144, column: 9, scope: !469)
!478 = !DILocation(line: 153, column: 12, scope: !365)
!479 = !DILocation(line: 153, column: 5, scope: !365)
!480 = !DILocation(line: 154, column: 1, scope: !365)
!481 = !{!482, !482, i64 0}
!482 = !{!"long", !428, i64 0}
!483 = !DILocation(line: 76, column: 18, scope: !395)
!484 = !DILocation(line: 80, column: 5, scope: !395)
!485 = !DILocation(line: 80, column: 12, scope: !395)
!486 = !DILocation(line: 80, column: 54, scope: !395)
!487 = !DILocation(line: 80, column: 52, scope: !395)
!488 = !DILocation(line: 80, column: 25, scope: !395)
!489 = !DILocation(line: 80, column: 16, scope: !395)
!490 = !DILocation(line: 81, column: 10, scope: !491)
!491 = distinct !DILexicalBlock(scope: !395, file: !8, line: 81, column: 9)
!492 = !DILocation(line: 81, column: 9, scope: !395)
!493 = !DILocation(line: 82, column: 9, scope: !491)
!494 = !DILocation(line: 83, column: 18, scope: !395)
!495 = !DILocation(line: 83, column: 5, scope: !395)
!496 = !DILocation(line: 83, column: 8, scope: !395)
!497 = !DILocation(line: 83, column: 16, scope: !395)
!498 = !{!499, !482, i64 0}
!499 = !{!"_block", !482, i64 0, !482, i64 8, !427, i64 16, !427, i64 24}
!500 = !DILocation(line: 84, column: 26, scope: !395)
!501 = !DILocation(line: 84, column: 28, scope: !395)
!502 = !DILocation(line: 84, column: 17, scope: !395)
!503 = !DILocation(line: 84, column: 5, scope: !395)
!504 = !DILocation(line: 84, column: 8, scope: !395)
!505 = !DILocation(line: 84, column: 15, scope: !395)
!506 = !{!499, !427, i64 24}
!507 = !DILocation(line: 85, column: 5, scope: !395)
!508 = !DILocation(line: 85, column: 8, scope: !395)
!509 = !DILocation(line: 85, column: 16, scope: !395)
!510 = !{!499, !427, i64 16}
!511 = !DILocation(line: 86, column: 54, scope: !395)
!512 = !DILocation(line: 86, column: 57, scope: !395)
!513 = !DILocation(line: 86, column: 39, scope: !395)
!514 = !DILocation(line: 86, column: 65, scope: !395)
!515 = !DILocation(line: 86, column: 92, scope: !395)
!516 = !DILocation(line: 86, column: 29, scope: !395)
!517 = !DILocation(line: 87, column: 22, scope: !395)
!518 = !DILocation(line: 87, column: 25, scope: !395)
!519 = !DILocation(line: 86, column: 121, scope: !395)
!520 = !DILocation(line: 86, column: 5, scope: !395)
!521 = !DILocation(line: 86, column: 8, scope: !395)
!522 = !DILocation(line: 86, column: 18, scope: !395)
!523 = !{!499, !482, i64 8}
!524 = !DILocation(line: 88, column: 12, scope: !395)
!525 = !DILocation(line: 88, column: 5, scope: !395)
!526 = !DILocation(line: 89, column: 1, scope: !395)
!527 = !DILocation(line: 92, column: 19, scope: !401)
!528 = !DILocation(line: 93, column: 5, scope: !401)
!529 = !DILocation(line: 93, column: 12, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !8, discriminator: 2)
!531 = !DILexicalBlockFile(scope: !401, file: !8, discriminator: 1)
!532 = !DILocation(line: 94, column: 9, scope: !407)
!533 = !DILocation(line: 94, column: 16, scope: !407)
!534 = !DILocation(line: 94, column: 23, scope: !407)
!535 = !DILocation(line: 94, column: 26, scope: !407)
!536 = !DILocation(line: 95, column: 20, scope: !407)
!537 = !DILocation(line: 95, column: 9, scope: !407)
!538 = !DILocation(line: 96, column: 13, scope: !407)
!539 = !DILocation(line: 96, column: 11, scope: !407)
!540 = !DILocation(line: 97, column: 5, scope: !401)
!541 = !DILocation(line: 98, column: 1, scope: !401)
!542 = !DILocation(line: 157, column: 23, scope: !370)
!543 = !DILocation(line: 169, column: 16, scope: !370)
!544 = !DILocation(line: 169, column: 23, scope: !370)
!545 = !DILocation(line: 169, column: 5, scope: !370)
!546 = !DILocation(line: 175, column: 5, scope: !370)
!547 = !DILocation(line: 175, column: 10, scope: !548)
!548 = !DILexicalBlockFile(scope: !376, file: !8, discriminator: 1)
!549 = !DILocation(line: 175, column: 20, scope: !376)
!550 = !DILocation(line: 175, column: 50, scope: !376)
!551 = !DILocation(line: 175, column: 57, scope: !376)
!552 = !DILocation(line: 175, column: 77, scope: !553)
!553 = distinct !DILexicalBlock(scope: !376, file: !8, line: 175, column: 74)
!554 = !DILocation(line: 175, column: 94, scope: !553)
!555 = !DILocation(line: 175, column: 74, scope: !553)
!556 = !{!557, !482, i64 0}
!557 = !{!"_object", !482, i64 0, !427, i64 8}
!558 = !DILocation(line: 175, column: 104, scope: !553)
!559 = !DILocation(line: 175, column: 74, scope: !376)
!560 = !DILocation(line: 175, column: 74, scope: !561)
!561 = !DILexicalBlockFile(scope: !376, file: !8, discriminator: 2)
!562 = !DILocation(line: 175, column: 135, scope: !563)
!563 = !DILexicalBlockFile(scope: !553, file: !8, discriminator: 3)
!564 = !DILocation(line: 175, column: 153, scope: !553)
!565 = !{!557, !427, i64 8}
!566 = !DILocation(line: 175, column: 163, scope: !553)
!567 = !{!568, !427, i64 48}
!568 = !{!"_typeobject", !569, i64 0, !427, i64 24, !482, i64 32, !482, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !482, i64 168, !427, i64 176, !427, i64 184, !427, i64 192, !427, i64 200, !482, i64 208, !427, i64 216, !427, i64 224, !427, i64 232, !427, i64 240, !427, i64 248, !427, i64 256, !427, i64 264, !427, i64 272, !427, i64 280, !482, i64 288, !427, i64 296, !427, i64 304, !427, i64 312, !427, i64 320, !427, i64 328, !427, i64 336, !427, i64 344, !427, i64 352, !427, i64 360, !427, i64 368, !427, i64 376, !570, i64 384, !427, i64 392}
!569 = !{!"", !557, i64 0, !482, i64 16}
!570 = !{!"int", !428, i64 0}
!571 = !DILocation(line: 175, column: 188, scope: !553)
!572 = !DILocation(line: 175, column: 119, scope: !553)
!573 = !DILocation(line: 175, column: 207, scope: !574)
!574 = !DILexicalBlockFile(scope: !370, file: !8, discriminator: 4)
!575 = !DILocation(line: 175, column: 207, scope: !376)
!576 = !DILocation(line: 176, column: 16, scope: !370)
!577 = !DILocation(line: 176, column: 5, scope: !370)
!578 = !DILocation(line: 177, column: 1, scope: !370)
!579 = !DILocation(line: 180, column: 25, scope: !377)
!580 = !DILocation(line: 180, column: 39, scope: !377)
!581 = !DILocation(line: 182, column: 5, scope: !377)
!582 = !DILocation(line: 182, column: 11, scope: !377)
!583 = !DILocation(line: 182, column: 27, scope: !377)
!584 = !DILocation(line: 182, column: 34, scope: !377)
!585 = !DILocation(line: 182, column: 41, scope: !377)
!586 = !DILocation(line: 182, column: 15, scope: !377)
!587 = !DILocation(line: 183, column: 10, scope: !588)
!588 = distinct !DILexicalBlock(scope: !377, file: !8, line: 183, column: 9)
!589 = !DILocation(line: 183, column: 9, scope: !377)
!590 = !DILocation(line: 184, column: 16, scope: !588)
!591 = !DILocation(line: 184, column: 9, scope: !588)
!592 = !DILocation(line: 190, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !377, file: !8, line: 190, column: 9)
!594 = !DILocation(line: 190, column: 16, scope: !593)
!595 = !DILocation(line: 190, column: 23, scope: !593)
!596 = !DILocation(line: 190, column: 9, scope: !377)
!597 = !DILocation(line: 191, column: 24, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !8, line: 190, column: 32)
!599 = !DILocation(line: 191, column: 31, scope: !598)
!600 = !DILocation(line: 191, column: 38, scope: !598)
!601 = !DILocation(line: 191, column: 9, scope: !598)
!602 = !DILocation(line: 191, column: 16, scope: !598)
!603 = !DILocation(line: 191, column: 22, scope: !598)
!604 = !DILocation(line: 198, column: 5, scope: !598)
!605 = !DILocation(line: 199, column: 12, scope: !377)
!606 = !DILocation(line: 199, column: 5, scope: !377)
!607 = !DILocation(line: 200, column: 1, scope: !377)
!608 = !DILocation(line: 101, column: 20, scope: !408)
!609 = !DILocation(line: 101, column: 30, scope: !408)
!610 = !DILocation(line: 103, column: 5, scope: !408)
!611 = !DILocation(line: 103, column: 11, scope: !408)
!612 = !DILocation(line: 105, column: 23, scope: !408)
!613 = !DILocation(line: 105, column: 29, scope: !408)
!614 = !DILocation(line: 105, column: 50, scope: !408)
!615 = !DILocation(line: 105, column: 10, scope: !408)
!616 = !DILocation(line: 106, column: 9, scope: !417)
!617 = !DILocation(line: 106, column: 12, scope: !417)
!618 = !DILocation(line: 106, column: 24, scope: !417)
!619 = !DILocation(line: 106, column: 22, scope: !417)
!620 = !DILocation(line: 106, column: 31, scope: !417)
!621 = !DILocation(line: 106, column: 34, scope: !417)
!622 = !DILocation(line: 106, column: 29, scope: !417)
!623 = !DILocation(line: 106, column: 9, scope: !408)
!624 = !DILocation(line: 111, column: 9, scope: !416)
!625 = !DILocation(line: 111, column: 16, scope: !416)
!626 = !DILocation(line: 112, column: 25, scope: !416)
!627 = !DILocation(line: 112, column: 30, scope: !416)
!628 = !DILocation(line: 112, column: 25, scope: !629)
!629 = !DILexicalBlockFile(scope: !416, file: !8, discriminator: 1)
!630 = !DILocation(line: 113, column: 32, scope: !416)
!631 = !DILocation(line: 111, column: 24, scope: !416)
!632 = !DILocation(line: 114, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !416, file: !8, line: 114, column: 13)
!634 = !DILocation(line: 114, column: 13, scope: !416)
!635 = !DILocation(line: 115, column: 13, scope: !633)
!636 = !DILocation(line: 117, column: 22, scope: !416)
!637 = !DILocation(line: 117, column: 9, scope: !416)
!638 = !DILocation(line: 117, column: 12, scope: !416)
!639 = !DILocation(line: 117, column: 20, scope: !416)
!640 = !DILocation(line: 118, column: 13, scope: !416)
!641 = !DILocation(line: 118, column: 11, scope: !416)
!642 = !DILocation(line: 119, column: 5, scope: !417)
!643 = !DILocation(line: 119, column: 5, scope: !644)
!644 = !DILexicalBlockFile(scope: !417, file: !8, discriminator: 1)
!645 = !DILocation(line: 119, column: 5, scope: !416)
!646 = !DILocation(line: 122, column: 27, scope: !408)
!647 = !DILocation(line: 122, column: 30, scope: !408)
!648 = !DILocation(line: 122, column: 40, scope: !408)
!649 = !DILocation(line: 122, column: 43, scope: !408)
!650 = !DILocation(line: 122, column: 38, scope: !408)
!651 = !DILocation(line: 122, column: 7, scope: !408)
!652 = !DILocation(line: 123, column: 21, scope: !408)
!653 = !DILocation(line: 123, column: 5, scope: !408)
!654 = !DILocation(line: 123, column: 8, scope: !408)
!655 = !DILocation(line: 123, column: 18, scope: !408)
!656 = !DILocation(line: 124, column: 12, scope: !408)
!657 = !DILocation(line: 124, column: 5, scope: !408)
!658 = !DILocation(line: 125, column: 1, scope: !408)
!659 = !DILocation(line: 203, column: 30, scope: !384)
!660 = !DILocation(line: 203, column: 47, scope: !384)
!661 = !DILocation(line: 205, column: 5, scope: !384)
!662 = !DILocation(line: 205, column: 9, scope: !384)
!663 = !DILocation(line: 205, column: 27, scope: !384)
!664 = !DILocation(line: 205, column: 34, scope: !384)
!665 = !DILocation(line: 205, column: 45, scope: !384)
!666 = !DILocation(line: 205, column: 13, scope: !384)
!667 = !{!570, !570, i64 0}
!668 = !DILocation(line: 206, column: 9, scope: !394)
!669 = !DILocation(line: 206, column: 11, scope: !394)
!670 = !DILocation(line: 206, column: 9, scope: !384)
!671 = !DILocation(line: 207, column: 9, scope: !393)
!672 = !DILocation(line: 207, column: 14, scope: !673)
!673 = !DILexicalBlockFile(scope: !392, file: !8, discriminator: 1)
!674 = !DILocation(line: 207, column: 24, scope: !392)
!675 = !DILocation(line: 207, column: 54, scope: !392)
!676 = !DILocation(line: 207, column: 68, scope: !677)
!677 = distinct !DILexicalBlock(scope: !392, file: !8, line: 207, column: 65)
!678 = !DILocation(line: 207, column: 85, scope: !677)
!679 = !DILocation(line: 207, column: 65, scope: !677)
!680 = !DILocation(line: 207, column: 95, scope: !677)
!681 = !DILocation(line: 207, column: 65, scope: !392)
!682 = !DILocation(line: 207, column: 65, scope: !683)
!683 = !DILexicalBlockFile(scope: !392, file: !8, discriminator: 2)
!684 = !DILocation(line: 207, column: 126, scope: !685)
!685 = !DILexicalBlockFile(scope: !677, file: !8, discriminator: 3)
!686 = !DILocation(line: 207, column: 144, scope: !677)
!687 = !DILocation(line: 207, column: 154, scope: !677)
!688 = !DILocation(line: 207, column: 179, scope: !677)
!689 = !DILocation(line: 207, column: 110, scope: !677)
!690 = !DILocation(line: 207, column: 198, scope: !691)
!691 = !DILexicalBlockFile(scope: !393, file: !8, discriminator: 4)
!692 = !DILocation(line: 207, column: 198, scope: !392)
!693 = !DILocation(line: 207, column: 198, scope: !694)
!694 = !DILexicalBlockFile(scope: !392, file: !8, discriminator: 5)
!695 = !DILocation(line: 208, column: 5, scope: !393)
!696 = !DILocation(line: 209, column: 12, scope: !384)
!697 = !DILocation(line: 210, column: 1, scope: !384)
!698 = !DILocation(line: 209, column: 5, scope: !384)
