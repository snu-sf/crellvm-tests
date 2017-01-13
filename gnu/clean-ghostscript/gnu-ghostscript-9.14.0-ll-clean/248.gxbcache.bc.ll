; ModuleID = './gxbcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_cached_bits_head_s = type { i32, i32 }

; Function Attrs: nounwind uwtable
define void @gx_bits_cache_init(%struct.gx_bits_cache_s* %bc, %struct.gx_bits_cache_chunk_s* %bck) #0 {
entry:
  %bc.addr = alloca %struct.gx_bits_cache_s*, align 8
  %bck.addr = alloca %struct.gx_bits_cache_chunk_s*, align 8
  store %struct.gx_bits_cache_s* %bc, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  store %struct.gx_bits_cache_chunk_s* %bck, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %0 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %1 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %1, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %0, %struct.gx_bits_cache_chunk_s** %next, align 8, !tbaa !5
  %2 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %3 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %3, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* %2, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !8
  %4 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %4, i32 0, i32 1
  store i32 0, i32* %cnext, align 4, !tbaa !10
  %5 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %5, i32 0, i32 2
  store i32 0, i32* %bsize, align 4, !tbaa !11
  %6 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %csize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %6, i32 0, i32 3
  store i32 0, i32* %csize, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s* %bck, i8* %data, i32 %size) #0 {
entry:
  %bck.addr = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %cbh = alloca %struct.gx_cached_bits_head_s*, align 8
  store %struct.gx_bits_cache_chunk_s* %bck, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !13
  %0 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %0, i32 0, i32 0
  store %struct.gx_bits_cache_chunk_s* null, %struct.gx_bits_cache_chunk_s** %next, align 8, !tbaa !5
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %2, i32 0, i32 1
  store i8* %1, i8** %data1, align 8, !tbaa !14
  %3 = load i32, i32* %size.addr, align 4, !tbaa !13
  %4 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %4, i32 0, i32 2
  store i32 %3, i32* %size2, align 4, !tbaa !15
  %5 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %5, i32 0, i32 3
  store i32 0, i32* %allocated, align 4, !tbaa !16
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gx_cached_bits_head_s** %cbh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gx_cached_bits_head_s*
  store %struct.gx_cached_bits_head_s* %9, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %10 = load i32, i32* %size.addr, align 4, !tbaa !13
  %11 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %11, i32 0, i32 0
  store i32 %10, i32* %size3, align 4, !tbaa !17
  %12 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %12, i32 0, i32 1
  store i32 0, i32* %depth, align 4, !tbaa !19
  %13 = bitcast %struct.gx_cached_bits_head_s** %cbh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s* %bc, i64 %lsize, %struct.gx_cached_bits_head_s** %pcbh) #0 {
