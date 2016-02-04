; ModuleID = 'pyarena.o.bc'
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
  %call = tail call i8* @PyMem_Malloc(i64 24) #3, !dbg !420
  %0 = bitcast i8* %call to %struct._arena*, !dbg !421
  tail call void @llvm.dbg.value(metadata %struct._arena* %0, i64 0, metadata !368, metadata !422), !dbg !423
  %tobool = icmp eq i8* %call, null, !dbg !424
  br i1 %tobool, label %if.then, label %if.end, !dbg !426

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !427
  %1 = bitcast %struct._object* %call1 to %struct._arena*, !dbg !428
  br label %cleanup, !dbg !429

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !398, metadata !422) #3, !dbg !430
  %call.i = tail call i8* @PyMem_Malloc(i64 8224) #3, !dbg !432
  %tobool.i = icmp eq i8* %call.i, null, !dbg !433
  br i1 %tobool.i, label %block_new.exit.thread, label %block_new.exit, !dbg !435

block_new.exit.thread:                            ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false), !dbg !436
  tail call void @PyMem_Free(i8* %call) #3, !dbg !437
  %call7 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !440
  %2 = bitcast %struct._object* %call7 to %struct._arena*, !dbg !441
  br label %cleanup, !dbg !442

block_new.exit:                                   ; preds = %if.end
  %ab_size.i = bitcast i8* %call.i to i64*, !dbg !443
  store i64 8192, i64* %ab_size.i, align 8, !dbg !444, !tbaa !445
  %add.ptr.i = getelementptr i8, i8* %call.i, i64 32, !dbg !451
  %ab_mem.i = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !452
  %3 = bitcast i8* %ab_mem.i to i8**, !dbg !452
  store i8* %add.ptr.i, i8** %3, align 8, !dbg !453, !tbaa !454
  %ab_next.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !455
  %4 = bitcast i8* %ab_next.i to %struct._block**, !dbg !455
  store %struct._block* null, %struct._block** %4, align 8, !dbg !456, !tbaa !457
  %.cast.i = ptrtoint i8* %add.ptr.i to i64, !dbg !458
  %add2.i = add i64 %.cast.i, 7, !dbg !458
  %and.i = and i64 %add2.i, -8, !dbg !458
  %sub.ptr.sub.i = sub i64 %and.i, %.cast.i, !dbg !459
  %ab_offset.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !460
  %5 = bitcast i8* %ab_offset.i to i64*, !dbg !460
  store i64 %sub.ptr.sub.i, i64* %5, align 8, !dbg !461, !tbaa !462
  %6 = bitcast i8* %call to i8**, !dbg !463
  store i8* %call.i, i8** %6, align 8, !dbg !463, !tbaa !464
  %a_cur = getelementptr inbounds i8, i8* %call, i64 8, !dbg !466
  %7 = bitcast i8* %a_cur to i8**, !dbg !436
  store i8* %call.i, i8** %7, align 8, !dbg !436, !tbaa !467
  %call9 = tail call %struct._object* @PyList_New(i64 0) #3, !dbg !468
  %a_objects = getelementptr inbounds i8, i8* %call, i64 16, !dbg !469
  %8 = bitcast i8* %a_objects to %struct._object**, !dbg !469
  store %struct._object* %call9, %struct._object** %8, align 8, !dbg !470, !tbaa !471
  %tobool11 = icmp eq %struct._object* %call9, null, !dbg !472
  br i1 %tobool11, label %if.then.12, label %cleanup, !dbg !474

if.then.12:                                       ; preds = %block_new.exit
  %a_head = bitcast i8* %call to %struct._block**, !dbg !475
  %9 = load %struct._block*, %struct._block** %a_head, align 8, !dbg !476, !tbaa !464
  tail call void @llvm.dbg.value(metadata %struct._block* %9, i64 0, metadata !404, metadata !422) #3, !dbg !478
  %tobool.4.i = icmp eq %struct._block* %9, null, !dbg !480
  br i1 %tobool.4.i, label %block_free.exit, label %while.body.i.preheader, !dbg !480

while.body.i.preheader:                           ; preds = %if.then.12
  br label %while.body.i, !dbg !481

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %b.addr.05.i = phi %struct._block* [ %10, %while.body.i ], [ %9, %while.body.i.preheader ], !dbg !482
  %ab_next.i.26 = getelementptr inbounds %struct._block, %struct._block* %b.addr.05.i, i64 0, i32 2, !dbg !481
  %10 = load %struct._block*, %struct._block** %ab_next.i.26, align 8, !dbg !481, !tbaa !457
  tail call void @llvm.dbg.value(metadata %struct._block* %10, i64 0, metadata !405, metadata !422) #3, !dbg !483
  %11 = bitcast %struct._block* %b.addr.05.i to i8*, !dbg !484
  tail call void @PyMem_Free(i8* %11) #3, !dbg !485
  tail call void @llvm.dbg.value(metadata %struct._block* %10, i64 0, metadata !404, metadata !422) #3, !dbg !478
  %tobool.i.27 = icmp eq %struct._block* %10, null, !dbg !480
  br i1 %tobool.i.27, label %block_free.exit.loopexit, label %while.body.i, !dbg !480

block_free.exit.loopexit:                         ; preds = %while.body.i
  br label %block_free.exit, !dbg !486

block_free.exit:                                  ; preds = %block_free.exit.loopexit, %if.then.12
  tail call void @PyMem_Free(i8* %call) #3, !dbg !486
  %call14 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !487
  %12 = bitcast %struct._object* %call14 to %struct._arena*, !dbg !488
  br label %cleanup, !dbg !489

