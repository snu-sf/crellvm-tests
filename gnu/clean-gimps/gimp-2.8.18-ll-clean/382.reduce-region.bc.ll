; ModuleID = './app/paint-funcs/reduce-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

; Function Attrs: nounwind uwtable
define void @reduce_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %alpha = alloca i32, align 4
  %level = alloca i32, align 4
  %scale = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %dst = alloca i8*, align 8
  %src = alloca i8*, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %bytes1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 10
  %1 = load i32, i32* %bytes1, align 4
  store i32 %1, i32* %bytes, align 4
  store i32 0, i32* %alpha, align 4
  store i32 0, i32* %level, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h, align 4
  %conv = sitofp i32 %3 to double
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h2, align 4
  %conv3 = sitofp i32 %5 to double
  %div = fdiv double %conv, %conv3
  store double %div, double* %scale, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load double, double* %scale, align 8
  %cmp = fcmp ole double %8, 5.000000e-01
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load double, double* %scale, align 8
  %mul = fmul double %9, 2.000000e+00
  store double %mul, double* %scale, align 8
  %10 = load i32, i32* %level, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %level, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %level, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.end
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 8
  %13 = load i32, i32* %w, align 4
  %div8 = sdiv i32 %13, 2
  store i32 %div8, i32* %width, align 4
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 9
  %15 = load i32, i32* %h9, align 4
  %div10 = sdiv i32 %15, 2
  store i32 %div10, i32* %height, align 4
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %mul11 = mul nsw i32 %16, %17
  %18 = load i32, i32* %bytes, align 4
  %mul12 = mul nsw i32 %mul11, %18
  %conv13 = sext i32 %mul12 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv13, i64 1)
  store i8* %call14, i8** %dst, align 8
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %20 = load i8*, i8** %dst, align 8
  %21 = load i32, i32* %bytes, align 4
  call void @reduce_pixel_region(%struct._PixelRegion* %19, i8* %20, i32 %21)
  %22 = load i32, i32* %level, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %level, align 4
  %23 = load i32, i32* %level, align 4
  %cmp15 = icmp sgt i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %if.then.7
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %if.then.17
  %24 = load i32, i32* %level, align 4
  %tobool19 = icmp ne i32 %24, 0
  br i1 %tobool19, label %while.body.20, label %while.end.30

while.body.20:                                    ; preds = %while.cond.18
  %25 = load i8*, i8** %dst, align 8
  store i8* %25, i8** %src, align 8
  %26 = load i32, i32* %width, align 4
  %div21 = sdiv i32 %26, 2
  store i32 %div21, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %div22 = sdiv i32 %27, 2
  store i32 %div22, i32* %height, align 4
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  %mul23 = mul nsw i32 %28, %29
  %30 = load i32, i32* %bytes, align 4
  %mul24 = mul nsw i32 %mul23, %30
  %conv25 = sext i32 %mul24 to i64
  %call26 = call noalias i8* @g_malloc_n(i64 %conv25, i64 1)
  store i8* %call26, i8** %dst, align 8
  %31 = load i8*, i8** %src, align 8
  %32 = load i8*, i8** %dst, align 8
  %33 = load i32, i32* %bytes, align 4
  %34 = load i32, i32* %width, align 4
  %mul27 = mul nsw i32 %34, 2
  %35 = load i32, i32* %height, align 4
  %mul28 = mul nsw i32 %35, 2
  %36 = load i32, i32* %alpha, align 4
  call void @reduce_buffer(i8* %31, i8* %32, i32 %33, i32 %mul27, i32 %mul28, i32 %36)
  %37 = load i8*, i8** %src, align 8
  call void @g_free(i8* %37)
  %38 = load i32, i32* %level, align 4
  %dec29 = add nsw i32 %38, -1
  store i32 %dec29, i32* %level, align 4
  br label %while.cond.18

while.end.30:                                     ; preds = %while.cond.18
  br label %if.end.31

if.end.31:                                        ; preds = %while.end.30, %if.then.7
  %39 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %40 = load i8*, i8** %dst, align 8
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  %43 = load i32, i32* %bytes, align 4
  call void @reduce_bilinear(%struct._PixelRegion* %39, i8* %40, i32 %41, i32 %42, i32 %43)
  %44 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %44)
  br label %if.end.32

