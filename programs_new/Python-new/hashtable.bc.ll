; ModuleID = 'irs-onlybc/hashtable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_hashtable_entry_t = type { %struct._Py_slist_item_s, i8*, i64 }
%struct._Py_slist_item_s = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_t = type { i64, i64, %struct._Py_slist_t*, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t }
%struct._Py_slist_t = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_allocator_t = type { i8* (i64)*, void (i8*)* }

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_hash_int(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !84, metadata !277), !dbg !278
  %0 = load i8*, i8** %key.addr, align 8, !dbg !279, !tbaa !273
  %1 = ptrtoint i8* %0 to i64, !dbg !280
  ret i64 %1, !dbg !281
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_hash_ptr(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !87, metadata !277), !dbg !282
  %0 = load i8*, i8** %key.addr, align 8, !dbg !283, !tbaa !273
  %call = call i64 @_Py_HashPointer(i8* %0), !dbg !284
  ret i64 %call, !dbg !285
}

declare i64 @_Py_HashPointer(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_compare_direct(i8* %key, %struct._Py_hashtable_entry_t* %entry1) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !90, metadata !277), !dbg !286
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry.addr, metadata !91, metadata !277), !dbg !287
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8, !dbg !288, !tbaa !273
  %key2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %0, i32 0, i32 1, !dbg !289
  %1 = load i8*, i8** %key2, align 8, !dbg !289, !tbaa !290
  %2 = load i8*, i8** %key.addr, align 8, !dbg !294, !tbaa !273
  %cmp = icmp eq i8* %1, %2, !dbg !295
  %conv = zext i1 %cmp to i32, !dbg !295
  ret i32 %conv, !dbg !296
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %data_size, i64 %init_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i8* (i8*)* %copy_data_func, void (i8*)* %free_data_func, i64 (i8*)* %get_data_size_func, %struct._Py_hashtable_allocator_t* %allocator) #0 {
entry:
  %retval = alloca %struct._Py_hashtable_t*, align 8
  %data_size.addr = alloca i64, align 8
  %init_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  %copy_data_func.addr = alloca i8* (i8*)*, align 8
  %free_data_func.addr = alloca void (i8*)*, align 8
  %get_data_size_func.addr = alloca i64 (i8*)*, align 8
  %allocator.addr = alloca %struct._Py_hashtable_allocator_t*, align 8
  %ht = alloca %struct._Py_hashtable_t*, align 8
  %buckets_size = alloca i64, align 8
  %alloc = alloca %struct._Py_hashtable_allocator_t, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !97, metadata !277), !dbg !298
  store i64 %init_size, i64* %init_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %init_size.addr, metadata !98, metadata !277), !dbg !299
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i64 (i8*)** %hash_func.addr, metadata !99, metadata !277), !dbg !300
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, metadata !100, metadata !277), !dbg !301
  store i8* (i8*)* %copy_data_func, i8* (i8*)** %copy_data_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8* (i8*)** %copy_data_func.addr, metadata !101, metadata !277), !dbg !302
  store void (i8*)* %free_data_func, void (i8*)** %free_data_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata void (i8*)** %free_data_func.addr, metadata !102, metadata !277), !dbg !303
  store i64 (i8*)* %get_data_size_func, i64 (i8*)** %get_data_size_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i64 (i8*)** %get_data_size_func.addr, metadata !103, metadata !277), !dbg !304
  store %struct._Py_hashtable_allocator_t* %allocator, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_allocator_t** %allocator.addr, metadata !104, metadata !277), !dbg !305
  %0 = bitcast %struct._Py_hashtable_t** %ht to i8*, !dbg !306
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !306
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht, metadata !105, metadata !277), !dbg !307
  %1 = bitcast i64* %buckets_size to i8*, !dbg !308
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !308
  call void @llvm.dbg.declare(metadata i64* %buckets_size, metadata !106, metadata !277), !dbg !309
  %2 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*, !dbg !310
  call void @llvm.lifetime.start(i64 16, i8* %2) #3, !dbg !310
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_allocator_t* %alloc, metadata !107, metadata !277), !dbg !311
  %3 = load %struct._Py_hashtable_allocator_t*, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8, !dbg !312, !tbaa !273
  %cmp = icmp eq %struct._Py_hashtable_allocator_t* %3, null, !dbg !314
  br i1 %cmp, label %if.then, label %if.else, !dbg !315

if.then:                                          ; preds = %entry
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0, !dbg !316
  store i8* (i64)* @PyMem_RawMalloc, i8* (i64)** %malloc, align 8, !dbg !318, !tbaa !319
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1, !dbg !321
  store void (i8*)* @PyMem_RawFree, void (i8*)** %free, align 8, !dbg !322, !tbaa !323
  br label %if.end, !dbg !324

if.else:                                          ; preds = %entry
  %4 = load %struct._Py_hashtable_allocator_t*, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8, !dbg !325, !tbaa !273
  %5 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*, !dbg !326
  %6 = bitcast %struct._Py_hashtable_allocator_t* %4 to i8*, !dbg !326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false), !dbg !326, !tbaa.struct !327
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %malloc1 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0, !dbg !328
  %7 = load i8* (i64)*, i8* (i64)** %malloc1, align 8, !dbg !328, !tbaa !319
  %call = call i8* %7(i64 88), !dbg !329
  %8 = bitcast i8* %call to %struct._Py_hashtable_t*, !dbg !330
  store %struct._Py_hashtable_t* %8, %struct._Py_hashtable_t** %ht, align 8, !dbg !331, !tbaa !273
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !332, !tbaa !273
  %cmp2 = icmp eq %struct._Py_hashtable_t* %9, null, !dbg !334
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !335

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !336, !tbaa !273
  store %struct._Py_hashtable_t* %10, %struct._Py_hashtable_t** %retval, !dbg !337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !337

if.end.4:                                         ; preds = %if.end
  %11 = load i64, i64* %init_size.addr, align 8, !dbg !338, !tbaa !297
  %call5 = call i64 @round_size(i64 %11), !dbg !339
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !340, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %12, i32 0, i32 0, !dbg !341
  store i64 %call5, i64* %num_buckets, align 8, !dbg !342, !tbaa !343
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !345, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 1, !dbg !346
  store i64 0, i64* %entries, align 8, !dbg !347, !tbaa !348
  %14 = load i64, i64* %data_size.addr, align 8, !dbg !349, !tbaa !297
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !350, !tbaa !273
  %data_size6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 3, !dbg !351
  store i64 %14, i64* %data_size6, align 8, !dbg !352, !tbaa !353
  %16 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !354, !tbaa !273
  %num_buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %16, i32 0, i32 0, !dbg !355
  %17 = load i64, i64* %num_buckets7, align 8, !dbg !355, !tbaa !343
  %mul = mul i64 %17, 8, !dbg !356
  store i64 %mul, i64* %buckets_size, align 8, !dbg !357, !tbaa !297
  %malloc8 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0, !dbg !358
  %18 = load i8* (i64)*, i8* (i64)** %malloc8, align 8, !dbg !358, !tbaa !319
  %19 = load i64, i64* %buckets_size, align 8, !dbg !359, !tbaa !297
  %call9 = call i8* %18(i64 %19), !dbg !360
  %20 = bitcast i8* %call9 to %struct._Py_slist_t*, !dbg !360
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !361, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %21, i32 0, i32 2, !dbg !362
  store %struct._Py_slist_t* %20, %struct._Py_slist_t** %buckets, align 8, !dbg !363, !tbaa !364
  %22 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !365, !tbaa !273
  %buckets10 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %22, i32 0, i32 2, !dbg !367
  %23 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets10, align 8, !dbg !367, !tbaa !364
  %cmp11 = icmp eq %struct._Py_slist_t* %23, null, !dbg !368
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !369

if.then.12:                                       ; preds = %if.end.4
  %free13 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1, !dbg !370
  %24 = load void (i8*)*, void (i8*)** %free13, align 8, !dbg !370, !tbaa !323
  %25 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !372, !tbaa !273
  %26 = bitcast %struct._Py_hashtable_t* %25 to i8*, !dbg !372
  call void %24(i8* %26), !dbg !373
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval, !dbg !374
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !374

if.end.14:                                        ; preds = %if.end.4
  %27 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !375, !tbaa !273
  %buckets15 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %27, i32 0, i32 2, !dbg !376
  %28 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets15, align 8, !dbg !376, !tbaa !364
  %29 = bitcast %struct._Py_slist_t* %28 to i8*, !dbg !377
  %30 = load i64, i64* %buckets_size, align 8, !dbg !378, !tbaa !297
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 %30, i32 8, i1 false), !dbg !377
  %31 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8, !dbg !379, !tbaa !273
  %32 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !380, !tbaa !273
  %hash_func16 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %32, i32 0, i32 4, !dbg !381
  store i64 (i8*)* %31, i64 (i8*)** %hash_func16, align 8, !dbg !382, !tbaa !383
  %33 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !dbg !384, !tbaa !273
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !385, !tbaa !273
  %compare_func17 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %34, i32 0, i32 5, !dbg !386
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %33, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func17, align 8, !dbg !387, !tbaa !388
  %35 = load i8* (i8*)*, i8* (i8*)** %copy_data_func.addr, align 8, !dbg !389, !tbaa !273
  %36 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !390, !tbaa !273
  %copy_data_func18 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %36, i32 0, i32 6, !dbg !391
  store i8* (i8*)* %35, i8* (i8*)** %copy_data_func18, align 8, !dbg !392, !tbaa !393
  %37 = load void (i8*)*, void (i8*)** %free_data_func.addr, align 8, !dbg !394, !tbaa !273
  %38 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !395, !tbaa !273
  %free_data_func19 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %38, i32 0, i32 7, !dbg !396
  store void (i8*)* %37, void (i8*)** %free_data_func19, align 8, !dbg !397, !tbaa !398
  %39 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func.addr, align 8, !dbg !399, !tbaa !273
  %40 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !400, !tbaa !273
  %get_data_size_func20 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %40, i32 0, i32 8, !dbg !401
  store i64 (i8*)* %39, i64 (i8*)** %get_data_size_func20, align 8, !dbg !402, !tbaa !403
  %41 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !404, !tbaa !273
  %alloc21 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %41, i32 0, i32 9, !dbg !405
  %42 = bitcast %struct._Py_hashtable_allocator_t* %alloc21 to i8*, !dbg !406
  %43 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*, !dbg !406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !dbg !406, !tbaa.struct !327
  %44 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8, !dbg !407, !tbaa !273
  store %struct._Py_hashtable_t* %44, %struct._Py_hashtable_t** %retval, !dbg !408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !408

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.3
  %45 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*, !dbg !409
  call void @llvm.lifetime.end(i64 16, i8* %45) #3, !dbg !409
  %46 = bitcast i64* %buckets_size to i8*, !dbg !409
  call void @llvm.lifetime.end(i64 8, i8* %46) #3, !dbg !409
  %47 = bitcast %struct._Py_hashtable_t** %ht to i8*, !dbg !409
  call void @llvm.lifetime.end(i64 8, i8* %47) #3, !dbg !409
  %48 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %retval, !dbg !409
  ret %struct._Py_hashtable_t* %48, !dbg !409
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i8* @PyMem_RawMalloc(i64) #2

declare void @PyMem_RawFree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i64 @round_size(i64 %s) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %s, i64* %s.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !223, metadata !277), !dbg !410
  %0 = bitcast i64* %i to i8*, !dbg !411
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !411
  call void @llvm.dbg.declare(metadata i64* %i, metadata !224, metadata !277), !dbg !412
  %1 = load i64, i64* %s.addr, align 8, !dbg !413, !tbaa !297
  %cmp = icmp ult i64 %1, 16, !dbg !415
  br i1 %cmp, label %if.then, label %if.end, !dbg !416

if.then:                                          ; preds = %entry
  store i64 16, i64* %retval, !dbg !417
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !417

if.end:                                           ; preds = %entry
  store i64 1, i64* %i, align 8, !dbg !418, !tbaa !297
  br label %while.cond, !dbg !419

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, i64* %i, align 8, !dbg !420, !tbaa !297
  %3 = load i64, i64* %s.addr, align 8, !dbg !423, !tbaa !297
  %cmp1 = icmp ult i64 %2, %3, !dbg !424
  br i1 %cmp1, label %while.body, label %while.end, !dbg !419

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %i, align 8, !dbg !425, !tbaa !297
  %shl = shl i64 %4, 1, !dbg !425
  store i64 %shl, i64* %i, align 8, !dbg !425, !tbaa !297
  br label %while.cond, !dbg !419

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %i, align 8, !dbg !426, !tbaa !297
  store i64 %5, i64* %retval, !dbg !427
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !427

cleanup:                                          ; preds = %while.end, %if.then
  %6 = bitcast i64* %i to i8*, !dbg !428
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !428
  %7 = load i64, i64* %retval, !dbg !428
  ret i64 %7, !dbg !428
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new(i64 %data_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !112, metadata !277), !dbg !429
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i64 (i8*)** %hash_func.addr, metadata !113, metadata !277), !dbg !430
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, metadata !114, metadata !277), !dbg !431
  %0 = load i64, i64* %data_size.addr, align 8, !dbg !432, !tbaa !297
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8, !dbg !433, !tbaa !273
  %2 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8, !dbg !434, !tbaa !273
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %0, i64 16, i64 (i8*)* %1, i32 (i8*, %struct._Py_hashtable_entry_t*)* %2, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* null), !dbg !435
  ret %struct._Py_hashtable_t* %call, !dbg !436
}

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %size = alloca i64, align 8
  %hv = alloca i64, align 8
  %entry5 = alloca %struct._Py_hashtable_entry_t*, align 8
  %data = alloca i8*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !119, metadata !277), !dbg !437
  %0 = bitcast i64* %size to i8*, !dbg !438
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !438
  call void @llvm.dbg.declare(metadata i64* %size, metadata !120, metadata !277), !dbg !439
  %1 = bitcast i64* %hv to i8*, !dbg !440
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !440
  call void @llvm.dbg.declare(metadata i64* %hv, metadata !121, metadata !277), !dbg !441
  store i64 88, i64* %size, align 8, !dbg !442, !tbaa !297
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !443, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %2, i32 0, i32 0, !dbg !444
  %3 = load i64, i64* %num_buckets, align 8, !dbg !444, !tbaa !343
  %mul = mul i64 %3, 8, !dbg !445
  %4 = load i64, i64* %size, align 8, !dbg !446, !tbaa !297
  %add = add i64 %4, %mul, !dbg !446
  store i64 %add, i64* %size, align 8, !dbg !446, !tbaa !297
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !447, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %5, i32 0, i32 1, !dbg !448
  %6 = load i64, i64* %entries, align 8, !dbg !448, !tbaa !348
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !449, !tbaa !273
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 3, !dbg !450
  %8 = load i64, i64* %data_size, align 8, !dbg !450, !tbaa !353
  %add1 = add i64 24, %8, !dbg !451
  %mul2 = mul i64 %6, %add1, !dbg !452
  %9 = load i64, i64* %size, align 8, !dbg !453, !tbaa !297
  %add3 = add i64 %9, %mul2, !dbg !453
  store i64 %add3, i64* %size, align 8, !dbg !453, !tbaa !297
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !454, !tbaa !273
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 8, !dbg !455
  %11 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8, !dbg !455, !tbaa !403
  %tobool = icmp ne i64 (i8*)* %11, null, !dbg !454
  br i1 %tobool, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  store i64 0, i64* %hv, align 8, !dbg !457, !tbaa !297
  br label %for.cond, !dbg !458

for.cond:                                         ; preds = %for.inc.11, %if.then
  %12 = load i64, i64* %hv, align 8, !dbg !459, !tbaa !297
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !462, !tbaa !273
  %num_buckets4 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 0, !dbg !463
  %14 = load i64, i64* %num_buckets4, align 8, !dbg !463, !tbaa !343
  %cmp = icmp ult i64 %12, %14, !dbg !464
  br i1 %cmp, label %for.body, label %for.end.12, !dbg !465

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._Py_hashtable_entry_t** %entry5 to i8*, !dbg !466
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !466
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry5, metadata !122, metadata !277), !dbg !467
  %16 = load i64, i64* %hv, align 8, !dbg !468, !tbaa !297
  %17 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !469, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %17, i32 0, i32 2, !dbg !470
  %18 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !470, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %18, i64 %16, !dbg !471
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !472
  %19 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !472, !tbaa !473
  %20 = bitcast %struct._Py_slist_item_s* %19 to %struct._Py_hashtable_entry_t*, !dbg !475
  store %struct._Py_hashtable_entry_t* %20, %struct._Py_hashtable_entry_t** %entry5, align 8, !dbg !476, !tbaa !273
  br label %for.cond.6, !dbg !477

for.cond.6:                                       ; preds = %for.inc, %for.body
  %21 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8, !dbg !478, !tbaa !273
  %tobool7 = icmp ne %struct._Py_hashtable_entry_t* %21, null, !dbg !481
  br i1 %tobool7, label %for.body.8, label %for.end, !dbg !481

for.body.8:                                       ; preds = %for.cond.6
  %22 = bitcast i8** %data to i8*, !dbg !482
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !482
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !277), !dbg !483
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8, !dbg !484, !tbaa !273
  %24 = bitcast %struct._Py_hashtable_entry_t* %23 to i8*, !dbg !485
  %add.ptr = getelementptr i8, i8* %24, i64 24, !dbg !486
  %25 = bitcast i8* %add.ptr to i8**, !dbg !487
  %26 = load i8*, i8** %25, align 8, !dbg !488, !tbaa !273
  store i8* %26, i8** %data, align 8, !dbg !489, !tbaa !273
  %27 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !490, !tbaa !273
  %get_data_size_func9 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %27, i32 0, i32 8, !dbg !491
  %28 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func9, align 8, !dbg !491, !tbaa !403
  %29 = load i8*, i8** %data, align 8, !dbg !492, !tbaa !273
  %call = call i64 %28(i8* %29), !dbg !490
  %30 = load i64, i64* %size, align 8, !dbg !493, !tbaa !297
  %add10 = add i64 %30, %call, !dbg !493
  store i64 %add10, i64* %size, align 8, !dbg !493, !tbaa !297
  %31 = bitcast i8** %data to i8*, !dbg !494
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !494
  br label %for.inc, !dbg !495

for.inc:                                          ; preds = %for.body.8
  %32 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8, !dbg !496, !tbaa !273
  %33 = bitcast %struct._Py_hashtable_entry_t* %32 to %struct._Py_slist_item_s*, !dbg !497
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %33, i32 0, i32 0, !dbg !498
  %34 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !498, !tbaa !499
  %35 = bitcast %struct._Py_slist_item_s* %34 to %struct._Py_hashtable_entry_t*, !dbg !500
  store %struct._Py_hashtable_entry_t* %35, %struct._Py_hashtable_entry_t** %entry5, align 8, !dbg !501, !tbaa !273
  br label %for.cond.6, !dbg !502

for.end:                                          ; preds = %for.cond.6
  %36 = bitcast %struct._Py_hashtable_entry_t** %entry5 to i8*, !dbg !503
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !503
  br label %for.inc.11, !dbg !504

for.inc.11:                                       ; preds = %for.end
  %37 = load i64, i64* %hv, align 8, !dbg !505, !tbaa !297
  %inc = add i64 %37, 1, !dbg !505
  store i64 %inc, i64* %hv, align 8, !dbg !505, !tbaa !297
  br label %for.cond, !dbg !506

for.end.12:                                       ; preds = %for.cond
  br label %if.end, !dbg !507

