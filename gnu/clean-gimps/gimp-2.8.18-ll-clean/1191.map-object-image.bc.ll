; ModuleID = './plug-ins/map-object/map-object-image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo_surface = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }

@preview_rgb_data = global i8* null, align 8
@preview_surface = global %struct._cairo_surface* null, align 8
@peek.data = internal global [4 x i8] zeroinitializer, align 1
@source_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@input_drawable = global %struct._GimpDrawable* null, align 8
@in_channels = global i32 0, align 4
@poke.col = internal global [4 x i8] zeroinitializer, align 1
@dest_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@border_x1 = global i32 0, align 4
@border_y1 = global i32 0, align 4
@border_x2 = global i32 0, align 4
@border_y2 = global i32 0, align 4
@width = global i32 0, align 4
@height = global i32 0, align 4
@mapvals = external global %struct.MapObjectValues, align 8
@background = global %struct._GimpRGB zeroinitializer, align 8
@box_drawables = global [6 x %struct._GimpDrawable*] zeroinitializer, align 16
@cylinder_drawables = global [2 x %struct._GimpDrawable*] zeroinitializer, align 16
@output_drawable = global %struct._GimpDrawable* null, align 8
@maxcounter = global i64 0, align 8
@preview_rgb_stride = global i32 0, align 4
@box_regions = global [6 x %struct._GimpPixelRgn] zeroinitializer, align 16
@cylinder_regions = global [2 x %struct._GimpPixelRgn] zeroinitializer, align 16
@old_depth = global i64 0, align 8
@max_depth = global i64 0, align 8
@imgtype = global i32 0, align 4
@out_channels = global i32 0, align 4
@image_id = global i32 0, align 4
@oldtreshold = global double 0.000000e+00, align 8
@peek_box_image.data = internal global [4 x i8] zeroinitializer, align 1
@peek_cylinder_image.data = internal global [4 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @peek(%struct._GimpRGB* noalias sret %agg.result, i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* @source_region, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 0), align 1
  %conv = uitofp i8 %2 to double
  %div = fdiv double %conv, 2.550000e+02
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %div, double* %r, align 8
  %3 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 1), align 1
  %conv1 = uitofp i8 %3 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %div2, double* %g, align 8
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 2), align 1
  %conv3 = uitofp i8 %4 to double
  %div4 = fdiv double %conv3, 2.550000e+02
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %div4, double* %b, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @in_channels, align 4
  %cmp6 = icmp eq i32 %7, 4
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %8 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 3), align 1
  %conv9 = uitofp i8 %8 to double
  %div10 = fdiv double %conv9, 2.550000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div10, double* %a, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %a11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.14