entry:
  %retval = alloca i32, align 4
  %bc.addr = alloca %struct.gx_bits_cache_s*, align 8
  %lsize.addr = alloca i64, align 8
  %pcbh.addr = alloca %struct.gx_cached_bits_head_s**, align 8
  %lsize1 = alloca i64, align 8
  %cnext = alloca i32, align 4
  %bck = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %left = alloca i32, align 4
  %cbh = alloca %struct.gx_cached_bits_head_s*, align 8
  %cbh_next = alloca %struct.gx_cached_bits_head_s*, align 8
  %fsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_bits_cache_s* %bc, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  store i64 %lsize, i64* %lsize.addr, align 8, !tbaa !20
  store %struct.gx_cached_bits_head_s** %pcbh, %struct.gx_cached_bits_head_s*** %pcbh.addr, align 8, !tbaa !1
  %0 = bitcast i64* %lsize1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %add = add i64 %1, 8
  store i64 %add, i64* %lsize1, align 8, !tbaa !20
  %2 = bitcast i32* %cnext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %cnext1 = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %3, i32 0, i32 1
  %4 = load i32, i32* %cnext1, align 4, !tbaa !10
  store i32 %4, i32* %cnext, align 4, !tbaa !13
  %5 = bitcast %struct.gx_bits_cache_chunk_s** %bck to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %6, i32 0, i32 0
  %7 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !8
  store %struct.gx_bits_cache_chunk_s* %7, %struct.gx_bits_cache_chunk_s** %bck, align 8, !tbaa !1
  %8 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %9, i32 0, i32 2
  %10 = load i32, i32* %size, align 4, !tbaa !15
  %11 = load i32, i32* %cnext, align 4, !tbaa !13
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %left, align 4, !tbaa !13
  %12 = bitcast %struct.gx_cached_bits_head_s** %cbh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gx_cached_bits_head_s** %cbh_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %fsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %fsize, align 4, !tbaa !13
  %15 = load i64, i64* %lsize1, align 8, !tbaa !20
  %16 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %16, i32 0, i32 2
  %17 = load i32, i32* %size2, align 4, !tbaa !15
  %18 = load i32, i32* %cnext, align 4, !tbaa !13
  %sub3 = sub i32 %17, %18
  %conv = zext i32 %sub3 to i64
  %cmp = icmp ugt i64 %15, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %20 = load i32, i32* %left, align 4, !tbaa !13
  %conv5 = zext i32 %20 to i64
  %cmp6 = icmp ne i64 %19, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct.gx_cached_bits_head_s**, %struct.gx_cached_bits_head_s*** %pcbh.addr, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* null, %struct.gx_cached_bits_head_s** %21, align 8, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %22 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %22, i32 0, i32 1
  %23 = load i8*, i8** %data, align 8, !tbaa !14
  %24 = load i32, i32* %cnext, align 4, !tbaa !13
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %25 = bitcast i8* %add.ptr to %struct.gx_cached_bits_head_s*
  store %struct.gx_cached_bits_head_s* %25, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* %25, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %26 = load i32, i32* %fsize, align 4, !tbaa !13
  %27 = load i64, i64* %lsize1, align 8, !tbaa !20
  %conv8 = trunc i64 %27 to i32
  %cmp9 = icmp ult i32 %26, %conv8
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load i32, i32* %fsize, align 4, !tbaa !13
  %29 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv11 = trunc i64 %29 to i32
  %cmp12 = icmp ne i32 %28, %conv11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %31, i32 0, i32 1
  %32 = load i32, i32* %depth, align 4, !tbaa !19
  %cmp14 = icmp eq i32 %32, 0
  br i1 %cmp14, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %while.body
  %33 = load i32, i32* %fsize, align 4, !tbaa !13
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.16
  %34 = load i32, i32* %fsize, align 4, !tbaa !13
  %35 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %size18 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %35, i32 0, i32 0
  store i32 %34, i32* %size18, align 4, !tbaa !17
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.16
  %36 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %37 = load %struct.gx_cached_bits_head_s**, %struct.gx_cached_bits_head_s*** %pcbh.addr, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* %36, %struct.gx_cached_bits_head_s** %37, align 8, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %while.body
  %38 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %size21 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %38, i32 0, i32 0
  %39 = load i32, i32* %size21, align 4, !tbaa !17
  %40 = load i32, i32* %fsize, align 4, !tbaa !13
  %add22 = add i32 %40, %39
  store i32 %add22, i32* %fsize, align 4, !tbaa !13
  br label %do.body