cleanup:                                          ; preds = %block_new.exit, %block_free.exit, %block_new.exit.thread, %if.then
  %retval.0 = phi %struct._arena* [ %12, %block_free.exit ], [ %2, %block_new.exit.thread ], [ %1, %if.then ], [ %0, %block_new.exit ]
  ret %struct._arena* %retval.0, !dbg !490
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define void @PyArena_Free(%struct._arena* %arena) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._arena* %arena, i64 0, metadata !373, metadata !422), !dbg !491
  %a_head = getelementptr inbounds %struct._arena, %struct._arena* %arena, i64 0, i32 0, !dbg !492
  %0 = load %struct._block*, %struct._block** %a_head, align 8, !dbg !492, !tbaa !464
  tail call void @llvm.dbg.value(metadata %struct._block* %0, i64 0, metadata !404, metadata !422) #3, !dbg !493
  %tobool.4.i = icmp eq %struct._block* %0, null, !dbg !495
  br i1 %tobool.4.i, label %block_free.exit, label %while.body.i.preheader, !dbg !495

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i, !dbg !496

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %b.addr.05.i = phi %struct._block* [ %1, %while.body.i ], [ %0, %while.body.i.preheader ], !dbg !497
  %ab_next.i = getelementptr inbounds %struct._block, %struct._block* %b.addr.05.i, i64 0, i32 2, !dbg !496
  %1 = load %struct._block*, %struct._block** %ab_next.i, align 8, !dbg !496, !tbaa !457
  tail call void @llvm.dbg.value(metadata %struct._block* %1, i64 0, metadata !405, metadata !422) #3, !dbg !498
  %2 = bitcast %struct._block* %b.addr.05.i to i8*, !dbg !499
  tail call void @PyMem_Free(i8* %2) #3, !dbg !500
  tail call void @llvm.dbg.value(metadata %struct._block* %1, i64 0, metadata !404, metadata !422) #3, !dbg !493
  %tobool.i = icmp eq %struct._block* %1, null, !dbg !495
  br i1 %tobool.i, label %block_free.exit.loopexit, label %while.body.i, !dbg !495

block_free.exit.loopexit:                         ; preds = %while.body.i
  br label %block_free.exit, !dbg !501

block_free.exit:                                  ; preds = %block_free.exit.loopexit, %entry
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %arena, i64 0, i32 2, !dbg !501
  %3 = load %struct._object*, %struct._object** %a_objects, align 8, !dbg !501, !tbaa !471
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !374, metadata !422), !dbg !501
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !503
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !503, !tbaa !505
  %dec = add i64 %4, -1, !dbg !503
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !503, !tbaa !505
  %cmp = icmp eq i64 %dec, 0, !dbg !503
  br i1 %cmp, label %if.else, label %if.end, !dbg !507

if.else:                                          ; preds = %block_free.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !508
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !508, !tbaa !510
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !508
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !508, !tbaa !511
  tail call void %6(%struct._object* %3) #3, !dbg !508
  br label %if.end

if.end:                                           ; preds = %block_free.exit, %if.else
  %7 = bitcast %struct._arena* %arena to i8*, !dbg !515
  tail call void @PyMem_Free(i8* %7) #3, !dbg !516
  ret void, !dbg !517
}

; Function Attrs: nounwind uwtable
define i8* @PyArena_Malloc(%struct._arena* nocapture %arena, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._arena* %arena, i64 0, metadata !380, metadata !422), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !381, metadata !422), !dbg !519
  %a_cur = getelementptr inbounds %struct._arena, %struct._arena* %arena, i64 0, i32 1, !dbg !520
  %0 = load %struct._block*, %struct._block** %a_cur, align 8, !dbg !520, !tbaa !467
  tail call void @llvm.dbg.value(metadata %struct._block* %0, i64 0, metadata !411, metadata !422) #3, !dbg !521
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !412, metadata !422) #3, !dbg !523
  %add.i = add i64 %size, 7, !dbg !524
  %and.i = and i64 %add.i, -8, !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !412, metadata !422) #3, !dbg !523
  %ab_offset.i = getelementptr inbounds %struct._block, %struct._block* %0, i64 0, i32 1, !dbg !525
  %1 = load i64, i64* %ab_offset.i, align 8, !dbg !525, !tbaa !462
  %add1.i = add i64 %1, %and.i, !dbg !526
  %ab_size.i = getelementptr inbounds %struct._block, %struct._block* %0, i64 0, i32 0, !dbg !527
  %2 = load i64, i64* %ab_size.i, align 8, !dbg !527, !tbaa !445
  %cmp.i = icmp ugt i64 %add1.i, %2, !dbg !528
  br i1 %cmp.i, label %if.then.i, label %block_alloc.exit, !dbg !529

if.then.i:                                        ; preds = %entry
  %cmp2.i = icmp ult i64 %and.i, 8192, !dbg !530
  %cond.i = select i1 %cmp2.i, i64 8192, i64 %and.i, !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %cond.i, i64 0, metadata !398, metadata !422) #3, !dbg !532
  %add.i.i = add i64 %cond.i, 32, !dbg !534
  %call.i.i = tail call i8* @PyMem_Malloc(i64 %add.i.i) #3, !dbg !535
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !536
  br i1 %tobool.i.i, label %if.then, label %block_new.exit.i, !dbg !537

block_new.exit.i:                                 ; preds = %if.then.i
  %ab_size.i.i = bitcast i8* %call.i.i to i64*, !dbg !538
  store i64 %cond.i, i64* %ab_size.i.i, align 8, !dbg !539, !tbaa !445
  %add.ptr.i.i = getelementptr i8, i8* %call.i.i, i64 32, !dbg !540
  %ab_mem.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 24, !dbg !541
  %3 = bitcast i8* %ab_mem.i.i to i8**, !dbg !541
  store i8* %add.ptr.i.i, i8** %3, align 8, !dbg !542, !tbaa !454
  %ab_next.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 16, !dbg !543
  %4 = bitcast i8* %ab_next.i.i to %struct._block**, !dbg !543
  store %struct._block* null, %struct._block** %4, align 8, !dbg !544, !tbaa !457
  %.cast.i.i = ptrtoint i8* %add.ptr.i.i to i64, !dbg !545
  %add2.i.i = add i64 %.cast.i.i, 7, !dbg !545
  %and.i.i = and i64 %add2.i.i, -8, !dbg !545
  %sub.ptr.sub.i.i = sub i64 %and.i.i, %.cast.i.i, !dbg !546
  %ab_offset.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 8, !dbg !547
  %5 = bitcast i8* %ab_offset.i.i to i64*, !dbg !547
  store i64 %sub.ptr.sub.i.i, i64* %5, align 8, !dbg !548, !tbaa !462
  %6 = bitcast i8* %call.i.i to %struct._block*, !dbg !549
  %ab_next.i = getelementptr inbounds %struct._block, %struct._block* %0, i64 0, i32 2, !dbg !550
  %7 = bitcast %struct._block** %ab_next.i to i8**, !dbg !551
  store i8* %call.i.i, i8** %7, align 8, !dbg !551, !tbaa !457
  br label %block_alloc.exit, !dbg !552