if.else.12:                                       ; preds = %entry
  %a13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.end
  %9 = bitcast %struct._GimpRGB* %agg.result to i8*
  %10 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @poke(i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.col, i32 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.col, i32 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.col, i32 0, i64 2), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.col, i32 0, i64 3))
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* @dest_region, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.col, i32 0, i32 0), i32 %1, i32 %2)
  ret void
}

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @checkbounds(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* @border_x1, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* @border_y1, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* @border_x2, align 4
  %cmp3 = icmp sge i32 %4, %5
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* @border_y2, align 4
  %cmp5 = icmp sge i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @int_to_pos(%struct._GimpVector3* noalias sret %agg.result, i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pos = alloca %struct._GimpVector3, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* @width, align 4
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv1
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div, double* %x2, align 8
  %2 = load i32, i32* %y.addr, align 4
  %conv3 = sitofp i32 %2 to double
  %3 = load i32, i32* @height, align 4
  %conv4 = sitofp i32 %3 to double
  %div5 = fdiv double %conv3, %conv4
  %y6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div5, double* %y6, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %4 = bitcast %struct._GimpVector3* %agg.result to i8*
  %5 = bitcast %struct._GimpVector3* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pos_to_int(double %x, double %y, i32* %scr_x, i32* %scr_y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %scr_x.addr = alloca i32*, align 8
  %scr_y.addr = alloca i32*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32* %scr_x, i32** %scr_x.addr, align 8
  store i32* %scr_y, i32** %scr_y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @width, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double %0, %conv
  %conv1 = fptosi double %mul to i32
  %2 = load i32*, i32** %scr_x.addr, align 8
  store i32 %conv1, i32* %2, align 4
  %3 = load double, double* %y.addr, align 8
  %4 = load i32, i32* @height, align 4
  %conv2 = sitofp i32 %4 to double
  %mul3 = fmul double %3, %conv2
  %conv4 = fptosi double %mul3 to i32
  %5 = load i32*, i32** %scr_y.addr, align 8
  store i32 %conv4, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_image_color(%struct._GimpRGB* noalias sret %agg.result, double %u, double %v, i32* %inside) #0 {
entry:
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %inside.addr = alloca i32*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %p = alloca [4 x %struct._GimpRGB], align 16
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp19 = alloca %struct._GimpRGB, align 8
  %tmp21 = alloca %struct._GimpRGB, align 8
  %tmp23 = alloca %struct._GimpRGB, align 8
  %tmp39 = alloca %struct._GimpRGB, align 8
  %tmp41 = alloca %struct._GimpRGB, align 8
  %tmp43 = alloca %struct._GimpRGB, align 8
  %tmp45 = alloca %struct._GimpRGB, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i32* %inside, i32** %inside.addr, align 8
  %0 = load double, double* %u.addr, align 8
  %1 = load double, double* %v.addr, align 8
  call void @pos_to_int(double %0, double %1, i32* %x1, i32* %y1)
  %2 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 14), align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %x1, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* @width, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %x1, align 4
  %sub3 = sub nsw i32 0, %6
  %7 = load i32, i32* @width, align 4
  %rem = srem i32 %sub3, %7
  %sub4 = sub nsw i32 %sub, %rem
  store i32 %sub4, i32* %x1, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %x1, align 4
  %9 = load i32, i32* @width, align 4
  %rem5 = srem i32 %8, %9
  store i32 %rem5, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = load i32, i32* %y1, align 4
  %cmp6 = icmp slt i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %if.end
  %11 = load i32, i32* @height, align 4
  %sub8 = sub nsw i32 %11, 1
  %12 = load i32, i32* %y1, align 4
  %sub9 = sub nsw i32 0, %12
  %13 = load i32, i32* @height, align 4
  %rem10 = srem i32 %sub9, %13
  %sub11 = sub nsw i32 %sub8, %rem10
  store i32 %sub11, i32* %y1, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %if.end
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* @height, align 4
  %rem13 = srem i32 %14, %15
  store i32 %rem13, i32* %y1, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.7
  %16 = load i32, i32* %x1, align 4
  %add = add nsw i32 %16, 1
  %17 = load i32, i32* @width, align 4
  %rem15 = srem i32 %add, %17
  store i32 %rem15, i32* %x2, align 4
  %18 = load i32, i32* %y1, align 4
  %add16 = add nsw i32 %18, 1
  %19 = load i32, i32* @height, align 4
  %rem17 = srem i32 %add16, %19
  store i32 %rem17, i32* %y2, align 4
  %arrayidx = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 0
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp, i32 %20, i32 %21)
  %22 = bitcast %struct._GimpRGB* %arrayidx to i8*
  %23 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %arrayidx18 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 1
  %24 = load i32, i32* %x2, align 4
  %25 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp19, i32 %24, i32 %25)
  %26 = bitcast %struct._GimpRGB* %arrayidx18 to i8*
  %27 = bitcast %struct._GimpRGB* %tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %arrayidx20 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 2
  %28 = load i32, i32* %x1, align 4
  %29 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp21, i32 %28, i32 %29)
  %30 = bitcast %struct._GimpRGB* %arrayidx20 to i8*
  %31 = bitcast %struct._GimpRGB* %tmp21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %arrayidx22 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 3
  %32 = load i32, i32* %x2, align 4
  %33 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp23, i32 %32, i32 %33)
  %34 = bitcast %struct._GimpRGB* %arrayidx22 to i8*
  %35 = bitcast %struct._GimpRGB* %tmp23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  %36 = load double, double* %u.addr, align 8
  %37 = load i32, i32* @width, align 4
  %conv = sitofp i32 %37 to double
  %mul = fmul double %36, %conv
  %38 = load double, double* %v.addr, align 8
  %39 = load i32, i32* @height, align 4
  %conv24 = sitofp i32 %39 to double
  %mul25 = fmul double %38, %conv24
  %arraydecay = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i32 0
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %agg.result, double %mul, double %mul25, %struct._GimpRGB* %arraydecay)
  br label %return

