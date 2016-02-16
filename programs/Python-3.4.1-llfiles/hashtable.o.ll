; ModuleID = 'hashtable.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_hashtable_entry_t = type { %struct._Py_slist_item_s, i8*, i64 }
%struct._Py_slist_item_s = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_t = type { i64, i64, %struct._Py_slist_t*, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t }
%struct._Py_slist_t = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_allocator_t = type { i8* (i64)*, void (i8*)* }

; Function Attrs: nounwind readnone uwtable
define i64 @_Py_hashtable_hash_int(i8* %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !83, metadata !272), !dbg !273
  %0 = ptrtoint i8* %key to i64, !dbg !274
  ret i64 %0, !dbg !275
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_hash_ptr(i8* %key) #2 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !86, metadata !272), !dbg !276
  %call = tail call i64 @_Py_HashPointer(i8* %key) #5, !dbg !277
  ret i64 %call, !dbg !278
}

declare i64 @_Py_HashPointer(i8*) #3

; Function Attrs: nounwind readonly uwtable
define i32 @_Py_hashtable_compare_direct(i8* readnone %key, %struct._Py_hashtable_entry_t* nocapture readonly %entry1) #4 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !89, metadata !272), !dbg !279
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %entry1, i64 0, metadata !90, metadata !272), !dbg !280
  %key2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1, i64 0, i32 1, !dbg !281
  %0 = load i8*, i8** %key2, align 8, !dbg !281, !tbaa !282
  %cmp = icmp eq i8* %0, %key, !dbg !289
  %conv = zext i1 %cmp to i32, !dbg !289
  ret i32 %conv, !dbg !290
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %data_size, i64 %init_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i8* (i8*)* %copy_data_func, void (i8*)* %free_data_func, i64 (i8*)* %get_data_size_func, %struct._Py_hashtable_allocator_t* readonly %allocator) #2 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !96, metadata !272), !dbg !291
  tail call void @llvm.dbg.value(metadata i64 %init_size, i64 0, metadata !97, metadata !272), !dbg !292
  tail call void @llvm.dbg.value(metadata i64 (i8*)* %hash_func, i64 0, metadata !98, metadata !272), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i64 0, metadata !99, metadata !272), !dbg !294
  tail call void @llvm.dbg.value(metadata i8* (i8*)* %copy_data_func, i64 0, metadata !100, metadata !272), !dbg !295
  tail call void @llvm.dbg.value(metadata void (i8*)* %free_data_func, i64 0, metadata !101, metadata !272), !dbg !296
  tail call void @llvm.dbg.value(metadata i64 (i8*)* %get_data_size_func, i64 0, metadata !102, metadata !272), !dbg !297
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_allocator_t* %allocator, i64 0, metadata !103, metadata !272), !dbg !298
  tail call void @llvm.dbg.declare(metadata %struct._Py_hashtable_allocator_t* undef, metadata !106, metadata !272), !dbg !299
  %cmp = icmp eq %struct._Py_hashtable_allocator_t* %allocator, null, !dbg !300
  br i1 %cmp, label %if.end, label %if.else, !dbg !302

if.else:                                          ; preds = %entry
  %alloc.sroa.0.0..sroa_idx = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %allocator, i64 0, i32 0, !dbg !303
  %alloc.sroa.0.0.copyload = load i8* (i64)*, i8* (i64)** %alloc.sroa.0.0..sroa_idx, align 8, !dbg !303
  tail call void @llvm.dbg.value(metadata i8* (i64)* %alloc.sroa.0.0.copyload, i64 0, metadata !106, metadata !304), !dbg !299
  %alloc.sroa.7.0..sroa_idx28 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %allocator, i64 0, i32 1, !dbg !303
  %alloc.sroa.7.0.copyload = load void (i8*)*, void (i8*)** %alloc.sroa.7.0..sroa_idx28, align 8, !dbg !303
  tail call void @llvm.dbg.value(metadata void (i8*)* %alloc.sroa.7.0.copyload, i64 0, metadata !106, metadata !305), !dbg !299
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %alloc.sroa.7.0 = phi void (i8*)* [ %alloc.sroa.7.0.copyload, %if.else ], [ @PyMem_RawFree, %entry ]
  %alloc.sroa.0.0 = phi i8* (i64)* [ %alloc.sroa.0.0.copyload, %if.else ], [ @PyMem_RawMalloc, %entry ]
  %call = tail call i8* %alloc.sroa.0.0(i64 88) #5, !dbg !306
  %0 = bitcast i8* %call to %struct._Py_hashtable_t*, !dbg !307
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %0, i64 0, metadata !104, metadata !272), !dbg !308
  %cmp2 = icmp eq i8* %call, null, !dbg !309
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !311

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64 %init_size, i64 0, metadata !222, metadata !272), !dbg !312
  %cmp.i = icmp ult i64 %init_size, 16, !dbg !314
  br i1 %cmp.i, label %round_size.exit, label %while.cond.i.preheader, !dbg !316

while.cond.i.preheader:                           ; preds = %if.end.4
  br label %while.cond.i, !dbg !317

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %i.0.i = phi i64 [ %shl.i, %while.cond.i ], [ 1, %while.cond.i.preheader ], !dbg !318
  %cmp1.i = icmp ult i64 %i.0.i, %init_size, !dbg !317
  %shl.i = shl i64 %i.0.i, 1, !dbg !319
  tail call void @llvm.dbg.value(metadata i64 %shl.i, i64 0, metadata !223, metadata !272), !dbg !320
  br i1 %cmp1.i, label %while.cond.i, label %round_size.exit.loopexit, !dbg !321

round_size.exit.loopexit:                         ; preds = %while.cond.i
  %i.0.i.lcssa = phi i64 [ %i.0.i, %while.cond.i ]
  br label %round_size.exit, !dbg !322

round_size.exit:                                  ; preds = %round_size.exit.loopexit, %if.end.4
  %retval.0.i = phi i64 [ 16, %if.end.4 ], [ %i.0.i.lcssa, %round_size.exit.loopexit ], !dbg !318
  %num_buckets = bitcast i8* %call to i64*, !dbg !322
  store i64 %retval.0.i, i64* %num_buckets, align 8, !dbg !323, !tbaa !324
  %entries = getelementptr inbounds i8, i8* %call, i64 8, !dbg !327
  %1 = bitcast i8* %entries to i64*, !dbg !327
  store i64 0, i64* %1, align 8, !dbg !328, !tbaa !329
  %data_size6 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !330
  %2 = bitcast i8* %data_size6 to i64*, !dbg !330
  store i64 %data_size, i64* %2, align 8, !dbg !331, !tbaa !332
  %mul = shl i64 %retval.0.i, 3, !dbg !333
  tail call void @llvm.dbg.value(metadata i64 %mul, i64 0, metadata !105, metadata !272), !dbg !334
  %call9 = tail call i8* %alloc.sroa.0.0(i64 %mul) #5, !dbg !335
  %buckets = getelementptr inbounds i8, i8* %call, i64 16, !dbg !336
  %3 = bitcast i8* %buckets to i8**, !dbg !337
  store i8* %call9, i8** %3, align 8, !dbg !337, !tbaa !338
  %cmp11 = icmp eq i8* %call9, null, !dbg !339
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !341

if.then.12:                                       ; preds = %round_size.exit
  tail call void %alloc.sroa.7.0(i8* %call) #5, !dbg !342
  br label %cleanup, !dbg !344

if.end.14:                                        ; preds = %round_size.exit
  tail call void @llvm.memset.p0i8.i64(i8* %call9, i8 0, i64 %mul, i32 8, i1 false), !dbg !345
  %hash_func16 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !346
  %4 = bitcast i8* %hash_func16 to i64 (i8*)**, !dbg !346
  store i64 (i8*)* %hash_func, i64 (i8*)** %4, align 8, !dbg !347, !tbaa !348
  %compare_func17 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !349
  %5 = bitcast i8* %compare_func17 to i32 (i8*, %struct._Py_hashtable_entry_t*)**, !dbg !349
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %5, align 8, !dbg !350, !tbaa !351
  %copy_data_func18 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !352
  %6 = bitcast i8* %copy_data_func18 to i8* (i8*)**, !dbg !352
  store i8* (i8*)* %copy_data_func, i8* (i8*)** %6, align 8, !dbg !353, !tbaa !354
  %free_data_func19 = getelementptr inbounds i8, i8* %call, i64 56, !dbg !355
  %7 = bitcast i8* %free_data_func19 to void (i8*)**, !dbg !355
  store void (i8*)* %free_data_func, void (i8*)** %7, align 8, !dbg !356, !tbaa !357
  %get_data_size_func20 = getelementptr inbounds i8, i8* %call, i64 64, !dbg !358
  %8 = bitcast i8* %get_data_size_func20 to i64 (i8*)**, !dbg !358
  store i64 (i8*)* %get_data_size_func, i64 (i8*)** %8, align 8, !dbg !359, !tbaa !360
  %alloc.sroa.0.0..sroa_idx25 = getelementptr inbounds i8, i8* %call, i64 72, !dbg !361
  %9 = bitcast i8* %alloc.sroa.0.0..sroa_idx25 to i8* (i64)**, !dbg !361
  store i8* (i64)* %alloc.sroa.0.0, i8* (i64)** %9, align 8, !dbg !361
  %alloc.sroa.7.0..sroa_idx29 = getelementptr inbounds i8, i8* %call, i64 80, !dbg !361
  %10 = bitcast i8* %alloc.sroa.7.0..sroa_idx29 to void (i8*)**, !dbg !361
  store void (i8*)* %alloc.sroa.7.0, void (i8*)** %10, align 8, !dbg !361
  br label %cleanup, !dbg !362

cleanup:                                          ; preds = %if.end, %if.end.14, %if.then.12
  %retval.0 = phi %struct._Py_hashtable_t* [ null, %if.then.12 ], [ %0, %if.end.14 ], [ %0, %if.end ]
  ret %struct._Py_hashtable_t* %retval.0, !dbg !363
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

declare i8* @PyMem_RawMalloc(i64) #3

declare void @PyMem_RawFree(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new(i64 %data_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func) #2 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !111, metadata !272), !dbg !364
  tail call void @llvm.dbg.value(metadata i64 (i8*)* %hash_func, i64 0, metadata !112, metadata !272), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i64 0, metadata !113, metadata !272), !dbg !366
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !96, metadata !272) #5, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !97, metadata !272) #5, !dbg !369
  tail call void @llvm.dbg.value(metadata i64 (i8*)* %hash_func, i64 0, metadata !98, metadata !272) #5, !dbg !370
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i64 0, metadata !99, metadata !272) #5, !dbg !371
  tail call void @llvm.dbg.value(metadata i8* (i8*)* null, i64 0, metadata !100, metadata !272) #5, !dbg !372
  tail call void @llvm.dbg.value(metadata void (i8*)* null, i64 0, metadata !101, metadata !272) #5, !dbg !373
  tail call void @llvm.dbg.value(metadata i64 (i8*)* null, i64 0, metadata !102, metadata !272) #5, !dbg !374
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_allocator_t* null, i64 0, metadata !103, metadata !272) #5, !dbg !375
  tail call void @llvm.dbg.declare(metadata %struct._Py_hashtable_allocator_t* undef, metadata !106, metadata !272) #5, !dbg !376
  %call.i = tail call i8* @PyMem_RawMalloc(i64 88) #5, !dbg !377
  %0 = bitcast i8* %call.i to %struct._Py_hashtable_t*, !dbg !378
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %0, i64 0, metadata !104, metadata !272) #5, !dbg !379
  %cmp2.i = icmp eq i8* %call.i, null, !dbg !380
  br i1 %cmp2.i, label %_Py_hashtable_new_full.exit, label %while.cond.i.i.preheader, !dbg !381

while.cond.i.i.preheader:                         ; preds = %entry
  %1 = bitcast i8* %call.i to <2 x i64>*, !dbg !382
  store <2 x i64> <i64 16, i64 0>, <2 x i64>* %1, align 8, !dbg !382, !tbaa !383
  %data_size6.i = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !384
  %2 = bitcast i8* %data_size6.i to i64*, !dbg !384
  store i64 %data_size, i64* %2, align 8, !dbg !385, !tbaa !332
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !105, metadata !272) #5, !dbg !386
  %call9.i = tail call i8* @PyMem_RawMalloc(i64 128) #5, !dbg !387
  %buckets.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !388
  %3 = bitcast i8* %buckets.i to i8**, !dbg !389
  store i8* %call9.i, i8** %3, align 8, !dbg !389, !tbaa !338
  %cmp11.i = icmp eq i8* %call9.i, null, !dbg !390
  br i1 %cmp11.i, label %if.then.12.i, label %if.end.14.i, !dbg !391

if.then.12.i:                                     ; preds = %while.cond.i.i.preheader
  tail call void @PyMem_RawFree(i8* %call.i) #5, !dbg !392
  br label %_Py_hashtable_new_full.exit, !dbg !393

if.end.14.i:                                      ; preds = %while.cond.i.i.preheader
  tail call void @llvm.memset.p0i8.i64(i8* %call9.i, i8 0, i64 128, i32 8, i1 false) #5, !dbg !394
  %hash_func16.i = getelementptr inbounds i8, i8* %call.i, i64 32, !dbg !395
  %4 = bitcast i8* %hash_func16.i to i64 (i8*)**, !dbg !395
  store i64 (i8*)* %hash_func, i64 (i8*)** %4, align 8, !dbg !396, !tbaa !348
  %compare_func17.i = getelementptr inbounds i8, i8* %call.i, i64 40, !dbg !397
  %5 = bitcast i8* %compare_func17.i to i32 (i8*, %struct._Py_hashtable_entry_t*)**, !dbg !397
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %5, align 8, !dbg !398, !tbaa !351
  %copy_data_func18.i = getelementptr inbounds i8, i8* %call.i, i64 48, !dbg !399
  %alloc.sroa.0.0..sroa_idx25.i = getelementptr inbounds i8, i8* %call.i, i64 72, !dbg !400
  %6 = bitcast i8* %alloc.sroa.0.0..sroa_idx25.i to i8* (i64)**, !dbg !400
  call void @llvm.memset.p0i8.i64(i8* %copy_data_func18.i, i8 0, i64 24, i32 8, i1 false), !dbg !401
  store i8* (i64)* @PyMem_RawMalloc, i8* (i64)** %6, align 8, !dbg !400
  %alloc.sroa.7.0..sroa_idx29.i = getelementptr inbounds i8, i8* %call.i, i64 80, !dbg !400
  %7 = bitcast i8* %alloc.sroa.7.0..sroa_idx29.i to void (i8*)**, !dbg !400
  store void (i8*)* @PyMem_RawFree, void (i8*)** %7, align 8, !dbg !400
  br label %_Py_hashtable_new_full.exit, !dbg !402

_Py_hashtable_new_full.exit:                      ; preds = %entry, %if.then.12.i, %if.end.14.i
  %retval.0.i = phi %struct._Py_hashtable_t* [ null, %if.then.12.i ], [ %0, %if.end.14.i ], [ %0, %entry ], !dbg !403
  ret %struct._Py_hashtable_t* %retval.0.i, !dbg !404
}

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_size(%struct._Py_hashtable_t* nocapture readonly %ht) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !118, metadata !272), !dbg !405
  tail call void @llvm.dbg.value(metadata i64 88, i64 0, metadata !119, metadata !272), !dbg !406
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !407
  %0 = load i64, i64* %num_buckets, align 8, !dbg !408, !tbaa !324
  %mul = shl i64 %0, 3, !dbg !409
  %add = add i64 %mul, 88, !dbg !410
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !119, metadata !272), !dbg !406
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !411
  %1 = load i64, i64* %entries, align 8, !dbg !411, !tbaa !329
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 3, !dbg !412
  %2 = load i64, i64* %data_size, align 8, !dbg !412, !tbaa !332
  %add1 = add i64 %2, 24, !dbg !412
  %mul2 = mul i64 %add1, %1, !dbg !413
  %add3 = add i64 %add, %mul2, !dbg !414
  tail call void @llvm.dbg.value(metadata i64 %add3, i64 0, metadata !119, metadata !272), !dbg !406
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 8, !dbg !415
  %3 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8, !dbg !415, !tbaa !360
  %tobool = icmp eq i64 (i8*)* %3, null, !dbg !416
  %cmp.35 = icmp eq i64 %0, 0, !dbg !417
  %or.cond = or i1 %tobool, %cmp.35, !dbg !418
  br i1 %or.cond, label %if.end, label %for.body.lr.ph, !dbg !418

for.body.lr.ph:                                   ; preds = %entry
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !419
  br label %for.body, !dbg !420

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %4 = phi i64 [ %0, %for.body.lr.ph ], [ %11, %for.end ]
  %size.037 = phi i64 [ %add3, %for.body.lr.ph ], [ %size.1.lcssa, %for.end ]
  %hv.036 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.end ]
  %5 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !419, !tbaa !338
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %5, i64 %hv.036, i32 0, !dbg !419
  %6 = bitcast %struct._Py_slist_item_s** %head to %struct._Py_hashtable_entry_t**, !dbg !419
  %entry5.0.31 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %6, align 8, !dbg !419
  %tobool7.32 = icmp eq %struct._Py_hashtable_entry_t* %entry5.0.31, null, !dbg !421
  br i1 %tobool7.32, label %for.end, label %for.body.8.preheader, !dbg !421

for.body.8.preheader:                             ; preds = %for.body
  br label %for.body.8, !dbg !422

for.body.8:                                       ; preds = %for.body.8.preheader, %for.body.8
  %entry5.034 = phi %struct._Py_hashtable_entry_t* [ %entry5.0, %for.body.8 ], [ %entry5.0.31, %for.body.8.preheader ]
  %size.133 = phi i64 [ %add10, %for.body.8 ], [ %size.037, %for.body.8.preheader ]
  %add.ptr30 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry5.034, i64 1, !dbg !422
  %7 = bitcast %struct._Py_hashtable_entry_t* %add.ptr30 to i8**, !dbg !422
  %8 = load i8*, i8** %7, align 8, !dbg !422, !tbaa !423
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !127, metadata !272), !dbg !424
  %9 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8, !dbg !425, !tbaa !360
  %call = tail call i64 %9(i8* %8) #5, !dbg !426
  %add10 = add i64 %call, %size.133, !dbg !427
  tail call void @llvm.dbg.value(metadata i64 %add10, i64 0, metadata !119, metadata !272), !dbg !406
  %10 = bitcast %struct._Py_hashtable_entry_t* %entry5.034 to %struct._Py_hashtable_entry_t**, !dbg !428
  %entry5.0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %10, align 8, !dbg !419
  %tobool7 = icmp eq %struct._Py_hashtable_entry_t* %entry5.0, null, !dbg !421
  br i1 %tobool7, label %for.cond.6.for.end_crit_edge, label %for.body.8, !dbg !421

for.cond.6.for.end_crit_edge:                     ; preds = %for.body.8
  %add10.lcssa = phi i64 [ %add10, %for.body.8 ]
  %.pre = load i64, i64* %num_buckets, align 8, !dbg !408, !tbaa !324
  br label %for.end, !dbg !421

for.end:                                          ; preds = %for.cond.6.for.end_crit_edge, %for.body
  %11 = phi i64 [ %.pre, %for.cond.6.for.end_crit_edge ], [ %4, %for.body ], !dbg !408
  %size.1.lcssa = phi i64 [ %add10.lcssa, %for.cond.6.for.end_crit_edge ], [ %size.037, %for.body ]
  %inc = add i64 %hv.036, 1, !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !120, metadata !272), !dbg !430
  %cmp = icmp ult i64 %inc, %11, !dbg !417
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !420

if.end.loopexit:                                  ; preds = %for.end
  %size.1.lcssa.lcssa = phi i64 [ %size.1.lcssa, %for.end ]
  br label %if.end, !dbg !431

if.end:                                           ; preds = %if.end.loopexit, %entry
  %size.2 = phi i64 [ %add3, %entry ], [ %size.1.lcssa.lcssa, %if.end.loopexit ]
  ret i64 %size.2, !dbg !431
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* nocapture readonly %ht, i8* %key) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !135, metadata !272), !dbg !432
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !136, metadata !272), !dbg !433
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 4, !dbg !434
  %0 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !434, !tbaa !348
  %call = tail call i64 %0(i8* %key) #5, !dbg !435
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !137, metadata !272), !dbg !436
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !437
  %1 = load i64, i64* %num_buckets, align 8, !dbg !437, !tbaa !324
  %sub = add i64 %1, -1, !dbg !438
  %and = and i64 %sub, %call, !dbg !439
  tail call void @llvm.dbg.value(metadata i64 %and, i64 0, metadata !138, metadata !272), !dbg !440
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !441
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !441, !tbaa !338
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %and, i32 0, !dbg !441
  %3 = bitcast %struct._Py_slist_item_s** %head to %struct._Py_hashtable_entry_t**, !dbg !441
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 5, !dbg !443
  %entry1.0.17 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !441
  %cmp.18 = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.17, null, !dbg !447
  br i1 %cmp.18, label %for.end, label %for.body.preheader, !dbg !448

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !449

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %entry1.019 = phi %struct._Py_hashtable_entry_t* [ %entry1.0, %for.inc ], [ %entry1.0.17, %for.body.preheader ]
  %key_hash2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.019, i64 0, i32 2, !dbg !449
  %4 = load i64, i64* %key_hash2, align 8, !dbg !449, !tbaa !450
  %cmp3 = icmp eq i64 %4, %call, !dbg !451
  br i1 %cmp3, label %land.lhs.true, label %for.inc, !dbg !452

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8, !dbg !443, !tbaa !351
  %call4 = tail call i32 %5(i8* %key, %struct._Py_hashtable_entry_t* %entry1.019) #5, !dbg !453
  %tobool = icmp eq i32 %call4, 0, !dbg !453
  br i1 %tobool, label %for.inc, label %for.end.loopexit, !dbg !454

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %6 = bitcast %struct._Py_hashtable_entry_t* %entry1.019 to %struct._Py_hashtable_entry_t**, !dbg !455
  %entry1.0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %6, align 8, !dbg !441
  %cmp = icmp eq %struct._Py_hashtable_entry_t* %entry1.0, null, !dbg !447
  br i1 %cmp, label %for.end.loopexit, label %for.body, !dbg !448

