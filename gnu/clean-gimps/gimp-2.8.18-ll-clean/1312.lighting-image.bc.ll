; ModuleID = './plug-ins/lighting/lighting-image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._cairo_surface = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpVector3 = type { double, double, double }

@bump_drawable = global %struct._GimpDrawable* null, align 8
@env_drawable = global %struct._GimpDrawable* null, align 8
@preview_rgb_data = global i8* null, align 8
@preview_surface = global %struct._cairo_surface* null, align 8
@source_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@input_drawable = global %struct._GimpDrawable* null, align 8
@in_channels = global i32 0, align 4
@env_width = global i32 0, align 4
@env_height = global i32 0, align 4
@env_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@poke.data = internal global [4 x i8] zeroinitializer, align 1
@width = global i32 0, align 4
@height = global i32 0, align 4
@dest_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@border_x1 = global i32 0, align 4
@border_y1 = global i32 0, align 4
@border_x2 = global i32 0, align 4
@border_y2 = global i32 0, align 4
@background = global %struct._GimpRGB zeroinitializer, align 8
@output_drawable = global %struct._GimpDrawable* null, align 8
@maxcounter = global i64 0, align 8
@preview_rgb_stride = global i32 0, align 4
@bump_region = global %struct._GimpPixelRgn zeroinitializer, align 8
@imgtype = global i32 0, align 4
@out_channels = global i32 0, align 4
@sinemap = global [256 x i8] zeroinitializer, align 16
@spheremap = global [256 x i8] zeroinitializer, align 16
@logmap = global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define zeroext i8 @peek_map(%struct._GimpPixelRgn* %region, i32 %x, i32 %y) #0 {
entry:
  %region.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data = alloca [4 x i8], align 1
  %ret_val = alloca i8, align 1
  store %struct._GimpPixelRgn* %region, %struct._GimpPixelRgn** %region.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i32 0
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %0, i8* %arraydecay, i32 %1, i32 %2)
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 2
  %4 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %ret_val, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 0
  %6 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %6 to i32
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 2
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %add6 = add nsw i32 %add, %conv5
  %conv7 = sitofp i32 %add6 to double
  %div = fdiv double %conv7, 3.000000e+00
  %conv8 = fptrunc double %div to float
  %conv9 = fptoui float %conv8 to i8
  store i8 %conv9, i8* %ret_val, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8, i8* %ret_val, align 1
  ret i8 %9
}

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @peek(%struct._GimpRGB* noalias sret %agg.result, i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data = alloca [4 x i8], align 1
  %color = alloca %struct._GimpRGB, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i32 0
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* @source_region, i8* %arraydecay, i32 %0, i32 %1)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %2 to double
  %div = fdiv double %conv, 2.550000e+02
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %div, double* %r, align 8
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = uitofp i8 %3 to double
  %div3 = fdiv double %conv2, 2.550000e+02
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %div3, double* %g, align 8
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 2
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = uitofp i8 %4 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %div6, double* %b, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @in_channels, align 4
  %cmp8 = icmp eq i32 %7, 4
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 3
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = uitofp i8 %8 to double
  %div13 = fdiv double %conv12, 2.550000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double %div13, double* %a, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %a14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.17

if.else.15:                                       ; preds = %entry
  %a16 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.end
  %9 = bitcast %struct._GimpRGB* %agg.result to i8*
  %10 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @peek_env_map(%struct._GimpRGB* noalias sret %agg.result, i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data = alloca [4 x i8], align 1
  %color = alloca %struct._GimpRGB, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x.addr, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @env_width, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* @env_width, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %y.addr, align 4
  br label %if.end.11

if.else.6:                                        ; preds = %if.end.3
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* @env_height, align 4
  %cmp7 = icmp sge i32 %5, %6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else.6
  %7 = load i32, i32* @env_height, align 4
  %sub9 = sub nsw i32 %7, 1
  store i32 %sub9, i32* %y.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i32 0
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* @env_region, i8* %arraydecay, i32 %8, i32 %9)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %10 to double
  %div = fdiv double %conv, 2.550000e+02
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %div, double* %r, align 8
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 1
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = uitofp i8 %11 to double
  %div14 = fdiv double %conv13, 2.550000e+02
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %div14, double* %g, align 8
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 2
  %12 = load i8, i8* %arrayidx15, align 1
  %conv16 = uitofp i8 %12 to double
  %div17 = fdiv double %conv16, 2.550000e+02
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %div17, double* %b, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  store double 1.000000e+00, double* %a, align 8
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @poke(i32 %x, i32 %y, %struct._GimpRGB* %color) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x.addr, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @width, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* @width, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %y.addr, align 4
  br label %if.end.11