if.end.26:                                        ; preds = %entry
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %call = call i32 @checkbounds(i32 %40, i32 %41)
  %cmp27 = icmp eq i32 %call, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %42 = load i32*, i32** %inside.addr, align 8
  store i32 0, i32* %42, align 4
  %43 = bitcast %struct._GimpRGB* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %44 = load i32, i32* %x1, align 4
  %add31 = add nsw i32 %44, 1
  store i32 %add31, i32* %x2, align 4
  %45 = load i32, i32* %y1, align 4
  %add32 = add nsw i32 %45, 1
  store i32 %add32, i32* %y2, align 4
  %46 = load i32, i32* %x2, align 4
  %47 = load i32, i32* %y2, align 4
  %call33 = call i32 @checkbounds(i32 %46, i32 %47)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  %48 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %x1, align 4
  %50 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %agg.result, i32 %49, i32 %50)
  br label %return

if.end.37:                                        ; preds = %if.end.30
  %51 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %51, align 4
  %arrayidx38 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 0
  %52 = load i32, i32* %x1, align 4
  %53 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp39, i32 %52, i32 %53)
  %54 = bitcast %struct._GimpRGB* %arrayidx38 to i8*
  %55 = bitcast %struct._GimpRGB* %tmp39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  %arrayidx40 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 1
  %56 = load i32, i32* %x2, align 4
  %57 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp41, i32 %56, i32 %57)
  %58 = bitcast %struct._GimpRGB* %arrayidx40 to i8*
  %59 = bitcast %struct._GimpRGB* %tmp41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  %arrayidx42 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 2
  %60 = load i32, i32* %x1, align 4
  %61 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp43, i32 %60, i32 %61)
  %62 = bitcast %struct._GimpRGB* %arrayidx42 to i8*
  %63 = bitcast %struct._GimpRGB* %tmp43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  %arrayidx44 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 3
  %64 = load i32, i32* %x2, align 4
  %65 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp45, i32 %64, i32 %65)
  %66 = bitcast %struct._GimpRGB* %arrayidx44 to i8*
  %67 = bitcast %struct._GimpRGB* %tmp45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  %68 = load double, double* %u.addr, align 8
  %69 = load i32, i32* @width, align 4
  %conv46 = sitofp i32 %69 to double
  %mul47 = fmul double %68, %conv46
  %70 = load double, double* %v.addr, align 8
  %71 = load i32, i32* @height, align 4
  %conv48 = sitofp i32 %71 to double
  %mul49 = fmul double %70, %conv48
  %arraydecay50 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i32 0
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %agg.result, double %mul47, double %mul49, %struct._GimpRGB* %arraydecay50)
  br label %return

return:                                           ; preds = %if.end.37, %if.then.36, %if.then.29, %if.end.14
  ret void
}