for.end.loopexit:                                 ; preds = %land.lhs.true, %for.inc
  %entry1.0.lcssa.ph = phi %struct._Py_hashtable_entry_t* [ null, %for.inc ], [ %entry1.019, %land.lhs.true ]
  br label %for.end, !dbg !456

for.end:                                          ; preds = %for.end.loopexit, %entry
  %entry1.0.lcssa = phi %struct._Py_hashtable_entry_t* [ null, %entry ], [ %entry1.0.lcssa.ph, %for.end.loopexit ]
  ret %struct._Py_hashtable_entry_t* %entry1.0.lcssa, !dbg !456
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_set(%struct._Py_hashtable_t* nocapture %ht, i8* %key, i8* nocapture readonly %data, i64 %data_size) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !144, metadata !272), !dbg !457
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !145, metadata !272), !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !146, metadata !272), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !147, metadata !272), !dbg !460
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 4, !dbg !461
  %0 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8, !dbg !461, !tbaa !348
  %call = tail call i64 %0(i8* %key) #5, !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !148, metadata !272), !dbg !463
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !464
  %1 = load i64, i64* %num_buckets, align 8, !dbg !464, !tbaa !324
  tail call void @llvm.dbg.value(metadata i64 %and, i64 0, metadata !149, metadata !272), !dbg !465
  %malloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 0, !dbg !466
  %2 = load i8* (i64)*, i8* (i64)** %malloc, align 8, !dbg !466, !tbaa !467
  %data_size2 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 3, !dbg !468
  %3 = load i64, i64* %data_size2, align 8, !dbg !468, !tbaa !332
  %add = add i64 %3, 24, !dbg !468
  %call3 = tail call i8* %2(i64 %add) #5, !dbg !469
  %cmp = icmp eq i8* %call3, null, !dbg !470
  br i1 %cmp, label %cleanup, label %if.end, !dbg !472

if.end:                                           ; preds = %entry
  %sub = add i64 %1, -1, !dbg !473
  %and = and i64 %sub, %call, !dbg !474
  %key4 = getelementptr inbounds i8, i8* %call3, i64 8, !dbg !475
  %4 = bitcast i8* %key4 to i8**, !dbg !475
  store i8* %key, i8** %4, align 8, !dbg !476, !tbaa !282
  %key_hash5 = getelementptr inbounds i8, i8* %call3, i64 16, !dbg !477
  %5 = bitcast i8* %key_hash5 to i64*, !dbg !477
  store i64 %call, i64* %5, align 8, !dbg !478, !tbaa !450
  %add.ptr = getelementptr i8, i8* %call3, i64 24, !dbg !479
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %data, i64 %data_size, i32 1, i1 false), !dbg !480
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !481
  %6 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !482, !tbaa !338
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %6, i64 %and, !dbg !485
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %arrayidx, i64 0, metadata !228, metadata !272), !dbg !486
  %7 = bitcast %struct._Py_slist_t* %arrayidx to i64*, !dbg !488
  %8 = load i64, i64* %7, align 8, !dbg !488, !tbaa !489
  %9 = bitcast i8* %call3 to i64*, !dbg !491
  store i64 %8, i64* %9, align 8, !dbg !491, !tbaa !492
  %10 = bitcast %struct._Py_slist_t* %arrayidx to i8**, !dbg !493
  store i8* %call3, i8** %10, align 8, !dbg !493, !tbaa !489
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !494
  %11 = load i64, i64* %entries, align 8, !dbg !495, !tbaa !329
  %inc = add i64 %11, 1, !dbg !495
  store i64 %inc, i64* %entries, align 8, !dbg !495, !tbaa !329
  %conv = uitofp i64 %inc to float, !dbg !496
  %12 = load i64, i64* %num_buckets, align 8, !dbg !497, !tbaa !324
  %conv8 = uitofp i64 %12 to float, !dbg !499
  %div = fdiv float %conv, %conv8, !dbg !500
  %cmp10 = fcmp ogt float %div, 5.000000e-01, !dbg !501
  br i1 %cmp10, label %if.then.12, label %cleanup, !dbg !502

if.then.12:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !249, metadata !272) #5, !dbg !503
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* null, i64 0, metadata !253, metadata !272) #5, !dbg !504
  %conv.i = uitofp i64 %inc to double, !dbg !505
  %mul.i = fmul double %conv.i, 2.000000e+00, !dbg !506
  %div.i = fdiv double %mul.i, 6.000000e-01, !dbg !507
  %conv1.i = fptoui double %div.i to i64, !dbg !508
  tail call void @llvm.dbg.value(metadata i64 %conv1.i, i64 0, metadata !222, metadata !272) #5, !dbg !509
  %cmp.i.i = icmp ult i64 %conv1.i, 16, !dbg !511
  br i1 %cmp.i.i, label %round_size.exit.i, label %while.cond.i.i.preheader, !dbg !512

while.cond.i.i.preheader:                         ; preds = %if.then.12
  br label %while.cond.i.i, !dbg !513

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %while.cond.i.i
  %i.0.i.i = phi i64 [ %shl.i.i, %while.cond.i.i ], [ 1, %while.cond.i.i.preheader ], !dbg !514
  %cmp1.i.i = icmp ult i64 %i.0.i.i, %conv1.i, !dbg !513
  %shl.i.i = shl i64 %i.0.i.i, 1, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %shl.i.i, i64 0, metadata !223, metadata !272) #5, !dbg !516
  br i1 %cmp1.i.i, label %while.cond.i.i, label %round_size.exit.i.loopexit, !dbg !517

round_size.exit.i.loopexit:                       ; preds = %while.cond.i.i
  %i.0.i.i.lcssa = phi i64 [ %i.0.i.i, %while.cond.i.i ]
  br label %round_size.exit.i, !dbg !518

round_size.exit.i:                                ; preds = %round_size.exit.i.loopexit, %if.then.12
  %retval.0.i.i = phi i64 [ 16, %if.then.12 ], [ %i.0.i.i.lcssa, %round_size.exit.i.loopexit ], !dbg !514
  tail call void @llvm.dbg.value(metadata i64 %retval.0.i.i, i64 0, metadata !251, metadata !272) #5, !dbg !518
  %cmp.i = icmp eq i64 %retval.0.i.i, %12, !dbg !519
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !520

if.end.i:                                         ; preds = %round_size.exit.i
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !254, metadata !272) #5, !dbg !521
  %mul4.i = shl i64 %retval.0.i.i, 3, !dbg !522
  tail call void @llvm.dbg.value(metadata i64 %mul4.i, i64 0, metadata !250, metadata !272) #5, !dbg !523
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %6, i64 0, metadata !253, metadata !272) #5, !dbg !504
  %13 = load i8* (i64)*, i8* (i64)** %malloc, align 8, !dbg !524, !tbaa !467
  %call5.i = tail call i8* %13(i64 %mul4.i) #5, !dbg !525
  %14 = bitcast %struct._Py_slist_t** %buckets to i8**, !dbg !526
  store i8* %call5.i, i8** %14, align 8, !dbg !526, !tbaa !338
  %cmp8.i = icmp eq i8* %call5.i, null, !dbg !527
  br i1 %cmp8.i, label %if.then.10.i, label %if.end.12.i, !dbg !529

if.then.10.i:                                     ; preds = %if.end.i
  store %struct._Py_slist_t* %6, %struct._Py_slist_t** %buckets, align 8, !dbg !530, !tbaa !338
  br label %cleanup, !dbg !532

if.end.12.i:                                      ; preds = %if.end.i
  tail call void @llvm.memset.p0i8.i64(i8* %call5.i, i8 0, i64 %mul4.i, i32 8, i1 false) #5, !dbg !533
  store i64 %retval.0.i.i, i64* %num_buckets, align 8, !dbg !534, !tbaa !324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !252, metadata !272) #5, !dbg !535
  %cmp15.64.i = icmp eq i64 %12, 0, !dbg !536
  br i1 %cmp15.64.i, label %for.end.26.i, label %for.body.lr.ph.i, !dbg !537

for.body.lr.ph.i:                                 ; preds = %if.end.12.i
  %sub.i = add i64 %retval.0.i.i, -1, !dbg !538
  br label %for.body.i, !dbg !537

for.body.i:                                       ; preds = %for.end.i, %for.body.lr.ph.i
  %bucket.065.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i ], !dbg !539
  %head.i.33 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %6, i64 %bucket.065.i, i32 0, !dbg !540
  %15 = bitcast %struct._Py_slist_item_s** %head.i.33 to %struct._Py_hashtable_entry_t**, !dbg !540
  %16 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %15, align 8, !dbg !540, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %16, i64 0, metadata !255, metadata !272) #5, !dbg !541
  %cmp19.62.i = icmp eq %struct._Py_hashtable_entry_t* %16, null, !dbg !542
  br i1 %cmp19.62.i, label %for.end.i, label %for.body.21.lr.ph.i, !dbg !543

for.body.21.lr.ph.i:                              ; preds = %for.body.i
  %17 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !544, !tbaa !338
  br label %for.body.21.i, !dbg !543

for.body.21.i:                                    ; preds = %for.body.21.i, %for.body.21.lr.ph.i
  %entry17.063.i = phi %struct._Py_hashtable_entry_t* [ %16, %for.body.21.lr.ph.i ], [ %20, %for.body.21.i ], !dbg !539
  %18 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 0, !dbg !545
  %19 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to %struct._Py_hashtable_entry_t**, !dbg !545
  %20 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %19, align 8, !dbg !545, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %20, i64 0, metadata !259, metadata !272) #5, !dbg !546
  %key_hash.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 2, !dbg !547
  %21 = load i64, i64* %key_hash.i, align 8, !dbg !547, !tbaa !450
  %and.i = and i64 %21, %sub.i, !dbg !548
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !260, metadata !272) #5, !dbg !549
  %arrayidx24.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %17, i64 %and.i, !dbg !550
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %arrayidx24.i, i64 0, metadata !228, metadata !272) #5, !dbg !551
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %18, i64 0, metadata !229, metadata !272) #5, !dbg !553
  %head.i.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx24.i, i64 0, i32 0, !dbg !554
  %22 = bitcast %struct._Py_slist_t* %arrayidx24.i to i64*, !dbg !554
  %23 = load i64, i64* %22, align 8, !dbg !554, !tbaa !489
  %24 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to i64*, !dbg !555
  store i64 %23, i64* %24, align 8, !dbg !555, !tbaa !492
  store %struct._Py_slist_item_s* %18, %struct._Py_slist_item_s** %head.i.i, align 8, !dbg !556, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %20, i64 0, metadata !255, metadata !272) #5, !dbg !541
  %cmp19.i = icmp eq %struct._Py_hashtable_entry_t* %20, null, !dbg !542
  br i1 %cmp19.i, label %for.end.i.loopexit, label %for.body.21.i, !dbg !543

for.end.i.loopexit:                               ; preds = %for.body.21.i
  br label %for.end.i, !dbg !557

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.body.i
  %inc.i = add nuw i64 %bucket.065.i, 1, !dbg !557
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !252, metadata !272) #5, !dbg !535
  %exitcond.i = icmp eq i64 %inc.i, %12, !dbg !537
  br i1 %exitcond.i, label %for.end.26.i.loopexit, label %for.body.i, !dbg !537

for.end.26.i.loopexit:                            ; preds = %for.end.i
  br label %for.end.26.i, !dbg !558

for.end.26.i:                                     ; preds = %for.end.26.i.loopexit, %if.end.12.i
  %free.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !558
  %25 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !558, !tbaa !559
  %26 = bitcast %struct._Py_slist_t* %6 to i8*, !dbg !560
  tail call void %25(i8* %26) #5, !dbg !561
  br label %cleanup, !dbg !562

cleanup:                                          ; preds = %for.end.26.i, %if.then.10.i, %round_size.exit.i, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %round_size.exit.i ], [ 0, %if.then.10.i ], [ 0, %for.end.26.i ]
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_get(%struct._Py_hashtable_t* nocapture readonly %ht, i8* %key, i8* nocapture %data, i64 %data_size) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !153, metadata !272), !dbg !564
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !154, metadata !272), !dbg !565
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !155, metadata !272), !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !156, metadata !272), !dbg !567
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !135, metadata !272) #5, !dbg !568
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !136, metadata !272) #5, !dbg !570
  %hash_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 4, !dbg !571
  %0 = load i64 (i8*)*, i64 (i8*)** %hash_func.i, align 8, !dbg !571, !tbaa !348
  %call.i = tail call i64 %0(i8* %key) #5, !dbg !572
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !137, metadata !272) #5, !dbg !573
  %num_buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !574
  %1 = load i64, i64* %num_buckets.i, align 8, !dbg !574, !tbaa !324
  %sub.i = add i64 %1, -1, !dbg !575
  %and.i = and i64 %sub.i, %call.i, !dbg !576
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !138, metadata !272) #5, !dbg !577
  %buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !578
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !578, !tbaa !338
  %head.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %and.i, i32 0, !dbg !578
  %3 = bitcast %struct._Py_slist_item_s** %head.i to %struct._Py_hashtable_entry_t**, !dbg !578
  %compare_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 5, !dbg !579
  %entry1.0.17.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !578
  %cmp.18.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.17.i, null, !dbg !580
  br i1 %cmp.18.i, label %cleanup, label %for.body.i.preheader, !dbg !581

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i, !dbg !582

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %entry1.019.i = phi %struct._Py_hashtable_entry_t* [ %entry1.0.i, %for.inc.i ], [ %entry1.0.17.i, %for.body.i.preheader ], !dbg !583
  %key_hash2.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.019.i, i64 0, i32 2, !dbg !582
  %4 = load i64, i64* %key_hash2.i, align 8, !dbg !582, !tbaa !450
  %cmp3.i = icmp eq i64 %4, %call.i, !dbg !584
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.inc.i, !dbg !585

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.i, align 8, !dbg !579, !tbaa !351
  %call4.i = tail call i32 %5(i8* %key, %struct._Py_hashtable_entry_t* %entry1.019.i) #5, !dbg !586
  %tobool.i = icmp eq i32 %call4.i, 0, !dbg !586
  br i1 %tobool.i, label %for.inc.i, label %do.body, !dbg !587

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %6 = bitcast %struct._Py_hashtable_entry_t* %entry1.019.i to %struct._Py_hashtable_entry_t**, !dbg !588
  %entry1.0.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %6, align 8, !dbg !578
  %cmp.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.i, null, !dbg !580
  br i1 %cmp.i, label %cleanup.loopexit, label %for.body.i, !dbg !581

do.body:                                          ; preds = %land.lhs.true.i
  %entry1.019.i.lcssa = phi %struct._Py_hashtable_entry_t* [ %entry1.019.i, %land.lhs.true.i ]
  %add.ptr4 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.019.i.lcssa, i64 1, !dbg !589
  %add.ptr = bitcast %struct._Py_hashtable_entry_t* %add.ptr4 to i8*, !dbg !589
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %data, i8* %add.ptr, i64 %data_size, i32 1, i1 false), !dbg !589
  br label %cleanup, !dbg !592

cleanup.loopexit:                                 ; preds = %for.inc.i
  br label %cleanup, !dbg !593

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry ], [ 0, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !593
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* nocapture %ht, i8* %key, i8* %data, i64 %data_size) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !160, metadata !272), !dbg !594
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !161, metadata !272), !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !162, metadata !272), !dbg !596
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !163, metadata !272), !dbg !597
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !232, metadata !272) #5, !dbg !598
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !233, metadata !272) #5, !dbg !600
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !234, metadata !272) #5, !dbg !601
  tail call void @llvm.dbg.value(metadata i64 %data_size, i64 0, metadata !235, metadata !272) #5, !dbg !602
  %hash_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 4, !dbg !603
  %0 = load i64 (i8*)*, i64 (i8*)** %hash_func.i, align 8, !dbg !603, !tbaa !348
  %call.i = tail call i64 %0(i8* %key) #5, !dbg !604
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !236, metadata !272) #5, !dbg !605
  %num_buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !606
  %1 = load i64, i64* %num_buckets.i, align 8, !dbg !606, !tbaa !324
  %sub.i = add i64 %1, -1, !dbg !607
  %and.i = and i64 %sub.i, %call.i, !dbg !608
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !237, metadata !272) #5, !dbg !609
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* null, i64 0, metadata !239, metadata !272) #5, !dbg !610
  %buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !611
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !611, !tbaa !338
  %head.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %and.i, i32 0, !dbg !611
  %3 = bitcast %struct._Py_slist_item_s** %head.i to %struct._Py_hashtable_entry_t**, !dbg !611
  %entry1.0.52.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !611
  %cond.53.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.52.i, null, !dbg !613
  br i1 %cond.53.i, label %_hashtable_pop_entry.exit, label %for.body.lr.ph.i, !dbg !613

for.body.lr.ph.i:                                 ; preds = %entry
  %compare_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 5, !dbg !614
  br label %for.body.i, !dbg !613

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %entry1.055.i = phi %struct._Py_hashtable_entry_t* [ %entry1.0.52.i, %for.body.lr.ph.i ], [ %entry1.0.i, %if.end.i ], !dbg !618
  %previous.054.i = phi %struct._Py_hashtable_entry_t* [ null, %for.body.lr.ph.i ], [ %entry1.055.i, %if.end.i ], !dbg !618
  %key_hash2.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.055.i, i64 0, i32 2, !dbg !619
  %4 = load i64, i64* %key_hash2.i, align 8, !dbg !619, !tbaa !450
  %cmp3.i = icmp eq i64 %4, %call.i, !dbg !620
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i, !dbg !621

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.i, align 8, !dbg !614, !tbaa !351
  %call4.i = tail call i32 %5(i8* %key, %struct._Py_hashtable_entry_t* %entry1.055.i) #5, !dbg !622
  %tobool.i = icmp eq i32 %call4.i, 0, !dbg !622
  br i1 %tobool.i, label %if.end.i, label %if.end.7.i, !dbg !623

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i
  %6 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i to %struct._Py_hashtable_entry_t**, !dbg !624
  %entry1.0.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %6, align 8, !dbg !611
  %cond.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.i, null, !dbg !613
  br i1 %cond.i, label %_hashtable_pop_entry.exit.loopexit, label %for.body.i, !dbg !613

if.end.7.i:                                       ; preds = %land.lhs.true.i
  %previous.054.i.lcssa = phi %struct._Py_hashtable_entry_t* [ %previous.054.i, %land.lhs.true.i ]
  %entry1.055.i.lcssa = phi %struct._Py_hashtable_entry_t* [ %entry1.055.i, %land.lhs.true.i ]
  %cmp.i.i = icmp eq %struct._Py_hashtable_entry_t* %previous.054.i.lcssa, null, !dbg !625
  %7 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i.lcssa to i64*, !dbg !628
  %8 = load i64, i64* %7, align 8, !dbg !628, !tbaa !492
  br i1 %cmp.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !629

if.then.i.i:                                      ; preds = %if.end.7.i
  %9 = bitcast %struct._Py_hashtable_entry_t* %previous.054.i.lcssa to i64*, !dbg !630
  store i64 %8, i64* %9, align 8, !dbg !630, !tbaa !492
  br label %_Py_slist_remove.exit.i, !dbg !631

if.else.i.i:                                      ; preds = %if.end.7.i
  %10 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !632, !tbaa !338
  %arrayidx9.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %10, i64 %and.i, !dbg !633
  %11 = bitcast %struct._Py_slist_t* %arrayidx9.i to i64*, !dbg !634
  store i64 %8, i64* %11, align 8, !dbg !634, !tbaa !489
  br label %_Py_slist_remove.exit.i, !dbg !635

_Py_slist_remove.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %entries.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !636
  %12 = load i64, i64* %entries.i, align 8, !dbg !637, !tbaa !329
  %dec.i = add i64 %12, -1, !dbg !637
  store i64 %dec.i, i64* %entries.i, align 8, !dbg !637, !tbaa !329
  %cmp10.i = icmp eq i8* %data, null, !dbg !638
  br i1 %cmp10.i, label %if.end.12.i, label %do.body.i, !dbg !640

do.body.i:                                        ; preds = %_Py_slist_remove.exit.i
  %add.ptr49.i = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.055.i.lcssa, i64 1, !dbg !641
  %add.ptr.i = bitcast %struct._Py_hashtable_entry_t* %add.ptr49.i to i8*, !dbg !641
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %data, i8* %add.ptr.i, i64 %data_size, i32 1, i1 false) #5, !dbg !641
  br label %if.end.12.i, !dbg !644

if.end.12.i:                                      ; preds = %do.body.i, %_Py_slist_remove.exit.i
  %free.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !646
  %13 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !646, !tbaa !559
  %14 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i.lcssa to i8*, !dbg !647
  tail call void %13(i8* %14) #5, !dbg !648
  %15 = load i64, i64* %entries.i, align 8, !dbg !649, !tbaa !329
  %conv.i = uitofp i64 %15 to float, !dbg !651
  %16 = load i64, i64* %num_buckets.i, align 8, !dbg !652, !tbaa !324
  %conv15.i = uitofp i64 %16 to float, !dbg !654
  %div.i = fdiv float %conv.i, %conv15.i, !dbg !655
  %conv16.i = fpext float %div.i to double, !dbg !651
  %cmp17.i = fcmp olt double %conv16.i, 1.000000e-01, !dbg !656
  br i1 %cmp17.i, label %if.then.19.i, label %_hashtable_pop_entry.exit, !dbg !657

if.then.19.i:                                     ; preds = %if.end.12.i
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !249, metadata !272) #5, !dbg !658
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* null, i64 0, metadata !253, metadata !272) #5, !dbg !659
  %conv.i.2 = uitofp i64 %15 to double, !dbg !660
  %mul.i = fmul double %conv.i.2, 2.000000e+00, !dbg !661
  %div.i.3 = fdiv double %mul.i, 6.000000e-01, !dbg !662
  %conv1.i = fptoui double %div.i.3 to i64, !dbg !663
  tail call void @llvm.dbg.value(metadata i64 %conv1.i, i64 0, metadata !222, metadata !272) #5, !dbg !664
  %cmp.i.i.4 = icmp ult i64 %conv1.i, 16, !dbg !666
  br i1 %cmp.i.i.4, label %round_size.exit.i, label %while.cond.i.i.preheader, !dbg !667