if.end:                                           ; preds = %for.end.12, %entry
  %38 = load i64, i64* %size, align 8, !dbg !508, !tbaa !297
  %39 = bitcast i64* %hv to i8*, !dbg !509
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !509
  %40 = bitcast i64* %size to i8*, !dbg !509
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !509
  ret i64 %38, !dbg !510
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !136, metadata !277), !dbg !511
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !137, metadata !277), !dbg !512
  %0 = bitcast i64* %key_hash to i8*, !dbg !513
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !513
  call void @llvm.dbg.declare(metadata i64* %key_hash, metadata !138, metadata !277), !dbg !514
  %1 = bitcast i64* %index to i8*, !dbg !515
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !515
  call void @llvm.dbg.declare(metadata i64* %index, metadata !139, metadata !277), !dbg !516
  %2 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !517
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !517
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !140, metadata !277), !dbg !518
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !519, !tbaa !273
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %3, i32 0, i32 4, !dbg !520
  %4 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !520, !tbaa !383
  %5 = load i8*, i8** %key.addr, align 8, !dbg !521, !tbaa !273
  %call = call i64 %4(i8* %5), !dbg !519
  store i64 %call, i64* %key_hash, align 8, !dbg !522, !tbaa !297
  %6 = load i64, i64* %key_hash, align 8, !dbg !523, !tbaa !297
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !524, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 0, !dbg !525
  %8 = load i64, i64* %num_buckets, align 8, !dbg !525, !tbaa !343
  %sub = sub i64 %8, 1, !dbg !526
  %and = and i64 %6, %sub, !dbg !527
  store i64 %and, i64* %index, align 8, !dbg !528, !tbaa !297
  %9 = load i64, i64* %index, align 8, !dbg !529, !tbaa !297
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !531, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 2, !dbg !532
  %11 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !532, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %11, i64 %9, !dbg !533
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !534
  %12 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !534, !tbaa !473
  %13 = bitcast %struct._Py_slist_item_s* %12 to %struct._Py_hashtable_entry_t*, !dbg !535
  store %struct._Py_hashtable_entry_t* %13, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !536, !tbaa !273
  br label %for.cond, !dbg !537

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !538, !tbaa !273
  %cmp = icmp ne %struct._Py_hashtable_entry_t* %14, null, !dbg !542
  br i1 %cmp, label %for.body, label %for.end, !dbg !543

for.body:                                         ; preds = %for.cond
  %15 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !544, !tbaa !273
  %key_hash2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %15, i32 0, i32 2, !dbg !547
  %16 = load i64, i64* %key_hash2, align 8, !dbg !547, !tbaa !548
  %17 = load i64, i64* %key_hash, align 8, !dbg !549, !tbaa !297
  %cmp3 = icmp eq i64 %16, %17, !dbg !550
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !551

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !552, !tbaa !273
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 5, !dbg !554
  %19 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8, !dbg !554, !tbaa !388
  %20 = load i8*, i8** %key.addr, align 8, !dbg !555, !tbaa !273
  %21 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !556, !tbaa !273
  %call4 = call i32 %19(i8* %20, %struct._Py_hashtable_entry_t* %21), !dbg !557
  %tobool = icmp ne i32 %call4, 0, !dbg !557
  br i1 %tobool, label %if.then, label %if.end, !dbg !558

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !559

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !560

for.inc:                                          ; preds = %if.end
  %22 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !561, !tbaa !273
  %23 = bitcast %struct._Py_hashtable_entry_t* %22 to %struct._Py_slist_item_s*, !dbg !562
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %23, i32 0, i32 0, !dbg !563
  %24 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !563, !tbaa !499
  %25 = bitcast %struct._Py_slist_item_s* %24 to %struct._Py_hashtable_entry_t*, !dbg !564
  store %struct._Py_hashtable_entry_t* %25, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !565, !tbaa !273
  br label %for.cond, !dbg !566

for.end:                                          ; preds = %if.then, %for.cond
  %26 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !567, !tbaa !273
  %27 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !568
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !568
  %28 = bitcast i64* %index to i8*, !dbg !568
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !568
  %29 = bitcast i64* %key_hash to i8*, !dbg !568
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !568
  ret %struct._Py_hashtable_entry_t* %26, !dbg !569
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !145, metadata !277), !dbg !570
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !146, metadata !277), !dbg !571
  store i8* %data, i8** %data.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !147, metadata !277), !dbg !572
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !148, metadata !277), !dbg !573
  %0 = bitcast i64* %key_hash to i8*, !dbg !574
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !574
  call void @llvm.dbg.declare(metadata i64* %key_hash, metadata !149, metadata !277), !dbg !575
  %1 = bitcast i64* %index to i8*, !dbg !576
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !576
  call void @llvm.dbg.declare(metadata i64* %index, metadata !150, metadata !277), !dbg !577
  %2 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !578
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !578
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !151, metadata !277), !dbg !579
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !580, !tbaa !273
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %3, i32 0, i32 4, !dbg !581
  %4 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !581, !tbaa !383
  %5 = load i8*, i8** %key.addr, align 8, !dbg !582, !tbaa !273
  %call = call i64 %4(i8* %5), !dbg !580
  store i64 %call, i64* %key_hash, align 8, !dbg !583, !tbaa !297
  %6 = load i64, i64* %key_hash, align 8, !dbg !584, !tbaa !297
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !585, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 0, !dbg !586
  %8 = load i64, i64* %num_buckets, align 8, !dbg !586, !tbaa !343
  %sub = sub i64 %8, 1, !dbg !587
  %and = and i64 %6, %sub, !dbg !588
  store i64 %and, i64* %index, align 8, !dbg !589, !tbaa !297
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !590, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %9, i32 0, i32 9, !dbg !591
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0, !dbg !592
  %10 = load i8* (i64)*, i8* (i64)** %malloc, align 8, !dbg !592, !tbaa !593
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !594, !tbaa !273
  %data_size2 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %11, i32 0, i32 3, !dbg !595
  %12 = load i64, i64* %data_size2, align 8, !dbg !595, !tbaa !353
  %add = add i64 24, %12, !dbg !596
  %call3 = call i8* %10(i64 %add), !dbg !590
  %13 = bitcast i8* %call3 to %struct._Py_hashtable_entry_t*, !dbg !590
  store %struct._Py_hashtable_entry_t* %13, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !597, !tbaa !273
  %14 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !598, !tbaa !273
  %cmp = icmp eq %struct._Py_hashtable_entry_t* %14, null, !dbg !600
  br i1 %cmp, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !602

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %key.addr, align 8, !dbg !604, !tbaa !273
  %16 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !605, !tbaa !273
  %key4 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %16, i32 0, i32 1, !dbg !606
  store i8* %15, i8** %key4, align 8, !dbg !607, !tbaa !290
  %17 = load i64, i64* %key_hash, align 8, !dbg !608, !tbaa !297
  %18 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !609, !tbaa !273
  %key_hash5 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %18, i32 0, i32 2, !dbg !610
  store i64 %17, i64* %key_hash5, align 8, !dbg !611, !tbaa !548
  %19 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !612, !tbaa !273
  %20 = bitcast %struct._Py_hashtable_entry_t* %19 to i8*, !dbg !613
  %add.ptr = getelementptr i8, i8* %20, i64 24, !dbg !614
  %21 = load i8*, i8** %data.addr, align 8, !dbg !615, !tbaa !273
  %22 = load i64, i64* %data_size.addr, align 8, !dbg !616, !tbaa !297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %21, i64 %22, i32 1, i1 false), !dbg !617
  %23 = load i64, i64* %index, align 8, !dbg !618, !tbaa !297
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !619, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 2, !dbg !620
  %25 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !620, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %25, i64 %23, !dbg !619
  %26 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !621, !tbaa !273
  %27 = bitcast %struct._Py_hashtable_entry_t* %26 to %struct._Py_slist_item_s*, !dbg !622
  call void @_Py_slist_prepend(%struct._Py_slist_t* %arrayidx, %struct._Py_slist_item_s* %27), !dbg !623
  %28 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !624, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %28, i32 0, i32 1, !dbg !625
  %29 = load i64, i64* %entries, align 8, !dbg !626, !tbaa !348
  %inc = add i64 %29, 1, !dbg !626
  store i64 %inc, i64* %entries, align 8, !dbg !626, !tbaa !348
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !627, !tbaa !273
  %entries6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %30, i32 0, i32 1, !dbg !629
  %31 = load i64, i64* %entries6, align 8, !dbg !629, !tbaa !348
  %conv = uitofp i64 %31 to float, !dbg !630
  %32 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !631, !tbaa !273
  %num_buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %32, i32 0, i32 0, !dbg !632
  %33 = load i64, i64* %num_buckets7, align 8, !dbg !632, !tbaa !343
  %conv8 = uitofp i64 %33 to float, !dbg !633
  %div = fdiv float %conv, %conv8, !dbg !634
  %conv9 = fpext float %div to double, !dbg !630
  %cmp10 = fcmp ogt double %conv9, 5.000000e-01, !dbg !635
  br i1 %cmp10, label %if.then.12, label %if.end.13, !dbg !636

if.then.12:                                       ; preds = %if.end
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !637, !tbaa !273
  call void @hashtable_rehash(%struct._Py_hashtable_t* %34), !dbg !638
  br label %if.end.13, !dbg !638

if.end.13:                                        ; preds = %if.then.12, %if.end
  store i32 0, i32* %retval, !dbg !639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !639

cleanup:                                          ; preds = %if.end.13, %if.then
  %35 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !640
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !640
  %36 = bitcast i64* %index to i8*, !dbg !640
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !640
  %37 = bitcast i64* %key_hash to i8*, !dbg !640
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !640
  %38 = load i32, i32* %retval, !dbg !640
  ret i32 %38, !dbg !640
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_prepend(%struct._Py_slist_t* %list, %struct._Py_slist_item_s* %item) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  %item.addr = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_t** %list.addr, metadata !229, metadata !277), !dbg !641
  store %struct._Py_slist_item_s* %item, %struct._Py_slist_item_s** %item.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_item_s** %item.addr, metadata !230, metadata !277), !dbg !642
  %0 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8, !dbg !643, !tbaa !273
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %0, i32 0, i32 0, !dbg !644
  %1 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !644, !tbaa !473
  %2 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8, !dbg !645, !tbaa !273
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %2, i32 0, i32 0, !dbg !646
  store %struct._Py_slist_item_s* %1, %struct._Py_slist_item_s** %next, align 8, !dbg !647, !tbaa !499
  %3 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8, !dbg !648, !tbaa !273
  %4 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8, !dbg !649, !tbaa !273
  %head1 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %4, i32 0, i32 0, !dbg !650
  store %struct._Py_slist_item_s* %3, %struct._Py_slist_item_s** %head1, align 8, !dbg !651, !tbaa !473
  ret void, !dbg !652
}

; Function Attrs: nounwind uwtable
define internal void @hashtable_rehash(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %buckets_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %bucket = alloca i64, align 8
  %old_buckets = alloca %struct._Py_slist_t*, align 8
  %old_num_buckets = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %entry17 = alloca %struct._Py_hashtable_entry_t*, align 8
  %next = alloca %struct._Py_hashtable_entry_t*, align 8
  %entry_index = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !250, metadata !277), !dbg !653
  %0 = bitcast i64* %buckets_size to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %buckets_size, metadata !251, metadata !277), !dbg !655
  %1 = bitcast i64* %new_size to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %new_size, metadata !252, metadata !277), !dbg !656
  %2 = bitcast i64* %bucket to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %bucket, metadata !253, metadata !277), !dbg !657
  %3 = bitcast %struct._Py_slist_t** %old_buckets to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !658
  call void @llvm.dbg.declare(metadata %struct._Py_slist_t** %old_buckets, metadata !254, metadata !277), !dbg !659
  store %struct._Py_slist_t* null, %struct._Py_slist_t** %old_buckets, align 8, !dbg !659, !tbaa !273
  %4 = bitcast i64* %old_num_buckets to i8*, !dbg !660
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !660
  call void @llvm.dbg.declare(metadata i64* %old_num_buckets, metadata !255, metadata !277), !dbg !661
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !662, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %5, i32 0, i32 1, !dbg !663
  %6 = load i64, i64* %entries, align 8, !dbg !663, !tbaa !348
  %conv = uitofp i64 %6 to double, !dbg !662
  %mul = fmul double %conv, 2.000000e+00, !dbg !664
  %div = fdiv double %mul, 6.000000e-01, !dbg !665
  %conv1 = fptoui double %div to i64, !dbg !666
  %call = call i64 @round_size(i64 %conv1), !dbg !667
  store i64 %call, i64* %new_size, align 8, !dbg !668, !tbaa !297
  %7 = load i64, i64* %new_size, align 8, !dbg !669, !tbaa !297
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !671, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 0, !dbg !672
  %9 = load i64, i64* %num_buckets, align 8, !dbg !672, !tbaa !343
  %cmp = icmp eq i64 %7, %9, !dbg !673
  br i1 %cmp, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !675

if.end:                                           ; preds = %entry
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !676, !tbaa !273
  %num_buckets3 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 0, !dbg !677
  %11 = load i64, i64* %num_buckets3, align 8, !dbg !677, !tbaa !343
  store i64 %11, i64* %old_num_buckets, align 8, !dbg !678, !tbaa !297
  %12 = load i64, i64* %new_size, align 8, !dbg !679, !tbaa !297
  %mul4 = mul i64 %12, 8, !dbg !680
  store i64 %mul4, i64* %buckets_size, align 8, !dbg !681, !tbaa !297
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !682, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 2, !dbg !683
  %14 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !683, !tbaa !364
  store %struct._Py_slist_t* %14, %struct._Py_slist_t** %old_buckets, align 8, !dbg !684, !tbaa !273
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !685, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 9, !dbg !686
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0, !dbg !687
  %16 = load i8* (i64)*, i8* (i64)** %malloc, align 8, !dbg !687, !tbaa !593
  %17 = load i64, i64* %buckets_size, align 8, !dbg !688, !tbaa !297
  %call5 = call i8* %16(i64 %17), !dbg !685
  %18 = bitcast i8* %call5 to %struct._Py_slist_t*, !dbg !685
  %19 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !689, !tbaa !273
  %buckets6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %19, i32 0, i32 2, !dbg !690
  store %struct._Py_slist_t* %18, %struct._Py_slist_t** %buckets6, align 8, !dbg !691, !tbaa !364
  %20 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !692, !tbaa !273
  %buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %20, i32 0, i32 2, !dbg !694
  %21 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets7, align 8, !dbg !694, !tbaa !364
  %cmp8 = icmp eq %struct._Py_slist_t* %21, null, !dbg !695
  br i1 %cmp8, label %if.then.10, label %if.end.12, !dbg !696

if.then.10:                                       ; preds = %if.end
  %22 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8, !dbg !697, !tbaa !273
  %23 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !699, !tbaa !273
  %buckets11 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %23, i32 0, i32 2, !dbg !700
  store %struct._Py_slist_t* %22, %struct._Py_slist_t** %buckets11, align 8, !dbg !701, !tbaa !364
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !702

if.end.12:                                        ; preds = %if.end
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !703, !tbaa !273
  %buckets13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 2, !dbg !704
  %25 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets13, align 8, !dbg !704, !tbaa !364
  %26 = bitcast %struct._Py_slist_t* %25 to i8*, !dbg !705
  %27 = load i64, i64* %buckets_size, align 8, !dbg !706, !tbaa !297
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 %27, i32 8, i1 false), !dbg !705
  %28 = load i64, i64* %new_size, align 8, !dbg !707, !tbaa !297
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !708, !tbaa !273
  %num_buckets14 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %29, i32 0, i32 0, !dbg !709
  store i64 %28, i64* %num_buckets14, align 8, !dbg !710, !tbaa !343
  store i64 0, i64* %bucket, align 8, !dbg !711, !tbaa !297
  br label %for.cond, !dbg !712

for.cond:                                         ; preds = %for.inc.25, %if.end.12
  %30 = load i64, i64* %bucket, align 8, !dbg !713, !tbaa !297
  %31 = load i64, i64* %old_num_buckets, align 8, !dbg !716, !tbaa !297
  %cmp15 = icmp ult i64 %30, %31, !dbg !717
  br i1 %cmp15, label %for.body, label %for.end.26, !dbg !718

for.body:                                         ; preds = %for.cond
  %32 = bitcast %struct._Py_hashtable_entry_t** %entry17 to i8*, !dbg !719
  call void @llvm.lifetime.start(i64 8, i8* %32) #3, !dbg !719
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry17, metadata !256, metadata !277), !dbg !720
  %33 = bitcast %struct._Py_hashtable_entry_t** %next to i8*, !dbg !719
  call void @llvm.lifetime.start(i64 8, i8* %33) #3, !dbg !719
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %next, metadata !260, metadata !277), !dbg !721
  %34 = load i64, i64* %bucket, align 8, !dbg !722, !tbaa !297
  %35 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8, !dbg !723, !tbaa !273
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %35, i64 %34, !dbg !723
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !724
  %36 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !724, !tbaa !473
  %37 = bitcast %struct._Py_slist_item_s* %36 to %struct._Py_hashtable_entry_t*, !dbg !725
  store %struct._Py_hashtable_entry_t* %37, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !726, !tbaa !273
  br label %for.cond.18, !dbg !727

for.cond.18:                                      ; preds = %for.inc, %for.body
  %38 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !728, !tbaa !273
  %cmp19 = icmp ne %struct._Py_hashtable_entry_t* %38, null, !dbg !731
  br i1 %cmp19, label %for.body.21, label %for.end, !dbg !732

for.body.21:                                      ; preds = %for.cond.18
  %39 = bitcast i64* %entry_index to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !733
  call void @llvm.dbg.declare(metadata i64* %entry_index, metadata !261, metadata !277), !dbg !734
  %40 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !735, !tbaa !273
  %41 = bitcast %struct._Py_hashtable_entry_t* %40 to %struct._Py_slist_item_s*, !dbg !736
  %next22 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %41, i32 0, i32 0, !dbg !737
  %42 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next22, align 8, !dbg !737, !tbaa !499
  %43 = bitcast %struct._Py_slist_item_s* %42 to %struct._Py_hashtable_entry_t*, !dbg !738
  store %struct._Py_hashtable_entry_t* %43, %struct._Py_hashtable_entry_t** %next, align 8, !dbg !739, !tbaa !273
  %44 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !740, !tbaa !273
  %key_hash = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %44, i32 0, i32 2, !dbg !741
  %45 = load i64, i64* %key_hash, align 8, !dbg !741, !tbaa !548
  %46 = load i64, i64* %new_size, align 8, !dbg !742, !tbaa !297
  %sub = sub i64 %46, 1, !dbg !743
  %and = and i64 %45, %sub, !dbg !744
  store i64 %and, i64* %entry_index, align 8, !dbg !745, !tbaa !297
  %47 = load i64, i64* %entry_index, align 8, !dbg !746, !tbaa !297
  %48 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !747, !tbaa !273
  %buckets23 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %48, i32 0, i32 2, !dbg !748
  %49 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets23, align 8, !dbg !748, !tbaa !364
  %arrayidx24 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %49, i64 %47, !dbg !747
  %50 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !749, !tbaa !273
  %51 = bitcast %struct._Py_hashtable_entry_t* %50 to %struct._Py_slist_item_s*, !dbg !750
  call void @_Py_slist_prepend(%struct._Py_slist_t* %arrayidx24, %struct._Py_slist_item_s* %51), !dbg !751
  %52 = bitcast i64* %entry_index to i8*, !dbg !752
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !752
  br label %for.inc, !dbg !753

for.inc:                                          ; preds = %for.body.21
  %53 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %next, align 8, !dbg !754, !tbaa !273
  store %struct._Py_hashtable_entry_t* %53, %struct._Py_hashtable_entry_t** %entry17, align 8, !dbg !755, !tbaa !273
  br label %for.cond.18, !dbg !756

for.end:                                          ; preds = %for.cond.18
  %54 = bitcast %struct._Py_hashtable_entry_t** %next to i8*, !dbg !757
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !757
  %55 = bitcast %struct._Py_hashtable_entry_t** %entry17 to i8*, !dbg !757
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !757
  br label %for.inc.25, !dbg !758

for.inc.25:                                       ; preds = %for.end
  %56 = load i64, i64* %bucket, align 8, !dbg !759, !tbaa !297
  %inc = add i64 %56, 1, !dbg !759
  store i64 %inc, i64* %bucket, align 8, !dbg !759, !tbaa !297
  br label %for.cond, !dbg !760