block_alloc.exit:                                 ; preds = %entry, %block_new.exit.i
  %8 = phi i64 [ %sub.ptr.sub.i.i, %block_new.exit.i ], [ %1, %entry ], !dbg !553
  %b.addr.1.i = phi %struct._block* [ %6, %block_new.exit.i ], [ %0, %entry ], !dbg !552
  %ab_mem.i = getelementptr inbounds %struct._block, %struct._block* %b.addr.1.i, i64 0, i32 3, !dbg !554
  %9 = load i8*, i8** %ab_mem.i, align 8, !dbg !554, !tbaa !454
  %ab_offset5.i = getelementptr inbounds %struct._block, %struct._block* %b.addr.1.i, i64 0, i32 1, !dbg !553
  %add.ptr.i = getelementptr i8, i8* %9, i64 %8, !dbg !555
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !413, metadata !422) #3, !dbg !556
  %add7.i = add i64 %8, %and.i, !dbg !557
  store i64 %add7.i, i64* %ab_offset5.i, align 8, !dbg !557, !tbaa !462
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !382, metadata !422), !dbg !558
  %tobool = icmp eq i8* %add.ptr.i, null, !dbg !559
  br i1 %tobool, label %if.then, label %if.end, !dbg !561

if.then:                                          ; preds = %if.then.i, %block_alloc.exit
  %call1 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !562
  %10 = bitcast %struct._object* %call1 to i8*, !dbg !562
  br label %cleanup, !dbg !563

if.end:                                           ; preds = %block_alloc.exit
  %11 = load %struct._block*, %struct._block** %a_cur, align 8, !dbg !564, !tbaa !467
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %11, i64 0, i32 2, !dbg !566
  %12 = load %struct._block*, %struct._block** %ab_next, align 8, !dbg !566, !tbaa !457
  %tobool3 = icmp eq %struct._block* %12, null, !dbg !567
  br i1 %tobool3, label %cleanup, label %if.then.4, !dbg !568

if.then.4:                                        ; preds = %if.end
  store %struct._block* %12, %struct._block** %a_cur, align 8, !dbg !569, !tbaa !467
  br label %cleanup, !dbg !571

cleanup:                                          ; preds = %if.then.4, %if.end, %if.then
  %retval.0 = phi i8* [ %10, %if.then ], [ %add.ptr.i, %if.end ], [ %add.ptr.i, %if.then.4 ]
  ret i8* %retval.0, !dbg !572
}