if.else.6:                                        ; preds = %if.end.3
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* @height, align 4
  %cmp7 = icmp sge i32 %5, %6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else.6
  %7 = load i32, i32* @height, align 4
  %sub9 = sub nsw i32 %7, 1
  store i32 %sub9, i32* %y.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 0
  %9 = load double, double* %r, align 8
  %mul = fmul double %9, 2.550000e+02
  %conv = fptoui double %mul to i8
  store i8 %conv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 0), align 1
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g, align 8
  %mul12 = fmul double %11, 2.550000e+02
  %conv13 = fptoui double %mul12 to i8
  store i8 %conv13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 1), align 1
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b, align 8
  %mul14 = fmul double %13, 2.550000e+02
  %conv15 = fptoui double %mul14 to i8
  store i8 %conv15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 2), align 1
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 3
  %15 = load double, double* %a, align 8
  %mul16 = fmul double %15, 2.550000e+02
  %conv17 = fptoui double %mul16 to i8
  store i8 %conv17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 3), align 1
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* @dest_region, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i32 0), i32 %16, i32 %17)
  ret void
}

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @check_bounds(i32 %x, i32 %y) #0 {
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
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* @width, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  %x2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div, double* %x2, align 8
  %4 = load i32, i32* %y.addr, align 4
  %conv3 = sitofp i32 %4 to double
  %5 = load i32, i32* @width, align 4
  %conv4 = sitofp i32 %5 to double
  %div5 = fdiv double %conv3, %conv4
  %y6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div5, double* %y6, align 8
  %6 = load i32, i32* @height, align 4
  %conv7 = sitofp i32 %6 to double
  %7 = load i32, i32* @width, align 4
  %conv8 = sitofp i32 %7 to double
  %div9 = fdiv double %conv7, %conv8
  %sub = fsub double 1.000000e+00, %div9
  %mul = fmul double 5.000000e-01, %sub
  %y10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  %8 = load double, double* %y10, align 8
  %add = fadd double %8, %mul
  store double %add, double* %y10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %x.addr, align 4
  %conv11 = sitofp i32 %9 to double
  %10 = load i32, i32* @height, align 4
  %conv12 = sitofp i32 %10 to double
  %div13 = fdiv double %conv11, %conv12
  %x14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div13, double* %x14, align 8
  %11 = load i32, i32* %y.addr, align 4
  %conv15 = sitofp i32 %11 to double
  %12 = load i32, i32* @height, align 4
  %conv16 = sitofp i32 %12 to double
  %div17 = fdiv double %conv15, %conv16
  %y18 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div17, double* %y18, align 8
  %13 = load i32, i32* @width, align 4
  %conv19 = sitofp i32 %13 to double
  %14 = load i32, i32* @height, align 4
  %conv20 = sitofp i32 %14 to double
  %div21 = fdiv double %conv19, %conv20
  %sub22 = fsub double 1.000000e+00, %div21
  %mul23 = fmul double 5.000000e-01, %sub22
  %x24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  %15 = load double, double* %x24, align 8
  %add25 = fadd double %15, %mul23
  store double %add25, double* %x24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %16 = bitcast %struct._GimpVector3* %agg.result to i8*
  %17 = bitcast %struct._GimpVector3* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @int_to_posf(%struct._GimpVector3* noalias sret %agg.result, double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pos = alloca %struct._GimpVector3, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %3 = load i32, i32* @width, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %2, %conv
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div, double* %x1, align 8
  %4 = load double, double* %y.addr, align 8
  %5 = load i32, i32* @width, align 4
  %conv2 = sitofp i32 %5 to double
  %div3 = fdiv double %4, %conv2
  %y4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div3, double* %y4, align 8
  %6 = load i32, i32* @height, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load i32, i32* @width, align 4
  %conv6 = sitofp i32 %7 to double
  %div7 = fdiv double %conv5, %conv6
  %sub = fsub double 1.000000e+00, %div7
  %mul = fmul double 5.000000e-01, %sub
  %y8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  %8 = load double, double* %y8, align 8
  %add = fadd double %8, %mul
  store double %add, double* %y8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load double, double* %x.addr, align 8
  %10 = load i32, i32* @height, align 4
  %conv9 = sitofp i32 %10 to double
  %div10 = fdiv double %9, %conv9
  %x11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div10, double* %x11, align 8
  %11 = load double, double* %y.addr, align 8
  %12 = load i32, i32* @height, align 4
  %conv12 = sitofp i32 %12 to double
  %div13 = fdiv double %11, %conv12
  %y14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div13, double* %y14, align 8
  %13 = load i32, i32* @width, align 4
  %conv15 = sitofp i32 %13 to double
  %14 = load i32, i32* @height, align 4
  %conv16 = sitofp i32 %14 to double
  %div17 = fdiv double %conv15, %conv16
  %sub18 = fsub double 1.000000e+00, %div17
  %mul19 = fmul double 5.000000e-01, %sub18
  %x20 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  %15 = load double, double* %x20, align 8
  %add21 = fadd double %15, %mul19
  store double %add21, double* %x20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %16 = bitcast %struct._GimpVector3* %agg.result to i8*
  %17 = bitcast %struct._GimpVector3* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
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
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @height, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* @width, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  %sub = fsub double 1.000000e+00, %div
  %mul = fmul double 5.000000e-01, %sub
  %4 = load double, double* %y.addr, align 8
  %sub2 = fsub double %4, %mul
  store double %sub2, double* %y.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load i32, i32* @width, align 4
  %conv3 = sitofp i32 %6 to double
  %mul4 = fmul double %5, %conv3
  %call = call double @rint(double %mul4) #5
  %conv5 = fptosi double %call to i32
  %7 = load i32*, i32** %scr_x.addr, align 8
  store i32 %conv5, i32* %7, align 4
  %8 = load double, double* %y.addr, align 8
  %9 = load i32, i32* @width, align 4
  %conv6 = sitofp i32 %9 to double
  %mul7 = fmul double %8, %conv6
  %call8 = call double @rint(double %mul7) #5
  %conv9 = fptosi double %call8 to i32
  %10 = load i32*, i32** %scr_y.addr, align 8
  store i32 %conv9, i32* %10, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* @width, align 4
  %conv10 = sitofp i32 %11 to double
  %12 = load i32, i32* @height, align 4
  %conv11 = sitofp i32 %12 to double
  %div12 = fdiv double %conv10, %conv11
  %sub13 = fsub double 1.000000e+00, %div12
  %mul14 = fmul double 5.000000e-01, %sub13
  %13 = load double, double* %x.addr, align 8
  %sub15 = fsub double %13, %mul14
  store double %sub15, double* %x.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load i32, i32* @height, align 4
  %conv16 = sitofp i32 %15 to double
  %mul17 = fmul double %14, %conv16
  %call18 = call double @rint(double %mul17) #5
  %conv19 = fptosi double %call18 to i32
  %16 = load i32*, i32** %scr_x.addr, align 8
  store i32 %conv19, i32* %16, align 4
  %17 = load double, double* %y.addr, align 8
  %18 = load i32, i32* @height, align 4
  %conv20 = sitofp i32 %18 to double
  %mul21 = fmul double %17, %conv20
  %call22 = call double @rint(double %mul21) #5
  %conv23 = fptosi double %call22 to i32
  %19 = load i32*, i32** %scr_y.addr, align 8
  store i32 %conv23, i32* %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind uwtable
define void @pos_to_float(double %x, double %y, double* %xf, double* %yf) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %xf.addr = alloca double*, align 8
  %yf.addr = alloca double*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %xf, double** %xf.addr, align 8
  store double* %yf, double** %yf.addr, align 8
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @height, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* @width, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  %sub = fsub double 1.000000e+00, %div
  %mul = fmul double 5.000000e-01, %sub
  %4 = load double, double* %y.addr, align 8
  %sub2 = fsub double %4, %mul
  store double %sub2, double* %y.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load i32, i32* @width, align 4
  %sub3 = sub nsw i32 %6, 1
  %conv4 = sitofp i32 %sub3 to double
  %mul5 = fmul double %5, %conv4
  %7 = load double*, double** %xf.addr, align 8
  store double %mul5, double* %7, align 8
  %8 = load double, double* %y.addr, align 8
  %9 = load i32, i32* @width, align 4
  %sub6 = sub nsw i32 %9, 1
  %conv7 = sitofp i32 %sub6 to double
  %mul8 = fmul double %8, %conv7
  %10 = load double*, double** %yf.addr, align 8
  store double %mul8, double* %10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* @width, align 4
  %conv9 = sitofp i32 %11 to double
  %12 = load i32, i32* @height, align 4
  %conv10 = sitofp i32 %12 to double
  %div11 = fdiv double %conv9, %conv10
  %sub12 = fsub double 1.000000e+00, %div11
  %mul13 = fmul double 5.000000e-01, %sub12
  %13 = load double, double* %x.addr, align 8
  %sub14 = fsub double %13, %mul13
  store double %sub14, double* %x.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load i32, i32* @height, align 4
  %sub15 = sub nsw i32 %15, 1
  %conv16 = sitofp i32 %sub15 to double
  %mul17 = fmul double %14, %conv16
  %16 = load double*, double** %xf.addr, align 8
  store double %mul17, double* %16, align 8
  %17 = load double, double* %y.addr, align 8
  %18 = load i32, i32* @height, align 4
  %sub18 = sub nsw i32 %18, 1
  %conv19 = sitofp i32 %sub18 to double
  %mul20 = fmul double %17, %conv19
  %19 = load double*, double** %yf.addr, align 8
  store double %mul20, double* %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  %tmp12 = alloca %struct._GimpRGB, align 8
  %tmp14 = alloca %struct._GimpRGB, align 8
  %tmp16 = alloca %struct._GimpRGB, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i32* %inside, i32** %inside.addr, align 8
  %0 = load double, double* %u.addr, align 8
  %call = call double @rint(double %0) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x1, align 4
  %1 = load double, double* %v.addr, align 8
  %call1 = call double @rint(double %1) #5
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %y1, align 4
  %2 = load i32, i32* %x1, align 4
  %3 = load i32, i32* %y1, align 4
  %call3 = call i32 @check_bounds(i32 %2, i32 %3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %inside.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = bitcast %struct._GimpRGB* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %x1, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %x2, align 4
  %7 = load i32, i32* %y1, align 4
  %add5 = add nsw i32 %7, 1
  store i32 %add5, i32* %y2, align 4
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* %y2, align 4
  %call6 = call i32 @check_bounds(i32 %8, i32 %9)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %10 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %agg.result, i32 %11, i32 %12)
  br label %return

if.end.10:                                        ; preds = %if.end
  %13 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %13, align 4
  %arrayidx = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 0
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp, i32 %14, i32 %15)
  %16 = bitcast %struct._GimpRGB* %arrayidx to i8*
  %17 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %arrayidx11 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 1
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpRGB* sret %tmp12, i32 %18, i32 %19)
  %20 = bitcast %struct._GimpRGB* %arrayidx11 to i8*
  %21 = bitcast %struct._GimpRGB* %tmp12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %arrayidx13 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 2
  %22 = load i32, i32* %x1, align 4
  %23 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp14, i32 %22, i32 %23)
  %24 = bitcast %struct._GimpRGB* %arrayidx13 to i8*
  %25 = bitcast %struct._GimpRGB* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  %arrayidx15 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i64 3
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpRGB* sret %tmp16, i32 %26, i32 %27)
  %28 = bitcast %struct._GimpRGB* %arrayidx15 to i8*
  %29 = bitcast %struct._GimpRGB* %tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = load double, double* %u.addr, align 8
  %31 = load double, double* %v.addr, align 8
  %arraydecay = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %p, i32 0, i32 0
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %agg.result, double %30, double %31, %struct._GimpRGB* %arraydecay)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  ret void
}