declare void @gimp_bilinear_rgba(%struct._GimpRGB* sret, double, double, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @get_box_image_color(%struct._GimpRGB* noalias sret %agg.result, i32 %image, double %u, double %v) #0 {
entry:
  %image.addr = alloca i32, align 4
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %p = alloca [4 x %struct._GimpRGB], align 16
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp16 = alloca %struct._GimpRGB, align 8
  %tmp18 = alloca %struct._GimpRGB, align 8
  %tmp20 = alloca %struct._GimpRGB, align 8
  store i32 %image, i32* %image.addr, align 4
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %w, align 4
  %3 = load i32, i32* %image.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx2, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %h, align 4
  %6 = load double, double* %u.addr, align 8
  %7 = load i32, i32* %w, align 4
  %conv = sitofp i32 %7 to double
  %mul = fmul double %6, %conv
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %x1, align 4
  %8 = load double, double* %v.addr, align 8
  %9 = load i32, i32* %h, align 4
  %conv4 = sitofp i32 %9 to double
  %mul5 = fmul double %8, %conv4
  %conv6 = fptosi double %mul5 to i32
  store i32 %conv6, i32* %y1, align 4
  %10 = load i32, i32* %image.addr, align 4
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* %y1, align 4
  %call = call i32 @checkbounds_box_image(i32 %10, i32 %11, i32 %12)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %x1, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %x2, align 4
  %15 = load i32, i32* %y1, align 4
  %add8 = add nsw i32 %15, 1
  store i32 %add8, i32* %y2, align 4
  %16 = load i32, i32* %image.addr, align 4
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %y2, align 4
  %call9 = call i32 @checkbounds_box_image(i32 %16, i32 %17, i32 %18)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %19 = load i32, i32* %image.addr, align 4
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  call void @peek_box_image(%struct._GimpRGB* sret %agg.result, i32 %19, i32 %20, i32 %21)
  br label %return

if.end.13:                                        ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 0
  %22 = load i32, i32* %image.addr, align 4
  %23 = load i32, i32* %x1, align 4
  %24 = load i32, i32* %y1, align 4
  call void @peek_box_image(%struct._GimpRGB* sret %tmp, i32 %22, i32 %23, i32 %24)
  %25 = bitcast %struct._GimpRGB* %arrayidx14 to i8*
  %26 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %arrayidx15 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 1
  %27 = load i32, i32* %image.addr, align 4
  %28 = load i32, i32* %x2, align 4
  %29 = load i32, i32* %y1, align 4
  call void @peek_box_image(%struct._GimpRGB* sret %tmp16, i32 %27, i32 %28, i32 %29)
  %30 = bitcast %struct._GimpRGB* %arrayidx15 to i8*
  %31 = bitcast %struct._GimpRGB* %tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %arrayidx17 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 2
  %32 = load i32, i32* %image.addr, align 4
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* %y2, align 4
  call void @peek_box_image(%struct._GimpRGB* sret %tmp18, i32 %32, i32 %33, i32 %34)
  %35 = bitcast %struct._GimpRGB* %arrayidx17 to i8*
  %36 = bitcast %struct._GimpRGB* %tmp18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %arrayidx19 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 3
  %37 = load i32, i32* %image.addr, align 4
  %38 = load i32, i32* %x2, align 4
  %39 = load i32, i32* %y2, align 4
  call void @peek_box_image(%struct._GimpRGB* sret %tmp20, i32 %37, i32 %38, i32 %39)
  %40 = bitcast %struct._GimpRGB* %arrayidx19 to i8*
  %41 = bitcast %struct._GimpRGB* %tmp20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  %42 = load double, double* %u.addr, align 8
  %43 = load i32, i32* %w, align 4
  %conv21 = sitofp i32 %43 to double
  %mul22 = fmul double %42, %conv21
  %44 = load double, double* %v.addr, align 8
  %45 = load i32, i32* %h, align 4
  %conv23 = sitofp i32 %45 to double
  %mul24 = fmul double %44, %conv23
  %arraydecay = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i32 0
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %agg.result, double %mul22, double %mul24, %struct._GimpRGB* %arraydecay)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @checkbounds_box_image(i32 %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 %image, i32* %image.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %w, align 4
  %3 = load i32, i32* %image.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx2, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %h, align 4
  %6 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %w, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %h, align 4
  %cmp7 = icmp sge i32 %10, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @peek_box_image(%struct._GimpRGB* noalias sret %agg.result, i32 %image, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct._GimpPixelRgn], [6 x %struct._GimpPixelRgn]* @box_regions, i32 0, i64 %idxprom
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %arrayidx, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_box_image.data, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_box_image.data, i32 0, i64 0), align 1
  %conv = uitofp i8 %3 to double
  %div = fdiv double %conv, 2.550000e+02
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %div, double* %r, align 8
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_box_image.data, i32 0, i64 1), align 1
  %conv1 = uitofp i8 %4 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %div2, double* %g, align 8
  %5 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_box_image.data, i32 0, i64 2), align 1
  %conv3 = uitofp i8 %5 to double
  %div4 = fdiv double %conv3, 2.550000e+02
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %div4, double* %b, align 8
  %6 = load i32, i32* %image.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom5
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx6, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 3
  %8 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %image.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx9, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_box_image.data, i32 0, i64 3), align 1
  %conv11 = uitofp i8 %12 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div12, double* %a, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %a13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.16

