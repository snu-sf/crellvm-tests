; ModuleID = './libgimpcolor/gimpcolorspace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpHSL = type { double, double, double, double }
%struct._GimpCMYK = type { double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_rgb_to_hsv = private unnamed_addr constant [16 x i8] c"gimp_rgb_to_hsv\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hsv != NULL\00", align 1
@__func__.gimp_hsv_to_rgb = private unnamed_addr constant [16 x i8] c"gimp_hsv_to_rgb\00", align 1
@__func__.gimp_rgb_to_hsl = private unnamed_addr constant [16 x i8] c"gimp_rgb_to_hsl\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hsl != NULL\00", align 1
@__func__.gimp_hsl_to_rgb = private unnamed_addr constant [16 x i8] c"gimp_hsl_to_rgb\00", align 1
@__func__.gimp_rgb_to_cmyk = private unnamed_addr constant [17 x i8] c"gimp_rgb_to_cmyk\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cmyk != NULL\00", align 1
@__func__.gimp_cmyk_to_rgb = private unnamed_addr constant [17 x i8] c"gimp_cmyk_to_rgb\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %max = alloca double, align 8
  %min = alloca double, align 8
  %delta = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_rgb_to_hsv, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp2 = icmp ne %struct._GimpHSV* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_rgb_to_hsv, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgb_max(%struct._GimpRGB* %2)
  store double %call, double* %max, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call7 = call double @gimp_rgb_min(%struct._GimpRGB* %3)
  store double %call7, double* %min, align 8
  %4 = load double, double* %max, align 8
  %5 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %5, i32 0, i32 2
  store double %4, double* %v, align 8
  %6 = load double, double* %max, align 8
  %7 = load double, double* %min, align 8
  %sub = fsub double %6, %7
  store double %sub, double* %delta, align 8
  %8 = load double, double* %delta, align 8
  %cmp8 = fcmp ogt double %8, 1.000000e-04
  br i1 %cmp8, label %if.then.9, label %if.else.40

if.then.9:                                        ; preds = %do.end.6
  %9 = load double, double* %delta, align 8
  %10 = load double, double* %max, align 8
  %div = fdiv double %9, %10
  %11 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %11, i32 0, i32 1
  store double %div, double* %s, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 0
  %13 = load double, double* %r, align 8
  %14 = load double, double* %max, align 8
  %cmp10 = fcmp oeq double %13, %14
  br i1 %cmp10, label %if.then.11, label %if.else.19

if.then.11:                                       ; preds = %if.then.9
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 1
  %16 = load double, double* %g, align 8
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 2
  %18 = load double, double* %b, align 8
  %sub12 = fsub double %16, %18
  %19 = load double, double* %delta, align 8
  %div13 = fdiv double %sub12, %19
  %20 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %20, i32 0, i32 0
  store double %div13, double* %h, align 8
  %21 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h14 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %21, i32 0, i32 0
  %22 = load double, double* %h14, align 8
  %cmp15 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.11
  %23 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h17 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %23, i32 0, i32 0
  %24 = load double, double* %h17, align 8
  %add = fadd double %24, 6.000000e+00
  store double %add, double* %h17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.11
  br label %if.end.37

if.else.19:                                       ; preds = %if.then.9
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 1
  %26 = load double, double* %g20, align 8
  %27 = load double, double* %max, align 8
  %cmp21 = fcmp oeq double %26, %27
  br i1 %cmp21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.else.19
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 2
  %29 = load double, double* %b23, align 8
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %30, i32 0, i32 0
  %31 = load double, double* %r24, align 8
  %sub25 = fsub double %29, %31
  %32 = load double, double* %delta, align 8
  %div26 = fdiv double %sub25, %32
  %add27 = fadd double 2.000000e+00, %div26
  %33 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h28 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %33, i32 0, i32 0
  store double %add27, double* %h28, align 8
  br label %if.end.36

if.else.29:                                       ; preds = %if.else.19
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %34, i32 0, i32 0
  %35 = load double, double* %r30, align 8
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %36, i32 0, i32 1
  %37 = load double, double* %g31, align 8
  %sub32 = fsub double %35, %37
  %38 = load double, double* %delta, align 8
  %div33 = fdiv double %sub32, %38
  %add34 = fadd double 4.000000e+00, %div33
  %39 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h35 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %39, i32 0, i32 0
  store double %add34, double* %h35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.29, %if.then.22
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.18
  %40 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h38 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %40, i32 0, i32 0
  %41 = load double, double* %h38, align 8
  %div39 = fdiv double %41, 6.000000e+00
  store double %div39, double* %h38, align 8
  br label %if.end.43

if.else.40:                                       ; preds = %do.end.6
  %42 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s41 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %42, i32 0, i32 1
  store double 0.000000e+00, double* %s41, align 8
  %43 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h42 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %43, i32 0, i32 0
  store double 0.000000e+00, double* %h42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.end.37
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 3
  %45 = load double, double* %a, align 8
  %46 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a44 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %46, i32 0, i32 3
  store double %45, double* %a44, align 8
  br label %return

return:                                           ; preds = %if.end.43, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare double @gimp_rgb_max(%struct._GimpRGB*) #1

declare double @gimp_rgb_min(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb) #0 {
entry:
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %i = alloca i32, align 4
  %f = alloca double, align 8
  %w = alloca double, align 8
  %q = alloca double, align 8
  %t = alloca double, align 8
  %hue = alloca double, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_hsv_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp2 = icmp ne %struct._GimpHSV* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_hsv_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %2, i32 0, i32 1
  %3 = load double, double* %s, align 8
  %cmp7 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %do.end.6
  %4 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %4, i32 0, i32 2
  %5 = load double, double* %v, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  store double %5, double* %r, align 8
  %7 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v9 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %7, i32 0, i32 2
  %8 = load double, double* %v9, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 1
  store double %8, double* %g, align 8
  %10 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v10 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %10, i32 0, i32 2
  %11 = load double, double* %v10, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  store double %11, double* %b, align 8
  br label %if.end.60

if.else.11:                                       ; preds = %do.end.6
  %13 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %13, i32 0, i32 0
  %14 = load double, double* %h, align 8
  store double %14, double* %hue, align 8
  %15 = load double, double* %hue, align 8
  %cmp12 = fcmp oeq double %15, 1.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.11
  store double 0.000000e+00, double* %hue, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else.11
  %16 = load double, double* %hue, align 8
  %mul = fmul double %16, 6.000000e+00
  store double %mul, double* %hue, align 8
  %17 = load double, double* %hue, align 8
  %conv = fptosi double %17 to i32
  store i32 %conv, i32* %i, align 4
  %18 = load double, double* %hue, align 8
  %19 = load i32, i32* %i, align 4
  %conv15 = sitofp i32 %19 to double
  %sub = fsub double %18, %conv15
  store double %sub, double* %f, align 8
  %20 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v16 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %20, i32 0, i32 2
  %21 = load double, double* %v16, align 8
  %22 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s17 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %22, i32 0, i32 1
  %23 = load double, double* %s17, align 8
  %sub18 = fsub double 1.000000e+00, %23
  %mul19 = fmul double %21, %sub18
  store double %mul19, double* %w, align 8
  %24 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v20 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %24, i32 0, i32 2
  %25 = load double, double* %v20, align 8
  %26 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s21 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %26, i32 0, i32 1
  %27 = load double, double* %s21, align 8
  %28 = load double, double* %f, align 8
  %mul22 = fmul double %27, %28
  %sub23 = fsub double 1.000000e+00, %mul22
  %mul24 = fmul double %25, %sub23
  store double %mul24, double* %q, align 8
  %29 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v25 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %29, i32 0, i32 2
  %30 = load double, double* %v25, align 8
  %31 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s26 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %31, i32 0, i32 1
  %32 = load double, double* %s26, align 8
  %33 = load double, double* %f, align 8
  %sub27 = fsub double 1.000000e+00, %33
  %mul28 = fmul double %32, %sub27
  %sub29 = fsub double 1.000000e+00, %mul28
  %mul30 = fmul double %30, %sub29
  store double %mul30, double* %t, align 8
  %34 = load i32, i32* %i, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.40
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.50
    i32 5, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end.14
  %35 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v31 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %35, i32 0, i32 2
  %36 = load double, double* %v31, align 8
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 0
  store double %36, double* %r32, align 8
  %38 = load double, double* %t, align 8
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i32 0, i32 1
  store double %38, double* %g33, align 8
  %40 = load double, double* %w, align 8
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 2
  store double %40, double* %b34, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.14
  %42 = load double, double* %q, align 8
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r36 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %43, i32 0, i32 0
  store double %42, double* %r36, align 8
  %44 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v37 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %44, i32 0, i32 2
  %45 = load double, double* %v37, align 8
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %46, i32 0, i32 1
  store double %45, double* %g38, align 8
  %47 = load double, double* %w, align 8
  %48 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %48, i32 0, i32 2
  store double %47, double* %b39, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.14
  %49 = load double, double* %w, align 8
  %50 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %50, i32 0, i32 0
  store double %49, double* %r41, align 8
  %51 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v42 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %51, i32 0, i32 2
  %52 = load double, double* %v42, align 8
  %53 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %53, i32 0, i32 1
  store double %52, double* %g43, align 8
  %54 = load double, double* %t, align 8
  %55 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %55, i32 0, i32 2
  store double %54, double* %b44, align 8
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.14
  %56 = load double, double* %w, align 8
  %57 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r46 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %57, i32 0, i32 0
  store double %56, double* %r46, align 8
  %58 = load double, double* %q, align 8
  %59 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %59, i32 0, i32 1
  store double %58, double* %g47, align 8
  %60 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v48 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %60, i32 0, i32 2
  %61 = load double, double* %v48, align 8
  %62 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %62, i32 0, i32 2
  store double %61, double* %b49, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.14
  %63 = load double, double* %t, align 8
  %64 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r51 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %64, i32 0, i32 0
  store double %63, double* %r51, align 8
  %65 = load double, double* %w, align 8
  %66 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %66, i32 0, i32 1
  store double %65, double* %g52, align 8
  %67 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v53 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %67, i32 0, i32 2
  %68 = load double, double* %v53, align 8
  %69 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b54 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %69, i32 0, i32 2
  store double %68, double* %b54, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.14
  %70 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v56 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %70, i32 0, i32 2
  %71 = load double, double* %v56, align 8
  %72 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r57 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %72, i32 0, i32 0
  store double %71, double* %r57, align 8
  %73 = load double, double* %w, align 8
  %74 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g58 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %74, i32 0, i32 1
  store double %73, double* %g58, align 8
  %75 = load double, double* %q, align 8
  %76 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b59 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %76, i32 0, i32 2
  store double %75, double* %b59, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.55, %sw.bb.50, %sw.bb.45, %sw.bb.40, %sw.bb.35, %sw.bb
  br label %if.end.60

if.end.60:                                        ; preds = %sw.epilog, %if.then.8
  %77 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %77, i32 0, i32 3
  %78 = load double, double* %a, align 8
  %79 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a61 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %79, i32 0, i32 3
  store double %78, double* %a61, align 8
  br label %return

return:                                           ; preds = %if.end.60, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsl.addr = alloca %struct._GimpHSL*, align 8
  %max = alloca double, align 8
  %min = alloca double, align 8
  %delta = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSL* %hsl, %struct._GimpHSL** %hsl.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_rgb_to_hsl, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %cmp2 = icmp ne %struct._GimpHSL* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_rgb_to_hsl, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgb_max(%struct._GimpRGB* %2)
  store double %call, double* %max, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call7 = call double @gimp_rgb_min(%struct._GimpRGB* %3)
  store double %call7, double* %min, align 8
  %4 = load double, double* %max, align 8
  %5 = load double, double* %min, align 8
  %add = fadd double %4, %5
  %div = fdiv double %add, 2.000000e+00
  %6 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %6, i32 0, i32 2
  store double %div, double* %l, align 8
  %7 = load double, double* %max, align 8
  %8 = load double, double* %min, align 8
  %cmp8 = fcmp oeq double %7, %8
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.end.6
  %9 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %9, i32 0, i32 1
  store double 0.000000e+00, double* %s, align 8
  %10 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %10, i32 0, i32 0
  store double -1.000000e+00, double* %h, align 8
  br label %if.end.60

if.else.10:                                       ; preds = %do.end.6
  %11 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l11 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %11, i32 0, i32 2
  %12 = load double, double* %l11, align 8
  %cmp12 = fcmp ole double %12, 5.000000e-01
  br i1 %cmp12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.else.10
  %13 = load double, double* %max, align 8
  %14 = load double, double* %min, align 8
  %sub = fsub double %13, %14
  %15 = load double, double* %max, align 8
  %16 = load double, double* %min, align 8
  %add14 = fadd double %15, %16
  %div15 = fdiv double %sub, %add14
  %17 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s16 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %17, i32 0, i32 1
  store double %div15, double* %s16, align 8
  br label %if.end.23

if.else.17:                                       ; preds = %if.else.10
  %18 = load double, double* %max, align 8
  %19 = load double, double* %min, align 8
  %sub18 = fsub double %18, %19
  %20 = load double, double* %max, align 8
  %sub19 = fsub double 2.000000e+00, %20
  %21 = load double, double* %min, align 8
  %sub20 = fsub double %sub19, %21
  %div21 = fdiv double %sub18, %sub20
  %22 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s22 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %22, i32 0, i32 1
  store double %div21, double* %s22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %if.then.13
  %23 = load double, double* %max, align 8
  %24 = load double, double* %min, align 8
  %sub24 = fsub double %23, %24
  store double %sub24, double* %delta, align 8
  %25 = load double, double* %delta, align 8
  %cmp25 = fcmp oeq double %25, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store double 1.000000e+00, double* %delta, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %26, i32 0, i32 0
  %27 = load double, double* %r, align 8
  %28 = load double, double* %max, align 8
  %cmp28 = fcmp oeq double %27, %28
  br i1 %cmp28, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %if.end.27
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 1
  %30 = load double, double* %g, align 8
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %31, i32 0, i32 2
  %32 = load double, double* %b, align 8
  %sub30 = fsub double %30, %32
  %33 = load double, double* %delta, align 8
  %div31 = fdiv double %sub30, %33
  %34 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h32 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %34, i32 0, i32 0
  store double %div31, double* %h32, align 8
  br label %if.end.51

if.else.33:                                       ; preds = %if.end.27
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 1
  %36 = load double, double* %g34, align 8
  %37 = load double, double* %max, align 8
  %cmp35 = fcmp oeq double %36, %37
  br i1 %cmp35, label %if.then.36, label %if.else.43

if.then.36:                                       ; preds = %if.else.33
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 2
  %39 = load double, double* %b37, align 8
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %40, i32 0, i32 0
  %41 = load double, double* %r38, align 8
  %sub39 = fsub double %39, %41
  %42 = load double, double* %delta, align 8
  %div40 = fdiv double %sub39, %42
  %add41 = fadd double 2.000000e+00, %div40
  %43 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h42 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %43, i32 0, i32 0
  store double %add41, double* %h42, align 8
  br label %if.end.50

if.else.43:                                       ; preds = %if.else.33
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 0
  %45 = load double, double* %r44, align 8
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %46, i32 0, i32 1
  %47 = load double, double* %g45, align 8
  %sub46 = fsub double %45, %47
  %48 = load double, double* %delta, align 8
  %div47 = fdiv double %sub46, %48
  %add48 = fadd double 4.000000e+00, %div47
  %49 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h49 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %49, i32 0, i32 0
  store double %add48, double* %h49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.43, %if.then.36
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.29
  %50 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h52 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %50, i32 0, i32 0
  %51 = load double, double* %h52, align 8
  %div53 = fdiv double %51, 6.000000e+00
  store double %div53, double* %h52, align 8
  %52 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h54 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %52, i32 0, i32 0
  %53 = load double, double* %h54, align 8
  %cmp55 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.51
  %54 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h57 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %54, i32 0, i32 0
  %55 = load double, double* %h57, align 8
  %add58 = fadd double %55, 1.000000e+00
  store double %add58, double* %h57, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.9
  %56 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %56, i32 0, i32 3
  %57 = load double, double* %a, align 8
  %58 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %a61 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %58, i32 0, i32 3
  store double %57, double* %a61, align 8
  br label %return

return:                                           ; preds = %if.end.60, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb) #0 {
entry:
  %hsl.addr = alloca %struct._GimpHSL*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %m1 = alloca double, align 8
  %m2 = alloca double, align 8
  store %struct._GimpHSL* %hsl, %struct._GimpHSL** %hsl.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %cmp = icmp ne %struct._GimpHSL* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_hsl_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_hsl_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %2, i32 0, i32 1
  %3 = load double, double* %s, align 8
  %cmp7 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %do.end.6
  %4 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %4, i32 0, i32 2
  %5 = load double, double* %l, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  store double %5, double* %r, align 8
  %7 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l9 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %7, i32 0, i32 2
  %8 = load double, double* %l9, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 1
  store double %8, double* %g, align 8
  %10 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l10 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %10, i32 0, i32 2
  %11 = load double, double* %l10, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  store double %11, double* %b, align 8
  br label %if.end.40

