; ModuleID = './src/region-cache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region_cache = type { %struct.boundary*, i64, i64, i64, i64, i64, i64, i64 }
%struct.boundary = type { i64, i32 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define %struct.region_cache* @new_region_cache() #0 {
entry:
  %c = alloca %struct.region_cache*, align 8
  %call = call noalias i8* @xmalloc(i64 64)
  %0 = bitcast i8* %call to %struct.region_cache*
  store %struct.region_cache* %0, %struct.region_cache** %c, align 8
  %1 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %1, i32 0, i32 1
  store i64 0, i64* %gap_start, align 8
  %2 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %2, i32 0, i32 2
  store i64 40, i64* %gap_len, align 8
  %3 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %3, i32 0, i32 3
  store i64 0, i64* %cache_len, align 8
  %4 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %gap_len1 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %4, i32 0, i32 2
  %5 = load i64, i64* %gap_len1, align 8
  %6 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %cache_len2 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %6, i32 0, i32 3
  %7 = load i64, i64* %cache_len2, align 8
  %add = add nsw i64 %5, %7
  %mul = mul i64 %add, 16
  %call3 = call noalias i8* @xmalloc(i64 %mul)
  %8 = bitcast i8* %call3 to %struct.boundary*
  %9 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %9, i32 0, i32 0
  store %struct.boundary* %8, %struct.boundary** %boundaries, align 8
  %10 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %beg_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %10, i32 0, i32 4
  store i64 0, i64* %beg_unchanged, align 8
  %11 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %end_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %11, i32 0, i32 5
  store i64 0, i64* %end_unchanged, align 8
  %12 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %12, i32 0, i32 6
  store i64 1, i64* %buffer_beg, align 8
  %13 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %13, i32 0, i32 7
  store i64 1, i64* %buffer_end, align 8
  %14 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %cache_len4 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 3
  %15 = load i64, i64* %cache_len4, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %cache_len4, align 8
  %16 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %gap_len5 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %16, i32 0, i32 2
  %17 = load i64, i64* %gap_len5, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %gap_len5, align 8
  %18 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %gap_start6 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %18, i32 0, i32 1
  %19 = load i64, i64* %gap_start6, align 8
  %inc7 = add nsw i64 %19, 1
  store i64 %inc7, i64* %gap_start6, align 8
  %20 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %boundaries8 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %20, i32 0, i32 0
  %21 = load %struct.boundary*, %struct.boundary** %boundaries8, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %21, i64 0
  %pos = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 0
  store i64 0, i64* %pos, align 8
  %22 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  %boundaries9 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %22, i32 0, i32 0
  %23 = load %struct.boundary*, %struct.boundary** %boundaries9, align 8
  %arrayidx10 = getelementptr inbounds %struct.boundary, %struct.boundary* %23, i64 0
  %value = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx10, i32 0, i32 1
  store i32 0, i32* %value, align 4
  %24 = load %struct.region_cache*, %struct.region_cache** %c, align 8
  ret %struct.region_cache* %24
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @free_region_cache(%struct.region_cache* %c) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %0, i32 0, i32 0
  %1 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %2 = bitcast %struct.boundary* %1 to i8*
  call void @xfree(i8* %2)
  %3 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %4 = bitcast %struct.region_cache* %3 to i8*
  call void @xfree(i8* %4)
  ret void
}

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @invalidate_region_cache(%struct.buffer* %buf, %struct.region_cache* %c, i64 %head, i64 %tail) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca %struct.region_cache*, align 8
  %head.addr = alloca i64, align 8
  %tail.addr = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %head, i64* %head.addr, align 8
  store i64 %tail, i64* %tail.addr, align 8
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %0, i32 0, i32 4
  %1 = load i64, i64* %beg_unchanged, align 8
  %add = add nsw i64 1, %1
  %2 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 73
  %3 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %3, i32 0, i32 2
  %4 = load i64, i64* %z, align 8
  %5 = load i64, i64* %tail.addr, align 8
  %sub = sub nsw i64 %4, %5
  %sub1 = sub nsw i64 %add, %sub
  %cmp = icmp sgt i64 %sub1, 500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %head.addr, align 8
  %add2 = add nsw i64 1, %6
  %7 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %z4 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 2
  %9 = load i64, i64* %z4, align 8
  %10 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %10, i32 0, i32 5
  %11 = load i64, i64* %end_unchanged, align 8
  %sub5 = sub nsw i64 %9, %11
  %sub6 = sub nsw i64 %add2, %sub5
  %cmp7 = icmp sgt i64 %sub6, 500
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %13 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  call void @revalidate_region_cache(%struct.buffer* %12, %struct.region_cache* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i64, i64* %head.addr, align 8
  %15 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged8 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %15, i32 0, i32 4
  %16 = load i64, i64* %beg_unchanged8, align 8
  %cmp9 = icmp slt i64 %14, %16
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %17 = load i64, i64* %head.addr, align 8
  %18 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged11 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %18, i32 0, i32 4
  store i64 %17, i64* %beg_unchanged11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %19 = load i64, i64* %tail.addr, align 8
  %20 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged13 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %20, i32 0, i32 5
  %21 = load i64, i64* %end_unchanged13, align 8
  %cmp14 = icmp slt i64 %19, %21
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %22 = load i64, i64* %tail.addr, align 8
  %23 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged16 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %23, i32 0, i32 5
  store i64 %22, i64* %end_unchanged16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @revalidate_region_cache(%struct.buffer* %buf, %struct.region_cache* %c) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca %struct.region_cache*, align 8
  %modified_ix = alloca i64, align 8
  %value_after = alloca i32, align 4
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %0, i32 0, i32 6
  %1 = load i64, i64* %buffer_beg, align 8
  %2 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %2, i32 0, i32 4
  %3 = load i64, i64* %beg_unchanged, align 8
  %add = add nsw i64 %1, %3
  %4 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %4, i32 0, i32 7
  %5 = load i64, i64* %buffer_end, align 8
  %6 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged = getelementptr inbounds %struct.region_cache, %struct.region_cache* %6, i32 0, i32 5
  %7 = load i64, i64* %end_unchanged, align 8
  %sub = sub nsw i64 %5, %7
  %cmp = icmp sgt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg1 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %8, i32 0, i32 6
  %9 = load i64, i64* %buffer_beg1, align 8
  %10 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged2 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %10, i32 0, i32 4
  %11 = load i64, i64* %beg_unchanged2, align 8
  %add3 = add nsw i64 %9, %11
  %12 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end4 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %12, i32 0, i32 7
  %13 = load i64, i64* %buffer_end4, align 8
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged5 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 5
  %15 = load i64, i64* %end_unchanged5, align 8
  %sub6 = sub nsw i64 %13, %15
  %cmp7 = icmp eq i64 %add3, %sub6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %17 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %18 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg9 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %18, i32 0, i32 6
  %19 = load i64, i64* %buffer_beg9, align 8
  %20 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged10 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %20, i32 0, i32 4
  %21 = load i64, i64* %beg_unchanged10, align 8
  %add11 = add nsw i64 %19, %21
  %call = call i64 @find_cache_boundary(%struct.region_cache* %17, i64 %add11)
  %add12 = add nsw i64 %call, 1
  call void @move_cache_gap(%struct.region_cache* %16, i64 %add12, i64 0)
  %22 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg13 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %22, i32 0, i32 6
  store i64 1, i64* %buffer_beg13, align 8
  %23 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 2
  %25 = load i64, i64* %z, align 8
  %26 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end14 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %26, i32 0, i32 7
  store i64 %25, i64* %buffer_end14, align 8
  %27 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %28 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg15 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %28, i32 0, i32 6
  %29 = load i64, i64* %buffer_beg15, align 8
  %30 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged16 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %30, i32 0, i32 4
  %31 = load i64, i64* %beg_unchanged16, align 8
  %add17 = add nsw i64 %29, %31
  %32 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end18 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %32, i32 0, i32 7
  %33 = load i64, i64* %buffer_end18, align 8
  %34 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged19 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %34, i32 0, i32 5
  %35 = load i64, i64* %end_unchanged19, align 8
  %sub20 = sub nsw i64 %33, %35
  call void @set_cache_region(%struct.region_cache* %27, i64 %add17, i64 %sub20, i32 0)
  br label %if.end.127

if.else:                                          ; preds = %if.end
  %36 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %37 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg21 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %37, i32 0, i32 6
  %38 = load i64, i64* %buffer_beg21, align 8
  %39 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged22 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %39, i32 0, i32 4
  %40 = load i64, i64* %beg_unchanged22, align 8
  %add23 = add nsw i64 %38, %40
  %41 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end24 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %41, i32 0, i32 7
  %42 = load i64, i64* %buffer_end24, align 8
  %43 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged25 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %43, i32 0, i32 5
  %44 = load i64, i64* %end_unchanged25, align 8
  %sub26 = sub nsw i64 %42, %44
  call void @set_cache_region(%struct.region_cache* %36, i64 %add23, i64 %sub26, i32 0)
  %45 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %46 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg27 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %46, i32 0, i32 6
  %47 = load i64, i64* %buffer_beg27, align 8
  %48 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged28 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %48, i32 0, i32 4
  %49 = load i64, i64* %beg_unchanged28, align 8
  %add29 = add nsw i64 %47, %49
  %call30 = call i64 @find_cache_boundary(%struct.region_cache* %45, i64 %add29)
  %add31 = add nsw i64 %call30, 1
  store i64 %add31, i64* %modified_ix, align 8
  %50 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %51 = load i64, i64* %modified_ix, align 8
  call void @move_cache_gap(%struct.region_cache* %50, i64 %51, i64 0)
  %52 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg32 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %52, i32 0, i32 6
  store i64 1, i64* %buffer_beg32, align 8
  %53 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %z34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 2
  %55 = load i64, i64* %z34, align 8
  %56 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end35 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %56, i32 0, i32 7
  store i64 %55, i64* %buffer_end35, align 8
  %57 = load i64, i64* %modified_ix, align 8
  %58 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %58, i32 0, i32 3
  %59 = load i64, i64* %cache_len, align 8
  %cmp36 = icmp slt i64 %57, %59
  br i1 %cmp36, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.else
  %60 = load i64, i64* %modified_ix, align 8
  %sub37 = sub nsw i64 %60, 1
  %61 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %61, i32 0, i32 1
  %62 = load i64, i64* %gap_start, align 8
  %cmp38 = icmp slt i64 %sub37, %62
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %63 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg39 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %63, i32 0, i32 6
  %64 = load i64, i64* %buffer_beg39, align 8
  %65 = load i64, i64* %modified_ix, align 8
  %sub40 = sub nsw i64 %65, 1
  %66 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %66, i32 0, i32 0
  %67 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %67, i64 %sub40
  %pos = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 0
  %68 = load i64, i64* %pos, align 8
  %add41 = add nsw i64 %64, %68
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %69 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end42 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %69, i32 0, i32 7
  %70 = load i64, i64* %buffer_end42, align 8
  %71 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %71, i32 0, i32 2
  %72 = load i64, i64* %gap_len, align 8
  %73 = load i64, i64* %modified_ix, align 8
  %sub43 = sub nsw i64 %73, 1
  %add44 = add nsw i64 %72, %sub43
  %74 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries45 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %74, i32 0, i32 0
  %75 = load %struct.boundary*, %struct.boundary** %boundaries45, align 8
  %arrayidx46 = getelementptr inbounds %struct.boundary, %struct.boundary* %75, i64 %add44
  %pos47 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx46, i32 0, i32 0
  %76 = load i64, i64* %pos47, align 8
  %add48 = add nsw i64 %70, %76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add41, %cond.true ], [ %add48, %cond.false ]
  %77 = load i64, i64* %modified_ix, align 8
  %78 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start49 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %78, i32 0, i32 1
  %79 = load i64, i64* %gap_start49, align 8
  %cmp50 = icmp slt i64 %77, %79
  br i1 %cmp50, label %cond.true.51, label %cond.false.57