declare void @gimp_bilinear_rgba(%struct._GimpRGB* sret, double, double, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define double @get_map_value(%struct._GimpPixelRgn* %region, double %u, double %v, i32* %inside) #0 {
entry:
  %retval = alloca double, align 8
  %region.addr = alloca %struct._GimpPixelRgn*, align 8
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %inside.addr = alloca i32*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %p = alloca [4 x double], align 16
  store %struct._GimpPixelRgn* %region, %struct._GimpPixelRgn** %region.addr, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i32* %inside, i32** %inside.addr, align 8
  %0 = load double, double* %u.addr, align 8
  %call = call double @rint(double %0) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x1, align 4
  %1 = load double, double* %v.addr, align 8
  %call1 = call double @rint(double %1) #5
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %y1, align 4
  %2 = load i32, i32* %x1, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %x2, align 4
  %3 = load i32, i32* %y1, align 4
  %add3 = add nsw i32 %3, 1
  store i32 %add3, i32* %y2, align 4
  %4 = load i32, i32* %x2, align 4
  %5 = load i32, i32* %y2, align 4
  %call4 = call i32 @check_bounds(i32 %4, i32 %5)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %8 = load i32, i32* %x1, align 4
  %9 = load i32, i32* %y1, align 4
  %call6 = call zeroext i8 @peek_map(%struct._GimpPixelRgn* %7, i32 %8, i32 %9)
  %conv7 = uitofp i8 %call6 to double
  store double %conv7, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32*, i32** %inside.addr, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %y1, align 4
  %call8 = call zeroext i8 @peek_map(%struct._GimpPixelRgn* %11, i32 %12, i32 %13)
  %conv9 = uitofp i8 %call8 to double
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %p, i32 0, i64 0
  store double %conv9, double* %arrayidx, align 8
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %15 = load i32, i32* %x2, align 4
  %16 = load i32, i32* %y1, align 4
  %call10 = call zeroext i8 @peek_map(%struct._GimpPixelRgn* %14, i32 %15, i32 %16)
  %conv11 = uitofp i8 %call10 to double
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %p, i32 0, i64 1
  store double %conv11, double* %arrayidx12, align 8
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %18 = load i32, i32* %x1, align 4
  %19 = load i32, i32* %y2, align 4
  %call13 = call zeroext i8 @peek_map(%struct._GimpPixelRgn* %17, i32 %18, i32 %19)
  %conv14 = uitofp i8 %call13 to double
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %p, i32 0, i64 2
  store double %conv14, double* %arrayidx15, align 8
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %region.addr, align 8
  %21 = load i32, i32* %x2, align 4
  %22 = load i32, i32* %y2, align 4
  %call16 = call zeroext i8 @peek_map(%struct._GimpPixelRgn* %20, i32 %21, i32 %22)
  %conv17 = uitofp i8 %call16 to double
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %p, i32 0, i64 3
  store double %conv17, double* %arrayidx18, align 8
  %23 = load double, double* %u.addr, align 8
  %24 = load double, double* %v.addr, align 8
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %p, i32 0, i32 0
  %call19 = call double @gimp_bilinear(double %23, double %24, double* %arraydecay)
  store double %call19, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load double, double* %retval
  ret double %25
}