if.else.11:                                       ; preds = %do.end.6
  %13 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l12 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %13, i32 0, i32 2
  %14 = load double, double* %l12, align 8
  %cmp13 = fcmp ole double %14, 5.000000e-01
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.11
  %15 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l15 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %15, i32 0, i32 2
  %16 = load double, double* %l15, align 8
  %17 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s16 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %17, i32 0, i32 1
  %18 = load double, double* %s16, align 8
  %add = fadd double 1.000000e+00, %18
  %mul = fmul double %16, %add
  store double %mul, double* %m2, align 8
  br label %if.end.24

if.else.17:                                       ; preds = %if.else.11
  %19 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l18 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %19, i32 0, i32 2
  %20 = load double, double* %l18, align 8
  %21 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s19 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %21, i32 0, i32 1
  %22 = load double, double* %s19, align 8
  %add20 = fadd double %20, %22
  %23 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l21 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %23, i32 0, i32 2
  %24 = load double, double* %l21, align 8
  %25 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s22 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %25, i32 0, i32 1
  %26 = load double, double* %s22, align 8
  %mul23 = fmul double %24, %26
  %sub = fsub double %add20, %mul23
  store double %sub, double* %m2, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.17, %if.then.14
  %27 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l25 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %27, i32 0, i32 2
  %28 = load double, double* %l25, align 8
  %mul26 = fmul double 2.000000e+00, %28
  %29 = load double, double* %m2, align 8
  %sub27 = fsub double %mul26, %29
  store double %sub27, double* %m1, align 8
  %30 = load double, double* %m1, align 8
  %31 = load double, double* %m2, align 8
  %32 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %32, i32 0, i32 0
  %33 = load double, double* %h, align 8
  %mul28 = fmul double %33, 6.000000e+00
  %add29 = fadd double %mul28, 2.000000e+00
  %call = call double @gimp_hsl_value(double %30, double %31, double %add29)
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %34, i32 0, i32 0
  store double %call, double* %r30, align 8
  %35 = load double, double* %m1, align 8
  %36 = load double, double* %m2, align 8
  %37 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h31 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %37, i32 0, i32 0
  %38 = load double, double* %h31, align 8
  %mul32 = fmul double %38, 6.000000e+00
  %call33 = call double @gimp_hsl_value(double %35, double %36, double %mul32)
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i32 0, i32 1
  store double %call33, double* %g34, align 8
  %40 = load double, double* %m1, align 8
  %41 = load double, double* %m2, align 8
  %42 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h35 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %42, i32 0, i32 0
  %43 = load double, double* %h35, align 8
  %mul36 = fmul double %43, 6.000000e+00
  %sub37 = fsub double %mul36, 2.000000e+00
  %call38 = call double @gimp_hsl_value(double %40, double %41, double %sub37)
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 2
  store double %call38, double* %b39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.24, %if.then.8
  %45 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %a = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %45, i32 0, i32 3
  %46 = load double, double* %a, align 8
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %47, i32 0, i32 3
  store double %46, double* %a41, align 8
  br label %return

return:                                           ; preds = %if.end.40, %if.else.4, %if.else
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_hsl_value(double %n1, double %n2, double %hue) #2 {
entry:
  %n1.addr = alloca double, align 8
  %n2.addr = alloca double, align 8
  %hue.addr = alloca double, align 8
  %val = alloca double, align 8
  store double %n1, double* %n1.addr, align 8
  store double %n2, double* %n2.addr, align 8
  store double %hue, double* %hue.addr, align 8
  %0 = load double, double* %hue.addr, align 8
  %cmp = fcmp ogt double %0, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %hue.addr, align 8
  %sub = fsub double %1, 6.000000e+00
  store double %sub, double* %hue.addr, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %2 = load double, double* %hue.addr, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load double, double* %hue.addr, align 8
  %add = fadd double %3, 6.000000e+00
  store double %add, double* %hue.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load double, double* %hue.addr, align 8
  %cmp4 = fcmp olt double %4, 1.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.end.3
  %5 = load double, double* %n1.addr, align 8
  %6 = load double, double* %n2.addr, align 8
  %7 = load double, double* %n1.addr, align 8
  %sub6 = fsub double %6, %7
  %8 = load double, double* %hue.addr, align 8
  %mul = fmul double %sub6, %8
  %add7 = fadd double %5, %mul
  store double %add7, double* %val, align 8
  br label %if.end.21