do.body:                                          ; preds = %if.end.20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %42 = bitcast %struct.gx_cached_bits_head_s* %41 to i8*
  %43 = load i32, i32* %fsize, align 4, !tbaa !13
  %idx.ext23 = zext i32 %43 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %42, i64 %idx.ext23
  %44 = bitcast i8* %add.ptr24 to %struct.gx_cached_bits_head_s*
  store %struct.gx_cached_bits_head_s* %44, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load i32, i32* %fsize, align 4, !tbaa !13
  %46 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv25 = trunc i64 %46 to i32
  %cmp26 = icmp ugt i32 %45, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %while.end
  %47 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %48 = bitcast %struct.gx_cached_bits_head_s* %47 to i8*
  %49 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv29 = trunc i64 %49 to i32
  %idx.ext30 = zext i32 %conv29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %48, i64 %idx.ext30
  %50 = bitcast i8* %add.ptr31 to %struct.gx_cached_bits_head_s*
  store %struct.gx_cached_bits_head_s* %50, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %51 = load i32, i32* %fsize, align 4, !tbaa !13
  %52 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv32 = trunc i64 %52 to i32
  %sub33 = sub i32 %51, %conv32
  %53 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %size34 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %53, i32 0, i32 0
  store i32 %sub33, i32* %size34, align 4, !tbaa !17
  %54 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh_next, align 8, !tbaa !1
  %depth35 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %54, i32 0, i32 1
  store i32 0, i32* %depth35, align 4, !tbaa !19
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.28
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %while.end
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.body.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  %55 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv46 = trunc i64 %55 to i32
  %56 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %size47 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %56, i32 0, i32 0
  store i32 %conv46, i32* %size47, align 4, !tbaa !17
  %57 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv48 = trunc i64 %57 to i32
  %58 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %58, i32 0, i32 2
  %59 = load i32, i32* %bsize, align 4, !tbaa !11
  %add49 = add i32 %59, %conv48
  store i32 %add49, i32* %bsize, align 4, !tbaa !11
  %60 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %csize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %60, i32 0, i32 3
  %61 = load i32, i32* %csize, align 4, !tbaa !12
  %inc = add i32 %61, 1
  store i32 %inc, i32* %csize, align 4, !tbaa !12
  %62 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv50 = trunc i64 %62 to i32
  %63 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %cnext51 = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %63, i32 0, i32 1
  %64 = load i32, i32* %cnext51, align 4, !tbaa !10
  %add52 = add i32 %64, %conv50
  store i32 %add52, i32* %cnext51, align 4, !tbaa !10
  %65 = load i64, i64* %lsize.addr, align 8, !tbaa !20
  %conv53 = trunc i64 %65 to i32
  %66 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %66, i32 0, i32 3
  %67 = load i32, i32* %allocated, align 4, !tbaa !16
  %add54 = add i32 %67, %conv53
  store i32 %add54, i32* %allocated, align 4, !tbaa !16
  %68 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh, align 8, !tbaa !1
  %69 = load %struct.gx_cached_bits_head_s**, %struct.gx_cached_bits_head_s*** %pcbh.addr, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* %68, %struct.gx_cached_bits_head_s** %69, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.45, %if.end.19, %if.then
  %70 = bitcast i32* %fsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.gx_cached_bits_head_s** %cbh_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.gx_cached_bits_head_s** %cbh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gx_bits_cache_chunk_s** %bck to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %cnext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i64* %lsize1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define void @gx_bits_cache_shorten(%struct.gx_bits_cache_s* %bc, %struct.gx_cached_bits_head_s* %cbh, i32 %diff, %struct.gx_bits_cache_chunk_s* %bck) #0 {