while.cond.i.i.preheader:                         ; preds = %if.then.19.i
  br label %while.cond.i.i, !dbg !668

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %while.cond.i.i
  %i.0.i.i = phi i64 [ %shl.i.i, %while.cond.i.i ], [ 1, %while.cond.i.i.preheader ], !dbg !669
  %cmp1.i.i = icmp ult i64 %i.0.i.i, %conv1.i, !dbg !668
  %shl.i.i = shl i64 %i.0.i.i, 1, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %shl.i.i, i64 0, metadata !223, metadata !272) #5, !dbg !671
  br i1 %cmp1.i.i, label %while.cond.i.i, label %round_size.exit.i.loopexit, !dbg !672

round_size.exit.i.loopexit:                       ; preds = %while.cond.i.i
  %i.0.i.i.lcssa = phi i64 [ %i.0.i.i, %while.cond.i.i ]
  br label %round_size.exit.i, !dbg !673

round_size.exit.i:                                ; preds = %round_size.exit.i.loopexit, %if.then.19.i
  %retval.0.i.i = phi i64 [ 16, %if.then.19.i ], [ %i.0.i.i.lcssa, %round_size.exit.i.loopexit ], !dbg !669
  tail call void @llvm.dbg.value(metadata i64 %retval.0.i.i, i64 0, metadata !251, metadata !272) #5, !dbg !673
  %cmp.i = icmp eq i64 %retval.0.i.i, %16, !dbg !674
  br i1 %cmp.i, label %_hashtable_pop_entry.exit, label %if.end.i.7, !dbg !675

if.end.i.7:                                       ; preds = %round_size.exit.i
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !254, metadata !272) #5, !dbg !676
  %mul4.i = shl i64 %retval.0.i.i, 3, !dbg !677
  tail call void @llvm.dbg.value(metadata i64 %mul4.i, i64 0, metadata !250, metadata !272) #5, !dbg !678
  %17 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !679, !tbaa !338
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %17, i64 0, metadata !253, metadata !272) #5, !dbg !659
  %malloc.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 0, !dbg !680
  %18 = load i8* (i64)*, i8* (i64)** %malloc.i, align 8, !dbg !680, !tbaa !467
  %call5.i = tail call i8* %18(i64 %mul4.i) #5, !dbg !681
  %19 = bitcast %struct._Py_slist_t** %buckets.i to i8**, !dbg !682
  store i8* %call5.i, i8** %19, align 8, !dbg !682, !tbaa !338
  %cmp8.i = icmp eq i8* %call5.i, null, !dbg !683
  br i1 %cmp8.i, label %if.then.10.i, label %if.end.12.i.8, !dbg !684

if.then.10.i:                                     ; preds = %if.end.i.7
  store %struct._Py_slist_t* %17, %struct._Py_slist_t** %buckets.i, align 8, !dbg !685, !tbaa !338
  br label %_hashtable_pop_entry.exit, !dbg !686

if.end.12.i.8:                                    ; preds = %if.end.i.7
  tail call void @llvm.memset.p0i8.i64(i8* %call5.i, i8 0, i64 %mul4.i, i32 8, i1 false) #5, !dbg !687
  store i64 %retval.0.i.i, i64* %num_buckets.i, align 8, !dbg !688, !tbaa !324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !252, metadata !272) #5, !dbg !689
  %cmp15.64.i = icmp eq i64 %16, 0, !dbg !690
  br i1 %cmp15.64.i, label %for.end.26.i, label %for.body.lr.ph.i.10, !dbg !691

for.body.lr.ph.i.10:                              ; preds = %if.end.12.i.8
  %sub.i.9 = add i64 %retval.0.i.i, -1, !dbg !692
  br label %for.body.i.12, !dbg !691

for.body.i.12:                                    ; preds = %for.end.i, %for.body.lr.ph.i.10
  %bucket.065.i = phi i64 [ 0, %for.body.lr.ph.i.10 ], [ %inc.i, %for.end.i ], !dbg !693
  %head.i.11 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %17, i64 %bucket.065.i, i32 0, !dbg !694
  %20 = bitcast %struct._Py_slist_item_s** %head.i.11 to %struct._Py_hashtable_entry_t**, !dbg !694
  %21 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %20, align 8, !dbg !694, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %21, i64 0, metadata !255, metadata !272) #5, !dbg !695
  %cmp19.62.i = icmp eq %struct._Py_hashtable_entry_t* %21, null, !dbg !696
  br i1 %cmp19.62.i, label %for.end.i, label %for.body.21.lr.ph.i, !dbg !697

for.body.21.lr.ph.i:                              ; preds = %for.body.i.12
  %22 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !698, !tbaa !338
  br label %for.body.21.i, !dbg !697

for.body.21.i:                                    ; preds = %for.body.21.i, %for.body.21.lr.ph.i
  %entry17.063.i = phi %struct._Py_hashtable_entry_t* [ %21, %for.body.21.lr.ph.i ], [ %25, %for.body.21.i ], !dbg !693
  %23 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 0, !dbg !699
  %24 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to %struct._Py_hashtable_entry_t**, !dbg !699
  %25 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %24, align 8, !dbg !699, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %25, i64 0, metadata !259, metadata !272) #5, !dbg !700
  %key_hash.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 2, !dbg !701
  %26 = load i64, i64* %key_hash.i, align 8, !dbg !701, !tbaa !450
  %and.i.13 = and i64 %26, %sub.i.9, !dbg !702
  tail call void @llvm.dbg.value(metadata i64 %and.i.13, i64 0, metadata !260, metadata !272) #5, !dbg !703
  %arrayidx24.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %22, i64 %and.i.13, !dbg !704
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %arrayidx24.i, i64 0, metadata !228, metadata !272) #5, !dbg !705
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %23, i64 0, metadata !229, metadata !272) #5, !dbg !707
  %head.i.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx24.i, i64 0, i32 0, !dbg !708
  %27 = bitcast %struct._Py_slist_t* %arrayidx24.i to i64*, !dbg !708
  %28 = load i64, i64* %27, align 8, !dbg !708, !tbaa !489
  %29 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to i64*, !dbg !709
  store i64 %28, i64* %29, align 8, !dbg !709, !tbaa !492
  store %struct._Py_slist_item_s* %23, %struct._Py_slist_item_s** %head.i.i, align 8, !dbg !710, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %25, i64 0, metadata !255, metadata !272) #5, !dbg !695
  %cmp19.i = icmp eq %struct._Py_hashtable_entry_t* %25, null, !dbg !696
  br i1 %cmp19.i, label %for.end.i.loopexit, label %for.body.21.i, !dbg !697

for.end.i.loopexit:                               ; preds = %for.body.21.i
  br label %for.end.i, !dbg !711

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.body.i.12
  %inc.i = add nuw i64 %bucket.065.i, 1, !dbg !711
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !252, metadata !272) #5, !dbg !689
  %exitcond.i = icmp eq i64 %inc.i, %16, !dbg !691
  br i1 %exitcond.i, label %for.end.26.i.loopexit, label %for.body.i.12, !dbg !691

for.end.26.i.loopexit:                            ; preds = %for.end.i
  br label %for.end.26.i, !dbg !712

for.end.26.i:                                     ; preds = %for.end.26.i.loopexit, %if.end.12.i.8
  %30 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !712, !tbaa !559
  %31 = bitcast %struct._Py_slist_t* %17 to i8*, !dbg !713
  tail call void %30(i8* %31) #5, !dbg !714
  br label %_hashtable_pop_entry.exit, !dbg !715

_hashtable_pop_entry.exit.loopexit:               ; preds = %if.end.i
  br label %_hashtable_pop_entry.exit, !dbg !716

_hashtable_pop_entry.exit:                        ; preds = %_hashtable_pop_entry.exit.loopexit, %for.end.26.i, %if.then.10.i, %round_size.exit.i, %entry, %if.end.12.i
  %retval.0.i = phi i32 [ 1, %if.end.12.i ], [ 0, %entry ], [ 1, %round_size.exit.i ], [ 1, %if.then.10.i ], [ 1, %for.end.26.i ], [ 0, %_hashtable_pop_entry.exit.loopexit ], !dbg !618
  ret i32 %retval.0.i, !dbg !716
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_delete(%struct._Py_hashtable_t* nocapture %ht, i8* %key) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !168, metadata !272), !dbg !717
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !169, metadata !272), !dbg !718
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !232, metadata !272) #5, !dbg !719
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !233, metadata !272) #5, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !234, metadata !272) #5, !dbg !722
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !235, metadata !272) #5, !dbg !723
  %hash_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 4, !dbg !724
  %0 = load i64 (i8*)*, i64 (i8*)** %hash_func.i, align 8, !dbg !724, !tbaa !348
  %call.i = tail call i64 %0(i8* %key) #5, !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !236, metadata !272) #5, !dbg !726
  %num_buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !727
  %1 = load i64, i64* %num_buckets.i, align 8, !dbg !727, !tbaa !324
  %sub.i = add i64 %1, -1, !dbg !728
  %and.i = and i64 %sub.i, %call.i, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !237, metadata !272) #5, !dbg !730
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* null, i64 0, metadata !239, metadata !272) #5, !dbg !731
  %buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !732
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !732, !tbaa !338
  %head.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %and.i, i32 0, !dbg !732
  %3 = bitcast %struct._Py_slist_item_s** %head.i to %struct._Py_hashtable_entry_t**, !dbg !732
  %entry1.0.52.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !732
  %cond.53.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.52.i, null, !dbg !733
  br i1 %cond.53.i, label %_hashtable_pop_entry.exit, label %for.body.lr.ph.i, !dbg !733

for.body.lr.ph.i:                                 ; preds = %entry
  %compare_func.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 5, !dbg !734
  br label %for.body.i, !dbg !733

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %entry1.055.i = phi %struct._Py_hashtable_entry_t* [ %entry1.0.52.i, %for.body.lr.ph.i ], [ %entry1.0.i, %if.end.i ], !dbg !735
  %previous.054.i = phi %struct._Py_hashtable_entry_t* [ null, %for.body.lr.ph.i ], [ %entry1.055.i, %if.end.i ], !dbg !735
  %key_hash2.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.055.i, i64 0, i32 2, !dbg !736
  %4 = load i64, i64* %key_hash2.i, align 8, !dbg !736, !tbaa !450
  %cmp3.i = icmp eq i64 %4, %call.i, !dbg !737
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i, !dbg !738

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.i, align 8, !dbg !734, !tbaa !351
  %call4.i = tail call i32 %5(i8* %key, %struct._Py_hashtable_entry_t* %entry1.055.i) #5, !dbg !739
  %tobool.i = icmp eq i32 %call4.i, 0, !dbg !739
  br i1 %tobool.i, label %if.end.i, label %if.end.7.i, !dbg !740

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i
  %6 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i to %struct._Py_hashtable_entry_t**, !dbg !741
  %entry1.0.i = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %6, align 8, !dbg !732
  %cond.i = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.i, null, !dbg !733
  br i1 %cond.i, label %_hashtable_pop_entry.exit.loopexit, label %for.body.i, !dbg !733

if.end.7.i:                                       ; preds = %land.lhs.true.i
  %previous.054.i.lcssa = phi %struct._Py_hashtable_entry_t* [ %previous.054.i, %land.lhs.true.i ]
  %entry1.055.i.lcssa = phi %struct._Py_hashtable_entry_t* [ %entry1.055.i, %land.lhs.true.i ]
  %cmp.i.i = icmp eq %struct._Py_hashtable_entry_t* %previous.054.i.lcssa, null, !dbg !742
  %7 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i.lcssa to i64*, !dbg !744
  %8 = load i64, i64* %7, align 8, !dbg !744, !tbaa !492
  br i1 %cmp.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !745

if.then.i.i:                                      ; preds = %if.end.7.i
  %9 = bitcast %struct._Py_hashtable_entry_t* %previous.054.i.lcssa to i64*, !dbg !746
  store i64 %8, i64* %9, align 8, !dbg !746, !tbaa !492
  br label %_Py_slist_remove.exit.i, !dbg !747

if.else.i.i:                                      ; preds = %if.end.7.i
  %10 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !748, !tbaa !338
  %arrayidx9.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %10, i64 %and.i, !dbg !749
  %11 = bitcast %struct._Py_slist_t* %arrayidx9.i to i64*, !dbg !750
  store i64 %8, i64* %11, align 8, !dbg !750, !tbaa !489
  br label %_Py_slist_remove.exit.i, !dbg !751

_Py_slist_remove.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %entries.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !752
  %12 = load i64, i64* %entries.i, align 8, !dbg !753, !tbaa !329
  %dec.i = add i64 %12, -1, !dbg !753
  store i64 %dec.i, i64* %entries.i, align 8, !dbg !753, !tbaa !329
  %free.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !754
  %13 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !754, !tbaa !559
  %14 = bitcast %struct._Py_hashtable_entry_t* %entry1.055.i.lcssa to i8*, !dbg !755
  tail call void %13(i8* %14) #5, !dbg !756
  %15 = load i64, i64* %entries.i, align 8, !dbg !757, !tbaa !329
  %conv.i = uitofp i64 %15 to float, !dbg !758
  %16 = load i64, i64* %num_buckets.i, align 8, !dbg !759, !tbaa !324
  %conv15.i = uitofp i64 %16 to float, !dbg !761
  %div.i = fdiv float %conv.i, %conv15.i, !dbg !762
  %conv16.i = fpext float %div.i to double, !dbg !758
  %cmp17.i = fcmp olt double %conv16.i, 1.000000e-01, !dbg !763
  br i1 %cmp17.i, label %if.then.19.i, label %_hashtable_pop_entry.exit, !dbg !764

if.then.19.i:                                     ; preds = %_Py_slist_remove.exit.i
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !249, metadata !272) #5, !dbg !765
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* null, i64 0, metadata !253, metadata !272) #5, !dbg !766
  %conv.i.2 = uitofp i64 %15 to double, !dbg !767
  %mul.i = fmul double %conv.i.2, 2.000000e+00, !dbg !768
  %div.i.3 = fdiv double %mul.i, 6.000000e-01, !dbg !769
  %conv1.i = fptoui double %div.i.3 to i64, !dbg !770
  tail call void @llvm.dbg.value(metadata i64 %conv1.i, i64 0, metadata !222, metadata !272) #5, !dbg !771
  %cmp.i.i.4 = icmp ult i64 %conv1.i, 16, !dbg !773
  br i1 %cmp.i.i.4, label %round_size.exit.i, label %while.cond.i.i.preheader, !dbg !774

while.cond.i.i.preheader:                         ; preds = %if.then.19.i
  br label %while.cond.i.i, !dbg !775

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %while.cond.i.i
  %i.0.i.i = phi i64 [ %shl.i.i, %while.cond.i.i ], [ 1, %while.cond.i.i.preheader ], !dbg !776
  %cmp1.i.i = icmp ult i64 %i.0.i.i, %conv1.i, !dbg !775
  %shl.i.i = shl i64 %i.0.i.i, 1, !dbg !777
  tail call void @llvm.dbg.value(metadata i64 %shl.i.i, i64 0, metadata !223, metadata !272) #5, !dbg !778
  br i1 %cmp1.i.i, label %while.cond.i.i, label %round_size.exit.i.loopexit, !dbg !779

round_size.exit.i.loopexit:                       ; preds = %while.cond.i.i
  %i.0.i.i.lcssa = phi i64 [ %i.0.i.i, %while.cond.i.i ]
  br label %round_size.exit.i, !dbg !780

round_size.exit.i:                                ; preds = %round_size.exit.i.loopexit, %if.then.19.i
  %retval.0.i.i = phi i64 [ 16, %if.then.19.i ], [ %i.0.i.i.lcssa, %round_size.exit.i.loopexit ], !dbg !776
  tail call void @llvm.dbg.value(metadata i64 %retval.0.i.i, i64 0, metadata !251, metadata !272) #5, !dbg !780
  %cmp.i = icmp eq i64 %retval.0.i.i, %16, !dbg !781
  br i1 %cmp.i, label %_hashtable_pop_entry.exit, label %if.end.i.7, !dbg !782

if.end.i.7:                                       ; preds = %round_size.exit.i
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !254, metadata !272) #5, !dbg !783
  %mul4.i = shl i64 %retval.0.i.i, 3, !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %mul4.i, i64 0, metadata !250, metadata !272) #5, !dbg !785
  %17 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !786, !tbaa !338
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %17, i64 0, metadata !253, metadata !272) #5, !dbg !766
  %malloc.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 0, !dbg !787
  %18 = load i8* (i64)*, i8* (i64)** %malloc.i, align 8, !dbg !787, !tbaa !467
  %call5.i = tail call i8* %18(i64 %mul4.i) #5, !dbg !788
  %19 = bitcast %struct._Py_slist_t** %buckets.i to i8**, !dbg !789
  store i8* %call5.i, i8** %19, align 8, !dbg !789, !tbaa !338
  %cmp8.i = icmp eq i8* %call5.i, null, !dbg !790
  br i1 %cmp8.i, label %if.then.10.i, label %if.end.12.i, !dbg !791

if.then.10.i:                                     ; preds = %if.end.i.7
  store %struct._Py_slist_t* %17, %struct._Py_slist_t** %buckets.i, align 8, !dbg !792, !tbaa !338
  br label %_hashtable_pop_entry.exit, !dbg !793

if.end.12.i:                                      ; preds = %if.end.i.7
  tail call void @llvm.memset.p0i8.i64(i8* %call5.i, i8 0, i64 %mul4.i, i32 8, i1 false) #5, !dbg !794
  store i64 %retval.0.i.i, i64* %num_buckets.i, align 8, !dbg !795, !tbaa !324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !252, metadata !272) #5, !dbg !796
  %cmp15.64.i = icmp eq i64 %16, 0, !dbg !797
  br i1 %cmp15.64.i, label %for.end.26.i, label %for.body.lr.ph.i.9, !dbg !798

for.body.lr.ph.i.9:                               ; preds = %if.end.12.i
  %sub.i.8 = add i64 %retval.0.i.i, -1, !dbg !799
  br label %for.body.i.11, !dbg !798

for.body.i.11:                                    ; preds = %for.end.i, %for.body.lr.ph.i.9
  %bucket.065.i = phi i64 [ 0, %for.body.lr.ph.i.9 ], [ %inc.i, %for.end.i ], !dbg !800
  %head.i.10 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %17, i64 %bucket.065.i, i32 0, !dbg !801
  %20 = bitcast %struct._Py_slist_item_s** %head.i.10 to %struct._Py_hashtable_entry_t**, !dbg !801
  %21 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %20, align 8, !dbg !801, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %21, i64 0, metadata !255, metadata !272) #5, !dbg !802
  %cmp19.62.i = icmp eq %struct._Py_hashtable_entry_t* %21, null, !dbg !803
  br i1 %cmp19.62.i, label %for.end.i, label %for.body.21.lr.ph.i, !dbg !804

for.body.21.lr.ph.i:                              ; preds = %for.body.i.11
  %22 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !805, !tbaa !338
  br label %for.body.21.i, !dbg !804

for.body.21.i:                                    ; preds = %for.body.21.i, %for.body.21.lr.ph.i
  %entry17.063.i = phi %struct._Py_hashtable_entry_t* [ %21, %for.body.21.lr.ph.i ], [ %25, %for.body.21.i ], !dbg !800
  %23 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 0, !dbg !806
  %24 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to %struct._Py_hashtable_entry_t**, !dbg !806
  %25 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %24, align 8, !dbg !806, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %25, i64 0, metadata !259, metadata !272) #5, !dbg !807
  %key_hash.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 2, !dbg !808
  %26 = load i64, i64* %key_hash.i, align 8, !dbg !808, !tbaa !450
  %and.i.12 = and i64 %26, %sub.i.8, !dbg !809
  tail call void @llvm.dbg.value(metadata i64 %and.i.12, i64 0, metadata !260, metadata !272) #5, !dbg !810
  %arrayidx24.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %22, i64 %and.i.12, !dbg !811
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %arrayidx24.i, i64 0, metadata !228, metadata !272) #5, !dbg !812
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %23, i64 0, metadata !229, metadata !272) #5, !dbg !814
  %head.i.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx24.i, i64 0, i32 0, !dbg !815
  %27 = bitcast %struct._Py_slist_t* %arrayidx24.i to i64*, !dbg !815
  %28 = load i64, i64* %27, align 8, !dbg !815, !tbaa !489
  %29 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to i64*, !dbg !816
  store i64 %28, i64* %29, align 8, !dbg !816, !tbaa !492
  store %struct._Py_slist_item_s* %23, %struct._Py_slist_item_s** %head.i.i, align 8, !dbg !817, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %25, i64 0, metadata !255, metadata !272) #5, !dbg !802
  %cmp19.i = icmp eq %struct._Py_hashtable_entry_t* %25, null, !dbg !803
  br i1 %cmp19.i, label %for.end.i.loopexit, label %for.body.21.i, !dbg !804

for.end.i.loopexit:                               ; preds = %for.body.21.i
  br label %for.end.i, !dbg !818

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.body.i.11
  %inc.i = add nuw i64 %bucket.065.i, 1, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !252, metadata !272) #5, !dbg !796
  %exitcond.i = icmp eq i64 %inc.i, %16, !dbg !798
  br i1 %exitcond.i, label %for.end.26.i.loopexit, label %for.body.i.11, !dbg !798

for.end.26.i.loopexit:                            ; preds = %for.end.i
  br label %for.end.26.i, !dbg !819

for.end.26.i:                                     ; preds = %for.end.26.i.loopexit, %if.end.12.i
  %30 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !819, !tbaa !559
  %31 = bitcast %struct._Py_slist_t* %17 to i8*, !dbg !820
  tail call void %30(i8* %31) #5, !dbg !821
  br label %_hashtable_pop_entry.exit, !dbg !822

_hashtable_pop_entry.exit.loopexit:               ; preds = %if.end.i
  br label %_hashtable_pop_entry.exit, !dbg !823