if.else.8:                                        ; preds = %if.end.3
  %9 = load double, double* %hue.addr, align 8
  %cmp9 = fcmp olt double %9, 3.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.8
  %10 = load double, double* %n2.addr, align 8
  store double %10, double* %val, align 8
  br label %if.end.20

if.else.11:                                       ; preds = %if.else.8
  %11 = load double, double* %hue.addr, align 8
  %cmp12 = fcmp olt double %11, 4.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.else.11
  %12 = load double, double* %n1.addr, align 8
  %13 = load double, double* %n2.addr, align 8
  %14 = load double, double* %n1.addr, align 8
  %sub14 = fsub double %13, %14
  %15 = load double, double* %hue.addr, align 8
  %sub15 = fsub double 4.000000e+00, %15
  %mul16 = fmul double %sub14, %sub15
  %add17 = fadd double %12, %mul16
  store double %add17, double* %val, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.11
  %16 = load double, double* %n1.addr, align 8
  store double %16, double* %val, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.5
  %17 = load double, double* %val, align 8
  ret double %17
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_cmyk(%struct._GimpRGB* %rgb, double %pullout, %struct._GimpCMYK* %cmyk) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %pullout.addr = alloca double, align 8
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  %c = alloca double, align 8
  %m = alloca double, align 8
  %y = alloca double, align 8
  %k = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double %pullout, double* %pullout.addr, align 8
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_rgb_to_cmyk, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %cmp2 = icmp ne %struct._GimpCMYK* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_rgb_to_cmyk, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %sub = fsub double 1.000000e+00, %3
  store double %sub, double* %c, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 1
  %5 = load double, double* %g, align 8
  %sub7 = fsub double 1.000000e+00, %5
  store double %sub7, double* %m, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  %7 = load double, double* %b, align 8
  %sub8 = fsub double 1.000000e+00, %7
  store double %sub8, double* %y, align 8
  store double 1.000000e+00, double* %k, align 8
  %8 = load double, double* %c, align 8
  %9 = load double, double* %k, align 8
  %cmp9 = fcmp olt double %8, %9
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end.6
  %10 = load double, double* %c, align 8
  store double %10, double* %k, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end.6
  %11 = load double, double* %m, align 8
  %12 = load double, double* %k, align 8
  %cmp12 = fcmp olt double %11, %12
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %13 = load double, double* %m, align 8
  store double %13, double* %k, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %14 = load double, double* %y, align 8
  %15 = load double, double* %k, align 8
  %cmp15 = fcmp olt double %14, %15
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %16 = load double, double* %y, align 8
  store double %16, double* %k, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %17 = load double, double* %pullout.addr, align 8
  %18 = load double, double* %k, align 8
  %mul = fmul double %18, %17
  store double %mul, double* %k, align 8
  %19 = load double, double* %k, align 8
  %cmp18 = fcmp olt double %19, 1.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.else.31

if.then.19:                                       ; preds = %if.end.17
  %20 = load double, double* %c, align 8
  %21 = load double, double* %k, align 8
  %sub20 = fsub double %20, %21
  %22 = load double, double* %k, align 8
  %sub21 = fsub double 1.000000e+00, %22
  %div = fdiv double %sub20, %sub21
  %23 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c22 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %23, i32 0, i32 0
  store double %div, double* %c22, align 8
  %24 = load double, double* %m, align 8
  %25 = load double, double* %k, align 8
  %sub23 = fsub double %24, %25
  %26 = load double, double* %k, align 8
  %sub24 = fsub double 1.000000e+00, %26
  %div25 = fdiv double %sub23, %sub24
  %27 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m26 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %27, i32 0, i32 1
  store double %div25, double* %m26, align 8
  %28 = load double, double* %y, align 8
  %29 = load double, double* %k, align 8
  %sub27 = fsub double %28, %29
  %30 = load double, double* %k, align 8
  %sub28 = fsub double 1.000000e+00, %30
  %div29 = fdiv double %sub27, %sub28
  %31 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y30 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %31, i32 0, i32 2
  store double %div29, double* %y30, align 8
  br label %if.end.35

if.else.31:                                       ; preds = %if.end.17
  %32 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c32 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %32, i32 0, i32 0
  store double 0.000000e+00, double* %c32, align 8
  %33 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m33 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %33, i32 0, i32 1
  store double 0.000000e+00, double* %m33, align 8
  %34 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %34, i32 0, i32 2
  store double 0.000000e+00, double* %y34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.19
  %35 = load double, double* %k, align 8
  %36 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k36 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %36, i32 0, i32 3
  store double %35, double* %k36, align 8
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 3
  %38 = load double, double* %a, align 8
  %39 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %a37 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %39, i32 0, i32 4
  store double %38, double* %a37, align 8
  br label %return

return:                                           ; preds = %if.end.35, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyk_to_rgb(%struct._GimpCMYK* %cmyk, %struct._GimpRGB* %rgb) #0 {
entry:
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %c = alloca double, align 8
  %m = alloca double, align 8
  %y = alloca double, align 8
  %k = alloca double, align 8
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_cmyk_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_cmyk_to_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k7 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 3
  %3 = load double, double* %k7, align 8
  store double %3, double* %k, align 8
  %4 = load double, double* %k, align 8
  %cmp8 = fcmp olt double %4, 1.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %do.end.6
  %5 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c10 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %5, i32 0, i32 0
  %6 = load double, double* %c10, align 8
  %7 = load double, double* %k, align 8
  %sub = fsub double 1.000000e+00, %7
  %mul = fmul double %6, %sub
  %8 = load double, double* %k, align 8
  %add = fadd double %mul, %8
  store double %add, double* %c, align 8
  %9 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m11 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %9, i32 0, i32 1
  %10 = load double, double* %m11, align 8
  %11 = load double, double* %k, align 8
  %sub12 = fsub double 1.000000e+00, %11
  %mul13 = fmul double %10, %sub12
  %12 = load double, double* %k, align 8
  %add14 = fadd double %mul13, %12
  store double %add14, double* %m, align 8
  %13 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %13, i32 0, i32 2
  %14 = load double, double* %y15, align 8
  %15 = load double, double* %k, align 8
  %sub16 = fsub double 1.000000e+00, %15
  %mul17 = fmul double %14, %sub16
  %16 = load double, double* %k, align 8
  %add18 = fadd double %mul17, %16
  store double %add18, double* %y, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %do.end.6
  store double 1.000000e+00, double* %c, align 8
  store double 1.000000e+00, double* %m, align 8
  store double 1.000000e+00, double* %y, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.9
  %17 = load double, double* %c, align 8
  %sub21 = fsub double 1.000000e+00, %17
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 0
  store double %sub21, double* %r, align 8
  %19 = load double, double* %m, align 8
  %sub22 = fsub double 1.000000e+00, %19
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 1
  store double %sub22, double* %g, align 8
  %21 = load double, double* %y, align 8
  %sub23 = fsub double 1.000000e+00, %21
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 2
  store double %sub23, double* %b, align 8
  %23 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %a = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %23, i32 0, i32 4
  %24 = load double, double* %a, align 8
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 3
  store double %24, double* %a24, align 8
  br label %return

return:                                           ; preds = %if.end.20, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hwb(%struct._GimpRGB* %rgb, double* %hue, double* %whiteness, double* %blackness) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hue.addr = alloca double*, align 8
  %whiteness.addr = alloca double*, align 8
  %blackness.addr = alloca double*, align 8
  %R = alloca double, align 8
  %G = alloca double, align 8
  %B = alloca double, align 8
  %w = alloca double, align 8
  %v = alloca double, align 8
  %b1 = alloca double, align 8
  %f = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double* %hue, double** %hue.addr, align 8
  store double* %whiteness, double** %whiteness.addr, align 8
  store double* %blackness, double** %blackness.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %0, i32 0, i32 0
  %1 = load double, double* %r, align 8
  store double %1, double* %R, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 1
  %3 = load double, double* %g, align 8
  store double %3, double* %G, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 2
  %5 = load double, double* %b, align 8
  store double %5, double* %B, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgb_min(%struct._GimpRGB* %6)
  store double %call, double* %w, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call2 = call double @gimp_rgb_max(%struct._GimpRGB* %7)
  store double %call2, double* %v, align 8
  %8 = load double, double* %v, align 8
  %sub = fsub double 1.000000e+00, %8
  store double %sub, double* %b1, align 8
  %9 = load double, double* %v, align 8
  %10 = load double, double* %w, align 8
  %cmp = fcmp oeq double %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load double*, double** %hue.addr, align 8
  store double -1.000000e+00, double* %11, align 8
  %12 = load double, double* %w, align 8
  %13 = load double*, double** %whiteness.addr, align 8
  store double %12, double* %13, align 8
  %14 = load double, double* %b1, align 8
  %15 = load double*, double** %blackness.addr, align 8
  store double %14, double* %15, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load double, double* %R, align 8
  %17 = load double, double* %w, align 8
  %cmp3 = fcmp oeq double %16, %17
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load double, double* %G, align 8
  %19 = load double, double* %B, align 8
  %sub4 = fsub double %18, %19
  br label %cond.end.10