; Function Attrs: nounwind uwtable
define i32 @PyArena_AddPyObject(%struct._arena* nocapture readonly %arena, %struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._arena* %arena, i64 0, metadata !387, metadata !422), !dbg !573
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !388, metadata !422), !dbg !574
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %arena, i64 0, i32 2, !dbg !575
  %0 = load %struct._object*, %struct._object** %a_objects, align 8, !dbg !575, !tbaa !471
  %call = tail call i32 @PyList_Append(%struct._object* %0, %struct._object* %obj) #3, !dbg !576
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !389, metadata !422), !dbg !577
  %cmp = icmp sgt i32 %call, -1, !dbg !578
  br i1 %cmp, label %do.body, label %if.end.3, !dbg !579

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !390, metadata !422), !dbg !580
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 0, !dbg !582
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !582, !tbaa !505
  %dec = add i64 %1, -1, !dbg !582
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !582, !tbaa !505
  %cmp1 = icmp eq i64 %dec, 0, !dbg !582
  br i1 %cmp1, label %if.else, label %if.end.3, !dbg !584

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !585
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !585, !tbaa !510
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !585
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !585, !tbaa !511
  tail call void %3(%struct._object* %obj) #3, !dbg !585
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %do.body, %entry
  ret i32 %call, !dbg !587
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!417, !418}
!llvm.ident = !{!419}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !363)
!1 = !DIFile(filename: "Python/pyarena.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !22, !25, !10, !72, !360, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArena", file: !6, line: 12, baseType: !7)
!6 = !DIFile(filename: "Include/pyarena.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arena", file: !1, line: 45, size: 192, align: 64, elements: !8)
!8 = !{!9, !23, !24}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "a_head", scope: !7, file: !1, line: 50, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "block", file: !1, line: 38, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_block", file: !1, line: 16, size: 256, align: 64, elements: !13)
!13 = !{!14, !18, !19, !21}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ab_size", scope: !12, file: !1, line: 21, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 62, baseType: !17)
!16 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ab_offset", scope: !12, file: !1, line: 26, baseType: !15, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ab_next", scope: !12, file: !1, line: 32, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ab_mem", scope: !12, file: !1, line: 37, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "a_cur", scope: !7, file: !1, line: 57, baseType: !10, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "a_objects", scope: !7, file: !1, line: 63, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !27, line: 109, baseType: !28)
!27 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !27, line: 105, size: 128, align: 64, elements: !29)
!29 = !{!30, !38}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !28, file: !27, line: 107, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !32, line: 177, baseType: !33)
!32 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 102, baseType: !35)
!34 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !36, line: 181, baseType: !37)
!36 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!37 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !28, file: !27, line: 108, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !27, line: 334, size: 3200, align: 64, elements: !41)
!41 = !{!42, !48, !52, !53, !54, !59, !119, !124, !129, !130, !135, !187, !218, !230, !236, !237, !238, !240, !242, !273, !274, !275, !284, !285, !290, !291, !293, !295, !305, !308, !326, !327, !328, !330, !332, !333, !335, !340, !345, !350, !351, !352, !353, !354, !355, !356, !357, !359}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !40, file: !27, line: 335, baseType: !43, size: 192, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !27, line: 114, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 111, size: 192, align: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !44, file: !27, line: 112, baseType: !26, size: 128, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !44, file: !27, line: 113, baseType: !31, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !40, file: !27, line: 336, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !40, file: !27, line: 337, baseType: !31, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !40, file: !27, line: 337, baseType: !31, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !40, file: !27, line: 341, baseType: !55, size: 64, align: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !27, line: 308, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !25}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !40, file: !27, line: 342, baseType: !60, size: 64, align: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !27, line: 314, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !25, !65, !64}
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !34, line: 48, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !68, line: 246, size: 1728, align: 64, elements: !69)
!68 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!69 = !{!70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !91, !92, !93, !94, !96, !98, !100, !104, !107, !109, !110, !111, !112, !113, !114, !115}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !67, file: !68, line: 247, baseType: !64, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !67, file: !68, line: 252, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !67, file: !68, line: 253, baseType: !72, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !67, file: !68, line: 254, baseType: !72, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !67, file: !68, line: 255, baseType: !72, size: 64, align: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !67, file: !68, line: 256, baseType: !72, size: 64, align: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !67, file: !68, line: 257, baseType: !72, size: 64, align: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !67, file: !68, line: 258, baseType: !72, size: 64, align: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !67, file: !68, line: 259, baseType: !72, size: 64, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !67, file: !68, line: 261, baseType: !72, size: 64, align: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !67, file: !68, line: 262, baseType: !72, size: 64, align: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !67, file: !68, line: 263, baseType: !72, size: 64, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !67, file: !68, line: 265, baseType: !84, size: 64, align: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !68, line: 161, size: 192, align: 64, elements: !86)
!86 = !{!87, !88, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !85, file: !68, line: 162, baseType: !84, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !85, file: !68, line: 163, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !85, file: !68, line: 167, baseType: !64, size: 32, align: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !67, file: !68, line: 267, baseType: !89, size: 64, align: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !67, file: !68, line: 269, baseType: !64, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !67, file: !68, line: 273, baseType: !64, size: 32, align: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !67, file: !68, line: 275, baseType: !95, size: 64, align: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 140, baseType: !37)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !67, file: !68, line: 279, baseType: !97, size: 16, align: 16, offset: 1024)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !67, file: !68, line: 280, baseType: !99, size: 8, align: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !67, file: !68, line: 281, baseType: !101, size: 8, align: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !67, file: !68, line: 285, baseType: !105, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !68, line: 155, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !67, file: !68, line: 294, baseType: !108, size: 64, align: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 141, baseType: !37)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !67, file: !68, line: 303, baseType: !22, size: 64, align: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !67, file: !68, line: 304, baseType: !22, size: 64, align: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !67, file: !68, line: 305, baseType: !22, size: 64, align: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !67, file: !68, line: 306, baseType: !22, size: 64, align: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !67, file: !68, line: 307, baseType: !15, size: 64, align: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !67, file: !68, line: 309, baseType: !64, size: 32, align: 32, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !67, file: !68, line: 311, baseType: !116, size: 160, align: 8, offset: 1568)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 20)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !40, file: !27, line: 343, baseType: !120, size: 64, align: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !27, line: 316, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!25, !25, !72}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !40, file: !27, line: 344, baseType: !125, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !27, line: 318, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!64, !25, !72, !25}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !40, file: !27, line: 345, baseType: !22, size: 64, align: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !40, file: !27, line: 346, baseType: !131, size: 64, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !27, line: 320, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!25, !25}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !40, file: !27, line: 350, baseType: !136, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !27, line: 278, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 236, size: 2176, align: 64, elements: !139)
!139 = !{!140, !145, !146, !147, !148, !149, !154, !156, !157, !158, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !138, file: !27, line: 241, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !27, line: 166, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!25, !25, !25}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !138, file: !27, line: 242, baseType: !141, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !138, file: !27, line: 243, baseType: !141, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !138, file: !27, line: 244, baseType: !141, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !138, file: !27, line: 245, baseType: !141, size: 64, align: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !138, file: !27, line: 246, baseType: !150, size: 64, align: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !27, line: 167, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!25, !25, !25, !25}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !138, file: !27, line: 247, baseType: !155, size: 64, align: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !27, line: 165, baseType: !132)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !138, file: !27, line: 248, baseType: !155, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !138, file: !27, line: 249, baseType: !155, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !138, file: !27, line: 250, baseType: !159, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !27, line: 168, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!64, !25}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !138, file: !27, line: 251, baseType: !155, size: 64, align: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !138, file: !27, line: 252, baseType: !141, size: 64, align: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !138, file: !27, line: 253, baseType: !141, size: 64, align: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !138, file: !27, line: 254, baseType: !141, size: 64, align: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !138, file: !27, line: 255, baseType: !141, size: 64, align: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !138, file: !27, line: 256, baseType: !141, size: 64, align: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !138, file: !27, line: 257, baseType: !155, size: 64, align: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !138, file: !27, line: 258, baseType: !22, size: 64, align: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !138, file: !27, line: 259, baseType: !155, size: 64, align: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !138, file: !27, line: 261, baseType: !141, size: 64, align: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !138, file: !27, line: 262, baseType: !141, size: 64, align: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !138, file: !27, line: 263, baseType: !141, size: 64, align: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !138, file: !27, line: 264, baseType: !141, size: 64, align: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !138, file: !27, line: 265, baseType: !150, size: 64, align: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !138, file: !27, line: 266, baseType: !141, size: 64, align: 64, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !138, file: !27, line: 267, baseType: !141, size: 64, align: 64, offset: 1600)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !138, file: !27, line: 268, baseType: !141, size: 64, align: 64, offset: 1664)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !138, file: !27, line: 269, baseType: !141, size: 64, align: 64, offset: 1728)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !138, file: !27, line: 270, baseType: !141, size: 64, align: 64, offset: 1792)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !138, file: !27, line: 272, baseType: !141, size: 64, align: 64, offset: 1856)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !138, file: !27, line: 273, baseType: !141, size: 64, align: 64, offset: 1920)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !138, file: !27, line: 274, baseType: !141, size: 64, align: 64, offset: 1984)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !138, file: !27, line: 275, baseType: !141, size: 64, align: 64, offset: 2048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !138, file: !27, line: 277, baseType: !155, size: 64, align: 64, offset: 2112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !40, file: !27, line: 351, baseType: !188, size: 64, align: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !27, line: 292, baseType: !190)
!190 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 280, size: 640, align: 64, elements: !191)
!191 = !{!192, !197, !198, !203, !204, !205, !210, !211, !216, !217}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !190, file: !27, line: 281, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !27, line: 169, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!31, !25}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !190, file: !27, line: 282, baseType: !141, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !190, file: !27, line: 283, baseType: !199, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !27, line: 170, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!25, !25, !31}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !190, file: !27, line: 284, baseType: !199, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !190, file: !27, line: 285, baseType: !22, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !190, file: !27, line: 286, baseType: !206, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !27, line: 172, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!64, !25, !31, !25}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !190, file: !27, line: 287, baseType: !22, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !190, file: !27, line: 288, baseType: !212, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !27, line: 231, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!64, !25, !25}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !190, file: !27, line: 290, baseType: !141, size: 64, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !190, file: !27, line: 291, baseType: !199, size: 64, align: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !40, file: !27, line: 352, baseType: !219, size: 64, align: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !27, line: 298, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 294, size: 192, align: 64, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !221, file: !27, line: 295, baseType: !193, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !221, file: !27, line: 296, baseType: !141, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !221, file: !27, line: 297, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !27, line: 174, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!64, !25, !25, !25}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !40, file: !27, line: 356, baseType: !231, size: 64, align: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !27, line: 321, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !25}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !32, line: 186, baseType: !31)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !40, file: !27, line: 357, baseType: !150, size: 64, align: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !40, file: !27, line: 358, baseType: !131, size: 64, align: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !40, file: !27, line: 359, baseType: !239, size: 64, align: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !27, line: 317, baseType: !142)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !40, file: !27, line: 360, baseType: !241, size: 64, align: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !27, line: 319, baseType: !227)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !40, file: !27, line: 363, baseType: !243, size: 64, align: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !27, line: 304, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 301, size: 128, align: 64, elements: !246)
!246 = !{!247, !268}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !245, file: !27, line: 302, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !27, line: 193, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!64, !25, !252, !64}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !27, line: 191, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !27, line: 178, size: 640, align: 64, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !254, file: !27, line: 179, baseType: !22, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !254, file: !27, line: 180, baseType: !25, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !27, line: 181, baseType: !31, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !254, file: !27, line: 182, baseType: !31, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !254, file: !27, line: 184, baseType: !64, size: 32, align: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !254, file: !27, line: 185, baseType: !64, size: 32, align: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !254, file: !27, line: 186, baseType: !72, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !254, file: !27, line: 187, baseType: !264, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !254, file: !27, line: 188, baseType: !264, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !254, file: !27, line: 189, baseType: !264, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !254, file: !27, line: 190, baseType: !22, size: 64, align: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !245, file: !27, line: 303, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !27, line: 194, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !25, !252}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !40, file: !27, line: 366, baseType: !17, size: 64, align: 64, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !40, file: !27, line: 368, baseType: !49, size: 64, align: 64, offset: 1408)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !40, file: !27, line: 372, baseType: !276, size: 64, align: 64, offset: 1472)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !27, line: 233, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!64, !25, !280, !22}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !27, line: 232, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!64, !25, !22}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !40, file: !27, line: 375, baseType: !159, size: 64, align: 64, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !40, file: !27, line: 379, baseType: !286, size: 64, align: 64, offset: 1600)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !27, line: 322, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!25, !25, !25, !64}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !40, file: !27, line: 382, baseType: !31, size: 64, align: 64, offset: 1664)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !40, file: !27, line: 385, baseType: !292, size: 64, align: 64, offset: 1728)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !27, line: 323, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !40, file: !27, line: 386, baseType: !294, size: 64, align: 64, offset: 1792)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !27, line: 324, baseType: !132)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !40, file: !27, line: 389, baseType: !296, size: 64, align: 64, offset: 1856)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !298, line: 40, size: 256, align: 64, elements: !299)
!298 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!299 = !{!300, !301, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !297, file: !298, line: 41, baseType: !49, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !297, file: !298, line: 42, baseType: !302, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !298, line: 18, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !297, file: !298, line: 43, baseType: !64, size: 32, align: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !297, file: !298, line: 45, baseType: !49, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !40, file: !27, line: 390, baseType: !306, size: 64, align: 64, offset: 1920)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !27, line: 390, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !40, file: !27, line: 391, baseType: !309, size: 64, align: 64, offset: 1984)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !311, line: 11, size: 320, align: 64, elements: !312)
!311 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!312 = !{!313, !314, !319, !324, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 12, baseType: !72, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !310, file: !311, line: 13, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !311, line: 8, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!25, !25, !22}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !310, file: !311, line: 14, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !311, line: 9, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!64, !25, !25, !22}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !310, file: !311, line: 15, baseType: !72, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !310, file: !311, line: 16, baseType: !22, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !40, file: !27, line: 392, baseType: !39, size: 64, align: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !40, file: !27, line: 393, baseType: !25, size: 64, align: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !40, file: !27, line: 394, baseType: !329, size: 64, align: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !27, line: 325, baseType: !151)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !40, file: !27, line: 395, baseType: !331, size: 64, align: 64, offset: 2240)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !27, line: 326, baseType: !227)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !40, file: !27, line: 396, baseType: !31, size: 64, align: 64, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !40, file: !27, line: 397, baseType: !334, size: 64, align: 64, offset: 2368)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !27, line: 327, baseType: !227)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !40, file: !27, line: 398, baseType: !336, size: 64, align: 64, offset: 2432)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !27, line: 329, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!25, !39, !31}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !40, file: !27, line: 399, baseType: !341, size: 64, align: 64, offset: 2496)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !27, line: 328, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!25, !39, !25, !25}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !40, file: !27, line: 400, baseType: !346, size: 64, align: 64, offset: 2560)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !27, line: 307, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !22}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !40, file: !27, line: 401, baseType: !159, size: 64, align: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !40, file: !27, line: 402, baseType: !25, size: 64, align: 64, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !40, file: !27, line: 403, baseType: !25, size: 64, align: 64, offset: 2752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !40, file: !27, line: 404, baseType: !25, size: 64, align: 64, offset: 2816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !40, file: !27, line: 405, baseType: !25, size: 64, align: 64, offset: 2880)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !40, file: !27, line: 406, baseType: !25, size: 64, align: 64, offset: 2944)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !40, file: !27, line: 407, baseType: !55, size: 64, align: 64, offset: 3008)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !40, file: !27, line: 410, baseType: !358, size: 32, align: 32, offset: 3072)
!358 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !40, file: !27, line: 412, baseType: !55, size: 64, align: 64, offset: 3136)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uintptr_t", file: !32, line: 153, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !362, line: 122, baseType: !17)
!362 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!363 = !{!364, !369, !376, !383, !394, !400, !407}
!364 = !DISubprogram(name: "PyArena_New", scope: !1, file: !1, line: 128, type: !365, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._arena* ()* @PyArena_New, variables: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!4}
!367 = !{!368}
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arena", scope: !364, file: !1, line: 130, type: !4)
!369 = !DISubprogram(name: "PyArena_Free", scope: !1, file: !1, line: 157, type: !370, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._arena*)* @PyArena_Free, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !4}
!372 = !{!373, !374}
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !369, file: !1, line: 157, type: !4)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !375, file: !1, line: 175, type: !25)
!375 = distinct !DILexicalBlock(scope: !369, file: !1, line: 175, column: 5)
!376 = !DISubprogram(name: "PyArena_Malloc", scope: !1, file: !1, line: 180, type: !377, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._arena*, i64)* @PyArena_Malloc, variables: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!22, !4, !15}
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !376, file: !1, line: 180, type: !4)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !376, file: !1, line: 180, type: !15)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !376, file: !1, line: 182, type: !22)
!383 = !DISubprogram(name: "PyArena_AddPyObject", scope: !1, file: !1, line: 203, type: !384, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._arena*, %struct._object*)* @PyArena_AddPyObject, variables: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!64, !4, !25}
!386 = !{!387, !388, !389, !390}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 1, scope: !383, file: !1, line: 203, type: !4)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !383, file: !1, line: 203, type: !25)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !383, file: !1, line: 205, type: !64)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !391, file: !1, line: 207, type: !25)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 207, column: 9)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 206, column: 17)
!393 = distinct !DILexicalBlock(scope: !383, file: !1, line: 206, column: 9)
!394 = !DISubprogram(name: "block_new", scope: !1, file: !1, line: 76, type: !395, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, variables: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!10, !15}
!397 = !{!398, !399}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !394, file: !1, line: 76, type: !15)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !394, file: !1, line: 80, type: !10)
!400 = !DISubprogram(name: "block_free", scope: !1, file: !1, line: 92, type: !401, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, variables: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !10}
!403 = !{!404, !405}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !400, file: !1, line: 92, type: !10)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !406, file: !1, line: 94, type: !10)
!406 = distinct !DILexicalBlock(scope: !400, file: !1, line: 93, column: 15)
!407 = !DISubprogram(name: "block_alloc", scope: !1, file: !1, line: 101, type: !408, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, variables: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!22, !10, !15}
!410 = !{!411, !412, !413, !414}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !407, file: !1, line: 101, type: !10)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !407, file: !1, line: 101, type: !15)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !407, file: !1, line: 103, type: !22)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newbl", scope: !415, file: !1, line: 111, type: !10)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 106, column: 43)
!416 = distinct !DILexicalBlock(scope: !407, file: !1, line: 106, column: 9)
!417 = !{i32 2, !"Dwarf Version", i32 4}
!418 = !{i32 2, !"Debug Info Version", i32 3}
!419 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!420 = !DILocation(line: 130, column: 33, scope: !364)
!421 = !DILocation(line: 130, column: 22, scope: !364)
!422 = !DIExpression()
!423 = !DILocation(line: 130, column: 14, scope: !364)
!424 = !DILocation(line: 131, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !364, file: !1, line: 131, column: 9)
!426 = !DILocation(line: 131, column: 9, scope: !364)
!427 = !DILocation(line: 132, column: 26, scope: !425)
!428 = !DILocation(line: 132, column: 16, scope: !425)
!429 = !DILocation(line: 132, column: 9, scope: !425)
!430 = !DILocation(line: 76, column: 18, scope: !394, inlinedAt: !431)
!431 = distinct !DILocation(line: 134, column: 21, scope: !364)
!432 = !DILocation(line: 80, column: 25, scope: !394, inlinedAt: !431)
!433 = !DILocation(line: 81, column: 10, scope: !434, inlinedAt: !431)
!434 = distinct !DILexicalBlock(scope: !394, file: !1, line: 81, column: 9)
!435 = !DILocation(line: 81, column: 9, scope: !394, inlinedAt: !431)
!436 = !DILocation(line: 135, column: 18, scope: !364)
!437 = !DILocation(line: 137, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 136, column: 25)
!439 = distinct !DILexicalBlock(scope: !364, file: !1, line: 136, column: 9)
!440 = !DILocation(line: 138, column: 26, scope: !438)
!441 = !DILocation(line: 138, column: 16, scope: !438)
!442 = !DILocation(line: 138, column: 9, scope: !438)
!443 = !DILocation(line: 83, column: 8, scope: !394, inlinedAt: !431)
!444 = !DILocation(line: 83, column: 16, scope: !394, inlinedAt: !431)
!445 = !{!446, !447, i64 0}
!446 = !{!"_block", !447, i64 0, !447, i64 8, !450, i64 16, !450, i64 24}
!447 = !{!"long", !448, i64 0}
!448 = !{!"omnipotent char", !449, i64 0}
!449 = !{!"Simple C/C++ TBAA"}
!450 = !{!"any pointer", !448, i64 0}
!451 = !DILocation(line: 84, column: 28, scope: !394, inlinedAt: !431)
!452 = !DILocation(line: 84, column: 8, scope: !394, inlinedAt: !431)
!453 = !DILocation(line: 84, column: 15, scope: !394, inlinedAt: !431)
!454 = !{!446, !450, i64 24}
!455 = !DILocation(line: 85, column: 8, scope: !394, inlinedAt: !431)
!456 = !DILocation(line: 85, column: 16, scope: !394, inlinedAt: !431)
!457 = !{!446, !450, i64 16}
!458 = !DILocation(line: 86, column: 28, scope: !394, inlinedAt: !431)
!459 = !DILocation(line: 86, column: 63, scope: !394, inlinedAt: !431)
!460 = !DILocation(line: 86, column: 8, scope: !394, inlinedAt: !431)
!461 = !DILocation(line: 86, column: 18, scope: !394, inlinedAt: !431)
!462 = !{!446, !447, i64 8}
!463 = !DILocation(line: 134, column: 19, scope: !364)
!464 = !{!465, !450, i64 0}
!465 = !{!"_arena", !450, i64 0, !450, i64 8, !450, i64 16}
!466 = !DILocation(line: 135, column: 12, scope: !364)
!467 = !{!465, !450, i64 8}
!468 = !DILocation(line: 140, column: 24, scope: !364)
!469 = !DILocation(line: 140, column: 12, scope: !364)
!470 = !DILocation(line: 140, column: 22, scope: !364)
!471 = !{!465, !450, i64 16}
!472 = !DILocation(line: 141, column: 10, scope: !473)
!473 = distinct !DILexicalBlock(scope: !364, file: !1, line: 141, column: 9)
!474 = !DILocation(line: 141, column: 9, scope: !364)
!475 = !DILocation(line: 134, column: 12, scope: !364)
!476 = !DILocation(line: 142, column: 27, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !1, line: 141, column: 28)
!478 = !DILocation(line: 92, column: 19, scope: !400, inlinedAt: !479)
!479 = distinct !DILocation(line: 142, column: 9, scope: !477)
!480 = !DILocation(line: 93, column: 5, scope: !400, inlinedAt: !479)
!481 = !DILocation(line: 94, column: 26, scope: !406, inlinedAt: !479)
!482 = !DILocation(line: 142, column: 9, scope: !477)
!483 = !DILocation(line: 94, column: 16, scope: !406, inlinedAt: !479)
!484 = !DILocation(line: 95, column: 20, scope: !406, inlinedAt: !479)
!485 = !DILocation(line: 95, column: 9, scope: !406, inlinedAt: !479)
!486 = !DILocation(line: 143, column: 9, scope: !477)
!487 = !DILocation(line: 144, column: 26, scope: !477)
!488 = !DILocation(line: 144, column: 16, scope: !477)
!489 = !DILocation(line: 144, column: 9, scope: !477)
!490 = !DILocation(line: 154, column: 1, scope: !364)
!491 = !DILocation(line: 157, column: 23, scope: !369)
!492 = !DILocation(line: 169, column: 23, scope: !369)
!493 = !DILocation(line: 92, column: 19, scope: !400, inlinedAt: !494)
!494 = distinct !DILocation(line: 169, column: 5, scope: !369)
!495 = !DILocation(line: 93, column: 5, scope: !400, inlinedAt: !494)
!496 = !DILocation(line: 94, column: 26, scope: !406, inlinedAt: !494)
!497 = !DILocation(line: 169, column: 5, scope: !369)
!498 = !DILocation(line: 94, column: 16, scope: !406, inlinedAt: !494)
!499 = !DILocation(line: 95, column: 20, scope: !406, inlinedAt: !494)
!500 = !DILocation(line: 95, column: 9, scope: !406, inlinedAt: !494)
!501 = !DILocation(line: 175, column: 5, scope: !502)
!502 = !DILexicalBlockFile(scope: !375, file: !1, discriminator: 1)
!503 = !DILocation(line: 175, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !375, file: !1, line: 175, column: 5)
!505 = !{!506, !447, i64 0}
!506 = !{!"_object", !447, i64 0, !450, i64 8}
!507 = !DILocation(line: 175, column: 5, scope: !375)
!508 = !DILocation(line: 175, column: 5, scope: !509)
!509 = !DILexicalBlockFile(scope: !504, file: !1, discriminator: 3)
!510 = !{!506, !450, i64 8}
!511 = !{!512, !450, i64 48}
!512 = !{!"_typeobject", !513, i64 0, !450, i64 24, !447, i64 32, !447, i64 40, !450, i64 48, !450, i64 56, !450, i64 64, !450, i64 72, !450, i64 80, !450, i64 88, !450, i64 96, !450, i64 104, !450, i64 112, !450, i64 120, !450, i64 128, !450, i64 136, !450, i64 144, !450, i64 152, !450, i64 160, !447, i64 168, !450, i64 176, !450, i64 184, !450, i64 192, !450, i64 200, !447, i64 208, !450, i64 216, !450, i64 224, !450, i64 232, !450, i64 240, !450, i64 248, !450, i64 256, !450, i64 264, !450, i64 272, !450, i64 280, !447, i64 288, !450, i64 296, !450, i64 304, !450, i64 312, !450, i64 320, !450, i64 328, !450, i64 336, !450, i64 344, !450, i64 352, !450, i64 360, !450, i64 368, !450, i64 376, !514, i64 384, !450, i64 392}
!513 = !{!"", !506, i64 0, !447, i64 16}
!514 = !{!"int", !448, i64 0}
!515 = !DILocation(line: 176, column: 16, scope: !369)
!516 = !DILocation(line: 176, column: 5, scope: !369)
!517 = !DILocation(line: 177, column: 1, scope: !369)
!518 = !DILocation(line: 180, column: 25, scope: !376)
!519 = !DILocation(line: 180, column: 39, scope: !376)
!520 = !DILocation(line: 182, column: 34, scope: !376)
!521 = !DILocation(line: 101, column: 20, scope: !407, inlinedAt: !522)
!522 = distinct !DILocation(line: 182, column: 15, scope: !376)
!523 = !DILocation(line: 101, column: 30, scope: !407, inlinedAt: !522)
!524 = !DILocation(line: 105, column: 12, scope: !407, inlinedAt: !522)
!525 = !DILocation(line: 106, column: 12, scope: !416, inlinedAt: !522)
!526 = !DILocation(line: 106, column: 22, scope: !416, inlinedAt: !522)
!527 = !DILocation(line: 106, column: 34, scope: !416, inlinedAt: !522)
!528 = !DILocation(line: 106, column: 29, scope: !416, inlinedAt: !522)
!529 = !DILocation(line: 106, column: 9, scope: !407, inlinedAt: !522)
!530 = !DILocation(line: 112, column: 30, scope: !415, inlinedAt: !522)
!531 = !DILocation(line: 112, column: 25, scope: !415, inlinedAt: !522)
!532 = !DILocation(line: 76, column: 18, scope: !394, inlinedAt: !533)
!533 = distinct !DILocation(line: 111, column: 24, scope: !415, inlinedAt: !522)
!534 = !DILocation(line: 80, column: 52, scope: !394, inlinedAt: !533)
!535 = !DILocation(line: 80, column: 25, scope: !394, inlinedAt: !533)
!536 = !DILocation(line: 81, column: 10, scope: !434, inlinedAt: !533)
!537 = !DILocation(line: 81, column: 9, scope: !394, inlinedAt: !533)
!538 = !DILocation(line: 83, column: 8, scope: !394, inlinedAt: !533)
!539 = !DILocation(line: 83, column: 16, scope: !394, inlinedAt: !533)
!540 = !DILocation(line: 84, column: 28, scope: !394, inlinedAt: !533)
!541 = !DILocation(line: 84, column: 8, scope: !394, inlinedAt: !533)
!542 = !DILocation(line: 84, column: 15, scope: !394, inlinedAt: !533)
!543 = !DILocation(line: 85, column: 8, scope: !394, inlinedAt: !533)
!544 = !DILocation(line: 85, column: 16, scope: !394, inlinedAt: !533)
!545 = !DILocation(line: 86, column: 28, scope: !394, inlinedAt: !533)
!546 = !DILocation(line: 86, column: 63, scope: !394, inlinedAt: !533)
!547 = !DILocation(line: 86, column: 8, scope: !394, inlinedAt: !533)
!548 = !DILocation(line: 86, column: 18, scope: !394, inlinedAt: !533)
!549 = !DILocation(line: 80, column: 16, scope: !394, inlinedAt: !533)
!550 = !DILocation(line: 117, column: 12, scope: !415, inlinedAt: !522)
!551 = !DILocation(line: 117, column: 20, scope: !415, inlinedAt: !522)
!552 = !DILocation(line: 182, column: 15, scope: !376)
!553 = !DILocation(line: 122, column: 43, scope: !407, inlinedAt: !522)
!554 = !DILocation(line: 122, column: 30, scope: !407, inlinedAt: !522)
!555 = !DILocation(line: 122, column: 38, scope: !407, inlinedAt: !522)
!556 = !DILocation(line: 103, column: 11, scope: !407, inlinedAt: !522)
!557 = !DILocation(line: 123, column: 18, scope: !407, inlinedAt: !522)
!558 = !DILocation(line: 182, column: 11, scope: !376)
!559 = !DILocation(line: 183, column: 10, scope: !560)
!560 = distinct !DILexicalBlock(scope: !376, file: !1, line: 183, column: 9)
!561 = !DILocation(line: 183, column: 9, scope: !376)
!562 = !DILocation(line: 184, column: 16, scope: !560)
!563 = !DILocation(line: 184, column: 9, scope: !560)
!564 = !DILocation(line: 190, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !376, file: !1, line: 190, column: 9)
!566 = !DILocation(line: 190, column: 23, scope: !565)
!567 = !DILocation(line: 190, column: 9, scope: !565)
!568 = !DILocation(line: 190, column: 9, scope: !376)
!569 = !DILocation(line: 191, column: 22, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !1, line: 190, column: 32)
!571 = !DILocation(line: 198, column: 5, scope: !570)
!572 = !DILocation(line: 200, column: 1, scope: !376)
!573 = !DILocation(line: 203, column: 30, scope: !383)
!574 = !DILocation(line: 203, column: 47, scope: !383)
!575 = !DILocation(line: 205, column: 34, scope: !383)
!576 = !DILocation(line: 205, column: 13, scope: !383)
!577 = !DILocation(line: 205, column: 9, scope: !383)
!578 = !DILocation(line: 206, column: 11, scope: !393)
!579 = !DILocation(line: 206, column: 9, scope: !383)
!580 = !DILocation(line: 207, column: 9, scope: !581)
!581 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!582 = !DILocation(line: 207, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !391, file: !1, line: 207, column: 9)
!584 = !DILocation(line: 207, column: 9, scope: !391)
!585 = !DILocation(line: 207, column: 9, scope: !586)
!586 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 3)
!587 = !DILocation(line: 209, column: 5, scope: !383)