declare double @gimp_bilinear(double, double, double*) #1

; Function Attrs: nounwind uwtable
define i32 @image_setup(%struct._GimpDrawable* %drawable, i32 %interactive) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %interactive.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %interactive, i32* %interactive.addr, align 4
  call void @compute_maps()
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %0, %struct._GimpDrawable** @input_drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** @output_drawable, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %3, i32* @border_x1, i32* @border_y1, i32* @border_x2, i32* @border_y2)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  store i32 %5, i32* @width, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  store i32 %7, i32* @height, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %9 = load i32, i32* @width, align 4
  %10 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @source_region, %struct._GimpDrawable* %8, i32 0, i32 0, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load i32, i32* @width, align 4
  %conv = sext i32 %11 to i64
  %12 = load i32, i32* @height, align 4
  %conv1 = sext i32 %12 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* @maxcounter, align 8
  store i32 3, i32* @in_channels, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %14)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* @in_channels, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @in_channels, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %interactive.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 @cairo_format_stride_for_width(i32 1, i32 200)
  store i32 %call6, i32* @preview_rgb_stride, align 4
  %17 = load i32, i32* @preview_rgb_stride, align 4
  %mul7 = mul nsw i32 %17, 200
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc0_n(i64 %conv8, i64 1)
  store i8* %call9, i8** @preview_rgb_data, align 8
  %18 = load i8*, i8** @preview_rgb_data, align 8
  %19 = load i32, i32* @preview_rgb_stride, align 4
  %call10 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %18, i32 1, i32 200, i32 200, i32 %19)
  store %struct._cairo_surface* %call10, %struct._cairo_surface** @preview_surface, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @compute_maps() #0 {
