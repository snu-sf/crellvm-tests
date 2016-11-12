; ModuleID = './app/composite/gimp-composite-generic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }
%struct._GRand = type opaque

@gimp_composite_pixel_bpp = external constant [0 x i8], align 1
@gimp_composite_pixel_alphap = external constant [0 x i8], align 1
@burn_lut = internal global [256 x [256 x i8]] zeroinitializer, align 16
@add_lut = internal global [511 x i8] zeroinitializer, align 16
@gimp_composite_pixel_alpha = external constant [0 x i32], align 4
@random_table = internal global [4096 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @gimp_composite_convert_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %D = alloca i8*, align 8
  %A = alloca i8*, align 8
  %bpp_A = alloca i32, align 4
  %bpp_D = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  store i8* %1, i8** %D, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 0
  %3 = load i8*, i8** %A2, align 8
  store i8* %3, i8** %A, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 5
  %5 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %bpp_A, align 4
  %7 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %7, i32 0, i32 7
  %8 = load i32, i32* %pixelformat_D, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  store i32 %conv5, i32* %bpp_D, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %10 = load i32, i32* %i, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 4
  %12 = load i64, i64* %n_pixels, align 8
  %cmp = icmp ult i64 %conv6, %12
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %bpp_A, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %15 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i8*, i8** %A, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %18 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i8*, i8** %D, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %idxprom14
  store i8 %17, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %21 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i8*, i8** %D, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  store i8 -1, i8* %arrayidx17, align 1
  %23 = load i32, i32* %bpp_A, align 4
  %24 = load i8*, i8** %A, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %A, align 8
  %25 = load i32, i32* %bpp_D, align 4
  %26 = load i8*, i8** %D, align 8
  %idx.ext18 = sext i32 %25 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %26, i64 %idx.ext18
  store i8* %add.ptr19, i8** %D, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_color_any_any_any_generic(i8* %dest, i8* %color, i32 %w, i32 %bytes) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %color.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %c0 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %longd = alloca i32*, align 8
  %longc = alloca i32, align 4
  %shortd = alloca i16*, align 8
  %shortc = alloca i16, align 2
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i8*, i8** %color.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %4 = trunc i32 %conv to i8
  %5 = load i32, i32* %w.addr, align 4
  %conv1 = zext i32 %5 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 %4, i64 %conv1, i32 1, i1 false)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load i8*, i8** %color.addr, align 8
  %7 = bitcast i8* %6 to i16*
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  store i16 %8, i16* %shortc, align 2
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = bitcast i8* %9 to i16*
  store i16* %10, i16** %shortd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.2
  %11 = load i32, i32* %w.addr, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %w.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i16, i16* %shortc, align 2
  %13 = load i16*, i16** %shortd, align 8
  store i16 %12, i16* %13, align 2
  %14 = load i16*, i16** %shortd, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr, i16** %shortd, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %15 = load i8*, i8** %color.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx4, align 1
  store i8 %16, i8* %c0, align 1
  %17 = load i8*, i8** %color.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx5, align 1
  store i8 %18, i8* %c1, align 1
  %19 = load i8*, i8** %color.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx6, align 1
  store i8 %20, i8* %c2, align 1
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.10, %sw.bb.3
  %21 = load i32, i32* %w.addr, align 4
  %dec8 = add i32 %21, -1
  store i32 %dec8, i32* %w.addr, align 4
  %tobool9 = icmp ne i32 %21, 0
  br i1 %tobool9, label %while.body.10, label %while.end.14

while.body.10:                                    ; preds = %while.cond.7
  %22 = load i8, i8* %c0, align 1
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %arrayidx11, align 1
  %24 = load i8, i8* %c1, align 1
  %25 = load i8*, i8** %dest.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %arrayidx12, align 1
  %26 = load i8, i8* %c2, align 1
  %27 = load i8*, i8** %dest.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %arrayidx13, align 1
  %28 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 3
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %while.cond.7

while.end.14:                                     ; preds = %while.cond.7
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %29 = load i8*, i8** %color.addr, align 8
  %30 = bitcast i8* %29 to i32*
  %arrayidx16 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx16, align 4
  store i32 %31, i32* %longc, align 4
  %32 = load i8*, i8** %dest.addr, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %longd, align 8
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.20, %sw.bb.15
  %34 = load i32, i32* %w.addr, align 4
  %dec18 = add i32 %34, -1
  store i32 %dec18, i32* %w.addr, align 4
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %while.body.20, label %while.end.22

while.body.20:                                    ; preds = %while.cond.17
  %35 = load i32, i32* %longc, align 4
  %36 = load i32*, i32** %longd, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %longd, align 8
  %incdec.ptr21 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr21, i32** %longd, align 8
  br label %while.cond.17

while.end.22:                                     ; preds = %while.cond.17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.26, %sw.default
  %38 = load i32, i32* %w.addr, align 4
  %dec24 = add i32 %38, -1
  store i32 %dec24, i32* %w.addr, align 4
  %tobool25 = icmp ne i32 %38, 0
  br i1 %tobool25, label %while.body.26, label %while.end.29

while.body.26:                                    ; preds = %while.cond.23
  %39 = load i8*, i8** %dest.addr, align 8
  %40 = load i8*, i8** %color.addr, align 8
  %41 = load i32, i32* %bytes.addr, align 4
  %conv27 = zext i32 %41 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %conv27, i32 1, i1 false)
  %42 = load i32, i32* %bytes.addr, align 4
  %43 = load i8*, i8** %dest.addr, align 8
  %idx.ext = zext i32 %42 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr28, i8** %dest.addr, align 8
  br label %while.cond.23

while.end.29:                                     ; preds = %while.cond.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.29, %while.end.22, %while.end.14, %while.end, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gimp_composite_blend_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %blend = alloca i8, align 1
  %bytes = alloca i32, align 4
  %w = alloca i32, align 4
  %b = alloca i32, align 4
  %blend25 = alloca i8, align 1
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %blend1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 11
  %blend2 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %blend1, i32 0, i32 0
  %7 = load i32, i32* %blend2, align 4
  %conv = trunc i32 %7 to i8
  store i8 %conv, i8* %blend, align 1
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %10 to i32
  store i32 %conv3, i32* %bytes, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 4
  %12 = load i64, i64* %n_pixels, align 8
  %conv4 = trunc i64 %12 to i32
  store i32 %conv4, i32* %w, align 4
  %13 = load i8, i8* %blend, align 1
  %conv6 = zext i8 %13 to i32
  %sub = sub nsw i32 255, %conv6
  %conv7 = trunc i32 %sub to i8
  store i8 %conv7, i8* %blend25, align 1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %14 = load i32, i32* %w, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %w, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %bytes, align 4
  %cmp = icmp ult i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %b, align 4
  %idxprom9 = zext i32 %17 to i64
  %18 = load i8*, i8** %src1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  %19 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %19 to i32
  %20 = load i8, i8* %blend25, align 1
  %conv12 = zext i8 %20 to i32
  %mul = mul nsw i32 %conv11, %conv12
  %21 = load i32, i32* %b, align 4
  %idxprom13 = zext i32 %21 to i64
  %22 = load i8*, i8** %src2, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 %idxprom13
  %23 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %23 to i32
  %24 = load i8, i8* %blend, align 1
  %conv16 = zext i8 %24 to i32
  %mul17 = mul nsw i32 %conv15, %conv16
  %add = add nsw i32 %mul, %mul17
  %div = sdiv i32 %add, 255
  %conv18 = trunc i32 %div to i8
  %25 = load i32, i32* %b, align 4
  %idxprom19 = zext i32 %25 to i64
  %26 = load i8*, i8** %dest, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %b, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %bytes, align 4
  %29 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %30 = load i32, i32* %bytes, align 4
  %31 = load i8*, i8** %src2, align 8
  %idx.ext21 = zext i32 %30 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %31, i64 %idx.ext21
  store i8* %add.ptr22, i8** %src2, align 8
  %32 = load i32, i32* %bytes, align 4
  %33 = load i8*, i8** %dest, align 8
  %idx.ext23 = zext i32 %32 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %33, i64 %idx.ext23
  store i8* %add.ptr24, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_darken_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %s1 = alloca i8, align 1
  %s2 = alloca i8, align 1
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  store i8 %28, i8* %s1, align 1
  %29 = load i32, i32* %b, align 4
  %idxprom18 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 %idxprom18
  %31 = load i8, i8* %arrayidx19, align 1
  store i8 %31, i8* %s2, align 1
  %32 = load i8, i8* %s1, align 1
  %conv20 = zext i8 %32 to i32
  %33 = load i8, i8* %s2, align 1
  %conv21 = zext i8 %33 to i32
  %cmp22 = icmp slt i32 %conv20, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %for.body
  %34 = load i8, i8* %s1, align 1
  %conv25 = zext i8 %34 to i32
  br label %cond.end.28

cond.false.26:                                    ; preds = %for.body
  %35 = load i8, i8* %s2, align 1
  %conv27 = zext i8 %35 to i32
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %conv25, %cond.true.24 ], [ %conv27, %cond.false.26 ]
  %conv30 = trunc i32 %cond29 to i8
  %36 = load i32, i32* %b, align 4
  %idxprom31 = zext i32 %36 to i64
  %37 = load i8*, i8** %dest, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %37, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %38 = load i32, i32* %b, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %has_alpha1, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %40 = load i32, i32* %has_alpha2, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %41 = load i32, i32* %alpha, align 4
  %idxprom35 = zext i32 %41 to i64
  %42 = load i8*, i8** %src1, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 %idxprom35
  %43 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %43 to i32
  %44 = load i32, i32* %alpha, align 4
  %idxprom38 = zext i32 %44 to i64
  %45 = load i8*, i8** %src2, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 %idxprom38
  %46 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %46 to i32
  %cmp41 = icmp slt i32 %conv37, %conv40
  br i1 %cmp41, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %if.then
  %47 = load i32, i32* %alpha, align 4
  %idxprom44 = zext i32 %47 to i64
  %48 = load i8*, i8** %src1, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 %idxprom44
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  br label %cond.end.51

cond.false.47:                                    ; preds = %if.then
  %50 = load i32, i32* %alpha, align 4
  %idxprom48 = zext i32 %50 to i64
  %51 = load i8*, i8** %src2, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %51, i64 %idxprom48
  %52 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %52 to i32
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.47, %cond.true.43
  %cond52 = phi i32 [ %conv46, %cond.true.43 ], [ %conv50, %cond.false.47 ]
  %conv53 = trunc i32 %cond52 to i8
  %53 = load i32, i32* %alpha, align 4
  %idxprom54 = zext i32 %53 to i64
  %54 = load i8*, i8** %dest, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %54, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true, %for.end
  %55 = load i32, i32* %has_alpha2, align 4
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %if.else
  %56 = load i32, i32* %alpha, align 4
  %idxprom58 = zext i32 %56 to i64
  %57 = load i8*, i8** %src2, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %57, i64 %idxprom58
  %58 = load i8, i8* %arrayidx59, align 1
  %59 = load i32, i32* %alpha, align 4
  %idxprom60 = zext i32 %59 to i64
  %60 = load i8*, i8** %dest, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %60, i64 %idxprom60
  store i8 %58, i8* %arrayidx61, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.57, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %cond.end.51
  %61 = load i32, i32* %bytes1, align 4
  %62 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %63 = load i32, i32* %bytes2, align 4
  %64 = load i8*, i8** %src2, align 8
  %idx.ext63 = zext i32 %63 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %64, i64 %idx.ext63
  store i8* %add.ptr64, i8** %src2, align 8
  %65 = load i32, i32* %bytes2, align 4
  %66 = load i8*, i8** %dest, align 8
  %idx.ext65 = zext i32 %65 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %66, i64 %idx.ext65
  store i8* %add.ptr66, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_lighten_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %s1 = alloca i8, align 1
  %s2 = alloca i8, align 1
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  store i8 %28, i8* %s1, align 1
  %29 = load i32, i32* %b, align 4
  %idxprom18 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 %idxprom18
  %31 = load i8, i8* %arrayidx19, align 1
  store i8 %31, i8* %s2, align 1
  %32 = load i8, i8* %s1, align 1
  %conv20 = zext i8 %32 to i32
  %33 = load i8, i8* %s2, align 1
  %conv21 = zext i8 %33 to i32
  %cmp22 = icmp slt i32 %conv20, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %for.body
  %34 = load i8, i8* %s2, align 1
  %conv25 = zext i8 %34 to i32
  br label %cond.end.28

cond.false.26:                                    ; preds = %for.body
  %35 = load i8, i8* %s1, align 1
  %conv27 = zext i8 %35 to i32
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %conv25, %cond.true.24 ], [ %conv27, %cond.false.26 ]
  %conv30 = trunc i32 %cond29 to i8
  %36 = load i32, i32* %b, align 4
  %idxprom31 = zext i32 %36 to i64
  %37 = load i8*, i8** %dest, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %37, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %38 = load i32, i32* %b, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %has_alpha1, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %40 = load i32, i32* %has_alpha2, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %41 = load i32, i32* %alpha, align 4
  %idxprom35 = zext i32 %41 to i64
  %42 = load i8*, i8** %src1, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %42, i64 %idxprom35
  %43 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %43 to i32
  %44 = load i32, i32* %alpha, align 4
  %idxprom38 = zext i32 %44 to i64
  %45 = load i8*, i8** %src2, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 %idxprom38
  %46 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %46 to i32
  %cmp41 = icmp slt i32 %conv37, %conv40
  br i1 %cmp41, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %if.then
  %47 = load i32, i32* %alpha, align 4
  %idxprom44 = zext i32 %47 to i64
  %48 = load i8*, i8** %src1, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 %idxprom44
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  br label %cond.end.51