cond.true.51:                                     ; preds = %cond.end
  %80 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg52 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %80, i32 0, i32 6
  %81 = load i64, i64* %buffer_beg52, align 8
  %82 = load i64, i64* %modified_ix, align 8
  %83 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries53 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %83, i32 0, i32 0
  %84 = load %struct.boundary*, %struct.boundary** %boundaries53, align 8
  %arrayidx54 = getelementptr inbounds %struct.boundary, %struct.boundary* %84, i64 %82
  %pos55 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx54, i32 0, i32 0
  %85 = load i64, i64* %pos55, align 8
  %add56 = add nsw i64 %81, %85
  br label %cond.end.65

cond.false.57:                                    ; preds = %cond.end
  %86 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end58 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %86, i32 0, i32 7
  %87 = load i64, i64* %buffer_end58, align 8
  %88 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len59 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %88, i32 0, i32 2
  %89 = load i64, i64* %gap_len59, align 8
  %90 = load i64, i64* %modified_ix, align 8
  %add60 = add nsw i64 %89, %90
  %91 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries61 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %91, i32 0, i32 0
  %92 = load %struct.boundary*, %struct.boundary** %boundaries61, align 8
  %arrayidx62 = getelementptr inbounds %struct.boundary, %struct.boundary* %92, i64 %add60
  %pos63 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx62, i32 0, i32 0
  %93 = load i64, i64* %pos63, align 8
  %add64 = add nsw i64 %87, %93
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.57, %cond.true.51
  %cond66 = phi i64 [ %add56, %cond.true.51 ], [ %add64, %cond.false.57 ]
  %cmp67 = icmp eq i64 %cond, %cond66
  br i1 %cmp67, label %if.then.68, label %if.end.126

if.then.68:                                       ; preds = %cond.end.65
  %94 = load i64, i64* %modified_ix, align 8
  %95 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start69 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %95, i32 0, i32 1
  %96 = load i64, i64* %gap_start69, align 8
  %cmp70 = icmp slt i64 %94, %96
  br i1 %cmp70, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %if.then.68
  %97 = load i64, i64* %modified_ix, align 8
  %98 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries72 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %98, i32 0, i32 0
  %99 = load %struct.boundary*, %struct.boundary** %boundaries72, align 8
  %arrayidx73 = getelementptr inbounds %struct.boundary, %struct.boundary* %99, i64 %97
  %value = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx73, i32 0, i32 1
  %100 = load i32, i32* %value, align 4
  br label %cond.end.80

cond.false.74:                                    ; preds = %if.then.68
  %101 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len75 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %101, i32 0, i32 2
  %102 = load i64, i64* %gap_len75, align 8
  %103 = load i64, i64* %modified_ix, align 8
  %add76 = add nsw i64 %102, %103
  %104 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries77 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %104, i32 0, i32 0
  %105 = load %struct.boundary*, %struct.boundary** %boundaries77, align 8
  %arrayidx78 = getelementptr inbounds %struct.boundary, %struct.boundary* %105, i64 %add76
  %value79 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx78, i32 0, i32 1
  %106 = load i32, i32* %value79, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.74, %cond.true.71
  %cond81 = phi i32 [ %100, %cond.true.71 ], [ %106, %cond.false.74 ]
  store i32 %cond81, i32* %value_after, align 4
  %107 = load i64, i64* %modified_ix, align 8
  %sub82 = sub nsw i64 %107, 1
  %cmp83 = icmp sgt i64 %sub82, 0
  br i1 %cmp83, label %land.lhs.true.84, label %if.else.106

land.lhs.true.84:                                 ; preds = %cond.end.80
  %108 = load i32, i32* %value_after, align 4
  %109 = load i64, i64* %modified_ix, align 8
  %sub85 = sub nsw i64 %109, 2
  %110 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start86 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %110, i32 0, i32 1
  %111 = load i64, i64* %gap_start86, align 8
  %cmp87 = icmp slt i64 %sub85, %111
  br i1 %cmp87, label %cond.true.88, label %cond.false.93

cond.true.88:                                     ; preds = %land.lhs.true.84
  %112 = load i64, i64* %modified_ix, align 8
  %sub89 = sub nsw i64 %112, 2
  %113 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries90 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %113, i32 0, i32 0
  %114 = load %struct.boundary*, %struct.boundary** %boundaries90, align 8
  %arrayidx91 = getelementptr inbounds %struct.boundary, %struct.boundary* %114, i64 %sub89
  %value92 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx91, i32 0, i32 1
  %115 = load i32, i32* %value92, align 4
  br label %cond.end.100