cond.false:                                       ; preds = %if.else
  %20 = load double, double* %G, align 8
  %21 = load double, double* %w, align 8
  %cmp5 = fcmp oeq double %20, %21
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %22 = load double, double* %B, align 8
  %23 = load double, double* %R, align 8
  %sub7 = fsub double %22, %23
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %24 = load double, double* %R, align 8
  %25 = load double, double* %G, align 8
  %sub9 = fsub double %24, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi double [ %sub7, %cond.true.6 ], [ %sub9, %cond.false.8 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi double [ %sub4, %cond.true ], [ %cond, %cond.end ]
  store double %cond11, double* %f, align 8
  %26 = load double, double* %R, align 8
  %27 = load double, double* %w, align 8
  %cmp12 = fcmp oeq double %26, %27
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  br label %cond.end.17

cond.false.14:                                    ; preds = %cond.end.10
  %28 = load double, double* %G, align 8
  %29 = load double, double* %w, align 8
  %cmp15 = fcmp oeq double %28, %29
  %cond16 = select i1 %cmp15, double 5.000000e+00, double 1.000000e+00
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.14, %cond.true.13
  %cond18 = phi double [ 3.000000e+00, %cond.true.13 ], [ %cond16, %cond.false.14 ]
  %conv = fptosi double %cond18 to i32
  store i32 %conv, i32* %i, align 4
  %30 = load i32, i32* %i, align 4
  %conv19 = sitofp i32 %30 to double
  %31 = load double, double* %f, align 8
  %32 = load double, double* %v, align 8
  %33 = load double, double* %w, align 8
  %sub20 = fsub double %32, %33
  %div = fdiv double %31, %sub20
  %sub21 = fsub double %conv19, %div
  %mul = fmul double 6.000000e+01, %sub21
  %34 = load double*, double** %hue.addr, align 8
  store double %mul, double* %34, align 8
  %35 = load double, double* %w, align 8
  %36 = load double*, double** %whiteness.addr, align 8
  store double %35, double* %36, align 8
  %37 = load double, double* %b1, align 8
  %38 = load double*, double** %blackness.addr, align 8
  store double %37, double* %38, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.17, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_hwb_to_rgb(double %hue, double %whiteness, double %blackness, %struct._GimpRGB* %rgb) #0 {
entry:
  %hue.addr = alloca double, align 8
  %whiteness.addr = alloca double, align 8
  %blackness.addr = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %h = alloca double, align 8
  %w = alloca double, align 8
  %b = alloca double, align 8
  %v = alloca double, align 8
  %n = alloca double, align 8
  %f = alloca double, align 8
  %i = alloca i32, align 4
  store double %hue, double* %hue.addr, align 8
  store double %whiteness, double* %whiteness.addr, align 8
  store double %blackness, double* %blackness.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  %0 = load double, double* %hue.addr, align 8
  store double %0, double* %h, align 8
  %1 = load double, double* %whiteness.addr, align 8
  store double %1, double* %w, align 8
  %2 = load double, double* %blackness.addr, align 8
  store double %2, double* %b, align 8
  %3 = load double, double* %h, align 8
  %mul = fmul double 6.000000e+00, %3
  %div = fdiv double %mul, 3.600000e+02
  store double %div, double* %h, align 8
  %4 = load double, double* %b, align 8
  %sub = fsub double 1.000000e+00, %4
  store double %sub, double* %v, align 8
  %5 = load double, double* %h, align 8
  %cmp = fcmp oeq double %5, -1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %v, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 0
  store double %6, double* %r, align 8
  %8 = load double, double* %v, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 1
  store double %8, double* %g, align 8
  %10 = load double, double* %v, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 2
  store double %10, double* %b1, align 8
  br label %if.end.31

if.else:                                          ; preds = %entry
  %12 = load double, double* %h, align 8
  %call = call double @floor(double %12) #4
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %i, align 4
  %13 = load double, double* %h, align 8
  %14 = load i32, i32* %i, align 4
  %conv2 = sitofp i32 %14 to double
  %sub3 = fsub double %13, %conv2
  store double %sub3, double* %f, align 8
  %15 = load i32, i32* %i, align 4
  %and = and i32 %15, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %16 = load double, double* %f, align 8
  %sub5 = fsub double 1.000000e+00, %16
  store double %sub5, double* %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %17 = load double, double* %w, align 8
  %18 = load double, double* %f, align 8
  %19 = load double, double* %v, align 8
  %20 = load double, double* %w, align 8
  %sub6 = fsub double %19, %20
  %mul7 = fmul double %18, %sub6
  %add = fadd double %17, %mul7
  store double %add, double* %n, align 8
  %21 = load i32, i32* %i, align 4
  switch i32 %21, label %sw.epilog [
    i32 6, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %22 = load double, double* %v, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 0
  store double %22, double* %r8, align 8
  %24 = load double, double* %n, align 8
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 1
  store double %24, double* %g9, align 8
  %26 = load double, double* %w, align 8
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %27, i32 0, i32 2
  store double %26, double* %b10, align 8
  br label %if.end.31

sw.bb.11:                                         ; preds = %if.end
  %28 = load double, double* %n, align 8
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 0
  store double %28, double* %r12, align 8
  %30 = load double, double* %v, align 8
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %31, i32 0, i32 1
  store double %30, double* %g13, align 8
  %32 = load double, double* %w, align 8
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %33, i32 0, i32 2
  store double %32, double* %b14, align 8
  br label %if.end.31

sw.bb.15:                                         ; preds = %if.end
  %34 = load double, double* %w, align 8
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r16 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 0
  store double %34, double* %r16, align 8
  %36 = load double, double* %v, align 8
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 1
  store double %36, double* %g17, align 8
  %38 = load double, double* %n, align 8
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i32 0, i32 2
  store double %38, double* %b18, align 8
  br label %if.end.31

sw.bb.19:                                         ; preds = %if.end
  %40 = load double, double* %w, align 8
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 0
  store double %40, double* %r20, align 8
  %42 = load double, double* %n, align 8
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %43, i32 0, i32 1
  store double %42, double* %g21, align 8
  %44 = load double, double* %v, align 8
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b22 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %45, i32 0, i32 2
  store double %44, double* %b22, align 8
  br label %if.end.31

sw.bb.23:                                         ; preds = %if.end
  %46 = load double, double* %n, align 8
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %47, i32 0, i32 0
  store double %46, double* %r24, align 8
  %48 = load double, double* %w, align 8
  %49 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %49, i32 0, i32 1
  store double %48, double* %g25, align 8
  %50 = load double, double* %v, align 8
  %51 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b26 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %51, i32 0, i32 2
  store double %50, double* %b26, align 8
  br label %if.end.31

sw.bb.27:                                         ; preds = %if.end
  %52 = load double, double* %v, align 8
  %53 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %53, i32 0, i32 0
  store double %52, double* %r28, align 8
  %54 = load double, double* %w, align 8
  %55 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g29 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %55, i32 0, i32 1
  store double %54, double* %g29, align 8
  %56 = load double, double* %n, align 8
  %57 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %57, i32 0, i32 2
  store double %56, double* %b30, align 8
  br label %if.end.31

sw.epilog:                                        ; preds = %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %sw.bb, %sw.bb.11, %sw.bb.15, %sw.bb.19, %sw.bb.23, %sw.bb.27, %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hsv_int(i32* %red, i32* %green, i32* %blue) #0 {
entry:
  %red.addr = alloca i32*, align 8
  %green.addr = alloca i32*, align 8
  %blue.addr = alloca i32*, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %min = alloca i32, align 4
  %delta = alloca double, align 8
  store i32* %red, i32** %red.addr, align 8
  store i32* %green, i32** %green.addr, align 8
  store i32* %blue, i32** %blue.addr, align 8
  %0 = load i32*, i32** %red.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* %r, align 8
  %2 = load i32*, i32** %green.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %g, align 8
  %4 = load i32*, i32** %blue.addr, align 8
  %5 = load i32, i32* %4, align 4
  %conv2 = sitofp i32 %5 to double
  store double %conv2, double* %b, align 8
  %6 = load double, double* %r, align 8
  %7 = load double, double* %g, align 8
  %cmp = fcmp ogt double %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load double, double* %r, align 8
  %9 = load double, double* %b, align 8
  %cmp4 = fcmp ogt double %8, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load double, double* %r, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load double, double* %b, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %11, %cond.false ]
  store double %cond, double* %v, align 8
  %12 = load double, double* %g, align 8
  %13 = load double, double* %b, align 8
  %cmp6 = fcmp olt double %12, %13
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %14 = load double, double* %g, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %15 = load double, double* %b, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi double [ %14, %cond.true.8 ], [ %15, %cond.false.9 ]
  %conv12 = fptosi double %cond11 to i32
  store i32 %conv12, i32* %min, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load double, double* %g, align 8
  %17 = load double, double* %b, align 8
  %cmp13 = fcmp ogt double %16, %17
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  %18 = load double, double* %g, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.else
  %19 = load double, double* %b, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi double [ %18, %cond.true.15 ], [ %19, %cond.false.16 ]
  store double %cond18, double* %v, align 8
  %20 = load double, double* %r, align 8
  %21 = load double, double* %b, align 8
  %cmp19 = fcmp olt double %20, %21
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.17
  %22 = load double, double* %r, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.17
  %23 = load double, double* %b, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ %22, %cond.true.21 ], [ %23, %cond.false.22 ]
  %conv25 = fptosi double %cond24 to i32
  store i32 %conv25, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.23, %cond.end.10
  %24 = load double, double* %v, align 8
  %25 = load i32, i32* %min, align 4
  %conv26 = sitofp i32 %25 to double
  %sub = fsub double %24, %conv26
  store double %sub, double* %delta, align 8
  %26 = load double, double* %v, align 8
  %cmp27 = fcmp oeq double %26, 0.000000e+00
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end
  store double 0.000000e+00, double* %s, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %if.end
  %27 = load double, double* %delta, align 8
  %28 = load double, double* %v, align 8
  %div = fdiv double %27, %28
  store double %div, double* %s, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %29 = load double, double* %s, align 8
  %cmp32 = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  store double 0.000000e+00, double* %h, align 8
  br label %if.end.65

if.else.35:                                       ; preds = %if.end.31
  %30 = load double, double* %r, align 8
  %31 = load double, double* %v, align 8
  %cmp36 = fcmp oeq double %30, %31
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.else.35
  %32 = load double, double* %g, align 8
  %33 = load double, double* %b, align 8
  %sub39 = fsub double %32, %33
  %mul = fmul double 6.000000e+01, %sub39
  %34 = load double, double* %delta, align 8
  %div40 = fdiv double %mul, %34
  store double %div40, double* %h, align 8
  br label %if.end.54

if.else.41:                                       ; preds = %if.else.35
  %35 = load double, double* %g, align 8
  %36 = load double, double* %v, align 8
  %cmp42 = fcmp oeq double %35, %36
  br i1 %cmp42, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.else.41
  %37 = load double, double* %b, align 8
  %38 = load double, double* %r, align 8
  %sub45 = fsub double %37, %38
  %mul46 = fmul double 6.000000e+01, %sub45
  %39 = load double, double* %delta, align 8
  %div47 = fdiv double %mul46, %39
  %add = fadd double 1.200000e+02, %div47
  store double %add, double* %h, align 8
  br label %if.end.53