cond.false.47:                                    ; preds = %if.then
  %50 = load i32, i32* %alpha, align 4
  %idxprom48 = zext i32 %50 to i64
  %51 = load i8*, i8** %src2, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %51, i64 %idxprom48
  %52 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %52 to i32
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.47, %cond.true.43
  %cond52 = phi i32 [ %conv46, %cond.true.43 ], [ %conv50, %cond.false.47 ]
  %conv53 = trunc i32 %cond52 to i8
  %53 = load i32, i32* %alpha, align 4
  %idxprom54 = zext i32 %53 to i64
  %54 = load i8*, i8** %dest, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %54, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true, %for.end
  %55 = load i32, i32* %has_alpha2, align 4
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %if.else
  %56 = load i32, i32* %alpha, align 4
  %idxprom58 = zext i32 %56 to i64
  %57 = load i8*, i8** %src2, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %57, i64 %idxprom58
  %58 = load i8, i8* %arrayidx59, align 1
  %59 = load i32, i32* %alpha, align 4
  %idxprom60 = zext i32 %59 to i64
  %60 = load i8*, i8** %dest, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %60, i64 %idxprom60
  store i8 %58, i8* %arrayidx61, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.57, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %cond.end.51
  %61 = load i32, i32* %bytes1, align 4
  %62 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %63 = load i32, i32* %bytes2, align 4
  %64 = load i8*, i8** %src2, align 8
  %idx.ext63 = zext i32 %63 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %64, i64 %idx.ext63
  store i8* %add.ptr64, i8** %src2, align 8
  %65 = load i32, i32* %bytes2, align 4
  %66 = load i8*, i8** %dest, align 8
  %idx.ext65 = zext i32 %65 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %66, i64 %idx.ext65
  store i8* %add.ptr66, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_hue_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %bytes1, align 4
  %cmp = icmp ugt i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else.53

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.then
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %src1, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  store i32 %conv9, i32* %r1, align 4
  %20 = load i8*, i8** %src1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %21 to i32
  store i32 %conv11, i32* %g1, align 4
  %22 = load i8*, i8** %src1, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  store i32 %conv13, i32* %b1, align 4
  %24 = load i8*, i8** %src2, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  store i32 %conv15, i32* %r2, align 4
  %26 = load i8*, i8** %src2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  store i32 %conv17, i32* %g2, align 4
  %28 = load i8*, i8** %src2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  store i32 %conv19, i32* %b2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %r1, i32* %g1, i32* %b1)
  call void @gimp_rgb_to_hsv_int(i32* %r2, i32* %g2, i32* %b2)
  %30 = load i32, i32* %g2, align 4
  %tobool20 = icmp ne i32 %30, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %while.body
  %31 = load i32, i32* %r2, align 4
  store i32 %31, i32* %r1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %while.body
  call void @gimp_hsv_to_rgb_int(i32* %r1, i32* %g1, i32* %b1)
  %32 = load i32, i32* %r1, align 4
  %conv22 = trunc i32 %32 to i8
  %33 = load i8*, i8** %dest, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %conv22, i8* %arrayidx23, align 1
  %34 = load i32, i32* %g1, align 4
  %conv24 = trunc i32 %34 to i8
  %35 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %conv24, i8* %arrayidx25, align 1
  %36 = load i32, i32* %b1, align 4
  %conv26 = trunc i32 %36 to i8
  %37 = load i8*, i8** %dest, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %conv26, i8* %arrayidx27, align 1
  %38 = load i32, i32* %has_alpha1, align 4
  %tobool28 = icmp ne i32 %38, 0
  br i1 %tobool28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %39 = load i32, i32* %has_alpha2, align 4
  %tobool29 = icmp ne i32 %39, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %40 = load i8*, i8** %src1, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %41 to i32
  %42 = load i8*, i8** %src2, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %43 to i32
  %cmp35 = icmp slt i32 %conv32, %conv34
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %44 = load i8*, i8** %src1, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %45 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %46 = load i8*, i8** %src2, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %47 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv38, %cond.true ], [ %conv40, %cond.false ]
  %conv41 = trunc i32 %cond to i8
  %48 = load i8*, i8** %dest, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %48, i64 3
  store i8 %conv41, i8* %arrayidx42, align 1
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true, %if.end
  %49 = load i32, i32* %has_alpha2, align 4
  %tobool43 = icmp ne i32 %49, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.else
  %50 = load i8*, i8** %src2, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx45, align 1
  %52 = load i8*, i8** %dest, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %52, i64 3
  store i8 %51, i8* %arrayidx46, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %cond.end
  %53 = load i32, i32* %bytes1, align 4
  %54 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %55 = load i32, i32* %bytes2, align 4
  %56 = load i8*, i8** %src2, align 8
  %idx.ext49 = zext i32 %55 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %56, i64 %idx.ext49
  store i8* %add.ptr50, i8** %src2, align 8
  %57 = load i32, i32* %bytes2, align 4
  %58 = load i8*, i8** %dest, align 8
  %idx.ext51 = zext i32 %57 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %58, i64 %idx.ext51
  store i8* %add.ptr52, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.56

if.else.53:                                       ; preds = %entry
  %59 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B54 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %59, i32 0, i32 1
  %60 = load i8*, i8** %B54, align 8
  %61 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D55 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %61, i32 0, i32 2
  store i8* %60, i8** %D55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %while.end
  ret void
}

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #2

declare void @gimp_hsv_to_rgb_int(i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @gimp_composite_saturation_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %bytes1, align 4
  %cmp = icmp ugt i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else.50

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.then
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %src1, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  store i32 %conv9, i32* %r1, align 4
  %20 = load i8*, i8** %src1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %21 to i32
  store i32 %conv11, i32* %g1, align 4
  %22 = load i8*, i8** %src1, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  store i32 %conv13, i32* %b1, align 4
  %24 = load i8*, i8** %src2, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  store i32 %conv15, i32* %r2, align 4
  %26 = load i8*, i8** %src2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  store i32 %conv17, i32* %g2, align 4
  %28 = load i8*, i8** %src2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  store i32 %conv19, i32* %b2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %r1, i32* %g1, i32* %b1)
  call void @gimp_rgb_to_hsv_int(i32* %r2, i32* %g2, i32* %b2)
  %30 = load i32, i32* %g2, align 4
  store i32 %30, i32* %g1, align 4
  call void @gimp_hsv_to_rgb_int(i32* %r1, i32* %g1, i32* %b1)
  %31 = load i32, i32* %r1, align 4
  %conv20 = trunc i32 %31 to i8
  %32 = load i8*, i8** %dest, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  %33 = load i32, i32* %g1, align 4
  %conv22 = trunc i32 %33 to i8
  %34 = load i8*, i8** %dest, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %35 = load i32, i32* %b1, align 4
  %conv24 = trunc i32 %35 to i8
  %36 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1
  %37 = load i32, i32* %has_alpha1, align 4
  %tobool26 = icmp ne i32 %37, 0
  br i1 %tobool26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %38 = load i32, i32* %has_alpha2, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  %39 = load i8*, i8** %src1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %40 to i32
  %41 = load i8*, i8** %src2, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %42 to i32
  %cmp33 = icmp slt i32 %conv30, %conv32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %43 = load i8*, i8** %src1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %43, i64 3
  %44 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %44 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %45 = load i8*, i8** %src2, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %46 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv36, %cond.true ], [ %conv38, %cond.false ]
  %conv39 = trunc i32 %cond to i8
  %47 = load i8*, i8** %dest, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 3
  store i8 %conv39, i8* %arrayidx40, align 1
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %while.body
  %48 = load i32, i32* %has_alpha2, align 4
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.else
  %49 = load i8*, i8** %src2, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %49, i64 3
  %50 = load i8, i8* %arrayidx43, align 1
  %51 = load i8*, i8** %dest, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %arrayidx44, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %cond.end
  %52 = load i32, i32* %bytes1, align 4
  %53 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %54 = load i32, i32* %bytes2, align 4
  %55 = load i8*, i8** %src2, align 8
  %idx.ext46 = zext i32 %54 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %55, i64 %idx.ext46
  store i8* %add.ptr47, i8** %src2, align 8
  %56 = load i32, i32* %bytes2, align 4
  %57 = load i8*, i8** %dest, align 8
  %idx.ext48 = zext i32 %56 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %57, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.53

if.else.50:                                       ; preds = %entry
  %58 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B51 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %58, i32 0, i32 1
  %59 = load i8*, i8** %B51, align 8
  %60 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D52 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %60, i32 0, i32 2
  store i8* %59, i8** %D52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_value_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %bytes1, align 4
  %cmp = icmp ugt i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else.50

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.then
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %src1, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  store i32 %conv9, i32* %r1, align 4
  %20 = load i8*, i8** %src1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %21 to i32
  store i32 %conv11, i32* %g1, align 4
  %22 = load i8*, i8** %src1, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  store i32 %conv13, i32* %b1, align 4
  %24 = load i8*, i8** %src2, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  store i32 %conv15, i32* %r2, align 4
  %26 = load i8*, i8** %src2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  store i32 %conv17, i32* %g2, align 4
  %28 = load i8*, i8** %src2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  store i32 %conv19, i32* %b2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %r1, i32* %g1, i32* %b1)
  call void @gimp_rgb_to_hsv_int(i32* %r2, i32* %g2, i32* %b2)
  %30 = load i32, i32* %b2, align 4
  store i32 %30, i32* %b1, align 4
  call void @gimp_hsv_to_rgb_int(i32* %r1, i32* %g1, i32* %b1)
  %31 = load i32, i32* %r1, align 4
  %conv20 = trunc i32 %31 to i8
  %32 = load i8*, i8** %dest, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  %33 = load i32, i32* %g1, align 4
  %conv22 = trunc i32 %33 to i8
  %34 = load i8*, i8** %dest, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %35 = load i32, i32* %b1, align 4
  %conv24 = trunc i32 %35 to i8
  %36 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1
  %37 = load i32, i32* %has_alpha1, align 4
  %tobool26 = icmp ne i32 %37, 0
  br i1 %tobool26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %38 = load i32, i32* %has_alpha2, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  %39 = load i8*, i8** %src1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %40 to i32
  %41 = load i8*, i8** %src2, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %42 to i32
  %cmp33 = icmp slt i32 %conv30, %conv32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %43 = load i8*, i8** %src1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %43, i64 3
  %44 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %44 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %45 = load i8*, i8** %src2, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %46 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv36, %cond.true ], [ %conv38, %cond.false ]
  %conv39 = trunc i32 %cond to i8
  %47 = load i8*, i8** %dest, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 3
  store i8 %conv39, i8* %arrayidx40, align 1
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %while.body
  %48 = load i32, i32* %has_alpha2, align 4
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.else
  %49 = load i8*, i8** %src2, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %49, i64 3
  %50 = load i8, i8* %arrayidx43, align 1
  %51 = load i8*, i8** %dest, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %arrayidx44, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %cond.end
  %52 = load i32, i32* %bytes1, align 4
  %53 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %54 = load i32, i32* %bytes2, align 4
  %55 = load i8*, i8** %src2, align 8
  %idx.ext46 = zext i32 %54 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %55, i64 %idx.ext46
  store i8* %add.ptr47, i8** %src2, align 8
  %56 = load i32, i32* %bytes2, align 4
  %57 = load i8*, i8** %dest, align 8
  %idx.ext48 = zext i32 %56 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %57, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.53

if.else.50:                                       ; preds = %entry
  %58 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B51 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %58, i32 0, i32 1
  %59 = load i8*, i8** %B51, align 8
  %60 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D52 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %60, i32 0, i32 2
  store i8* %59, i8** %D52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_color_only_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %bytes1, align 4
  %cmp = icmp ugt i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else.50

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.then
  %17 = load i32, i32* %length, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %src1, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  store i32 %conv9, i32* %r1, align 4
  %20 = load i8*, i8** %src1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %21 to i32
  store i32 %conv11, i32* %g1, align 4
  %22 = load i8*, i8** %src1, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  store i32 %conv13, i32* %b1, align 4
  %24 = load i8*, i8** %src2, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  store i32 %conv15, i32* %r2, align 4
  %26 = load i8*, i8** %src2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  store i32 %conv17, i32* %g2, align 4
  %28 = load i8*, i8** %src2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  store i32 %conv19, i32* %b2, align 4
  call void @gimp_rgb_to_hsl_int(i32* %r1, i32* %g1, i32* %b1)
  call void @gimp_rgb_to_hsl_int(i32* %r2, i32* %g2, i32* %b2)
  %30 = load i32, i32* %r2, align 4
  store i32 %30, i32* %r1, align 4
  %31 = load i32, i32* %g2, align 4
  store i32 %31, i32* %g1, align 4
  call void @gimp_hsl_to_rgb_int(i32* %r1, i32* %g1, i32* %b1)
  %32 = load i32, i32* %r1, align 4
  %conv20 = trunc i32 %32 to i8
  %33 = load i8*, i8** %dest, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  %34 = load i32, i32* %g1, align 4
  %conv22 = trunc i32 %34 to i8
  %35 = load i8*, i8** %dest, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %36 = load i32, i32* %b1, align 4
  %conv24 = trunc i32 %36 to i8
  %37 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1
  %38 = load i32, i32* %has_alpha1, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %39 = load i32, i32* %has_alpha2, align 4
  %tobool27 = icmp ne i32 %39, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  %40 = load i8*, i8** %src1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %41 to i32
  %42 = load i8*, i8** %src2, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %43 to i32
  %cmp33 = icmp slt i32 %conv30, %conv32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %44 = load i8*, i8** %src1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %45 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %46 = load i8*, i8** %src2, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %47 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv36, %cond.true ], [ %conv38, %cond.false ]
  %conv39 = trunc i32 %cond to i8
  %48 = load i8*, i8** %dest, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %48, i64 3
  store i8 %conv39, i8* %arrayidx40, align 1
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %while.body
  %49 = load i32, i32* %has_alpha2, align 4
  %tobool41 = icmp ne i32 %49, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.else
  %50 = load i8*, i8** %src2, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx43, align 1
  %52 = load i8*, i8** %dest, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %52, i64 3
  store i8 %51, i8* %arrayidx44, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %cond.end
  %53 = load i32, i32* %bytes1, align 4
  %54 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %55 = load i32, i32* %bytes2, align 4
  %56 = load i8*, i8** %src2, align 8
  %idx.ext46 = zext i32 %55 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %56, i64 %idx.ext46
  store i8* %add.ptr47, i8** %src2, align 8
  %57 = load i32, i32* %bytes2, align 4
  %58 = load i8*, i8** %dest, align 8
  %idx.ext48 = zext i32 %57 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %58, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.53

if.else.50:                                       ; preds = %entry
  %59 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B51 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %59, i32 0, i32 1
  %60 = load i8*, i8** %B51, align 8
  %61 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D52 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %61, i32 0, i32 2
  store i8* %60, i8** %D52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %while.end
  ret void
}

declare void @gimp_rgb_to_hsl_int(i32*, i32*, i32*) #2