cond.false.93:                                    ; preds = %land.lhs.true.84
  %116 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len94 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %116, i32 0, i32 2
  %117 = load i64, i64* %gap_len94, align 8
  %118 = load i64, i64* %modified_ix, align 8
  %sub95 = sub nsw i64 %118, 2
  %add96 = add nsw i64 %117, %sub95
  %119 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries97 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %119, i32 0, i32 0
  %120 = load %struct.boundary*, %struct.boundary** %boundaries97, align 8
  %arrayidx98 = getelementptr inbounds %struct.boundary, %struct.boundary* %120, i64 %add96
  %value99 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx98, i32 0, i32 1
  %121 = load i32, i32* %value99, align 4
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.93, %cond.true.88
  %cond101 = phi i32 [ %115, %cond.true.88 ], [ %121, %cond.false.93 ]
  %cmp102 = icmp eq i32 %108, %cond101
  br i1 %cmp102, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %cond.end.100
  %122 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %123 = load i64, i64* %modified_ix, align 8
  %sub104 = sub nsw i64 %123, 1
  %124 = load i64, i64* %modified_ix, align 8
  %add105 = add nsw i64 %124, 1
  call void @delete_cache_boundaries(%struct.region_cache* %122, i64 %sub104, i64 %add105)
  br label %if.end.125

if.else.106:                                      ; preds = %cond.end.100, %cond.end.80
  %125 = load i64, i64* %modified_ix, align 8
  %sub107 = sub nsw i64 %125, 1
  %126 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start108 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %126, i32 0, i32 1
  %127 = load i64, i64* %gap_start108, align 8
  %cmp109 = icmp slt i64 %sub107, %127
  br i1 %cmp109, label %cond.true.110, label %cond.false.115

cond.true.110:                                    ; preds = %if.else.106
  %128 = load i32, i32* %value_after, align 4
  %129 = load i64, i64* %modified_ix, align 8
  %sub111 = sub nsw i64 %129, 1
  %130 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries112 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %130, i32 0, i32 0
  %131 = load %struct.boundary*, %struct.boundary** %boundaries112, align 8
  %arrayidx113 = getelementptr inbounds %struct.boundary, %struct.boundary* %131, i64 %sub111
  %value114 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx113, i32 0, i32 1
  store i32 %128, i32* %value114, align 4
  br label %cond.end.122

cond.false.115:                                   ; preds = %if.else.106
  %132 = load i32, i32* %value_after, align 4
  %133 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len116 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %133, i32 0, i32 2
  %134 = load i64, i64* %gap_len116, align 8
  %135 = load i64, i64* %modified_ix, align 8
  %sub117 = sub nsw i64 %135, 1
  %add118 = add nsw i64 %134, %sub117
  %136 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries119 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %136, i32 0, i32 0
  %137 = load %struct.boundary*, %struct.boundary** %boundaries119, align 8
  %arrayidx120 = getelementptr inbounds %struct.boundary, %struct.boundary* %137, i64 %add118
  %value121 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx120, i32 0, i32 1
  store i32 %132, i32* %value121, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.115, %cond.true.110
  %cond123 = phi i32 [ %128, %cond.true.110 ], [ %132, %cond.false.115 ]
  %138 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %139 = load i64, i64* %modified_ix, align 8
  %140 = load i64, i64* %modified_ix, align 8
  %add124 = add nsw i64 %140, 1
  call void @delete_cache_boundaries(%struct.region_cache* %138, i64 %139, i64 %add124)
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.122, %if.then.103
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %cond.end.65, %if.else
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.8
  %141 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end128 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %141, i32 0, i32 7
  %142 = load i64, i64* %buffer_end128, align 8
  %143 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg129 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %143, i32 0, i32 6
  %144 = load i64, i64* %buffer_beg129, align 8
  %sub130 = sub nsw i64 %142, %144
  %145 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %end_unchanged131 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %145, i32 0, i32 5
  store i64 %sub130, i64* %end_unchanged131, align 8
  %146 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %beg_unchanged132 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %146, i32 0, i32 4
  store i64 %sub130, i64* %beg_unchanged132, align 8
  br label %return