entry:
  %bc.addr = alloca %struct.gx_bits_cache_s*, align 8
  %cbh.addr = alloca %struct.gx_cached_bits_head_s*, align 8
  %diff.addr = alloca i32, align 4
  %bck.addr = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %next = alloca %struct.gx_cached_bits_head_s*, align 8
  store %struct.gx_bits_cache_s* %bc, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* %cbh, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !13
  store %struct.gx_bits_cache_chunk_s* %bck, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cached_bits_head_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_cached_bits_head_s* %1 to i8*
  %3 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4, !tbaa !17
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %5 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !14
  %7 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %7, i32 0, i32 1
  %8 = load i32, i32* %cnext, align 4, !tbaa !10
  %idx.ext1 = zext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %cmp = icmp eq i8* %add.ptr, %add.ptr2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %10 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %10, i32 0, i32 0
  %11 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %chunks, align 8, !tbaa !8
  %cmp3 = icmp eq %struct.gx_bits_cache_chunk_s* %9, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %diff.addr, align 4, !tbaa !13
  %13 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %cnext4 = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %13, i32 0, i32 1
  %14 = load i32, i32* %cnext4, align 4, !tbaa !10
  %sub = sub i32 %14, %12
  store i32 %sub, i32* %cnext4, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load i32, i32* %diff.addr, align 4, !tbaa !13
  %16 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %16, i32 0, i32 2
  %17 = load i32, i32* %bsize, align 4, !tbaa !11
  %sub5 = sub i32 %17, %15
  store i32 %sub5, i32* %bsize, align 4, !tbaa !11
  %18 = load i32, i32* %diff.addr, align 4, !tbaa !13
  %19 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %19, i32 0, i32 3
  %20 = load i32, i32* %allocated, align 4, !tbaa !16
  %sub6 = sub i32 %20, %18
  store i32 %sub6, i32* %allocated, align 4, !tbaa !16
  %21 = load i32, i32* %diff.addr, align 4, !tbaa !13
  %22 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %size7 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %22, i32 0, i32 0
  %23 = load i32, i32* %size7, align 4, !tbaa !17
  %sub8 = sub i32 %23, %21
  store i32 %sub8, i32* %size7, align 4, !tbaa !17
  %24 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_cached_bits_head_s* %24 to i8*
  %26 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %26, i32 0, i32 0
  %27 = load i32, i32* %size9, align 4, !tbaa !17
  %idx.ext10 = zext i32 %27 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %25, i64 %idx.ext10
  %28 = bitcast i8* %add.ptr11 to %struct.gx_cached_bits_head_s*
  store %struct.gx_cached_bits_head_s* %28, %struct.gx_cached_bits_head_s** %next, align 8, !tbaa !1
  %29 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %next, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %29, i32 0, i32 1
  store i32 0, i32* %depth, align 4, !tbaa !19
  %30 = load i32, i32* %diff.addr, align 4, !tbaa !13
  %31 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %next, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %31, i32 0, i32 0
  store i32 %30, i32* %size12, align 4, !tbaa !17
  %32 = bitcast %struct.gx_cached_bits_head_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_bits_cache_free(%struct.gx_bits_cache_s* %bc, %struct.gx_cached_bits_head_s* %cbh, %struct.gx_bits_cache_chunk_s* %bck) #0 {
entry:
  %bc.addr = alloca %struct.gx_bits_cache_s*, align 8
  %cbh.addr = alloca %struct.gx_cached_bits_head_s*, align 8
  %bck.addr = alloca %struct.gx_bits_cache_chunk_s*, align 8
  %size = alloca i32, align 4
  store %struct.gx_bits_cache_s* %bc, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  store %struct.gx_cached_bits_head_s* %cbh, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  store %struct.gx_bits_cache_chunk_s* %bck, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %1, i32 0, i32 0
  %2 = load i32, i32* %size1, align 4, !tbaa !17
  store i32 %2, i32* %size, align 4, !tbaa !13
  %3 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %csize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %3, i32 0, i32 3
  %4 = load i32, i32* %csize, align 4, !tbaa !12
  %dec = add i32 %4, -1
  store i32 %dec, i32* %csize, align 4, !tbaa !12
  %5 = load i32, i32* %size, align 4, !tbaa !13
  %6 = load %struct.gx_bits_cache_s*, %struct.gx_bits_cache_s** %bc.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %6, i32 0, i32 2
  %7 = load i32, i32* %bsize, align 4, !tbaa !11
  %sub = sub i32 %7, %5
  store i32 %sub, i32* %bsize, align 4, !tbaa !11
  %8 = load i32, i32* %size, align 4, !tbaa !13
  %9 = load %struct.gx_bits_cache_chunk_s*, %struct.gx_bits_cache_chunk_s** %bck.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %9, i32 0, i32 3
  %10 = load i32, i32* %allocated, align 4, !tbaa !16
  %sub2 = sub i32 %10, %8
  store i32 %sub2, i32* %allocated, align 4, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %11 = load i32, i32* %size, align 4, !tbaa !13
  %12 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %12, i32 0, i32 0
  store i32 %11, i32* %size6, align 4, !tbaa !17
  %13 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %cbh.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %13, i32 0, i32 1
  store i32 0, i32* %depth, align 4, !tbaa !19
  %14 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gx_bits_cache_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!10 = !{!9, !7, i64 8}
!11 = !{!9, !7, i64 12}
!12 = !{!9, !7, i64 16}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !2, i64 8}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 20}
!17 = !{!18, !7, i64 0}
!18 = !{!"gx_cached_bits_head_s", !7, i64 0, !7, i64 4}
!19 = !{!18, !7, i64 4}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !3, i64 0}
