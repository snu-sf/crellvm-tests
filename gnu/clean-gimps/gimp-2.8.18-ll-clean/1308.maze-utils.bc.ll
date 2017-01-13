; ModuleID = './plug-ins/maze/maze-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpRGB = type { double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [58 x i8] c"maze: get_colors: Indexed image.  Using colors 15 and 0.\0A\00", align 1
@drawbox.rowbuf = internal global i8* null, align 8
@drawbox.high_size = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @get_colors(%struct._GimpDrawable* %drawable, i8* %fg, i8* %bg) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %fg.addr = alloca i8*, align 8
  %bg.addr = alloca i8*, align 8
  %foreground = alloca %struct._GimpRGB, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %fg, i8** %fg.addr, align 8
  store i8* %bg, i8** %bg.addr, align 8
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %foreground)
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %0 = load i8*, i8** %fg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 3
  store i8 -1, i8* %arrayidx, align 1
  %1 = load i8*, i8** %fg.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 -1, i8* %arrayidx2, align 1
  %2 = load i8*, i8** %fg.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 -1, i8* %arrayidx3, align 1
  %3 = load i8*, i8** %fg.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 -1, i8* %arrayidx4, align 1
  %4 = load i8*, i8** %bg.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 -1, i8* %arrayidx5, align 1
  %5 = load i8*, i8** %bg.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 -1, i8* %arrayidx6, align 1
  %6 = load i8*, i8** %bg.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 -1, i8* %arrayidx7, align 1
  %7 = load i8*, i8** %bg.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 -1, i8* %arrayidx8, align 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_type(i32 %9)
  switch i32 %call9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.16
    i32 2, label %sw.bb.16
    i32 5, label %sw.bb.21
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry, %entry
  %10 = load i8*, i8** %fg.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8*, i8** %fg.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8*, i8** %fg.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %foreground, i8* %arrayidx10, i8* %arrayidx11, i8* %arrayidx12)
  %13 = load i8*, i8** %bg.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8*, i8** %bg.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8*, i8** %bg.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* %arrayidx13, i8* %arrayidx14, i8* %arrayidx15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry, %entry
  %call17 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %foreground)
  %16 = load i8*, i8** %fg.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %call17, i8* %arrayidx18, align 1
  %call19 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %background)
  %17 = load i8*, i8** %bg.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %call19, i8* %arrayidx20, align 1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0))
  %18 = load i8*, i8** %fg.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 15, i8* %arrayidx22, align 1
  %19 = load i8*, i8** %bg.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx23, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb.16, %sw.bb
  ret void
}

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare i32 @gimp_drawable_type(i32) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @drawbox(%struct._GimpPixelRgn* %dest_rgn, i32 %x, i32 %y, i32 %w, i32 %h, i8* %clr) #0 {
entry:
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %clr.addr = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %x_min = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %y_max = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i8* %clr, i8** %clr.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 2
  %1 = load i32, i32* %bpp1, align 4
  store i32 %1, i32* %bpp, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %bpp, align 4
  %mul = mul i32 %2, %3
  store i32 %mul, i32* %x_min, align 4
  %4 = load i32, i32* %bpp, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %w2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 6
  %6 = load i32, i32* %w2, align 4
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %w.addr, align 4
  %add = add i32 %7, %8
  %cmp = icmp ult i32 %6, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %w3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 6
  %10 = load i32, i32* %w3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %w.addr, align 4
  %add4 = add i32 %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %add4, %cond.false ]
  %mul5 = mul i32 %4, %cond
  %13 = load i32, i32* %x_min, align 4
  %sub = sub i32 %mul5, %13
  store i32 %sub, i32* %rowsize, align 4
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 3
  %15 = load i32, i32* %rowstride, align 4
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %h6 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 7
  %17 = load i32, i32* %h6, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %h.addr, align 4
  %add7 = add i32 %18, %19
  %cmp8 = icmp ult i32 %17, %add7
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %h10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 7
  %21 = load i32, i32* %h10, align 4
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %h.addr, align 4
  %add12 = add i32 %22, %23
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.9
  %cond14 = phi i32 [ %21, %cond.true.9 ], [ %add12, %cond.false.11 ]
  %mul15 = mul i32 %15, %cond14
  store i32 %mul15, i32* %y_max, align 4
  %24 = load i32, i32* @drawbox.high_size, align 4
  %cmp16 = icmp eq i32 %24, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.13
  %25 = load i32, i32* %rowsize, align 4
  %conv = zext i32 %25 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** @drawbox.rowbuf, align 8
  br label %if.end.22

if.else:                                          ; preds = %cond.end.13
  %26 = load i32, i32* %rowsize, align 4
  %27 = load i32, i32* @drawbox.high_size, align 4
  %cmp17 = icmp ugt i32 %26, %27
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %28 = load i8*, i8** @drawbox.rowbuf, align 8
  %29 = load i32, i32* %rowsize, align 4
  %conv20 = zext i32 %29 to i64
  %call21 = call i8* @g_realloc_n(i8* %28, i64 %conv20, i64 1)
  store i8* %call21, i8** @drawbox.rowbuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %30 = load i32, i32* @drawbox.high_size, align 4
  %31 = load i32, i32* %rowsize, align 4
  %cmp23 = icmp ugt i32 %30, %31
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end.22
  %32 = load i32, i32* @drawbox.high_size, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end.22
  %33 = load i32, i32* %rowsize, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %32, %cond.true.25 ], [ %33, %cond.false.26 ]
  store i32 %cond28, i32* @drawbox.high_size, align 4
  store i32 0, i32* %xx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.27
  %34 = load i32, i32* %xx, align 4
  %35 = load i32, i32* %rowsize, align 4
  %cmp29 = icmp ult i32 %34, %35
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %xx, align 4
  %idxprom = zext i32 %36 to i64
  %37 = load i8*, i8** @drawbox.rowbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8*, i8** %clr.addr, align 8
  %39 = load i32, i32* %bpp, align 4
  %conv31 = zext i32 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %38, i64 %conv31, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %bpp, align 4
  %41 = load i32, i32* %xx, align 4
  %add32 = add i32 %41, %40
  store i32 %add32, i32* %xx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %rowstride33 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %42, i32 0, i32 3
  %43 = load i32, i32* %rowstride33, align 4
  %44 = load i32, i32* %y.addr, align 4
  %mul34 = mul i32 %43, %44
  store i32 %mul34, i32* %yy, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.43, %for.end
  %45 = load i32, i32* %yy, align 4
  %46 = load i32, i32* %y_max, align 4
  %cmp36 = icmp ult i32 %45, %46
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %47 = load i32, i32* %yy, align 4
  %48 = load i32, i32* %x_min, align 4
  %add39 = add i32 %47, %48
  %idxprom40 = zext i32 %add39 to i64
  %49 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %49, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %50, i64 %idxprom40
  %51 = load i8*, i8** @drawbox.rowbuf, align 8
  %52 = load i32, i32* %rowsize, align 4
  %conv42 = zext i32 %52 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx41, i8* %51, i64 %conv42, i32 1, i1 false)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %53 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %rowstride44 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %53, i32 0, i32 3
  %54 = load i32, i32* %rowstride44, align 4
  %55 = load i32, i32* %yy, align 4
  %add45 = add i32 %55, %54
  store i32 %add45, i32* %yy, align 4
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