if.else:                                          ; preds = %while.end
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  call void @reduce_bilinear_pr(%struct._PixelRegion* %45, %struct._PixelRegion* %46)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.end.31
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @reduce_pixel_region(%struct._PixelRegion* %srcPR, i8* %dst, i32 %bytes) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dst.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %src_buf = alloca i8*, align 8
  %row0 = alloca i8*, align 8
  %row1 = alloca i8*, align 8
  %row2 = alloca i8*, align 8
  %y = alloca i32, align 4
  %src_width = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_ptr = alloca i8*, align 8
  %alpha = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  store i32 %1, i32* %src_width, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w1, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %dst_width, align 4
  store i32 0, i32* %alpha, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %src_width, align 4
  %7 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %6, %7
  %mul2 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %src_buf, align 8
  %8 = load i8*, i8** %src_buf, align 8
  store i8* %8, i8** %row0, align 8
  %9 = load i8*, i8** %row0, align 8
  %10 = load i32, i32* %src_width, align 4
  %11 = load i32, i32* %bytes.addr, align 4
  %mul4 = mul nsw i32 %10, %11
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %row1, align 8
  %12 = load i8*, i8** %row1, align 8
  %13 = load i32, i32* %src_width, align 4
  %14 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %13, %14
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %12, i64 %idx.ext6
  store i8* %add.ptr7, i8** %row2, align 8
  %15 = load i8*, i8** %dst.addr, align 8
  store i8* %15, i8** %dst_ptr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %y, align 4
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %17, i32 0, i32 9
  %18 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %20 = load i32, i32* %y, align 4
  %sub9 = sub nsw i32 %20, 1
  %cmp10 = icmp slt i32 %sub9, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load i32, i32* %y, align 4
  %sub12 = sub nsw i32 %21, 1
  %sub13 = sub nsw i32 0, %sub12
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %y, align 4
  %sub14 = sub nsw i32 %22, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub13, %cond.true ], [ %sub14, %cond.false ]
  %23 = load i32, i32* %src_width, align 4
  %24 = load i8*, i8** %row0, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %19, i32 0, i32 %cond, i32 %23, i8* %24, i32 1)
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %src_width, align 4
  %28 = load i8*, i8** %row1, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %25, i32 0, i32 %26, i32 %27, i8* %28, i32 1)
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %30 = load i32, i32* %y, align 4
  %add = add nsw i32 %30, 1
  %31 = load i32, i32* %src_width, align 4
  %32 = load i8*, i8** %row2, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %29, i32 0, i32 %add, i32 %31, i8* %32, i32 1)
  %33 = load i8*, i8** %src_buf, align 8
  %34 = load i8*, i8** %dst_ptr, align 8
  %35 = load i32, i32* %src_width, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %37 = load i32, i32* %alpha, align 4
  call void @reduce_row(i8* %33, i8* %34, i32 %35, i32 %36, i32 %37)
  %38 = load i32, i32* %dst_width, align 4
  %39 = load i32, i32* %bytes.addr, align 4
  %mul15 = mul nsw i32 %38, %39
  %40 = load i8*, i8** %dst_ptr, align 8
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %40, i64 %idx.ext16
  store i8* %add.ptr17, i8** %dst_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %41 = load i32, i32* %y, align 4
  %add18 = add nsw i32 %41, 2
  store i32 %add18, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i8*, i8** %src_buf, align 8
  call void @g_free(i8* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reduce_buffer(i8* %src, i8* %dst, i32 %bytes, i32 %width, i32 %height, i32 %alpha) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %src_buf = alloca i8*, align 8
  %row0 = alloca i8*, align 8
  %row1 = alloca i8*, align 8
  %row2 = alloca i8*, align 8
  %y = alloca i32, align 4
  %pos = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dstptr = alloca i8*, align 8
  %rowstride = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %dst_width, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  %3 = load i32, i32* %rowstride, align 4
  %mul1 = mul nsw i32 %3, 3
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %src_buf, align 8
  %4 = load i8*, i8** %src_buf, align 8
  store i8* %4, i8** %row0, align 8
  %5 = load i8*, i8** %row0, align 8
  %6 = load i32, i32* %rowstride, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %row1, align 8
  %7 = load i8*, i8** %row1, align 8
  %8 = load i32, i32* %rowstride, align 4
  %idx.ext2 = sext i32 %8 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 %idx.ext2
  store i8* %add.ptr3, i8** %row2, align 8
  %9 = load i8*, i8** %dst.addr, align 8
  store i8* %9, i8** %dstptr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %12, 1
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %y, align 4
  %sub7 = sub nsw i32 %13, 1
  %sub8 = sub nsw i32 0, %sub7
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i32, i32* %y, align 4
  %sub9 = sub nsw i32 %14, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub8, %cond.true ], [ %sub9, %cond.false ]
  %15 = load i32, i32* %rowstride, align 4
  %mul10 = mul nsw i32 %cond, %15
  store i32 %mul10, i32* %pos, align 4
  %16 = load i8*, i8** %row0, align 8
  %17 = load i8*, i8** %src.addr, align 8
  %18 = load i32, i32* %pos, align 4
  %idx.ext11 = sext i32 %18 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 %idx.ext11
  %19 = load i32, i32* %rowstride, align 4
  %conv13 = sext i32 %19 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %add.ptr12, i64 %conv13, i32 1, i1 false)
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %rowstride, align 4
  %mul14 = mul nsw i32 %20, %21
  store i32 %mul14, i32* %pos, align 4
  %22 = load i8*, i8** %row1, align 8
  %23 = load i8*, i8** %src.addr, align 8
  %24 = load i32, i32* %pos, align 4
  %idx.ext15 = sext i32 %24 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %23, i64 %idx.ext15
  %25 = load i32, i32* %rowstride, align 4
  %conv17 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %add.ptr16, i64 %conv17, i32 1, i1 false)
  %26 = load i32, i32* %y, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, i32* %rowstride, align 4
  %mul18 = mul nsw i32 %add, %27
  store i32 %mul18, i32* %pos, align 4
  %28 = load i8*, i8** %row2, align 8
  %29 = load i8*, i8** %src.addr, align 8
  %30 = load i32, i32* %pos, align 4
  %idx.ext19 = sext i32 %30 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %29, i64 %idx.ext19
  %31 = load i32, i32* %rowstride, align 4
  %conv21 = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %add.ptr20, i64 %conv21, i32 1, i1 false)
  %32 = load i8*, i8** %src_buf, align 8
  %33 = load i8*, i8** %dstptr, align 8
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %bytes.addr, align 4
  %36 = load i32, i32* %alpha.addr, align 4
  call void @reduce_row(i8* %32, i8* %33, i32 %34, i32 %35, i32 %36)
  %37 = load i32, i32* %dst_width, align 4
  %38 = load i32, i32* %bytes.addr, align 4
  %mul22 = mul nsw i32 %37, %38
  %39 = load i8*, i8** %dstptr, align 8
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %39, i64 %idx.ext23
  store i8* %add.ptr24, i8** %dstptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %40 = load i32, i32* %y, align 4
  %add25 = add nsw i32 %40, 2
  store i32 %add25, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i8*, i8** %src_buf, align 8
  call void @g_free(i8* %41)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reduce_bilinear(%struct._PixelRegion* %dstPR, i8* %src, i32 %source_w, i32 %source_h, i32 %bytes) #0 {