for.end.26:                                       ; preds = %for.cond
  %57 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !761, !tbaa !273
  %alloc27 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %57, i32 0, i32 9, !dbg !762
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc27, i32 0, i32 1, !dbg !763
  %58 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !763, !tbaa !764
  %59 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8, !dbg !765, !tbaa !273
  %60 = bitcast %struct._Py_slist_t* %59 to i8*, !dbg !765
  call void %58(i8* %60), !dbg !761
  store i32 0, i32* %cleanup.dest.slot, !dbg !766
  br label %cleanup, !dbg !766

cleanup:                                          ; preds = %for.end.26, %if.then.10, %if.then
  %61 = bitcast i64* %old_num_buckets to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !767
  %62 = bitcast %struct._Py_slist_t** %old_buckets to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !767
  %63 = bitcast i64* %bucket to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !767
  %64 = bitcast i64* %new_size to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !767
  %65 = bitcast i64* %buckets_size to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !767
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !766

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !154, metadata !277), !dbg !769
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !155, metadata !277), !dbg !770
  store i8* %data, i8** %data.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !156, metadata !277), !dbg !771
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !157, metadata !277), !dbg !772
  %0 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !773
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !773
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !158, metadata !277), !dbg !774
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !775, !tbaa !273
  %2 = load i8*, i8** %key.addr, align 8, !dbg !776, !tbaa !273
  %call = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %1, i8* %2), !dbg !777
  store %struct._Py_hashtable_entry_t* %call, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !778, !tbaa !273
  %3 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !779, !tbaa !273
  %cmp = icmp eq %struct._Py_hashtable_entry_t* %3, null, !dbg !781
  br i1 %cmp, label %if.then, label %if.end, !dbg !782

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !783
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !783

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !784

do.body:                                          ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8, !dbg !785, !tbaa !273
  %5 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !788, !tbaa !273
  %6 = bitcast %struct._Py_hashtable_entry_t* %5 to i8*, !dbg !789
  %add.ptr = getelementptr i8, i8* %6, i64 24, !dbg !790
  %7 = load i64, i64* %data_size.addr, align 8, !dbg !791, !tbaa !297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %add.ptr, i64 %7, i32 1, i1 false), !dbg !792
  br label %do.cond, !dbg !793

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !794

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval, !dbg !796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !796

cleanup:                                          ; preds = %do.end, %if.then
  %8 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !797
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !797
  %9 = load i32, i32* %retval, !dbg !797
  ret i32 %9, !dbg !797
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !161, metadata !277), !dbg !798
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !162, metadata !277), !dbg !799
  store i8* %data, i8** %data.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !163, metadata !277), !dbg !800
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !164, metadata !277), !dbg !801
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !802, !tbaa !273
  %1 = load i8*, i8** %key.addr, align 8, !dbg !803, !tbaa !273
  %2 = load i8*, i8** %data.addr, align 8, !dbg !804, !tbaa !273
  %3 = load i64, i64* %data_size.addr, align 8, !dbg !805, !tbaa !297
  %call = call i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %0, i8* %1, i8* %2, i64 %3), !dbg !806
  ret i32 %call, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %previous = alloca %struct._Py_hashtable_entry_t*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !233, metadata !277), !dbg !808
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !234, metadata !277), !dbg !809
  store i8* %data, i8** %data.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !235, metadata !277), !dbg !810
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !297
  call void @llvm.dbg.declare(metadata i64* %data_size.addr, metadata !236, metadata !277), !dbg !811
  %0 = bitcast i64* %key_hash to i8*, !dbg !812
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !812
  call void @llvm.dbg.declare(metadata i64* %key_hash, metadata !237, metadata !277), !dbg !813
  %1 = bitcast i64* %index to i8*, !dbg !814
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !814
  call void @llvm.dbg.declare(metadata i64* %index, metadata !238, metadata !277), !dbg !815
  %2 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !816
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !239, metadata !277), !dbg !817
  %3 = bitcast %struct._Py_hashtable_entry_t** %previous to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !816
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %previous, metadata !240, metadata !277), !dbg !818
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !819, !tbaa !273
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 4, !dbg !820
  %5 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !820, !tbaa !383
  %6 = load i8*, i8** %key.addr, align 8, !dbg !821, !tbaa !273
  %call = call i64 %5(i8* %6), !dbg !819
  store i64 %call, i64* %key_hash, align 8, !dbg !822, !tbaa !297
  %7 = load i64, i64* %key_hash, align 8, !dbg !823, !tbaa !297
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !824, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 0, !dbg !825
  %9 = load i64, i64* %num_buckets, align 8, !dbg !825, !tbaa !343
  %sub = sub i64 %9, 1, !dbg !826
  %and = and i64 %7, %sub, !dbg !827
  store i64 %and, i64* %index, align 8, !dbg !828, !tbaa !297
  store %struct._Py_hashtable_entry_t* null, %struct._Py_hashtable_entry_t** %previous, align 8, !dbg !829, !tbaa !273
  %10 = load i64, i64* %index, align 8, !dbg !830, !tbaa !297
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !832, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %11, i32 0, i32 2, !dbg !833
  %12 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !833, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %12, i64 %10, !dbg !834
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !835
  %13 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !835, !tbaa !473
  %14 = bitcast %struct._Py_slist_item_s* %13 to %struct._Py_hashtable_entry_t*, !dbg !836
  store %struct._Py_hashtable_entry_t* %14, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !837, !tbaa !273
  br label %for.cond, !dbg !838

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !839, !tbaa !273
  %cmp = icmp ne %struct._Py_hashtable_entry_t* %15, null, !dbg !843
  br i1 %cmp, label %for.body, label %for.end, !dbg !844

for.body:                                         ; preds = %for.cond
  %16 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !845, !tbaa !273
  %key_hash2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %16, i32 0, i32 2, !dbg !848
  %17 = load i64, i64* %key_hash2, align 8, !dbg !848, !tbaa !548
  %18 = load i64, i64* %key_hash, align 8, !dbg !849, !tbaa !297
  %cmp3 = icmp eq i64 %17, %18, !dbg !850
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !851

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !852, !tbaa !273
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %19, i32 0, i32 5, !dbg !854
  %20 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8, !dbg !854, !tbaa !388
  %21 = load i8*, i8** %key.addr, align 8, !dbg !855, !tbaa !273
  %22 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !856, !tbaa !273
  %call4 = call i32 %20(i8* %21, %struct._Py_hashtable_entry_t* %22), !dbg !857
  %tobool = icmp ne i32 %call4, 0, !dbg !857
  br i1 %tobool, label %if.then, label %if.end, !dbg !858

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !859

if.end:                                           ; preds = %land.lhs.true, %for.body
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !860, !tbaa !273
  store %struct._Py_hashtable_entry_t* %23, %struct._Py_hashtable_entry_t** %previous, align 8, !dbg !861, !tbaa !273
  br label %for.inc, !dbg !862

for.inc:                                          ; preds = %if.end
  %24 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !863, !tbaa !273
  %25 = bitcast %struct._Py_hashtable_entry_t* %24 to %struct._Py_slist_item_s*, !dbg !864
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %25, i32 0, i32 0, !dbg !865
  %26 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !865, !tbaa !499
  %27 = bitcast %struct._Py_slist_item_s* %26 to %struct._Py_hashtable_entry_t*, !dbg !866
  store %struct._Py_hashtable_entry_t* %27, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !867, !tbaa !273
  br label %for.cond, !dbg !868

for.end:                                          ; preds = %if.then, %for.cond
  %28 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !869, !tbaa !273
  %cmp5 = icmp eq %struct._Py_hashtable_entry_t* %28, null, !dbg !871
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !872

if.then.6:                                        ; preds = %for.end
  store i32 0, i32* %retval, !dbg !873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !873

if.end.7:                                         ; preds = %for.end
  %29 = load i64, i64* %index, align 8, !dbg !874, !tbaa !297
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !875, !tbaa !273
  %buckets8 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %30, i32 0, i32 2, !dbg !876
  %31 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets8, align 8, !dbg !876, !tbaa !364
  %arrayidx9 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %31, i64 %29, !dbg !875
  %32 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %previous, align 8, !dbg !877, !tbaa !273
  %33 = bitcast %struct._Py_hashtable_entry_t* %32 to %struct._Py_slist_item_s*, !dbg !878
  %34 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !879, !tbaa !273
  %35 = bitcast %struct._Py_hashtable_entry_t* %34 to %struct._Py_slist_item_s*, !dbg !880
  call void @_Py_slist_remove(%struct._Py_slist_t* %arrayidx9, %struct._Py_slist_item_s* %33, %struct._Py_slist_item_s* %35), !dbg !881
  %36 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !882, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %36, i32 0, i32 1, !dbg !883
  %37 = load i64, i64* %entries, align 8, !dbg !884, !tbaa !348
  %dec = add i64 %37, -1, !dbg !884
  store i64 %dec, i64* %entries, align 8, !dbg !884, !tbaa !348
  %38 = load i8*, i8** %data.addr, align 8, !dbg !885, !tbaa !273
  %cmp10 = icmp ne i8* %38, null, !dbg !887
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !888

if.then.11:                                       ; preds = %if.end.7
  br label %do.body, !dbg !889

do.body:                                          ; preds = %if.then.11
  %39 = load i8*, i8** %data.addr, align 8, !dbg !890, !tbaa !273
  %40 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !893, !tbaa !273
  %41 = bitcast %struct._Py_hashtable_entry_t* %40 to i8*, !dbg !894
  %add.ptr = getelementptr i8, i8* %41, i64 24, !dbg !895
  %42 = load i64, i64* %data_size.addr, align 8, !dbg !896, !tbaa !297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %add.ptr, i64 %42, i32 1, i1 false), !dbg !897
  br label %do.cond, !dbg !898

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !899

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !901

if.end.12:                                        ; preds = %do.end, %if.end.7
  %43 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !903, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %43, i32 0, i32 9, !dbg !904
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1, !dbg !905
  %44 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !905, !tbaa !764
  %45 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !906, !tbaa !273
  %46 = bitcast %struct._Py_hashtable_entry_t* %45 to i8*, !dbg !906
  call void %44(i8* %46), !dbg !903
  %47 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !907, !tbaa !273
  %entries13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %47, i32 0, i32 1, !dbg !909
  %48 = load i64, i64* %entries13, align 8, !dbg !909, !tbaa !348
  %conv = uitofp i64 %48 to float, !dbg !910
  %49 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !911, !tbaa !273
  %num_buckets14 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %49, i32 0, i32 0, !dbg !912
  %50 = load i64, i64* %num_buckets14, align 8, !dbg !912, !tbaa !343
  %conv15 = uitofp i64 %50 to float, !dbg !913
  %div = fdiv float %conv, %conv15, !dbg !914
  %conv16 = fpext float %div to double, !dbg !910
  %cmp17 = fcmp olt double %conv16, 1.000000e-01, !dbg !915
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !916

if.then.19:                                       ; preds = %if.end.12
  %51 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !917, !tbaa !273
  call void @hashtable_rehash(%struct._Py_hashtable_t* %51), !dbg !918
  br label %if.end.20, !dbg !918

if.end.20:                                        ; preds = %if.then.19, %if.end.12
  store i32 1, i32* %retval, !dbg !919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !919

cleanup:                                          ; preds = %if.end.20, %if.then.6
  %52 = bitcast %struct._Py_hashtable_entry_t** %previous to i8*, !dbg !920
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !920
  %53 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !920
  call void @llvm.lifetime.end(i64 8, i8* %53) #3, !dbg !920
  %54 = bitcast i64* %index to i8*, !dbg !920
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !920
  %55 = bitcast i64* %key_hash to i8*, !dbg !920
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !920
  %56 = load i32, i32* %retval, !dbg !920
  ret i32 %56, !dbg !920
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_delete(%struct._Py_hashtable_t* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !169, metadata !277), !dbg !921
  store i8* %key, i8** %key.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !170, metadata !277), !dbg !922
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !923, !tbaa !273
  %1 = load i8*, i8** %key.addr, align 8, !dbg !924, !tbaa !273
  %call = call i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %0, i8* %1, i8* null, i64 0), !dbg !925
  ret void, !dbg !926
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %ht, i32 (%struct._Py_hashtable_entry_t*, i8*)* %func, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %func.addr = alloca i32 (%struct._Py_hashtable_entry_t*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %hv = alloca i64, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !178, metadata !277), !dbg !927
  store i32 (%struct._Py_hashtable_entry_t*, i8*)* %func, i32 (%struct._Py_hashtable_entry_t*, i8*)** %func.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i32 (%struct._Py_hashtable_entry_t*, i8*)** %func.addr, metadata !179, metadata !277), !dbg !928
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !180, metadata !277), !dbg !929
  %0 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !930
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !181, metadata !277), !dbg !931
  %1 = bitcast i64* %hv to i8*, !dbg !932
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !932
  call void @llvm.dbg.declare(metadata i64* %hv, metadata !182, metadata !277), !dbg !933
  store i64 0, i64* %hv, align 8, !dbg !934, !tbaa !297
  br label %for.cond, !dbg !935

for.cond:                                         ; preds = %for.inc.5, %entry
  %2 = load i64, i64* %hv, align 8, !dbg !936, !tbaa !297
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !939, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %3, i32 0, i32 0, !dbg !940
  %4 = load i64, i64* %num_buckets, align 8, !dbg !940, !tbaa !343
  %cmp = icmp ult i64 %2, %4, !dbg !941
  br i1 %cmp, label %for.body, label %for.end.6, !dbg !942

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %hv, align 8, !dbg !943, !tbaa !297
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !944, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %6, i32 0, i32 2, !dbg !945
  %7 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !945, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %7, i64 %5, !dbg !946
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !947
  %8 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !947, !tbaa !473
  %9 = bitcast %struct._Py_slist_item_s* %8 to %struct._Py_hashtable_entry_t*, !dbg !948
  store %struct._Py_hashtable_entry_t* %9, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !949, !tbaa !273
  br label %for.cond.2, !dbg !950

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !951, !tbaa !273
  %tobool = icmp ne %struct._Py_hashtable_entry_t* %10, null, !dbg !954
  br i1 %tobool, label %for.body.3, label %for.end, !dbg !954

for.body.3:                                       ; preds = %for.cond.2
  %11 = bitcast i32* %res to i8*, !dbg !955
  call void @llvm.lifetime.start(i64 4, i8* %11) #3, !dbg !955
  call void @llvm.dbg.declare(metadata i32* %res, metadata !183, metadata !277), !dbg !956
  %12 = load i32 (%struct._Py_hashtable_entry_t*, i8*)*, i32 (%struct._Py_hashtable_entry_t*, i8*)** %func.addr, align 8, !dbg !957, !tbaa !273
  %13 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !958, !tbaa !273
  %14 = load i8*, i8** %arg.addr, align 8, !dbg !959, !tbaa !273
  %call = call i32 %12(%struct._Py_hashtable_entry_t* %13, i8* %14), !dbg !957
  store i32 %call, i32* %res, align 4, !dbg !956, !tbaa !960
  %15 = load i32, i32* %res, align 4, !dbg !962, !tbaa !960
  %tobool4 = icmp ne i32 %15, 0, !dbg !962
  br i1 %tobool4, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %for.body.3
  %16 = load i32, i32* %res, align 4, !dbg !965, !tbaa !960
  store i32 %16, i32* %retval, !dbg !966
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !966

if.end:                                           ; preds = %for.body.3
  store i32 0, i32* %cleanup.dest.slot, !dbg !967
  br label %cleanup, !dbg !967

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %res to i8*, !dbg !968
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !968
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !969

for.inc:                                          ; preds = %cleanup.cont
  %18 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !970, !tbaa !273
  %19 = bitcast %struct._Py_hashtable_entry_t* %18 to %struct._Py_slist_item_s*, !dbg !971
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %19, i32 0, i32 0, !dbg !972
  %20 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !972, !tbaa !499
  %21 = bitcast %struct._Py_slist_item_s* %20 to %struct._Py_hashtable_entry_t*, !dbg !973
  store %struct._Py_hashtable_entry_t* %21, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !974, !tbaa !273
  br label %for.cond.2, !dbg !975

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5, !dbg !976

for.inc.5:                                        ; preds = %for.end
  %22 = load i64, i64* %hv, align 8, !dbg !977, !tbaa !297
  %inc = add i64 %22, 1, !dbg !977
  store i64 %inc, i64* %hv, align 8, !dbg !977, !tbaa !297
  br label %for.cond, !dbg !978

for.end.6:                                        ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7, !dbg !979

cleanup.7:                                        ; preds = %for.end.6, %cleanup
  %23 = bitcast i64* %hv to i8*, !dbg !980
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !980
  %24 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !980
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !980
  %25 = load i32, i32* %retval, !dbg !980
  ret i32 %25, !dbg !980
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_clear(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %next = alloca %struct._Py_hashtable_entry_t*, align 8
  %i = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !194, metadata !277), !dbg !981
  %0 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !982
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !982
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !195, metadata !277), !dbg !983
  %1 = bitcast %struct._Py_hashtable_entry_t** %next to i8*, !dbg !982
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !982
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %next, metadata !196, metadata !277), !dbg !984
  %2 = bitcast i64* %i to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !985
  call void @llvm.dbg.declare(metadata i64* %i, metadata !197, metadata !277), !dbg !986
  store i64 0, i64* %i, align 8, !dbg !987, !tbaa !297
  br label %for.cond, !dbg !989

for.cond:                                         ; preds = %for.inc.9, %entry
  %3 = load i64, i64* %i, align 8, !dbg !990, !tbaa !297
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !994, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 0, !dbg !995
  %5 = load i64, i64* %num_buckets, align 8, !dbg !995, !tbaa !343
  %cmp = icmp ult i64 %3, %5, !dbg !996
  br i1 %cmp, label %for.body, label %for.end.10, !dbg !997

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8, !dbg !998, !tbaa !297
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1001, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 2, !dbg !1002
  %8 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !1002, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %8, i64 %6, !dbg !1003
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !1004
  %9 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !1004, !tbaa !473
  %10 = bitcast %struct._Py_slist_item_s* %9 to %struct._Py_hashtable_entry_t*, !dbg !1005
  store %struct._Py_hashtable_entry_t* %10, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1006, !tbaa !273
  br label %for.cond.2, !dbg !1007

for.cond.2:                                       ; preds = %for.inc, %for.body
  %11 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1008, !tbaa !273
  %cmp3 = icmp ne %struct._Py_hashtable_entry_t* %11, null, !dbg !1012
  br i1 %cmp3, label %for.body.4, label %for.end, !dbg !1013

for.body.4:                                       ; preds = %for.cond.2
  %12 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1014, !tbaa !273
  %13 = bitcast %struct._Py_hashtable_entry_t* %12 to %struct._Py_slist_item_s*, !dbg !1016
  %next5 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %13, i32 0, i32 0, !dbg !1017
  %14 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next5, align 8, !dbg !1017, !tbaa !499
  %15 = bitcast %struct._Py_slist_item_s* %14 to %struct._Py_hashtable_entry_t*, !dbg !1018
  store %struct._Py_hashtable_entry_t* %15, %struct._Py_hashtable_entry_t** %next, align 8, !dbg !1019, !tbaa !273
  %16 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1020, !tbaa !273
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %16, i32 0, i32 7, !dbg !1022
  %17 = load void (i8*)*, void (i8*)** %free_data_func, align 8, !dbg !1022, !tbaa !398
  %tobool = icmp ne void (i8*)* %17, null, !dbg !1020
  br i1 %tobool, label %if.then, label %if.end, !dbg !1023