_hashtable_pop_entry.exit:                        ; preds = %_hashtable_pop_entry.exit.loopexit, %for.end.26.i, %if.then.10.i, %round_size.exit.i, %entry, %_Py_slist_remove.exit.i
  ret void, !dbg !823
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* nocapture readonly %ht, i32 (%struct._Py_hashtable_entry_t*, i8*)* nocapture %func, i8* %arg) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !177, metadata !272), !dbg !824
  tail call void @llvm.dbg.value(metadata i32 (%struct._Py_hashtable_entry_t*, i8*)* %func, i64 0, metadata !178, metadata !272), !dbg !825
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !179, metadata !272), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !181, metadata !272), !dbg !827
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !828
  %0 = load i64, i64* %num_buckets, align 8, !dbg !828, !tbaa !324
  %cmp.24 = icmp eq i64 %0, 0, !dbg !829
  br i1 %cmp.24, label %cleanup.7, label %for.body.lr.ph, !dbg !830

for.body.lr.ph:                                   ; preds = %entry
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !831
  br label %for.body, !dbg !830

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.5
  %1 = phi i64 [ %0, %for.body.lr.ph ], [ %5, %for.inc.5 ]
  %hv.025 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.5 ]
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !831, !tbaa !338
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %hv.025, i32 0, !dbg !831
  %3 = bitcast %struct._Py_slist_item_s** %head to %struct._Py_hashtable_entry_t**, !dbg !831
  %entry1.0.20 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !831
  %tobool.21 = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.20, null, !dbg !832
  br i1 %tobool.21, label %for.inc.5, label %for.body.3.preheader, !dbg !832

for.body.3.preheader:                             ; preds = %for.body
  br label %for.body.3, !dbg !833

for.body.3:                                       ; preds = %for.body.3.preheader, %for.inc
  %entry1.023 = phi %struct._Py_hashtable_entry_t* [ %entry1.0, %for.inc ], [ %entry1.0.20, %for.body.3.preheader ]
  %call = tail call i32 %func(%struct._Py_hashtable_entry_t* %entry1.023, i8* %arg) #5, !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !182, metadata !272), !dbg !834
  %tobool4 = icmp eq i32 %call, 0, !dbg !835
  br i1 %tobool4, label %for.inc, label %cleanup.7.loopexit

for.inc:                                          ; preds = %for.body.3
  %4 = bitcast %struct._Py_hashtable_entry_t* %entry1.023 to %struct._Py_hashtable_entry_t**, !dbg !837
  %entry1.0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %4, align 8, !dbg !831
  %tobool = icmp eq %struct._Py_hashtable_entry_t* %entry1.0, null, !dbg !832
  br i1 %tobool, label %for.cond.2.for.inc.5_crit_edge, label %for.body.3, !dbg !832

for.cond.2.for.inc.5_crit_edge:                   ; preds = %for.inc
  %.pre = load i64, i64* %num_buckets, align 8, !dbg !828, !tbaa !324
  br label %for.inc.5, !dbg !832

for.inc.5:                                        ; preds = %for.cond.2.for.inc.5_crit_edge, %for.body
  %5 = phi i64 [ %.pre, %for.cond.2.for.inc.5_crit_edge ], [ %1, %for.body ], !dbg !828
  %inc = add i64 %hv.025, 1, !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !181, metadata !272), !dbg !827
  %cmp = icmp ult i64 %inc, %5, !dbg !829
  br i1 %cmp, label %for.body, label %cleanup.7.loopexit32, !dbg !830

cleanup.7.loopexit:                               ; preds = %for.body.3
  %call.lcssa = phi i32 [ %call, %for.body.3 ]
  br label %cleanup.7, !dbg !839

cleanup.7.loopexit32:                             ; preds = %for.inc.5
  br label %cleanup.7, !dbg !839

cleanup.7:                                        ; preds = %cleanup.7.loopexit32, %cleanup.7.loopexit, %entry
  %retval.3 = phi i32 [ 0, %entry ], [ %call.lcssa, %cleanup.7.loopexit ], [ 0, %cleanup.7.loopexit32 ]
  ret i32 %retval.3, !dbg !839
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_clear(%struct._Py_hashtable_t* nocapture %ht) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !193, metadata !272), !dbg !840
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !196, metadata !272), !dbg !841
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !842
  %0 = load i64, i64* %num_buckets, align 8, !dbg !842, !tbaa !324
  %cmp.31 = icmp eq i64 %0, 0, !dbg !845
  br i1 %cmp.31, label %for.end.10.thread, label %for.body.lr.ph, !dbg !846

for.end.10.thread:                                ; preds = %entry
  %entries.35 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !847
  store i64 0, i64* %entries.35, align 8, !dbg !848, !tbaa !329
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !249, metadata !272) #5, !dbg !849
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* null, i64 0, metadata !253, metadata !272) #5, !dbg !851
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !222, metadata !272) #5, !dbg !852
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !251, metadata !272) #5, !dbg !854
  br label %if.end.i, !dbg !855

for.body.lr.ph:                                   ; preds = %entry
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !856
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 7, !dbg !859
  %free = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !863
  %.pre = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !856, !tbaa !338
  br label %for.body, !dbg !846

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %1 = phi i64 [ %0, %for.body.lr.ph ], [ %12, %for.end ]
  %2 = phi %struct._Py_slist_t* [ %.pre, %for.body.lr.ph ], [ %13, %for.end ], !dbg !856
  %i.032 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.end ]
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %i.032, i32 0, !dbg !856
  %3 = bitcast %struct._Py_slist_item_s** %head to %struct._Py_hashtable_entry_t**, !dbg !856
  %4 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %3, align 8, !dbg !856, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %4, i64 0, metadata !194, metadata !272), !dbg !864
  %cmp3.29 = icmp eq %struct._Py_hashtable_entry_t* %4, null, !dbg !865
  br i1 %cmp3.29, label %for.end, label %for.body.4.preheader, !dbg !866

for.body.4.preheader:                             ; preds = %for.body
  br label %for.body.4, !dbg !867

for.body.4:                                       ; preds = %for.body.4.preheader, %if.end
  %entry1.030 = phi %struct._Py_hashtable_entry_t* [ %6, %if.end ], [ %4, %for.body.4.preheader ]
  %5 = bitcast %struct._Py_hashtable_entry_t* %entry1.030 to %struct._Py_hashtable_entry_t**, !dbg !867
  %6 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %5, align 8, !dbg !867, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %6, i64 0, metadata !195, metadata !272), !dbg !868
  %7 = load void (i8*)*, void (i8*)** %free_data_func, align 8, !dbg !859, !tbaa !357
  %tobool = icmp eq void (i8*)* %7, null, !dbg !869
  br i1 %tobool, label %if.end, label %if.then, !dbg !870

if.then:                                          ; preds = %for.body.4
  %add.ptr27 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.030, i64 1, !dbg !871
  %8 = bitcast %struct._Py_hashtable_entry_t* %add.ptr27 to i8**, !dbg !871
  %9 = load i8*, i8** %8, align 8, !dbg !871, !tbaa !423
  tail call void %7(i8* %9) #5, !dbg !872
  br label %if.end, !dbg !872

if.end:                                           ; preds = %for.body.4, %if.then
  %10 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !863, !tbaa !559
  %11 = bitcast %struct._Py_hashtable_entry_t* %entry1.030 to i8*, !dbg !873
  tail call void %10(i8* %11) #5, !dbg !874
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %6, i64 0, metadata !194, metadata !272), !dbg !864
  %cmp3 = icmp eq %struct._Py_hashtable_entry_t* %6, null, !dbg !865
  br i1 %cmp3, label %for.cond.2.for.end_crit_edge, label %for.body.4, !dbg !866

for.cond.2.for.end_crit_edge:                     ; preds = %if.end
  %.pre33 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !875, !tbaa !338
  %.pre34 = load i64, i64* %num_buckets, align 8, !dbg !842, !tbaa !324
  br label %for.end, !dbg !866

for.end:                                          ; preds = %for.cond.2.for.end_crit_edge, %for.body
  %12 = phi i64 [ %.pre34, %for.cond.2.for.end_crit_edge ], [ %1, %for.body ], !dbg !842
  %13 = phi %struct._Py_slist_t* [ %.pre33, %for.cond.2.for.end_crit_edge ], [ %2, %for.body ], !dbg !875
  %head.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %13, i64 %i.032, i32 0, !dbg !876
  store %struct._Py_slist_item_s* null, %struct._Py_slist_item_s** %head.i, align 8, !dbg !878, !tbaa !489
  %inc = add i64 %i.032, 1, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !196, metadata !272), !dbg !841
  %cmp = icmp ult i64 %inc, %12, !dbg !845
  br i1 %cmp, label %for.body, label %for.end.10, !dbg !846

for.end.10:                                       ; preds = %for.end
  %.lcssa = phi i64 [ %12, %for.end ]
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 1, !dbg !847
  store i64 0, i64* %entries, align 8, !dbg !848, !tbaa !329
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !249, metadata !272) #5, !dbg !849
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* null, i64 0, metadata !253, metadata !272) #5, !dbg !851
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !222, metadata !272) #5, !dbg !852
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !251, metadata !272) #5, !dbg !854
  %cmp.i = icmp eq i64 %.lcssa, 16, !dbg !880
  br i1 %cmp.i, label %hashtable_rehash.exit, label %if.end.i, !dbg !855

if.end.i:                                         ; preds = %for.end.10.thread, %for.end.10
  %14 = phi i64 [ 0, %for.end.10.thread ], [ %.lcssa, %for.end.10 ]
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !254, metadata !272) #5, !dbg !881
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !250, metadata !272) #5, !dbg !882
  %buckets.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !883
  %15 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !883, !tbaa !338
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %15, i64 0, metadata !253, metadata !272) #5, !dbg !851
  %malloc.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 0, !dbg !884
  %16 = load i8* (i64)*, i8* (i64)** %malloc.i, align 8, !dbg !884, !tbaa !467
  %call5.i = tail call i8* %16(i64 128) #5, !dbg !885
  %17 = bitcast %struct._Py_slist_t** %buckets.i to i8**, !dbg !886
  store i8* %call5.i, i8** %17, align 8, !dbg !886, !tbaa !338
  %cmp8.i = icmp eq i8* %call5.i, null, !dbg !887
  br i1 %cmp8.i, label %if.then.10.i, label %if.end.12.i, !dbg !888

if.then.10.i:                                     ; preds = %if.end.i
  store %struct._Py_slist_t* %15, %struct._Py_slist_t** %buckets.i, align 8, !dbg !889, !tbaa !338
  br label %hashtable_rehash.exit, !dbg !890

if.end.12.i:                                      ; preds = %if.end.i
  tail call void @llvm.memset.p0i8.i64(i8* %call5.i, i8 0, i64 128, i32 8, i1 false) #5, !dbg !891
  store i64 16, i64* %num_buckets, align 8, !dbg !892, !tbaa !324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !252, metadata !272) #5, !dbg !893
  %cmp15.64.i = icmp eq i64 %14, 0, !dbg !894
  br i1 %cmp15.64.i, label %for.end.26.i, label %for.body.i.preheader, !dbg !895

for.body.i.preheader:                             ; preds = %if.end.12.i
  br label %for.body.i, !dbg !896

for.body.i:                                       ; preds = %for.body.i.preheader, %for.end.i
  %bucket.065.i = phi i64 [ %inc.i, %for.end.i ], [ 0, %for.body.i.preheader ], !dbg !897
  %head.i.28 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %15, i64 %bucket.065.i, i32 0, !dbg !896
  %18 = bitcast %struct._Py_slist_item_s** %head.i.28 to %struct._Py_hashtable_entry_t**, !dbg !896
  %19 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %18, align 8, !dbg !896, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %19, i64 0, metadata !255, metadata !272) #5, !dbg !898
  %cmp19.62.i = icmp eq %struct._Py_hashtable_entry_t* %19, null, !dbg !899
  br i1 %cmp19.62.i, label %for.end.i, label %for.body.21.lr.ph.i, !dbg !900

for.body.21.lr.ph.i:                              ; preds = %for.body.i
  %20 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets.i, align 8, !dbg !901, !tbaa !338
  br label %for.body.21.i, !dbg !900

for.body.21.i:                                    ; preds = %for.body.21.i, %for.body.21.lr.ph.i
  %entry17.063.i = phi %struct._Py_hashtable_entry_t* [ %19, %for.body.21.lr.ph.i ], [ %23, %for.body.21.i ], !dbg !897
  %21 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 0, !dbg !902
  %22 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to %struct._Py_hashtable_entry_t**, !dbg !902
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %22, align 8, !dbg !902, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %23, i64 0, metadata !259, metadata !272) #5, !dbg !903
  %key_hash.i = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry17.063.i, i64 0, i32 2, !dbg !904
  %24 = load i64, i64* %key_hash.i, align 8, !dbg !904, !tbaa !450
  %and.i = and i64 %24, 15, !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %and.i, i64 0, metadata !260, metadata !272) #5, !dbg !906
  %arrayidx24.i = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %20, i64 %and.i, !dbg !907
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_t* %arrayidx24.i, i64 0, metadata !228, metadata !272) #5, !dbg !908
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %21, i64 0, metadata !229, metadata !272) #5, !dbg !910
  %head.i.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx24.i, i64 0, i32 0, !dbg !911
  %25 = bitcast %struct._Py_slist_t* %arrayidx24.i to i64*, !dbg !911
  %26 = load i64, i64* %25, align 8, !dbg !911, !tbaa !489
  %27 = bitcast %struct._Py_hashtable_entry_t* %entry17.063.i to i64*, !dbg !912
  store i64 %26, i64* %27, align 8, !dbg !912, !tbaa !492
  store %struct._Py_slist_item_s* %21, %struct._Py_slist_item_s** %head.i.i, align 8, !dbg !913, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_entry_t* %23, i64 0, metadata !255, metadata !272) #5, !dbg !898
  %cmp19.i = icmp eq %struct._Py_hashtable_entry_t* %23, null, !dbg !899
  br i1 %cmp19.i, label %for.end.i.loopexit, label %for.body.21.i, !dbg !900

for.end.i.loopexit:                               ; preds = %for.body.21.i
  br label %for.end.i, !dbg !914

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.body.i
  %inc.i = add nuw i64 %bucket.065.i, 1, !dbg !914
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !252, metadata !272) #5, !dbg !893
  %exitcond.i = icmp eq i64 %inc.i, %14, !dbg !895
  br i1 %exitcond.i, label %for.end.26.i.loopexit, label %for.body.i, !dbg !895

for.end.26.i.loopexit:                            ; preds = %for.end.i
  br label %for.end.26.i, !dbg !915

for.end.26.i:                                     ; preds = %for.end.26.i.loopexit, %if.end.12.i
  %free.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !915
  %28 = load void (i8*)*, void (i8*)** %free.i, align 8, !dbg !915, !tbaa !559
  %29 = bitcast %struct._Py_slist_t* %15 to i8*, !dbg !916
  tail call void %28(i8* %29) #5, !dbg !917
  br label %hashtable_rehash.exit, !dbg !918

hashtable_rehash.exit:                            ; preds = %for.end.10, %if.then.10.i, %for.end.26.i
  ret void, !dbg !919
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %ht) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %ht, i64 0, metadata !199, metadata !272), !dbg !920
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !272), !dbg !921
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 0, !dbg !922
  %0 = load i64, i64* %num_buckets, align 8, !dbg !922, !tbaa !324
  %cmp.28 = icmp eq i64 %0, 0, !dbg !923
  br i1 %cmp.28, label %entry.for.end_crit_edge, label %for.body.lr.ph, !dbg !924

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre30 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !925
  %.pre31 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !926
  br label %for.end, !dbg !924

for.body.lr.ph:                                   ; preds = %entry
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 2, !dbg !927
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 7, !dbg !928
  %free = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %ht, i64 0, i32 9, i32 1, !dbg !930
  br label %for.body, !dbg !924

for.body:                                         ; preds = %for.body.lr.ph, %while.end
  %1 = phi i64 [ %0, %for.body.lr.ph ], [ %10, %while.end ]
  %i.029 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %while.end ]
  %2 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !927, !tbaa !338
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %2, i64 %i.029, i32 0, !dbg !931
  %3 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8, !dbg !931, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %3, i64 0, metadata !201, metadata !272), !dbg !932
  %tobool.26 = icmp eq %struct._Py_slist_item_s* %3, null, !dbg !933
  br i1 %tobool.26, label %while.end, label %while.body.preheader, !dbg !933

while.body.preheader:                             ; preds = %for.body
  br label %while.body, !dbg !934

while.body:                                       ; preds = %while.body.preheader, %if.end
  %entry1.027 = phi %struct._Py_slist_item_s* [ %4, %if.end ], [ %3, %while.body.preheader ]
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %entry1.027, i64 0, i32 0, !dbg !934
  %4 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8, !dbg !934, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %4, i64 0, metadata !205, metadata !272), !dbg !935
  %5 = load void (i8*)*, void (i8*)** %free_data_func, align 8, !dbg !928, !tbaa !357
  %tobool2 = icmp eq void (i8*)* %5, null, !dbg !936
  br i1 %tobool2, label %if.end, label %if.then, !dbg !937

if.then:                                          ; preds = %while.body
  %add.ptr25 = getelementptr %struct._Py_slist_item_s, %struct._Py_slist_item_s* %entry1.027, i64 3, !dbg !938
  %6 = bitcast %struct._Py_slist_item_s* %add.ptr25 to i8**, !dbg !938
  %7 = load i8*, i8** %6, align 8, !dbg !938, !tbaa !423
  tail call void %5(i8* %7) #5, !dbg !939
  br label %if.end, !dbg !939

if.end:                                           ; preds = %while.body, %if.then
  %8 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !930, !tbaa !559
  %9 = bitcast %struct._Py_slist_item_s* %entry1.027 to i8*, !dbg !940
  tail call void %8(i8* %9) #5, !dbg !941
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %4, i64 0, metadata !201, metadata !272), !dbg !932
  %tobool = icmp eq %struct._Py_slist_item_s* %4, null, !dbg !933
  br i1 %tobool, label %while.cond.while.end_crit_edge, label %while.body, !dbg !933

while.cond.while.end_crit_edge:                   ; preds = %if.end
  %.pre = load i64, i64* %num_buckets, align 8, !dbg !922, !tbaa !324
  br label %while.end, !dbg !933

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %for.body
  %10 = phi i64 [ %.pre, %while.cond.while.end_crit_edge ], [ %1, %for.body ], !dbg !922
  %inc = add i64 %i.029, 1, !dbg !942
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !200, metadata !272), !dbg !921
  %cmp = icmp ult i64 %inc, %10, !dbg !923
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !924

for.end.loopexit:                                 ; preds = %while.end
  br label %for.end, !dbg !925

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %buckets6.pre-phi = phi %struct._Py_slist_t** [ %.pre31, %entry.for.end_crit_edge ], [ %buckets, %for.end.loopexit ], !dbg !926
  %free5.pre-phi = phi void (i8*)** [ %.pre30, %entry.for.end_crit_edge ], [ %free, %for.end.loopexit ], !dbg !925
  %11 = load void (i8*)*, void (i8*)** %free5.pre-phi, align 8, !dbg !925, !tbaa !559
  %12 = bitcast %struct._Py_slist_t** %buckets6.pre-phi to i8**, !dbg !926
  %13 = load i8*, i8** %12, align 8, !dbg !926, !tbaa !338
  tail call void %11(i8* %13) #5, !dbg !943
  %14 = load void (i8*)*, void (i8*)** %free5.pre-phi, align 8, !dbg !944, !tbaa !559
  %15 = bitcast %struct._Py_hashtable_t* %ht to i8*, !dbg !945
  tail call void %14(i8* %15) #5, !dbg !946
  ret void, !dbg !947
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* nocapture readonly %src) #2 {
entry:
  %new_data = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %src, i64 0, metadata !211, metadata !272), !dbg !948
  %0 = bitcast i8** %new_data to i8*, !dbg !949
  call void @llvm.lifetime.start(i64 8, i8* %0) #5, !dbg !949
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 3, !dbg !950
  %1 = load i64, i64* %data_size, align 8, !dbg !950, !tbaa !332
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 0, !dbg !951
  %2 = load i64, i64* %num_buckets, align 8, !dbg !951, !tbaa !324
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 4, !dbg !952
  %3 = bitcast i64 (i8*)** %hash_func to <2 x i64>*, !dbg !952
  %4 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !952, !tbaa !423
  %copy_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 6, !dbg !953
  %5 = bitcast i8* (i8*)** %copy_data_func to <2 x i64>*, !dbg !953
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !953, !tbaa !423
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 8, !dbg !954
  %7 = bitcast i64 (i8*)** %get_data_size_func to i64*, !dbg !954
  %8 = load i64, i64* %7, align 8, !dbg !954, !tbaa !360
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !96, metadata !272) #5, !dbg !955
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !97, metadata !272) #5, !dbg !957
  tail call void @llvm.dbg.declare(metadata %struct._Py_hashtable_allocator_t* undef, metadata !106, metadata !272) #5, !dbg !958
  %alloc.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 9, i32 0, !dbg !959
  %alloc.sroa.0.0.copyload.i = load i8* (i64)*, i8* (i64)** %alloc.sroa.0.0..sroa_idx.i, align 8, !dbg !959
  tail call void @llvm.dbg.value(metadata i8* (i64)* %alloc.sroa.0.0.copyload.i, i64 0, metadata !106, metadata !304) #5, !dbg !958
  %alloc.sroa.7.0..sroa_idx28.i = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 9, i32 1, !dbg !959
  %alloc.sroa.7.0.copyload.i = load void (i8*)*, void (i8*)** %alloc.sroa.7.0..sroa_idx28.i, align 8, !dbg !959
  tail call void @llvm.dbg.value(metadata void (i8*)* %alloc.sroa.7.0.copyload.i, i64 0, metadata !106, metadata !305) #5, !dbg !958
  %call.i = tail call i8* %alloc.sroa.0.0.copyload.i(i64 88) #5, !dbg !960
  %9 = bitcast i8* %call.i to %struct._Py_hashtable_t*, !dbg !961
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %9, i64 0, metadata !104, metadata !272) #5, !dbg !962
  %cmp2.i = icmp eq i8* %call.i, null, !dbg !963
  br i1 %cmp2.i, label %cleanup, label %if.end.4.i, !dbg !964