entry:
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %src.addr = alloca i8*, align 8
  %source_w.addr = alloca i32, align 4
  %source_h.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %scale = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %xfrac = alloca double, align 8
  %yfrac = alloca double, align 8
  %s00 = alloca double, align 8
  %s01 = alloca double, align 8
  %s10 = alloca double, align 8
  %s11 = alloca double, align 8
  %value = alloca i8, align 1
  %dst = alloca i8*, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %source_w, i32* %source_w.addr, align 4
  store i32 %source_h, i32* %source_h.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %source_h.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %scale, align 8
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 8
  %4 = load i32, i32* %w, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h2, align 4
  %mul = mul nsw i32 %4, %6
  %7 = load i32, i32* %bytes.addr, align 4
  %mul3 = mul nsw i32 %mul, %7
  %conv4 = sext i32 %mul3 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv4, i64 1)
  store i8* %call, i8** %dst, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 9
  %10 = load i32, i32* %h5, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %11 to double
  %12 = load double, double* %scale, align 8
  %div8 = fdiv double %conv7, %12
  store double %div8, double* %yfrac, align 8
  %13 = load double, double* %yfrac, align 8
  %call9 = call double @floor(double %13) #4
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %y0, align 4
  %14 = load double, double* %yfrac, align 8
  %call11 = call double @ceil(double %14) #4
  %conv12 = fptosi double %call11 to i32
  store i32 %conv12, i32* %y1, align 4
  %15 = load double, double* %yfrac, align 8
  %16 = load i32, i32* %y0, align 4
  %conv13 = sitofp i32 %16 to double
  %sub = fsub double %15, %conv13
  store double %sub, double* %yfrac, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.74, %for.body
  %17 = load i32, i32* %x, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 8
  %19 = load i32, i32* %w15, align 4
  %cmp16 = icmp slt i32 %17, %19
  br i1 %cmp16, label %for.body.18, label %for.end.76