if.else.48:                                       ; preds = %if.else.41
  %40 = load double, double* %r, align 8
  %41 = load double, double* %g, align 8
  %sub49 = fsub double %40, %41
  %mul50 = fmul double 6.000000e+01, %sub49
  %42 = load double, double* %delta, align 8
  %div51 = fdiv double %mul50, %42
  %add52 = fadd double 2.400000e+02, %div51
  store double %add52, double* %h, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.38
  %43 = load double, double* %h, align 8
  %cmp55 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %44 = load double, double* %h, align 8
  %add58 = fadd double %44, 3.600000e+02
  store double %add58, double* %h, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  %45 = load double, double* %h, align 8
  %cmp60 = fcmp ogt double %45, 3.600000e+02
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %46 = load double, double* %h, align 8
  %sub63 = fsub double %46, 3.600000e+02
  store double %sub63, double* %h, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.34
  %47 = load double, double* %h, align 8
  %add66 = fadd double %47, 5.000000e-01
  %conv67 = fptosi double %add66 to i32
  %48 = load i32*, i32** %red.addr, align 8
  store i32 %conv67, i32* %48, align 4
  %49 = load double, double* %s, align 8
  %mul68 = fmul double %49, 2.550000e+02
  %add69 = fadd double %mul68, 5.000000e-01
  %conv70 = fptosi double %add69 to i32
  %50 = load i32*, i32** %green.addr, align 8
  store i32 %conv70, i32* %50, align 4
  %51 = load double, double* %v, align 8
  %add71 = fadd double %51, 5.000000e-01
  %conv72 = fptosi double %add71 to i32
  %52 = load i32*, i32** %blue.addr, align 8
  store i32 %conv72, i32* %52, align 4
  %53 = load i32*, i32** %red.addr, align 8
  %54 = load i32, i32* %53, align 4
  %cmp73 = icmp eq i32 %54, 360
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.65
  %55 = load i32*, i32** %red.addr, align 8
  store i32 0, i32* %55, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.65
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_hsv_to_rgb_int(i32* %hue, i32* %saturation, i32* %value) #0 {
entry:
  %hue.addr = alloca i32*, align 8
  %saturation.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %h_temp = alloca double, align 8
  %f = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %t = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %hue, i32** %hue.addr, align 8
  store i32* %saturation, i32** %saturation.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load i32*, i32** %saturation.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %value.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %hue.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32*, i32** %value.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %saturation.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32*, i32** %value.addr, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %value.addr, align 8
  store i32 %9, i32* %10, align 4
  br label %if.end.77

if.else:                                          ; preds = %entry
  %11 = load i32*, i32** %hue.addr, align 8
  %12 = load i32, i32* %11, align 4
  %conv = sitofp i32 %12 to double
  store double %conv, double* %h, align 8
  %13 = load i32*, i32** %saturation.addr, align 8
  %14 = load i32, i32* %13, align 4
  %conv1 = sitofp i32 %14 to double
  %div = fdiv double %conv1, 2.550000e+02
  store double %div, double* %s, align 8
  %15 = load i32*, i32** %value.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv2 = sitofp i32 %16 to double
  %div3 = fdiv double %conv2, 2.550000e+02
  store double %div3, double* %v, align 8
  %17 = load double, double* %h, align 8
  %cmp4 = fcmp oeq double %17, 3.600000e+02
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store double 0.000000e+00, double* %h_temp, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %18 = load double, double* %h, align 8
  store double %18, double* %h_temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  %19 = load double, double* %h_temp, align 8
  %div8 = fdiv double %19, 6.000000e+01
  store double %div8, double* %h_temp, align 8
  %20 = load double, double* %h_temp, align 8
  %call = call double @floor(double %20) #4
  %conv9 = fptosi double %call to i32
  store i32 %conv9, i32* %i, align 4
  %21 = load double, double* %h_temp, align 8
  %22 = load i32, i32* %i, align 4
  %conv10 = sitofp i32 %22 to double
  %sub = fsub double %21, %conv10
  store double %sub, double* %f, align 8
  %23 = load double, double* %v, align 8
  %24 = load double, double* %s, align 8
  %sub11 = fsub double 1.000000e+00, %24
  %mul = fmul double %23, %sub11
  store double %mul, double* %p, align 8
  %25 = load double, double* %v, align 8
  %26 = load double, double* %s, align 8
  %27 = load double, double* %f, align 8
  %mul12 = fmul double %26, %27
  %sub13 = fsub double 1.000000e+00, %mul12
  %mul14 = fmul double %25, %sub13
  store double %mul14, double* %q, align 8
  %28 = load double, double* %v, align 8
  %29 = load double, double* %s, align 8
  %30 = load double, double* %f, align 8
  %sub15 = fsub double 1.000000e+00, %30
  %mul16 = fmul double %29, %sub15
  %sub17 = fsub double 1.000000e+00, %mul16
  %mul18 = fmul double %28, %sub17
  store double %mul18, double* %t, align 8
  %31 = load i32, i32* %i, align 4
  switch i32 %31, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.37
    i32 3, label %sw.bb.47
    i32 4, label %sw.bb.57
    i32 5, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %if.end
  %32 = load double, double* %v, align 8
  %mul19 = fmul double %32, 2.550000e+02
  %add = fadd double %mul19, 5.000000e-01
  %conv20 = fptosi double %add to i32
  %33 = load i32*, i32** %hue.addr, align 8
  store i32 %conv20, i32* %33, align 4
  %34 = load double, double* %t, align 8
  %mul21 = fmul double %34, 2.550000e+02
  %add22 = fadd double %mul21, 5.000000e-01
  %conv23 = fptosi double %add22 to i32
  %35 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv23, i32* %35, align 4
  %36 = load double, double* %p, align 8
  %mul24 = fmul double %36, 2.550000e+02
  %add25 = fadd double %mul24, 5.000000e-01
  %conv26 = fptosi double %add25 to i32
  %37 = load i32*, i32** %value.addr, align 8
  store i32 %conv26, i32* %37, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %38 = load double, double* %q, align 8
  %mul28 = fmul double %38, 2.550000e+02
  %add29 = fadd double %mul28, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %39 = load i32*, i32** %hue.addr, align 8
  store i32 %conv30, i32* %39, align 4
  %40 = load double, double* %v, align 8
  %mul31 = fmul double %40, 2.550000e+02
  %add32 = fadd double %mul31, 5.000000e-01
  %conv33 = fptosi double %add32 to i32
  %41 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv33, i32* %41, align 4
  %42 = load double, double* %p, align 8
  %mul34 = fmul double %42, 2.550000e+02
  %add35 = fadd double %mul34, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  %43 = load i32*, i32** %value.addr, align 8
  store i32 %conv36, i32* %43, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end
  %44 = load double, double* %p, align 8
  %mul38 = fmul double %44, 2.550000e+02
  %add39 = fadd double %mul38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  %45 = load i32*, i32** %hue.addr, align 8
  store i32 %conv40, i32* %45, align 4
  %46 = load double, double* %v, align 8
  %mul41 = fmul double %46, 2.550000e+02
  %add42 = fadd double %mul41, 5.000000e-01
  %conv43 = fptosi double %add42 to i32
  %47 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv43, i32* %47, align 4
  %48 = load double, double* %t, align 8
  %mul44 = fmul double %48, 2.550000e+02
  %add45 = fadd double %mul44, 5.000000e-01
  %conv46 = fptosi double %add45 to i32
  %49 = load i32*, i32** %value.addr, align 8
  store i32 %conv46, i32* %49, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end
  %50 = load double, double* %p, align 8
  %mul48 = fmul double %50, 2.550000e+02
  %add49 = fadd double %mul48, 5.000000e-01
  %conv50 = fptosi double %add49 to i32
  %51 = load i32*, i32** %hue.addr, align 8
  store i32 %conv50, i32* %51, align 4
  %52 = load double, double* %q, align 8
  %mul51 = fmul double %52, 2.550000e+02
  %add52 = fadd double %mul51, 5.000000e-01
  %conv53 = fptosi double %add52 to i32
  %53 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv53, i32* %53, align 4
  %54 = load double, double* %v, align 8
  %mul54 = fmul double %54, 2.550000e+02
  %add55 = fadd double %mul54, 5.000000e-01
  %conv56 = fptosi double %add55 to i32
  %55 = load i32*, i32** %value.addr, align 8
  store i32 %conv56, i32* %55, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end
  %56 = load double, double* %t, align 8
  %mul58 = fmul double %56, 2.550000e+02
  %add59 = fadd double %mul58, 5.000000e-01
  %conv60 = fptosi double %add59 to i32
  %57 = load i32*, i32** %hue.addr, align 8
  store i32 %conv60, i32* %57, align 4
  %58 = load double, double* %p, align 8
  %mul61 = fmul double %58, 2.550000e+02
  %add62 = fadd double %mul61, 5.000000e-01
  %conv63 = fptosi double %add62 to i32
  %59 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv63, i32* %59, align 4
  %60 = load double, double* %v, align 8
  %mul64 = fmul double %60, 2.550000e+02
  %add65 = fadd double %mul64, 5.000000e-01
  %conv66 = fptosi double %add65 to i32
  %61 = load i32*, i32** %value.addr, align 8
  store i32 %conv66, i32* %61, align 4
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end
  %62 = load double, double* %v, align 8
  %mul68 = fmul double %62, 2.550000e+02
  %add69 = fadd double %mul68, 5.000000e-01
  %conv70 = fptosi double %add69 to i32
  %63 = load i32*, i32** %hue.addr, align 8
  store i32 %conv70, i32* %63, align 4
  %64 = load double, double* %p, align 8
  %mul71 = fmul double %64, 2.550000e+02
  %add72 = fadd double %mul71, 5.000000e-01
  %conv73 = fptosi double %add72 to i32
  %65 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv73, i32* %65, align 4
  %66 = load double, double* %q, align 8
  %mul74 = fmul double %66, 2.550000e+02
  %add75 = fadd double %mul74, 5.000000e-01
  %conv76 = fptosi double %add75 to i32
  %67 = load i32*, i32** %value.addr, align 8
  store i32 %conv76, i32* %67, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.67, %sw.bb.57, %sw.bb.47, %sw.bb.37, %sw.bb.27, %sw.bb
  br label %if.end.77