return:                                           ; preds = %if.end.127, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @know_region_cache(%struct.buffer* %buf, %struct.region_cache* %c, i64 %start, i64 %end) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca %struct.region_cache*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %1 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  call void @revalidate_region_cache(%struct.buffer* %0, %struct.region_cache* %1)
  %2 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %3 = load i64, i64* %start.addr, align 8
  %4 = load i64, i64* %end.addr, align 8
  call void @set_cache_region(%struct.region_cache* %2, i64 %3, i64 %4, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_cache_region(%struct.region_cache* %c, i64 %start, i64 %end, i32 %value) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %start_ix = alloca i64, align 8
  %end_ix = alloca i64, align 8
  %value_at_end = alloca i32, align 4
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.134

if.end:                                           ; preds = %entry
  %2 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %3 = load i64, i64* %start.addr, align 8
  %call = call i64 @find_cache_boundary(%struct.region_cache* %2, i64 %3)
  store i64 %call, i64* %start_ix, align 8
  %4 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %sub = sub nsw i64 %5, 1
  %call1 = call i64 @find_cache_boundary(%struct.region_cache* %4, i64 %sub)
  %add = add nsw i64 %call1, 1
  store i64 %add, i64* %end_ix, align 8
  %6 = load i64, i64* %end_ix, align 8
  %sub2 = sub nsw i64 %6, 1
  %7 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %7, i32 0, i32 1
  %8 = load i64, i64* %gap_start, align 8
  %cmp3 = icmp slt i64 %sub2, %8
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %end_ix, align 8
  %sub4 = sub nsw i64 %9, 1
  %10 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %10, i32 0, i32 0
  %11 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i64 %sub4
  %value5 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 1
  %12 = load i32, i32* %value5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %13, i32 0, i32 2
  %14 = load i64, i64* %gap_len, align 8
  %15 = load i64, i64* %end_ix, align 8
  %sub6 = sub nsw i64 %15, 1
  %add7 = add nsw i64 %14, %sub6
  %16 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries8 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %16, i32 0, i32 0
  %17 = load %struct.boundary*, %struct.boundary** %boundaries8, align 8
  %arrayidx9 = getelementptr inbounds %struct.boundary, %struct.boundary* %17, i64 %add7
  %value10 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx9, i32 0, i32 1
  %18 = load i32, i32* %value10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, i32* %value_at_end, align 4
  %19 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %20 = load i64, i64* %start_ix, align 8
  %add11 = add nsw i64 %20, 1
  %21 = load i64, i64* %end_ix, align 8
  call void @delete_cache_boundaries(%struct.region_cache* %19, i64 %add11, i64 %21)
  %22 = load i64, i64* %start_ix, align 8
  %23 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start12 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %23, i32 0, i32 1
  %24 = load i64, i64* %gap_start12, align 8
  %cmp13 = icmp slt i64 %22, %24
  br i1 %cmp13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %cond.end
  %25 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %25, i32 0, i32 6
  %26 = load i64, i64* %buffer_beg, align 8
  %27 = load i64, i64* %start_ix, align 8
  %28 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries15 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %28, i32 0, i32 0
  %29 = load %struct.boundary*, %struct.boundary** %boundaries15, align 8
  %arrayidx16 = getelementptr inbounds %struct.boundary, %struct.boundary* %29, i64 %27
  %pos = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx16, i32 0, i32 0
  %30 = load i64, i64* %pos, align 8
  %add17 = add nsw i64 %26, %30
  br label %cond.end.25

cond.false.18:                                    ; preds = %cond.end
  %31 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %31, i32 0, i32 7
  %32 = load i64, i64* %buffer_end, align 8
  %33 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len19 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %33, i32 0, i32 2
  %34 = load i64, i64* %gap_len19, align 8
  %35 = load i64, i64* %start_ix, align 8
  %add20 = add nsw i64 %34, %35
  %36 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries21 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %36, i32 0, i32 0
  %37 = load %struct.boundary*, %struct.boundary** %boundaries21, align 8
  %arrayidx22 = getelementptr inbounds %struct.boundary, %struct.boundary* %37, i64 %add20
  %pos23 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx22, i32 0, i32 0
  %38 = load i64, i64* %pos23, align 8
  %add24 = add nsw i64 %32, %38
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.18, %cond.true.14
  %cond26 = phi i64 [ %add17, %cond.true.14 ], [ %add24, %cond.false.18 ]
  %39 = load i64, i64* %start.addr, align 8
  %cmp27 = icmp eq i64 %cond26, %39
  br i1 %cmp27, label %if.then.28, label %if.else.65

if.then.28:                                       ; preds = %cond.end.25
  %40 = load i64, i64* %start_ix, align 8
  %cmp29 = icmp sgt i64 %40, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.28
  %41 = load i64, i64* %start_ix, align 8
  %sub30 = sub nsw i64 %41, 1
  %42 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start31 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %42, i32 0, i32 1
  %43 = load i64, i64* %gap_start31, align 8
  %cmp32 = icmp slt i64 %sub30, %43
  br i1 %cmp32, label %cond.true.33, label %cond.false.38

cond.true.33:                                     ; preds = %land.lhs.true
  %44 = load i64, i64* %start_ix, align 8
  %sub34 = sub nsw i64 %44, 1
  %45 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries35 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %45, i32 0, i32 0
  %46 = load %struct.boundary*, %struct.boundary** %boundaries35, align 8
  %arrayidx36 = getelementptr inbounds %struct.boundary, %struct.boundary* %46, i64 %sub34
  %value37 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx36, i32 0, i32 1
  %47 = load i32, i32* %value37, align 4
  br label %cond.end.45

cond.false.38:                                    ; preds = %land.lhs.true
  %48 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len39 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %48, i32 0, i32 2
  %49 = load i64, i64* %gap_len39, align 8
  %50 = load i64, i64* %start_ix, align 8
  %sub40 = sub nsw i64 %50, 1
  %add41 = add nsw i64 %49, %sub40
  %51 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries42 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %51, i32 0, i32 0
  %52 = load %struct.boundary*, %struct.boundary** %boundaries42, align 8
  %arrayidx43 = getelementptr inbounds %struct.boundary, %struct.boundary* %52, i64 %add41
  %value44 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx43, i32 0, i32 1
  %53 = load i32, i32* %value44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.38, %cond.true.33
  %cond46 = phi i32 [ %47, %cond.true.33 ], [ %53, %cond.false.38 ]
  %54 = load i32, i32* %value.addr, align 4
  %cmp47 = icmp eq i32 %cond46, %54
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %cond.end.45
  %55 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %56 = load i64, i64* %start_ix, align 8
  %57 = load i64, i64* %start_ix, align 8
  %add49 = add nsw i64 %57, 1
  call void @delete_cache_boundaries(%struct.region_cache* %55, i64 %56, i64 %add49)
  %58 = load i64, i64* %start_ix, align 8
  %dec = add nsw i64 %58, -1
  store i64 %dec, i64* %start_ix, align 8
  br label %if.end.64

if.else:                                          ; preds = %cond.end.45, %if.then.28
  %59 = load i64, i64* %start_ix, align 8
  %60 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start50 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %60, i32 0, i32 1
  %61 = load i64, i64* %gap_start50, align 8
  %cmp51 = icmp slt i64 %59, %61
  br i1 %cmp51, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %if.else
  %62 = load i32, i32* %value.addr, align 4
  %63 = load i64, i64* %start_ix, align 8
  %64 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries53 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %64, i32 0, i32 0
  %65 = load %struct.boundary*, %struct.boundary** %boundaries53, align 8
  %arrayidx54 = getelementptr inbounds %struct.boundary, %struct.boundary* %65, i64 %63
  %value55 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx54, i32 0, i32 1
  store i32 %62, i32* %value55, align 4
  br label %cond.end.62

cond.false.56:                                    ; preds = %if.else
  %66 = load i32, i32* %value.addr, align 4
  %67 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len57 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %67, i32 0, i32 2
  %68 = load i64, i64* %gap_len57, align 8
  %69 = load i64, i64* %start_ix, align 8
  %add58 = add nsw i64 %68, %69
  %70 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries59 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %70, i32 0, i32 0
  %71 = load %struct.boundary*, %struct.boundary** %boundaries59, align 8
  %arrayidx60 = getelementptr inbounds %struct.boundary, %struct.boundary* %71, i64 %add58
  %value61 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx60, i32 0, i32 1
  store i32 %66, i32* %value61, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.56, %cond.true.52
  %cond63 = phi i32 [ %62, %cond.true.52 ], [ %66, %cond.false.56 ]
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.62, %if.then.48
  br label %if.end.84

if.else.65:                                       ; preds = %cond.end.25
  %72 = load i64, i64* %start_ix, align 8
  %73 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start66 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %73, i32 0, i32 1
  %74 = load i64, i64* %gap_start66, align 8
  %cmp67 = icmp slt i64 %72, %74
  br i1 %cmp67, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %if.else.65
  %75 = load i64, i64* %start_ix, align 8
  %76 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries69 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %76, i32 0, i32 0
  %77 = load %struct.boundary*, %struct.boundary** %boundaries69, align 8
  %arrayidx70 = getelementptr inbounds %struct.boundary, %struct.boundary* %77, i64 %75
  %value71 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx70, i32 0, i32 1
  %78 = load i32, i32* %value71, align 4
  br label %cond.end.78

cond.false.72:                                    ; preds = %if.else.65
  %79 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len73 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %79, i32 0, i32 2
  %80 = load i64, i64* %gap_len73, align 8
  %81 = load i64, i64* %start_ix, align 8
  %add74 = add nsw i64 %80, %81
  %82 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries75 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %82, i32 0, i32 0
  %83 = load %struct.boundary*, %struct.boundary** %boundaries75, align 8
  %arrayidx76 = getelementptr inbounds %struct.boundary, %struct.boundary* %83, i64 %add74
  %value77 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx76, i32 0, i32 1
  %84 = load i32, i32* %value77, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.72, %cond.true.68
  %cond79 = phi i32 [ %78, %cond.true.68 ], [ %84, %cond.false.72 ]
  %85 = load i32, i32* %value.addr, align 4
  %cmp80 = icmp ne i32 %cond79, %85
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %cond.end.78
  %86 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %87 = load i64, i64* %start_ix, align 8
  %add82 = add nsw i64 %87, 1
  %88 = load i64, i64* %start.addr, align 8
  %89 = load i32, i32* %value.addr, align 4
  call void @insert_cache_boundary(%struct.region_cache* %86, i64 %add82, i64 %88, i32 %89)
  %90 = load i64, i64* %start_ix, align 8
  %inc = add nsw i64 %90, 1
  store i64 %inc, i64* %start_ix, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %cond.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.64
  %91 = load i64, i64* %start_ix, align 8
  %add85 = add nsw i64 %91, 1
  store i64 %add85, i64* %end_ix, align 8
  %92 = load i64, i64* %end.addr, align 8
  %93 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end86 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %93, i32 0, i32 7
  %94 = load i64, i64* %buffer_end86, align 8
  %cmp87 = icmp eq i64 %92, %94
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.end.84
  br label %if.end.134

if.else.89:                                       ; preds = %if.end.84
  %95 = load i64, i64* %end_ix, align 8
  %96 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %96, i32 0, i32 3
  %97 = load i64, i64* %cache_len, align 8
  %cmp90 = icmp sge i64 %95, %97
  br i1 %cmp90, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.89
  %98 = load i64, i64* %end.addr, align 8
  %99 = load i64, i64* %end_ix, align 8
  %100 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start91 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %100, i32 0, i32 1
  %101 = load i64, i64* %gap_start91, align 8
  %cmp92 = icmp slt i64 %99, %101
  br i1 %cmp92, label %cond.true.93, label %cond.false.99

cond.true.93:                                     ; preds = %lor.lhs.false
  %102 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg94 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %102, i32 0, i32 6
  %103 = load i64, i64* %buffer_beg94, align 8
  %104 = load i64, i64* %end_ix, align 8
  %105 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries95 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %105, i32 0, i32 0
  %106 = load %struct.boundary*, %struct.boundary** %boundaries95, align 8
  %arrayidx96 = getelementptr inbounds %struct.boundary, %struct.boundary* %106, i64 %104
  %pos97 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx96, i32 0, i32 0
  %107 = load i64, i64* %pos97, align 8
  %add98 = add nsw i64 %103, %107
  br label %cond.end.107

cond.false.99:                                    ; preds = %lor.lhs.false
  %108 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end100 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %108, i32 0, i32 7
  %109 = load i64, i64* %buffer_end100, align 8
  %110 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len101 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %110, i32 0, i32 2
  %111 = load i64, i64* %gap_len101, align 8
  %112 = load i64, i64* %end_ix, align 8
  %add102 = add nsw i64 %111, %112
  %113 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries103 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %113, i32 0, i32 0
  %114 = load %struct.boundary*, %struct.boundary** %boundaries103, align 8
  %arrayidx104 = getelementptr inbounds %struct.boundary, %struct.boundary* %114, i64 %add102
  %pos105 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx104, i32 0, i32 0
  %115 = load i64, i64* %pos105, align 8
  %add106 = add nsw i64 %109, %115
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.99, %cond.true.93
  %cond108 = phi i64 [ %add98, %cond.true.93 ], [ %add106, %cond.false.99 ]
  %cmp109 = icmp slt i64 %98, %cond108
  br i1 %cmp109, label %if.then.110, label %if.else.114

if.then.110:                                      ; preds = %cond.end.107, %if.else.89
  %116 = load i32, i32* %value_at_end, align 4
  %117 = load i32, i32* %value.addr, align 4
  %cmp111 = icmp ne i32 %116, %117
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.110
  %118 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %119 = load i64, i64* %end_ix, align 8
  %120 = load i64, i64* %end.addr, align 8
  %121 = load i32, i32* %value_at_end, align 4
  call void @insert_cache_boundary(%struct.region_cache* %118, i64 %119, i64 %120, i32 %121)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.110
  br label %if.end.133

if.else.114:                                      ; preds = %cond.end.107
  %122 = load i32, i32* %value.addr, align 4
  %123 = load i64, i64* %end_ix, align 8
  %124 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start115 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %124, i32 0, i32 1
  %125 = load i64, i64* %gap_start115, align 8
  %cmp116 = icmp slt i64 %123, %125
  br i1 %cmp116, label %cond.true.117, label %cond.false.121

cond.true.117:                                    ; preds = %if.else.114
  %126 = load i64, i64* %end_ix, align 8
  %127 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries118 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %127, i32 0, i32 0
  %128 = load %struct.boundary*, %struct.boundary** %boundaries118, align 8
  %arrayidx119 = getelementptr inbounds %struct.boundary, %struct.boundary* %128, i64 %126
  %value120 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx119, i32 0, i32 1
  %129 = load i32, i32* %value120, align 4
  br label %cond.end.127

cond.false.121:                                   ; preds = %if.else.114
  %130 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len122 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %130, i32 0, i32 2
  %131 = load i64, i64* %gap_len122, align 8
  %132 = load i64, i64* %end_ix, align 8
  %add123 = add nsw i64 %131, %132
  %133 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries124 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %133, i32 0, i32 0
  %134 = load %struct.boundary*, %struct.boundary** %boundaries124, align 8
  %arrayidx125 = getelementptr inbounds %struct.boundary, %struct.boundary* %134, i64 %add123
  %value126 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx125, i32 0, i32 1
  %135 = load i32, i32* %value126, align 4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.121, %cond.true.117
  %cond128 = phi i32 [ %129, %cond.true.117 ], [ %135, %cond.false.121 ]
  %cmp129 = icmp eq i32 %122, %cond128
  br i1 %cmp129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %cond.end.127
  %136 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %137 = load i64, i64* %end_ix, align 8
  %138 = load i64, i64* %end_ix, align 8
  %add131 = add nsw i64 %138, 1
  call void @delete_cache_boundaries(%struct.region_cache* %136, i64 %137, i64 %add131)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %cond.end.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.113
  br label %if.end.134

if.end.134:                                       ; preds = %if.then, %if.end.133, %if.then.88
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @region_cache_forward(%struct.buffer* %buf, %struct.region_cache* %c, i64 %pos, i64* %next) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca %struct.region_cache*, align 8
  %pos.addr = alloca i64, align 8
  %next.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %i_value = alloca i32, align 4
  %j = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64* %next, i64** %next.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %1 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  call void @revalidate_region_cache(%struct.buffer* %0, %struct.region_cache* %1)
  %2 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %call = call i64 @find_cache_boundary(%struct.region_cache* %2, i64 %3)
  store i64 %call, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %5, i32 0, i32 1
  %6 = load i64, i64* %gap_start, align 8
  %cmp = icmp slt i64 %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %8, i32 0, i32 0
  %9 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %9, i64 %7
  %value = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 1
  %10 = load i32, i32* %value, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %11, i32 0, i32 2
  %12 = load i64, i64* %gap_len, align 8
  %13 = load i64, i64* %i, align 8
  %add = add nsw i64 %12, %13
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries1 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 0
  %15 = load %struct.boundary*, %struct.boundary** %boundaries1, align 8
  %arrayidx2 = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i64 %add
  %value3 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx2, i32 0, i32 1
  %16 = load i32, i32* %value3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, i32* %i_value, align 4
  %17 = load i64, i64* %pos.addr, align 8
  %18 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 2
  %20 = load i64, i64* %z, align 8
  %cmp4 = icmp sge i64 %17, %20
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %21 = load i64*, i64** %next.addr, align 8
  %tobool = icmp ne i64* %21, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %22 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %z7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 2
  %24 = load i64, i64* %z7, align 8
  %25 = load i64*, i64** %next.addr, align 8
  store i64 %24, i64* %25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  store i32 0, i32* %i_value, align 4
  br label %if.end.53

if.else:                                          ; preds = %cond.end
  %26 = load i64*, i64** %next.addr, align 8
  %tobool8 = icmp ne i64* %26, null
  br i1 %tobool8, label %if.then.9, label %if.end.52

if.then.9:                                        ; preds = %if.else
  %27 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %27, 1
  store i64 %add10, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %28 = load i64, i64* %j, align 8
  %29 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %29, i32 0, i32 3
  %30 = load i64, i64* %cache_len, align 8
  %cmp11 = icmp slt i64 %28, %30
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %j, align 8
  %32 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start12 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %32, i32 0, i32 1
  %33 = load i64, i64* %gap_start12, align 8
  %cmp13 = icmp slt i64 %31, %33
  br i1 %cmp13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %for.body
  %34 = load i64, i64* %j, align 8
  %35 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries15 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %35, i32 0, i32 0
  %36 = load %struct.boundary*, %struct.boundary** %boundaries15, align 8
  %arrayidx16 = getelementptr inbounds %struct.boundary, %struct.boundary* %36, i64 %34
  %value17 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx16, i32 0, i32 1
  %37 = load i32, i32* %value17, align 4
  br label %cond.end.24

cond.false.18:                                    ; preds = %for.body
  %38 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len19 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %38, i32 0, i32 2
  %39 = load i64, i64* %gap_len19, align 8
  %40 = load i64, i64* %j, align 8
  %add20 = add nsw i64 %39, %40
  %41 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries21 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %41, i32 0, i32 0
  %42 = load %struct.boundary*, %struct.boundary** %boundaries21, align 8
  %arrayidx22 = getelementptr inbounds %struct.boundary, %struct.boundary* %42, i64 %add20
  %value23 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx22, i32 0, i32 1
  %43 = load i32, i32* %value23, align 4
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.18, %cond.true.14
  %cond25 = phi i32 [ %37, %cond.true.14 ], [ %43, %cond.false.18 ]
  %44 = load i32, i32* %i_value, align 4
  %cmp26 = icmp ne i32 %cond25, %44
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end.24
  br label %for.end

if.end.28:                                        ; preds = %cond.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %45 = load i64, i64* %j, align 8
  %inc = add nsw i64 %45, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %46 = load i64, i64* %j, align 8
  %47 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len29 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %47, i32 0, i32 3
  %48 = load i64, i64* %cache_len29, align 8
  %cmp30 = icmp slt i64 %46, %48
  br i1 %cmp30, label %if.then.31, label %if.else.48

if.then.31:                                       ; preds = %for.end
  %49 = load i64, i64* %j, align 8
  %50 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start32 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %50, i32 0, i32 1
  %51 = load i64, i64* %gap_start32, align 8
  %cmp33 = icmp slt i64 %49, %51
  br i1 %cmp33, label %cond.true.34, label %cond.false.39

cond.true.34:                                     ; preds = %if.then.31
  %52 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %52, i32 0, i32 6
  %53 = load i64, i64* %buffer_beg, align 8
  %54 = load i64, i64* %j, align 8
  %55 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries35 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %55, i32 0, i32 0
  %56 = load %struct.boundary*, %struct.boundary** %boundaries35, align 8
  %arrayidx36 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i64 %54
  %pos37 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx36, i32 0, i32 0
  %57 = load i64, i64* %pos37, align 8
  %add38 = add nsw i64 %53, %57
  br label %cond.end.46

cond.false.39:                                    ; preds = %if.then.31
  %58 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %58, i32 0, i32 7
  %59 = load i64, i64* %buffer_end, align 8
  %60 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len40 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %60, i32 0, i32 2
  %61 = load i64, i64* %gap_len40, align 8
  %62 = load i64, i64* %j, align 8
  %add41 = add nsw i64 %61, %62
  %63 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries42 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %63, i32 0, i32 0
  %64 = load %struct.boundary*, %struct.boundary** %boundaries42, align 8
  %arrayidx43 = getelementptr inbounds %struct.boundary, %struct.boundary* %64, i64 %add41
  %pos44 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx43, i32 0, i32 0
  %65 = load i64, i64* %pos44, align 8
  %add45 = add nsw i64 %59, %65
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.39, %cond.true.34
  %cond47 = phi i64 [ %add38, %cond.true.34 ], [ %add45, %cond.false.39 ]
  %66 = load i64*, i64** %next.addr, align 8
  store i64 %cond47, i64* %66, align 8
  br label %if.end.51

if.else.48:                                       ; preds = %for.end
  %67 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text49 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 73
  %68 = load %struct.buffer_text*, %struct.buffer_text** %text49, align 8
  %z50 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %68, i32 0, i32 2
  %69 = load i64, i64* %z50, align 8
  %70 = load i64*, i64** %next.addr, align 8
  store i64 %69, i64* %70, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %cond.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  %71 = load i32, i32* %i_value, align 4
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i64 @find_cache_boundary(%struct.region_cache* %c, i64 %pos) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  %pos.addr = alloca i64, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %mid = alloca i64, align 8
  %boundary = alloca i64, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 0, i64* %low, align 8
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %0, i32 0, i32 3
  %1 = load i64, i64* %cache_len, align 8
  store i64 %1, i64* %high, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %low, align 8
  %add = add nsw i64 %2, 1
  %3 = load i64, i64* %high, align 8
  %cmp = icmp slt i64 %add, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %low, align 8
  %shr = ashr i64 %4, 1
  %5 = load i64, i64* %high, align 8
  %shr1 = ashr i64 %5, 1
  %add2 = add nsw i64 %shr, %shr1
  %6 = load i64, i64* %low, align 8
  %7 = load i64, i64* %high, align 8
  %and = and i64 %6, %7
  %and3 = and i64 %and, 1
  %add4 = add nsw i64 %add2, %and3
  store i64 %add4, i64* %mid, align 8
  %8 = load i64, i64* %mid, align 8
  %9 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %9, i32 0, i32 1
  %10 = load i64, i64* %gap_start, align 8
  %cmp5 = icmp slt i64 %8, %10
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %11 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %11, i32 0, i32 6
  %12 = load i64, i64* %buffer_beg, align 8
  %13 = load i64, i64* %mid, align 8
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 0
  %15 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i64 %13
  %pos6 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 0
  %16 = load i64, i64* %pos6, align 8
  %add7 = add nsw i64 %12, %16
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %17 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %17, i32 0, i32 7
  %18 = load i64, i64* %buffer_end, align 8
  %19 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %19, i32 0, i32 2
  %20 = load i64, i64* %gap_len, align 8
  %21 = load i64, i64* %mid, align 8
  %add8 = add nsw i64 %20, %21
  %22 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries9 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %22, i32 0, i32 0
  %23 = load %struct.boundary*, %struct.boundary** %boundaries9, align 8
  %arrayidx10 = getelementptr inbounds %struct.boundary, %struct.boundary* %23, i64 %add8
  %pos11 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx10, i32 0, i32 0
  %24 = load i64, i64* %pos11, align 8
  %add12 = add nsw i64 %18, %24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add7, %cond.true ], [ %add12, %cond.false ]
  store i64 %cond, i64* %boundary, align 8
  %25 = load i64, i64* %pos.addr, align 8
  %26 = load i64, i64* %boundary, align 8
  %cmp13 = icmp slt i64 %25, %26
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %27 = load i64, i64* %mid, align 8
  store i64 %27, i64* %high, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %28 = load i64, i64* %mid, align 8
  store i64 %28, i64* %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i64, i64* %low, align 8
  ret i64 %29
}