if.end.4.i:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !222, metadata !272) #5, !dbg !965
  %cmp.i.i = icmp ult i64 %2, 16, !dbg !967
  br i1 %cmp.i.i, label %round_size.exit.i, label %while.cond.i.i.preheader, !dbg !968

while.cond.i.i.preheader:                         ; preds = %if.end.4.i
  br label %while.cond.i.i, !dbg !969

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %while.cond.i.i
  %i.0.i.i = phi i64 [ %shl.i.i, %while.cond.i.i ], [ 1, %while.cond.i.i.preheader ], !dbg !970
  %cmp1.i.i = icmp ult i64 %i.0.i.i, %2, !dbg !969
  %shl.i.i = shl i64 %i.0.i.i, 1, !dbg !971
  tail call void @llvm.dbg.value(metadata i64 %shl.i.i, i64 0, metadata !223, metadata !272) #5, !dbg !972
  br i1 %cmp1.i.i, label %while.cond.i.i, label %round_size.exit.i.loopexit, !dbg !973

round_size.exit.i.loopexit:                       ; preds = %while.cond.i.i
  %i.0.i.i.lcssa = phi i64 [ %i.0.i.i, %while.cond.i.i ]
  br label %round_size.exit.i, !dbg !974

round_size.exit.i:                                ; preds = %round_size.exit.i.loopexit, %if.end.4.i
  %retval.0.i.i = phi i64 [ 16, %if.end.4.i ], [ %i.0.i.i.lcssa, %round_size.exit.i.loopexit ], !dbg !970
  %num_buckets.i = bitcast i8* %call.i to i64*, !dbg !974
  store i64 %retval.0.i.i, i64* %num_buckets.i, align 8, !dbg !975, !tbaa !324
  %entries.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !976
  %10 = bitcast i8* %entries.i to i64*, !dbg !976
  store i64 0, i64* %10, align 8, !dbg !977, !tbaa !329
  %data_size6.i = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !978
  %11 = bitcast i8* %data_size6.i to i64*, !dbg !978
  store i64 %1, i64* %11, align 8, !dbg !979, !tbaa !332
  %mul.i = shl i64 %retval.0.i.i, 3, !dbg !980
  tail call void @llvm.dbg.value(metadata i64 %mul.i, i64 0, metadata !105, metadata !272) #5, !dbg !981
  %call9.i = tail call i8* %alloc.sroa.0.0.copyload.i(i64 %mul.i) #5, !dbg !982
  %buckets.i = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !983
  %12 = bitcast i8* %buckets.i to i8**, !dbg !984
  store i8* %call9.i, i8** %12, align 8, !dbg !984, !tbaa !338
  %cmp11.i = icmp eq i8* %call9.i, null, !dbg !985
  br i1 %cmp11.i, label %_Py_hashtable_new_full.exit.thread, label %_Py_hashtable_new_full.exit.thread65, !dbg !986

_Py_hashtable_new_full.exit.thread:               ; preds = %round_size.exit.i
  tail call void %alloc.sroa.7.0.copyload.i(i8* %call.i) #5, !dbg !987
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %9, i64 0, metadata !212, metadata !272), !dbg !988
  br label %cleanup, !dbg !989

_Py_hashtable_new_full.exit.thread65:             ; preds = %round_size.exit.i
  tail call void @llvm.memset.p0i8.i64(i8* %call9.i, i8 0, i64 %mul.i, i32 8, i1 false) #5, !dbg !990
  %hash_func16.i = getelementptr inbounds i8, i8* %call.i, i64 32, !dbg !991
  %13 = bitcast i8* %hash_func16.i to <2 x i64>*, !dbg !992
  store <2 x i64> %4, <2 x i64>* %13, align 8, !dbg !992, !tbaa !423
  %copy_data_func18.i = getelementptr inbounds i8, i8* %call.i, i64 48, !dbg !993
  %free_data_func19.i = getelementptr inbounds i8, i8* %call.i, i64 56, !dbg !994
  %14 = bitcast i8* %copy_data_func18.i to <2 x i64>*, !dbg !995
  store <2 x i64> %6, <2 x i64>* %14, align 8, !dbg !995, !tbaa !423
  %get_data_size_func20.i = getelementptr inbounds i8, i8* %call.i, i64 64, !dbg !996
  %15 = bitcast i8* %get_data_size_func20.i to i64*, !dbg !997
  store i64 %8, i64* %15, align 8, !dbg !997, !tbaa !360
  %alloc.sroa.0.0..sroa_idx25.i = getelementptr inbounds i8, i8* %call.i, i64 72, !dbg !998
  %16 = bitcast i8* %alloc.sroa.0.0..sroa_idx25.i to i8* (i64)**, !dbg !998
  store i8* (i64)* %alloc.sroa.0.0.copyload.i, i8* (i64)** %16, align 8, !dbg !998
  %alloc.sroa.7.0..sroa_idx29.i = getelementptr inbounds i8, i8* %call.i, i64 80, !dbg !998
  %17 = bitcast i8* %alloc.sroa.7.0..sroa_idx29.i to void (i8*)**, !dbg !998
  store void (i8*)* %alloc.sroa.7.0.copyload.i, void (i8*)** %17, align 8, !dbg !998
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %9, i64 0, metadata !212, metadata !272), !dbg !988
  %18 = load i64, i64* %num_buckets, align 8, !dbg !999, !tbaa !324
  %cmp3.72 = icmp eq i64 %18, 0, !dbg !1002
  br i1 %cmp3.72, label %cleanup, label %for.body.lr.ph, !dbg !1003

for.body.lr.ph:                                   ; preds = %_Py_hashtable_new_full.exit.thread65
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %src, i64 0, i32 2, !dbg !1004
  br label %for.body, !dbg !1003

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.25
  %19 = phi i64 [ %18, %for.body.lr.ph ], [ %47, %for.inc.25 ]
  %bucket.073 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.25 ]
  %20 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8, !dbg !1004, !tbaa !338
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %20, i64 %bucket.073, i32 0, !dbg !1004
  %21 = bitcast %struct._Py_slist_item_s** %head to %struct._Py_hashtable_entry_t**, !dbg !1004
  %entry1.0.69 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %21, align 8, !dbg !1004
  %tobool.70 = icmp eq %struct._Py_hashtable_entry_t* %entry1.0.69, null, !dbg !1006
  br i1 %tobool.70, label %for.inc.25, label %for.body.5.preheader, !dbg !1006

for.body.5.preheader:                             ; preds = %for.body
  br label %for.body.5, !dbg !1008

for.body.5:                                       ; preds = %for.body.5.preheader, %for.inc
  %entry1.071 = phi %struct._Py_hashtable_entry_t* [ %entry1.0, %for.inc ], [ %entry1.0.69, %for.body.5.preheader ]
  %22 = load i8* (i8*)*, i8* (i8*)** %copy_data_func, align 8, !dbg !1008, !tbaa !354
  %tobool7 = icmp eq i8* (i8*)* %22, null, !dbg !1012
  %add.ptr61 = getelementptr %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.071, i64 1, !dbg !1013
  br i1 %tobool7, label %if.else.16, label %if.then.8, !dbg !1015

if.then.8:                                        ; preds = %for.body.5
  %23 = bitcast %struct._Py_hashtable_entry_t* %add.ptr61 to i8**, !dbg !1013
  %24 = load i8*, i8** %23, align 8, !dbg !1013, !tbaa !423
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !216, metadata !272), !dbg !1016
  %call10 = tail call i8* %22(i8* %24) #5, !dbg !1017
  tail call void @llvm.dbg.value(metadata i8* %call10, i64 0, metadata !217, metadata !272), !dbg !1018
  store i8* %call10, i8** %new_data, align 8, !dbg !1019, !tbaa !423
  %cmp11 = icmp eq i8* %call10, null, !dbg !1020
  br i1 %cmp11, label %if.then.23, label %if.then.12, !dbg !1022

if.then.12:                                       ; preds = %if.then.8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.071, i64 0, i32 1, !dbg !1023
  %25 = load i8*, i8** %key, align 8, !dbg !1023, !tbaa !282
  %26 = load i64, i64* %data_size, align 8, !dbg !1024, !tbaa !332
  %call14 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %9, i8* %25, i8* %0, i64 %26), !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %call14, i64 0, metadata !215, metadata !272), !dbg !1026
  br label %if.end.21, !dbg !1027

if.else.16:                                       ; preds = %for.body.5
  %add.ptr = bitcast %struct._Py_hashtable_entry_t* %add.ptr61 to i8*, !dbg !1013
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !216, metadata !272), !dbg !1016
  %key18 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %entry1.071, i64 0, i32 1, !dbg !1028
  %27 = load i8*, i8** %key18, align 8, !dbg !1028, !tbaa !282
  %28 = load i64, i64* %data_size, align 8, !dbg !1030, !tbaa !332
  %call20 = tail call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %9, i8* %27, i8* %add.ptr, i64 %28), !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %call20, i64 0, metadata !215, metadata !272), !dbg !1026
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %if.else.16
  %err.0 = phi i32 [ %call14, %if.then.12 ], [ %call20, %if.else.16 ]
  %tobool22 = icmp eq i32 %err.0, 0, !dbg !1032
  br i1 %tobool22, label %for.inc, label %if.then.23, !dbg !1034

if.then.23:                                       ; preds = %if.then.8, %if.end.21
  tail call void @llvm.dbg.value(metadata %struct._Py_hashtable_t* %9, i64 0, metadata !199, metadata !272) #5, !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !200, metadata !272) #5, !dbg !1038
  %29 = load i64, i64* %num_buckets.i, align 8, !dbg !1039, !tbaa !324
  %cmp.28.i = icmp eq i64 %29, 0, !dbg !1040
  %30 = bitcast i8* %buckets.i to %struct._Py_slist_t**, !dbg !1041
  br i1 %cmp.28.i, label %_Py_hashtable_destroy.exit, label %for.body.lr.ph.i, !dbg !1042

for.body.lr.ph.i:                                 ; preds = %if.then.23
  %31 = bitcast i8* %free_data_func19.i to void (i8*)**, !dbg !1043
  br label %for.body.i, !dbg !1042

for.body.i:                                       ; preds = %while.end.i, %for.body.lr.ph.i
  %32 = phi i64 [ %29, %for.body.lr.ph.i ], [ %41, %while.end.i ], !dbg !1044
  %i.029.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %while.end.i ], !dbg !1044
  %33 = load %struct._Py_slist_t*, %struct._Py_slist_t** %30, align 8, !dbg !1045, !tbaa !338
  %head.i = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %33, i64 %i.029.i, i32 0, !dbg !1046
  %34 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head.i, align 8, !dbg !1046, !tbaa !489
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %34, i64 0, metadata !201, metadata !272) #5, !dbg !1047
  %tobool.26.i = icmp eq %struct._Py_slist_item_s* %34, null, !dbg !1048
  br i1 %tobool.26.i, label %while.end.i, label %while.body.i.preheader, !dbg !1048

while.body.i.preheader:                           ; preds = %for.body.i
  br label %while.body.i, !dbg !1049

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end.i
  %entry1.027.i = phi %struct._Py_slist_item_s* [ %35, %if.end.i ], [ %34, %while.body.i.preheader ], !dbg !1044
  %next.i = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %entry1.027.i, i64 0, i32 0, !dbg !1049
  %35 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next.i, align 8, !dbg !1049, !tbaa !492
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %35, i64 0, metadata !205, metadata !272) #5, !dbg !1050
  %36 = load void (i8*)*, void (i8*)** %31, align 8, !dbg !1043, !tbaa !357
  %tobool2.i = icmp eq void (i8*)* %36, null, !dbg !1051
  br i1 %tobool2.i, label %if.end.i, label %if.then.i, !dbg !1052

if.then.i:                                        ; preds = %while.body.i
  %add.ptr25.i = getelementptr %struct._Py_slist_item_s, %struct._Py_slist_item_s* %entry1.027.i, i64 3, !dbg !1053
  %37 = bitcast %struct._Py_slist_item_s* %add.ptr25.i to i8**, !dbg !1053
  %38 = load i8*, i8** %37, align 8, !dbg !1053, !tbaa !423
  tail call void %36(i8* %38) #5, !dbg !1054
  br label %if.end.i, !dbg !1054

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %39 = load void (i8*)*, void (i8*)** %17, align 8, !dbg !1055, !tbaa !559
  %40 = bitcast %struct._Py_slist_item_s* %entry1.027.i to i8*, !dbg !1056
  tail call void %39(i8* %40) #5, !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct._Py_slist_item_s* %35, i64 0, metadata !201, metadata !272) #5, !dbg !1047
  %tobool.i = icmp eq %struct._Py_slist_item_s* %35, null, !dbg !1048
  br i1 %tobool.i, label %while.cond.while.end_crit_edge.i, label %while.body.i, !dbg !1048

while.cond.while.end_crit_edge.i:                 ; preds = %if.end.i
  %.pre.i = load i64, i64* %num_buckets.i, align 8, !dbg !1039, !tbaa !324
  br label %while.end.i, !dbg !1048

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %for.body.i
  %41 = phi i64 [ %.pre.i, %while.cond.while.end_crit_edge.i ], [ %32, %for.body.i ], !dbg !1039
  %inc.i = add i64 %i.029.i, 1, !dbg !1058
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !200, metadata !272) #5, !dbg !1038
  %cmp.i = icmp ult i64 %inc.i, %41, !dbg !1040
  br i1 %cmp.i, label %for.body.i, label %_Py_hashtable_destroy.exit.loopexit, !dbg !1042

_Py_hashtable_destroy.exit.loopexit:              ; preds = %while.end.i
  br label %_Py_hashtable_destroy.exit, !dbg !1059

_Py_hashtable_destroy.exit:                       ; preds = %_Py_hashtable_destroy.exit.loopexit, %if.then.23
  %42 = load void (i8*)*, void (i8*)** %17, align 8, !dbg !1059, !tbaa !559
  %43 = bitcast i8* %buckets.i to i8**, !dbg !1041
  %44 = load i8*, i8** %43, align 8, !dbg !1041, !tbaa !338
  tail call void %42(i8* %44) #5, !dbg !1060
  %45 = load void (i8*)*, void (i8*)** %17, align 8, !dbg !1061, !tbaa !559
  tail call void %45(i8* %call.i) #5, !dbg !1062
  br label %cleanup, !dbg !1063

for.inc:                                          ; preds = %if.end.21
  %46 = bitcast %struct._Py_hashtable_entry_t* %entry1.071 to %struct._Py_hashtable_entry_t**, !dbg !1064
  %entry1.0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %46, align 8, !dbg !1004
  %tobool = icmp eq %struct._Py_hashtable_entry_t* %entry1.0, null, !dbg !1006
  br i1 %tobool, label %for.cond.4.for.inc.25_crit_edge, label %for.body.5, !dbg !1006

for.cond.4.for.inc.25_crit_edge:                  ; preds = %for.inc
  %.pre = load i64, i64* %num_buckets, align 8, !dbg !999, !tbaa !324
  br label %for.inc.25, !dbg !1006

for.inc.25:                                       ; preds = %for.cond.4.for.inc.25_crit_edge, %for.body
  %47 = phi i64 [ %.pre, %for.cond.4.for.inc.25_crit_edge ], [ %19, %for.body ], !dbg !999
  %inc = add i64 %bucket.073, 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !214, metadata !272), !dbg !1066
  %cmp3 = icmp ult i64 %inc, %47, !dbg !1002
  br i1 %cmp3, label %for.body, label %cleanup.loopexit, !dbg !1003

cleanup.loopexit:                                 ; preds = %for.inc.25
  br label %cleanup, !dbg !1067