declare void @gimp_hsl_to_rgb_int(i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @gimp_composite_behind_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 5
  %4 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 12, i32 0
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 13
  store i32 %cond, i32* %combine, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_multiply_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  %23 = load i32, i32* %has_alpha1, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.11
  %24 = load i32, i32* %has_alpha2, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %cond.end.45, %if.then
  %25 = load i32, i32* %length, align 4
  %dec = add i32 %25, -1
  store i32 %dec, i32* %length, align 4
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %alpha, align 4
  %cmp16 = icmp ult i32 %26, %27
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %b, align 4
  %idxprom18 = zext i32 %28 to i64
  %29 = load i8*, i8** %src1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %29, i64 %idxprom18
  %30 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %30 to i32
  %31 = load i32, i32* %b, align 4
  %idxprom21 = zext i32 %31 to i64
  %32 = load i8*, i8** %src2, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %32, i64 %idxprom21
  %33 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %33 to i32
  %mul = mul nsw i32 %conv20, %conv23
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4
  %34 = load i32, i32* %tmp, align 4
  %shr = lshr i32 %34, 8
  %35 = load i32, i32* %tmp, align 4
  %add24 = add i32 %shr, %35
  %shr25 = lshr i32 %add24, 8
  %conv26 = trunc i32 %shr25 to i8
  %36 = load i32, i32* %b, align 4
  %idxprom27 = zext i32 %36 to i64
  %37 = load i8*, i8** %dest, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %37, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %b, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %alpha, align 4
  %idxprom29 = zext i32 %39 to i64
  %40 = load i8*, i8** %src1, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %40, i64 %idxprom29
  %41 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %41 to i32
  %42 = load i32, i32* %alpha, align 4
  %idxprom32 = zext i32 %42 to i64
  %43 = load i8*, i8** %src2, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %43, i64 %idxprom32
  %44 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %44 to i32
  %cmp35 = icmp slt i32 %conv31, %conv34
  br i1 %cmp35, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %for.end
  %45 = load i32, i32* %alpha, align 4
  %idxprom38 = zext i32 %45 to i64
  %46 = load i8*, i8** %src1, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %46, i64 %idxprom38
  %47 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %47 to i32
  br label %cond.end.45

cond.false.41:                                    ; preds = %for.end
  %48 = load i32, i32* %alpha, align 4
  %idxprom42 = zext i32 %48 to i64
  %49 = load i8*, i8** %src2, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %49, i64 %idxprom42
  %50 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %50 to i32
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.37
  %cond46 = phi i32 [ %conv40, %cond.true.37 ], [ %conv44, %cond.false.41 ]
  %conv47 = trunc i32 %cond46 to i8
  %51 = load i32, i32* %alpha, align 4
  %idxprom48 = zext i32 %51 to i64
  %52 = load i8*, i8** %dest, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %52, i64 %idxprom48
  store i8 %conv47, i8* %arrayidx49, align 1
  %53 = load i32, i32* %bytes1, align 4
  %54 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %55 = load i32, i32* %bytes2, align 4
  %56 = load i8*, i8** %src2, align 8
  %idx.ext50 = zext i32 %55 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %56, i64 %idx.ext50
  store i8* %add.ptr51, i8** %src2, align 8
  %57 = load i32, i32* %bytes2, align 4
  %58 = load i8*, i8** %dest, align 8
  %idx.ext52 = zext i32 %57 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %58, i64 %idx.ext52
  store i8* %add.ptr53, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.125

if.else:                                          ; preds = %land.lhs.true, %cond.end.11
  %59 = load i32, i32* %has_alpha2, align 4
  %tobool54 = icmp ne i32 %59, 0
  br i1 %tobool54, label %if.then.55, label %if.else.92

if.then.55:                                       ; preds = %if.else
  br label %while.cond.56

while.cond.56:                                    ; preds = %for.end.80, %if.then.55
  %60 = load i32, i32* %length, align 4
  %dec57 = add i32 %60, -1
  store i32 %dec57, i32* %length, align 4
  %tobool58 = icmp ne i32 %60, 0
  br i1 %tobool58, label %while.body.59, label %while.end.91

while.body.59:                                    ; preds = %while.cond.56
  store i32 0, i32* %b, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %while.body.59
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %alpha, align 4
  %cmp61 = icmp ult i32 %61, %62
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %63 = load i32, i32* %b, align 4
  %idxprom64 = zext i32 %63 to i64
  %64 = load i8*, i8** %src1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %64, i64 %idxprom64
  %65 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %65 to i32
  %66 = load i32, i32* %b, align 4
  %idxprom67 = zext i32 %66 to i64
  %67 = load i8*, i8** %src2, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %67, i64 %idxprom67
  %68 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %68 to i32
  %mul70 = mul nsw i32 %conv66, %conv69
  %add71 = add nsw i32 %mul70, 128
  store i32 %add71, i32* %tmp, align 4
  %69 = load i32, i32* %tmp, align 4
  %shr72 = lshr i32 %69, 8
  %70 = load i32, i32* %tmp, align 4
  %add73 = add i32 %shr72, %70
  %shr74 = lshr i32 %add73, 8
  %conv75 = trunc i32 %shr74 to i8
  %71 = load i32, i32* %b, align 4
  %idxprom76 = zext i32 %71 to i64
  %72 = load i8*, i8** %dest, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %72, i64 %idxprom76
  store i8 %conv75, i8* %arrayidx77, align 1
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.63
  %73 = load i32, i32* %b, align 4
  %inc79 = add i32 %73, 1
  store i32 %inc79, i32* %b, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %74 = load i32, i32* %alpha, align 4
  %idxprom81 = zext i32 %74 to i64
  %75 = load i8*, i8** %src2, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %75, i64 %idxprom81
  %76 = load i8, i8* %arrayidx82, align 1
  %77 = load i32, i32* %alpha, align 4
  %idxprom83 = zext i32 %77 to i64
  %78 = load i8*, i8** %dest, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %78, i64 %idxprom83
  store i8 %76, i8* %arrayidx84, align 1
  %79 = load i32, i32* %bytes1, align 4
  %80 = load i8*, i8** %src1, align 8
  %idx.ext85 = zext i32 %79 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %80, i64 %idx.ext85
  store i8* %add.ptr86, i8** %src1, align 8
  %81 = load i32, i32* %bytes2, align 4
  %82 = load i8*, i8** %src2, align 8
  %idx.ext87 = zext i32 %81 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %82, i64 %idx.ext87
  store i8* %add.ptr88, i8** %src2, align 8
  %83 = load i32, i32* %bytes2, align 4
  %84 = load i8*, i8** %dest, align 8
  %idx.ext89 = zext i32 %83 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %84, i64 %idx.ext89
  store i8* %add.ptr90, i8** %dest, align 8
  br label %while.cond.56

while.end.91:                                     ; preds = %while.cond.56
  br label %if.end

if.else.92:                                       ; preds = %if.else
  br label %while.cond.93

while.cond.93:                                    ; preds = %for.end.117, %if.else.92
  %85 = load i32, i32* %length, align 4
  %dec94 = add i32 %85, -1
  store i32 %dec94, i32* %length, align 4
  %tobool95 = icmp ne i32 %85, 0
  br i1 %tobool95, label %while.body.96, label %while.end.124

while.body.96:                                    ; preds = %while.cond.93
  store i32 0, i32* %b, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.115, %while.body.96
  %86 = load i32, i32* %b, align 4
  %87 = load i32, i32* %alpha, align 4
  %cmp98 = icmp ult i32 %86, %87
  br i1 %cmp98, label %for.body.100, label %for.end.117

for.body.100:                                     ; preds = %for.cond.97
  %88 = load i32, i32* %b, align 4
  %idxprom101 = zext i32 %88 to i64
  %89 = load i8*, i8** %src1, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %89, i64 %idxprom101
  %90 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %90 to i32
  %91 = load i32, i32* %b, align 4
  %idxprom104 = zext i32 %91 to i64
  %92 = load i8*, i8** %src2, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %92, i64 %idxprom104
  %93 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %93 to i32
  %mul107 = mul nsw i32 %conv103, %conv106
  %add108 = add nsw i32 %mul107, 128
  store i32 %add108, i32* %tmp, align 4
  %94 = load i32, i32* %tmp, align 4
  %shr109 = lshr i32 %94, 8
  %95 = load i32, i32* %tmp, align 4
  %add110 = add i32 %shr109, %95
  %shr111 = lshr i32 %add110, 8
  %conv112 = trunc i32 %shr111 to i8
  %96 = load i32, i32* %b, align 4
  %idxprom113 = zext i32 %96 to i64
  %97 = load i8*, i8** %dest, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %97, i64 %idxprom113
  store i8 %conv112, i8* %arrayidx114, align 1
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.100
  %98 = load i32, i32* %b, align 4
  %inc116 = add i32 %98, 1
  store i32 %inc116, i32* %b, align 4
  br label %for.cond.97

for.end.117:                                      ; preds = %for.cond.97
  %99 = load i32, i32* %bytes1, align 4
  %100 = load i8*, i8** %src1, align 8
  %idx.ext118 = zext i32 %99 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %100, i64 %idx.ext118
  store i8* %add.ptr119, i8** %src1, align 8
  %101 = load i32, i32* %bytes2, align 4
  %102 = load i8*, i8** %src2, align 8
  %idx.ext120 = zext i32 %101 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %102, i64 %idx.ext120
  store i8* %add.ptr121, i8** %src2, align 8
  %103 = load i32, i32* %bytes2, align 4
  %104 = load i8*, i8** %dest, align 8
  %idx.ext122 = zext i32 %103 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %104, i64 %idx.ext122
  store i8* %add.ptr123, i8** %dest, align 8
  br label %while.cond.93

while.end.124:                                    ; preds = %while.cond.93
  br label %if.end

if.end:                                           ; preds = %while.end.124, %while.end.91
  br label %if.end.125

if.end.125:                                       ; preds = %if.end, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_divide_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %28 to i32
  %mul = mul nsw i32 %conv18, 256
  %29 = load i32, i32* %b, align 4
  %idxprom19 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %idxprom19
  %31 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %31 to i32
  %add = add nsw i32 1, %conv21
  %div = sdiv i32 %mul, %add
  store i32 %div, i32* %result, align 4
  %32 = load i32, i32* %result, align 4
  %cmp22 = icmp ult i32 %32, 255
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %for.body
  %33 = load i32, i32* %result, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %for.body
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %33, %cond.true.24 ], [ 255, %cond.false.25 ]
  %conv28 = trunc i32 %cond27 to i8
  %34 = load i32, i32* %b, align 4
  %idxprom29 = zext i32 %34 to i64
  %35 = load i8*, i8** %dest, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %36 = load i32, i32* %b, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %has_alpha1, align 4
  %tobool31 = icmp ne i32 %37, 0
  br i1 %tobool31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %38 = load i32, i32* %has_alpha2, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %39 = load i32, i32* %alpha, align 4
  %idxprom33 = zext i32 %39 to i64
  %40 = load i8*, i8** %src1, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %40, i64 %idxprom33
  %41 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %41 to i32
  %42 = load i32, i32* %alpha, align 4
  %idxprom36 = zext i32 %42 to i64
  %43 = load i8*, i8** %src2, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %43, i64 %idxprom36
  %44 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %44 to i32
  %cmp39 = icmp slt i32 %conv35, %conv38
  br i1 %cmp39, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %if.then
  %45 = load i32, i32* %alpha, align 4
  %idxprom42 = zext i32 %45 to i64
  %46 = load i8*, i8** %src1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %46, i64 %idxprom42
  %47 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %47 to i32
  br label %cond.end.49

cond.false.45:                                    ; preds = %if.then
  %48 = load i32, i32* %alpha, align 4
  %idxprom46 = zext i32 %48 to i64
  %49 = load i8*, i8** %src2, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i64 %idxprom46
  %50 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %50 to i32
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.45, %cond.true.41
  %cond50 = phi i32 [ %conv44, %cond.true.41 ], [ %conv48, %cond.false.45 ]
  %conv51 = trunc i32 %cond50 to i8
  %51 = load i32, i32* %alpha, align 4
  %idxprom52 = zext i32 %51 to i64
  %52 = load i8*, i8** %dest, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %52, i64 %idxprom52
  store i8 %conv51, i8* %arrayidx53, align 1
  br label %if.end.60

if.else:                                          ; preds = %land.lhs.true, %for.end
  %53 = load i32, i32* %has_alpha2, align 4
  %tobool54 = icmp ne i32 %53, 0
  br i1 %tobool54, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %if.else
  %54 = load i32, i32* %alpha, align 4
  %idxprom56 = zext i32 %54 to i64
  %55 = load i8*, i8** %src2, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %55, i64 %idxprom56
  %56 = load i8, i8* %arrayidx57, align 1
  %57 = load i32, i32* %alpha, align 4
  %idxprom58 = zext i32 %57 to i64
  %58 = load i8*, i8** %dest, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %58, i64 %idxprom58
  store i8 %56, i8* %arrayidx59, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.55, %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end, %cond.end.49
  %59 = load i32, i32* %bytes1, align 4
  %60 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %61 = load i32, i32* %bytes2, align 4
  %62 = load i8*, i8** %src2, align 8
  %idx.ext61 = zext i32 %61 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %62, i64 %idx.ext61
  store i8* %add.ptr62, i8** %src2, align 8
  %63 = load i32, i32* %bytes2, align 4
  %64 = load i8*, i8** %dest, align 8
  %idx.ext63 = zext i32 %63 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %64, i64 %idx.ext63
  store i8* %add.ptr64, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_screen_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %28 to i32
  %sub19 = sub nsw i32 255, %conv18
  %29 = load i32, i32* %b, align 4
  %idxprom20 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 %idxprom20
  %31 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %31 to i32
  %sub23 = sub nsw i32 255, %conv22
  %mul = mul nsw i32 %sub19, %sub23
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4
  %32 = load i32, i32* %tmp, align 4
  %shr = lshr i32 %32, 8
  %33 = load i32, i32* %tmp, align 4
  %add24 = add i32 %shr, %33
  %shr25 = lshr i32 %add24, 8
  %sub26 = sub i32 255, %shr25
  %conv27 = trunc i32 %sub26 to i8
  %34 = load i32, i32* %b, align 4
  %idxprom28 = zext i32 %34 to i64
  %35 = load i8*, i8** %dest, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 %idxprom28
  store i8 %conv27, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %b, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %has_alpha1, align 4
  %tobool30 = icmp ne i32 %37, 0
  br i1 %tobool30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %38 = load i32, i32* %has_alpha2, align 4
  %tobool31 = icmp ne i32 %38, 0
  br i1 %tobool31, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %39 = load i32, i32* %alpha, align 4
  %idxprom32 = zext i32 %39 to i64
  %40 = load i8*, i8** %src1, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 %idxprom32
  %41 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %41 to i32
  %42 = load i32, i32* %alpha, align 4
  %idxprom35 = zext i32 %42 to i64
  %43 = load i8*, i8** %src2, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom35
  %44 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %44 to i32
  %cmp38 = icmp slt i32 %conv34, %conv37
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %if.then
  %45 = load i32, i32* %alpha, align 4
  %idxprom41 = zext i32 %45 to i64
  %46 = load i8*, i8** %src1, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %46, i64 %idxprom41
  %47 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %47 to i32
  br label %cond.end.48