if.then:                                          ; preds = %for.body.4
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1024, !tbaa !273
  %free_data_func6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 7, !dbg !1025
  %19 = load void (i8*)*, void (i8*)** %free_data_func6, align 8, !dbg !1025, !tbaa !398
  %20 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1026, !tbaa !273
  %21 = bitcast %struct._Py_hashtable_entry_t* %20 to i8*, !dbg !1027
  %add.ptr = getelementptr i8, i8* %21, i64 24, !dbg !1028
  %22 = bitcast i8* %add.ptr to i8**, !dbg !1029
  %23 = load i8*, i8** %22, align 8, !dbg !1030, !tbaa !273
  call void %19(i8* %23), !dbg !1024
  br label %if.end, !dbg !1024

if.end:                                           ; preds = %if.then, %for.body.4
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1031, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 9, !dbg !1032
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1, !dbg !1033
  %25 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !1033, !tbaa !764
  %26 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1034, !tbaa !273
  %27 = bitcast %struct._Py_hashtable_entry_t* %26 to i8*, !dbg !1034
  call void %25(i8* %27), !dbg !1031
  br label %for.inc, !dbg !1035

for.inc:                                          ; preds = %if.end
  %28 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %next, align 8, !dbg !1036, !tbaa !273
  store %struct._Py_hashtable_entry_t* %28, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1037, !tbaa !273
  br label %for.cond.2, !dbg !1038

for.end:                                          ; preds = %for.cond.2
  %29 = load i64, i64* %i, align 8, !dbg !1039, !tbaa !297
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1040, !tbaa !273
  %buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %30, i32 0, i32 2, !dbg !1041
  %31 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets7, align 8, !dbg !1041, !tbaa !364
  %arrayidx8 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %31, i64 %29, !dbg !1040
  call void @_Py_slist_init(%struct._Py_slist_t* %arrayidx8), !dbg !1042
  br label %for.inc.9, !dbg !1043

for.inc.9:                                        ; preds = %for.end
  %32 = load i64, i64* %i, align 8, !dbg !1044, !tbaa !297
  %inc = add i64 %32, 1, !dbg !1044
  store i64 %inc, i64* %i, align 8, !dbg !1044, !tbaa !297
  br label %for.cond, !dbg !1045

for.end.10:                                       ; preds = %for.cond
  %33 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1046, !tbaa !273
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %33, i32 0, i32 1, !dbg !1047
  store i64 0, i64* %entries, align 8, !dbg !1048, !tbaa !348
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1049, !tbaa !273
  call void @hashtable_rehash(%struct._Py_hashtable_t* %34), !dbg !1050
  %35 = bitcast i64* %i to i8*, !dbg !1051
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !1051
  %36 = bitcast %struct._Py_hashtable_entry_t** %next to i8*, !dbg !1051
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1051
  %37 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !1051
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !1051
  ret void, !dbg !1051
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_init(%struct._Py_slist_t* %list) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_t** %list.addr, metadata !269, metadata !277), !dbg !1052
  %0 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8, !dbg !1053, !tbaa !273
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %0, i32 0, i32 0, !dbg !1054
  store %struct._Py_slist_item_s* null, %struct._Py_slist_item_s** %head, align 8, !dbg !1055, !tbaa !473
  ret void, !dbg !1056
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %i = alloca i64, align 8
  %entry1 = alloca %struct._Py_slist_item_s*, align 8
  %entry_next = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %ht.addr, metadata !200, metadata !277), !dbg !1057
  %0 = bitcast i64* %i to i8*, !dbg !1058
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1058
  call void @llvm.dbg.declare(metadata i64* %i, metadata !201, metadata !277), !dbg !1059
  store i64 0, i64* %i, align 8, !dbg !1060, !tbaa !297
  br label %for.cond, !dbg !1061

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !1062, !tbaa !297
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1065, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %2, i32 0, i32 0, !dbg !1066
  %3 = load i64, i64* %num_buckets, align 8, !dbg !1066, !tbaa !343
  %cmp = icmp ult i64 %1, %3, !dbg !1067
  br i1 %cmp, label %for.body, label %for.end, !dbg !1068

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct._Py_slist_item_s** %entry1 to i8*, !dbg !1069
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1069
  call void @llvm.dbg.declare(metadata %struct._Py_slist_item_s** %entry1, metadata !202, metadata !277), !dbg !1070
  %5 = load i64, i64* %i, align 8, !dbg !1071, !tbaa !297
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1072, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %6, i32 0, i32 2, !dbg !1073
  %7 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !1073, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %7, i64 %5, !dbg !1072
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !1074
  %8 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !1074, !tbaa !473
  store %struct._Py_slist_item_s* %8, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1070, !tbaa !273
  br label %while.cond, !dbg !1075

while.cond:                                       ; preds = %if.end, %for.body
  %9 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1076, !tbaa !273
  %tobool = icmp ne %struct._Py_slist_item_s* %9, null, !dbg !1075
  br i1 %tobool, label %while.body, label %while.end, !dbg !1075

while.body:                                       ; preds = %while.cond
  %10 = bitcast %struct._Py_slist_item_s** %entry_next to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1079
  call void @llvm.dbg.declare(metadata %struct._Py_slist_item_s** %entry_next, metadata !206, metadata !277), !dbg !1080
  %11 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1081, !tbaa !273
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %11, i32 0, i32 0, !dbg !1082
  %12 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !1082, !tbaa !499
  store %struct._Py_slist_item_s* %12, %struct._Py_slist_item_s** %entry_next, align 8, !dbg !1080, !tbaa !273
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1083, !tbaa !273
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 7, !dbg !1085
  %14 = load void (i8*)*, void (i8*)** %free_data_func, align 8, !dbg !1085, !tbaa !398
  %tobool2 = icmp ne void (i8*)* %14, null, !dbg !1083
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1086

if.then:                                          ; preds = %while.body
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1087, !tbaa !273
  %free_data_func3 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 7, !dbg !1088
  %16 = load void (i8*)*, void (i8*)** %free_data_func3, align 8, !dbg !1088, !tbaa !398
  %17 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1089, !tbaa !273
  %18 = bitcast %struct._Py_slist_item_s* %17 to i8*, !dbg !1090
  %add.ptr = getelementptr i8, i8* %18, i64 24, !dbg !1091
  %19 = bitcast i8* %add.ptr to i8**, !dbg !1092
  %20 = load i8*, i8** %19, align 8, !dbg !1093, !tbaa !273
  call void %16(i8* %20), !dbg !1087
  br label %if.end, !dbg !1087

if.end:                                           ; preds = %if.then, %while.body
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1094, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %21, i32 0, i32 9, !dbg !1095
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1, !dbg !1096
  %22 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !1096, !tbaa !764
  %23 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1097, !tbaa !273
  %24 = bitcast %struct._Py_slist_item_s* %23 to i8*, !dbg !1097
  call void %22(i8* %24), !dbg !1094
  %25 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry_next, align 8, !dbg !1098, !tbaa !273
  store %struct._Py_slist_item_s* %25, %struct._Py_slist_item_s** %entry1, align 8, !dbg !1099, !tbaa !273
  %26 = bitcast %struct._Py_slist_item_s** %entry_next to i8*, !dbg !1100
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1100
  br label %while.cond, !dbg !1075

while.end:                                        ; preds = %while.cond
  %27 = bitcast %struct._Py_slist_item_s** %entry1 to i8*, !dbg !1101
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1101
  br label %for.inc, !dbg !1102

for.inc:                                          ; preds = %while.end
  %28 = load i64, i64* %i, align 8, !dbg !1103, !tbaa !297
  %inc = add i64 %28, 1, !dbg !1103
  store i64 %inc, i64* %i, align 8, !dbg !1103, !tbaa !297
  br label %for.cond, !dbg !1104

for.end:                                          ; preds = %for.cond
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1105, !tbaa !273
  %alloc4 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %29, i32 0, i32 9, !dbg !1106
  %free5 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc4, i32 0, i32 1, !dbg !1107
  %30 = load void (i8*)*, void (i8*)** %free5, align 8, !dbg !1107, !tbaa !764
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1108, !tbaa !273
  %buckets6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %31, i32 0, i32 2, !dbg !1109
  %32 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets6, align 8, !dbg !1109, !tbaa !364
  %33 = bitcast %struct._Py_slist_t* %32 to i8*, !dbg !1108
  call void %30(i8* %33), !dbg !1105
  %34 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1110, !tbaa !273
  %alloc7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %34, i32 0, i32 9, !dbg !1111
  %free8 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc7, i32 0, i32 1, !dbg !1112
  %35 = load void (i8*)*, void (i8*)** %free8, align 8, !dbg !1112, !tbaa !764
  %36 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8, !dbg !1113, !tbaa !273
  %37 = bitcast %struct._Py_hashtable_t* %36 to i8*, !dbg !1113
  call void %35(i8* %37), !dbg !1110
  %38 = bitcast i64* %i to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1114
  ret void, !dbg !1114
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* %src) #0 {
entry:
  %retval = alloca %struct._Py_hashtable_t*, align 8
  %src.addr = alloca %struct._Py_hashtable_t*, align 8
  %dst = alloca %struct._Py_hashtable_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %bucket = alloca i64, align 8
  %err = alloca i32, align 4
  %data = alloca i8*, align 8
  %new_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Py_hashtable_t* %src, %struct._Py_hashtable_t** %src.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %src.addr, metadata !212, metadata !277), !dbg !1115
  %0 = bitcast %struct._Py_hashtable_t** %dst to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1116
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_t** %dst, metadata !213, metadata !277), !dbg !1117
  %1 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !1118
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1118
  call void @llvm.dbg.declare(metadata %struct._Py_hashtable_entry_t** %entry1, metadata !214, metadata !277), !dbg !1119
  %2 = bitcast i64* %bucket to i8*, !dbg !1120
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %bucket, metadata !215, metadata !277), !dbg !1121
  %3 = bitcast i32* %err to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %err, metadata !216, metadata !277), !dbg !1123
  %4 = bitcast i8** %data to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1124
  call void @llvm.dbg.declare(metadata i8** %data, metadata !217, metadata !277), !dbg !1125
  %5 = bitcast i8** %new_data to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1124
  call void @llvm.dbg.declare(metadata i8** %new_data, metadata !218, metadata !277), !dbg !1126
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1127, !tbaa !273
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %6, i32 0, i32 3, !dbg !1128
  %7 = load i64, i64* %data_size, align 8, !dbg !1128, !tbaa !353
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1129, !tbaa !273
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 0, !dbg !1130
  %9 = load i64, i64* %num_buckets, align 8, !dbg !1130, !tbaa !343
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1131, !tbaa !273
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 4, !dbg !1132
  %11 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !1132, !tbaa !383
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1133, !tbaa !273
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %12, i32 0, i32 5, !dbg !1134
  %13 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8, !dbg !1134, !tbaa !388
  %14 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1135, !tbaa !273
  %copy_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %14, i32 0, i32 6, !dbg !1136
  %15 = load i8* (i8*)*, i8* (i8*)** %copy_data_func, align 8, !dbg !1136, !tbaa !393
  %16 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1137, !tbaa !273
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %16, i32 0, i32 7, !dbg !1138
  %17 = load void (i8*)*, void (i8*)** %free_data_func, align 8, !dbg !1138, !tbaa !398
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1139, !tbaa !273
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 8, !dbg !1140
  %19 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8, !dbg !1140, !tbaa !403
  %20 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1141, !tbaa !273
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %20, i32 0, i32 9, !dbg !1142
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %7, i64 %9, i64 (i8*)* %11, i32 (i8*, %struct._Py_hashtable_entry_t*)* %13, i8* (i8*)* %15, void (i8*)* %17, i64 (i8*)* %19, %struct._Py_hashtable_allocator_t* %alloc), !dbg !1143
  store %struct._Py_hashtable_t* %call, %struct._Py_hashtable_t** %dst, align 8, !dbg !1144, !tbaa !273
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8, !dbg !1145, !tbaa !273
  %cmp = icmp eq %struct._Py_hashtable_t* %21, null, !dbg !1147
  br i1 %cmp, label %if.then, label %if.end, !dbg !1148

if.then:                                          ; preds = %entry
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval, !dbg !1149
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1149

if.end:                                           ; preds = %entry
  store i64 0, i64* %bucket, align 8, !dbg !1150, !tbaa !297
  br label %for.cond, !dbg !1152

for.cond:                                         ; preds = %for.inc.25, %if.end
  %22 = load i64, i64* %bucket, align 8, !dbg !1153, !tbaa !297
  %23 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1157, !tbaa !273
  %num_buckets2 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %23, i32 0, i32 0, !dbg !1158
  %24 = load i64, i64* %num_buckets2, align 8, !dbg !1158, !tbaa !343
  %cmp3 = icmp ult i64 %22, %24, !dbg !1159
  br i1 %cmp3, label %for.body, label %for.end.26, !dbg !1160

for.body:                                         ; preds = %for.cond
  %25 = load i64, i64* %bucket, align 8, !dbg !1161, !tbaa !297
  %26 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1163, !tbaa !273
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %26, i32 0, i32 2, !dbg !1164
  %27 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !1164, !tbaa !364
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %27, i64 %25, !dbg !1165
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0, !dbg !1166
  %28 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !1166, !tbaa !473
  %29 = bitcast %struct._Py_slist_item_s* %28 to %struct._Py_hashtable_entry_t*, !dbg !1167
  store %struct._Py_hashtable_entry_t* %29, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1168, !tbaa !273
  br label %for.cond.4, !dbg !1169

for.cond.4:                                       ; preds = %for.inc, %for.body
  %30 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1170, !tbaa !273
  %tobool = icmp ne %struct._Py_hashtable_entry_t* %30, null, !dbg !1175
  br i1 %tobool, label %for.body.5, label %for.end, !dbg !1175

for.body.5:                                       ; preds = %for.cond.4
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1176, !tbaa !273
  %copy_data_func6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %31, i32 0, i32 6, !dbg !1179
  %32 = load i8* (i8*)*, i8* (i8*)** %copy_data_func6, align 8, !dbg !1179, !tbaa !393
  %tobool7 = icmp ne i8* (i8*)* %32, null, !dbg !1176
  br i1 %tobool7, label %if.then.8, label %if.else.16, !dbg !1180

if.then.8:                                        ; preds = %for.body.5
  %33 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1181, !tbaa !273
  %34 = bitcast %struct._Py_hashtable_entry_t* %33 to i8*, !dbg !1183
  %add.ptr = getelementptr i8, i8* %34, i64 24, !dbg !1184
  %35 = bitcast i8* %add.ptr to i8**, !dbg !1185
  %36 = load i8*, i8** %35, align 8, !dbg !1186, !tbaa !273
  store i8* %36, i8** %data, align 8, !dbg !1187, !tbaa !273
  %37 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1188, !tbaa !273
  %copy_data_func9 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %37, i32 0, i32 6, !dbg !1189
  %38 = load i8* (i8*)*, i8* (i8*)** %copy_data_func9, align 8, !dbg !1189, !tbaa !393
  %39 = load i8*, i8** %data, align 8, !dbg !1190, !tbaa !273
  %call10 = call i8* %38(i8* %39), !dbg !1188
  store i8* %call10, i8** %new_data, align 8, !dbg !1191, !tbaa !273
  %40 = load i8*, i8** %new_data, align 8, !dbg !1192, !tbaa !273
  %cmp11 = icmp ne i8* %40, null, !dbg !1194
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !1195

if.then.12:                                       ; preds = %if.then.8
  %41 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8, !dbg !1196, !tbaa !273
  %42 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1197, !tbaa !273
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %42, i32 0, i32 1, !dbg !1198
  %43 = load i8*, i8** %key, align 8, !dbg !1198, !tbaa !290
  %44 = bitcast i8** %new_data to i8*, !dbg !1199
  %45 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1200, !tbaa !273
  %data_size13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %45, i32 0, i32 3, !dbg !1201
  %46 = load i64, i64* %data_size13, align 8, !dbg !1201, !tbaa !353
  %call14 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %41, i8* %43, i8* %44, i64 %46), !dbg !1202
  store i32 %call14, i32* %err, align 4, !dbg !1203, !tbaa !960
  br label %if.end.15, !dbg !1204

if.else:                                          ; preds = %if.then.8
  store i32 1, i32* %err, align 4, !dbg !1205, !tbaa !960
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  br label %if.end.21, !dbg !1206

if.else.16:                                       ; preds = %for.body.5
  %47 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1207, !tbaa !273
  %48 = bitcast %struct._Py_hashtable_entry_t* %47 to i8*, !dbg !1209
  %add.ptr17 = getelementptr i8, i8* %48, i64 24, !dbg !1210
  store i8* %add.ptr17, i8** %data, align 8, !dbg !1211, !tbaa !273
  %49 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8, !dbg !1212, !tbaa !273
  %50 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1213, !tbaa !273
  %key18 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %50, i32 0, i32 1, !dbg !1214
  %51 = load i8*, i8** %key18, align 8, !dbg !1214, !tbaa !290
  %52 = load i8*, i8** %data, align 8, !dbg !1215, !tbaa !273
  %53 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8, !dbg !1216, !tbaa !273
  %data_size19 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %53, i32 0, i32 3, !dbg !1217
  %54 = load i64, i64* %data_size19, align 8, !dbg !1217, !tbaa !353
  %call20 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %49, i8* %51, i8* %52, i64 %54), !dbg !1218
  store i32 %call20, i32* %err, align 4, !dbg !1219, !tbaa !960
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.end.15
  %55 = load i32, i32* %err, align 4, !dbg !1220, !tbaa !960
  %tobool22 = icmp ne i32 %55, 0, !dbg !1220
  br i1 %tobool22, label %if.then.23, label %if.end.24, !dbg !1222

if.then.23:                                       ; preds = %if.end.21
  %56 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8, !dbg !1223, !tbaa !273
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %56), !dbg !1225
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval, !dbg !1226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1226

if.end.24:                                        ; preds = %if.end.21
  br label %for.inc, !dbg !1227

for.inc:                                          ; preds = %if.end.24
  %57 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1228, !tbaa !273
  %58 = bitcast %struct._Py_hashtable_entry_t* %57 to %struct._Py_slist_item_s*, !dbg !1229
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %58, i32 0, i32 0, !dbg !1230
  %59 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !1230, !tbaa !499
  %60 = bitcast %struct._Py_slist_item_s* %59 to %struct._Py_hashtable_entry_t*, !dbg !1231
  store %struct._Py_hashtable_entry_t* %60, %struct._Py_hashtable_entry_t** %entry1, align 8, !dbg !1232, !tbaa !273
  br label %for.cond.4, !dbg !1233

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.25, !dbg !1234

for.inc.25:                                       ; preds = %for.end
  %61 = load i64, i64* %bucket, align 8, !dbg !1235, !tbaa !297
  %inc = add i64 %61, 1, !dbg !1235
  store i64 %inc, i64* %bucket, align 8, !dbg !1235, !tbaa !297
  br label %for.cond, !dbg !1236

for.end.26:                                       ; preds = %for.cond
  %62 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8, !dbg !1237, !tbaa !273
  store %struct._Py_hashtable_t* %62, %struct._Py_hashtable_t** %retval, !dbg !1238
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1238

cleanup:                                          ; preds = %for.end.26, %if.then.23, %if.then
  %63 = bitcast i8** %new_data to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !1239
  %64 = bitcast i8** %data to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !1239
  %65 = bitcast i32* %err to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 4, i8* %65) #3, !dbg !1239
  %66 = bitcast i64* %bucket to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !1239
  %67 = bitcast %struct._Py_hashtable_entry_t** %entry1 to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !1239
  %68 = bitcast %struct._Py_hashtable_t** %dst to i8*, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !1239
  %69 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %retval, !dbg !1239
  ret %struct._Py_hashtable_t* %69, !dbg !1239
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_remove(%struct._Py_slist_t* %list, %struct._Py_slist_item_s* %previous, %struct._Py_slist_item_s* %item) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  %previous.addr = alloca %struct._Py_slist_item_s*, align 8
  %item.addr = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_t** %list.addr, metadata !245, metadata !277), !dbg !1240
  store %struct._Py_slist_item_s* %previous, %struct._Py_slist_item_s** %previous.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_item_s** %previous.addr, metadata !246, metadata !277), !dbg !1241
  store %struct._Py_slist_item_s* %item, %struct._Py_slist_item_s** %item.addr, align 8, !tbaa !273
  call void @llvm.dbg.declare(metadata %struct._Py_slist_item_s** %item.addr, metadata !247, metadata !277), !dbg !1242
  %0 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %previous.addr, align 8, !dbg !1243, !tbaa !273
  %cmp = icmp ne %struct._Py_slist_item_s* %0, null, !dbg !1245
  br i1 %cmp, label %if.then, label %if.else, !dbg !1246