; Function Attrs: nounwind uwtable
define i32 @region_cache_backward(%struct.buffer* %buf, %struct.region_cache* %c, i64 %pos, i64* %next) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.buffer*, align 8
  %c.addr = alloca %struct.region_cache*, align 8
  %pos.addr = alloca i64, align 8
  %next.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %i_value = alloca i32, align 4
  %j = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64* %next, i64** %next.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %1 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  call void @revalidate_region_cache(%struct.buffer* %0, %struct.region_cache* %1)
  %2 = load i64, i64* %pos.addr, align 8
  %cmp = icmp sle i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %next.addr, align 8
  %tobool = icmp ne i64* %3, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load i64*, i64** %next.addr, align 8
  store i64 1, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %5 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %6 = load i64, i64* %pos.addr, align 8
  %sub = sub nsw i64 %6, 1
  %call = call i64 @find_cache_boundary(%struct.region_cache* %5, i64 %sub)
  store i64 %call, i64* %i, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %8, i32 0, i32 1
  %9 = load i64, i64* %gap_start, align 8
  %cmp3 = icmp slt i64 %7, %9
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %11, i32 0, i32 0
  %12 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %12, i64 %10
  %value = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 1
  %13 = load i32, i32* %value, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 2
  %15 = load i64, i64* %gap_len, align 8
  %16 = load i64, i64* %i, align 8
  %add = add nsw i64 %15, %16
  %17 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries4 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %17, i32 0, i32 0
  %18 = load %struct.boundary*, %struct.boundary** %boundaries4, align 8
  %arrayidx5 = getelementptr inbounds %struct.boundary, %struct.boundary* %18, i64 %add
  %value6 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx5, i32 0, i32 1
  %19 = load i32, i32* %value6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %i_value, align 4
  %20 = load i64*, i64** %next.addr, align 8
  %tobool7 = icmp ne i64* %20, null
  br i1 %tobool7, label %if.then.8, label %if.end.50