entry:
  %x = alloca i32, align 4
  %val = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  store double 0x3F70101010101010, double* %c, align 8
  store double 2.932500e+02, double* %d, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %c, align 8
  %mul = fmul double 0x400921FB54442D18, %1
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %mul1 = fmul double %mul, %conv
  %sub = fsub double %mul1, 0x3FF921FB54442D18
  %call = call double @sin(double %sub) #2
  %add = fadd double %call, 1.000000e+00
  %mul2 = fmul double 5.000000e-01, %add
  %mul3 = fmul double 2.550000e+02, %mul2
  %conv4 = fptoui double %mul3 to i8
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @sinemap, i32 0, i64 %idxprom
  store i8 %conv4, i8* %arrayidx, align 1
  %4 = load i32, i32* %x, align 4
  %conv5 = sitofp i32 %4 to double
  %mul6 = fmul double 0x400921FB54442D18, %conv5
  %div = fdiv double %mul6, 5.120000e+02
  %call7 = call double @sin(double %div) #2
  %call8 = call double @sqrt(double %call7) #2
  %mul9 = fmul double 2.550000e+02, %call8
  %conv10 = fptoui double %mul9 to i8
  %5 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @spheremap, i32 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  %6 = load double, double* %d, align 8
  %7 = load double, double* %c, align 8
  %mul13 = fmul double 8.000000e+00, %7
  %8 = load i32, i32* %x, align 4
  %conv14 = sitofp i32 %8 to double
  %add15 = fadd double %conv14, 5.000000e+00
  %mul16 = fmul double %mul13, %add15
  %div17 = fdiv double -1.000000e+00, %mul16
  %call18 = call double @exp(double %div17) #2
  %mul19 = fmul double %6, %call18
  store double %mul19, double* %val, align 8
  %9 = load double, double* %val, align 8
  %cmp20 = fcmp ogt double %9, 2.550000e+02
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store double 2.550000e+02, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load double, double* %val, align 8
  %conv22 = fptoui double %10 to i8
  %11 = load i32, i32* %x, align 4
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @logmap, i32 0, i64 %idxprom23
  store i8 %conv22, i8* %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @cairo_format_stride_for_width(i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