cond.false.44:                                    ; preds = %if.then
  %48 = load i32, i32* %alpha, align 4
  %idxprom45 = zext i32 %48 to i64
  %49 = load i8*, i8** %src2, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %49, i64 %idxprom45
  %50 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %50 to i32
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.40
  %cond49 = phi i32 [ %conv43, %cond.true.40 ], [ %conv47, %cond.false.44 ]
  %conv50 = trunc i32 %cond49 to i8
  %51 = load i32, i32* %alpha, align 4
  %idxprom51 = zext i32 %51 to i64
  %52 = load i8*, i8** %dest, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %52, i64 %idxprom51
  store i8 %conv50, i8* %arrayidx52, align 1
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true, %for.end
  %53 = load i32, i32* %has_alpha2, align 4
  %tobool53 = icmp ne i32 %53, 0
  br i1 %tobool53, label %if.then.54, label %if.end

if.then.54:                                       ; preds = %if.else
  %54 = load i32, i32* %alpha, align 4
  %idxprom55 = zext i32 %54 to i64
  %55 = load i8*, i8** %src2, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %55, i64 %idxprom55
  %56 = load i8, i8* %arrayidx56, align 1
  %57 = load i32, i32* %alpha, align 4
  %idxprom57 = zext i32 %57 to i64
  %58 = load i8*, i8** %dest, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %idxprom57
  store i8 %56, i8* %arrayidx58, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.54, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %cond.end.48
  %59 = load i32, i32* %bytes1, align 4
  %60 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %61 = load i32, i32* %bytes2, align 4
  %62 = load i8*, i8** %src2, align 8
  %idx.ext60 = zext i32 %61 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %62, i64 %idx.ext60
  store i8* %add.ptr61, i8** %src2, align 8
  %63 = load i32, i32* %bytes2, align 4
  %64 = load i8*, i8** %dest, align 8
  %idx.ext62 = zext i32 %63 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %64, i64 %idx.ext62
  store i8* %add.ptr63, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_overlay_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmpM = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp15 = icmp ult i32 %24, %25
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom17 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  %28 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %28 to i32
  %29 = load i32, i32* %b, align 4
  %idxprom20 = zext i32 %29 to i64
  %30 = load i8*, i8** %src1, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 %idxprom20
  %31 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %31 to i32
  %32 = load i32, i32* %b, align 4
  %idxprom23 = zext i32 %32 to i64
  %33 = load i8*, i8** %src2, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %33, i64 %idxprom23
  %34 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %34 to i32
  %mul = mul nsw i32 2, %conv25
  %35 = load i32, i32* %b, align 4
  %idxprom26 = zext i32 %35 to i64
  %36 = load i8*, i8** %src1, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  %37 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %37 to i32
  %sub29 = sub nsw i32 255, %conv28
  %mul30 = mul nsw i32 %mul, %sub29
  %add = add nsw i32 %mul30, 128
  store i32 %add, i32* %tmpM, align 4
  %38 = load i32, i32* %tmpM, align 4
  %shr = lshr i32 %38, 8
  %39 = load i32, i32* %tmpM, align 4
  %add31 = add i32 %shr, %39
  %shr32 = lshr i32 %add31, 8
  %add33 = add i32 %conv22, %shr32
  %mul34 = mul i32 %conv19, %add33
  %add35 = add i32 %mul34, 128
  store i32 %add35, i32* %tmp, align 4
  %40 = load i32, i32* %tmp, align 4
  %shr36 = lshr i32 %40, 8
  %41 = load i32, i32* %tmp, align 4
  %add37 = add i32 %shr36, %41
  %shr38 = lshr i32 %add37, 8
  %conv39 = trunc i32 %shr38 to i8
  %42 = load i32, i32* %b, align 4
  %idxprom40 = zext i32 %42 to i64
  %43 = load i8*, i8** %dest, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %43, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %b, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %has_alpha1, align 4
  %tobool42 = icmp ne i32 %45, 0
  br i1 %tobool42, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %46 = load i32, i32* %has_alpha2, align 4
  %tobool43 = icmp ne i32 %46, 0
  br i1 %tobool43, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %47 = load i32, i32* %alpha, align 4
  %idxprom44 = zext i32 %47 to i64
  %48 = load i8*, i8** %src1, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 %idxprom44
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  %50 = load i32, i32* %alpha, align 4
  %idxprom47 = zext i32 %50 to i64
  %51 = load i8*, i8** %src2, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 %idxprom47
  %52 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %52 to i32
  %cmp50 = icmp slt i32 %conv46, %conv49
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %if.then
  %53 = load i32, i32* %alpha, align 4
  %idxprom53 = zext i32 %53 to i64
  %54 = load i8*, i8** %src1, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %54, i64 %idxprom53
  %55 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %55 to i32
  br label %cond.end.60

cond.false.56:                                    ; preds = %if.then
  %56 = load i32, i32* %alpha, align 4
  %idxprom57 = zext i32 %56 to i64
  %57 = load i8*, i8** %src2, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %57, i64 %idxprom57
  %58 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %58 to i32
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.56, %cond.true.52
  %cond61 = phi i32 [ %conv55, %cond.true.52 ], [ %conv59, %cond.false.56 ]
  %conv62 = trunc i32 %cond61 to i8
  %59 = load i32, i32* %alpha, align 4
  %idxprom63 = zext i32 %59 to i64
  %60 = load i8*, i8** %dest, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %60, i64 %idxprom63
  store i8 %conv62, i8* %arrayidx64, align 1
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true, %for.end
  %61 = load i32, i32* %has_alpha2, align 4
  %tobool65 = icmp ne i32 %61, 0
  br i1 %tobool65, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %if.else
  %62 = load i32, i32* %alpha, align 4
  %idxprom67 = zext i32 %62 to i64
  %63 = load i8*, i8** %src2, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %63, i64 %idxprom67
  %64 = load i8, i8* %arrayidx68, align 1
  %65 = load i32, i32* %alpha, align 4
  %idxprom69 = zext i32 %65 to i64
  %66 = load i8*, i8** %dest, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %66, i64 %idxprom69
  store i8 %64, i8* %arrayidx70, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.66, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end, %cond.end.60
  %67 = load i32, i32* %bytes1, align 4
  %68 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %69 = load i32, i32* %bytes2, align 4
  %70 = load i8*, i8** %src2, align 8
  %idx.ext72 = zext i32 %69 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %70, i64 %idx.ext72
  store i8* %add.ptr73, i8** %src2, align 8
  %71 = load i32, i32* %bytes2, align 4
  %72 = load i8*, i8** %dest, align 8
  %idx.ext74 = zext i32 %71 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %72, i64 %idx.ext74
  store i8* %add.ptr75, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_dodge_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %28 to i32
  %shl = shl i32 %conv18, 8
  store i32 %shl, i32* %tmp, align 4
  %29 = load i32, i32* %b, align 4
  %idxprom19 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %idxprom19
  %31 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %31 to i32
  %sub22 = sub nsw i32 256, %conv21
  %32 = load i32, i32* %tmp, align 4
  %div = udiv i32 %32, %sub22
  store i32 %div, i32* %tmp, align 4
  %33 = load i32, i32* %tmp, align 4
  %cmp23 = icmp ult i32 %33, 255
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %for.body
  %34 = load i32, i32* %tmp, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %for.body
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %34, %cond.true.25 ], [ 255, %cond.false.26 ]
  %conv29 = trunc i32 %cond28 to i8
  %35 = load i32, i32* %b, align 4
  %idxprom30 = zext i32 %35 to i64
  %36 = load i8*, i8** %dest, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.27
  %37 = load i32, i32* %b, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %has_alpha1, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %39 = load i32, i32* %has_alpha2, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %40 = load i32, i32* %alpha, align 4
  %idxprom34 = zext i32 %40 to i64
  %41 = load i8*, i8** %src1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %41, i64 %idxprom34
  %42 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %42 to i32
  %43 = load i32, i32* %alpha, align 4
  %idxprom37 = zext i32 %43 to i64
  %44 = load i8*, i8** %src2, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 %idxprom37
  %45 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %45 to i32
  %cmp40 = icmp slt i32 %conv36, %conv39
  br i1 %cmp40, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %if.then
  %46 = load i32, i32* %alpha, align 4
  %idxprom43 = zext i32 %46 to i64
  %47 = load i8*, i8** %src1, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 %idxprom43
  %48 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %48 to i32
  br label %cond.end.50

cond.false.46:                                    ; preds = %if.then
  %49 = load i32, i32* %alpha, align 4
  %idxprom47 = zext i32 %49 to i64
  %50 = load i8*, i8** %src2, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %50, i64 %idxprom47
  %51 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %51 to i32
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.46, %cond.true.42
  %cond51 = phi i32 [ %conv45, %cond.true.42 ], [ %conv49, %cond.false.46 ]
  %conv52 = trunc i32 %cond51 to i8
  %52 = load i32, i32* %alpha, align 4
  %idxprom53 = zext i32 %52 to i64
  %53 = load i8*, i8** %dest, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx54, align 1
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true, %for.end
  %54 = load i32, i32* %has_alpha2, align 4
  %tobool55 = icmp ne i32 %54, 0
  br i1 %tobool55, label %if.then.56, label %if.end

if.then.56:                                       ; preds = %if.else
  %55 = load i32, i32* %alpha, align 4
  %idxprom57 = zext i32 %55 to i64
  %56 = load i8*, i8** %src2, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %56, i64 %idxprom57
  %57 = load i8, i8* %arrayidx58, align 1
  %58 = load i32, i32* %alpha, align 4
  %idxprom59 = zext i32 %58 to i64
  %59 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %59, i64 %idxprom59
  store i8 %57, i8* %arrayidx60, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.56, %if.else
  br label %if.end.61

if.end.61:                                        ; preds = %if.end, %cond.end.50
  %60 = load i32, i32* %bytes1, align 4
  %61 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %62 = load i32, i32* %bytes2, align 4
  %63 = load i8*, i8** %src2, align 8
  %idx.ext62 = zext i32 %62 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %63, i64 %idx.ext62
  store i8* %add.ptr63, i8** %src2, align 8
  %64 = load i32, i32* %bytes2, align 4
  %65 = load i8*, i8** %dest, align 8
  %idx.ext64 = zext i32 %64 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %65, i64 %idx.ext64
  store i8* %add.ptr65, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_burn_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src2, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %idxprom18 = zext i8 %28 to i64
  %29 = load i32, i32* %b, align 4
  %idxprom19 = zext i32 %29 to i64
  %30 = load i8*, i8** %src1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %idxprom19
  %31 = load i8, i8* %arrayidx20, align 1
  %idxprom21 = zext i8 %31 to i64
  %arrayidx22 = getelementptr inbounds [256 x [256 x i8]], [256 x [256 x i8]]* @burn_lut, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx22, i32 0, i64 %idxprom18
  %32 = load i8, i8* %arrayidx23, align 1
  %33 = load i32, i32* %b, align 4
  %idxprom24 = zext i32 %33 to i64
  %34 = load i8*, i8** %dest, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 %idxprom24
  store i8 %32, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %b, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %has_alpha1, align 4
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %37 = load i32, i32* %has_alpha2, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %38 = load i32, i32* %alpha, align 4
  %idxprom28 = zext i32 %38 to i64
  %39 = load i8*, i8** %src1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %39, i64 %idxprom28
  %40 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %40 to i32
  %41 = load i32, i32* %alpha, align 4
  %idxprom31 = zext i32 %41 to i64
  %42 = load i8*, i8** %src2, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %42, i64 %idxprom31
  %43 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %43 to i32
  %cmp34 = icmp slt i32 %conv30, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %if.then
  %44 = load i32, i32* %alpha, align 4
  %idxprom37 = zext i32 %44 to i64
  %45 = load i8*, i8** %src1, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %45, i64 %idxprom37
  %46 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %46 to i32
  br label %cond.end.44