if.then.8:                                        ; preds = %cond.end
  %21 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %21, 1
  store i64 %sub9, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %22 = load i64, i64* %j, align 8
  %cmp10 = icmp sge i64 %22, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, i64* %j, align 8
  %24 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start11 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %24, i32 0, i32 1
  %25 = load i64, i64* %gap_start11, align 8
  %cmp12 = icmp slt i64 %23, %25
  br i1 %cmp12, label %cond.true.13, label %cond.false.17

cond.true.13:                                     ; preds = %for.body
  %26 = load i64, i64* %j, align 8
  %27 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries14 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %27, i32 0, i32 0
  %28 = load %struct.boundary*, %struct.boundary** %boundaries14, align 8
  %arrayidx15 = getelementptr inbounds %struct.boundary, %struct.boundary* %28, i64 %26
  %value16 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx15, i32 0, i32 1
  %29 = load i32, i32* %value16, align 4
  br label %cond.end.23

cond.false.17:                                    ; preds = %for.body
  %30 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len18 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %30, i32 0, i32 2
  %31 = load i64, i64* %gap_len18, align 8
  %32 = load i64, i64* %j, align 8
  %add19 = add nsw i64 %31, %32
  %33 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries20 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %33, i32 0, i32 0
  %34 = load %struct.boundary*, %struct.boundary** %boundaries20, align 8
  %arrayidx21 = getelementptr inbounds %struct.boundary, %struct.boundary* %34, i64 %add19
  %value22 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx21, i32 0, i32 1
  %35 = load i32, i32* %value22, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.17, %cond.true.13
  %cond24 = phi i32 [ %29, %cond.true.13 ], [ %35, %cond.false.17 ]
  %36 = load i32, i32* %i_value, align 4
  %cmp25 = icmp ne i32 %cond24, %36
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end.23
  br label %for.end

if.end.27:                                        ; preds = %cond.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %37 = load i64, i64* %j, align 8
  %dec = add nsw i64 %37, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.26, %for.cond
  %38 = load i64, i64* %j, align 8
  %cmp28 = icmp sge i64 %38, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.end
  %39 = load i64, i64* %j, align 8
  %add30 = add nsw i64 %39, 1
  %40 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start31 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %40, i32 0, i32 1
  %41 = load i64, i64* %gap_start31, align 8
  %cmp32 = icmp slt i64 %add30, %41
  br i1 %cmp32, label %cond.true.33, label %cond.false.39