cleanup:                                          ; preds = %cleanup.loopexit, %_Py_hashtable_new_full.exit.thread65, %entry, %_Py_hashtable_new_full.exit.thread, %_Py_hashtable_destroy.exit
  %retval.0 = phi %struct._Py_hashtable_t* [ null, %_Py_hashtable_destroy.exit ], [ null, %_Py_hashtable_new_full.exit.thread ], [ null, %entry ], [ %9, %_Py_hashtable_new_full.exit.thread65 ], [ %9, %cleanup.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #5, !dbg !1067
  ret %struct._Py_hashtable_t* %retval.0, !dbg !1067
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!269, !270}
!llvm.ident = !{!271}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !80)
!1 = !DIFile(filename: "./Modules/hashtable.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !9, !10, !75, !18, !76, !77, !23, !79, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !5, line: 189, baseType: !6)
!5 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 62, baseType: !8)
!7 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_hashtable_t", file: !12, line: 67, baseType: !13)
!12 = !DIFile(filename: "./Modules/hashtable.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!80 = !{!81, !84, !87, !91, !107, !114, !131, !140, !151, !158, !164, !170, !189, !197, !207, !218, !224, !230, !240, !247, !264}
!81 = !DISubprogram(name: "_Py_hashtable_hash_int", scope: !1, file: !1, line: 91, type: !33, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @_Py_hashtable_hash_int, variables: !82)
!82 = !{!83}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !81, file: !1, line: 91, type: !35)
!84 = !DISubprogram(name: "_Py_hashtable_hash_ptr", scope: !1, file: !1, line: 97, type: !33, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @_Py_hashtable_hash_ptr, variables: !85)
!85 = !{!86}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !84, file: !1, line: 97, type: !35)
!87 = !DISubprogram(name: "_Py_hashtable_compare_direct", scope: !1, file: !1, line: 103, type: !40, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._Py_hashtable_entry_t*)* @_Py_hashtable_compare_direct, variables: !88)
!88 = !{!89, !90}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !87, file: !1, line: 103, type: !35)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entry", arg: 2, scope: !87, file: !1, line: 103, type: !43)
!91 = !DISubprogram(name: "_Py_hashtable_new_full", scope: !1, file: !1, line: 122, type: !92, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (i64, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t*)* @_Py_hashtable_new_full, variables: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{!10, !6, !6, !31, !38, !52, !57, !62, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !91, file: !1, line: 122, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "init_size", arg: 2, scope: !91, file: !1, line: 122, type: !6)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 3, scope: !91, file: !1, line: 123, type: !31)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 4, scope: !91, file: !1, line: 124, type: !38)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "copy_data_func", arg: 5, scope: !91, file: !1, line: 125, type: !52)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "free_data_func", arg: 6, scope: !91, file: !1, line: 126, type: !57)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get_data_size_func", arg: 7, scope: !91, file: !1, line: 127, type: !62)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allocator", arg: 8, scope: !91, file: !1, line: 128, type: !94)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ht", scope: !91, file: !1, line: 130, type: !10)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buckets_size", scope: !91, file: !1, line: 131, type: !6)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !91, file: !1, line: 132, type: !67)
!107 = !DISubprogram(name: "_Py_hashtable_new", scope: !1, file: !1, line: 167, type: !108, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*)* @_Py_hashtable_new, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!10, !6, !31, !38}
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 1, scope: !107, file: !1, line: 167, type: !6)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash_func", arg: 2, scope: !107, file: !1, line: 168, type: !31)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare_func", arg: 3, scope: !107, file: !1, line: 169, type: !38)
!114 = !DISubprogram(name: "_Py_hashtable_size", scope: !1, file: !1, line: 177, type: !115, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._Py_hashtable_t*)* @_Py_hashtable_size, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!6, !10}
!117 = !{!118, !119, !120, !121, !127}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !114, file: !1, line: 177, type: !10)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !114, file: !1, line: 179, type: !6)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hv", scope: !114, file: !1, line: 180, type: !6)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !122, file: !1, line: 193, type: !75)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 192, column: 50)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 192, column: 9)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 192, column: 9)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 191, column: 33)
!126 = distinct !DILexicalBlock(scope: !114, file: !1, line: 191, column: 9)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !128, file: !1, line: 196, type: !9)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 195, column: 80)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 195, column: 13)
!130 = distinct !DILexicalBlock(scope: !122, file: !1, line: 195, column: 13)
!131 = !DISubprogram(name: "_Py_hashtable_get_entry", scope: !1, file: !1, line: 247, type: !132, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_entry_t* (%struct._Py_hashtable_t*, i8*)* @_Py_hashtable_get_entry, variables: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!75, !10, !35}
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !131, file: !1, line: 247, type: !10)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !131, file: !1, line: 247, type: !35)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !131, file: !1, line: 249, type: !4)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !131, file: !1, line: 250, type: !6)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !131, file: !1, line: 251, type: !75)
!140 = !DISubprogram(name: "_Py_hashtable_set", scope: !1, file: !1, line: 300, type: !141, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_set, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!42, !10, !35, !9, !6}
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !140, file: !1, line: 300, type: !10)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !140, file: !1, line: 300, type: !35)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !140, file: !1, line: 301, type: !9)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !140, file: !1, line: 301, type: !6)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !140, file: !1, line: 303, type: !4)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !140, file: !1, line: 304, type: !6)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !140, file: !1, line: 305, type: !75)
!151 = !DISubprogram(name: "_Py_hashtable_get", scope: !1, file: !1, line: 342, type: !141, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_get, variables: !152)
!152 = !{!153, !154, !155, !156, !157}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !151, file: !1, line: 342, type: !10)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !151, file: !1, line: 342, type: !35)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !151, file: !1, line: 342, type: !9)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !151, file: !1, line: 342, type: !6)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !151, file: !1, line: 344, type: !75)
!158 = !DISubprogram(name: "_Py_hashtable_pop", scope: !1, file: !1, line: 356, type: !141, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i8*, i8*, i64)* @_Py_hashtable_pop, variables: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !158, file: !1, line: 356, type: !10)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !158, file: !1, line: 356, type: !35)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !158, file: !1, line: 356, type: !9)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !158, file: !1, line: 356, type: !6)
!164 = !DISubprogram(name: "_Py_hashtable_delete", scope: !1, file: !1, line: 365, type: !165, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*, i8*)* @_Py_hashtable_delete, variables: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !10, !35}
!167 = !{!168, !169}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !164, file: !1, line: 365, type: !10)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !164, file: !1, line: 365, type: !35)
!170 = !DISubprogram(name: "_Py_hashtable_foreach", scope: !1, file: !1, line: 379, type: !171, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Py_hashtable_t*, i32 (%struct._Py_hashtable_entry_t*, i8*)*, i8*)* @_Py_hashtable_foreach, variables: !176)
!171 = !DISubroutineType(types: !172)
!172 = !{!42, !10, !173, !9}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!42, !75, !9}
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !170, file: !1, line: 379, type: !10)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !170, file: !1, line: 380, type: !173)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !170, file: !1, line: 381, type: !9)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !170, file: !1, line: 383, type: !75)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hv", scope: !170, file: !1, line: 384, type: !6)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !183, file: !1, line: 388, type: !42)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 387, column: 76)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 387, column: 9)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 387, column: 9)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 386, column: 46)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 386, column: 5)
!188 = distinct !DILexicalBlock(scope: !170, file: !1, line: 386, column: 5)
!189 = !DISubprogram(name: "_Py_hashtable_clear", scope: !1, file: !1, line: 439, type: !190, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*)* @_Py_hashtable_clear, variables: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !10}
!192 = !{!193, !194, !195, !196}
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !189, file: !1, line: 439, type: !10)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !189, file: !1, line: 441, type: !75)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !189, file: !1, line: 441, type: !75)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !189, file: !1, line: 442, type: !6)
!197 = !DISubprogram(name: "_Py_hashtable_destroy", scope: !1, file: !1, line: 458, type: !190, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Py_hashtable_t*)* @_Py_hashtable_destroy, variables: !198)
!198 = !{!199, !200, !201, !205}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !197, file: !1, line: 458, type: !10)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !197, file: !1, line: 460, type: !6)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !202, file: !1, line: 463, type: !23)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 462, column: 43)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 462, column: 5)
!204 = distinct !DILexicalBlock(scope: !197, file: !1, line: 462, column: 5)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_next", scope: !206, file: !1, line: 465, type: !23)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 464, column: 23)
!207 = !DISubprogram(name: "_Py_hashtable_copy", scope: !1, file: !1, line: 479, type: !208, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Py_hashtable_t* (%struct._Py_hashtable_t*)* @_Py_hashtable_copy, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!10, !10}
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !207, file: !1, line: 479, type: !10)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst", scope: !207, file: !1, line: 481, type: !10)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !207, file: !1, line: 482, type: !75)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bucket", scope: !207, file: !1, line: 483, type: !6)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !207, file: !1, line: 484, type: !42)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !207, file: !1, line: 485, type: !9)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_data", scope: !207, file: !1, line: 485, type: !9)
!218 = !DISubprogram(name: "round_size", scope: !1, file: !1, line: 110, type: !219, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, variables: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!6, !6}
!221 = !{!222, !223}
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !218, file: !1, line: 110, type: !6)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !218, file: !1, line: 112, type: !6)
!224 = !DISubprogram(name: "_Py_slist_prepend", scope: !1, file: !1, line: 74, type: !225, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, variables: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !18, !23}
!227 = !{!228, !229}
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !224, file: !1, line: 74, type: !18)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !224, file: !1, line: 74, type: !23)
!230 = !DISubprogram(name: "_hashtable_pop_entry", scope: !1, file: !1, line: 265, type: !141, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, variables: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !230, file: !1, line: 265, type: !10)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !230, file: !1, line: 265, type: !35)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !230, file: !1, line: 265, type: !9)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data_size", arg: 4, scope: !230, file: !1, line: 265, type: !6)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_hash", scope: !230, file: !1, line: 267, type: !4)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !230, file: !1, line: 268, type: !6)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !230, file: !1, line: 269, type: !75)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous", scope: !230, file: !1, line: 269, type: !75)
!240 = !DISubprogram(name: "_Py_slist_remove", scope: !1, file: !1, line: 81, type: !241, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, variables: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !18, !23, !23}
!243 = !{!244, !245, !246}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !240, file: !1, line: 81, type: !18)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "previous", arg: 2, scope: !240, file: !1, line: 81, type: !23)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 3, scope: !240, file: !1, line: 82, type: !23)
!247 = !DISubprogram(name: "hashtable_rehash", scope: !1, file: !1, line: 397, type: !190, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, variables: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !259, !260}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ht", arg: 1, scope: !247, file: !1, line: 397, type: !10)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buckets_size", scope: !247, file: !1, line: 399, type: !6)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !247, file: !1, line: 399, type: !6)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bucket", scope: !247, file: !1, line: 399, type: !6)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_buckets", scope: !247, file: !1, line: 400, type: !18)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_num_buckets", scope: !247, file: !1, line: 401, type: !6)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry", scope: !256, file: !1, line: 423, type: !75)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 422, column: 58)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 422, column: 5)
!258 = distinct !DILexicalBlock(scope: !247, file: !1, line: 422, column: 5)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !256, file: !1, line: 423, type: !75)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entry_index", scope: !261, file: !1, line: 425, type: !6)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 424, column: 86)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 424, column: 9)
!263 = distinct !DILexicalBlock(scope: !256, file: !1, line: 424, column: 9)
!264 = !DISubprogram(name: "_Py_slist_init", scope: !1, file: !1, line: 68, type: !265, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, variables: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !18}
!267 = !{!268}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !264, file: !1, line: 68, type: !18)
!269 = !{i32 2, !"Dwarf Version", i32 4}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!272 = !DIExpression()
!273 = !DILocation(line: 91, column: 36, scope: !81)
!274 = !DILocation(line: 93, column: 12, scope: !81)
!275 = !DILocation(line: 93, column: 5, scope: !81)
!276 = !DILocation(line: 97, column: 36, scope: !84)
!277 = !DILocation(line: 99, column: 24, scope: !84)
!278 = !DILocation(line: 99, column: 5, scope: !84)
!279 = !DILocation(line: 103, column: 42, scope: !87)
!280 = !DILocation(line: 103, column: 76, scope: !87)
!281 = !DILocation(line: 105, column: 19, scope: !87)
!282 = !{!283, !285, i64 8}
!283 = !{!"", !284, i64 0, !285, i64 8, !288, i64 16}
!284 = !{!"_Py_slist_item_s", !285, i64 0}
!285 = !{!"any pointer", !286, i64 0}
!286 = !{!"omnipotent char", !287, i64 0}
!287 = !{!"Simple C/C++ TBAA"}
!288 = !{!"long", !286, i64 0}
!289 = !DILocation(line: 105, column: 23, scope: !87)
!290 = !DILocation(line: 105, column: 5, scope: !87)
!291 = !DILocation(line: 122, column: 31, scope: !91)
!292 = !DILocation(line: 122, column: 49, scope: !91)
!293 = !DILocation(line: 123, column: 48, scope: !91)
!294 = !DILocation(line: 124, column: 51, scope: !91)
!295 = !DILocation(line: 125, column: 53, scope: !91)
!296 = !DILocation(line: 126, column: 53, scope: !91)
!297 = !DILocation(line: 127, column: 57, scope: !91)
!298 = !DILocation(line: 128, column: 51, scope: !91)
!299 = !DILocation(line: 132, column: 31, scope: !91)
!300 = !DILocation(line: 134, column: 19, scope: !301)
!301 = distinct !DILexicalBlock(scope: !91, file: !1, line: 134, column: 9)
!302 = !DILocation(line: 134, column: 9, scope: !91)
!303 = !DILocation(line: 139, column: 17, scope: !301)
!304 = !DIExpression(DW_OP_bit_piece, 0, 64)
!305 = !DIExpression(DW_OP_bit_piece, 64, 64)
!306 = !DILocation(line: 141, column: 29, scope: !91)
!307 = !DILocation(line: 141, column: 10, scope: !91)
!308 = !DILocation(line: 130, column: 22, scope: !91)
!309 = !DILocation(line: 142, column: 12, scope: !310)
!310 = distinct !DILexicalBlock(scope: !91, file: !1, line: 142, column: 9)
!311 = !DILocation(line: 142, column: 9, scope: !91)
!312 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !313)
!313 = distinct !DILocation(line: 145, column: 23, scope: !91)
!314 = !DILocation(line: 113, column: 11, scope: !315, inlinedAt: !313)
!315 = distinct !DILexicalBlock(scope: !218, file: !1, line: 113, column: 9)
!316 = !DILocation(line: 113, column: 9, scope: !218, inlinedAt: !313)
!317 = !DILocation(line: 116, column: 14, scope: !218, inlinedAt: !313)
!318 = !DILocation(line: 145, column: 23, scope: !91)
!319 = !DILocation(line: 117, column: 11, scope: !218, inlinedAt: !313)
!320 = !DILocation(line: 112, column: 12, scope: !218, inlinedAt: !313)
!321 = !DILocation(line: 116, column: 5, scope: !218, inlinedAt: !313)
!322 = !DILocation(line: 145, column: 9, scope: !91)
!323 = !DILocation(line: 145, column: 21, scope: !91)
!324 = !{!325, !288, i64 0}
!325 = !{!"", !288, i64 0, !288, i64 8, !285, i64 16, !288, i64 24, !285, i64 32, !285, i64 40, !285, i64 48, !285, i64 56, !285, i64 64, !326, i64 72}
!326 = !{!"", !285, i64 0, !285, i64 8}
!327 = !DILocation(line: 146, column: 9, scope: !91)
!328 = !DILocation(line: 146, column: 17, scope: !91)
!329 = !{!325, !288, i64 8}
!330 = !DILocation(line: 147, column: 9, scope: !91)
!331 = !DILocation(line: 147, column: 19, scope: !91)
!332 = !{!325, !288, i64 24}
!333 = !DILocation(line: 149, column: 36, scope: !91)
!334 = !DILocation(line: 131, column: 12, scope: !91)
!335 = !DILocation(line: 150, column: 19, scope: !91)
!336 = !DILocation(line: 150, column: 9, scope: !91)
!337 = !DILocation(line: 150, column: 17, scope: !91)
!338 = !{!325, !285, i64 16}
!339 = !DILocation(line: 151, column: 21, scope: !340)
!340 = distinct !DILexicalBlock(scope: !91, file: !1, line: 151, column: 9)
!341 = !DILocation(line: 151, column: 9, scope: !91)
!342 = !DILocation(line: 152, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 151, column: 30)
!344 = !DILocation(line: 153, column: 9, scope: !343)
!345 = !DILocation(line: 155, column: 5, scope: !91)
!346 = !DILocation(line: 157, column: 9, scope: !91)
!347 = !DILocation(line: 157, column: 19, scope: !91)
!348 = !{!325, !285, i64 32}
!349 = !DILocation(line: 158, column: 9, scope: !91)
!350 = !DILocation(line: 158, column: 22, scope: !91)
!351 = !{!325, !285, i64 40}
!352 = !DILocation(line: 159, column: 9, scope: !91)
!353 = !DILocation(line: 159, column: 24, scope: !91)
!354 = !{!325, !285, i64 48}
!355 = !DILocation(line: 160, column: 9, scope: !91)
!356 = !DILocation(line: 160, column: 24, scope: !91)
!357 = !{!325, !285, i64 56}
!358 = !DILocation(line: 161, column: 9, scope: !91)
!359 = !DILocation(line: 161, column: 28, scope: !91)
!360 = !{!325, !285, i64 64}
!361 = !DILocation(line: 162, column: 17, scope: !91)
!362 = !DILocation(line: 163, column: 5, scope: !91)
!363 = !DILocation(line: 164, column: 1, scope: !91)
!364 = !DILocation(line: 167, column: 26, scope: !107)
!365 = !DILocation(line: 168, column: 43, scope: !107)
!366 = !DILocation(line: 169, column: 46, scope: !107)
!367 = !DILocation(line: 122, column: 31, scope: !91, inlinedAt: !368)
!368 = distinct !DILocation(line: 171, column: 12, scope: !107)
!369 = !DILocation(line: 122, column: 49, scope: !91, inlinedAt: !368)
!370 = !DILocation(line: 123, column: 48, scope: !91, inlinedAt: !368)
!371 = !DILocation(line: 124, column: 51, scope: !91, inlinedAt: !368)
!372 = !DILocation(line: 125, column: 53, scope: !91, inlinedAt: !368)
!373 = !DILocation(line: 126, column: 53, scope: !91, inlinedAt: !368)
!374 = !DILocation(line: 127, column: 57, scope: !91, inlinedAt: !368)
!375 = !DILocation(line: 128, column: 51, scope: !91, inlinedAt: !368)
!376 = !DILocation(line: 132, column: 31, scope: !91, inlinedAt: !368)
!377 = !DILocation(line: 141, column: 29, scope: !91, inlinedAt: !368)
!378 = !DILocation(line: 141, column: 10, scope: !91, inlinedAt: !368)
!379 = !DILocation(line: 130, column: 22, scope: !91, inlinedAt: !368)
!380 = !DILocation(line: 142, column: 12, scope: !310, inlinedAt: !368)
!381 = !DILocation(line: 142, column: 9, scope: !91, inlinedAt: !368)
!382 = !DILocation(line: 145, column: 21, scope: !91, inlinedAt: !368)
!383 = !{!288, !288, i64 0}
!384 = !DILocation(line: 147, column: 9, scope: !91, inlinedAt: !368)
!385 = !DILocation(line: 147, column: 19, scope: !91, inlinedAt: !368)
!386 = !DILocation(line: 131, column: 12, scope: !91, inlinedAt: !368)
!387 = !DILocation(line: 150, column: 19, scope: !91, inlinedAt: !368)
!388 = !DILocation(line: 150, column: 9, scope: !91, inlinedAt: !368)
!389 = !DILocation(line: 150, column: 17, scope: !91, inlinedAt: !368)
!390 = !DILocation(line: 151, column: 21, scope: !340, inlinedAt: !368)
!391 = !DILocation(line: 151, column: 9, scope: !91, inlinedAt: !368)
!392 = !DILocation(line: 152, column: 9, scope: !343, inlinedAt: !368)
!393 = !DILocation(line: 153, column: 9, scope: !343, inlinedAt: !368)
!394 = !DILocation(line: 155, column: 5, scope: !91, inlinedAt: !368)
!395 = !DILocation(line: 157, column: 9, scope: !91, inlinedAt: !368)
!396 = !DILocation(line: 157, column: 19, scope: !91, inlinedAt: !368)
!397 = !DILocation(line: 158, column: 9, scope: !91, inlinedAt: !368)
!398 = !DILocation(line: 158, column: 22, scope: !91, inlinedAt: !368)
!399 = !DILocation(line: 159, column: 9, scope: !91, inlinedAt: !368)
!400 = !DILocation(line: 162, column: 17, scope: !91, inlinedAt: !368)
!401 = !DILocation(line: 160, column: 24, scope: !91, inlinedAt: !368)
!402 = !DILocation(line: 163, column: 5, scope: !91, inlinedAt: !368)
!403 = !DILocation(line: 171, column: 12, scope: !107)
!404 = !DILocation(line: 171, column: 5, scope: !107)
!405 = !DILocation(line: 177, column: 37, scope: !114)
!406 = !DILocation(line: 179, column: 12, scope: !114)
!407 = !DILocation(line: 185, column: 17, scope: !114)
!408 = !DILocation(line: 192, column: 31, scope: !123)
!409 = !DILocation(line: 185, column: 29, scope: !114)
!410 = !DILocation(line: 185, column: 10, scope: !114)
!411 = !DILocation(line: 188, column: 17, scope: !114)
!412 = !DILocation(line: 188, column: 27, scope: !114)
!413 = !DILocation(line: 188, column: 25, scope: !114)
!414 = !DILocation(line: 188, column: 10, scope: !114)
!415 = !DILocation(line: 191, column: 13, scope: !126)
!416 = !DILocation(line: 191, column: 9, scope: !126)
!417 = !DILocation(line: 192, column: 25, scope: !123)
!418 = !DILocation(line: 191, column: 9, scope: !114)
!419 = !DILocation(line: 195, column: 26, scope: !130)
!420 = !DILocation(line: 192, column: 9, scope: !124)
!421 = !DILocation(line: 195, column: 13, scope: !130)
!422 = !DILocation(line: 198, column: 24, scope: !128)
!423 = !{!285, !285, i64 0}
!424 = !DILocation(line: 196, column: 23, scope: !128)
!425 = !DILocation(line: 199, column: 29, scope: !128)
!426 = !DILocation(line: 199, column: 25, scope: !128)
!427 = !DILocation(line: 199, column: 22, scope: !128)
!428 = !DILocation(line: 195, column: 61, scope: !129)
!429 = !DILocation(line: 192, column: 46, scope: !123)
!430 = !DILocation(line: 180, column: 12, scope: !114)
!431 = !DILocation(line: 203, column: 5, scope: !114)
!432 = !DILocation(line: 247, column: 42, scope: !131)
!433 = !DILocation(line: 247, column: 58, scope: !131)
!434 = !DILocation(line: 253, column: 20, scope: !131)
!435 = !DILocation(line: 253, column: 16, scope: !131)
!436 = !DILocation(line: 249, column: 16, scope: !131)
!437 = !DILocation(line: 254, column: 29, scope: !131)
!438 = !DILocation(line: 254, column: 41, scope: !131)
!439 = !DILocation(line: 254, column: 22, scope: !131)
!440 = !DILocation(line: 250, column: 12, scope: !131)
!441 = !DILocation(line: 256, column: 18, scope: !442)
!442 = distinct !DILexicalBlock(scope: !131, file: !1, line: 256, column: 5)
!443 = !DILocation(line: 257, column: 48, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 257, column: 13)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 256, column: 83)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 256, column: 5)
!447 = !DILocation(line: 256, column: 47, scope: !446)
!448 = !DILocation(line: 256, column: 5, scope: !442)
!449 = !DILocation(line: 257, column: 20, scope: !444)
!450 = !{!283, !288, i64 16}
!451 = !DILocation(line: 257, column: 29, scope: !444)
!452 = !DILocation(line: 257, column: 41, scope: !444)
!453 = !DILocation(line: 257, column: 44, scope: !444)
!454 = !DILocation(line: 257, column: 13, scope: !445)
!455 = !DILocation(line: 256, column: 64, scope: !446)
!456 = !DILocation(line: 261, column: 5, scope: !131)
!457 = !DILocation(line: 300, column: 36, scope: !140)
!458 = !DILocation(line: 300, column: 52, scope: !140)
!459 = !DILocation(line: 301, column: 25, scope: !140)
!460 = !DILocation(line: 301, column: 38, scope: !140)
!461 = !DILocation(line: 316, column: 20, scope: !140)
!462 = !DILocation(line: 316, column: 16, scope: !140)
!463 = !DILocation(line: 303, column: 16, scope: !140)
!464 = !DILocation(line: 317, column: 29, scope: !140)
!465 = !DILocation(line: 304, column: 12, scope: !140)
!466 = !DILocation(line: 319, column: 23, scope: !140)
!467 = !{!325, !285, i64 72}
!468 = !DILocation(line: 319, column: 30, scope: !140)
!469 = !DILocation(line: 319, column: 13, scope: !140)
!470 = !DILocation(line: 320, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !140, file: !1, line: 320, column: 9)
!472 = !DILocation(line: 320, column: 9, scope: !140)
!473 = !DILocation(line: 317, column: 41, scope: !140)
!474 = !DILocation(line: 317, column: 22, scope: !140)
!475 = !DILocation(line: 325, column: 12, scope: !140)
!476 = !DILocation(line: 325, column: 16, scope: !140)
!477 = !DILocation(line: 326, column: 12, scope: !140)
!478 = !DILocation(line: 326, column: 21, scope: !140)
!479 = !DILocation(line: 329, column: 12, scope: !140)
!480 = !DILocation(line: 329, column: 5, scope: !140)
!481 = !DILocation(line: 331, column: 28, scope: !140)
!482 = !DILocation(line: 410, column: 23, scope: !247, inlinedAt: !483)
!483 = distinct !DILocation(line: 335, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !140, file: !1, line: 334, column: 9)
!485 = !DILocation(line: 331, column: 24, scope: !140)
!486 = !DILocation(line: 74, column: 32, scope: !224, inlinedAt: !487)
!487 = distinct !DILocation(line: 331, column: 5, scope: !140)
!488 = !DILocation(line: 76, column: 24, scope: !224, inlinedAt: !487)
!489 = !{!490, !285, i64 0}
!490 = !{!"", !285, i64 0}
!491 = !DILocation(line: 76, column: 16, scope: !224, inlinedAt: !487)
!492 = !{!284, !285, i64 0}
!493 = !DILocation(line: 77, column: 16, scope: !224, inlinedAt: !487)
!494 = !DILocation(line: 332, column: 9, scope: !140)
!495 = !DILocation(line: 332, column: 16, scope: !140)
!496 = !DILocation(line: 334, column: 9, scope: !484)
!497 = !DILocation(line: 404, column: 25, scope: !498, inlinedAt: !483)
!498 = distinct !DILexicalBlock(scope: !247, file: !1, line: 404, column: 9)
!499 = !DILocation(line: 334, column: 30, scope: !484)
!500 = !DILocation(line: 334, column: 28, scope: !484)
!501 = !DILocation(line: 334, column: 53, scope: !484)
!502 = !DILocation(line: 334, column: 9, scope: !140)
!503 = !DILocation(line: 397, column: 35, scope: !247, inlinedAt: !483)
!504 = !DILocation(line: 400, column: 18, scope: !247, inlinedAt: !483)
!505 = !DILocation(line: 403, column: 36, scope: !247, inlinedAt: !483)
!506 = !DILocation(line: 403, column: 48, scope: !247, inlinedAt: !483)
!507 = !DILocation(line: 403, column: 50, scope: !247, inlinedAt: !483)
!508 = !DILocation(line: 403, column: 27, scope: !247, inlinedAt: !483)
!509 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !510)
!510 = distinct !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !483)
!511 = !DILocation(line: 113, column: 11, scope: !315, inlinedAt: !510)
!512 = !DILocation(line: 113, column: 9, scope: !218, inlinedAt: !510)
!513 = !DILocation(line: 116, column: 14, scope: !218, inlinedAt: !510)
!514 = !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !483)
!515 = !DILocation(line: 117, column: 11, scope: !218, inlinedAt: !510)
!516 = !DILocation(line: 112, column: 12, scope: !218, inlinedAt: !510)
!517 = !DILocation(line: 116, column: 5, scope: !218, inlinedAt: !510)
!518 = !DILocation(line: 399, column: 26, scope: !247, inlinedAt: !483)
!519 = !DILocation(line: 404, column: 18, scope: !498, inlinedAt: !483)
!520 = !DILocation(line: 404, column: 9, scope: !247, inlinedAt: !483)
!521 = !DILocation(line: 401, column: 12, scope: !247, inlinedAt: !483)
!522 = !DILocation(line: 409, column: 29, scope: !247, inlinedAt: !483)
!523 = !DILocation(line: 399, column: 12, scope: !247, inlinedAt: !483)
!524 = !DILocation(line: 411, column: 29, scope: !247, inlinedAt: !483)
!525 = !DILocation(line: 411, column: 19, scope: !247, inlinedAt: !483)
!526 = !DILocation(line: 411, column: 17, scope: !247, inlinedAt: !483)
!527 = !DILocation(line: 412, column: 21, scope: !528, inlinedAt: !483)
!528 = distinct !DILexicalBlock(scope: !247, file: !1, line: 412, column: 9)
!529 = !DILocation(line: 412, column: 9, scope: !247, inlinedAt: !483)
!530 = !DILocation(line: 414, column: 21, scope: !531, inlinedAt: !483)
!531 = distinct !DILexicalBlock(scope: !528, file: !1, line: 412, column: 30)
!532 = !DILocation(line: 416, column: 9, scope: !531, inlinedAt: !483)
!533 = !DILocation(line: 418, column: 5, scope: !247, inlinedAt: !483)
!534 = !DILocation(line: 420, column: 21, scope: !247, inlinedAt: !483)
!535 = !DILocation(line: 399, column: 36, scope: !247, inlinedAt: !483)
!536 = !DILocation(line: 422, column: 29, scope: !257, inlinedAt: !483)
!537 = !DILocation(line: 422, column: 5, scope: !258, inlinedAt: !483)
!538 = !DILocation(line: 429, column: 55, scope: !261, inlinedAt: !483)
!539 = !DILocation(line: 335, column: 9, scope: !484)
!540 = !DILocation(line: 424, column: 22, scope: !263, inlinedAt: !483)
!541 = !DILocation(line: 423, column: 32, scope: !256, inlinedAt: !483)
!542 = !DILocation(line: 424, column: 63, scope: !262, inlinedAt: !483)
!543 = !DILocation(line: 424, column: 9, scope: !263, inlinedAt: !483)
!544 = !DILocation(line: 431, column: 36, scope: !261, inlinedAt: !483)
!545 = !DILocation(line: 428, column: 20, scope: !261, inlinedAt: !483)
!546 = !DILocation(line: 423, column: 40, scope: !256, inlinedAt: !483)
!547 = !DILocation(line: 429, column: 34, scope: !261, inlinedAt: !483)
!548 = !DILocation(line: 429, column: 43, scope: !261, inlinedAt: !483)
!549 = !DILocation(line: 425, column: 20, scope: !261, inlinedAt: !483)
!550 = !DILocation(line: 431, column: 32, scope: !261, inlinedAt: !483)
!551 = !DILocation(line: 74, column: 32, scope: !224, inlinedAt: !552)
!552 = distinct !DILocation(line: 431, column: 13, scope: !261, inlinedAt: !483)
!553 = !DILocation(line: 74, column: 56, scope: !224, inlinedAt: !552)
!554 = !DILocation(line: 76, column: 24, scope: !224, inlinedAt: !552)
!555 = !DILocation(line: 76, column: 16, scope: !224, inlinedAt: !552)
!556 = !DILocation(line: 77, column: 16, scope: !224, inlinedAt: !552)
!557 = !DILocation(line: 422, column: 54, scope: !257, inlinedAt: !483)
!558 = !DILocation(line: 435, column: 15, scope: !247, inlinedAt: !483)
!559 = !{!325, !285, i64 80}
!560 = !DILocation(line: 435, column: 20, scope: !247, inlinedAt: !483)
!561 = !DILocation(line: 435, column: 5, scope: !247, inlinedAt: !483)
!562 = !DILocation(line: 436, column: 1, scope: !247, inlinedAt: !483)
!563 = !DILocation(line: 337, column: 1, scope: !140)
!564 = !DILocation(line: 342, column: 36, scope: !151)
!565 = !DILocation(line: 342, column: 52, scope: !151)
!566 = !DILocation(line: 342, column: 63, scope: !151)
!567 = !DILocation(line: 342, column: 76, scope: !151)
!568 = !DILocation(line: 247, column: 42, scope: !131, inlinedAt: !569)
!569 = distinct !DILocation(line: 348, column: 13, scope: !151)
!570 = !DILocation(line: 247, column: 58, scope: !131, inlinedAt: !569)
!571 = !DILocation(line: 253, column: 20, scope: !131, inlinedAt: !569)
!572 = !DILocation(line: 253, column: 16, scope: !131, inlinedAt: !569)
!573 = !DILocation(line: 249, column: 16, scope: !131, inlinedAt: !569)
!574 = !DILocation(line: 254, column: 29, scope: !131, inlinedAt: !569)
!575 = !DILocation(line: 254, column: 41, scope: !131, inlinedAt: !569)
!576 = !DILocation(line: 254, column: 22, scope: !131, inlinedAt: !569)
!577 = !DILocation(line: 250, column: 12, scope: !131, inlinedAt: !569)
!578 = !DILocation(line: 256, column: 18, scope: !442, inlinedAt: !569)
!579 = !DILocation(line: 257, column: 48, scope: !444, inlinedAt: !569)
!580 = !DILocation(line: 256, column: 47, scope: !446, inlinedAt: !569)
!581 = !DILocation(line: 256, column: 5, scope: !442, inlinedAt: !569)
!582 = !DILocation(line: 257, column: 20, scope: !444, inlinedAt: !569)
!583 = !DILocation(line: 348, column: 13, scope: !151)
!584 = !DILocation(line: 257, column: 29, scope: !444, inlinedAt: !569)
!585 = !DILocation(line: 257, column: 41, scope: !444, inlinedAt: !569)
!586 = !DILocation(line: 257, column: 44, scope: !444, inlinedAt: !569)
!587 = !DILocation(line: 257, column: 13, scope: !445, inlinedAt: !569)
!588 = !DILocation(line: 256, column: 64, scope: !446, inlinedAt: !569)
!589 = !DILocation(line: 351, column: 5, scope: !590)
!590 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!591 = distinct !DILexicalBlock(scope: !151, file: !1, line: 351, column: 5)
!592 = !DILocation(line: 352, column: 5, scope: !151)
!593 = !DILocation(line: 353, column: 1, scope: !151)
!594 = !DILocation(line: 356, column: 36, scope: !158)
!595 = !DILocation(line: 356, column: 52, scope: !158)
!596 = !DILocation(line: 356, column: 63, scope: !158)
!597 = !DILocation(line: 356, column: 76, scope: !158)
!598 = !DILocation(line: 265, column: 39, scope: !230, inlinedAt: !599)
!599 = distinct !DILocation(line: 360, column: 12, scope: !158)
!600 = !DILocation(line: 265, column: 55, scope: !230, inlinedAt: !599)
!601 = !DILocation(line: 265, column: 66, scope: !230, inlinedAt: !599)
!602 = !DILocation(line: 265, column: 79, scope: !230, inlinedAt: !599)
!603 = !DILocation(line: 271, column: 20, scope: !230, inlinedAt: !599)
!604 = !DILocation(line: 271, column: 16, scope: !230, inlinedAt: !599)
!605 = !DILocation(line: 267, column: 16, scope: !230, inlinedAt: !599)
!606 = !DILocation(line: 272, column: 29, scope: !230, inlinedAt: !599)
!607 = !DILocation(line: 272, column: 41, scope: !230, inlinedAt: !599)
!608 = !DILocation(line: 272, column: 22, scope: !230, inlinedAt: !599)
!609 = !DILocation(line: 268, column: 12, scope: !230, inlinedAt: !599)
!610 = !DILocation(line: 269, column: 36, scope: !230, inlinedAt: !599)
!611 = !DILocation(line: 275, column: 18, scope: !612, inlinedAt: !599)
!612 = distinct !DILexicalBlock(scope: !230, file: !1, line: 275, column: 5)
!613 = !DILocation(line: 275, column: 5, scope: !612, inlinedAt: !599)
!614 = !DILocation(line: 276, column: 48, scope: !615, inlinedAt: !599)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 276, column: 13)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 275, column: 83)
!617 = distinct !DILexicalBlock(scope: !612, file: !1, line: 275, column: 5)
!618 = !DILocation(line: 360, column: 12, scope: !158)
!619 = !DILocation(line: 276, column: 20, scope: !615, inlinedAt: !599)
!620 = !DILocation(line: 276, column: 29, scope: !615, inlinedAt: !599)
!621 = !DILocation(line: 276, column: 41, scope: !615, inlinedAt: !599)
!622 = !DILocation(line: 276, column: 44, scope: !615, inlinedAt: !599)
!623 = !DILocation(line: 276, column: 13, scope: !616, inlinedAt: !599)
!624 = !DILocation(line: 275, column: 64, scope: !617, inlinedAt: !599)
!625 = !DILocation(line: 84, column: 18, scope: !626, inlinedAt: !627)
!626 = distinct !DILexicalBlock(scope: !240, file: !1, line: 84, column: 9)
!627 = distinct !DILocation(line: 284, column: 5, scope: !230, inlinedAt: !599)
!628 = !DILocation(line: 85, column: 32, scope: !626, inlinedAt: !627)
!629 = !DILocation(line: 84, column: 9, scope: !240, inlinedAt: !627)
!630 = !DILocation(line: 85, column: 24, scope: !626, inlinedAt: !627)
!631 = !DILocation(line: 85, column: 9, scope: !626, inlinedAt: !627)
!632 = !DILocation(line: 284, column: 27, scope: !230, inlinedAt: !599)
!633 = !DILocation(line: 284, column: 23, scope: !230, inlinedAt: !599)
!634 = !DILocation(line: 87, column: 20, scope: !626, inlinedAt: !627)
!635 = !DILocation(line: 284, column: 5, scope: !230, inlinedAt: !599)
!636 = !DILocation(line: 286, column: 9, scope: !230, inlinedAt: !599)
!637 = !DILocation(line: 286, column: 16, scope: !230, inlinedAt: !599)
!638 = !DILocation(line: 288, column: 14, scope: !639, inlinedAt: !599)
!639 = distinct !DILexicalBlock(scope: !230, file: !1, line: 288, column: 9)
!640 = !DILocation(line: 288, column: 9, scope: !230, inlinedAt: !599)
!641 = !DILocation(line: 289, column: 9, scope: !642, inlinedAt: !599)
!642 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 1)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 289, column: 9)
!644 = !DILocation(line: 289, column: 9, scope: !645, inlinedAt: !599)
!645 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 3)
!646 = !DILocation(line: 290, column: 15, scope: !230, inlinedAt: !599)
!647 = !DILocation(line: 290, column: 20, scope: !230, inlinedAt: !599)
!648 = !DILocation(line: 290, column: 5, scope: !230, inlinedAt: !599)
!649 = !DILocation(line: 292, column: 20, scope: !650, inlinedAt: !599)
!650 = distinct !DILexicalBlock(scope: !230, file: !1, line: 292, column: 9)
!651 = !DILocation(line: 292, column: 9, scope: !650, inlinedAt: !599)
!652 = !DILocation(line: 404, column: 25, scope: !498, inlinedAt: !653)
!653 = distinct !DILocation(line: 293, column: 9, scope: !650, inlinedAt: !599)
!654 = !DILocation(line: 292, column: 30, scope: !650, inlinedAt: !599)
!655 = !DILocation(line: 292, column: 28, scope: !650, inlinedAt: !599)
!656 = !DILocation(line: 292, column: 53, scope: !650, inlinedAt: !599)
!657 = !DILocation(line: 292, column: 9, scope: !230, inlinedAt: !599)
!658 = !DILocation(line: 397, column: 35, scope: !247, inlinedAt: !653)
!659 = !DILocation(line: 400, column: 18, scope: !247, inlinedAt: !653)
!660 = !DILocation(line: 403, column: 36, scope: !247, inlinedAt: !653)
!661 = !DILocation(line: 403, column: 48, scope: !247, inlinedAt: !653)
!662 = !DILocation(line: 403, column: 50, scope: !247, inlinedAt: !653)
!663 = !DILocation(line: 403, column: 27, scope: !247, inlinedAt: !653)
!664 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !665)
!665 = distinct !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !653)
!666 = !DILocation(line: 113, column: 11, scope: !315, inlinedAt: !665)
!667 = !DILocation(line: 113, column: 9, scope: !218, inlinedAt: !665)
!668 = !DILocation(line: 116, column: 14, scope: !218, inlinedAt: !665)
!669 = !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !653)
!670 = !DILocation(line: 117, column: 11, scope: !218, inlinedAt: !665)
!671 = !DILocation(line: 112, column: 12, scope: !218, inlinedAt: !665)
!672 = !DILocation(line: 116, column: 5, scope: !218, inlinedAt: !665)
!673 = !DILocation(line: 399, column: 26, scope: !247, inlinedAt: !653)
!674 = !DILocation(line: 404, column: 18, scope: !498, inlinedAt: !653)
!675 = !DILocation(line: 404, column: 9, scope: !247, inlinedAt: !653)
!676 = !DILocation(line: 401, column: 12, scope: !247, inlinedAt: !653)
!677 = !DILocation(line: 409, column: 29, scope: !247, inlinedAt: !653)
!678 = !DILocation(line: 399, column: 12, scope: !247, inlinedAt: !653)
!679 = !DILocation(line: 410, column: 23, scope: !247, inlinedAt: !653)
!680 = !DILocation(line: 411, column: 29, scope: !247, inlinedAt: !653)
!681 = !DILocation(line: 411, column: 19, scope: !247, inlinedAt: !653)
!682 = !DILocation(line: 411, column: 17, scope: !247, inlinedAt: !653)
!683 = !DILocation(line: 412, column: 21, scope: !528, inlinedAt: !653)
!684 = !DILocation(line: 412, column: 9, scope: !247, inlinedAt: !653)
!685 = !DILocation(line: 414, column: 21, scope: !531, inlinedAt: !653)
!686 = !DILocation(line: 416, column: 9, scope: !531, inlinedAt: !653)
!687 = !DILocation(line: 418, column: 5, scope: !247, inlinedAt: !653)
!688 = !DILocation(line: 420, column: 21, scope: !247, inlinedAt: !653)
!689 = !DILocation(line: 399, column: 36, scope: !247, inlinedAt: !653)
!690 = !DILocation(line: 422, column: 29, scope: !257, inlinedAt: !653)
!691 = !DILocation(line: 422, column: 5, scope: !258, inlinedAt: !653)
!692 = !DILocation(line: 429, column: 55, scope: !261, inlinedAt: !653)
!693 = !DILocation(line: 293, column: 9, scope: !650, inlinedAt: !599)
!694 = !DILocation(line: 424, column: 22, scope: !263, inlinedAt: !653)
!695 = !DILocation(line: 423, column: 32, scope: !256, inlinedAt: !653)
!696 = !DILocation(line: 424, column: 63, scope: !262, inlinedAt: !653)
!697 = !DILocation(line: 424, column: 9, scope: !263, inlinedAt: !653)
!698 = !DILocation(line: 431, column: 36, scope: !261, inlinedAt: !653)
!699 = !DILocation(line: 428, column: 20, scope: !261, inlinedAt: !653)
!700 = !DILocation(line: 423, column: 40, scope: !256, inlinedAt: !653)
!701 = !DILocation(line: 429, column: 34, scope: !261, inlinedAt: !653)
!702 = !DILocation(line: 429, column: 43, scope: !261, inlinedAt: !653)
!703 = !DILocation(line: 425, column: 20, scope: !261, inlinedAt: !653)
!704 = !DILocation(line: 431, column: 32, scope: !261, inlinedAt: !653)
!705 = !DILocation(line: 74, column: 32, scope: !224, inlinedAt: !706)
!706 = distinct !DILocation(line: 431, column: 13, scope: !261, inlinedAt: !653)
!707 = !DILocation(line: 74, column: 56, scope: !224, inlinedAt: !706)
!708 = !DILocation(line: 76, column: 24, scope: !224, inlinedAt: !706)
!709 = !DILocation(line: 76, column: 16, scope: !224, inlinedAt: !706)
!710 = !DILocation(line: 77, column: 16, scope: !224, inlinedAt: !706)
!711 = !DILocation(line: 422, column: 54, scope: !257, inlinedAt: !653)
!712 = !DILocation(line: 435, column: 15, scope: !247, inlinedAt: !653)
!713 = !DILocation(line: 435, column: 20, scope: !247, inlinedAt: !653)
!714 = !DILocation(line: 435, column: 5, scope: !247, inlinedAt: !653)
!715 = !DILocation(line: 436, column: 1, scope: !247, inlinedAt: !653)
!716 = !DILocation(line: 360, column: 5, scope: !158)
!717 = !DILocation(line: 365, column: 39, scope: !164)
!718 = !DILocation(line: 365, column: 55, scope: !164)
!719 = !DILocation(line: 265, column: 39, scope: !230, inlinedAt: !720)
!720 = distinct !DILocation(line: 371, column: 11, scope: !164)
!721 = !DILocation(line: 265, column: 55, scope: !230, inlinedAt: !720)
!722 = !DILocation(line: 265, column: 66, scope: !230, inlinedAt: !720)
!723 = !DILocation(line: 265, column: 79, scope: !230, inlinedAt: !720)
!724 = !DILocation(line: 271, column: 20, scope: !230, inlinedAt: !720)
!725 = !DILocation(line: 271, column: 16, scope: !230, inlinedAt: !720)
!726 = !DILocation(line: 267, column: 16, scope: !230, inlinedAt: !720)
!727 = !DILocation(line: 272, column: 29, scope: !230, inlinedAt: !720)
!728 = !DILocation(line: 272, column: 41, scope: !230, inlinedAt: !720)
!729 = !DILocation(line: 272, column: 22, scope: !230, inlinedAt: !720)
!730 = !DILocation(line: 268, column: 12, scope: !230, inlinedAt: !720)
!731 = !DILocation(line: 269, column: 36, scope: !230, inlinedAt: !720)
!732 = !DILocation(line: 275, column: 18, scope: !612, inlinedAt: !720)
!733 = !DILocation(line: 275, column: 5, scope: !612, inlinedAt: !720)
!734 = !DILocation(line: 276, column: 48, scope: !615, inlinedAt: !720)
!735 = !DILocation(line: 371, column: 11, scope: !164)
!736 = !DILocation(line: 276, column: 20, scope: !615, inlinedAt: !720)
!737 = !DILocation(line: 276, column: 29, scope: !615, inlinedAt: !720)
!738 = !DILocation(line: 276, column: 41, scope: !615, inlinedAt: !720)
!739 = !DILocation(line: 276, column: 44, scope: !615, inlinedAt: !720)
!740 = !DILocation(line: 276, column: 13, scope: !616, inlinedAt: !720)
!741 = !DILocation(line: 275, column: 64, scope: !617, inlinedAt: !720)
!742 = !DILocation(line: 84, column: 18, scope: !626, inlinedAt: !743)
!743 = distinct !DILocation(line: 284, column: 5, scope: !230, inlinedAt: !720)
!744 = !DILocation(line: 85, column: 32, scope: !626, inlinedAt: !743)
!745 = !DILocation(line: 84, column: 9, scope: !240, inlinedAt: !743)
!746 = !DILocation(line: 85, column: 24, scope: !626, inlinedAt: !743)
!747 = !DILocation(line: 85, column: 9, scope: !626, inlinedAt: !743)
!748 = !DILocation(line: 284, column: 27, scope: !230, inlinedAt: !720)
!749 = !DILocation(line: 284, column: 23, scope: !230, inlinedAt: !720)
!750 = !DILocation(line: 87, column: 20, scope: !626, inlinedAt: !743)
!751 = !DILocation(line: 284, column: 5, scope: !230, inlinedAt: !720)
!752 = !DILocation(line: 286, column: 9, scope: !230, inlinedAt: !720)
!753 = !DILocation(line: 286, column: 16, scope: !230, inlinedAt: !720)
!754 = !DILocation(line: 290, column: 15, scope: !230, inlinedAt: !720)
!755 = !DILocation(line: 290, column: 20, scope: !230, inlinedAt: !720)
!756 = !DILocation(line: 290, column: 5, scope: !230, inlinedAt: !720)
!757 = !DILocation(line: 292, column: 20, scope: !650, inlinedAt: !720)
!758 = !DILocation(line: 292, column: 9, scope: !650, inlinedAt: !720)
!759 = !DILocation(line: 404, column: 25, scope: !498, inlinedAt: !760)
!760 = distinct !DILocation(line: 293, column: 9, scope: !650, inlinedAt: !720)
!761 = !DILocation(line: 292, column: 30, scope: !650, inlinedAt: !720)
!762 = !DILocation(line: 292, column: 28, scope: !650, inlinedAt: !720)
!763 = !DILocation(line: 292, column: 53, scope: !650, inlinedAt: !720)
!764 = !DILocation(line: 292, column: 9, scope: !230, inlinedAt: !720)
!765 = !DILocation(line: 397, column: 35, scope: !247, inlinedAt: !760)
!766 = !DILocation(line: 400, column: 18, scope: !247, inlinedAt: !760)
!767 = !DILocation(line: 403, column: 36, scope: !247, inlinedAt: !760)
!768 = !DILocation(line: 403, column: 48, scope: !247, inlinedAt: !760)
!769 = !DILocation(line: 403, column: 50, scope: !247, inlinedAt: !760)
!770 = !DILocation(line: 403, column: 27, scope: !247, inlinedAt: !760)
!771 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !772)
!772 = distinct !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !760)
!773 = !DILocation(line: 113, column: 11, scope: !315, inlinedAt: !772)
!774 = !DILocation(line: 113, column: 9, scope: !218, inlinedAt: !772)
!775 = !DILocation(line: 116, column: 14, scope: !218, inlinedAt: !772)
!776 = !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !760)
!777 = !DILocation(line: 117, column: 11, scope: !218, inlinedAt: !772)
!778 = !DILocation(line: 112, column: 12, scope: !218, inlinedAt: !772)
!779 = !DILocation(line: 116, column: 5, scope: !218, inlinedAt: !772)
!780 = !DILocation(line: 399, column: 26, scope: !247, inlinedAt: !760)
!781 = !DILocation(line: 404, column: 18, scope: !498, inlinedAt: !760)
!782 = !DILocation(line: 404, column: 9, scope: !247, inlinedAt: !760)
!783 = !DILocation(line: 401, column: 12, scope: !247, inlinedAt: !760)
!784 = !DILocation(line: 409, column: 29, scope: !247, inlinedAt: !760)
!785 = !DILocation(line: 399, column: 12, scope: !247, inlinedAt: !760)
!786 = !DILocation(line: 410, column: 23, scope: !247, inlinedAt: !760)
!787 = !DILocation(line: 411, column: 29, scope: !247, inlinedAt: !760)
!788 = !DILocation(line: 411, column: 19, scope: !247, inlinedAt: !760)
!789 = !DILocation(line: 411, column: 17, scope: !247, inlinedAt: !760)
!790 = !DILocation(line: 412, column: 21, scope: !528, inlinedAt: !760)
!791 = !DILocation(line: 412, column: 9, scope: !247, inlinedAt: !760)
!792 = !DILocation(line: 414, column: 21, scope: !531, inlinedAt: !760)
!793 = !DILocation(line: 416, column: 9, scope: !531, inlinedAt: !760)
!794 = !DILocation(line: 418, column: 5, scope: !247, inlinedAt: !760)
!795 = !DILocation(line: 420, column: 21, scope: !247, inlinedAt: !760)
!796 = !DILocation(line: 399, column: 36, scope: !247, inlinedAt: !760)
!797 = !DILocation(line: 422, column: 29, scope: !257, inlinedAt: !760)
!798 = !DILocation(line: 422, column: 5, scope: !258, inlinedAt: !760)
!799 = !DILocation(line: 429, column: 55, scope: !261, inlinedAt: !760)
!800 = !DILocation(line: 293, column: 9, scope: !650, inlinedAt: !720)
!801 = !DILocation(line: 424, column: 22, scope: !263, inlinedAt: !760)
!802 = !DILocation(line: 423, column: 32, scope: !256, inlinedAt: !760)
!803 = !DILocation(line: 424, column: 63, scope: !262, inlinedAt: !760)
!804 = !DILocation(line: 424, column: 9, scope: !263, inlinedAt: !760)
!805 = !DILocation(line: 431, column: 36, scope: !261, inlinedAt: !760)
!806 = !DILocation(line: 428, column: 20, scope: !261, inlinedAt: !760)
!807 = !DILocation(line: 423, column: 40, scope: !256, inlinedAt: !760)
!808 = !DILocation(line: 429, column: 34, scope: !261, inlinedAt: !760)
!809 = !DILocation(line: 429, column: 43, scope: !261, inlinedAt: !760)
!810 = !DILocation(line: 425, column: 20, scope: !261, inlinedAt: !760)
!811 = !DILocation(line: 431, column: 32, scope: !261, inlinedAt: !760)
!812 = !DILocation(line: 74, column: 32, scope: !224, inlinedAt: !813)
!813 = distinct !DILocation(line: 431, column: 13, scope: !261, inlinedAt: !760)
!814 = !DILocation(line: 74, column: 56, scope: !224, inlinedAt: !813)
!815 = !DILocation(line: 76, column: 24, scope: !224, inlinedAt: !813)
!816 = !DILocation(line: 76, column: 16, scope: !224, inlinedAt: !813)
!817 = !DILocation(line: 77, column: 16, scope: !224, inlinedAt: !813)
!818 = !DILocation(line: 422, column: 54, scope: !257, inlinedAt: !760)
!819 = !DILocation(line: 435, column: 15, scope: !247, inlinedAt: !760)
!820 = !DILocation(line: 435, column: 20, scope: !247, inlinedAt: !760)
!821 = !DILocation(line: 435, column: 5, scope: !247, inlinedAt: !760)
!822 = !DILocation(line: 436, column: 1, scope: !247, inlinedAt: !760)
!823 = !DILocation(line: 373, column: 1, scope: !164)
!824 = !DILocation(line: 379, column: 40, scope: !170)
!825 = !DILocation(line: 380, column: 29, scope: !170)
!826 = !DILocation(line: 381, column: 29, scope: !170)
!827 = !DILocation(line: 384, column: 12, scope: !170)
!828 = !DILocation(line: 386, column: 27, scope: !187)
!829 = !DILocation(line: 386, column: 21, scope: !187)
!830 = !DILocation(line: 386, column: 5, scope: !188)
!831 = !DILocation(line: 387, column: 22, scope: !185)
!832 = !DILocation(line: 387, column: 9, scope: !185)
!833 = !DILocation(line: 388, column: 23, scope: !183)
!834 = !DILocation(line: 388, column: 17, scope: !183)
!835 = !DILocation(line: 389, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !183, file: !1, line: 389, column: 17)
!837 = !DILocation(line: 387, column: 57, scope: !184)
!838 = !DILocation(line: 386, column: 42, scope: !187)
!839 = !DILocation(line: 394, column: 1, scope: !170)
!840 = !DILocation(line: 439, column: 38, scope: !189)
!841 = !DILocation(line: 442, column: 12, scope: !189)
!842 = !DILocation(line: 444, column: 23, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 444, column: 5)
!844 = distinct !DILexicalBlock(scope: !189, file: !1, line: 444, column: 5)
!845 = !DILocation(line: 444, column: 17, scope: !843)
!846 = !DILocation(line: 444, column: 5, scope: !844)
!847 = !DILocation(line: 453, column: 9, scope: !189)
!848 = !DILocation(line: 453, column: 17, scope: !189)
!849 = !DILocation(line: 397, column: 35, scope: !247, inlinedAt: !850)
!850 = distinct !DILocation(line: 454, column: 5, scope: !189)
!851 = !DILocation(line: 400, column: 18, scope: !247, inlinedAt: !850)
!852 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !853)
!853 = distinct !DILocation(line: 403, column: 16, scope: !247, inlinedAt: !850)
!854 = !DILocation(line: 399, column: 26, scope: !247, inlinedAt: !850)
!855 = !DILocation(line: 404, column: 9, scope: !247, inlinedAt: !850)
!856 = !DILocation(line: 445, column: 22, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !1, line: 445, column: 9)
!858 = distinct !DILexicalBlock(scope: !843, file: !1, line: 444, column: 41)
!859 = !DILocation(line: 447, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 447, column: 17)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 445, column: 70)
!862 = distinct !DILexicalBlock(scope: !857, file: !1, line: 445, column: 9)
!863 = !DILocation(line: 449, column: 23, scope: !861)
!864 = !DILocation(line: 441, column: 28, scope: !189)
!865 = !DILocation(line: 445, column: 47, scope: !862)
!866 = !DILocation(line: 445, column: 9, scope: !857)
!867 = !DILocation(line: 446, column: 20, scope: !861)
!868 = !DILocation(line: 441, column: 36, scope: !189)
!869 = !DILocation(line: 447, column: 17, scope: !860)
!870 = !DILocation(line: 447, column: 17, scope: !861)
!871 = !DILocation(line: 448, column: 36, scope: !860)
!872 = !DILocation(line: 448, column: 17, scope: !860)
!873 = !DILocation(line: 449, column: 28, scope: !861)
!874 = !DILocation(line: 449, column: 13, scope: !861)
!875 = !DILocation(line: 451, column: 29, scope: !858)
!876 = !DILocation(line: 70, column: 11, scope: !264, inlinedAt: !877)
!877 = distinct !DILocation(line: 451, column: 9, scope: !858)
!878 = !DILocation(line: 70, column: 16, scope: !264, inlinedAt: !877)
!879 = !DILocation(line: 444, column: 37, scope: !843)
!880 = !DILocation(line: 404, column: 18, scope: !498, inlinedAt: !850)
!881 = !DILocation(line: 401, column: 12, scope: !247, inlinedAt: !850)
!882 = !DILocation(line: 399, column: 12, scope: !247, inlinedAt: !850)
!883 = !DILocation(line: 410, column: 23, scope: !247, inlinedAt: !850)
!884 = !DILocation(line: 411, column: 29, scope: !247, inlinedAt: !850)
!885 = !DILocation(line: 411, column: 19, scope: !247, inlinedAt: !850)
!886 = !DILocation(line: 411, column: 17, scope: !247, inlinedAt: !850)
!887 = !DILocation(line: 412, column: 21, scope: !528, inlinedAt: !850)
!888 = !DILocation(line: 412, column: 9, scope: !247, inlinedAt: !850)
!889 = !DILocation(line: 414, column: 21, scope: !531, inlinedAt: !850)
!890 = !DILocation(line: 416, column: 9, scope: !531, inlinedAt: !850)
!891 = !DILocation(line: 418, column: 5, scope: !247, inlinedAt: !850)
!892 = !DILocation(line: 420, column: 21, scope: !247, inlinedAt: !850)
!893 = !DILocation(line: 399, column: 36, scope: !247, inlinedAt: !850)
!894 = !DILocation(line: 422, column: 29, scope: !257, inlinedAt: !850)
!895 = !DILocation(line: 422, column: 5, scope: !258, inlinedAt: !850)
!896 = !DILocation(line: 424, column: 22, scope: !263, inlinedAt: !850)
!897 = !DILocation(line: 454, column: 5, scope: !189)
!898 = !DILocation(line: 423, column: 32, scope: !256, inlinedAt: !850)
!899 = !DILocation(line: 424, column: 63, scope: !262, inlinedAt: !850)
!900 = !DILocation(line: 424, column: 9, scope: !263, inlinedAt: !850)
!901 = !DILocation(line: 431, column: 36, scope: !261, inlinedAt: !850)
!902 = !DILocation(line: 428, column: 20, scope: !261, inlinedAt: !850)
!903 = !DILocation(line: 423, column: 40, scope: !256, inlinedAt: !850)
!904 = !DILocation(line: 429, column: 34, scope: !261, inlinedAt: !850)
!905 = !DILocation(line: 429, column: 43, scope: !261, inlinedAt: !850)
!906 = !DILocation(line: 425, column: 20, scope: !261, inlinedAt: !850)
!907 = !DILocation(line: 431, column: 32, scope: !261, inlinedAt: !850)
!908 = !DILocation(line: 74, column: 32, scope: !224, inlinedAt: !909)
!909 = distinct !DILocation(line: 431, column: 13, scope: !261, inlinedAt: !850)
!910 = !DILocation(line: 74, column: 56, scope: !224, inlinedAt: !909)
!911 = !DILocation(line: 76, column: 24, scope: !224, inlinedAt: !909)
!912 = !DILocation(line: 76, column: 16, scope: !224, inlinedAt: !909)
!913 = !DILocation(line: 77, column: 16, scope: !224, inlinedAt: !909)
!914 = !DILocation(line: 422, column: 54, scope: !257, inlinedAt: !850)
!915 = !DILocation(line: 435, column: 15, scope: !247, inlinedAt: !850)
!916 = !DILocation(line: 435, column: 20, scope: !247, inlinedAt: !850)
!917 = !DILocation(line: 435, column: 5, scope: !247, inlinedAt: !850)
!918 = !DILocation(line: 436, column: 1, scope: !247, inlinedAt: !850)
!919 = !DILocation(line: 455, column: 1, scope: !189)
!920 = !DILocation(line: 458, column: 40, scope: !197)
!921 = !DILocation(line: 460, column: 12, scope: !197)
!922 = !DILocation(line: 462, column: 25, scope: !203)
!923 = !DILocation(line: 462, column: 19, scope: !203)
!924 = !DILocation(line: 462, column: 5, scope: !204)
!925 = !DILocation(line: 473, column: 15, scope: !197)
!926 = !DILocation(line: 473, column: 24, scope: !197)
!927 = !DILocation(line: 463, column: 39, scope: !202)
!928 = !DILocation(line: 466, column: 21, scope: !929)
!929 = distinct !DILexicalBlock(scope: !206, file: !1, line: 466, column: 17)
!930 = !DILocation(line: 468, column: 23, scope: !206)
!931 = !DILocation(line: 463, column: 50, scope: !202)
!932 = !DILocation(line: 463, column: 27, scope: !202)
!933 = !DILocation(line: 464, column: 9, scope: !202)
!934 = !DILocation(line: 465, column: 51, scope: !206)
!935 = !DILocation(line: 465, column: 31, scope: !206)
!936 = !DILocation(line: 466, column: 17, scope: !929)
!937 = !DILocation(line: 466, column: 17, scope: !206)
!938 = !DILocation(line: 467, column: 36, scope: !929)
!939 = !DILocation(line: 467, column: 17, scope: !929)
!940 = !DILocation(line: 468, column: 28, scope: !206)
!941 = !DILocation(line: 468, column: 13, scope: !206)
!942 = !DILocation(line: 462, column: 39, scope: !203)
!943 = !DILocation(line: 473, column: 5, scope: !197)
!944 = !DILocation(line: 474, column: 15, scope: !197)
!945 = !DILocation(line: 474, column: 20, scope: !197)
!946 = !DILocation(line: 474, column: 5, scope: !197)
!947 = !DILocation(line: 475, column: 1, scope: !197)
!948 = !DILocation(line: 479, column: 37, scope: !207)
!949 = !DILocation(line: 485, column: 5, scope: !207)
!950 = !DILocation(line: 487, column: 39, scope: !207)
!951 = !DILocation(line: 487, column: 55, scope: !207)
!952 = !DILocation(line: 488, column: 34, scope: !207)
!953 = !DILocation(line: 489, column: 34, scope: !207)
!954 = !DILocation(line: 490, column: 34, scope: !207)
!955 = !DILocation(line: 122, column: 31, scope: !91, inlinedAt: !956)
!956 = distinct !DILocation(line: 487, column: 11, scope: !207)
!957 = !DILocation(line: 122, column: 49, scope: !91, inlinedAt: !956)
!958 = !DILocation(line: 132, column: 31, scope: !91, inlinedAt: !956)
!959 = !DILocation(line: 139, column: 17, scope: !301, inlinedAt: !956)
!960 = !DILocation(line: 141, column: 29, scope: !91, inlinedAt: !956)
!961 = !DILocation(line: 141, column: 10, scope: !91, inlinedAt: !956)
!962 = !DILocation(line: 130, column: 22, scope: !91, inlinedAt: !956)
!963 = !DILocation(line: 142, column: 12, scope: !310, inlinedAt: !956)
!964 = !DILocation(line: 142, column: 9, scope: !91, inlinedAt: !956)
!965 = !DILocation(line: 110, column: 19, scope: !218, inlinedAt: !966)
!966 = distinct !DILocation(line: 145, column: 23, scope: !91, inlinedAt: !956)
!967 = !DILocation(line: 113, column: 11, scope: !315, inlinedAt: !966)
!968 = !DILocation(line: 113, column: 9, scope: !218, inlinedAt: !966)
!969 = !DILocation(line: 116, column: 14, scope: !218, inlinedAt: !966)
!970 = !DILocation(line: 145, column: 23, scope: !91, inlinedAt: !956)
!971 = !DILocation(line: 117, column: 11, scope: !218, inlinedAt: !966)
!972 = !DILocation(line: 112, column: 12, scope: !218, inlinedAt: !966)
!973 = !DILocation(line: 116, column: 5, scope: !218, inlinedAt: !966)
!974 = !DILocation(line: 145, column: 9, scope: !91, inlinedAt: !956)
!975 = !DILocation(line: 145, column: 21, scope: !91, inlinedAt: !956)
!976 = !DILocation(line: 146, column: 9, scope: !91, inlinedAt: !956)
!977 = !DILocation(line: 146, column: 17, scope: !91, inlinedAt: !956)
!978 = !DILocation(line: 147, column: 9, scope: !91, inlinedAt: !956)
!979 = !DILocation(line: 147, column: 19, scope: !91, inlinedAt: !956)
!980 = !DILocation(line: 149, column: 36, scope: !91, inlinedAt: !956)
!981 = !DILocation(line: 131, column: 12, scope: !91, inlinedAt: !956)
!982 = !DILocation(line: 150, column: 19, scope: !91, inlinedAt: !956)
!983 = !DILocation(line: 150, column: 9, scope: !91, inlinedAt: !956)
!984 = !DILocation(line: 150, column: 17, scope: !91, inlinedAt: !956)
!985 = !DILocation(line: 151, column: 21, scope: !340, inlinedAt: !956)
!986 = !DILocation(line: 151, column: 9, scope: !91, inlinedAt: !956)
!987 = !DILocation(line: 152, column: 9, scope: !343, inlinedAt: !956)
!988 = !DILocation(line: 481, column: 22, scope: !207)
!989 = !DILocation(line: 491, column: 9, scope: !207)
!990 = !DILocation(line: 155, column: 5, scope: !91, inlinedAt: !956)
!991 = !DILocation(line: 157, column: 9, scope: !91, inlinedAt: !956)
!992 = !DILocation(line: 157, column: 19, scope: !91, inlinedAt: !956)
!993 = !DILocation(line: 159, column: 9, scope: !91, inlinedAt: !956)
!994 = !DILocation(line: 160, column: 9, scope: !91, inlinedAt: !956)
!995 = !DILocation(line: 159, column: 24, scope: !91, inlinedAt: !956)
!996 = !DILocation(line: 161, column: 9, scope: !91, inlinedAt: !956)
!997 = !DILocation(line: 161, column: 28, scope: !91, inlinedAt: !956)
!998 = !DILocation(line: 162, column: 17, scope: !91, inlinedAt: !956)
!999 = !DILocation(line: 494, column: 34, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 494, column: 5)
!1001 = distinct !DILexicalBlock(scope: !207, file: !1, line: 494, column: 5)
!1002 = !DILocation(line: 494, column: 27, scope: !1000)
!1003 = !DILocation(line: 494, column: 5, scope: !1001)
!1004 = !DILocation(line: 495, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 494, column: 57)
!1006 = !DILocation(line: 496, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 496, column: 9)
!1008 = !DILocation(line: 497, column: 22, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 497, column: 17)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 496, column: 50)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 496, column: 9)
!1012 = !DILocation(line: 497, column: 17, scope: !1009)
!1013 = !DILocation(line: 498, column: 24, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 497, column: 38)
!1015 = !DILocation(line: 497, column: 17, scope: !1010)
!1016 = !DILocation(line: 485, column: 11, scope: !207)
!1017 = !DILocation(line: 499, column: 28, scope: !1014)
!1018 = !DILocation(line: 485, column: 18, scope: !207)
!1019 = !DILocation(line: 499, column: 26, scope: !1014)
!1020 = !DILocation(line: 500, column: 30, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 500, column: 21)
!1022 = !DILocation(line: 500, column: 21, scope: !1014)
!1023 = !DILocation(line: 501, column: 57, scope: !1021)
!1024 = !DILocation(line: 502, column: 57, scope: !1021)
!1025 = !DILocation(line: 501, column: 27, scope: !1021)
!1026 = !DILocation(line: 484, column: 9, scope: !207)
!1027 = !DILocation(line: 501, column: 21, scope: !1021)
!1028 = !DILocation(line: 508, column: 53, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 506, column: 18)
!1030 = !DILocation(line: 508, column: 69, scope: !1029)
!1031 = !DILocation(line: 508, column: 23, scope: !1029)
!1032 = !DILocation(line: 510, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 510, column: 17)
!1034 = !DILocation(line: 510, column: 17, scope: !1010)
!1035 = !DILocation(line: 458, column: 40, scope: !197, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 511, column: 17, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 510, column: 22)
!1038 = !DILocation(line: 460, column: 12, scope: !197, inlinedAt: !1036)
!1039 = !DILocation(line: 462, column: 25, scope: !203, inlinedAt: !1036)
!1040 = !DILocation(line: 462, column: 19, scope: !203, inlinedAt: !1036)
!1041 = !DILocation(line: 473, column: 24, scope: !197, inlinedAt: !1036)
!1042 = !DILocation(line: 462, column: 5, scope: !204, inlinedAt: !1036)
!1043 = !DILocation(line: 466, column: 21, scope: !929, inlinedAt: !1036)
!1044 = !DILocation(line: 511, column: 17, scope: !1037)
!1045 = !DILocation(line: 463, column: 39, scope: !202, inlinedAt: !1036)
!1046 = !DILocation(line: 463, column: 50, scope: !202, inlinedAt: !1036)
!1047 = !DILocation(line: 463, column: 27, scope: !202, inlinedAt: !1036)
!1048 = !DILocation(line: 464, column: 9, scope: !202, inlinedAt: !1036)
!1049 = !DILocation(line: 465, column: 51, scope: !206, inlinedAt: !1036)
!1050 = !DILocation(line: 465, column: 31, scope: !206, inlinedAt: !1036)
!1051 = !DILocation(line: 466, column: 17, scope: !929, inlinedAt: !1036)
!1052 = !DILocation(line: 466, column: 17, scope: !206, inlinedAt: !1036)
!1053 = !DILocation(line: 467, column: 36, scope: !929, inlinedAt: !1036)
!1054 = !DILocation(line: 467, column: 17, scope: !929, inlinedAt: !1036)
!1055 = !DILocation(line: 468, column: 23, scope: !206, inlinedAt: !1036)
!1056 = !DILocation(line: 468, column: 28, scope: !206, inlinedAt: !1036)
!1057 = !DILocation(line: 468, column: 13, scope: !206, inlinedAt: !1036)
!1058 = !DILocation(line: 462, column: 39, scope: !203, inlinedAt: !1036)
!1059 = !DILocation(line: 473, column: 15, scope: !197, inlinedAt: !1036)
!1060 = !DILocation(line: 473, column: 5, scope: !197, inlinedAt: !1036)
!1061 = !DILocation(line: 474, column: 15, scope: !197, inlinedAt: !1036)
!1062 = !DILocation(line: 474, column: 5, scope: !197, inlinedAt: !1036)
!1063 = !DILocation(line: 512, column: 17, scope: !1037)
!1064 = !DILocation(line: 496, column: 31, scope: !1011)
!1065 = !DILocation(line: 494, column: 53, scope: !1000)
!1066 = !DILocation(line: 483, column: 12, scope: !207)
!1067 = !DILocation(line: 517, column: 1, scope: !207)