if.then:                                          ; preds = %entry
  %1 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8, !dbg !1247, !tbaa !273
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %1, i32 0, i32 0, !dbg !1248
  %2 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !1248, !tbaa !499
  %3 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %previous.addr, align 8, !dbg !1249, !tbaa !273
  %next1 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %3, i32 0, i32 0, !dbg !1250
  store %struct._Py_slist_item_s* %2, %struct._Py_slist_item_s** %next1, align 8, !dbg !1251, !tbaa !499
  br label %if.end, !dbg !1249

if.else:                                          ; preds = %entry
  %4 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8, !dbg !1252, !tbaa !273
  %next2 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %4, i32 0, i32 0, !dbg !1253
  %5 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next2, align 8, !dbg !1253, !tbaa !499
  %6 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8, !dbg !1254, !tbaa !273
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %6, i32 0, i32 0, !dbg !1255
  store %struct._Py_slist_item_s* %5, %struct._Py_slist_item_s** %head, align 8, !dbg !1256, !tbaa !473
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1257
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!270, !271}
!llvm.ident = !{!272}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !80)
!1 = !DIFile(filename: "hashtable.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !9, !10, !75, !18, !76, !77, !23, !79, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !5, line: 189, baseType: !6)
!5 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 62, baseType: !8)
!7 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_t", file: !12, line: 67, baseType: !13)
!12 = !DIFile(filename: "./Modules/hashtable.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 55, size: 704, align: 64, elements: !14)
!14 = !{!15, !16, !17, !29, !30, !37, !51, !56, !61, !66}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !13, file: !12, line: 56, baseType: !6, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !13, file: !12, line: 57, baseType: !6, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !13, file: !12, line: 58, baseType: !18, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_t", file: !12, line: 13, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 11, size: 64, align: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !20, file: !12, line: 12, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_slist_item_t", file: !12, line: 9, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_slist_item_s", file: !12, line: 7, size: 64, align: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !12, line: 8, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !13, file: !12, line: 59, baseType: !6, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "hash_func", scope: !13, file: !12, line: 61, baseType: !31, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_hash_func", file: !12, line: 41, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!4, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "compare_func", scope: !13, file: !12, line: 62, baseType: !38, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_compare_func", file: !12, line: 42, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !35, !43}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_entry_t", file: !12, line: 27, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 19, size: 192, align: 64, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_Py_slist_item", scope: !46, file: !12, line: 21, baseType: !24, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !46, file: !12, line: 23, baseType: !35, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !46, file: !12, line: 24, baseType: !4, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "copy_data_func", scope: !13, file: !12, line: 63, baseType: !52, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_copy_data_func", file: !12, line: 43, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!9, !9}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "free_data_func", scope: !13, file: !12, line: 64, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_free_data_func", file: !12, line: 44, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !9}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "get_data_size_func", scope: !13, file: !12, line: 65, baseType: !62, size: 64, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_get_data_size_func", file: !12, line: 45, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!6, !9}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !13, file: !12, line: 66, baseType: !67, size: 128, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_allocator_t", file: !12, line: 53, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 47, size: 128, align: 64, elements: !69)
!69 = !{!70, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !68, file: !12, line: 49, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!9, !6}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !68, file: !12, line: 52, baseType: !58, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!80 = !{!81, !85, !88, !92, !108, !115, !132, !141, !152, !159, !165, !171, !190, !198, !208, !219, !225, !231, !241, !248, !265}
!81 = !DISubprogram(name: "_Py_hashtable_hash_int", scope: !82, file: !82, line: 91, type: !33, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @_Py_hashtable_hash_int, variables: !83)
!82 = !DIFile(filename: "./Modules/hashtable.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !81, file: !82, line: 91, type: !35)
!85 = !DISubprogram(name: "_Py_hashtable_hash_ptr", scope: !82, file: !82, line: 97, type: !33, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @_Py_hashtable_hash_ptr, variables: !86)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !85, file: !82, line: 97, type: !35)
!88 = !DISubprogram(name: "_Py_hashtable_compare_direct", scope: !82, file: !82, line: 103, type: !40, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct, variables: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !88, file: !82, line: 103, type: !35)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 2, scope: !88, file: !82, line: 103, type: !43)
!92 = !DISubprogram(name: "_Py_hashtable_new_full", scope: !82, file: !82, line: 122, type: !93, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (i64, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t*)* @_Py_hashtable_new_full, variables: !96)
!93 = !DISubroutineType(types: !94)
!94 = !{!10, !6, !6, !31, !38, !52, !57, !62, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !92, file: !82, line: 122, type: !6)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "init_size", arg: 2, scope: !92, file: !82, line: 122, type: !6)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 3, scope: !92, file: !82, line: 123, type: !31)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 4, scope: !92, file: !82, line: 124, type: !38)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "copy_data_func", arg: 5, scope: !92, file: !82, line: 125, type: !52)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "free_data_func", arg: 6, scope: !92, file: !82, line: 126, type: !57)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get_data_size_func", arg: 7, scope: !92, file: !82, line: 127, type: !62)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 8, scope: !92, file: !82, line: 128, type: !95)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ht", scope: !92, file: !82, line: 130, type: !10)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buckets_size", scope: !92, file: !82, line: 131, type: !6)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !92, file: !82, line: 132, type: !67)
!108 = !DISubprogram(name: "_Py_hashtable_new", scope: !82, file: !82, line: 167, type: !109, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*)* @_Py_hashtable_new, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!10, !6, !31, !38}
!111 = !{!112, !113, !114}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !108, file: !82, line: 167, type: !6)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 2, scope: !108, file: !82, line: 168, type: !31)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 3, scope: !108, file: !82, line: 169, type: !38)
!115 = !DISubprogram(name: "_Py_hashtable_size", scope: !82, file: !82, line: 177, type: !116, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._Py_hashtable_t*)* @_Py_hashtable_size, variables: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !10}
!118 = !{!119, !120, !121, !122, !128}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !115, file: !82, line: 177, type: !10)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !115, file: !82, line: 179, type: !6)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hv", scope: !115, file: !82, line: 180, type: !6)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !123, file: !82, line: 193, type: !75)
!123 = distinct !DILexicalBlock(scope: !124, file: !82, line: 192, column: 50)
!124 = distinct !DILexicalBlock(scope: !125, file: !82, line: 192, column: 9)
!125 = distinct !DILexicalBlock(scope: !126, file: !82, line: 192, column: 9)
!126 = distinct !DILexicalBlock(scope: !127, file: !82, line: 191, column: 33)
!127 = distinct !DILexicalBlock(scope: !115, file: !82, line: 191, column: 9)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !129, file: !82, line: 196, type: !9)
!129 = distinct !DILexicalBlock(scope: !130, file: !82, line: 195, column: 177)
!130 = distinct !DILexicalBlock(scope: !131, file: !82, line: 195, column: 13)
!131 = distinct !DILexicalBlock(scope: !123, file: !82, line: 195, column: 13)
!132 = !DISubprogram(name: "_Py_hashtable_get_entry", scope: !82, file: !82, line: 247, type: !133, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_entry_t* (%struct._Py_hashtable_t*, i8*)* @_Py_hashtable_get_entry, variables: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{!75, !10, !35}
!135 = !{!136, !137, !138, !139, !140}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !132, file: !82, line: 247, type: !10)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !132, file: !82, line: 247, type: !35)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !132, file: !82, line: 249, type: !4)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !132, file: !82, line: 250, type: !6)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !132, file: !82, line: 251, type: !75)
!141 = !DISubprogram(name: "_Py_hashtable_set", scope: !82, file: !82, line: 300, type: !142, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_set, variables: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!42, !10, !35, !9, !6}
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !141, file: !82, line: 300, type: !10)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !141, file: !82, line: 300, type: !35)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !141, file: !82, line: 301, type: !9)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !141, file: !82, line: 301, type: !6)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !141, file: !82, line: 303, type: !4)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !141, file: !82, line: 304, type: !6)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !141, file: !82, line: 305, type: !75)
!152 = !DISubprogram(name: "_Py_hashtable_get", scope: !82, file: !82, line: 342, type: !142, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_get, variables: !153)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !152, file: !82, line: 342, type: !10)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !152, file: !82, line: 342, type: !35)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !152, file: !82, line: 342, type: !9)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !152, file: !82, line: 342, type: !6)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !152, file: !82, line: 344, type: !75)
!159 = !DISubprogram(name: "_Py_hashtable_pop", scope: !82, file: !82, line: 356, type: !142, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_pop, variables: !160)
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !159, file: !82, line: 356, type: !10)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !159, file: !82, line: 356, type: !35)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !159, file: !82, line: 356, type: !9)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !159, file: !82, line: 356, type: !6)
!165 = !DISubprogram(name: "_Py_hashtable_delete", scope: !82, file: !82, line: 365, type: !166, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*, i8*)* @_Py_hashtable_delete, variables: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !10, !35}
!168 = !{!169, !170}
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !165, file: !82, line: 365, type: !10)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !165, file: !82, line: 365, type: !35)
!171 = !DISubprogram(name: "_Py_hashtable_foreach", scope: !82, file: !82, line: 379, type: !172, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i32 (%struct._Py_hashtable_entry_t*, i8*)*, i8*)* @_Py_hashtable_foreach, variables: !177)
!172 = !DISubroutineType(types: !173)
!173 = !{!42, !10, !174, !9}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!42, !75, !9}
!177 = !{!178, !179, !180, !181, !182, !183}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !171, file: !82, line: 379, type: !10)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !171, file: !82, line: 380, type: !174)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !171, file: !82, line: 381, type: !9)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !171, file: !82, line: 383, type: !75)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hv", scope: !171, file: !82, line: 384, type: !6)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !184, file: !82, line: 388, type: !42)
!184 = distinct !DILexicalBlock(scope: !185, file: !82, line: 387, column: 173)
!185 = distinct !DILexicalBlock(scope: !186, file: !82, line: 387, column: 9)
!186 = distinct !DILexicalBlock(scope: !187, file: !82, line: 387, column: 9)
!187 = distinct !DILexicalBlock(scope: !188, file: !82, line: 386, column: 46)
!188 = distinct !DILexicalBlock(scope: !189, file: !82, line: 386, column: 5)
!189 = distinct !DILexicalBlock(scope: !171, file: !82, line: 386, column: 5)
!190 = !DISubprogram(name: "_Py_hashtable_clear", scope: !82, file: !82, line: 439, type: !191, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*)* @_Py_hashtable_clear, variables: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !10}
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !190, file: !82, line: 439, type: !10)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !190, file: !82, line: 441, type: !75)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !190, file: !82, line: 441, type: !75)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !190, file: !82, line: 442, type: !6)
!198 = !DISubprogram(name: "_Py_hashtable_destroy", scope: !82, file: !82, line: 458, type: !191, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*)* @_Py_hashtable_destroy, variables: !199)
!199 = !{!200, !201, !202, !206}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !198, file: !82, line: 458, type: !10)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !82, line: 460, type: !6)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !203, file: !82, line: 463, type: !23)
!203 = distinct !DILexicalBlock(scope: !204, file: !82, line: 462, column: 43)
!204 = distinct !DILexicalBlock(scope: !205, file: !82, line: 462, column: 5)
!205 = distinct !DILexicalBlock(scope: !198, file: !82, line: 462, column: 5)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_next", scope: !207, file: !82, line: 465, type: !23)
!207 = distinct !DILexicalBlock(scope: !203, file: !82, line: 464, column: 23)
!208 = !DISubprogram(name: "_Py_hashtable_copy", scope: !82, file: !82, line: 479, type: !209, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (%struct._Py_hashtable_t*)* @_Py_hashtable_copy, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!10, !10}
!211 = !{!212, !213, !214, !215, !216, !217, !218}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !208, file: !82, line: 479, type: !10)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst", scope: !208, file: !82, line: 481, type: !10)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !208, file: !82, line: 482, type: !75)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bucket", scope: !208, file: !82, line: 483, type: !6)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !208, file: !82, line: 484, type: !42)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !208, file: !82, line: 485, type: !9)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_data", scope: !208, file: !82, line: 485, type: !9)
!219 = !DISubprogram(name: "round_size", scope: !82, file: !82, line: 110, type: !220, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @round_size, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!6, !6}
!222 = !{!223, !224}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !219, file: !82, line: 110, type: !6)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !219, file: !82, line: 112, type: !6)
!225 = !DISubprogram(name: "_Py_slist_prepend", scope: !82, file: !82, line: 74, type: !226, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_slist_t*, %struct._Py_slist_item_s*)* @_Py_slist_prepend, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !18, !23}
!228 = !{!229, !230}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !225, file: !82, line: 74, type: !18)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !225, file: !82, line: 74, type: !23)
!231 = !DISubprogram(name: "_hashtable_pop_entry", scope: !82, file: !82, line: 265, type: !142, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_hashtable_pop_entry, variables: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240}
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !231, file: !82, line: 265, type: !10)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !231, file: !82, line: 265, type: !35)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !231, file: !82, line: 265, type: !9)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !231, file: !82, line: 265, type: !6)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !231, file: !82, line: 267, type: !4)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !231, file: !82, line: 268, type: !6)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !231, file: !82, line: 269, type: !75)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous", scope: !231, file: !82, line: 269, type: !75)
!241 = !DISubprogram(name: "_Py_slist_remove", scope: !82, file: !82, line: 81, type: !242, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_slist_t*, %struct._Py_slist_item_s*, %struct._Py_slist_item_s*)* @_Py_slist_remove, variables: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !18, !23, !23}
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !241, file: !82, line: 81, type: !18)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "previous", arg: 2, scope: !241, file: !82, line: 81, type: !23)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 3, scope: !241, file: !82, line: 82, type: !23)
!248 = !DISubprogram(name: "hashtable_rehash", scope: !82, file: !82, line: 397, type: !191, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*)* @hashtable_rehash, variables: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !260, !261}
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !248, file: !82, line: 397, type: !10)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buckets_size", scope: !248, file: !82, line: 399, type: !6)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !248, file: !82, line: 399, type: !6)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bucket", scope: !248, file: !82, line: 399, type: !6)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_buckets", scope: !248, file: !82, line: 400, type: !18)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_num_buckets", scope: !248, file: !82, line: 401, type: !6)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !257, file: !82, line: 423, type: !75)
!257 = distinct !DILexicalBlock(scope: !258, file: !82, line: 422, column: 58)
!258 = distinct !DILexicalBlock(scope: !259, file: !82, line: 422, column: 5)
!259 = distinct !DILexicalBlock(scope: !248, file: !82, line: 422, column: 5)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !257, file: !82, line: 423, type: !75)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_index", scope: !262, file: !82, line: 425, type: !6)
!262 = distinct !DILexicalBlock(scope: !263, file: !82, line: 424, column: 133)
!263 = distinct !DILexicalBlock(scope: !264, file: !82, line: 424, column: 9)
!264 = distinct !DILexicalBlock(scope: !257, file: !82, line: 424, column: 9)
!265 = !DISubprogram(name: "_Py_slist_init", scope: !82, file: !82, line: 68, type: !266, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_slist_t*)* @_Py_slist_init, variables: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !18}
!268 = !{!269}
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !265, file: !82, line: 68, type: !18)
!270 = !{i32 2, !"Dwarf Version", i32 4}
!271 = !{i32 2, !"Debug Info Version", i32 3}
!272 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!273 = !{!274, !274, i64 0}
!274 = !{!"any pointer", !275, i64 0}
!275 = !{!"omnipotent char", !276, i64 0}
!276 = !{!"Simple C/C++ TBAA"}
!277 = !DIExpression()
!278 = !DILocation(line: 91, column: 36, scope: !81)
!279 = !DILocation(line: 93, column: 24, scope: !81)
!280 = !DILocation(line: 93, column: 12, scope: !81)
!281 = !DILocation(line: 93, column: 5, scope: !81)
!282 = !DILocation(line: 97, column: 36, scope: !85)
!283 = !DILocation(line: 99, column: 48, scope: !85)
!284 = !DILocation(line: 99, column: 24, scope: !85)
!285 = !DILocation(line: 99, column: 5, scope: !85)
!286 = !DILocation(line: 103, column: 42, scope: !88)
!287 = !DILocation(line: 103, column: 76, scope: !88)
!288 = !DILocation(line: 105, column: 12, scope: !88)
!289 = !DILocation(line: 105, column: 19, scope: !88)
!290 = !{!291, !274, i64 8}
!291 = !{!"", !292, i64 0, !274, i64 8, !293, i64 16}
!292 = !{!"_Py_slist_item_s", !274, i64 0}
!293 = !{!"long", !275, i64 0}
!294 = !DILocation(line: 105, column: 26, scope: !88)
!295 = !DILocation(line: 105, column: 23, scope: !88)
!296 = !DILocation(line: 105, column: 5, scope: !88)
!297 = !{!293, !293, i64 0}
!298 = !DILocation(line: 122, column: 31, scope: !92)
!299 = !DILocation(line: 122, column: 49, scope: !92)
!300 = !DILocation(line: 123, column: 48, scope: !92)
!301 = !DILocation(line: 124, column: 51, scope: !92)
!302 = !DILocation(line: 125, column: 53, scope: !92)
!303 = !DILocation(line: 126, column: 53, scope: !92)
!304 = !DILocation(line: 127, column: 57, scope: !92)
!305 = !DILocation(line: 128, column: 51, scope: !92)
!306 = !DILocation(line: 130, column: 5, scope: !92)
!307 = !DILocation(line: 130, column: 22, scope: !92)
!308 = !DILocation(line: 131, column: 5, scope: !92)
!309 = !DILocation(line: 131, column: 12, scope: !92)
!310 = !DILocation(line: 132, column: 5, scope: !92)
!311 = !DILocation(line: 132, column: 31, scope: !92)
!312 = !DILocation(line: 134, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !92, file: !82, line: 134, column: 9)
!314 = !DILocation(line: 134, column: 19, scope: !313)
!315 = !DILocation(line: 134, column: 9, scope: !92)
!316 = !DILocation(line: 135, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !82, line: 134, column: 34)
!318 = !DILocation(line: 135, column: 22, scope: !317)
!319 = !{!320, !274, i64 0}
!320 = !{!"", !274, i64 0, !274, i64 8}
!321 = !DILocation(line: 136, column: 15, scope: !317)
!322 = !DILocation(line: 136, column: 20, scope: !317)
!323 = !{!320, !274, i64 8}
!324 = !DILocation(line: 137, column: 5, scope: !317)
!325 = !DILocation(line: 139, column: 18, scope: !313)
!326 = !DILocation(line: 139, column: 17, scope: !313)
!327 = !{i64 0, i64 8, !273, i64 8, i64 8, !273}
!328 = !DILocation(line: 141, column: 35, scope: !92)
!329 = !DILocation(line: 141, column: 29, scope: !92)
!330 = !DILocation(line: 141, column: 10, scope: !92)
!331 = !DILocation(line: 141, column: 8, scope: !92)
!332 = !DILocation(line: 142, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !92, file: !82, line: 142, column: 9)
!334 = !DILocation(line: 142, column: 12, scope: !333)
!335 = !DILocation(line: 142, column: 9, scope: !92)
!336 = !DILocation(line: 143, column: 16, scope: !333)
!337 = !DILocation(line: 143, column: 9, scope: !333)
!338 = !DILocation(line: 145, column: 34, scope: !92)
!339 = !DILocation(line: 145, column: 23, scope: !92)
!340 = !DILocation(line: 145, column: 5, scope: !92)
!341 = !DILocation(line: 145, column: 9, scope: !92)
!342 = !DILocation(line: 145, column: 21, scope: !92)
!343 = !{!344, !293, i64 0}
!344 = !{!"", !293, i64 0, !293, i64 8, !274, i64 16, !293, i64 24, !274, i64 32, !274, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !320, i64 72}
!345 = !DILocation(line: 146, column: 5, scope: !92)
!346 = !DILocation(line: 146, column: 9, scope: !92)
!347 = !DILocation(line: 146, column: 17, scope: !92)
!348 = !{!344, !293, i64 8}
!349 = !DILocation(line: 147, column: 21, scope: !92)
!350 = !DILocation(line: 147, column: 5, scope: !92)
!351 = !DILocation(line: 147, column: 9, scope: !92)
!352 = !DILocation(line: 147, column: 19, scope: !92)
!353 = !{!344, !293, i64 24}
!354 = !DILocation(line: 149, column: 20, scope: !92)
!355 = !DILocation(line: 149, column: 24, scope: !92)
!356 = !DILocation(line: 149, column: 36, scope: !92)
!357 = !DILocation(line: 149, column: 18, scope: !92)
!358 = !DILocation(line: 150, column: 25, scope: !92)
!359 = !DILocation(line: 150, column: 32, scope: !92)
!360 = !DILocation(line: 150, column: 19, scope: !92)
!361 = !DILocation(line: 150, column: 5, scope: !92)
!362 = !DILocation(line: 150, column: 9, scope: !92)
!363 = !DILocation(line: 150, column: 17, scope: !92)
!364 = !{!344, !274, i64 16}
!365 = !DILocation(line: 151, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !92, file: !82, line: 151, column: 9)
!367 = !DILocation(line: 151, column: 13, scope: !366)
!368 = !DILocation(line: 151, column: 21, scope: !366)
!369 = !DILocation(line: 151, column: 9, scope: !92)
!370 = !DILocation(line: 152, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !82, line: 151, column: 36)
!372 = !DILocation(line: 152, column: 20, scope: !371)
!373 = !DILocation(line: 152, column: 9, scope: !371)
!374 = !DILocation(line: 153, column: 9, scope: !371)
!375 = !DILocation(line: 155, column: 12, scope: !92)
!376 = !DILocation(line: 155, column: 16, scope: !92)
!377 = !DILocation(line: 155, column: 5, scope: !92)
!378 = !DILocation(line: 155, column: 28, scope: !92)
!379 = !DILocation(line: 157, column: 21, scope: !92)
!380 = !DILocation(line: 157, column: 5, scope: !92)
!381 = !DILocation(line: 157, column: 9, scope: !92)
!382 = !DILocation(line: 157, column: 19, scope: !92)
!383 = !{!344, !274, i64 32}
!384 = !DILocation(line: 158, column: 24, scope: !92)
!385 = !DILocation(line: 158, column: 5, scope: !92)
!386 = !DILocation(line: 158, column: 9, scope: !92)
!387 = !DILocation(line: 158, column: 22, scope: !92)
!388 = !{!344, !274, i64 40}
!389 = !DILocation(line: 159, column: 26, scope: !92)
!390 = !DILocation(line: 159, column: 5, scope: !92)
!391 = !DILocation(line: 159, column: 9, scope: !92)
!392 = !DILocation(line: 159, column: 24, scope: !92)
!393 = !{!344, !274, i64 48}
!394 = !DILocation(line: 160, column: 26, scope: !92)
!395 = !DILocation(line: 160, column: 5, scope: !92)
!396 = !DILocation(line: 160, column: 9, scope: !92)
!397 = !DILocation(line: 160, column: 24, scope: !92)
!398 = !{!344, !274, i64 56}
!399 = !DILocation(line: 161, column: 30, scope: !92)
!400 = !DILocation(line: 161, column: 5, scope: !92)
!401 = !DILocation(line: 161, column: 9, scope: !92)
!402 = !DILocation(line: 161, column: 28, scope: !92)
!403 = !{!344, !274, i64 64}
!404 = !DILocation(line: 162, column: 5, scope: !92)
!405 = !DILocation(line: 162, column: 9, scope: !92)
!406 = !DILocation(line: 162, column: 17, scope: !92)
!407 = !DILocation(line: 163, column: 12, scope: !92)
!408 = !DILocation(line: 163, column: 5, scope: !92)
!409 = !DILocation(line: 164, column: 1, scope: !92)
!410 = !DILocation(line: 110, column: 19, scope: !219)
!411 = !DILocation(line: 112, column: 5, scope: !219)
!412 = !DILocation(line: 112, column: 12, scope: !219)
!413 = !DILocation(line: 113, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !219, file: !82, line: 113, column: 9)
!415 = !DILocation(line: 113, column: 11, scope: !414)
!416 = !DILocation(line: 113, column: 9, scope: !219)
!417 = !DILocation(line: 114, column: 9, scope: !414)
!418 = !DILocation(line: 115, column: 7, scope: !219)
!419 = !DILocation(line: 116, column: 5, scope: !219)
!420 = !DILocation(line: 116, column: 12, scope: !421)
!421 = !DILexicalBlockFile(scope: !422, file: !82, discriminator: 2)
!422 = !DILexicalBlockFile(scope: !219, file: !82, discriminator: 1)
!423 = !DILocation(line: 116, column: 16, scope: !219)
!424 = !DILocation(line: 116, column: 14, scope: !219)
!425 = !DILocation(line: 117, column: 11, scope: !219)
!426 = !DILocation(line: 118, column: 12, scope: !219)
!427 = !DILocation(line: 118, column: 5, scope: !219)
!428 = !DILocation(line: 119, column: 1, scope: !219)
!429 = !DILocation(line: 167, column: 26, scope: !108)
!430 = !DILocation(line: 168, column: 43, scope: !108)
!431 = !DILocation(line: 169, column: 46, scope: !108)
!432 = !DILocation(line: 171, column: 35, scope: !108)
!433 = !DILocation(line: 172, column: 35, scope: !108)
!434 = !DILocation(line: 172, column: 46, scope: !108)
!435 = !DILocation(line: 171, column: 12, scope: !108)
!436 = !DILocation(line: 171, column: 5, scope: !108)
!437 = !DILocation(line: 177, column: 37, scope: !115)
!438 = !DILocation(line: 179, column: 5, scope: !115)
!439 = !DILocation(line: 179, column: 12, scope: !115)
!440 = !DILocation(line: 180, column: 5, scope: !115)
!441 = !DILocation(line: 180, column: 12, scope: !115)
!442 = !DILocation(line: 182, column: 10, scope: !115)
!443 = !DILocation(line: 185, column: 13, scope: !115)
!444 = !DILocation(line: 185, column: 17, scope: !115)
!445 = !DILocation(line: 185, column: 29, scope: !115)
!446 = !DILocation(line: 185, column: 10, scope: !115)
!447 = !DILocation(line: 188, column: 13, scope: !115)
!448 = !DILocation(line: 188, column: 17, scope: !115)
!449 = !DILocation(line: 188, column: 61, scope: !115)
!450 = !DILocation(line: 188, column: 66, scope: !115)
!451 = !DILocation(line: 188, column: 58, scope: !115)
!452 = !DILocation(line: 188, column: 25, scope: !115)
!453 = !DILocation(line: 188, column: 10, scope: !115)
!454 = !DILocation(line: 191, column: 9, scope: !127)
!455 = !DILocation(line: 191, column: 13, scope: !127)
!456 = !DILocation(line: 191, column: 9, scope: !115)
!457 = !DILocation(line: 192, column: 17, scope: !125)
!458 = !DILocation(line: 192, column: 14, scope: !125)
!459 = !DILocation(line: 192, column: 22, scope: !460)
!460 = !DILexicalBlockFile(scope: !461, file: !82, discriminator: 2)
!461 = !DILexicalBlockFile(scope: !124, file: !82, discriminator: 1)
!462 = !DILocation(line: 192, column: 27, scope: !124)
!463 = !DILocation(line: 192, column: 31, scope: !124)
!464 = !DILocation(line: 192, column: 25, scope: !124)
!465 = !DILocation(line: 192, column: 9, scope: !125)
!466 = !DILocation(line: 193, column: 13, scope: !123)
!467 = !DILocation(line: 193, column: 36, scope: !123)
!468 = !DILocation(line: 195, column: 84, scope: !131)
!469 = !DILocation(line: 195, column: 71, scope: !131)
!470 = !DILocation(line: 195, column: 76, scope: !131)
!471 = !DILocation(line: 195, column: 70, scope: !131)
!472 = !DILocation(line: 195, column: 90, scope: !131)
!473 = !{!474, !274, i64 0}
!474 = !{!"", !274, i64 0}
!475 = !DILocation(line: 195, column: 27, scope: !131)
!476 = !DILocation(line: 195, column: 24, scope: !131)
!477 = !DILocation(line: 195, column: 18, scope: !131)
!478 = !DILocation(line: 195, column: 98, scope: !479)
!479 = !DILexicalBlockFile(scope: !480, file: !82, discriminator: 2)
!480 = !DILexicalBlockFile(scope: !130, file: !82, discriminator: 1)
!481 = !DILocation(line: 195, column: 13, scope: !131)
!482 = !DILocation(line: 196, column: 17, scope: !129)
!483 = !DILocation(line: 196, column: 23, scope: !129)
!484 = !DILocation(line: 198, column: 45, scope: !129)
!485 = !DILocation(line: 198, column: 36, scope: !129)
!486 = !DILocation(line: 198, column: 52, scope: !129)
!487 = !DILocation(line: 198, column: 26, scope: !129)
!488 = !DILocation(line: 198, column: 25, scope: !129)
!489 = !DILocation(line: 198, column: 22, scope: !129)
!490 = !DILocation(line: 199, column: 25, scope: !129)
!491 = !DILocation(line: 199, column: 29, scope: !129)
!492 = !DILocation(line: 199, column: 48, scope: !129)
!493 = !DILocation(line: 199, column: 22, scope: !129)
!494 = !DILocation(line: 200, column: 13, scope: !130)
!495 = !DILocation(line: 200, column: 13, scope: !129)
!496 = !DILocation(line: 195, column: 161, scope: !130)
!497 = !DILocation(line: 195, column: 141, scope: !130)
!498 = !DILocation(line: 195, column: 169, scope: !130)
!499 = !{!292, !274, i64 0}
!500 = !DILocation(line: 195, column: 114, scope: !130)
!501 = !DILocation(line: 195, column: 111, scope: !130)
!502 = !DILocation(line: 195, column: 13, scope: !130)
!503 = !DILocation(line: 201, column: 9, scope: !124)
!504 = !DILocation(line: 201, column: 9, scope: !123)
!505 = !DILocation(line: 192, column: 46, scope: !124)
!506 = !DILocation(line: 192, column: 9, scope: !124)
!507 = !DILocation(line: 202, column: 5, scope: !126)
!508 = !DILocation(line: 203, column: 12, scope: !115)
!509 = !DILocation(line: 204, column: 1, scope: !115)
!510 = !DILocation(line: 203, column: 5, scope: !115)
!511 = !DILocation(line: 247, column: 42, scope: !132)
!512 = !DILocation(line: 247, column: 58, scope: !132)
!513 = !DILocation(line: 249, column: 5, scope: !132)
!514 = !DILocation(line: 249, column: 16, scope: !132)
!515 = !DILocation(line: 250, column: 5, scope: !132)
!516 = !DILocation(line: 250, column: 12, scope: !132)
!517 = !DILocation(line: 251, column: 5, scope: !132)
!518 = !DILocation(line: 251, column: 28, scope: !132)
!519 = !DILocation(line: 253, column: 16, scope: !132)
!520 = !DILocation(line: 253, column: 20, scope: !132)
!521 = !DILocation(line: 253, column: 30, scope: !132)
!522 = !DILocation(line: 253, column: 14, scope: !132)
!523 = !DILocation(line: 254, column: 13, scope: !132)
!524 = !DILocation(line: 254, column: 25, scope: !132)
!525 = !DILocation(line: 254, column: 29, scope: !132)
!526 = !DILocation(line: 254, column: 41, scope: !132)
!527 = !DILocation(line: 254, column: 22, scope: !132)
!528 = !DILocation(line: 254, column: 11, scope: !132)
!529 = !DILocation(line: 256, column: 76, scope: !530)
!530 = distinct !DILexicalBlock(scope: !132, file: !82, line: 256, column: 5)
!531 = !DILocation(line: 256, column: 63, scope: !530)
!532 = !DILocation(line: 256, column: 68, scope: !530)
!533 = !DILocation(line: 256, column: 62, scope: !530)
!534 = !DILocation(line: 256, column: 85, scope: !530)
!535 = !DILocation(line: 256, column: 19, scope: !530)
!536 = !DILocation(line: 256, column: 16, scope: !530)
!537 = !DILocation(line: 256, column: 10, scope: !530)
!538 = !DILocation(line: 256, column: 93, scope: !539)
!539 = !DILexicalBlockFile(scope: !540, file: !82, discriminator: 2)
!540 = !DILexicalBlockFile(scope: !541, file: !82, discriminator: 1)
!541 = distinct !DILexicalBlock(scope: !530, file: !82, line: 256, column: 5)
!542 = !DILocation(line: 256, column: 99, scope: !541)
!543 = !DILocation(line: 256, column: 5, scope: !530)
!544 = !DILocation(line: 257, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !82, line: 257, column: 13)
!546 = distinct !DILexicalBlock(scope: !541, file: !82, line: 256, column: 186)
!547 = !DILocation(line: 257, column: 20, scope: !545)
!548 = !{!291, !293, i64 16}
!549 = !DILocation(line: 257, column: 32, scope: !545)
!550 = !DILocation(line: 257, column: 29, scope: !545)
!551 = !DILocation(line: 257, column: 41, scope: !545)
!552 = !DILocation(line: 257, column: 44, scope: !553)
!553 = !DILexicalBlockFile(scope: !545, file: !82, discriminator: 1)
!554 = !DILocation(line: 257, column: 48, scope: !545)
!555 = !DILocation(line: 257, column: 61, scope: !545)
!556 = !DILocation(line: 257, column: 66, scope: !545)
!557 = !DILocation(line: 257, column: 44, scope: !545)
!558 = !DILocation(line: 257, column: 13, scope: !546)
!559 = !DILocation(line: 258, column: 13, scope: !545)
!560 = !DILocation(line: 259, column: 5, scope: !546)
!561 = !DILocation(line: 256, column: 170, scope: !541)
!562 = !DILocation(line: 256, column: 150, scope: !541)
!563 = !DILocation(line: 256, column: 178, scope: !541)
!564 = !DILocation(line: 256, column: 123, scope: !541)
!565 = !DILocation(line: 256, column: 120, scope: !541)
!566 = !DILocation(line: 256, column: 5, scope: !541)
!567 = !DILocation(line: 261, column: 12, scope: !132)
!568 = !DILocation(line: 262, column: 1, scope: !132)
!569 = !DILocation(line: 261, column: 5, scope: !132)
!570 = !DILocation(line: 300, column: 36, scope: !141)
!571 = !DILocation(line: 300, column: 52, scope: !141)
!572 = !DILocation(line: 301, column: 25, scope: !141)
!573 = !DILocation(line: 301, column: 38, scope: !141)
!574 = !DILocation(line: 303, column: 5, scope: !141)
!575 = !DILocation(line: 303, column: 16, scope: !141)
!576 = !DILocation(line: 304, column: 5, scope: !141)
!577 = !DILocation(line: 304, column: 12, scope: !141)
!578 = !DILocation(line: 305, column: 5, scope: !141)
!579 = !DILocation(line: 305, column: 28, scope: !141)
!580 = !DILocation(line: 316, column: 16, scope: !141)
!581 = !DILocation(line: 316, column: 20, scope: !141)
!582 = !DILocation(line: 316, column: 30, scope: !141)
!583 = !DILocation(line: 316, column: 14, scope: !141)
!584 = !DILocation(line: 317, column: 13, scope: !141)
!585 = !DILocation(line: 317, column: 25, scope: !141)
!586 = !DILocation(line: 317, column: 29, scope: !141)
!587 = !DILocation(line: 317, column: 41, scope: !141)
!588 = !DILocation(line: 317, column: 22, scope: !141)
!589 = !DILocation(line: 317, column: 11, scope: !141)
!590 = !DILocation(line: 319, column: 13, scope: !141)
!591 = !DILocation(line: 319, column: 17, scope: !141)
!592 = !DILocation(line: 319, column: 23, scope: !141)
!593 = !{!344, !274, i64 72}
!594 = !DILocation(line: 319, column: 64, scope: !141)
!595 = !DILocation(line: 319, column: 69, scope: !141)
!596 = !DILocation(line: 319, column: 61, scope: !141)
!597 = !DILocation(line: 319, column: 11, scope: !141)
!598 = !DILocation(line: 320, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !141, file: !82, line: 320, column: 9)
!600 = !DILocation(line: 320, column: 15, scope: !599)
!601 = !DILocation(line: 320, column: 9, scope: !141)
!602 = !DILocation(line: 322, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !82, line: 320, column: 30)
!604 = !DILocation(line: 325, column: 26, scope: !141)
!605 = !DILocation(line: 325, column: 5, scope: !141)
!606 = !DILocation(line: 325, column: 12, scope: !141)
!607 = !DILocation(line: 325, column: 16, scope: !141)
!608 = !DILocation(line: 326, column: 23, scope: !141)
!609 = !DILocation(line: 326, column: 5, scope: !141)
!610 = !DILocation(line: 326, column: 12, scope: !141)
!611 = !DILocation(line: 326, column: 21, scope: !141)
!612 = !DILocation(line: 329, column: 22, scope: !141)
!613 = !DILocation(line: 329, column: 13, scope: !141)
!614 = !DILocation(line: 329, column: 29, scope: !141)
!615 = !DILocation(line: 329, column: 63, scope: !141)
!616 = !DILocation(line: 329, column: 69, scope: !141)
!617 = !DILocation(line: 329, column: 5, scope: !141)
!618 = !DILocation(line: 331, column: 36, scope: !141)
!619 = !DILocation(line: 331, column: 24, scope: !141)
!620 = !DILocation(line: 331, column: 28, scope: !141)
!621 = !DILocation(line: 331, column: 63, scope: !141)
!622 = !DILocation(line: 331, column: 44, scope: !141)
!623 = !DILocation(line: 331, column: 5, scope: !141)
!624 = !DILocation(line: 332, column: 5, scope: !141)
!625 = !DILocation(line: 332, column: 9, scope: !141)
!626 = !DILocation(line: 332, column: 16, scope: !141)
!627 = !DILocation(line: 334, column: 16, scope: !628)
!628 = distinct !DILexicalBlock(scope: !141, file: !82, line: 334, column: 9)
!629 = !DILocation(line: 334, column: 20, scope: !628)
!630 = !DILocation(line: 334, column: 9, scope: !628)
!631 = !DILocation(line: 334, column: 37, scope: !628)
!632 = !DILocation(line: 334, column: 41, scope: !628)
!633 = !DILocation(line: 334, column: 30, scope: !628)
!634 = !DILocation(line: 334, column: 28, scope: !628)
!635 = !DILocation(line: 334, column: 53, scope: !628)
!636 = !DILocation(line: 334, column: 9, scope: !141)
!637 = !DILocation(line: 335, column: 26, scope: !628)
!638 = !DILocation(line: 335, column: 9, scope: !628)
!639 = !DILocation(line: 336, column: 5, scope: !141)
!640 = !DILocation(line: 337, column: 1, scope: !141)
!641 = !DILocation(line: 74, column: 32, scope: !225)
!642 = !DILocation(line: 74, column: 56, scope: !225)
!643 = !DILocation(line: 76, column: 18, scope: !225)
!644 = !DILocation(line: 76, column: 24, scope: !225)
!645 = !DILocation(line: 76, column: 5, scope: !225)
!646 = !DILocation(line: 76, column: 11, scope: !225)
!647 = !DILocation(line: 76, column: 16, scope: !225)
!648 = !DILocation(line: 77, column: 18, scope: !225)
!649 = !DILocation(line: 77, column: 5, scope: !225)
!650 = !DILocation(line: 77, column: 11, scope: !225)
!651 = !DILocation(line: 77, column: 16, scope: !225)
!652 = !DILocation(line: 78, column: 1, scope: !225)
!653 = !DILocation(line: 397, column: 35, scope: !248)
!654 = !DILocation(line: 399, column: 5, scope: !248)
!655 = !DILocation(line: 399, column: 12, scope: !248)
!656 = !DILocation(line: 399, column: 26, scope: !248)
!657 = !DILocation(line: 399, column: 36, scope: !248)
!658 = !DILocation(line: 400, column: 5, scope: !248)
!659 = !DILocation(line: 400, column: 18, scope: !248)
!660 = !DILocation(line: 401, column: 5, scope: !248)
!661 = !DILocation(line: 401, column: 12, scope: !248)
!662 = !DILocation(line: 403, column: 36, scope: !248)
!663 = !DILocation(line: 403, column: 40, scope: !248)
!664 = !DILocation(line: 403, column: 48, scope: !248)
!665 = !DILocation(line: 403, column: 54, scope: !248)
!666 = !DILocation(line: 403, column: 27, scope: !248)
!667 = !DILocation(line: 403, column: 16, scope: !248)
!668 = !DILocation(line: 403, column: 14, scope: !248)
!669 = !DILocation(line: 404, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !248, file: !82, line: 404, column: 9)
!671 = !DILocation(line: 404, column: 21, scope: !670)
!672 = !DILocation(line: 404, column: 25, scope: !670)
!673 = !DILocation(line: 404, column: 18, scope: !670)
!674 = !DILocation(line: 404, column: 9, scope: !248)
!675 = !DILocation(line: 405, column: 9, scope: !670)
!676 = !DILocation(line: 407, column: 23, scope: !248)
!677 = !DILocation(line: 407, column: 27, scope: !248)
!678 = !DILocation(line: 407, column: 21, scope: !248)
!679 = !DILocation(line: 409, column: 20, scope: !248)
!680 = !DILocation(line: 409, column: 29, scope: !248)
!681 = !DILocation(line: 409, column: 18, scope: !248)
!682 = !DILocation(line: 410, column: 19, scope: !248)
!683 = !DILocation(line: 410, column: 23, scope: !248)
!684 = !DILocation(line: 410, column: 17, scope: !248)
!685 = !DILocation(line: 411, column: 19, scope: !248)
!686 = !DILocation(line: 411, column: 23, scope: !248)
!687 = !DILocation(line: 411, column: 29, scope: !248)
!688 = !DILocation(line: 411, column: 36, scope: !248)
!689 = !DILocation(line: 411, column: 5, scope: !248)
!690 = !DILocation(line: 411, column: 9, scope: !248)
!691 = !DILocation(line: 411, column: 17, scope: !248)
!692 = !DILocation(line: 412, column: 9, scope: !693)
!693 = distinct !DILexicalBlock(scope: !248, file: !82, line: 412, column: 9)
!694 = !DILocation(line: 412, column: 13, scope: !693)
!695 = !DILocation(line: 412, column: 21, scope: !693)
!696 = !DILocation(line: 412, column: 9, scope: !248)
!697 = !DILocation(line: 414, column: 23, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !82, line: 412, column: 36)
!699 = !DILocation(line: 414, column: 9, scope: !698)
!700 = !DILocation(line: 414, column: 13, scope: !698)
!701 = !DILocation(line: 414, column: 21, scope: !698)
!702 = !DILocation(line: 416, column: 9, scope: !698)
!703 = !DILocation(line: 418, column: 12, scope: !248)
!704 = !DILocation(line: 418, column: 16, scope: !248)
!705 = !DILocation(line: 418, column: 5, scope: !248)
!706 = !DILocation(line: 418, column: 28, scope: !248)
!707 = !DILocation(line: 420, column: 23, scope: !248)
!708 = !DILocation(line: 420, column: 5, scope: !248)
!709 = !DILocation(line: 420, column: 9, scope: !248)
!710 = !DILocation(line: 420, column: 21, scope: !248)
!711 = !DILocation(line: 422, column: 17, scope: !259)
!712 = !DILocation(line: 422, column: 10, scope: !259)
!713 = !DILocation(line: 422, column: 22, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !82, discriminator: 2)
!715 = !DILexicalBlockFile(scope: !258, file: !82, discriminator: 1)
!716 = !DILocation(line: 422, column: 31, scope: !258)
!717 = !DILocation(line: 422, column: 29, scope: !258)
!718 = !DILocation(line: 422, column: 5, scope: !259)
!719 = !DILocation(line: 423, column: 9, scope: !257)
!720 = !DILocation(line: 423, column: 32, scope: !257)
!721 = !DILocation(line: 423, column: 40, scope: !257)
!722 = !DILocation(line: 424, column: 79, scope: !264)
!723 = !DILocation(line: 424, column: 67, scope: !264)
!724 = !DILocation(line: 424, column: 90, scope: !264)
!725 = !DILocation(line: 424, column: 23, scope: !264)
!726 = !DILocation(line: 424, column: 20, scope: !264)
!727 = !DILocation(line: 424, column: 14, scope: !264)
!728 = !DILocation(line: 424, column: 98, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !82, discriminator: 2)
!730 = !DILexicalBlockFile(scope: !263, file: !82, discriminator: 1)
!731 = !DILocation(line: 424, column: 104, scope: !263)
!732 = !DILocation(line: 424, column: 9, scope: !264)
!733 = !DILocation(line: 425, column: 13, scope: !262)
!734 = !DILocation(line: 425, column: 20, scope: !262)
!735 = !DILocation(line: 428, column: 68, scope: !262)
!736 = !DILocation(line: 428, column: 48, scope: !262)
!737 = !DILocation(line: 428, column: 76, scope: !262)
!738 = !DILocation(line: 428, column: 21, scope: !262)
!739 = !DILocation(line: 428, column: 18, scope: !262)
!740 = !DILocation(line: 429, column: 27, scope: !262)
!741 = !DILocation(line: 429, column: 34, scope: !262)
!742 = !DILocation(line: 429, column: 46, scope: !262)
!743 = !DILocation(line: 429, column: 55, scope: !262)
!744 = !DILocation(line: 429, column: 43, scope: !262)
!745 = !DILocation(line: 429, column: 25, scope: !262)
!746 = !DILocation(line: 431, column: 44, scope: !262)
!747 = !DILocation(line: 431, column: 32, scope: !262)
!748 = !DILocation(line: 431, column: 36, scope: !262)
!749 = !DILocation(line: 431, column: 77, scope: !262)
!750 = !DILocation(line: 431, column: 58, scope: !262)
!751 = !DILocation(line: 431, column: 13, scope: !262)
!752 = !DILocation(line: 432, column: 9, scope: !263)
!753 = !DILocation(line: 432, column: 9, scope: !262)
!754 = !DILocation(line: 424, column: 127, scope: !263)
!755 = !DILocation(line: 424, column: 125, scope: !263)
!756 = !DILocation(line: 424, column: 9, scope: !263)
!757 = !DILocation(line: 433, column: 5, scope: !258)
!758 = !DILocation(line: 433, column: 5, scope: !257)
!759 = !DILocation(line: 422, column: 54, scope: !258)
!760 = !DILocation(line: 422, column: 5, scope: !258)
!761 = !DILocation(line: 435, column: 5, scope: !248)
!762 = !DILocation(line: 435, column: 9, scope: !248)
!763 = !DILocation(line: 435, column: 15, scope: !248)
!764 = !{!344, !274, i64 80}
!765 = !DILocation(line: 435, column: 20, scope: !248)
!766 = !DILocation(line: 436, column: 1, scope: !248)
!767 = !DILocation(line: 436, column: 1, scope: !768)
!768 = !DILexicalBlockFile(scope: !248, file: !82, discriminator: 1)
!769 = !DILocation(line: 342, column: 36, scope: !152)
!770 = !DILocation(line: 342, column: 52, scope: !152)
!771 = !DILocation(line: 342, column: 63, scope: !152)
!772 = !DILocation(line: 342, column: 76, scope: !152)
!773 = !DILocation(line: 344, column: 5, scope: !152)
!774 = !DILocation(line: 344, column: 28, scope: !152)
!775 = !DILocation(line: 348, column: 37, scope: !152)
!776 = !DILocation(line: 348, column: 41, scope: !152)
!777 = !DILocation(line: 348, column: 13, scope: !152)
!778 = !DILocation(line: 348, column: 11, scope: !152)
!779 = !DILocation(line: 349, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !152, file: !82, line: 349, column: 9)
!781 = !DILocation(line: 349, column: 15, scope: !780)
!782 = !DILocation(line: 349, column: 9, scope: !152)
!783 = !DILocation(line: 350, column: 9, scope: !780)
!784 = !DILocation(line: 351, column: 5, scope: !152)
!785 = !DILocation(line: 351, column: 31, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !82, discriminator: 1)
!787 = distinct !DILexicalBlock(scope: !152, file: !82, line: 351, column: 8)
!788 = !DILocation(line: 351, column: 47, scope: !787)
!789 = !DILocation(line: 351, column: 38, scope: !787)
!790 = !DILocation(line: 351, column: 54, scope: !787)
!791 = !DILocation(line: 351, column: 88, scope: !787)
!792 = !DILocation(line: 351, column: 24, scope: !787)
!793 = !DILocation(line: 351, column: 100, scope: !787)
!794 = !DILocation(line: 351, column: 100, scope: !795)
!795 = !DILexicalBlockFile(scope: !787, file: !82, discriminator: 2)
!796 = !DILocation(line: 352, column: 5, scope: !152)
!797 = !DILocation(line: 353, column: 1, scope: !152)
!798 = !DILocation(line: 356, column: 36, scope: !159)
!799 = !DILocation(line: 356, column: 52, scope: !159)
!800 = !DILocation(line: 356, column: 63, scope: !159)
!801 = !DILocation(line: 356, column: 76, scope: !159)
!802 = !DILocation(line: 360, column: 33, scope: !159)
!803 = !DILocation(line: 360, column: 37, scope: !159)
!804 = !DILocation(line: 360, column: 42, scope: !159)
!805 = !DILocation(line: 360, column: 48, scope: !159)
!806 = !DILocation(line: 360, column: 12, scope: !159)
!807 = !DILocation(line: 360, column: 5, scope: !159)
!808 = !DILocation(line: 265, column: 39, scope: !231)
!809 = !DILocation(line: 265, column: 55, scope: !231)
!810 = !DILocation(line: 265, column: 66, scope: !231)
!811 = !DILocation(line: 265, column: 79, scope: !231)
!812 = !DILocation(line: 267, column: 5, scope: !231)
!813 = !DILocation(line: 267, column: 16, scope: !231)
!814 = !DILocation(line: 268, column: 5, scope: !231)
!815 = !DILocation(line: 268, column: 12, scope: !231)
!816 = !DILocation(line: 269, column: 5, scope: !231)
!817 = !DILocation(line: 269, column: 28, scope: !231)
!818 = !DILocation(line: 269, column: 36, scope: !231)
!819 = !DILocation(line: 271, column: 16, scope: !231)
!820 = !DILocation(line: 271, column: 20, scope: !231)
!821 = !DILocation(line: 271, column: 30, scope: !231)
!822 = !DILocation(line: 271, column: 14, scope: !231)
!823 = !DILocation(line: 272, column: 13, scope: !231)
!824 = !DILocation(line: 272, column: 25, scope: !231)
!825 = !DILocation(line: 272, column: 29, scope: !231)
!826 = !DILocation(line: 272, column: 41, scope: !231)
!827 = !DILocation(line: 272, column: 22, scope: !231)
!828 = !DILocation(line: 272, column: 11, scope: !231)
!829 = !DILocation(line: 274, column: 14, scope: !231)
!830 = !DILocation(line: 275, column: 76, scope: !831)
!831 = distinct !DILexicalBlock(scope: !231, file: !82, line: 275, column: 5)
!832 = !DILocation(line: 275, column: 63, scope: !831)
!833 = !DILocation(line: 275, column: 68, scope: !831)
!834 = !DILocation(line: 275, column: 62, scope: !831)
!835 = !DILocation(line: 275, column: 85, scope: !831)
!836 = !DILocation(line: 275, column: 19, scope: !831)
!837 = !DILocation(line: 275, column: 16, scope: !831)
!838 = !DILocation(line: 275, column: 10, scope: !831)
!839 = !DILocation(line: 275, column: 93, scope: !840)
!840 = !DILexicalBlockFile(scope: !841, file: !82, discriminator: 2)
!841 = !DILexicalBlockFile(scope: !842, file: !82, discriminator: 1)
!842 = distinct !DILexicalBlock(scope: !831, file: !82, line: 275, column: 5)
!843 = !DILocation(line: 275, column: 99, scope: !842)
!844 = !DILocation(line: 275, column: 5, scope: !831)
!845 = !DILocation(line: 276, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !82, line: 276, column: 13)
!847 = distinct !DILexicalBlock(scope: !842, file: !82, line: 275, column: 186)
!848 = !DILocation(line: 276, column: 20, scope: !846)
!849 = !DILocation(line: 276, column: 32, scope: !846)
!850 = !DILocation(line: 276, column: 29, scope: !846)
!851 = !DILocation(line: 276, column: 41, scope: !846)
!852 = !DILocation(line: 276, column: 44, scope: !853)
!853 = !DILexicalBlockFile(scope: !846, file: !82, discriminator: 1)
!854 = !DILocation(line: 276, column: 48, scope: !846)
!855 = !DILocation(line: 276, column: 61, scope: !846)
!856 = !DILocation(line: 276, column: 66, scope: !846)
!857 = !DILocation(line: 276, column: 44, scope: !846)
!858 = !DILocation(line: 276, column: 13, scope: !847)
!859 = !DILocation(line: 277, column: 13, scope: !846)
!860 = !DILocation(line: 278, column: 20, scope: !847)
!861 = !DILocation(line: 278, column: 18, scope: !847)
!862 = !DILocation(line: 279, column: 5, scope: !847)
!863 = !DILocation(line: 275, column: 170, scope: !842)
!864 = !DILocation(line: 275, column: 150, scope: !842)
!865 = !DILocation(line: 275, column: 178, scope: !842)
!866 = !DILocation(line: 275, column: 123, scope: !842)
!867 = !DILocation(line: 275, column: 120, scope: !842)
!868 = !DILocation(line: 275, column: 5, scope: !842)
!869 = !DILocation(line: 281, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !231, file: !82, line: 281, column: 9)
!871 = !DILocation(line: 281, column: 15, scope: !870)
!872 = !DILocation(line: 281, column: 9, scope: !231)
!873 = !DILocation(line: 282, column: 9, scope: !870)
!874 = !DILocation(line: 284, column: 35, scope: !231)
!875 = !DILocation(line: 284, column: 23, scope: !231)
!876 = !DILocation(line: 284, column: 27, scope: !231)
!877 = !DILocation(line: 284, column: 63, scope: !231)
!878 = !DILocation(line: 284, column: 43, scope: !231)
!879 = !DILocation(line: 285, column: 42, scope: !231)
!880 = !DILocation(line: 285, column: 22, scope: !231)
!881 = !DILocation(line: 284, column: 5, scope: !231)
!882 = !DILocation(line: 286, column: 5, scope: !231)
!883 = !DILocation(line: 286, column: 9, scope: !231)
!884 = !DILocation(line: 286, column: 16, scope: !231)
!885 = !DILocation(line: 288, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !231, file: !82, line: 288, column: 9)
!887 = !DILocation(line: 288, column: 14, scope: !886)
!888 = !DILocation(line: 288, column: 9, scope: !231)
!889 = !DILocation(line: 289, column: 9, scope: !886)
!890 = !DILocation(line: 289, column: 35, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !82, discriminator: 1)
!892 = distinct !DILexicalBlock(scope: !886, file: !82, line: 289, column: 12)
!893 = !DILocation(line: 289, column: 51, scope: !892)
!894 = !DILocation(line: 289, column: 42, scope: !892)
!895 = !DILocation(line: 289, column: 58, scope: !892)
!896 = !DILocation(line: 289, column: 92, scope: !892)
!897 = !DILocation(line: 289, column: 28, scope: !892)
!898 = !DILocation(line: 289, column: 104, scope: !892)
!899 = !DILocation(line: 289, column: 104, scope: !900)
!900 = !DILexicalBlockFile(scope: !892, file: !82, discriminator: 2)
!901 = !DILocation(line: 289, column: 104, scope: !902)
!902 = !DILexicalBlockFile(scope: !892, file: !82, discriminator: 3)
!903 = !DILocation(line: 290, column: 5, scope: !231)
!904 = !DILocation(line: 290, column: 9, scope: !231)
!905 = !DILocation(line: 290, column: 15, scope: !231)
!906 = !DILocation(line: 290, column: 20, scope: !231)
!907 = !DILocation(line: 292, column: 16, scope: !908)
!908 = distinct !DILexicalBlock(scope: !231, file: !82, line: 292, column: 9)
!909 = !DILocation(line: 292, column: 20, scope: !908)
!910 = !DILocation(line: 292, column: 9, scope: !908)
!911 = !DILocation(line: 292, column: 37, scope: !908)
!912 = !DILocation(line: 292, column: 41, scope: !908)
!913 = !DILocation(line: 292, column: 30, scope: !908)
!914 = !DILocation(line: 292, column: 28, scope: !908)
!915 = !DILocation(line: 292, column: 53, scope: !908)
!916 = !DILocation(line: 292, column: 9, scope: !231)
!917 = !DILocation(line: 293, column: 26, scope: !908)
!918 = !DILocation(line: 293, column: 9, scope: !908)
!919 = !DILocation(line: 294, column: 5, scope: !231)
!920 = !DILocation(line: 295, column: 1, scope: !231)
!921 = !DILocation(line: 365, column: 39, scope: !165)
!922 = !DILocation(line: 365, column: 55, scope: !165)
!923 = !DILocation(line: 371, column: 32, scope: !165)
!924 = !DILocation(line: 371, column: 36, scope: !165)
!925 = !DILocation(line: 371, column: 11, scope: !165)
!926 = !DILocation(line: 373, column: 1, scope: !165)
!927 = !DILocation(line: 379, column: 40, scope: !171)
!928 = !DILocation(line: 380, column: 29, scope: !171)
!929 = !DILocation(line: 381, column: 29, scope: !171)
!930 = !DILocation(line: 383, column: 5, scope: !171)
!931 = !DILocation(line: 383, column: 28, scope: !171)
!932 = !DILocation(line: 384, column: 5, scope: !171)
!933 = !DILocation(line: 384, column: 12, scope: !171)
!934 = !DILocation(line: 386, column: 13, scope: !189)
!935 = !DILocation(line: 386, column: 10, scope: !189)
!936 = !DILocation(line: 386, column: 18, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !82, discriminator: 2)
!938 = !DILexicalBlockFile(scope: !188, file: !82, discriminator: 1)
!939 = !DILocation(line: 386, column: 23, scope: !188)
!940 = !DILocation(line: 386, column: 27, scope: !188)
!941 = !DILocation(line: 386, column: 21, scope: !188)
!942 = !DILocation(line: 386, column: 5, scope: !189)
!943 = !DILocation(line: 387, column: 80, scope: !186)
!944 = !DILocation(line: 387, column: 67, scope: !186)
!945 = !DILocation(line: 387, column: 72, scope: !186)
!946 = !DILocation(line: 387, column: 66, scope: !186)
!947 = !DILocation(line: 387, column: 86, scope: !186)
!948 = !DILocation(line: 387, column: 23, scope: !186)
!949 = !DILocation(line: 387, column: 20, scope: !186)
!950 = !DILocation(line: 387, column: 14, scope: !186)
!951 = !DILocation(line: 387, column: 94, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !82, discriminator: 2)
!953 = !DILexicalBlockFile(scope: !185, file: !82, discriminator: 1)
!954 = !DILocation(line: 387, column: 9, scope: !186)
!955 = !DILocation(line: 388, column: 13, scope: !184)
!956 = !DILocation(line: 388, column: 17, scope: !184)
!957 = !DILocation(line: 388, column: 23, scope: !184)
!958 = !DILocation(line: 388, column: 28, scope: !184)
!959 = !DILocation(line: 388, column: 35, scope: !184)
!960 = !{!961, !961, i64 0}
!961 = !{!"int", !275, i64 0}
!962 = !DILocation(line: 389, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !184, file: !82, line: 389, column: 17)
!964 = !DILocation(line: 389, column: 17, scope: !184)
!965 = !DILocation(line: 390, column: 24, scope: !963)
!966 = !DILocation(line: 390, column: 17, scope: !963)
!967 = !DILocation(line: 391, column: 9, scope: !185)
!968 = !DILocation(line: 391, column: 9, scope: !953)
!969 = !DILocation(line: 391, column: 9, scope: !184)
!970 = !DILocation(line: 387, column: 157, scope: !185)
!971 = !DILocation(line: 387, column: 137, scope: !185)
!972 = !DILocation(line: 387, column: 165, scope: !185)
!973 = !DILocation(line: 387, column: 110, scope: !185)
!974 = !DILocation(line: 387, column: 107, scope: !185)
!975 = !DILocation(line: 387, column: 9, scope: !185)
!976 = !DILocation(line: 392, column: 5, scope: !187)
!977 = !DILocation(line: 386, column: 42, scope: !188)
!978 = !DILocation(line: 386, column: 5, scope: !188)
!979 = !DILocation(line: 393, column: 5, scope: !171)
!980 = !DILocation(line: 394, column: 1, scope: !171)
!981 = !DILocation(line: 439, column: 38, scope: !190)
!982 = !DILocation(line: 441, column: 5, scope: !190)
!983 = !DILocation(line: 441, column: 28, scope: !190)
!984 = !DILocation(line: 441, column: 36, scope: !190)
!985 = !DILocation(line: 442, column: 5, scope: !190)
!986 = !DILocation(line: 442, column: 12, scope: !190)
!987 = !DILocation(line: 444, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !190, file: !82, line: 444, column: 5)
!989 = !DILocation(line: 444, column: 10, scope: !988)
!990 = !DILocation(line: 444, column: 15, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !82, discriminator: 2)
!992 = !DILexicalBlockFile(scope: !993, file: !82, discriminator: 1)
!993 = distinct !DILexicalBlock(scope: !988, file: !82, line: 444, column: 5)
!994 = !DILocation(line: 444, column: 19, scope: !993)
!995 = !DILocation(line: 444, column: 23, scope: !993)
!996 = !DILocation(line: 444, column: 17, scope: !993)
!997 = !DILocation(line: 444, column: 5, scope: !988)
!998 = !DILocation(line: 445, column: 80, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !82, line: 445, column: 9)
!1000 = distinct !DILexicalBlock(scope: !993, file: !82, line: 444, column: 41)
!1001 = !DILocation(line: 445, column: 67, scope: !999)
!1002 = !DILocation(line: 445, column: 72, scope: !999)
!1003 = !DILocation(line: 445, column: 66, scope: !999)
!1004 = !DILocation(line: 445, column: 85, scope: !999)
!1005 = !DILocation(line: 445, column: 23, scope: !999)
!1006 = !DILocation(line: 445, column: 20, scope: !999)
!1007 = !DILocation(line: 445, column: 14, scope: !999)
!1008 = !DILocation(line: 445, column: 93, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !82, discriminator: 2)
!1010 = !DILexicalBlockFile(scope: !1011, file: !82, discriminator: 1)
!1011 = distinct !DILexicalBlock(scope: !999, file: !82, line: 445, column: 9)
!1012 = !DILocation(line: 445, column: 99, scope: !1011)
!1013 = !DILocation(line: 445, column: 9, scope: !999)
!1014 = !DILocation(line: 446, column: 68, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !82, line: 445, column: 128)
!1016 = !DILocation(line: 446, column: 48, scope: !1015)
!1017 = !DILocation(line: 446, column: 76, scope: !1015)
!1018 = !DILocation(line: 446, column: 21, scope: !1015)
!1019 = !DILocation(line: 446, column: 18, scope: !1015)
!1020 = !DILocation(line: 447, column: 17, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !82, line: 447, column: 17)
!1022 = !DILocation(line: 447, column: 21, scope: !1021)
!1023 = !DILocation(line: 447, column: 17, scope: !1015)
!1024 = !DILocation(line: 448, column: 17, scope: !1021)
!1025 = !DILocation(line: 448, column: 21, scope: !1021)
!1026 = !DILocation(line: 448, column: 57, scope: !1021)
!1027 = !DILocation(line: 448, column: 48, scope: !1021)
!1028 = !DILocation(line: 448, column: 64, scope: !1021)
!1029 = !DILocation(line: 448, column: 38, scope: !1021)
!1030 = !DILocation(line: 448, column: 37, scope: !1021)
!1031 = !DILocation(line: 449, column: 13, scope: !1015)
!1032 = !DILocation(line: 449, column: 17, scope: !1015)
!1033 = !DILocation(line: 449, column: 23, scope: !1015)
!1034 = !DILocation(line: 449, column: 28, scope: !1015)
!1035 = !DILocation(line: 450, column: 9, scope: !1015)
!1036 = !DILocation(line: 445, column: 122, scope: !1011)
!1037 = !DILocation(line: 445, column: 120, scope: !1011)
!1038 = !DILocation(line: 445, column: 9, scope: !1011)
!1039 = !DILocation(line: 451, column: 37, scope: !1000)
!1040 = !DILocation(line: 451, column: 25, scope: !1000)
!1041 = !DILocation(line: 451, column: 29, scope: !1000)
!1042 = !DILocation(line: 451, column: 9, scope: !1000)
!1043 = !DILocation(line: 452, column: 5, scope: !1000)
!1044 = !DILocation(line: 444, column: 37, scope: !993)
!1045 = !DILocation(line: 444, column: 5, scope: !993)
!1046 = !DILocation(line: 453, column: 5, scope: !190)
!1047 = !DILocation(line: 453, column: 9, scope: !190)
!1048 = !DILocation(line: 453, column: 17, scope: !190)
!1049 = !DILocation(line: 454, column: 22, scope: !190)
!1050 = !DILocation(line: 454, column: 5, scope: !190)
!1051 = !DILocation(line: 455, column: 1, scope: !190)
!1052 = !DILocation(line: 68, column: 29, scope: !265)
!1053 = !DILocation(line: 70, column: 5, scope: !265)
!1054 = !DILocation(line: 70, column: 11, scope: !265)
!1055 = !DILocation(line: 70, column: 16, scope: !265)
!1056 = !DILocation(line: 71, column: 1, scope: !265)
!1057 = !DILocation(line: 458, column: 40, scope: !198)
!1058 = !DILocation(line: 460, column: 5, scope: !198)
!1059 = !DILocation(line: 460, column: 12, scope: !198)
!1060 = !DILocation(line: 462, column: 12, scope: !205)
!1061 = !DILocation(line: 462, column: 10, scope: !205)
!1062 = !DILocation(line: 462, column: 17, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !82, discriminator: 2)
!1064 = !DILexicalBlockFile(scope: !204, file: !82, discriminator: 1)
!1065 = !DILocation(line: 462, column: 21, scope: !204)
!1066 = !DILocation(line: 462, column: 25, scope: !204)
!1067 = !DILocation(line: 462, column: 19, scope: !204)
!1068 = !DILocation(line: 462, column: 5, scope: !205)
!1069 = !DILocation(line: 463, column: 9, scope: !203)
!1070 = !DILocation(line: 463, column: 27, scope: !203)
!1071 = !DILocation(line: 463, column: 47, scope: !203)
!1072 = !DILocation(line: 463, column: 35, scope: !203)
!1073 = !DILocation(line: 463, column: 39, scope: !203)
!1074 = !DILocation(line: 463, column: 50, scope: !203)
!1075 = !DILocation(line: 464, column: 9, scope: !203)
!1076 = !DILocation(line: 464, column: 16, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !82, discriminator: 2)
!1078 = !DILexicalBlockFile(scope: !203, file: !82, discriminator: 1)
!1079 = !DILocation(line: 465, column: 13, scope: !207)
!1080 = !DILocation(line: 465, column: 31, scope: !207)
!1081 = !DILocation(line: 465, column: 44, scope: !207)
!1082 = !DILocation(line: 465, column: 51, scope: !207)
!1083 = !DILocation(line: 466, column: 17, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !207, file: !82, line: 466, column: 17)
!1085 = !DILocation(line: 466, column: 21, scope: !1084)
!1086 = !DILocation(line: 466, column: 17, scope: !207)
!1087 = !DILocation(line: 467, column: 17, scope: !1084)
!1088 = !DILocation(line: 467, column: 21, scope: !1084)
!1089 = !DILocation(line: 467, column: 57, scope: !1084)
!1090 = !DILocation(line: 467, column: 48, scope: !1084)
!1091 = !DILocation(line: 467, column: 64, scope: !1084)
!1092 = !DILocation(line: 467, column: 38, scope: !1084)
!1093 = !DILocation(line: 467, column: 37, scope: !1084)
!1094 = !DILocation(line: 468, column: 13, scope: !207)
!1095 = !DILocation(line: 468, column: 17, scope: !207)
!1096 = !DILocation(line: 468, column: 23, scope: !207)
!1097 = !DILocation(line: 468, column: 28, scope: !207)
!1098 = !DILocation(line: 469, column: 21, scope: !207)
!1099 = !DILocation(line: 469, column: 19, scope: !207)
!1100 = !DILocation(line: 470, column: 9, scope: !203)
!1101 = !DILocation(line: 471, column: 5, scope: !204)
!1102 = !DILocation(line: 471, column: 5, scope: !203)
!1103 = !DILocation(line: 462, column: 39, scope: !204)
!1104 = !DILocation(line: 462, column: 5, scope: !204)
!1105 = !DILocation(line: 473, column: 5, scope: !198)
!1106 = !DILocation(line: 473, column: 9, scope: !198)
!1107 = !DILocation(line: 473, column: 15, scope: !198)
!1108 = !DILocation(line: 473, column: 20, scope: !198)
!1109 = !DILocation(line: 473, column: 24, scope: !198)
!1110 = !DILocation(line: 474, column: 5, scope: !198)
!1111 = !DILocation(line: 474, column: 9, scope: !198)
!1112 = !DILocation(line: 474, column: 15, scope: !198)
!1113 = !DILocation(line: 474, column: 20, scope: !198)
!1114 = !DILocation(line: 475, column: 1, scope: !198)
!1115 = !DILocation(line: 479, column: 37, scope: !208)
!1116 = !DILocation(line: 481, column: 5, scope: !208)
!1117 = !DILocation(line: 481, column: 22, scope: !208)
!1118 = !DILocation(line: 482, column: 5, scope: !208)
!1119 = !DILocation(line: 482, column: 28, scope: !208)
!1120 = !DILocation(line: 483, column: 5, scope: !208)
!1121 = !DILocation(line: 483, column: 12, scope: !208)
!1122 = !DILocation(line: 484, column: 5, scope: !208)
!1123 = !DILocation(line: 484, column: 9, scope: !208)
!1124 = !DILocation(line: 485, column: 5, scope: !208)
!1125 = !DILocation(line: 485, column: 11, scope: !208)
!1126 = !DILocation(line: 485, column: 18, scope: !208)
!1127 = !DILocation(line: 487, column: 34, scope: !208)
!1128 = !DILocation(line: 487, column: 39, scope: !208)
!1129 = !DILocation(line: 487, column: 50, scope: !208)
!1130 = !DILocation(line: 487, column: 55, scope: !208)
!1131 = !DILocation(line: 488, column: 29, scope: !208)
!1132 = !DILocation(line: 488, column: 34, scope: !208)
!1133 = !DILocation(line: 488, column: 45, scope: !208)
!1134 = !DILocation(line: 488, column: 50, scope: !208)
!1135 = !DILocation(line: 489, column: 29, scope: !208)
!1136 = !DILocation(line: 489, column: 34, scope: !208)
!1137 = !DILocation(line: 489, column: 50, scope: !208)
!1138 = !DILocation(line: 489, column: 55, scope: !208)
!1139 = !DILocation(line: 490, column: 29, scope: !208)
!1140 = !DILocation(line: 490, column: 34, scope: !208)
!1141 = !DILocation(line: 490, column: 55, scope: !208)
!1142 = !DILocation(line: 490, column: 60, scope: !208)
!1143 = !DILocation(line: 487, column: 11, scope: !208)
!1144 = !DILocation(line: 487, column: 9, scope: !208)
!1145 = !DILocation(line: 491, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !208, file: !82, line: 491, column: 9)
!1147 = !DILocation(line: 491, column: 13, scope: !1146)
!1148 = !DILocation(line: 491, column: 9, scope: !208)
!1149 = !DILocation(line: 492, column: 9, scope: !1146)
!1150 = !DILocation(line: 494, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !208, file: !82, line: 494, column: 5)
!1152 = !DILocation(line: 494, column: 10, scope: !1151)
!1153 = !DILocation(line: 494, column: 20, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !82, discriminator: 2)
!1155 = !DILexicalBlockFile(scope: !1156, file: !82, discriminator: 1)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !82, line: 494, column: 5)
!1157 = !DILocation(line: 494, column: 29, scope: !1156)
!1158 = !DILocation(line: 494, column: 34, scope: !1156)
!1159 = !DILocation(line: 494, column: 27, scope: !1156)
!1160 = !DILocation(line: 494, column: 5, scope: !1151)
!1161 = !DILocation(line: 495, column: 76, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !82, line: 494, column: 57)
!1163 = !DILocation(line: 495, column: 62, scope: !1162)
!1164 = !DILocation(line: 495, column: 68, scope: !1162)
!1165 = !DILocation(line: 495, column: 61, scope: !1162)
!1166 = !DILocation(line: 495, column: 86, scope: !1162)
!1167 = !DILocation(line: 495, column: 18, scope: !1162)
!1168 = !DILocation(line: 495, column: 15, scope: !1162)
!1169 = !DILocation(line: 496, column: 9, scope: !1162)
!1170 = !DILocation(line: 496, column: 16, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !82, discriminator: 2)
!1172 = !DILexicalBlockFile(scope: !1173, file: !82, discriminator: 1)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !82, line: 496, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !82, line: 496, column: 9)
!1175 = !DILocation(line: 496, column: 9, scope: !1174)
!1176 = !DILocation(line: 497, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !82, line: 497, column: 17)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !82, line: 496, column: 95)
!1179 = !DILocation(line: 497, column: 22, scope: !1177)
!1180 = !DILocation(line: 497, column: 17, scope: !1178)
!1181 = !DILocation(line: 498, column: 45, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !82, line: 497, column: 38)
!1183 = !DILocation(line: 498, column: 36, scope: !1182)
!1184 = !DILocation(line: 498, column: 52, scope: !1182)
!1185 = !DILocation(line: 498, column: 26, scope: !1182)
!1186 = !DILocation(line: 498, column: 25, scope: !1182)
!1187 = !DILocation(line: 498, column: 22, scope: !1182)
!1188 = !DILocation(line: 499, column: 28, scope: !1182)
!1189 = !DILocation(line: 499, column: 33, scope: !1182)
!1190 = !DILocation(line: 499, column: 48, scope: !1182)
!1191 = !DILocation(line: 499, column: 26, scope: !1182)
!1192 = !DILocation(line: 500, column: 21, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !82, line: 500, column: 21)
!1194 = !DILocation(line: 500, column: 30, scope: !1193)
!1195 = !DILocation(line: 500, column: 21, scope: !1182)
!1196 = !DILocation(line: 501, column: 45, scope: !1193)
!1197 = !DILocation(line: 501, column: 50, scope: !1193)
!1198 = !DILocation(line: 501, column: 57, scope: !1193)
!1199 = !DILocation(line: 502, column: 41, scope: !1193)
!1200 = !DILocation(line: 502, column: 52, scope: !1193)
!1201 = !DILocation(line: 502, column: 57, scope: !1193)
!1202 = !DILocation(line: 501, column: 27, scope: !1193)
!1203 = !DILocation(line: 501, column: 25, scope: !1193)
!1204 = !DILocation(line: 501, column: 21, scope: !1193)
!1205 = !DILocation(line: 504, column: 25, scope: !1193)
!1206 = !DILocation(line: 505, column: 13, scope: !1182)
!1207 = !DILocation(line: 507, column: 34, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1177, file: !82, line: 506, column: 18)
!1209 = !DILocation(line: 507, column: 25, scope: !1208)
!1210 = !DILocation(line: 507, column: 41, scope: !1208)
!1211 = !DILocation(line: 507, column: 22, scope: !1208)
!1212 = !DILocation(line: 508, column: 41, scope: !1208)
!1213 = !DILocation(line: 508, column: 46, scope: !1208)
!1214 = !DILocation(line: 508, column: 53, scope: !1208)
!1215 = !DILocation(line: 508, column: 58, scope: !1208)
!1216 = !DILocation(line: 508, column: 64, scope: !1208)
!1217 = !DILocation(line: 508, column: 69, scope: !1208)
!1218 = !DILocation(line: 508, column: 23, scope: !1208)
!1219 = !DILocation(line: 508, column: 21, scope: !1208)
!1220 = !DILocation(line: 510, column: 17, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1178, file: !82, line: 510, column: 17)
!1222 = !DILocation(line: 510, column: 17, scope: !1178)
!1223 = !DILocation(line: 511, column: 39, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !82, line: 510, column: 22)
!1225 = !DILocation(line: 511, column: 17, scope: !1224)
!1226 = !DILocation(line: 512, column: 17, scope: !1224)
!1227 = !DILocation(line: 514, column: 9, scope: !1178)
!1228 = !DILocation(line: 496, column: 79, scope: !1173)
!1229 = !DILocation(line: 496, column: 59, scope: !1173)
!1230 = !DILocation(line: 496, column: 87, scope: !1173)
!1231 = !DILocation(line: 496, column: 32, scope: !1173)
!1232 = !DILocation(line: 496, column: 29, scope: !1173)
!1233 = !DILocation(line: 496, column: 9, scope: !1173)
!1234 = !DILocation(line: 515, column: 5, scope: !1162)
!1235 = !DILocation(line: 494, column: 53, scope: !1156)
!1236 = !DILocation(line: 494, column: 5, scope: !1156)
!1237 = !DILocation(line: 516, column: 12, scope: !208)
!1238 = !DILocation(line: 516, column: 5, scope: !208)
!1239 = !DILocation(line: 517, column: 1, scope: !208)
!1240 = !DILocation(line: 81, column: 31, scope: !241)
!1241 = !DILocation(line: 81, column: 55, scope: !241)
!1242 = !DILocation(line: 82, column: 36, scope: !241)
!1243 = !DILocation(line: 84, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !241, file: !82, line: 84, column: 9)
!1245 = !DILocation(line: 84, column: 18, scope: !1244)
!1246 = !DILocation(line: 84, column: 9, scope: !241)
!1247 = !DILocation(line: 85, column: 26, scope: !1244)
!1248 = !DILocation(line: 85, column: 32, scope: !1244)
!1249 = !DILocation(line: 85, column: 9, scope: !1244)
!1250 = !DILocation(line: 85, column: 19, scope: !1244)
!1251 = !DILocation(line: 85, column: 24, scope: !1244)
!1252 = !DILocation(line: 87, column: 22, scope: !1244)
!1253 = !DILocation(line: 87, column: 28, scope: !1244)
!1254 = !DILocation(line: 87, column: 9, scope: !1244)
!1255 = !DILocation(line: 87, column: 15, scope: !1244)
!1256 = !DILocation(line: 87, column: 20, scope: !1244)
!1257 = !DILocation(line: 88, column: 1, scope: !241)