if.end.77:                                        ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hsl_int(i32* %red, i32* %green, i32* %blue) #0 {
entry:
  %red.addr = alloca i32*, align 8
  %green.addr = alloca i32*, align 8
  %blue.addr = alloca i32*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %h = alloca double, align 8
  %s = alloca double, align 8
  %l = alloca double, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32* %red, i32** %red.addr, align 8
  store i32* %green, i32** %green.addr, align 8
  store i32* %blue, i32** %blue.addr, align 8
  %0 = load i32*, i32** %red.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %r, align 4
  %2 = load i32*, i32** %green.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %g, align 4
  %4 = load i32*, i32** %blue.addr, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %b, align 4
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %g, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %b, align 4
  %cmp1 = icmp sgt i32 %8, %9
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load i32, i32* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %12 = load i32, i32* %g, align 4
  %13 = load i32, i32* %b, align 4
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %14 = load i32, i32* %g, align 4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %15 = load i32, i32* %b, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ %14, %cond.true.3 ], [ %15, %cond.false.4 ]
  store i32 %cond6, i32* %min, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %g, align 4
  %17 = load i32, i32* %b, align 4
  %cmp7 = icmp sgt i32 %16, %17
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.else
  %18 = load i32, i32* %g, align 4
  br label %cond.end.10

cond.false.9:                                     ; preds = %if.else
  %19 = load i32, i32* %b, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %18, %cond.true.8 ], [ %19, %cond.false.9 ]
  store i32 %cond11, i32* %max, align 4
  %20 = load i32, i32* %r, align 4
  %21 = load i32, i32* %b, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  %22 = load i32, i32* %r, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.10
  %23 = load i32, i32* %b, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %22, %cond.true.13 ], [ %23, %cond.false.14 ]
  store i32 %cond16, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.15, %cond.end.5
  %24 = load i32, i32* %max, align 4
  %25 = load i32, i32* %min, align 4
  %add = add nsw i32 %24, %25
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %l, align 8
  %26 = load i32, i32* %max, align 4
  %27 = load i32, i32* %min, align 4
  %cmp17 = icmp eq i32 %26, %27
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %h, align 8
  br label %if.end.72

if.else.20:                                       ; preds = %if.end
  %28 = load i32, i32* %max, align 4
  %29 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %delta, align 4
  %30 = load double, double* %l, align 8
  %cmp21 = fcmp olt double %30, 1.280000e+02
  br i1 %cmp21, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.else.20
  %31 = load i32, i32* %delta, align 4
  %conv24 = sitofp i32 %31 to double
  %mul = fmul double 2.550000e+02, %conv24
  %32 = load i32, i32* %max, align 4
  %33 = load i32, i32* %min, align 4
  %add25 = add nsw i32 %32, %33
  %conv26 = sitofp i32 %add25 to double
  %div27 = fdiv double %mul, %conv26
  store double %div27, double* %s, align 8
  br label %if.end.35

if.else.28:                                       ; preds = %if.else.20
  %34 = load i32, i32* %delta, align 4
  %conv29 = sitofp i32 %34 to double
  %mul30 = fmul double 2.550000e+02, %conv29
  %35 = load i32, i32* %max, align 4
  %sub31 = sub nsw i32 511, %35
  %36 = load i32, i32* %min, align 4
  %sub32 = sub nsw i32 %sub31, %36
  %conv33 = sitofp i32 %sub32 to double
  %div34 = fdiv double %mul30, %conv33
  store double %div34, double* %s, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.28, %if.then.23
  %37 = load i32, i32* %r, align 4
  %38 = load i32, i32* %max, align 4
  %cmp36 = icmp eq i32 %37, %38
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.end.35
  %39 = load i32, i32* %g, align 4
  %40 = load i32, i32* %b, align 4
  %sub39 = sub nsw i32 %39, %40
  %conv40 = sitofp i32 %sub39 to double
  %41 = load i32, i32* %delta, align 4
  %conv41 = sitofp i32 %41 to double
  %div42 = fdiv double %conv40, %conv41
  store double %div42, double* %h, align 8
  br label %if.end.59

if.else.43:                                       ; preds = %if.end.35
  %42 = load i32, i32* %g, align 4
  %43 = load i32, i32* %max, align 4
  %cmp44 = icmp eq i32 %42, %43
  br i1 %cmp44, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %if.else.43
  %44 = load i32, i32* %b, align 4
  %45 = load i32, i32* %r, align 4
  %sub47 = sub nsw i32 %44, %45
  %conv48 = sitofp i32 %sub47 to double
  %46 = load i32, i32* %delta, align 4
  %conv49 = sitofp i32 %46 to double
  %div50 = fdiv double %conv48, %conv49
  %add51 = fadd double 2.000000e+00, %div50
  store double %add51, double* %h, align 8
  br label %if.end.58

if.else.52:                                       ; preds = %if.else.43
  %47 = load i32, i32* %r, align 4
  %48 = load i32, i32* %g, align 4
  %sub53 = sub nsw i32 %47, %48
  %conv54 = sitofp i32 %sub53 to double
  %49 = load i32, i32* %delta, align 4
  %conv55 = sitofp i32 %49 to double
  %div56 = fdiv double %conv54, %conv55
  %add57 = fadd double 4.000000e+00, %div56
  store double %add57, double* %h, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.52, %if.then.46
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.38
  %50 = load double, double* %h, align 8
  %mul60 = fmul double %50, 4.250000e+01
  store double %mul60, double* %h, align 8
  %51 = load double, double* %h, align 8
  %cmp61 = fcmp olt double %51, 0.000000e+00
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.59
  %52 = load double, double* %h, align 8
  %add64 = fadd double %52, 2.550000e+02
  store double %add64, double* %h, align 8
  br label %if.end.71

if.else.65:                                       ; preds = %if.end.59
  %53 = load double, double* %h, align 8
  %cmp66 = fcmp ogt double %53, 2.550000e+02
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.else.65
  %54 = load double, double* %h, align 8
  %sub69 = fsub double %54, 2.550000e+02
  store double %sub69, double* %h, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.else.65
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.19
  %55 = load double, double* %h, align 8
  %add73 = fadd double %55, 5.000000e-01
  %conv74 = fptosi double %add73 to i32
  %56 = load i32*, i32** %red.addr, align 8
  store i32 %conv74, i32* %56, align 4
  %57 = load double, double* %s, align 8
  %add75 = fadd double %57, 5.000000e-01
  %conv76 = fptosi double %add75 to i32
  %58 = load i32*, i32** %green.addr, align 8
  store i32 %conv76, i32* %58, align 4
  %59 = load double, double* %l, align 8
  %add77 = fadd double %59, 5.000000e-01
  %conv78 = fptosi double %add77 to i32
  %60 = load i32*, i32** %blue.addr, align 8
  store i32 %conv78, i32* %60, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rgb_to_l_int(i32 %red, i32 %green, i32 %blue) #0 {
entry:
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %red, i32* %red.addr, align 4
  store i32 %green, i32* %green.addr, align 4
  store i32 %blue, i32* %blue.addr, align 4
  %0 = load i32, i32* %red.addr, align 4
  %1 = load i32, i32* %green.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %red.addr, align 4
  %3 = load i32, i32* %blue.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i32, i32* %red.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* %blue.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %6 = load i32, i32* %green.addr, align 4
  %7 = load i32, i32* %blue.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %8 = load i32, i32* %green.addr, align 4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load i32, i32* %blue.addr, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ %8, %cond.true.3 ], [ %9, %cond.false.4 ]
  store i32 %cond6, i32* %min, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %green.addr, align 4
  %11 = load i32, i32* %blue.addr, align 4
  %cmp7 = icmp sgt i32 %10, %11
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.else
  %12 = load i32, i32* %green.addr, align 4
  br label %cond.end.10

cond.false.9:                                     ; preds = %if.else
  %13 = load i32, i32* %blue.addr, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %12, %cond.true.8 ], [ %13, %cond.false.9 ]
  store i32 %cond11, i32* %max, align 4
  %14 = load i32, i32* %red.addr, align 4
  %15 = load i32, i32* %blue.addr, align 4
  %cmp12 = icmp slt i32 %14, %15
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  %16 = load i32, i32* %red.addr, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.10
  %17 = load i32, i32* %blue.addr, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %16, %cond.true.13 ], [ %17, %cond.false.14 ]
  store i32 %cond16, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.15, %cond.end.5
  %18 = load i32, i32* %max, align 4
  %19 = load i32, i32* %min, align 4
  %add = add nsw i32 %18, %19
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 2.000000e+00
  %add17 = fadd double %div, 5.000000e-01
  %conv18 = fptosi double %add17 to i32
  ret i32 %conv18
}

; Function Attrs: nounwind uwtable
define void @gimp_hsl_to_rgb_int(i32* %hue, i32* %saturation, i32* %lightness) #0 {
entry:
  %hue.addr = alloca i32*, align 8
  %saturation.addr = alloca i32*, align 8
  %lightness.addr = alloca i32*, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %l = alloca double, align 8
  %m1 = alloca double, align 8
  %m2 = alloca double, align 8
  store i32* %hue, i32** %hue.addr, align 8
  store i32* %saturation, i32** %saturation.addr, align 8
  store i32* %lightness, i32** %lightness.addr, align 8
  %0 = load i32*, i32** %hue.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* %h, align 8
  %2 = load i32*, i32** %saturation.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %s, align 8
  %4 = load i32*, i32** %lightness.addr, align 8
  %5 = load i32, i32* %4, align 4
  %conv2 = sitofp i32 %5 to double
  store double %conv2, double* %l, align 8
  %6 = load double, double* %s, align 8
  %cmp = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load double, double* %l, align 8
  %conv4 = fptosi double %7 to i32
  %8 = load i32*, i32** %hue.addr, align 8
  store i32 %conv4, i32* %8, align 4
  %9 = load double, double* %l, align 8
  %conv5 = fptosi double %9 to i32
  %10 = load i32*, i32** %lightness.addr, align 8
  store i32 %conv5, i32* %10, align 4
  %11 = load double, double* %l, align 8
  %conv6 = fptosi double %11 to i32
  %12 = load i32*, i32** %saturation.addr, align 8
  store i32 %conv6, i32* %12, align 4
  br label %if.end.21