if.else.14:                                       ; preds = %entry
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.end
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_cylinder_image_color(%struct._GimpRGB* noalias sret %agg.result, i32 %image, double %u, double %v) #0 {
entry:
  %image.addr = alloca i32, align 4
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %p = alloca [4 x %struct._GimpRGB], align 16
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp16 = alloca %struct._GimpRGB, align 8
  %tmp18 = alloca %struct._GimpRGB, align 8
  %tmp20 = alloca %struct._GimpRGB, align 8
  store i32 %image, i32* %image.addr, align 4
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %w, align 4
  %3 = load i32, i32* %image.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx2, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %h, align 4
  %6 = load double, double* %u.addr, align 8
  %7 = load i32, i32* %w, align 4
  %conv = sitofp i32 %7 to double
  %mul = fmul double %6, %conv
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %x1, align 4
  %8 = load double, double* %v.addr, align 8
  %9 = load i32, i32* %h, align 4
  %conv4 = sitofp i32 %9 to double
  %mul5 = fmul double %8, %conv4
  %conv6 = fptosi double %mul5 to i32
  store i32 %conv6, i32* %y1, align 4
  %10 = load i32, i32* %image.addr, align 4
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* %y1, align 4
  %call = call i32 @checkbounds_cylinder_image(i32 %10, i32 %11, i32 %12)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %x1, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %x2, align 4
  %15 = load i32, i32* %y1, align 4
  %add8 = add nsw i32 %15, 1
  store i32 %add8, i32* %y2, align 4
  %16 = load i32, i32* %image.addr, align 4
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %y2, align 4
  %call9 = call i32 @checkbounds_cylinder_image(i32 %16, i32 %17, i32 %18)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %19 = load i32, i32* %image.addr, align 4
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  call void @peek_cylinder_image(%struct._GimpRGB* sret %agg.result, i32 %19, i32 %20, i32 %21)
  br label %return