cond.false.40:                                    ; preds = %if.then
  %47 = load i32, i32* %alpha, align 4
  %idxprom41 = zext i32 %47 to i64
  %48 = load i8*, i8** %src2, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %48, i64 %idxprom41
  %49 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %49 to i32
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.40, %cond.true.36
  %cond45 = phi i32 [ %conv39, %cond.true.36 ], [ %conv43, %cond.false.40 ]
  %conv46 = trunc i32 %cond45 to i8
  %50 = load i32, i32* %alpha, align 4
  %idxprom47 = zext i32 %50 to i64
  %51 = load i8*, i8** %dest, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true, %for.end
  %52 = load i32, i32* %has_alpha2, align 4
  %tobool49 = icmp ne i32 %52, 0
  br i1 %tobool49, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.else
  %53 = load i32, i32* %alpha, align 4
  %idxprom51 = zext i32 %53 to i64
  %54 = load i8*, i8** %src2, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %54, i64 %idxprom51
  %55 = load i8, i8* %arrayidx52, align 1
  %56 = load i32, i32* %alpha, align 4
  %idxprom53 = zext i32 %56 to i64
  %57 = load i8*, i8** %dest, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %57, i64 %idxprom53
  store i8 %55, i8* %arrayidx54, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.50, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %cond.end.44
  %58 = load i32, i32* %bytes1, align 4
  %59 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %60 = load i32, i32* %bytes2, align 4
  %61 = load i8*, i8** %src2, align 8
  %idx.ext56 = zext i32 %60 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %61, i64 %idx.ext56
  store i8* %add.ptr57, i8** %src2, align 8
  %62 = load i32, i32* %bytes2, align 4
  %63 = load i8*, i8** %dest, align 8
  %idx.ext58 = zext i32 %62 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %63, i64 %idx.ext58
  store i8* %add.ptr59, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_hardlight_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.93, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src2, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %28 to i32
  %cmp19 = icmp sgt i32 %conv18, 128
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %b, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load i8*, i8** %src1, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 %idxprom21
  %31 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %31 to i32
  %sub24 = sub nsw i32 255, %conv23
  %32 = load i32, i32* %b, align 4
  %idxprom25 = zext i32 %32 to i64
  %33 = load i8*, i8** %src2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %33, i64 %idxprom25
  %34 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %34 to i32
  %sub28 = sub nsw i32 %conv27, 128
  %shl = shl i32 %sub28, 1
  %sub29 = sub nsw i32 255, %shl
  %mul = mul nsw i32 %sub24, %sub29
  store i32 %mul, i32* %tmp, align 4
  %35 = load i32, i32* %tmp, align 4
  %shr = lshr i32 %35, 8
  %sub30 = sub i32 255, %shr
  %cmp31 = icmp ult i32 %sub30, 255
  br i1 %cmp31, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %if.then
  %36 = load i32, i32* %tmp, align 4
  %shr34 = lshr i32 %36, 8
  %sub35 = sub i32 255, %shr34
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.then
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.33
  %cond38 = phi i32 [ %sub35, %cond.true.33 ], [ 255, %cond.false.36 ]
  %conv39 = trunc i32 %cond38 to i8
  %37 = load i32, i32* %b, align 4
  %idxprom40 = zext i32 %37 to i64
  %38 = load i8*, i8** %dest, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %38, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %39 = load i32, i32* %b, align 4
  %idxprom42 = zext i32 %39 to i64
  %40 = load i8*, i8** %src1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  %41 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %41 to i32
  %42 = load i32, i32* %b, align 4
  %idxprom45 = zext i32 %42 to i64
  %43 = load i8*, i8** %src2, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %43, i64 %idxprom45
  %44 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %44 to i32
  %shl48 = shl i32 %conv47, 1
  %mul49 = mul nsw i32 %conv44, %shl48
  store i32 %mul49, i32* %tmp, align 4
  %45 = load i32, i32* %tmp, align 4
  %shr50 = lshr i32 %45, 8
  %cmp51 = icmp ult i32 %shr50, 255
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.else
  %46 = load i32, i32* %tmp, align 4
  %shr54 = lshr i32 %46, 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.else
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi i32 [ %shr54, %cond.true.53 ], [ 255, %cond.false.55 ]
  %conv58 = trunc i32 %cond57 to i8
  %47 = load i32, i32* %b, align 4
  %idxprom59 = zext i32 %47 to i64
  %48 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 %conv58, i8* %arrayidx60, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.56, %cond.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %49 = load i32, i32* %b, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %has_alpha1, align 4
  %tobool61 = icmp ne i32 %50, 0
  br i1 %tobool61, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %for.end
  %51 = load i32, i32* %has_alpha2, align 4
  %tobool62 = icmp ne i32 %51, 0
  br i1 %tobool62, label %if.then.63, label %if.else.85

if.then.63:                                       ; preds = %land.lhs.true
  %52 = load i32, i32* %alpha, align 4
  %idxprom64 = zext i32 %52 to i64
  %53 = load i8*, i8** %src1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %53, i64 %idxprom64
  %54 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %54 to i32
  %55 = load i32, i32* %alpha, align 4
  %idxprom67 = zext i32 %55 to i64
  %56 = load i8*, i8** %src2, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %56, i64 %idxprom67
  %57 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %57 to i32
  %cmp70 = icmp slt i32 %conv66, %conv69
  br i1 %cmp70, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %if.then.63
  %58 = load i32, i32* %alpha, align 4
  %idxprom73 = zext i32 %58 to i64
  %59 = load i8*, i8** %src1, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %59, i64 %idxprom73
  %60 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %60 to i32
  br label %cond.end.80

cond.false.76:                                    ; preds = %if.then.63
  %61 = load i32, i32* %alpha, align 4
  %idxprom77 = zext i32 %61 to i64
  %62 = load i8*, i8** %src2, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %62, i64 %idxprom77
  %63 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %63 to i32
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.76, %cond.true.72
  %cond81 = phi i32 [ %conv75, %cond.true.72 ], [ %conv79, %cond.false.76 ]
  %conv82 = trunc i32 %cond81 to i8
  %64 = load i32, i32* %alpha, align 4
  %idxprom83 = zext i32 %64 to i64
  %65 = load i8*, i8** %dest, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %65, i64 %idxprom83
  store i8 %conv82, i8* %arrayidx84, align 1
  br label %if.end.93