cond.true.33:                                     ; preds = %if.then.29
  %42 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %42, i32 0, i32 6
  %43 = load i64, i64* %buffer_beg, align 8
  %44 = load i64, i64* %j, align 8
  %add34 = add nsw i64 %44, 1
  %45 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries35 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %45, i32 0, i32 0
  %46 = load %struct.boundary*, %struct.boundary** %boundaries35, align 8
  %arrayidx36 = getelementptr inbounds %struct.boundary, %struct.boundary* %46, i64 %add34
  %pos37 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx36, i32 0, i32 0
  %47 = load i64, i64* %pos37, align 8
  %add38 = add nsw i64 %43, %47
  br label %cond.end.47

cond.false.39:                                    ; preds = %if.then.29
  %48 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end = getelementptr inbounds %struct.region_cache, %struct.region_cache* %48, i32 0, i32 7
  %49 = load i64, i64* %buffer_end, align 8
  %50 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len40 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %50, i32 0, i32 2
  %51 = load i64, i64* %gap_len40, align 8
  %52 = load i64, i64* %j, align 8
  %add41 = add nsw i64 %52, 1
  %add42 = add nsw i64 %51, %add41
  %53 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries43 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %53, i32 0, i32 0
  %54 = load %struct.boundary*, %struct.boundary** %boundaries43, align 8
  %arrayidx44 = getelementptr inbounds %struct.boundary, %struct.boundary* %54, i64 %add42
  %pos45 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx44, i32 0, i32 0
  %55 = load i64, i64* %pos45, align 8
  %add46 = add nsw i64 %49, %55
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.39, %cond.true.33
  %cond48 = phi i64 [ %add38, %cond.true.33 ], [ %add46, %cond.false.39 ]
  %56 = load i64*, i64** %next.addr, align 8
  store i64 %cond48, i64* %56, align 8
  br label %if.end.49

if.else:                                          ; preds = %for.end
  %57 = load i64*, i64** %next.addr, align 8
  store i64 1, i64* %57, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %cond.end.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %cond.end
  %58 = load i32, i32* %i_value, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.end
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal void @move_cache_gap(%struct.region_cache* %c, i64 %pos, i64 %min_size) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  %pos.addr = alloca i64, align 8
  %min_size.addr = alloca i64, align 8
  %gap_start = alloca i64, align 8
  %gap_len = alloca i64, align 8
  %buffer_beg = alloca i64, align 8
  %buffer_end = alloca i64, align 8
  %i = alloca i64, align 8
  %nboundaries = alloca i64, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %min_size, i64* %min_size.addr, align 8
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start1 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %0, i32 0, i32 1
  %1 = load i64, i64* %gap_start1, align 8
  store i64 %1, i64* %gap_start, align 8
  %2 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len2 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %2, i32 0, i32 2
  %3 = load i64, i64* %gap_len2, align 8
  store i64 %3, i64* %gap_len, align 8
  %4 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg3 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %4, i32 0, i32 6
  %5 = load i64, i64* %buffer_beg3, align 8
  store i64 %5, i64* %buffer_beg, align 8
  %6 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_end4 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %6, i32 0, i32 7
  %7 = load i64, i64* %buffer_end4, align 8
  store i64 %7, i64* %buffer_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i64, i64* %gap_start, align 8
  %9 = load i64, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %buffer_end, align 8
  %11 = load i64, i64* %gap_start, align 8
  %12 = load i64, i64* %gap_len, align 8
  %add = add nsw i64 %11, %12
  %13 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %13, i32 0, i32 0
  %14 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %14, i64 %add
  %pos5 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 0
  %15 = load i64, i64* %pos5, align 8
  %add6 = add nsw i64 %10, %15
  %16 = load i64, i64* %buffer_beg, align 8
  %sub = sub nsw i64 %add6, %16
  %17 = load i64, i64* %gap_start, align 8
  %18 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries7 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %18, i32 0, i32 0
  %19 = load %struct.boundary*, %struct.boundary** %boundaries7, align 8
  %arrayidx8 = getelementptr inbounds %struct.boundary, %struct.boundary* %19, i64 %17
  %pos9 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx8, i32 0, i32 0
  store i64 %sub, i64* %pos9, align 8
  %20 = load i64, i64* %gap_start, align 8
  %21 = load i64, i64* %gap_len, align 8
  %add10 = add nsw i64 %20, %21
  %22 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries11 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %22, i32 0, i32 0
  %23 = load %struct.boundary*, %struct.boundary** %boundaries11, align 8
  %arrayidx12 = getelementptr inbounds %struct.boundary, %struct.boundary* %23, i64 %add10
  %value = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx12, i32 0, i32 1
  %24 = load i32, i32* %value, align 4
  %25 = load i64, i64* %gap_start, align 8
  %26 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries13 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %26, i32 0, i32 0
  %27 = load %struct.boundary*, %struct.boundary** %boundaries13, align 8
  %arrayidx14 = getelementptr inbounds %struct.boundary, %struct.boundary* %27, i64 %25
  %value15 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx14, i32 0, i32 1
  store i32 %24, i32* %value15, align 4
  %28 = load i64, i64* %gap_start, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, i64* %gap_start, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i64, i64* %gap_len, align 8
  %30 = load i64, i64* %min_size.addr, align 8
  %cmp16 = icmp slt i64 %29, %30
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %31 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %31, i32 0, i32 3
  %32 = load i64, i64* %cache_len, align 8
  store i64 %32, i64* %nboundaries, align 8
  %33 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries17 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %33, i32 0, i32 0
  %34 = load %struct.boundary*, %struct.boundary** %boundaries17, align 8
  %35 = bitcast %struct.boundary* %34 to i8*
  %36 = load i64, i64* %min_size.addr, align 8
  %37 = load i64, i64* %gap_len, align 8
  %sub18 = sub nsw i64 %36, %37
  %call = call i8* @xpalloc(i8* %35, i64* %nboundaries, i64 %sub18, i64 -1, i64 16)
  %38 = bitcast i8* %call to %struct.boundary*
  %39 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries19 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %39, i32 0, i32 0
  store %struct.boundary* %38, %struct.boundary** %boundaries19, align 8
  %40 = load i64, i64* %nboundaries, align 8
  %41 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len20 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %41, i32 0, i32 3
  %42 = load i64, i64* %cache_len20, align 8
  %sub21 = sub nsw i64 %40, %42
  %43 = load i64, i64* %gap_len, align 8
  %sub22 = sub nsw i64 %sub21, %43
  store i64 %sub22, i64* %min_size.addr, align 8
  %44 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len23 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %44, i32 0, i32 3
  %45 = load i64, i64* %cache_len23, align 8
  %sub24 = sub nsw i64 %45, 1
  store i64 %sub24, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %46 = load i64, i64* %i, align 8
  %47 = load i64, i64* %gap_start, align 8
  %cmp25 = icmp sge i64 %46, %47
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %gap_len, align 8
  %add26 = add nsw i64 %48, %49
  %50 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries27 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %50, i32 0, i32 0
  %51 = load %struct.boundary*, %struct.boundary** %boundaries27, align 8
  %arrayidx28 = getelementptr inbounds %struct.boundary, %struct.boundary* %51, i64 %add26
  %pos29 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx28, i32 0, i32 0
  %52 = load i64, i64* %pos29, align 8
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %min_size.addr, align 8
  %add30 = add nsw i64 %53, %54
  %55 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries31 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %55, i32 0, i32 0
  %56 = load %struct.boundary*, %struct.boundary** %boundaries31, align 8
  %arrayidx32 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i64 %add30
  %pos33 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx32, i32 0, i32 0
  store i64 %52, i64* %pos33, align 8
  %57 = load i64, i64* %i, align 8
  %58 = load i64, i64* %gap_len, align 8
  %add34 = add nsw i64 %57, %58
  %59 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries35 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %59, i32 0, i32 0
  %60 = load %struct.boundary*, %struct.boundary** %boundaries35, align 8
  %arrayidx36 = getelementptr inbounds %struct.boundary, %struct.boundary* %60, i64 %add34
  %value37 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx36, i32 0, i32 1
  %61 = load i32, i32* %value37, align 4
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %min_size.addr, align 8
  %add38 = add nsw i64 %62, %63
  %64 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries39 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %64, i32 0, i32 0
  %65 = load %struct.boundary*, %struct.boundary** %boundaries39, align 8
  %arrayidx40 = getelementptr inbounds %struct.boundary, %struct.boundary* %65, i64 %add38
  %value41 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx40, i32 0, i32 1
  store i32 %61, i32* %value41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i64, i64* %i, align 8
  %dec = add nsw i64 %66, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i64, i64* %min_size.addr, align 8
  store i64 %67, i64* %gap_len, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.44, %if.end
  %68 = load i64, i64* %pos.addr, align 8
  %69 = load i64, i64* %gap_start, align 8
  %cmp43 = icmp slt i64 %68, %69
  br i1 %cmp43, label %while.body.44, label %while.end.62

