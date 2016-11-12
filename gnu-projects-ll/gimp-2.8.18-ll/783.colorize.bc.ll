; ModuleID = './app/base/colorize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Colorize = type { double, double, double, [256 x i32], [256 x i32], [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct._GimpHSL = type { double, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.colorize_init = private unnamed_addr constant [14 x i8] c"colorize_init\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"colorize != NULL\00", align 1
@__func__.colorize_calculate = private unnamed_addr constant [19 x i8] c"colorize_calculate\00", align 1

; Function Attrs: nounwind uwtable
define void @colorize_init(%struct._Colorize* %colorize) #0 {
entry:
  %colorize.addr = alloca %struct._Colorize*, align 8
  %i = alloca i32, align 4
  store %struct._Colorize* %colorize, %struct._Colorize** %colorize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %cmp = icmp ne %struct._Colorize* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.colorize_init, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %hue = getelementptr inbounds %struct._Colorize, %struct._Colorize* %1, i32 0, i32 0
  store double 1.800000e+02, double* %hue, align 8
  %2 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %saturation = getelementptr inbounds %struct._Colorize, %struct._Colorize* %2, i32 0, i32 1
  store double 5.000000e+01, double* %saturation, align 8
  %3 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness = getelementptr inbounds %struct._Colorize, %struct._Colorize* %3, i32 0, i32 2
  store double 0.000000e+00, double* %lightness, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 256
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 2.126000e-01
  %conv2 = fptosi double %mul to i32
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_red_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %lum_red_lookup, i32 0, i64 %idxprom
  store i32 %conv2, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %conv3 = sitofp i32 %8 to double
  %mul4 = fmul double %conv3, 7.152000e-01
  %conv5 = fptosi double %mul4 to i32
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_green_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %10, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* %lum_green_lookup, i32 0, i64 %idxprom6
  store i32 %conv5, i32* %arrayidx7, align 4
  %11 = load i32, i32* %i, align 4
  %conv8 = sitofp i32 %11 to double
  %mul9 = fmul double %conv8, 7.220000e-02
  %conv10 = fptosi double %mul9 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_blue_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %13, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* %lum_blue_lookup, i32 0, i64 %idxprom11
  store i32 %conv10, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @colorize_calculate(%struct._Colorize* %colorize) #0 {
entry:
  %colorize.addr = alloca %struct._Colorize*, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %i = alloca i32, align 4
  store %struct._Colorize* %colorize, %struct._Colorize** %colorize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %cmp = icmp ne %struct._Colorize* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.colorize_calculate, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %hue = getelementptr inbounds %struct._Colorize, %struct._Colorize* %1, i32 0, i32 0
  %2 = load double, double* %hue, align 8
  %div = fdiv double %2, 3.600000e+02
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %div, double* %h, align 8
  %3 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %saturation = getelementptr inbounds %struct._Colorize, %struct._Colorize* %3, i32 0, i32 1
  %4 = load double, double* %saturation, align 8
  %div1 = fdiv double %4, 1.000000e+02
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %div1, double* %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 256
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %div3 = fdiv double %conv, 2.550000e+02
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %div3, double* %l, align 8
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %7 = load double, double* %r, align 8
  %mul = fmul double 2.550000e+02, %7
  %conv4 = fptosi double %mul to i32
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_red_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %final_red_lookup, i32 0, i64 %idxprom
  store i32 %conv4, i32* %arrayidx, align 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %10 = load double, double* %g, align 8
  %mul5 = fmul double 2.550000e+02, %10
  %conv6 = fptosi double %mul5 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_green_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %12, i32 0, i32 7
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %final_green_lookup, i32 0, i64 %idxprom7
  store i32 %conv6, i32* %arrayidx8, align 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %13 = load double, double* %b, align 8
  %mul9 = fmul double 2.550000e+02, %13
  %conv10 = fptosi double %mul9 to i32
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_blue_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %15, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* %final_blue_lookup, i32 0, i64 %idxprom11
  store i32 %conv10, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @colorize(%struct._Colorize* %colorize, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %colorize.addr = alloca %struct._Colorize*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %lum = alloca i32, align 4
  store %struct._Colorize* %colorize, %struct._Colorize** %colorize.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h1, align 4
  store i32 %1, i32* %h, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %src, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 0
  %5 = load i8*, i8** %data2, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %6)
  store i32 %call, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %7 = load i32, i32* %h, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end.62