if.else.85:                                       ; preds = %land.lhs.true, %for.end
  %66 = load i32, i32* %has_alpha2, align 4
  %tobool86 = icmp ne i32 %66, 0
  br i1 %tobool86, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %if.else.85
  %67 = load i32, i32* %alpha, align 4
  %idxprom88 = zext i32 %67 to i64
  %68 = load i8*, i8** %src2, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %68, i64 %idxprom88
  %69 = load i8, i8* %arrayidx89, align 1
  %70 = load i32, i32* %alpha, align 4
  %idxprom90 = zext i32 %70 to i64
  %71 = load i8*, i8** %dest, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %71, i64 %idxprom90
  store i8 %69, i8* %arrayidx91, align 1
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %if.else.85
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.end.80
  %72 = load i32, i32* %bytes1, align 4
  %73 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %72 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %74 = load i32, i32* %bytes2, align 4
  %75 = load i8*, i8** %src2, align 8
  %idx.ext94 = zext i32 %74 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %75, i64 %idx.ext94
  store i8* %add.ptr95, i8** %src2, align 8
  %76 = load i32, i32* %bytes2, align 4
  %77 = load i8*, i8** %dest, align 8
  %idx.ext96 = zext i32 %76 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %77, i64 %idx.ext96
  store i8* %add.ptr97, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_softlight_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %tmpS = alloca i32, align 4
  %tmpM = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %14, i32 0, i32 5
  %15 = load i32, i32* %pixelformat_A5, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %has_alpha1, align 4
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B9, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  store i32 %conv12, i32* %has_alpha2, align 4
  %20 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %has_alpha2, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %22 = load i32, i32* %bytes1, align 4
  %23 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %22, %23
  br i1 %cmp, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true
  %24 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %25 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i32 [ %24, %cond.true.15 ], [ %25, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.17

cond.false.16:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %bytes1, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i32 [ %sub, %cond.end ], [ %26, %cond.false.16 ]
  store i32 %cond18, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %cond.end.17
  %27 = load i32, i32* %length, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %length, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %alpha, align 4
  %cmp20 = icmp ult i32 %28, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %b, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load i8*, i8** %src1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load i32, i32* %b, align 4
  %idxprom25 = zext i32 %33 to i64
  %34 = load i8*, i8** %src2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 %idxprom25
  %35 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  %mul = mul nsw i32 %conv24, %conv27
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmpM, align 4
  %36 = load i32, i32* %tmpM, align 4
  %shr = lshr i32 %36, 8
  %37 = load i32, i32* %tmpM, align 4
  %add28 = add i32 %shr, %37
  %shr29 = lshr i32 %add28, 8
  store i32 %shr29, i32* %tmpM, align 4
  %38 = load i32, i32* %b, align 4
  %idxprom30 = zext i32 %38 to i64
  %39 = load i8*, i8** %src1, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %idxprom30
  %40 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %40 to i32
  %sub33 = sub nsw i32 255, %conv32
  %41 = load i32, i32* %b, align 4
  %idxprom34 = zext i32 %41 to i64
  %42 = load i8*, i8** %src2, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %42, i64 %idxprom34
  %43 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %43 to i32
  %sub37 = sub nsw i32 255, %conv36
  %mul38 = mul nsw i32 %sub33, %sub37
  %add39 = add nsw i32 %mul38, 128
  store i32 %add39, i32* %tmp1, align 4
  %44 = load i32, i32* %tmp1, align 4
  %shr40 = lshr i32 %44, 8
  %45 = load i32, i32* %tmp1, align 4
  %add41 = add i32 %shr40, %45
  %shr42 = lshr i32 %add41, 8
  %sub43 = sub i32 255, %shr42
  store i32 %sub43, i32* %tmpS, align 4
  %46 = load i32, i32* %b, align 4
  %idxprom44 = zext i32 %46 to i64
  %47 = load i8*, i8** %src1, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %47, i64 %idxprom44
  %48 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %48 to i32
  %sub47 = sub nsw i32 255, %conv46
  %49 = load i32, i32* %tmpM, align 4
  %mul48 = mul i32 %sub47, %49
  %add49 = add i32 %mul48, 128
  store i32 %add49, i32* %tmp2, align 4
  %50 = load i32, i32* %tmp2, align 4
  %shr50 = lshr i32 %50, 8
  %51 = load i32, i32* %tmp2, align 4
  %add51 = add i32 %shr50, %51
  %shr52 = lshr i32 %add51, 8
  %52 = load i32, i32* %b, align 4
  %idxprom53 = zext i32 %52 to i64
  %53 = load i8*, i8** %src1, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i64 %idxprom53
  %54 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %54 to i32
  %55 = load i32, i32* %tmpS, align 4
  %mul56 = mul i32 %conv55, %55
  %add57 = add i32 %mul56, 128
  store i32 %add57, i32* %tmp3, align 4
  %56 = load i32, i32* %tmp3, align 4
  %shr58 = lshr i32 %56, 8
  %57 = load i32, i32* %tmp3, align 4
  %add59 = add i32 %shr58, %57
  %shr60 = lshr i32 %add59, 8
  %add61 = add i32 %shr52, %shr60
  %conv62 = trunc i32 %add61 to i8
  %58 = load i32, i32* %b, align 4
  %idxprom63 = zext i32 %58 to i64
  %59 = load i8*, i8** %dest, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %59, i64 %idxprom63
  store i8 %conv62, i8* %arrayidx64, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %b, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32, i32* %has_alpha1, align 4
  %tobool65 = icmp ne i32 %61, 0
  br i1 %tobool65, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %62 = load i32, i32* %has_alpha2, align 4
  %tobool66 = icmp ne i32 %62, 0
  br i1 %tobool66, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %63 = load i32, i32* %alpha, align 4
  %idxprom67 = zext i32 %63 to i64
  %64 = load i8*, i8** %src1, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %64, i64 %idxprom67
  %65 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %65 to i32
  %66 = load i32, i32* %alpha, align 4
  %idxprom70 = zext i32 %66 to i64
  %67 = load i8*, i8** %src2, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %67, i64 %idxprom70
  %68 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %68 to i32
  %cmp73 = icmp slt i32 %conv69, %conv72
  br i1 %cmp73, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %if.then
  %69 = load i32, i32* %alpha, align 4
  %idxprom76 = zext i32 %69 to i64
  %70 = load i8*, i8** %src1, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %70, i64 %idxprom76
  %71 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %71 to i32
  br label %cond.end.83

cond.false.79:                                    ; preds = %if.then
  %72 = load i32, i32* %alpha, align 4
  %idxprom80 = zext i32 %72 to i64
  %73 = load i8*, i8** %src2, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %73, i64 %idxprom80
  %74 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %74 to i32
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.79, %cond.true.75
  %cond84 = phi i32 [ %conv78, %cond.true.75 ], [ %conv82, %cond.false.79 ]
  %conv85 = trunc i32 %cond84 to i8
  %75 = load i32, i32* %alpha, align 4
  %idxprom86 = zext i32 %75 to i64
  %76 = load i8*, i8** %dest, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %76, i64 %idxprom86
  store i8 %conv85, i8* %arrayidx87, align 1
  br label %if.end.94

if.else:                                          ; preds = %land.lhs.true, %for.end
  %77 = load i32, i32* %has_alpha2, align 4
  %tobool88 = icmp ne i32 %77, 0
  br i1 %tobool88, label %if.then.89, label %if.end

if.then.89:                                       ; preds = %if.else
  %78 = load i32, i32* %alpha, align 4
  %idxprom90 = zext i32 %78 to i64
  %79 = load i8*, i8** %src2, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %79, i64 %idxprom90
  %80 = load i8, i8* %arrayidx91, align 1
  %81 = load i32, i32* %alpha, align 4
  %idxprom92 = zext i32 %81 to i64
  %82 = load i8*, i8** %dest, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %82, i64 %idxprom92
  store i8 %80, i8* %arrayidx93, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.89, %if.else
  br label %if.end.94

if.end.94:                                        ; preds = %if.end, %cond.end.83
  %83 = load i32, i32* %bytes1, align 4
  %84 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %83 to i64
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %85 = load i32, i32* %bytes2, align 4
  %86 = load i8*, i8** %src2, align 8
  %idx.ext95 = zext i32 %85 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %86, i64 %idx.ext95
  store i8* %add.ptr96, i8** %src2, align 8
  %87 = load i32, i32* %bytes2, align 4
  %88 = load i8*, i8** %dest, align 8
  %idx.ext97 = zext i32 %87 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %88, i64 %idx.ext97
  store i8* %add.ptr98, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_extract_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %14, i32 0, i32 5
  %15 = load i32, i32* %pixelformat_A5, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %has_alpha1, align 4
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B9, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  store i32 %conv12, i32* %has_alpha2, align 4
  %20 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %has_alpha2, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %22 = load i32, i32* %bytes1, align 4
  %23 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %22, %23
  br i1 %cmp, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true
  %24 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %25 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i32 [ %24, %cond.true.15 ], [ %25, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.17

cond.false.16:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %bytes1, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i32 [ %sub, %cond.end ], [ %26, %cond.false.16 ]
  store i32 %cond18, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %cond.end.17
  %27 = load i32, i32* %length, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %length, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %alpha, align 4
  %cmp20 = icmp ult i32 %28, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %b, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load i8*, i8** %src1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load i32, i32* %b, align 4
  %idxprom25 = zext i32 %33 to i64
  %34 = load i8*, i8** %src2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 %idxprom25
  %35 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  %sub28 = sub nsw i32 %conv24, %conv27
  %add = add nsw i32 %sub28, 128
  store i32 %add, i32* %diff, align 4
  %36 = load i32, i32* %diff, align 4
  %cmp29 = icmp sgt i32 %36, 255
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %for.body
  br label %cond.end.39

cond.false.32:                                    ; preds = %for.body
  %37 = load i32, i32* %diff, align 4
  %cmp33 = icmp slt i32 %37, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.32
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.false.32
  %38 = load i32, i32* %diff, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ 0, %cond.true.35 ], [ %38, %cond.false.36 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.31
  %cond40 = phi i32 [ 255, %cond.true.31 ], [ %cond38, %cond.end.37 ]
  %conv41 = trunc i32 %cond40 to i8
  %39 = load i32, i32* %b, align 4
  %idxprom42 = zext i32 %39 to i64
  %40 = load i8*, i8** %dest, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.39
  %41 = load i32, i32* %b, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %has_alpha1, align 4
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %43 = load i32, i32* %has_alpha2, align 4
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %44 = load i32, i32* %alpha, align 4
  %idxprom46 = zext i32 %44 to i64
  %45 = load i8*, i8** %src1, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom46
  %46 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %46 to i32
  %47 = load i32, i32* %alpha, align 4
  %idxprom49 = zext i32 %47 to i64
  %48 = load i8*, i8** %src2, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %48, i64 %idxprom49
  %49 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %49 to i32
  %cmp52 = icmp slt i32 %conv48, %conv51
  br i1 %cmp52, label %cond.true.54, label %cond.false.58

cond.true.54:                                     ; preds = %if.then
  %50 = load i32, i32* %alpha, align 4
  %idxprom55 = zext i32 %50 to i64
  %51 = load i8*, i8** %src1, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %51, i64 %idxprom55
  %52 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %52 to i32
  br label %cond.end.62

cond.false.58:                                    ; preds = %if.then
  %53 = load i32, i32* %alpha, align 4
  %idxprom59 = zext i32 %53 to i64
  %54 = load i8*, i8** %src2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %54, i64 %idxprom59
  %55 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %55 to i32
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.58, %cond.true.54
  %cond63 = phi i32 [ %conv57, %cond.true.54 ], [ %conv61, %cond.false.58 ]
  %conv64 = trunc i32 %cond63 to i8
  %56 = load i32, i32* %alpha, align 4
  %idxprom65 = zext i32 %56 to i64
  %57 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %57, i64 %idxprom65
  store i8 %conv64, i8* %arrayidx66, align 1
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true, %for.end
  %58 = load i32, i32* %has_alpha2, align 4
  %tobool67 = icmp ne i32 %58, 0
  br i1 %tobool67, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %if.else
  %59 = load i32, i32* %alpha, align 4
  %idxprom69 = zext i32 %59 to i64
  %60 = load i8*, i8** %src2, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %60, i64 %idxprom69
  %61 = load i8, i8* %arrayidx70, align 1
  %62 = load i32, i32* %alpha, align 4
  %idxprom71 = zext i32 %62 to i64
  %63 = load i8*, i8** %dest, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %63, i64 %idxprom71
  store i8 %61, i8* %arrayidx72, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.68, %if.else
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %cond.end.62
  %64 = load i32, i32* %bytes1, align 4
  %65 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %66 = load i32, i32* %bytes2, align 4
  %67 = load i8*, i8** %src2, align 8
  %idx.ext74 = zext i32 %66 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %67, i64 %idx.ext74
  store i8* %add.ptr75, i8** %src2, align 8
  %68 = load i32, i32* %bytes2, align 4
  %69 = load i8*, i8** %dest, align 8
  %idx.ext76 = zext i32 %68 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %69, i64 %idx.ext76
  store i8* %add.ptr77, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_merge_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %sum = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load i32, i32* %bytes1, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %neg, 1
  store i32 %and, i32* %has_alpha1, align 4
  %15 = load i32, i32* %bytes2, align 4
  %neg5 = xor i32 %15, -1
  %and6 = and i32 %neg5, 1
  store i32 %and6, i32* %has_alpha2, align 4
  %16 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %has_alpha2, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false.10

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %bytes1, align 4
  %19 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %20 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i32 [ %20, %cond.true.9 ], [ %21, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.11

cond.false.10:                                    ; preds = %lor.lhs.false
  %22 = load i32, i32* %bytes1, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.end
  %cond12 = phi i32 [ %sub, %cond.end ], [ %22, %cond.false.10 ]
  store i32 %cond12, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %cond.end.11
  %23 = load i32, i32* %length, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %length, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %alpha, align 4
  %cmp14 = icmp ult i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom16 = zext i32 %26 to i64
  %27 = load i8*, i8** %src1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %28 to i32
  %29 = load i32, i32* %b, align 4
  %idxprom19 = zext i32 %29 to i64
  %30 = load i8*, i8** %src2, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %idxprom19
  %31 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %31 to i32
  %add = add nsw i32 %conv18, %conv21
  %sub22 = sub nsw i32 %add, 128
  store i32 %sub22, i32* %sum, align 4
  %32 = load i32, i32* %sum, align 4
  %cmp23 = icmp sgt i32 %32, 255
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %for.body
  br label %cond.end.33

cond.false.26:                                    ; preds = %for.body
  %33 = load i32, i32* %sum, align 4
  %cmp27 = icmp slt i32 %33, 0
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false.26
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.26
  %34 = load i32, i32* %sum, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ 0, %cond.true.29 ], [ %34, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.25
  %cond34 = phi i32 [ 255, %cond.true.25 ], [ %cond32, %cond.end.31 ]
  %conv35 = trunc i32 %cond34 to i8
  %35 = load i32, i32* %b, align 4
  %idxprom36 = zext i32 %35 to i64
  %36 = load i8*, i8** %dest, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %36, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %37 = load i32, i32* %b, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %has_alpha1, align 4
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %39 = load i32, i32* %has_alpha2, align 4
  %tobool39 = icmp ne i32 %39, 0
  br i1 %tobool39, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %40 = load i32, i32* %alpha, align 4
  %idxprom40 = zext i32 %40 to i64
  %41 = load i8*, i8** %src1, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %41, i64 %idxprom40
  %42 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %42 to i32
  %43 = load i32, i32* %alpha, align 4
  %idxprom43 = zext i32 %43 to i64
  %44 = load i8*, i8** %src2, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %44, i64 %idxprom43
  %45 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %45 to i32
  %cmp46 = icmp slt i32 %conv42, %conv45
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.then
  %46 = load i32, i32* %alpha, align 4
  %idxprom49 = zext i32 %46 to i64
  %47 = load i8*, i8** %src1, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %47, i64 %idxprom49
  %48 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %48 to i32
  br label %cond.end.56

cond.false.52:                                    ; preds = %if.then
  %49 = load i32, i32* %alpha, align 4
  %idxprom53 = zext i32 %49 to i64
  %50 = load i8*, i8** %src2, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %50, i64 %idxprom53
  %51 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %51 to i32
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.48
  %cond57 = phi i32 [ %conv51, %cond.true.48 ], [ %conv55, %cond.false.52 ]
  %conv58 = trunc i32 %cond57 to i8
  %52 = load i32, i32* %alpha, align 4
  %idxprom59 = zext i32 %52 to i64
  %53 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %53, i64 %idxprom59
  store i8 %conv58, i8* %arrayidx60, align 1
  br label %if.end.67

if.else:                                          ; preds = %land.lhs.true, %for.end
  %54 = load i32, i32* %has_alpha2, align 4
  %tobool61 = icmp ne i32 %54, 0
  br i1 %tobool61, label %if.then.62, label %if.end

if.then.62:                                       ; preds = %if.else
  %55 = load i32, i32* %alpha, align 4
  %idxprom63 = zext i32 %55 to i64
  %56 = load i8*, i8** %src2, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %56, i64 %idxprom63
  %57 = load i8, i8* %arrayidx64, align 1
  %58 = load i32, i32* %alpha, align 4
  %idxprom65 = zext i32 %58 to i64
  %59 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %59, i64 %idxprom65
  store i8 %57, i8* %arrayidx66, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.62, %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %cond.end.56
  %60 = load i32, i32* %bytes1, align 4
  %61 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %62 = load i32, i32* %bytes2, align 4
  %63 = load i8*, i8** %src2, align 8
  %idx.ext68 = zext i32 %62 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %63, i64 %idx.ext68
  store i8* %add.ptr69, i8** %src2, align 8
  %64 = load i32, i32* %bytes2, align 4
  %65 = load i8*, i8** %dest, align 8
  %idx.ext70 = zext i32 %64 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %65, i64 %idx.ext70
  store i8* %add.ptr71, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_addition_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %A = alloca i8*, align 8
  %B = alloca i8*, align 8
  %D = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A1, align 8
  store i8* %1, i8** %A, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B2, align 8
  store i8* %3, i8** %B, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D3, align 8
  store i8* %5, i8** %D, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %10 to i32
  store i32 %conv4, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom5 = zext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom5
  %13 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  store i32 %conv7, i32* %bytes2, align 4
  %14 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A8 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %14, i32 0, i32 5
  %15 = load i32, i32* %pixelformat_A8, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom9
  %16 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  store i32 %conv11, i32* %has_alpha1, align 4
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B12 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B12, align 4
  %idxprom13 = zext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  store i32 %conv15, i32* %has_alpha2, align 4
  %20 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %has_alpha2, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %cond.true, label %cond.false.19

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %22 = load i32, i32* %bytes1, align 4
  %23 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %22, %23
  br i1 %cmp, label %cond.true.18, label %cond.false

cond.true.18:                                     ; preds = %cond.true
  %24 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %25 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.18
  %cond = phi i32 [ %24, %cond.true.18 ], [ %25, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.20

cond.false.19:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %bytes1, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.end
  %cond21 = phi i32 [ %sub, %cond.end ], [ %26, %cond.false.19 ]
  store i32 %cond21, i32* %alpha, align 4
  %27 = load i32, i32* %has_alpha1, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.20
  %28 = load i32, i32* %has_alpha2, align 4
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %cond.end.53, %if.then
  %29 = load i32, i32* %length, align 4
  %dec = add i32 %29, -1
  store i32 %dec, i32* %length, align 4
  %tobool24 = icmp ne i32 %29, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* %alpha, align 4
  %cmp25 = icmp ult i32 %30, %31
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %b, align 4
  %idxprom27 = zext i32 %32 to i64
  %33 = load i8*, i8** %A, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 %idxprom27
  %34 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %34 to i32
  %35 = load i32, i32* %b, align 4
  %idxprom30 = zext i32 %35 to i64
  %36 = load i8*, i8** %B, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 %idxprom30
  %37 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %37 to i32
  %add = add nsw i32 %conv29, %conv32
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [511 x i8], [511 x i8]* @add_lut, i32 0, i64 %idxprom33
  %38 = load i8, i8* %arrayidx34, align 1
  %39 = load i32, i32* %b, align 4
  %idxprom35 = zext i32 %39 to i64
  %40 = load i8*, i8** %D, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %40, i64 %idxprom35
  store i8 %38, i8* %arrayidx36, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %b, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %alpha, align 4
  %idxprom37 = zext i32 %42 to i64
  %43 = load i8*, i8** %A, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 %idxprom37
  %44 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %44 to i32
  %45 = load i32, i32* %alpha, align 4
  %idxprom40 = zext i32 %45 to i64
  %46 = load i8*, i8** %B, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %46, i64 %idxprom40
  %47 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %47 to i32
  %cmp43 = icmp slt i32 %conv39, %conv42
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %for.end
  %48 = load i32, i32* %alpha, align 4
  %idxprom46 = zext i32 %48 to i64
  %49 = load i8*, i8** %A, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i64 %idxprom46
  %50 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %50 to i32
  br label %cond.end.53

cond.false.49:                                    ; preds = %for.end
  %51 = load i32, i32* %alpha, align 4
  %idxprom50 = zext i32 %51 to i64
  %52 = load i8*, i8** %B, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %52, i64 %idxprom50
  %53 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %53 to i32
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.49, %cond.true.45
  %cond54 = phi i32 [ %conv48, %cond.true.45 ], [ %conv52, %cond.false.49 ]
  %conv55 = trunc i32 %cond54 to i8
  %54 = load i32, i32* %alpha, align 4
  %idxprom56 = zext i32 %54 to i64
  %55 = load i8*, i8** %D, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %55, i64 %idxprom56
  store i8 %conv55, i8* %arrayidx57, align 1
  %56 = load i32, i32* %bytes1, align 4
  %57 = load i8*, i8** %A, align 8
  %idx.ext = zext i32 %56 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %A, align 8
  %58 = load i32, i32* %bytes2, align 4
  %59 = load i8*, i8** %B, align 8
  %idx.ext58 = zext i32 %58 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %59, i64 %idx.ext58
  store i8* %add.ptr59, i8** %B, align 8
  %60 = load i32, i32* %bytes2, align 4
  %61 = load i8*, i8** %D, align 8
  %idx.ext60 = zext i32 %60 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %61, i64 %idx.ext60
  store i8* %add.ptr61, i8** %D, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.127

if.else:                                          ; preds = %land.lhs.true, %cond.end.20
  %62 = load i32, i32* %has_alpha2, align 4
  %tobool62 = icmp ne i32 %62, 0
  br i1 %tobool62, label %if.then.63, label %if.else.97

if.then.63:                                       ; preds = %if.else
  br label %while.cond.64

while.cond.64:                                    ; preds = %for.end.85, %if.then.63
  %63 = load i32, i32* %length, align 4
  %dec65 = add i32 %63, -1
  store i32 %dec65, i32* %length, align 4
  %tobool66 = icmp ne i32 %63, 0
  br i1 %tobool66, label %while.body.67, label %while.end.96

while.body.67:                                    ; preds = %while.cond.64
  store i32 0, i32* %b, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.83, %while.body.67
  %64 = load i32, i32* %b, align 4
  %65 = load i32, i32* %alpha, align 4
  %cmp69 = icmp ult i32 %64, %65
  br i1 %cmp69, label %for.body.71, label %for.end.85

for.body.71:                                      ; preds = %for.cond.68
  %66 = load i32, i32* %b, align 4
  %idxprom72 = zext i32 %66 to i64
  %67 = load i8*, i8** %A, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %67, i64 %idxprom72
  %68 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %68 to i32
  %69 = load i32, i32* %b, align 4
  %idxprom75 = zext i32 %69 to i64
  %70 = load i8*, i8** %B, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %70, i64 %idxprom75
  %71 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %71 to i32
  %add78 = add nsw i32 %conv74, %conv77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [511 x i8], [511 x i8]* @add_lut, i32 0, i64 %idxprom79
  %72 = load i8, i8* %arrayidx80, align 1
  %73 = load i32, i32* %b, align 4
  %idxprom81 = zext i32 %73 to i64
  %74 = load i8*, i8** %D, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %74, i64 %idxprom81
  store i8 %72, i8* %arrayidx82, align 1
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.71
  %75 = load i32, i32* %b, align 4
  %inc84 = add i32 %75, 1
  store i32 %inc84, i32* %b, align 4
  br label %for.cond.68

for.end.85:                                       ; preds = %for.cond.68
  %76 = load i32, i32* %alpha, align 4
  %idxprom86 = zext i32 %76 to i64
  %77 = load i8*, i8** %B, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %77, i64 %idxprom86
  %78 = load i8, i8* %arrayidx87, align 1
  %79 = load i32, i32* %alpha, align 4
  %idxprom88 = zext i32 %79 to i64
  %80 = load i8*, i8** %D, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %80, i64 %idxprom88
  store i8 %78, i8* %arrayidx89, align 1
  %81 = load i32, i32* %bytes1, align 4
  %82 = load i8*, i8** %A, align 8
  %idx.ext90 = zext i32 %81 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %82, i64 %idx.ext90
  store i8* %add.ptr91, i8** %A, align 8
  %83 = load i32, i32* %bytes2, align 4
  %84 = load i8*, i8** %B, align 8
  %idx.ext92 = zext i32 %83 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %84, i64 %idx.ext92
  store i8* %add.ptr93, i8** %B, align 8
  %85 = load i32, i32* %bytes2, align 4
  %86 = load i8*, i8** %D, align 8
  %idx.ext94 = zext i32 %85 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %86, i64 %idx.ext94
  store i8* %add.ptr95, i8** %D, align 8
  br label %while.cond.64

while.end.96:                                     ; preds = %while.cond.64
  br label %if.end

if.else.97:                                       ; preds = %if.else
  br label %while.cond.98

while.cond.98:                                    ; preds = %for.end.119, %if.else.97
  %87 = load i32, i32* %length, align 4
  %dec99 = add i32 %87, -1
  store i32 %dec99, i32* %length, align 4
  %tobool100 = icmp ne i32 %87, 0
  br i1 %tobool100, label %while.body.101, label %while.end.126

while.body.101:                                   ; preds = %while.cond.98
  store i32 0, i32* %b, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.117, %while.body.101
  %88 = load i32, i32* %b, align 4
  %89 = load i32, i32* %alpha, align 4
  %cmp103 = icmp ult i32 %88, %89
  br i1 %cmp103, label %for.body.105, label %for.end.119

for.body.105:                                     ; preds = %for.cond.102
  %90 = load i32, i32* %b, align 4
  %idxprom106 = zext i32 %90 to i64
  %91 = load i8*, i8** %A, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %91, i64 %idxprom106
  %92 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %92 to i32
  %93 = load i32, i32* %b, align 4
  %idxprom109 = zext i32 %93 to i64
  %94 = load i8*, i8** %B, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %94, i64 %idxprom109
  %95 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %95 to i32
  %add112 = add nsw i32 %conv108, %conv111
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [511 x i8], [511 x i8]* @add_lut, i32 0, i64 %idxprom113
  %96 = load i8, i8* %arrayidx114, align 1
  %97 = load i32, i32* %b, align 4
  %idxprom115 = zext i32 %97 to i64
  %98 = load i8*, i8** %D, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %98, i64 %idxprom115
  store i8 %96, i8* %arrayidx116, align 1
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.105
  %99 = load i32, i32* %b, align 4
  %inc118 = add i32 %99, 1
  store i32 %inc118, i32* %b, align 4
  br label %for.cond.102

for.end.119:                                      ; preds = %for.cond.102
  %100 = load i32, i32* %bytes1, align 4
  %101 = load i8*, i8** %A, align 8
  %idx.ext120 = zext i32 %100 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %101, i64 %idx.ext120
  store i8* %add.ptr121, i8** %A, align 8
  %102 = load i32, i32* %bytes2, align 4
  %103 = load i8*, i8** %B, align 8
  %idx.ext122 = zext i32 %102 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %103, i64 %idx.ext122
  store i8* %add.ptr123, i8** %B, align 8
  %104 = load i32, i32* %bytes2, align 4
  %105 = load i8*, i8** %D, align 8
  %idx.ext124 = zext i32 %104 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %105, i64 %idx.ext124
  store i8* %add.ptr125, i8** %D, align 8
  br label %while.cond.98

while.end.126:                                    ; preds = %while.cond.98
  br label %if.end

if.end:                                           ; preds = %while.end.126, %while.end.96
  br label %if.end.127

if.end.127:                                       ; preds = %if.end, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_subtract_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %14, i32 0, i32 5
  %15 = load i32, i32* %pixelformat_A5, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %has_alpha1, align 4
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B9, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  store i32 %conv12, i32* %has_alpha2, align 4
  %20 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %has_alpha2, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %22 = load i32, i32* %bytes1, align 4
  %23 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %22, %23
  br i1 %cmp, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true
  %24 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %25 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i32 [ %24, %cond.true.15 ], [ %25, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.17

cond.false.16:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %bytes1, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i32 [ %sub, %cond.end ], [ %26, %cond.false.16 ]
  store i32 %cond18, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %cond.end.17
  %27 = load i32, i32* %length, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %length, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %alpha, align 4
  %cmp20 = icmp ult i32 %28, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %b, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load i8*, i8** %src1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load i32, i32* %b, align 4
  %idxprom25 = zext i32 %33 to i64
  %34 = load i8*, i8** %src2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 %idxprom25
  %35 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  %sub28 = sub nsw i32 %conv24, %conv27
  store i32 %sub28, i32* %diff, align 4
  %36 = load i32, i32* %diff, align 4
  %cmp29 = icmp slt i32 %36, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %for.body
  br label %cond.end.33

cond.false.32:                                    ; preds = %for.body
  %37 = load i32, i32* %diff, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ 0, %cond.true.31 ], [ %37, %cond.false.32 ]
  %conv35 = trunc i32 %cond34 to i8
  %38 = load i32, i32* %b, align 4
  %idxprom36 = zext i32 %38 to i64
  %39 = load i8*, i8** %dest, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %40 = load i32, i32* %b, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %has_alpha1, align 4
  %tobool38 = icmp ne i32 %41, 0
  br i1 %tobool38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %42 = load i32, i32* %has_alpha2, align 4
  %tobool39 = icmp ne i32 %42, 0
  br i1 %tobool39, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %43 = load i32, i32* %alpha, align 4
  %idxprom40 = zext i32 %43 to i64
  %44 = load i8*, i8** %src1, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 %idxprom40
  %45 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %45 to i32
  %46 = load i32, i32* %alpha, align 4
  %idxprom43 = zext i32 %46 to i64
  %47 = load i8*, i8** %src2, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 %idxprom43
  %48 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %48 to i32
  %cmp46 = icmp slt i32 %conv42, %conv45
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.then
  %49 = load i32, i32* %alpha, align 4
  %idxprom49 = zext i32 %49 to i64
  %50 = load i8*, i8** %src1, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %50, i64 %idxprom49
  %51 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %51 to i32
  br label %cond.end.56

cond.false.52:                                    ; preds = %if.then
  %52 = load i32, i32* %alpha, align 4
  %idxprom53 = zext i32 %52 to i64
  %53 = load i8*, i8** %src2, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i64 %idxprom53
  %54 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %54 to i32
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.48
  %cond57 = phi i32 [ %conv51, %cond.true.48 ], [ %conv55, %cond.false.52 ]
  %conv58 = trunc i32 %cond57 to i8
  %55 = load i32, i32* %alpha, align 4
  %idxprom59 = zext i32 %55 to i64
  %56 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %56, i64 %idxprom59
  store i8 %conv58, i8* %arrayidx60, align 1
  br label %if.end.67

if.else:                                          ; preds = %land.lhs.true, %for.end
  %57 = load i32, i32* %has_alpha2, align 4
  %tobool61 = icmp ne i32 %57, 0
  br i1 %tobool61, label %if.then.62, label %if.end

if.then.62:                                       ; preds = %if.else
  %58 = load i32, i32* %alpha, align 4
  %idxprom63 = zext i32 %58 to i64
  %59 = load i8*, i8** %src2, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %59, i64 %idxprom63
  %60 = load i8, i8* %arrayidx64, align 1
  %61 = load i32, i32* %alpha, align 4
  %idxprom65 = zext i32 %61 to i64
  %62 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %62, i64 %idxprom65
  store i8 %60, i8* %arrayidx66, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.62, %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %cond.end.56
  %63 = load i32, i32* %bytes1, align 4
  %64 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %65 = load i32, i32* %bytes2, align 4
  %66 = load i8*, i8** %src2, align 8
  %idx.ext68 = zext i32 %65 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %66, i64 %idx.ext68
  store i8* %add.ptr69, i8** %src2, align 8
  %67 = load i32, i32* %bytes2, align 4
  %68 = load i8*, i8** %dest, align 8
  %idx.ext70 = zext i32 %67 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %68, i64 %idx.ext70
  store i8* %add.ptr71, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_difference_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %bytes2 = alloca i32, align 4
  %has_alpha1 = alloca i32, align 4
  %has_alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %src2, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 2
  %5 = load i8*, i8** %D, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %length, align 4
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %10 to i32
  store i32 %conv1, i32* %bytes1, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 6
  %12 = load i32, i32* %pixelformat_B, align 4
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom2
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %bytes2, align 4
  %14 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %14, i32 0, i32 5
  %15 = load i32, i32* %pixelformat_A5, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %has_alpha1, align 4
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B9, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  store i32 %conv12, i32* %has_alpha2, align 4
  %20 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %has_alpha2, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %22 = load i32, i32* %bytes1, align 4
  %23 = load i32, i32* %bytes2, align 4
  %cmp = icmp ugt i32 %22, %23
  br i1 %cmp, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true
  %24 = load i32, i32* %bytes1, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %25 = load i32, i32* %bytes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i32 [ %24, %cond.true.15 ], [ %25, %cond.false ]
  %sub = sub i32 %cond, 1
  br label %cond.end.17

cond.false.16:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %bytes1, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi i32 [ %sub, %cond.end ], [ %26, %cond.false.16 ]
  store i32 %cond18, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %cond.end.17
  %27 = load i32, i32* %length, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %length, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %alpha, align 4
  %cmp20 = icmp ult i32 %28, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %b, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load i8*, i8** %src1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load i32, i32* %b, align 4
  %idxprom25 = zext i32 %33 to i64
  %34 = load i8*, i8** %src2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 %idxprom25
  %35 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  %sub28 = sub nsw i32 %conv24, %conv27
  store i32 %sub28, i32* %diff, align 4
  %36 = load i32, i32* %diff, align 4
  %cmp29 = icmp slt i32 %36, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %for.body
  %37 = load i32, i32* %diff, align 4
  %sub32 = sub nsw i32 0, %37
  br label %cond.end.34

cond.false.33:                                    ; preds = %for.body
  %38 = load i32, i32* %diff, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i32 [ %sub32, %cond.true.31 ], [ %38, %cond.false.33 ]
  %conv36 = trunc i32 %cond35 to i8
  %39 = load i32, i32* %b, align 4
  %idxprom37 = zext i32 %39 to i64
  %40 = load i8*, i8** %dest, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 %idxprom37
  store i8 %conv36, i8* %arrayidx38, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.34
  %41 = load i32, i32* %b, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %has_alpha1, align 4
  %tobool39 = icmp ne i32 %42, 0
  br i1 %tobool39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %43 = load i32, i32* %has_alpha2, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %44 = load i32, i32* %alpha, align 4
  %idxprom41 = zext i32 %44 to i64
  %45 = load i8*, i8** %src1, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  %46 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %46 to i32
  %47 = load i32, i32* %alpha, align 4
  %idxprom44 = zext i32 %47 to i64
  %48 = load i8*, i8** %src2, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 %idxprom44
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  %cmp47 = icmp slt i32 %conv43, %conv46
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %if.then
  %50 = load i32, i32* %alpha, align 4
  %idxprom50 = zext i32 %50 to i64
  %51 = load i8*, i8** %src1, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %51, i64 %idxprom50
  %52 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %52 to i32
  br label %cond.end.57

cond.false.53:                                    ; preds = %if.then
  %53 = load i32, i32* %alpha, align 4
  %idxprom54 = zext i32 %53 to i64
  %54 = load i8*, i8** %src2, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %54, i64 %idxprom54
  %55 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %55 to i32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.49
  %cond58 = phi i32 [ %conv52, %cond.true.49 ], [ %conv56, %cond.false.53 ]
  %conv59 = trunc i32 %cond58 to i8
  %56 = load i32, i32* %alpha, align 4
  %idxprom60 = zext i32 %56 to i64
  %57 = load i8*, i8** %dest, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %57, i64 %idxprom60
  store i8 %conv59, i8* %arrayidx61, align 1
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true, %for.end
  %58 = load i32, i32* %has_alpha2, align 4
  %tobool62 = icmp ne i32 %58, 0
  br i1 %tobool62, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %if.else
  %59 = load i32, i32* %alpha, align 4
  %idxprom64 = zext i32 %59 to i64
  %60 = load i8*, i8** %src2, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %60, i64 %idxprom64
  %61 = load i8, i8* %arrayidx65, align 1
  %62 = load i32, i32* %alpha, align 4
  %idxprom66 = zext i32 %62 to i64
  %63 = load i8*, i8** %dest, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %63, i64 %idxprom66
  store i8 %61, i8* %arrayidx67, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.63, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end, %cond.end.57
  %64 = load i32, i32* %bytes1, align 4
  %65 = load i8*, i8** %src1, align 8
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %66 = load i32, i32* %bytes2, align 4
  %67 = load i8*, i8** %src2, align 8
  %idx.ext69 = zext i32 %66 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %67, i64 %idx.ext69
  store i8* %add.ptr70, i8** %src2, align 8
  %68 = load i32, i32* %bytes2, align 4
  %69 = load i8*, i8** %dest, align 8
  %idx.ext71 = zext i32 %68 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %69, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_dissolve_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %gr = alloca %struct._GRand*, align 8
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  %combined_opacity = alloca i32, align 4
  %db = alloca i32, align 4
  %length = alloca i32, align 4
  %opacity = alloca i32, align 4
  %sb = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %mask = alloca i8*, align 8
  %rand_val = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 4
  %1 = load i64, i64* %n_pixels, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %length, align 4
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %dissolve = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 12
  %opacity1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %dissolve, i32 0, i32 2
  %3 = load i32, i32* %opacity1, align 4
  store i32 %3, i32* %opacity, align 4
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 6
  %5 = load i32, i32* %pixelformat_B, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  store i32 %conv2, i32* %sb, align 4
  %7 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %dissolve3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %7, i32 0, i32 12
  %x4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %dissolve3, i32 0, i32 0
  %8 = load i32, i32* %x4, align 4
  store i32 %8, i32* %x, align 4
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %dissolve5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 12
  %y6 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %dissolve5, i32 0, i32 1
  %10 = load i32, i32* %y6, align 4
  store i32 %10, i32* %y, align 4
  %11 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %M = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %11, i32 0, i32 3
  %12 = load i8*, i8** %M, align 8
  store i8* %12, i8** %mask, align 8
  %13 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %13, i32 0, i32 2
  %14 = load i8*, i8** %D, align 8
  store i8* %14, i8** %dest, align 8
  %15 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %15, i32 0, i32 1
  %16 = load i8*, i8** %B, align 8
  store i8* %16, i8** %src, align 8
  %17 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B7 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %17, i32 0, i32 6
  %18 = load i32, i32* %pixelformat_B7, align 4
  %idxprom8 = zext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom8
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  store i32 %conv10, i32* %has_alpha, align 4
  %20 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %20, i32 0, i32 7
  %21 = load i32, i32* %pixelformat_D, align 4
  %idxprom11 = zext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom11
  %22 = load i8, i8* %arrayidx12, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D13 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %23, i32 0, i32 7
  %24 = load i32, i32* %pixelformat_D13, align 4
  %idxprom14 = zext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [0 x i32], [0 x i32]* @gimp_composite_pixel_alpha, i32 0, i64 %idxprom14
  %25 = load i32, i32* %arrayidx15, align 4
  %26 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D16 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %26, i32 0, i32 7
  store i32 %25, i32* %pixelformat_D16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_D17 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %27, i32 0, i32 7
  %28 = load i32, i32* %pixelformat_D17, align 4
  %idxprom18 = zext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom18
  %29 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %29 to i32
  store i32 %conv20, i32* %db, align 4
  %30 = load i32, i32* %y, align 4
  %rem = srem i32 %30, 4096
  %idxprom21 = sext i32 %rem to i64
  %arrayidx22 = getelementptr inbounds [4096 x i32], [4096 x i32]* @random_table, i32 0, i64 %idxprom21
  %31 = load i32, i32* %arrayidx22, align 4
  %call = call %struct._GRand* @g_rand_new_with_seed(i32 %31)
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call24 = call i32 @g_rand_int(%struct._GRand* %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %b, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %db, align 4
  %sub = sub nsw i32 %36, 1
  store i32 %sub, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %for.end
  %37 = load i32, i32* %length, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %length, align 4
  %tobool25 = icmp ne i32 %37, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.34, %while.body
  %38 = load i32, i32* %b, align 4
  %39 = load i32, i32* %alpha, align 4
  %cmp27 = icmp slt i32 %38, %39
  br i1 %cmp27, label %for.body.29, label %for.end.36

for.body.29:                                      ; preds = %for.cond.26
  %40 = load i32, i32* %b, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load i8*, i8** %src, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %41, i64 %idxprom30
  %42 = load i8, i8* %arrayidx31, align 1
  %43 = load i32, i32* %b, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load i8*, i8** %dest, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %44, i64 %idxprom32
  store i8 %42, i8* %arrayidx33, align 1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.29
  %45 = load i32, i32* %b, align 4
  %inc35 = add nsw i32 %45, 1
  store i32 %inc35, i32* %b, align 4
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  %46 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call37 = call i32 @g_rand_int_range(%struct._GRand* %46, i32 0, i32 255)
  store i32 %call37, i32* %rand_val, align 4
  %47 = load i8*, i8** %mask, align 8
  %tobool38 = icmp ne i8* %47, null
  br i1 %tobool38, label %if.then.39, label %if.else.51

if.then.39:                                       ; preds = %for.end.36
  %48 = load i32, i32* %has_alpha, align 4
  %tobool40 = icmp ne i32 %48, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.39
  %49 = load i32, i32* %opacity, align 4
  %50 = load i32, i32* %alpha, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load i8*, i8** %src, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %51, i64 %idxprom42
  %52 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %52 to i32
  %mul = mul nsw i32 %49, %conv44
  %53 = load i8*, i8** %mask, align 8
  %54 = load i8, i8* %53, align 1
  %conv45 = zext i8 %54 to i32
  %mul46 = mul nsw i32 %mul, %conv45
  %div = sdiv i32 %mul46, 65025
  store i32 %div, i32* %combined_opacity, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.then.39
  %55 = load i32, i32* %opacity, align 4
  %56 = load i8*, i8** %mask, align 8
  %57 = load i8, i8* %56, align 1
  %conv47 = zext i8 %57 to i32
  %mul48 = mul nsw i32 %55, %conv47
  %div49 = sdiv i32 %mul48, 255
  store i32 %div49, i32* %combined_opacity, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.41
  %58 = load i8*, i8** %mask, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %mask, align 8
  br label %if.end.61

if.else.51:                                       ; preds = %for.end.36
  %59 = load i32, i32* %has_alpha, align 4
  %tobool52 = icmp ne i32 %59, 0
  br i1 %tobool52, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.else.51
  %60 = load i32, i32* %opacity, align 4
  %61 = load i32, i32* %alpha, align 4
  %idxprom54 = sext i32 %61 to i64
  %62 = load i8*, i8** %src, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %62, i64 %idxprom54
  %63 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %63 to i32
  %mul57 = mul nsw i32 %60, %conv56
  %div58 = sdiv i32 %mul57, 255
  store i32 %div58, i32* %combined_opacity, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.51
  %64 = load i32, i32* %opacity, align 4
  store i32 %64, i32* %combined_opacity, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.53
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.50
  %65 = load i32, i32* %rand_val, align 4
  %66 = load i32, i32* %combined_opacity, align 4
  %cmp62 = icmp sge i32 %65, %66
  %cond = select i1 %cmp62, i32 0, i32 255
  %conv64 = trunc i32 %cond to i8
  %67 = load i32, i32* %alpha, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %68, i64 %idxprom65
  store i8 %conv64, i8* %arrayidx66, align 1
  %69 = load i32, i32* %db, align 4
  %70 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %71 = load i32, i32* %sb, align 4
  %72 = load i8*, i8** %src, align 8
  %idx.ext67 = sext i32 %71 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %72, i64 %idx.ext67
  store i8* %add.ptr68, i8** %src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %73)
  %74 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %74, i32 0, i32 5
  %75 = load i32, i32* %pixelformat_A, align 4
  %idxprom69 = zext i32 %75 to i64
  %arrayidx70 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom69
  %76 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %76 to i32
  %tobool72 = icmp ne i32 %conv71, 0
  %cond73 = select i1 %tobool72, i32 11, i32 9
  %77 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %77, i32 0, i32 13
  store i32 %cond73, i32* %combine, align 4
  ret void
}

declare %struct._GRand* @g_rand_new_with_seed(i32) #2

declare i32 @g_rand_int(%struct._GRand*) #2

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #2

declare void @g_rand_free(%struct._GRand*) #2

; Function Attrs: nounwind uwtable
define void @gimp_composite_replace_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 13
  store i32 14, i32* %combine, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_swap_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %bytes1 = alloca i32, align 4
  %length = alloca i32, align 4
  %tmp = alloca i8, align 1
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 1
  %3 = load i8*, i8** %B, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 5
  %5 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_bpp, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %bytes1, align 4
  %7 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %7, i32 0, i32 4
  %8 = load i64, i64* %n_pixels, align 8
  %9 = load i32, i32* %bytes1, align 4
  %conv1 = zext i32 %9 to i64
  %mul = mul i64 %8, %conv1
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i32, i32* %length, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %dest, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %tmp, align 1
  %13 = load i8*, i8** %src, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %dest, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* %tmp, align 1
  %17 = load i8*, i8** %src, align 8
  store i8 %16, i8* %17, align 1
  %18 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %19 = load i8*, i8** %dest, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr3, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_normal_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_erase_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 5
  %4 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 6
  %7 = load i32, i32* %pixelformat_B, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %cond = select i1 %9, i32 16, i32 0
  %10 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %10, i32 0, i32 13
  store i32 %cond, i32* %combine, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_anti_erase_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 5
  %4 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 6
  %7 = load i32, i32* %pixelformat_B, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %cond = select i1 %9, i32 18, i32 0
  %10 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %10, i32 0, i32 13
  store i32 %cond, i32* %combine, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_color_erase_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 1
  %1 = load i8*, i8** %B, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  store i8* %1, i8** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 5
  %4 = load i32, i32* %pixelformat_A, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 6
  %7 = load i32, i32* %pixelformat_B, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @gimp_composite_pixel_alphap, i32 0, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %cond = select i1 %9, i32 20, i32 0
  %10 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %combine = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %10, i32 0, i32 13
  store i32 %cond, i32* %combine, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_scale_any_any_any_generic(%struct.GimpCompositeContext* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.GimpCompositeContext*, align 8
  %src1 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %length = alloca i32, align 4
  %bytes1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.GimpCompositeContext* %ctx, %struct.GimpCompositeContext** %ctx.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  store i8* %1, i8** %src1, align 8
  %2 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %2, i32 0, i32 2
  %3 = load i8*, i8** %D, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %4, i32 0, i32 5
  %5 = load i32, i32* %pixelformat_A, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 5
  %7 = load i32, i32* %pixelformat_A1, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end.12

cond.false.4:                                     ; preds = %cond.false
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A5 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 5
  %9 = load i32, i32* %pixelformat_A5, align 4
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false.4
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false.4
  %10 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %pixelformat_A9 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %10, i32 0, i32 5
  %11 = load i32, i32* %pixelformat_A9, align 4
  %cmp10 = icmp eq i32 %11, 3
  %cond = select i1 %cmp10, i32 4, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ 3, %cond.true.7 ], [ %cond, %cond.false.8 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true.3
  %cond13 = phi i32 [ 2, %cond.true.3 ], [ %cond11, %cond.end ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.true
  %cond15 = phi i32 [ 1, %cond.true ], [ %cond13, %cond.end.12 ]
  store i32 %cond15, i32* %bytes1, align 4
  %12 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %12, i32 0, i32 4
  %13 = load i64, i64* %n_pixels, align 8
  %14 = load i32, i32* %bytes1, align 4
  %conv = zext i32 %14 to i64
  %mul = mul i64 %13, %conv
  %conv16 = trunc i64 %mul to i32
  store i32 %conv16, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.14
  %15 = load i32, i32* %length, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %length, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %src1, align 8
  %17 = load i8, i8* %16, align 1
  %conv17 = zext i8 %17 to i32
  %18 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %ctx.addr, align 8
  %scale = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %18, i32 0, i32 10
  %scale18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %scale, i32 0, i32 0
  %19 = load i32, i32* %scale18, align 4
  %mul19 = mul nsw i32 %conv17, %19
  %add = add nsw i32 %mul19, 128
  store i32 %add, i32* %tmp, align 4
  %20 = load i32, i32* %tmp, align 4
  %shr = ashr i32 %20, 8
  %21 = load i32, i32* %tmp, align 4
  %add20 = add nsw i32 %shr, %21
  %shr21 = ashr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %22 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv22, i8* %22, align 1
  %23 = load i8*, i8** %src1, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %src1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_composite_generic_init() #0 {
entry:
  %gr = alloca %struct._GRand*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %tmp = alloca i32, align 4
  %call = call %struct._GRand* @g_rand_new_with_seed(i32 314159265)
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call1 = call i32 @g_rand_int(%struct._GRand* %1)
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4096 x i32], [4096 x i32]* @random_table, i32 0, i64 %idxprom
  store i32 %call1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %4)
  store i32 0, i32* %a, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.22, %for.end
  %5 = load i32, i32* %a, align 4
  %cmp3 = icmp slt i32 %5, 256
  br i1 %cmp3, label %for.body.4, label %for.end.24

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %b, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.19, %for.body.4
  %6 = load i32, i32* %b, align 4
  %cmp6 = icmp slt i32 %6, 256
  br i1 %cmp6, label %for.body.7, label %for.end.21

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i32, i32* %a, align 4
  %sub = sub nsw i32 255, %7
  %shl = shl i32 %sub, 8
  store i32 %shl, i32* %tmp, align 4
  %8 = load i32, i32* %b, align 4
  %add = add nsw i32 %8, 1
  %9 = load i32, i32* %tmp, align 4
  %div = sdiv i32 %9, %add
  store i32 %div, i32* %tmp, align 4
  %10 = load i32, i32* %tmp, align 4
  %sub8 = sub nsw i32 255, %10
  store i32 %sub8, i32* %tmp, align 4
  %11 = load i32, i32* %tmp, align 4
  %cmp9 = icmp sgt i32 %11, 255
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.7
  br label %cond.end.13

cond.false:                                       ; preds = %for.body.7
  %12 = load i32, i32* %tmp, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %13 = load i32, i32* %tmp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi i32 [ 0, %cond.true.11 ], [ %13, %cond.false.12 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond14 to i8
  %14 = load i32, i32* %b, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i32, i32* %a, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [256 x [256 x i8]], [256 x [256 x i8]]* @burn_lut, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx17, i32 0, i64 %idxprom15
  store i8 %conv, i8* %arrayidx18, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %cond.end.13
  %16 = load i32, i32* %b, align 4
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, i32* %b, align 4
  br label %for.cond.5

for.end.21:                                       ; preds = %for.cond.5
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %17 = load i32, i32* %a, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %a, align 4
  br label %for.cond.2

for.end.24:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.32, %for.end.24
  %18 = load i32, i32* %i, align 4
  %cmp26 = icmp ult i32 %18, 256
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.25
  %19 = load i32, i32* %i, align 4
  %conv29 = trunc i32 %19 to i8
  %20 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [511 x i8], [511 x i8]* @add_lut, i32 0, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %21 = load i32, i32* %i, align 4
  %inc33 = add i32 %21, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  store i32 256, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %for.end.34
  %22 = load i32, i32* %i, align 4
  %cmp36 = icmp ule i32 %22, 510
  br i1 %cmp36, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.35
  %23 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [511 x i8], [511 x i8]* @add_lut, i32 0, i64 %idxprom39
  store i8 -1, i8* %arrayidx40, align 1
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %24 = load i32, i32* %i, align 4
  %inc42 = add i32 %24, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