for.body.18:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %x, align 4
  %conv19 = sitofp i32 %20 to double
  %21 = load double, double* %scale, align 8
  %div20 = fdiv double %conv19, %21
  store double %div20, double* %xfrac, align 8
  %22 = load double, double* %xfrac, align 8
  %call21 = call double @floor(double %22) #4
  %conv22 = fptosi double %call21 to i32
  store i32 %conv22, i32* %x0, align 4
  %23 = load double, double* %xfrac, align 8
  %call23 = call double @ceil(double %23) #4
  %conv24 = fptosi double %call23 to i32
  store i32 %conv24, i32* %x1, align 4
  %24 = load double, double* %xfrac, align 8
  %25 = load i32, i32* %x0, align 4
  %conv25 = sitofp i32 %25 to double
  %sub26 = fsub double %24, %conv25
  store double %sub26, double* %xfrac, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body.18
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %bytes.addr, align 4
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %28 = load i32, i32* %x0, align 4
  %29 = load i32, i32* %y0, align 4
  %30 = load i32, i32* %source_w.addr, align 4
  %mul31 = mul nsw i32 %29, %30
  %add = add nsw i32 %28, %mul31
  %31 = load i32, i32* %bytes.addr, align 4
  %mul32 = mul nsw i32 %add, %31
  %32 = load i32, i32* %b, align 4
  %add33 = add nsw i32 %mul32, %32
  %idxprom = sext i32 %add33 to i64
  %33 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1
  %conv34 = uitofp i8 %34 to double
  store double %conv34, double* %s00, align 8
  %35 = load i32, i32* %x1, align 4
  %36 = load i32, i32* %y0, align 4
  %37 = load i32, i32* %source_w.addr, align 4
  %mul35 = mul nsw i32 %36, %37
  %add36 = add nsw i32 %35, %mul35
  %38 = load i32, i32* %bytes.addr, align 4
  %mul37 = mul nsw i32 %add36, %38
  %39 = load i32, i32* %b, align 4
  %add38 = add nsw i32 %mul37, %39
  %idxprom39 = sext i32 %add38 to i64
  %40 = load i8*, i8** %src.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %40, i64 %idxprom39
  %41 = load i8, i8* %arrayidx40, align 1
  %conv41 = uitofp i8 %41 to double
  store double %conv41, double* %s10, align 8
  %42 = load i32, i32* %x0, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %source_w.addr, align 4
  %mul42 = mul nsw i32 %43, %44
  %add43 = add nsw i32 %42, %mul42
  %45 = load i32, i32* %bytes.addr, align 4
  %mul44 = mul nsw i32 %add43, %45
  %46 = load i32, i32* %b, align 4
  %add45 = add nsw i32 %mul44, %46
  %idxprom46 = sext i32 %add45 to i64
  %47 = load i8*, i8** %src.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %47, i64 %idxprom46
  %48 = load i8, i8* %arrayidx47, align 1
  %conv48 = uitofp i8 %48 to double
  store double %conv48, double* %s01, align 8
  %49 = load i32, i32* %x1, align 4
  %50 = load i32, i32* %y1, align 4
  %51 = load i32, i32* %source_w.addr, align 4
  %mul49 = mul nsw i32 %50, %51
  %add50 = add nsw i32 %49, %mul49
  %52 = load i32, i32* %bytes.addr, align 4
  %mul51 = mul nsw i32 %add50, %52
  %53 = load i32, i32* %b, align 4
  %add52 = add nsw i32 %mul51, %53
  %idxprom53 = sext i32 %add52 to i64
  %54 = load i8*, i8** %src.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %54, i64 %idxprom53
  %55 = load i8, i8* %arrayidx54, align 1
  %conv55 = uitofp i8 %55 to double
  store double %conv55, double* %s11, align 8
  %56 = load double, double* %yfrac, align 8
  %sub56 = fsub double 1.000000e+00, %56
  %57 = load double, double* %xfrac, align 8
  %sub57 = fsub double 1.000000e+00, %57
  %58 = load double, double* %s00, align 8
  %mul58 = fmul double %sub57, %58
  %59 = load double, double* %xfrac, align 8
  %60 = load double, double* %s01, align 8
  %mul59 = fmul double %59, %60
  %add60 = fadd double %mul58, %mul59
  %mul61 = fmul double %sub56, %add60
  %61 = load double, double* %yfrac, align 8
  %62 = load double, double* %xfrac, align 8
  %sub62 = fsub double 1.000000e+00, %62
  %63 = load double, double* %s10, align 8
  %mul63 = fmul double %sub62, %63
  %64 = load double, double* %xfrac, align 8
  %65 = load double, double* %s11, align 8
  %mul64 = fmul double %64, %65
  %add65 = fadd double %mul63, %mul64
  %mul66 = fmul double %61, %add65
  %add67 = fadd double %mul61, %mul66
  %conv68 = fptosi double %add67 to i32
  %conv69 = trunc i32 %conv68 to i8
  store i8 %conv69, i8* %value, align 1
  %66 = load i8, i8* %value, align 1
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* %bytes.addr, align 4
  %mul70 = mul nsw i32 %67, %68
  %69 = load i32, i32* %b, align 4
  %add71 = add nsw i32 %mul70, %69
  %idxprom72 = sext i32 %add71 to i64
  %70 = load i8*, i8** %dst, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %70, i64 %idxprom72
  store i8 %66, i8* %arrayidx73, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %71 = load i32, i32* %b, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %72 = load i32, i32* %x, align 4
  %inc75 = add nsw i32 %72, 1
  store i32 %inc75, i32* %x, align 4
  br label %for.cond.14

for.end.76:                                       ; preds = %for.cond.14
  %73 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %74 = load i32, i32* %y, align 4
  %75 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w77 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %75, i32 0, i32 8
  %76 = load i32, i32* %w77, align 4
  %77 = load i8*, i8** %dst, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %73, i32 0, i32 %74, i32 %76, i8* %77)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.76
  %78 = load i32, i32* %y, align 4
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, i32* %y, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reduce_bilinear_pr(%struct._PixelRegion* %dstPR, %struct._PixelRegion* %srcPR) #0 {
entry:
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %scale = alloca double, align 8
  %xfrac = alloca double, align 8
  %yfrac = alloca double, align 8
  %s00 = alloca double, align 8
  %s01 = alloca double, align 8
  %s10 = alloca double, align 8
  %s11 = alloca double, align 8
  %value = alloca i8, align 1
  %dst = alloca i8*, align 8
  %src0 = alloca i8*, align 8
  %src1 = alloca i8*, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %bytes1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 10
  %1 = load i32, i32* %bytes1, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h2, align 4
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  call void @copy_region(%struct._PixelRegion* %6, %struct._PixelRegion* %7)
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 9
  %9 = load i32, i32* %h3, align 4
  %conv = sitofp i32 %9 to double
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 9
  %11 = load i32, i32* %h4, align 4
  %conv5 = sitofp i32 %11 to double
  %div = fdiv double %conv, %conv5
  store double %div, double* %scale, align 8
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 8
  %13 = load i32, i32* %w, align 4
  %14 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %13, %14
  %conv6 = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv6, i64 1)
  store i8* %call, i8** %src0, align 8
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %15, i32 0, i32 8
  %16 = load i32, i32* %w7, align 4
  %17 = load i32, i32* %bytes, align 4
  %mul8 = mul nsw i32 %16, %17
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @g_malloc0_n(i64 %conv9, i64 1)
  store i8* %call10, i8** %src1, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 8
  %19 = load i32, i32* %w11, align 4
  %20 = load i32, i32* %bytes, align 4
  %mul12 = mul nsw i32 %19, %20
  %conv13 = sext i32 %mul12 to i64
  %call14 = call noalias i8* @g_malloc0_n(i64 %conv13, i64 1)
  store i8* %call14, i8** %dst, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %if.end
  %21 = load i32, i32* %y, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 9
  %23 = load i32, i32* %h15, align 4
  %cmp16 = icmp slt i32 %21, %23
  br i1 %cmp16, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %y, align 4
  %conv18 = sitofp i32 %24 to double
  %25 = load double, double* %scale, align 8
  %div19 = fdiv double %conv18, %25
  store double %div19, double* %yfrac, align 8
  %26 = load double, double* %yfrac, align 8
  %call20 = call double @floor(double %26) #4
  %conv21 = fptosi double %call20 to i32
  store i32 %conv21, i32* %y0, align 4
  %27 = load double, double* %yfrac, align 8
  %call22 = call double @ceil(double %27) #4
  %conv23 = fptosi double %call22 to i32
  store i32 %conv23, i32* %y1, align 4
  %28 = load double, double* %yfrac, align 8
  %29 = load i32, i32* %y0, align 4
  %conv24 = sitofp i32 %29 to double
  %sub = fsub double %28, %conv24
  store double %sub, double* %yfrac, align 8
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %31 = load i32, i32* %y0, align 4
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 8
  %33 = load i32, i32* %w25, align 4
  %34 = load i8*, i8** %src0, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %30, i32 0, i32 %31, i32 %33, i8* %34, i32 1)
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %36 = load i32, i32* %y1, align 4
  %37 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w26 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %37, i32 0, i32 8
  %38 = load i32, i32* %w26, align 4
  %39 = load i8*, i8** %src1, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %35, i32 0, i32 %36, i32 %38, i8* %39, i32 1)
  store i32 0, i32* %x, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.78, %for.body
  %40 = load i32, i32* %x, align 4
  %41 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w28 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %41, i32 0, i32 8
  %42 = load i32, i32* %w28, align 4
  %cmp29 = icmp slt i32 %40, %42
  br i1 %cmp29, label %for.body.31, label %for.end.80