if.else:                                          ; preds = %entry
  %13 = load double, double* %l, align 8
  %cmp7 = fcmp olt double %13, 1.280000e+02
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  %14 = load double, double* %l, align 8
  %15 = load double, double* %s, align 8
  %add = fadd double 2.550000e+02, %15
  %mul = fmul double %14, %add
  %div = fdiv double %mul, 6.502500e+04
  store double %div, double* %m2, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %16 = load double, double* %l, align 8
  %17 = load double, double* %s, align 8
  %add11 = fadd double %16, %17
  %18 = load double, double* %l, align 8
  %19 = load double, double* %s, align 8
  %mul12 = fmul double %18, %19
  %div13 = fdiv double %mul12, 2.550000e+02
  %sub = fsub double %add11, %div13
  %div14 = fdiv double %sub, 2.550000e+02
  store double %div14, double* %m2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  %20 = load double, double* %l, align 8
  %div15 = fdiv double %20, 1.275000e+02
  %21 = load double, double* %m2, align 8
  %sub16 = fsub double %div15, %21
  store double %sub16, double* %m1, align 8
  %22 = load double, double* %m1, align 8
  %23 = load double, double* %m2, align 8
  %24 = load double, double* %h, align 8
  %add17 = fadd double %24, 8.500000e+01
  %call = call i32 @gimp_hsl_value_int(double %22, double %23, double %add17)
  %25 = load i32*, i32** %hue.addr, align 8
  store i32 %call, i32* %25, align 4
  %26 = load double, double* %m1, align 8
  %27 = load double, double* %m2, align 8
  %28 = load double, double* %h, align 8
  %call18 = call i32 @gimp_hsl_value_int(double %26, double %27, double %28)
  %29 = load i32*, i32** %saturation.addr, align 8
  store i32 %call18, i32* %29, align 4
  %30 = load double, double* %m1, align 8
  %31 = load double, double* %m2, align 8
  %32 = load double, double* %h, align 8
  %sub19 = fsub double %32, 8.500000e+01
  %call20 = call i32 @gimp_hsl_value_int(double %30, double %31, double %sub19)
  %33 = load i32*, i32** %lightness.addr, align 8
  store i32 %call20, i32* %33, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gimp_hsl_value_int(double %n1, double %n2, double %hue) #2 {
entry:
  %n1.addr = alloca double, align 8
  %n2.addr = alloca double, align 8
  %hue.addr = alloca double, align 8
  %value = alloca double, align 8
  store double %n1, double* %n1.addr, align 8
  store double %n2, double* %n2.addr, align 8
  store double %hue, double* %hue.addr, align 8
  %0 = load double, double* %hue.addr, align 8
  %cmp = fcmp ogt double %0, 2.550000e+02
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %hue.addr, align 8
  %sub = fsub double %1, 2.550000e+02
  store double %sub, double* %hue.addr, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %2 = load double, double* %hue.addr, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load double, double* %hue.addr, align 8
  %add = fadd double %3, 2.550000e+02
  store double %add, double* %hue.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load double, double* %hue.addr, align 8
  %cmp4 = fcmp olt double %4, 4.250000e+01
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.end.3
  %5 = load double, double* %n1.addr, align 8
  %6 = load double, double* %n2.addr, align 8
  %7 = load double, double* %n1.addr, align 8
  %sub6 = fsub double %6, %7
  %8 = load double, double* %hue.addr, align 8
  %div = fdiv double %8, 4.250000e+01
  %mul = fmul double %sub6, %div
  %add7 = fadd double %5, %mul
  store double %add7, double* %value, align 8
  br label %if.end.22

if.else.8:                                        ; preds = %if.end.3
  %9 = load double, double* %hue.addr, align 8
  %cmp9 = fcmp olt double %9, 1.275000e+02
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.8
  %10 = load double, double* %n2.addr, align 8
  store double %10, double* %value, align 8
  br label %if.end.21

if.else.11:                                       ; preds = %if.else.8
  %11 = load double, double* %hue.addr, align 8
  %cmp12 = fcmp olt double %11, 1.700000e+02
  br i1 %cmp12, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %if.else.11
  %12 = load double, double* %n1.addr, align 8
  %13 = load double, double* %n2.addr, align 8
  %14 = load double, double* %n1.addr, align 8
  %sub14 = fsub double %13, %14
  %15 = load double, double* %hue.addr, align 8
  %sub15 = fsub double 1.700000e+02, %15
  %div16 = fdiv double %sub15, 4.250000e+01
  %mul17 = fmul double %sub14, %div16
  %add18 = fadd double %12, %mul17
  store double %add18, double* %value, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.11
  %16 = load double, double* %n1.addr, align 8
  store double %16, double* %value, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.5
  %17 = load double, double* %value, align 8
  %mul23 = fmul double %17, 2.550000e+02
  %add24 = fadd double %mul23, 5.000000e-01
  %conv = fptosi double %add24 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_cmyk_int(i32* %red, i32* %green, i32* %blue, i32* %pullout) #0 {
entry:
  %red.addr = alloca i32*, align 8
  %green.addr = alloca i32*, align 8
  %blue.addr = alloca i32*, align 8
  %pullout.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %red, i32** %red.addr, align 8
  store i32* %green, i32** %green.addr, align 8
  store i32* %blue, i32** %blue.addr, align 8
  store i32* %pullout, i32** %pullout.addr, align 8
  %0 = load i32*, i32** %red.addr, align 8
  %1 = load i32, i32* %0, align 4
  %sub = sub nsw i32 255, %1
  store i32 %sub, i32* %c, align 4
  %2 = load i32*, i32** %green.addr, align 8
  %3 = load i32, i32* %2, align 4
  %sub1 = sub nsw i32 255, %3
  store i32 %sub1, i32* %m, align 4
  %4 = load i32*, i32** %blue.addr, align 8
  %5 = load i32, i32* %4, align 4
  %sub2 = sub nsw i32 255, %5
  store i32 %sub2, i32* %y, align 4
  %6 = load i32*, i32** %pullout.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %c, align 4
  %9 = load i32*, i32** %red.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %m, align 4
  %11 = load i32*, i32** %green.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32*, i32** %blue.addr, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end.28

if.else:                                          ; preds = %entry
  store i32 255, i32* %k, align 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %16 = load i32, i32* %c, align 4
  store i32 %16, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %19 = load i32, i32* %m, align 4
  store i32 %19, i32* %k, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %20, %21
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %22 = load i32, i32* %y, align 4
  store i32 %22, i32* %k, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %23 = load i32, i32* %k, align 4
  %24 = load i32*, i32** %pullout.addr, align 8
  %25 = load i32, i32* %24, align 4
  %cmp11 = icmp sgt i32 %25, 100
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  br label %cond.end.15

cond.false:                                       ; preds = %if.end.10
  %26 = load i32*, i32** %pullout.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %28 = load i32*, i32** %pullout.addr, align 8
  %29 = load i32, i32* %28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi i32 [ 0, %cond.true.13 ], [ %29, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi i32 [ 100, %cond.true ], [ %cond, %cond.end ]
  %mul = mul nsw i32 %23, %cond16
  %div = sdiv i32 %mul, 100
  store i32 %div, i32* %k, align 4
  %30 = load i32, i32* %c, align 4
  %31 = load i32, i32* %k, align 4
  %sub17 = sub nsw i32 %30, %31
  %shl = shl i32 %sub17, 8
  %32 = load i32, i32* %k, align 4
  %sub18 = sub nsw i32 256, %32
  %div19 = sdiv i32 %shl, %sub18
  %33 = load i32*, i32** %red.addr, align 8
  store i32 %div19, i32* %33, align 4
  %34 = load i32, i32* %m, align 4
  %35 = load i32, i32* %k, align 4
  %sub20 = sub nsw i32 %34, %35
  %shl21 = shl i32 %sub20, 8
  %36 = load i32, i32* %k, align 4
  %sub22 = sub nsw i32 256, %36
  %div23 = sdiv i32 %shl21, %sub22
  %37 = load i32*, i32** %green.addr, align 8
  store i32 %div23, i32* %37, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %k, align 4
  %sub24 = sub nsw i32 %38, %39
  %shl25 = shl i32 %sub24, 8
  %40 = load i32, i32* %k, align 4
  %sub26 = sub nsw i32 256, %40
  %div27 = sdiv i32 %shl25, %sub26
  %41 = load i32*, i32** %blue.addr, align 8
  store i32 %div27, i32* %41, align 4
  %42 = load i32, i32* %k, align 4
  %43 = load i32*, i32** %pullout.addr, align 8
  store i32 %42, i32* %43, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.15, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyk_to_rgb_int(i32* %cyan, i32* %magenta, i32* %yellow, i32* %black) #0 {
entry:
  %cyan.addr = alloca i32*, align 8
  %magenta.addr = alloca i32*, align 8
  %yellow.addr = alloca i32*, align 8
  %black.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %cyan, i32** %cyan.addr, align 8
  store i32* %magenta, i32** %magenta.addr, align 8
  store i32* %yellow, i32** %yellow.addr, align 8
  store i32* %black, i32** %black.addr, align 8
  %0 = load i32*, i32** %cyan.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32*, i32** %magenta.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %m, align 4
  %4 = load i32*, i32** %yellow.addr, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %y, align 4
  %6 = load i32*, i32** %black.addr, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %k, align 4
  %8 = load i32, i32* %k, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %c, align 4
  %10 = load i32, i32* %k, align 4
  %sub = sub nsw i32 256, %10
  %mul = mul nsw i32 %9, %sub
  %shr = ashr i32 %mul, 8
  %11 = load i32, i32* %k, align 4
  %add = add nsw i32 %shr, %11
  store i32 %add, i32* %c, align 4
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %k, align 4
  %sub1 = sub nsw i32 256, %13
  %mul2 = mul nsw i32 %12, %sub1
  %shr3 = ashr i32 %mul2, 8
  %14 = load i32, i32* %k, align 4
  %add4 = add nsw i32 %shr3, %14
  store i32 %add4, i32* %m, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %k, align 4
  %sub5 = sub nsw i32 256, %16
  %mul6 = mul nsw i32 %15, %sub5
  %shr7 = ashr i32 %mul6, 8
  %17 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %shr7, %17
  store i32 %add8, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %c, align 4
  %sub9 = sub nsw i32 255, %18
  %19 = load i32*, i32** %cyan.addr, align 8
  store i32 %sub9, i32* %19, align 4
  %20 = load i32, i32* %m, align 4
  %sub10 = sub nsw i32 255, %20
  %21 = load i32*, i32** %magenta.addr, align 8
  store i32 %sub10, i32* %21, align 4
  %22 = load i32, i32* %y, align 4
  %sub11 = sub nsw i32 255, %22
  %23 = load i32*, i32** %yellow.addr, align 8
  store i32 %sub11, i32* %23, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_to_hsv4(i8* %rgb, double* %hue, double* %saturation, double* %value) #0 {
entry:
  %rgb.addr = alloca i8*, align 8
  %hue.addr = alloca double*, align 8
  %saturation.addr = alloca double*, align 8
  %value.addr = alloca double*, align 8
  %red = alloca double, align 8
  %green = alloca double, align 8
  %blue = alloca double, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %min = alloca double, align 8
  %max = alloca double, align 8
  %delta = alloca double, align 8
  store i8* %rgb, i8** %rgb.addr, align 8
  store double* %hue, double** %hue.addr, align 8
  store double* %saturation, double** %saturation.addr, align 8
  store double* %value, double** %value.addr, align 8
  %0 = load i8*, i8** %rgb.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  store double %div, double* %red, align 8
  %2 = load i8*, i8** %rgb.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %conv4 = sitofp i32 %conv3 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  store double %div5, double* %green, align 8
  %4 = load i8*, i8** %rgb.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %conv8 = sitofp i32 %conv7 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  store double %div9, double* %blue, align 8
  %6 = load double, double* %red, align 8
  %7 = load double, double* %green, align 8
  %cmp = fcmp ogt double %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load double, double* %red, align 8
  %9 = load double, double* %blue, align 8
  %cmp11 = fcmp ogt double %8, %9
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load double, double* %red, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load double, double* %blue, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %11, %cond.false ]
  store double %cond, double* %max, align 8
  %12 = load double, double* %green, align 8
  %13 = load double, double* %blue, align 8
  %cmp13 = fcmp olt double %12, %13
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %14 = load double, double* %green, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  %15 = load double, double* %blue, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi double [ %14, %cond.true.15 ], [ %15, %cond.false.16 ]
  store double %cond18, double* %min, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load double, double* %green, align 8
  %17 = load double, double* %blue, align 8
  %cmp19 = fcmp ogt double %16, %17
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %if.else
  %18 = load double, double* %green, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.else
  %19 = load double, double* %blue, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ %18, %cond.true.21 ], [ %19, %cond.false.22 ]
  store double %cond24, double* %max, align 8
  %20 = load double, double* %red, align 8
  %21 = load double, double* %blue, align 8
  %cmp25 = fcmp olt double %20, %21
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.23
  %22 = load double, double* %red, align 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end.23
  %23 = load double, double* %blue, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi double [ %22, %cond.true.27 ], [ %23, %cond.false.28 ]
  store double %cond30, double* %min, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.29, %cond.end.17
  %24 = load double, double* %max, align 8
  store double %24, double* %v, align 8
  %25 = load double, double* %max, align 8
  %cmp31 = fcmp une double %25, 0.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end
  %26 = load double, double* %max, align 8
  %27 = load double, double* %min, align 8
  %sub = fsub double %26, %27
  %28 = load double, double* %max, align 8
  %div34 = fdiv double %sub, %28
  store double %div34, double* %s, align 8
  br label %if.end.36