while.body:                                       ; preds = %while.cond
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w3, align 4
  store i32 %9, i32* %w, align 4
  %10 = load i8*, i8** %src, align 8
  store i8* %10, i8** %s, align 8
  %11 = load i8*, i8** %dest, align 8
  store i8* %11, i8** %d, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.53, %while.body
  %12 = load i32, i32* %w, align 4
  %dec5 = add nsw i32 %12, -1
  store i32 %dec5, i32* %w, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.4
  %13 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %14 to i64
  %15 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_red_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %15, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %lum_red_lookup, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load i8*, i8** %s, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %18 to i64
  %19 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_green_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %19, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %lum_green_lookup, i32 0, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %16, %20
  %21 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %22 to i64
  %23 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lum_blue_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %23, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* %lum_blue_lookup, i32 0, i64 %idxprom13
  %24 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %add, %24
  store i32 %add15, i32* %lum, align 4
  %25 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness = getelementptr inbounds %struct._Colorize, %struct._Colorize* %25, i32 0, i32 2
  %26 = load double, double* %lightness, align 8
  %cmp = fcmp ogt double %26, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.7
  %27 = load i32, i32* %lum, align 4
  %conv = sitofp i32 %27 to double
  %28 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness16 = getelementptr inbounds %struct._Colorize, %struct._Colorize* %28, i32 0, i32 2
  %29 = load double, double* %lightness16, align 8
  %sub = fsub double 1.000000e+02, %29
  %mul = fmul double %conv, %sub
  %div = fdiv double %mul, 1.000000e+02
  %conv17 = fptosi double %div to i32
  store i32 %conv17, i32* %lum, align 4
  %30 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness18 = getelementptr inbounds %struct._Colorize, %struct._Colorize* %30, i32 0, i32 2
  %31 = load double, double* %lightness18, align 8
  %sub19 = fsub double 1.000000e+02, %31
  %mul20 = fmul double %sub19, 2.550000e+02
  %div21 = fdiv double %mul20, 1.000000e+02
  %sub22 = fsub double 2.550000e+02, %div21
  %32 = load i32, i32* %lum, align 4
  %conv23 = sitofp i32 %32 to double
  %add24 = fadd double %conv23, %sub22
  %conv25 = fptosi double %add24 to i32
  store i32 %conv25, i32* %lum, align 4
  br label %if.end.36

if.else:                                          ; preds = %while.body.7
  %33 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness26 = getelementptr inbounds %struct._Colorize, %struct._Colorize* %33, i32 0, i32 2
  %34 = load double, double* %lightness26, align 8
  %cmp27 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else
  %35 = load i32, i32* %lum, align 4
  %conv30 = sitofp i32 %35 to double
  %36 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %lightness31 = getelementptr inbounds %struct._Colorize, %struct._Colorize* %36, i32 0, i32 2
  %37 = load double, double* %lightness31, align 8
  %add32 = fadd double %37, 1.000000e+02
  %mul33 = fmul double %conv30, %add32
  %div34 = fdiv double %mul33, 1.000000e+02
  %conv35 = fptosi double %div34 to i32
  store i32 %conv35, i32* %lum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then
  %38 = load i32, i32* %lum, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_red_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %39, i32 0, i32 6
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* %final_red_lookup, i32 0, i64 %idxprom37
  %40 = load i32, i32* %arrayidx38, align 4
  %conv39 = trunc i32 %40 to i8
  %41 = load i8*, i8** %d, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %conv39, i8* %arrayidx40, align 1
  %42 = load i32, i32* %lum, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_green_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %43, i32 0, i32 7
  %arrayidx42 = getelementptr inbounds [256 x i32], [256 x i32]* %final_green_lookup, i32 0, i64 %idxprom41
  %44 = load i32, i32* %arrayidx42, align 4
  %conv43 = trunc i32 %44 to i8
  %45 = load i8*, i8** %d, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv43, i8* %arrayidx44, align 1
  %46 = load i32, i32* %lum, align 4
  %idxprom45 = sext i32 %46 to i64
  %47 = load %struct._Colorize*, %struct._Colorize** %colorize.addr, align 8
  %final_blue_lookup = getelementptr inbounds %struct._Colorize, %struct._Colorize* %47, i32 0, i32 8
  %arrayidx46 = getelementptr inbounds [256 x i32], [256 x i32]* %final_blue_lookup, i32 0, i64 %idxprom45
  %48 = load i32, i32* %arrayidx46, align 4
  %conv47 = trunc i32 %48 to i8
  %49 = load i8*, i8** %d, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %conv47, i8* %arrayidx48, align 1
  %50 = load i32, i32* %alpha, align 4
  %tobool49 = icmp ne i32 %50, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.36
  %51 = load i8*, i8** %s, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i8, i8* %arrayidx51, align 1
  %53 = load i8*, i8** %d, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %53, i64 3
  store i8 %52, i8* %arrayidx52, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.36
  %54 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %54, i32 0, i32 10
  %55 = load i32, i32* %bytes, align 4
  %56 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %57 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes54 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %57, i32 0, i32 10
  %58 = load i32, i32* %bytes54, align 4
  %59 = load i8*, i8** %d, align 8
  %idx.ext55 = sext i32 %58 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %59, i64 %idx.ext55
  store i8* %add.ptr56, i8** %d, align 8
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %60 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %60, i32 0, i32 5
  %61 = load i32, i32* %rowstride, align 4
  %62 = load i8*, i8** %src, align 8
  %idx.ext57 = sext i32 %61 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %62, i64 %idx.ext57
  store i8* %add.ptr58, i8** %src, align 8
  %63 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %63, i32 0, i32 5
  %64 = load i32, i32* %rowstride59, align 4
  %65 = load i8*, i8** %dest, align 8
  %idx.ext60 = sext i32 %64 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %65, i64 %idx.ext60
  store i8* %add.ptr61, i8** %dest, align 8
  br label %while.cond

while.end.62:                                     ; preds = %while.cond
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