for.body.31:                                      ; preds = %for.cond.27
  %43 = load i32, i32* %x, align 4
  %conv32 = sitofp i32 %43 to double
  %44 = load double, double* %scale, align 8
  %div33 = fdiv double %conv32, %44
  store double %div33, double* %xfrac, align 8
  %45 = load double, double* %xfrac, align 8
  %call34 = call double @floor(double %45) #4
  %conv35 = fptosi double %call34 to i32
  store i32 %conv35, i32* %x0, align 4
  %46 = load double, double* %xfrac, align 8
  %call36 = call double @ceil(double %46) #4
  %conv37 = fptosi double %call36 to i32
  store i32 %conv37, i32* %x1, align 4
  %47 = load double, double* %xfrac, align 8
  %48 = load i32, i32* %x0, align 4
  %conv38 = sitofp i32 %48 to double
  %sub39 = fsub double %47, %conv38
  store double %sub39, double* %xfrac, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body.31
  %49 = load i32, i32* %b, align 4
  %50 = load i32, i32* %bytes, align 4
  %cmp41 = icmp slt i32 %49, %50
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %51 = load i32, i32* %x0, align 4
  %52 = load i32, i32* %bytes, align 4
  %mul44 = mul nsw i32 %51, %52
  %53 = load i32, i32* %b, align 4
  %add = add nsw i32 %mul44, %53
  %idxprom = sext i32 %add to i64
  %54 = load i8*, i8** %src0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %idxprom
  %55 = load i8, i8* %arrayidx, align 1
  %conv45 = uitofp i8 %55 to double
  store double %conv45, double* %s00, align 8
  %56 = load i32, i32* %x1, align 4
  %57 = load i32, i32* %bytes, align 4
  %mul46 = mul nsw i32 %56, %57
  %58 = load i32, i32* %b, align 4
  %add47 = add nsw i32 %mul46, %58
  %idxprom48 = sext i32 %add47 to i64
  %59 = load i8*, i8** %src0, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %59, i64 %idxprom48
  %60 = load i8, i8* %arrayidx49, align 1
  %conv50 = uitofp i8 %60 to double
  store double %conv50, double* %s01, align 8
  %61 = load i32, i32* %x0, align 4
  %62 = load i32, i32* %bytes, align 4
  %mul51 = mul nsw i32 %61, %62
  %63 = load i32, i32* %b, align 4
  %add52 = add nsw i32 %mul51, %63
  %idxprom53 = sext i32 %add52 to i64
  %64 = load i8*, i8** %src1, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %64, i64 %idxprom53
  %65 = load i8, i8* %arrayidx54, align 1
  %conv55 = uitofp i8 %65 to double
  store double %conv55, double* %s10, align 8
  %66 = load i32, i32* %x1, align 4
  %67 = load i32, i32* %bytes, align 4
  %mul56 = mul nsw i32 %66, %67
  %68 = load i32, i32* %b, align 4
  %add57 = add nsw i32 %mul56, %68
  %idxprom58 = sext i32 %add57 to i64
  %69 = load i8*, i8** %src1, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %69, i64 %idxprom58
  %70 = load i8, i8* %arrayidx59, align 1
  %conv60 = uitofp i8 %70 to double
  store double %conv60, double* %s11, align 8
  %71 = load double, double* %yfrac, align 8
  %sub61 = fsub double 1.000000e+00, %71
  %72 = load double, double* %xfrac, align 8
  %sub62 = fsub double 1.000000e+00, %72
  %73 = load double, double* %s00, align 8
  %mul63 = fmul double %sub62, %73
  %74 = load double, double* %xfrac, align 8
  %75 = load double, double* %s01, align 8
  %mul64 = fmul double %74, %75
  %add65 = fadd double %mul63, %mul64
  %mul66 = fmul double %sub61, %add65
  %76 = load double, double* %yfrac, align 8
  %77 = load double, double* %xfrac, align 8
  %sub67 = fsub double 1.000000e+00, %77
  %78 = load double, double* %s10, align 8
  %mul68 = fmul double %sub67, %78
  %79 = load double, double* %xfrac, align 8
  %80 = load double, double* %s11, align 8
  %mul69 = fmul double %79, %80
  %add70 = fadd double %mul68, %mul69
  %mul71 = fmul double %76, %add70
  %add72 = fadd double %mul66, %mul71
  %conv73 = fptoui double %add72 to i8
  store i8 %conv73, i8* %value, align 1
  %81 = load i8, i8* %value, align 1
  %82 = load i32, i32* %x, align 4
  %83 = load i32, i32* %bytes, align 4
  %mul74 = mul nsw i32 %82, %83
  %84 = load i32, i32* %b, align 4
  %add75 = add nsw i32 %mul74, %84
  %idxprom76 = sext i32 %add75 to i64
  %85 = load i8*, i8** %dst, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %85, i64 %idxprom76
  store i8 %81, i8* %arrayidx77, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %86 = load i32, i32* %b, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end
  %87 = load i32, i32* %x, align 4
  %inc79 = add nsw i32 %87, 1
  store i32 %inc79, i32* %x, align 4
  br label %for.cond.27