if.end.13:                                        ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 0
  %22 = load i32, i32* %image.addr, align 4
  %23 = load i32, i32* %x1, align 4
  %24 = load i32, i32* %y1, align 4
  call void @peek_cylinder_image(%struct._GimpRGB* sret %tmp, i32 %22, i32 %23, i32 %24)
  %25 = bitcast %struct._GimpRGB* %arrayidx14 to i8*
  %26 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %arrayidx15 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 1
  %27 = load i32, i32* %image.addr, align 4
  %28 = load i32, i32* %x2, align 4
  %29 = load i32, i32* %y1, align 4
  call void @peek_cylinder_image(%struct._GimpRGB* sret %tmp16, i32 %27, i32 %28, i32 %29)
  %30 = bitcast %struct._GimpRGB* %arrayidx15 to i8*
  %31 = bitcast %struct._GimpRGB* %tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %arrayidx17 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 2
  %32 = load i32, i32* %image.addr, align 4
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* %y2, align 4
  call void @peek_cylinder_image(%struct._GimpRGB* sret %tmp18, i32 %32, i32 %33, i32 %34)
  %35 = bitcast %struct._GimpRGB* %arrayidx17 to i8*
  %36 = bitcast %struct._GimpRGB* %tmp18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %arrayidx19 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 3
  %37 = load i32, i32* %image.addr, align 4
  %38 = load i32, i32* %x2, align 4
  %39 = load i32, i32* %y2, align 4
  call void @peek_cylinder_image(%struct._GimpRGB* sret %tmp20, i32 %37, i32 %38, i32 %39)
  %40 = bitcast %struct._GimpRGB* %arrayidx19 to i8*
  %41 = bitcast %struct._GimpRGB* %tmp20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  %42 = load double, double* %u.addr, align 8
  %43 = load i32, i32* %w, align 4
  %conv21 = sitofp i32 %43 to double
  %mul22 = fmul double %42, %conv21
  %44 = load double, double* %v.addr, align 8
  %45 = load i32, i32* %h, align 4
  %conv23 = sitofp i32 %45 to double
  %mul24 = fmul double %44, %conv23
  %arraydecay = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i32 0
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %agg.result, double %mul22, double %mul24, %struct._GimpRGB* %arraydecay)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @checkbounds_cylinder_image(i32 %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 %image, i32* %image.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %w, align 4
  %3 = load i32, i32* %image.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx2, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %h, align 4
  %6 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %w, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %h, align 4
  %cmp7 = icmp sge i32 %10, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @peek_cylinder_image(%struct._GimpRGB* noalias sret %agg.result, i32 %image, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %image.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._GimpPixelRgn], [2 x %struct._GimpPixelRgn]* @cylinder_regions, i32 0, i64 %idxprom
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %arrayidx, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_cylinder_image.data, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_cylinder_image.data, i32 0, i64 0), align 1
  %conv = uitofp i8 %3 to double
  %div = fdiv double %conv, 2.550000e+02
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %div, double* %r, align 8
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_cylinder_image.data, i32 0, i64 1), align 1
  %conv1 = uitofp i8 %4 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %div2, double* %g, align 8
  %5 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_cylinder_image.data, i32 0, i64 2), align 1
  %conv3 = uitofp i8 %5 to double
  %div4 = fdiv double %conv3, 2.550000e+02
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %div4, double* %b, align 8
  %6 = load i32, i32* %image.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom5
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx6, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 3
  %8 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %image.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx9, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek_cylinder_image.data, i32 0, i64 3), align 1
  %conv11 = uitofp i8 %12 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div12, double* %a, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %a13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.16

if.else.14:                                       ; preds = %entry
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.end
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @image_setup(%struct._GimpDrawable* %drawable, i32 %interactive) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %interactive.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %interactive, i32* %interactive.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %call = call i32 @gimp_tile_width() #4
  %add = add i32 %1, %call
  %sub = sub i32 %add, 1
  %call1 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %sub, %call1
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** @input_drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** @output_drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_mask_bounds(i32 %5, i32* @border_x1, i32* @border_y1, i32* @border_x2, i32* @border_y2)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  store i32 %7, i32* @width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  store i32 %9, i32* @height, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %11 = load i32, i32* @width, align 4
  %12 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @source_region, %struct._GimpDrawable* %10, i32 0, i32 0, i32 %11, i32 %12, i32 0, i32 0)
  %13 = load i32, i32* @width, align 4
  %conv4 = sext i32 %13 to i64
  %14 = load i32, i32* @height, align 4
  %conv5 = sext i32 %14 to i64
  %mul = mul nsw i64 %conv4, %conv5
  store i64 %mul, i64* @maxcounter, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @gimp_rgba_set(%struct._GimpRGB* @background, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call i32 @gimp_context_get_background(%struct._GimpRGB* @background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* @background, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 3, i32* @in_channels, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_has_alpha(i32 %17)
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %18 = load i32, i32* @in_channels, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @in_channels, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %19 = load i32, i32* %interactive.addr, align 4
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end.13
  %call17 = call i32 @cairo_format_stride_for_width(i32 1, i32 200)
  store i32 %call17, i32* @preview_rgb_stride, align 4
  %20 = load i32, i32* @preview_rgb_stride, align 4
  %mul18 = mul nsw i32 %20, 200
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc0_n(i64 %conv19, i64 1)
  store i8* %call20, i8** @preview_rgb_data, align 8
  %21 = load i8*, i8** @preview_rgb_data, align 8
  %22 = load i32, i32* @preview_rgb_stride, align 4
  %call21 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %21, i32 1, i32 200, i32 200, i32 %22)
  store %struct._cairo_surface* %call21, %struct._cairo_surface** @preview_surface, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %if.end.13
  ret i32 1
}

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @cairo_format_stride_for_width(i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