if.else.35:                                       ; preds = %if.end
  store double 0.000000e+00, double* %s, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.33
  %29 = load double, double* %s, align 8
  %cmp37 = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.36
  store double 0.000000e+00, double* %h, align 8
  br label %if.end.75

if.else.40:                                       ; preds = %if.end.36
  %30 = load double, double* %max, align 8
  %31 = load double, double* %min, align 8
  %sub41 = fsub double %30, %31
  store double %sub41, double* %delta, align 8
  %32 = load double, double* %delta, align 8
  %cmp42 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.40
  store double 1.000000e+00, double* %delta, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else.40
  %33 = load double, double* %red, align 8
  %34 = load double, double* %max, align 8
  %cmp46 = fcmp oeq double %33, %34
  br i1 %cmp46, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %if.end.45
  %35 = load double, double* %green, align 8
  %36 = load double, double* %blue, align 8
  %sub49 = fsub double %35, %36
  %37 = load double, double* %delta, align 8
  %div50 = fdiv double %sub49, %37
  store double %div50, double* %h, align 8
  br label %if.end.62

if.else.51:                                       ; preds = %if.end.45
  %38 = load double, double* %green, align 8
  %39 = load double, double* %max, align 8
  %cmp52 = fcmp oeq double %38, %39
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %if.else.51
  %40 = load double, double* %blue, align 8
  %41 = load double, double* %red, align 8
  %sub55 = fsub double %40, %41
  %42 = load double, double* %delta, align 8
  %div56 = fdiv double %sub55, %42
  %add = fadd double 2.000000e+00, %div56
  store double %add, double* %h, align 8
  br label %if.end.61

if.else.57:                                       ; preds = %if.else.51
  %43 = load double, double* %red, align 8
  %44 = load double, double* %green, align 8
  %sub58 = fsub double %43, %44
  %45 = load double, double* %delta, align 8
  %div59 = fdiv double %sub58, %45
  %add60 = fadd double 4.000000e+00, %div59
  store double %add60, double* %h, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.48
  %46 = load double, double* %h, align 8
  %div63 = fdiv double %46, 6.000000e+00
  store double %div63, double* %h, align 8
  %47 = load double, double* %h, align 8
  %cmp64 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp64, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.end.62
  %48 = load double, double* %h, align 8
  %add67 = fadd double %48, 1.000000e+00
  store double %add67, double* %h, align 8
  br label %if.end.74

if.else.68:                                       ; preds = %if.end.62
  %49 = load double, double* %h, align 8
  %cmp69 = fcmp ogt double %49, 1.000000e+00
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.68
  %50 = load double, double* %h, align 8
  %sub72 = fsub double %50, 1.000000e+00
  store double %sub72, double* %h, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.39
  %51 = load double, double* %h, align 8
  %52 = load double*, double** %hue.addr, align 8
  store double %51, double* %52, align 8
  %53 = load double, double* %s, align 8
  %54 = load double*, double** %saturation.addr, align 8
  store double %53, double* %54, align 8
  %55 = load double, double* %v, align 8
  %56 = load double*, double** %value.addr, align 8
  store double %55, double* %56, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_hsv_to_rgb4(i8* %rgb, double %hue, double %saturation, double %value) #0 {
entry:
  %rgb.addr = alloca i8*, align 8
  %hue.addr = alloca double, align 8
  %saturation.addr = alloca double, align 8
  %value.addr = alloca double, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %f = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %t = alloca double, align 8
  store i8* %rgb, i8** %rgb.addr, align 8
  store double %hue, double* %hue.addr, align 8
  store double %saturation, double* %saturation.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load double, double* %saturation.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  store double %1, double* %hue.addr, align 8
  %2 = load double, double* %value.addr, align 8
  store double %2, double* %saturation.addr, align 8
  %3 = load double, double* %value.addr, align 8
  store double %3, double* %value.addr, align 8
  br label %if.end.19

if.else:                                          ; preds = %entry
  %4 = load double, double* %hue.addr, align 8
  %mul = fmul double %4, 6.000000e+00
  store double %mul, double* %h, align 8
  %5 = load double, double* %saturation.addr, align 8
  store double %5, double* %s, align 8
  %6 = load double, double* %value.addr, align 8
  store double %6, double* %v, align 8
  %7 = load double, double* %h, align 8
  %cmp1 = fcmp oeq double %7, 6.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store double 0.000000e+00, double* %h, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %8 = load double, double* %h, align 8
  %9 = load double, double* %h, align 8
  %conv = fptosi double %9 to i32
  %conv3 = sitofp i32 %conv to double
  %sub = fsub double %8, %conv3
  store double %sub, double* %f, align 8
  %10 = load double, double* %v, align 8
  %11 = load double, double* %s, align 8
  %sub4 = fsub double 1.000000e+00, %11
  %mul5 = fmul double %10, %sub4
  store double %mul5, double* %p, align 8
  %12 = load double, double* %v, align 8
  %13 = load double, double* %s, align 8
  %14 = load double, double* %f, align 8
  %mul6 = fmul double %13, %14
  %sub7 = fsub double 1.000000e+00, %mul6
  %mul8 = fmul double %12, %sub7
  store double %mul8, double* %q, align 8
  %15 = load double, double* %v, align 8
  %16 = load double, double* %s, align 8
  %17 = load double, double* %f, align 8
  %sub9 = fsub double 1.000000e+00, %17
  %mul10 = fmul double %16, %sub9
  %sub11 = fsub double 1.000000e+00, %mul10
  %mul12 = fmul double %15, %sub11
  store double %mul12, double* %t, align 8
  %18 = load double, double* %h, align 8
  %conv13 = fptosi double %18 to i32
  switch i32 %conv13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.16
    i32 4, label %sw.bb.17
    i32 5, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load double, double* %v, align 8
  store double %19, double* %hue.addr, align 8
  %20 = load double, double* %t, align 8
  store double %20, double* %saturation.addr, align 8
  %21 = load double, double* %p, align 8
  store double %21, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %22 = load double, double* %q, align 8
  store double %22, double* %hue.addr, align 8
  %23 = load double, double* %v, align 8
  store double %23, double* %saturation.addr, align 8
  %24 = load double, double* %p, align 8
  store double %24, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %25 = load double, double* %p, align 8
  store double %25, double* %hue.addr, align 8
  %26 = load double, double* %v, align 8
  store double %26, double* %saturation.addr, align 8
  %27 = load double, double* %t, align 8
  store double %27, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %28 = load double, double* %p, align 8
  store double %28, double* %hue.addr, align 8
  %29 = load double, double* %q, align 8
  store double %29, double* %saturation.addr, align 8
  %30 = load double, double* %v, align 8
  store double %30, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %31 = load double, double* %t, align 8
  store double %31, double* %hue.addr, align 8
  %32 = load double, double* %p, align 8
  store double %32, double* %saturation.addr, align 8
  %33 = load double, double* %v, align 8
  store double %33, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %34 = load double, double* %v, align 8
  store double %34, double* %hue.addr, align 8
  %35 = load double, double* %p, align 8
  store double %35, double* %saturation.addr, align 8
  %36 = load double, double* %q, align 8
  store double %36, double* %value.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog, %if.then
  %37 = load double, double* %hue.addr, align 8
  %mul20 = fmul double %37, 2.550000e+02
  %add = fadd double %mul20, 5.000000e-01
  %conv21 = fptosi double %add to i32
  %conv22 = trunc i32 %conv21 to i8
  %38 = load i8*, i8** %rgb.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %conv22, i8* %arrayidx, align 1
  %39 = load double, double* %saturation.addr, align 8
  %mul23 = fmul double %39, 2.550000e+02
  %add24 = fadd double %mul23, 5.000000e-01
  %conv25 = fptosi double %add24 to i32
  %conv26 = trunc i32 %conv25 to i8
  %40 = load i8*, i8** %rgb.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1
  %41 = load double, double* %value.addr, align 8
  %mul28 = fmul double %41, 2.550000e+02
  %add29 = fadd double %mul28, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %conv31 = trunc i32 %conv30 to i8
  %42 = load i8*, i8** %rgb.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 %conv31, i8* %arrayidx32, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