for.end.80:                                       ; preds = %for.cond.27
  %88 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %89 = load i32, i32* %y, align 4
  %90 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w81 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %90, i32 0, i32 8
  %91 = load i32, i32* %w81, align 4
  %92 = load i8*, i8** %dst, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %88, i32 0, i32 %89, i32 %91, i8* %92)
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.80
  %93 = load i32, i32* %y, align 4
  %inc83 = add nsw i32 %93, 1
  store i32 %inc83, i32* %y, align 4
  br label %for.cond

for.end.84:                                       ; preds = %for.cond
  %94 = load i8*, i8** %src0, align 8
  call void @g_free(i8* %94)
  %95 = load i8*, i8** %src1, align 8
  call void @g_free(i8* %95)
  %96 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %96)
  br label %return

return:                                           ; preds = %for.end.84, %if.then
  ret void
}

declare void @pixel_region_get_row(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @reduce_row(i8* %src, i8* %dst, i32 %width, i32 %bytes, i32 %alpha) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %b = alloca i32, align 4
  %start = alloca i32, align 4
  %alpha_sum = alloca double, align 8
  %sum = alloca double, align 8
  %src0 = alloca i8*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dstptr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %dstptr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  store i8* %1, i8** %src0, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %5 = load i8*, i8** %src1, align 8
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %6, %7
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 %idx.ext2
  store i8* %add.ptr3, i8** %src2, align 8
  %8 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %start, align 4
  store double 0.000000e+00, double* %sum, align 8
  store double 0.000000e+00, double* %alpha_sum, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.171, %entry
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.173

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %start, align 4
  store i32 %11, i32* %b, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %b, align 4
  %cmp5 = icmp sge i32 %12, 0
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %x, align 4
  %sub7 = sub nsw i32 %13, 1
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.6
  %14 = load i32, i32* %x, align 4
  %sub9 = sub nsw i32 %14, 1
  %sub10 = sub nsw i32 0, %sub9
  br label %cond.end

cond.false:                                       ; preds = %for.body.6
  %15 = load i32, i32* %x, align 4
  %sub11 = sub nsw i32 %15, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ %sub11, %cond.false ]
  %16 = load i32, i32* %bytes.addr, align 4
  %mul12 = mul nsw i32 %cond, %16
  %17 = load i32, i32* %b, align 4
  %add = add nsw i32 %mul12, %17
  %idxprom = sext i32 %add to i64
  %18 = load i8*, i8** %src0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %mul13 = mul nsw i32 %conv, 12
  %conv14 = sitofp i32 %mul13 to double
  %20 = load double, double* %sum, align 8
  %add15 = fadd double %20, %conv14
  store double %add15, double* %sum, align 8
  %21 = load i32, i32* %x, align 4
  %cmp16 = icmp slt i32 %21, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end
  %22 = load i32, i32* %x, align 4
  %sub19 = sub nsw i32 0, %22
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  %23 = load i32, i32* %x, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %sub19, %cond.true.18 ], [ %23, %cond.false.20 ]
  %24 = load i32, i32* %bytes.addr, align 4
  %mul23 = mul nsw i32 %cond22, %24
  %25 = load i32, i32* %b, align 4
  %add24 = add nsw i32 %mul23, %25
  %idxprom25 = sext i32 %add24 to i64
  %26 = load i8*, i8** %src0, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 %idxprom25
  %27 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %27 to i32
  %mul28 = mul nsw i32 %conv27, 32
  %conv29 = sitofp i32 %mul28 to double
  %28 = load double, double* %sum, align 8
  %add30 = fadd double %28, %conv29
  store double %add30, double* %sum, align 8
  %29 = load i32, i32* %x, align 4
  %add31 = add nsw i32 %29, 1
  %cmp32 = icmp slt i32 %add31, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.end.21
  %30 = load i32, i32* %x, align 4
  %add35 = add nsw i32 %30, 1
  %sub36 = sub nsw i32 0, %add35
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.end.21
  %31 = load i32, i32* %x, align 4
  %add38 = add nsw i32 %31, 1
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.34
  %cond40 = phi i32 [ %sub36, %cond.true.34 ], [ %add38, %cond.false.37 ]
  %32 = load i32, i32* %bytes.addr, align 4
  %mul41 = mul nsw i32 %cond40, %32
  %33 = load i32, i32* %b, align 4
  %add42 = add nsw i32 %mul41, %33
  %idxprom43 = sext i32 %add42 to i64
  %34 = load i8*, i8** %src0, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 %idxprom43
  %35 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %35 to i32
  %mul46 = mul nsw i32 %conv45, 12
  %conv47 = sitofp i32 %mul46 to double
  %36 = load double, double* %sum, align 8
  %add48 = fadd double %36, %conv47
  store double %add48, double* %sum, align 8
  %37 = load i32, i32* %x, align 4
  %sub49 = sub nsw i32 %37, 1
  %cmp50 = icmp slt i32 %sub49, 0
  br i1 %cmp50, label %cond.true.52, label %cond.false.55