while.body.44:                                    ; preds = %while.cond.42
  %70 = load i64, i64* %gap_start, align 8
  %dec45 = add nsw i64 %70, -1
  store i64 %dec45, i64* %gap_start, align 8
  %71 = load i64, i64* %gap_start, align 8
  %72 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries46 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %72, i32 0, i32 0
  %73 = load %struct.boundary*, %struct.boundary** %boundaries46, align 8
  %arrayidx47 = getelementptr inbounds %struct.boundary, %struct.boundary* %73, i64 %71
  %pos48 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx47, i32 0, i32 0
  %74 = load i64, i64* %pos48, align 8
  %75 = load i64, i64* %buffer_beg, align 8
  %add49 = add nsw i64 %74, %75
  %76 = load i64, i64* %buffer_end, align 8
  %sub50 = sub nsw i64 %add49, %76
  %77 = load i64, i64* %gap_start, align 8
  %78 = load i64, i64* %gap_len, align 8
  %add51 = add nsw i64 %77, %78
  %79 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries52 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %79, i32 0, i32 0
  %80 = load %struct.boundary*, %struct.boundary** %boundaries52, align 8
  %arrayidx53 = getelementptr inbounds %struct.boundary, %struct.boundary* %80, i64 %add51
  %pos54 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx53, i32 0, i32 0
  store i64 %sub50, i64* %pos54, align 8
  %81 = load i64, i64* %gap_start, align 8
  %82 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries55 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %82, i32 0, i32 0
  %83 = load %struct.boundary*, %struct.boundary** %boundaries55, align 8
  %arrayidx56 = getelementptr inbounds %struct.boundary, %struct.boundary* %83, i64 %81
  %value57 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx56, i32 0, i32 1
  %84 = load i32, i32* %value57, align 4
  %85 = load i64, i64* %gap_start, align 8
  %86 = load i64, i64* %gap_len, align 8
  %add58 = add nsw i64 %85, %86
  %87 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries59 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %87, i32 0, i32 0
  %88 = load %struct.boundary*, %struct.boundary** %boundaries59, align 8
  %arrayidx60 = getelementptr inbounds %struct.boundary, %struct.boundary* %88, i64 %add58
  %value61 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx60, i32 0, i32 1
  store i32 %84, i32* %value61, align 4
  br label %while.cond.42

while.end.62:                                     ; preds = %while.cond.42
  %89 = load i64, i64* %gap_start, align 8
  %90 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start63 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %90, i32 0, i32 1
  store i64 %89, i64* %gap_start63, align 8
  %91 = load i64, i64* %gap_len, align 8
  %92 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len64 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %92, i32 0, i32 2
  store i64 %91, i64* %gap_len64, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_cache_boundaries(%struct.region_cache* %c, i64 %start, i64 %end) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.16

if.else:                                          ; preds = %entry
  %3 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %3, i32 0, i32 1
  %4 = load i64, i64* %gap_start, align 8
  %5 = load i64, i64* %start.addr, align 8
  %cmp1 = icmp sle i64 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %6 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %7 = load i64, i64* %start.addr, align 8
  call void @move_cache_gap(%struct.region_cache* %6, i64 %7, i64 0)
  %8 = load i64, i64* %len, align 8
  %9 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %9, i32 0, i32 2
  %10 = load i64, i64* %gap_len, align 8
  %add = add nsw i64 %10, %8
  store i64 %add, i64* %gap_len, align 8
  br label %if.end.15

if.else.3:                                        ; preds = %if.else
  %11 = load i64, i64* %end.addr, align 8
  %12 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start4 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %12, i32 0, i32 1
  %13 = load i64, i64* %gap_start4, align 8
  %cmp5 = icmp sle i64 %11, %13
  br i1 %cmp5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.else.3
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %15 = load i64, i64* %end.addr, align 8
  call void @move_cache_gap(%struct.region_cache* %14, i64 %15, i64 0)
  %16 = load i64, i64* %len, align 8
  %17 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start7 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %17, i32 0, i32 1
  %18 = load i64, i64* %gap_start7, align 8
  %sub8 = sub nsw i64 %18, %16
  store i64 %sub8, i64* %gap_start7, align 8
  %19 = load i64, i64* %len, align 8
  %20 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len9 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %20, i32 0, i32 2
  %21 = load i64, i64* %gap_len9, align 8
  %add10 = add nsw i64 %21, %19
  store i64 %add10, i64* %gap_len9, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.3
  %22 = load i64, i64* %start.addr, align 8
  %23 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start12 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %23, i32 0, i32 1
  store i64 %22, i64* %gap_start12, align 8
  %24 = load i64, i64* %len, align 8
  %25 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len13 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %25, i32 0, i32 2
  %26 = load i64, i64* %gap_len13, align 8
  %add14 = add nsw i64 %26, %24
  store i64 %add14, i64* %gap_len13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.2
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %27 = load i64, i64* %len, align 8
  %28 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %28, i32 0, i32 3
  %29 = load i64, i64* %cache_len, align 8
  %sub17 = sub nsw i64 %29, %27
  store i64 %sub17, i64* %cache_len, align 8
  ret void
}

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @insert_cache_boundary(%struct.region_cache* %c, i64 %i, i64 %pos, i32 %value) #0 {
entry:
  %c.addr = alloca %struct.region_cache*, align 8
  %i.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  store %struct.region_cache* %c, %struct.region_cache** %c.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  call void @move_cache_gap(%struct.region_cache* %0, i64 %1, i64 1)
  %2 = load i64, i64* %pos.addr, align 8
  %3 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %buffer_beg = getelementptr inbounds %struct.region_cache, %struct.region_cache* %3, i32 0, i32 6
  %4 = load i64, i64* %buffer_beg, align 8
  %sub = sub nsw i64 %2, %4
  %5 = load i64, i64* %i.addr, align 8
  %6 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries = getelementptr inbounds %struct.region_cache, %struct.region_cache* %6, i32 0, i32 0
  %7 = load %struct.boundary*, %struct.boundary** %boundaries, align 8
  %arrayidx = getelementptr inbounds %struct.boundary, %struct.boundary* %7, i64 %5
  %pos1 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx, i32 0, i32 0
  store i64 %sub, i64* %pos1, align 8
  %8 = load i32, i32* %value.addr, align 4
  %9 = load i64, i64* %i.addr, align 8
  %10 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %boundaries2 = getelementptr inbounds %struct.region_cache, %struct.region_cache* %10, i32 0, i32 0
  %11 = load %struct.boundary*, %struct.boundary** %boundaries2, align 8
  %arrayidx3 = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i64 %9
  %value4 = getelementptr inbounds %struct.boundary, %struct.boundary* %arrayidx3, i32 0, i32 1
  store i32 %8, i32* %value4, align 4
  %12 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_start = getelementptr inbounds %struct.region_cache, %struct.region_cache* %12, i32 0, i32 1
  %13 = load i64, i64* %gap_start, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %gap_start, align 8
  %14 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %gap_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %14, i32 0, i32 2
  %15 = load i64, i64* %gap_len, align 8
  %dec = add nsw i64 %15, -1
  store i64 %dec, i64* %gap_len, align 8
  %16 = load %struct.region_cache*, %struct.region_cache** %c.addr, align 8
  %cache_len = getelementptr inbounds %struct.region_cache, %struct.region_cache* %16, i32 0, i32 3
  %17 = load i64, i64* %cache_len, align 8
  %inc5 = add nsw i64 %17, 1
  store i64 %inc5, i64* %cache_len, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