cond.true.52:                                     ; preds = %cond.end.39
  %38 = load i32, i32* %x, align 4
  %sub53 = sub nsw i32 %38, 1
  %sub54 = sub nsw i32 0, %sub53
  br label %cond.end.57

cond.false.55:                                    ; preds = %cond.end.39
  %39 = load i32, i32* %x, align 4
  %sub56 = sub nsw i32 %39, 1
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.52
  %cond58 = phi i32 [ %sub54, %cond.true.52 ], [ %sub56, %cond.false.55 ]
  %40 = load i32, i32* %bytes.addr, align 4
  %mul59 = mul nsw i32 %cond58, %40
  %41 = load i32, i32* %b, align 4
  %add60 = add nsw i32 %mul59, %41
  %idxprom61 = sext i32 %add60 to i64
  %42 = load i8*, i8** %src1, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %42, i64 %idxprom61
  %43 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %43 to i32
  %mul64 = mul nsw i32 %conv63, 32
  %conv65 = sitofp i32 %mul64 to double
  %44 = load double, double* %sum, align 8
  %add66 = fadd double %44, %conv65
  store double %add66, double* %sum, align 8
  %45 = load i32, i32* %x, align 4
  %cmp67 = icmp slt i32 %45, 0
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.end.57
  %46 = load i32, i32* %x, align 4
  %sub70 = sub nsw i32 0, %46
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.57
  %47 = load i32, i32* %x, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.69
  %cond73 = phi i32 [ %sub70, %cond.true.69 ], [ %47, %cond.false.71 ]
  %48 = load i32, i32* %bytes.addr, align 4
  %mul74 = mul nsw i32 %cond73, %48
  %49 = load i32, i32* %b, align 4
  %add75 = add nsw i32 %mul74, %49
  %idxprom76 = sext i32 %add75 to i64
  %50 = load i8*, i8** %src1, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %50, i64 %idxprom76
  %51 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %51 to i32
  %mul79 = mul nsw i32 %conv78, 86
  %conv80 = sitofp i32 %mul79 to double
  %52 = load double, double* %sum, align 8
  %add81 = fadd double %52, %conv80
  store double %add81, double* %sum, align 8
  %53 = load i32, i32* %x, align 4
  %add82 = add nsw i32 %53, 1
  %cmp83 = icmp slt i32 %add82, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.end.72
  %54 = load i32, i32* %x, align 4
  %add86 = add nsw i32 %54, 1
  %sub87 = sub nsw i32 0, %add86
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.end.72
  %55 = load i32, i32* %x, align 4
  %add89 = add nsw i32 %55, 1
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.85
  %cond91 = phi i32 [ %sub87, %cond.true.85 ], [ %add89, %cond.false.88 ]
  %56 = load i32, i32* %bytes.addr, align 4
  %mul92 = mul nsw i32 %cond91, %56
  %57 = load i32, i32* %b, align 4
  %add93 = add nsw i32 %mul92, %57
  %idxprom94 = sext i32 %add93 to i64
  %58 = load i8*, i8** %src1, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %58, i64 %idxprom94
  %59 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %59 to i32
  %mul97 = mul nsw i32 %conv96, 32
  %conv98 = sitofp i32 %mul97 to double
  %60 = load double, double* %sum, align 8
  %add99 = fadd double %60, %conv98
  store double %add99, double* %sum, align 8
  %61 = load i32, i32* %x, align 4
  %sub100 = sub nsw i32 %61, 1
  %cmp101 = icmp slt i32 %sub100, 0
  br i1 %cmp101, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.end.90
  %62 = load i32, i32* %x, align 4
  %sub104 = sub nsw i32 %62, 1
  %sub105 = sub nsw i32 0, %sub104
  br label %cond.end.108

cond.false.106:                                   ; preds = %cond.end.90
  %63 = load i32, i32* %x, align 4
  %sub107 = sub nsw i32 %63, 1
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %cond.true.103
  %cond109 = phi i32 [ %sub105, %cond.true.103 ], [ %sub107, %cond.false.106 ]
  %64 = load i32, i32* %bytes.addr, align 4
  %mul110 = mul nsw i32 %cond109, %64
  %65 = load i32, i32* %b, align 4
  %add111 = add nsw i32 %mul110, %65
  %idxprom112 = sext i32 %add111 to i64
  %66 = load i8*, i8** %src2, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %66, i64 %idxprom112
  %67 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %67 to i32
  %mul115 = mul nsw i32 %conv114, 12
  %conv116 = sitofp i32 %mul115 to double
  %68 = load double, double* %sum, align 8
  %add117 = fadd double %68, %conv116
  store double %add117, double* %sum, align 8
  %69 = load i32, i32* %x, align 4
  %cmp118 = icmp slt i32 %69, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %cond.end.108
  %70 = load i32, i32* %x, align 4
  %sub121 = sub nsw i32 0, %70
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.end.108
  %71 = load i32, i32* %x, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.120
  %cond124 = phi i32 [ %sub121, %cond.true.120 ], [ %71, %cond.false.122 ]
  %72 = load i32, i32* %bytes.addr, align 4
  %mul125 = mul nsw i32 %cond124, %72
  %73 = load i32, i32* %b, align 4
  %add126 = add nsw i32 %mul125, %73
  %idxprom127 = sext i32 %add126 to i64
  %74 = load i8*, i8** %src2, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %74, i64 %idxprom127
  %75 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %75 to i32
  %mul130 = mul nsw i32 %conv129, 32
  %conv131 = sitofp i32 %mul130 to double
  %76 = load double, double* %sum, align 8
  %add132 = fadd double %76, %conv131
  store double %add132, double* %sum, align 8
  %77 = load i32, i32* %x, align 4
  %add133 = add nsw i32 %77, 1
  %cmp134 = icmp slt i32 %add133, 0
  br i1 %cmp134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.end.123
  %78 = load i32, i32* %x, align 4
  %add137 = add nsw i32 %78, 1
  %sub138 = sub nsw i32 0, %add137
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.end.123
  %79 = load i32, i32* %x, align 4
  %add140 = add nsw i32 %79, 1
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.136
  %cond142 = phi i32 [ %sub138, %cond.true.136 ], [ %add140, %cond.false.139 ]
  %80 = load i32, i32* %bytes.addr, align 4
  %mul143 = mul nsw i32 %cond142, %80
  %81 = load i32, i32* %b, align 4
  %add144 = add nsw i32 %mul143, %81
  %idxprom145 = sext i32 %add144 to i64
  %82 = load i8*, i8** %src2, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %82, i64 %idxprom145
  %83 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %83 to i32
  %mul148 = mul nsw i32 %conv147, 12
  %conv149 = sitofp i32 %mul148 to double
  %84 = load double, double* %sum, align 8
  %add150 = fadd double %84, %conv149
  store double %add150, double* %sum, align 8
  %85 = load double, double* %sum, align 8
  %div = fdiv double %85, 2.730000e+02
  store double %div, double* %sum, align 8
  %86 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.141
  %87 = load i32, i32* %b, align 4
  %88 = load i32, i32* %alpha.addr, align 4
  %cmp151 = icmp eq i32 %87, %88
  br i1 %cmp151, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %89 = load double, double* %sum, align 8
  store double %89, double* %alpha_sum, align 8
  %90 = load double, double* %alpha_sum, align 8
  %conv153 = fptoui double %90 to i8
  %91 = load i32, i32* %b, align 4
  %idxprom154 = sext i32 %91 to i64
  %92 = load i8*, i8** %dstptr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %92, i64 %idxprom154
  store i8 %conv153, i8* %arrayidx155, align 1
  br label %if.end.168

if.else:                                          ; preds = %land.lhs.true, %cond.end.141
  %93 = load i32, i32* %alpha.addr, align 4
  %tobool156 = icmp ne i32 %93, 0
  br i1 %tobool156, label %if.then.157, label %if.end.164

if.then.157:                                      ; preds = %if.else
  %94 = load double, double* %alpha_sum, align 8
  %cmp158 = fcmp une double %94, 0.000000e+00
  br i1 %cmp158, label %if.then.160, label %if.else.163

if.then.160:                                      ; preds = %if.then.157
  %95 = load double, double* %sum, align 8
  %96 = load double, double* %alpha_sum, align 8
  %div161 = fdiv double 2.620000e+02, %96
  %mul162 = fmul double %95, %div161
  store double %mul162, double* %sum, align 8
  br label %if.end

if.else.163:                                      ; preds = %if.then.157
  store double 0.000000e+00, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.163, %if.then.160
  br label %if.end.164

if.end.164:                                       ; preds = %if.end, %if.else
  %97 = load double, double* %sum, align 8
  %conv165 = fptoui double %97 to i8
  %98 = load i32, i32* %b, align 4
  %idxprom166 = sext i32 %98 to i64
  %99 = load i8*, i8** %dstptr, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %99, i64 %idxprom166
  store i8 %conv165, i8* %arrayidx167, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.164, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.168
  %100 = load i32, i32* %b, align 4
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %101 = load i32, i32* %bytes.addr, align 4
  %102 = load i8*, i8** %dstptr, align 8
  %idx.ext169 = sext i32 %101 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %102, i64 %idx.ext169
  store i8* %add.ptr170, i8** %dstptr, align 8
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end
  %103 = load i32, i32* %x, align 4
  %add172 = add nsw i32 %103, 2
  store i32 %add172, i32* %x, align 4
  br label %for.cond

for.end.173:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare void @pixel_region_set_row(%struct._PixelRegion*, i32, i32, i32, i8*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
