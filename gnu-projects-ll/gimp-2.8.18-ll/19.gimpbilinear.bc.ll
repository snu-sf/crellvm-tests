; ModuleID = './libgimpcolor/gimpbilinear.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_bilinear = private unnamed_addr constant [14 x i8] c"gimp_bilinear\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"values != NULL\00", align 1
@__func__.gimp_bilinear_8 = private unnamed_addr constant [16 x i8] c"gimp_bilinear_8\00", align 1
@__func__.gimp_bilinear_16 = private unnamed_addr constant [17 x i8] c"gimp_bilinear_16\00", align 1
@__func__.gimp_bilinear_32 = private unnamed_addr constant [17 x i8] c"gimp_bilinear_32\00", align 1
@__func__.gimp_bilinear_rgb = private unnamed_addr constant [18 x i8] c"gimp_bilinear_rgb\00", align 1
@__func__.gimp_bilinear_rgba = private unnamed_addr constant [19 x i8] c"gimp_bilinear_rgba\00", align 1
@__func__.gimp_bilinear_pixels_8 = private unnamed_addr constant [23 x i8] c"gimp_bilinear_pixels_8\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1

; Function Attrs: nounwind uwtable
define double @gimp_bilinear(double %x, double %y, double* %values) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca double*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %values, double** %values.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double*, double** %values.addr, align 8
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_bilinear, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %1, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %2, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %4, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %5 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load double, double* %y.addr, align 8
  %add7 = fadd double %6, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %7 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %7
  %8 = load double*, double** %values.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx, align 8
  %mul = fmul double %sub, %9
  %10 = load double, double* %x.addr, align 8
  %11 = load double*, double** %values.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 1
  %12 = load double, double* %arrayidx9, align 8
  %mul10 = fmul double %10, %12
  %add11 = fadd double %mul, %mul10
  store double %add11, double* %m0, align 8
  %13 = load double, double* %x.addr, align 8
  %sub12 = fsub double 1.000000e+00, %13
  %14 = load double*, double** %values.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %14, i64 2
  %15 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %sub12, %15
  %16 = load double, double* %x.addr, align 8
  %17 = load double*, double** %values.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %17, i64 3
  %18 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double %16, %18
  %add17 = fadd double %mul14, %mul16
  store double %add17, double* %m1, align 8
  %19 = load double, double* %y.addr, align 8
  %sub18 = fsub double 1.000000e+00, %19
  %20 = load double, double* %m0, align 8
  %mul19 = fmul double %sub18, %20
  %21 = load double, double* %y.addr, align 8
  %22 = load double, double* %m1, align 8
  %mul20 = fmul double %21, %22
  %add21 = fadd double %mul19, %mul20
  store double %add21, double* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.else
  %23 = load double, double* %retval
  ret double %23
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind uwtable
define zeroext i8 @gimp_bilinear_8(double %x, double %y, i8* %values) #0 {
entry:
  %retval = alloca i8, align 1
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca i8*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %values.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_bilinear_8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %1, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %2, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %4, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %5 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load double, double* %y.addr, align 8
  %add7 = fadd double %6, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %7 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %7
  %8 = load i8*, i8** %values.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %conv9 = sitofp i32 %conv to double
  %mul = fmul double %sub, %conv9
  %10 = load double, double* %x.addr, align 8
  %11 = load i8*, i8** %values.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %conv12 = sitofp i32 %conv11 to double
  %mul13 = fmul double %10, %conv12
  %add14 = fadd double %mul, %mul13
  store double %add14, double* %m0, align 8
  %13 = load double, double* %x.addr, align 8
  %sub15 = fsub double 1.000000e+00, %13
  %14 = load i8*, i8** %values.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %conv18 = sitofp i32 %conv17 to double
  %mul19 = fmul double %sub15, %conv18
  %16 = load double, double* %x.addr, align 8
  %17 = load i8*, i8** %values.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %conv22 = sitofp i32 %conv21 to double
  %mul23 = fmul double %16, %conv22
  %add24 = fadd double %mul19, %mul23
  store double %add24, double* %m1, align 8
  %19 = load double, double* %y.addr, align 8
  %sub25 = fsub double 1.000000e+00, %19
  %20 = load double, double* %m0, align 8
  %mul26 = fmul double %sub25, %20
  %21 = load double, double* %y.addr, align 8
  %22 = load double, double* %m1, align 8
  %mul27 = fmul double %21, %22
  %add28 = fadd double %mul26, %mul27
  %conv29 = fptoui double %add28 to i8
  store i8 %conv29, i8* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.else
  %23 = load i8, i8* %retval
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define zeroext i16 @gimp_bilinear_16(double %x, double %y, i16* %values) #0 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca i16*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i16* %values, i16** %values.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i16*, i16** %values.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_bilinear_16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %1, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %2, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %4, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %5 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load double, double* %y.addr, align 8
  %add7 = fadd double %6, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %7 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %7
  %8 = load i16*, i16** %values.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %conv9 = sitofp i32 %conv to double
  %mul = fmul double %sub, %conv9
  %10 = load double, double* %x.addr, align 8
  %11 = load i16*, i16** %values.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %11, i64 1
  %12 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %12 to i32
  %conv12 = sitofp i32 %conv11 to double
  %mul13 = fmul double %10, %conv12
  %add14 = fadd double %mul, %mul13
  store double %add14, double* %m0, align 8
  %13 = load double, double* %x.addr, align 8
  %sub15 = fsub double 1.000000e+00, %13
  %14 = load i16*, i16** %values.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 2
  %15 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %15 to i32
  %conv18 = sitofp i32 %conv17 to double
  %mul19 = fmul double %sub15, %conv18
  %16 = load double, double* %x.addr, align 8
  %17 = load i16*, i16** %values.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %17, i64 3
  %18 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %18 to i32
  %conv22 = sitofp i32 %conv21 to double
  %mul23 = fmul double %16, %conv22
  %add24 = fadd double %mul19, %mul23
  store double %add24, double* %m1, align 8
  %19 = load double, double* %y.addr, align 8
  %sub25 = fsub double 1.000000e+00, %19
  %20 = load double, double* %m0, align 8
  %mul26 = fmul double %sub25, %20
  %21 = load double, double* %y.addr, align 8
  %22 = load double, double* %m1, align 8
  %mul27 = fmul double %21, %22
  %add28 = fadd double %mul26, %mul27
  %conv29 = fptoui double %add28 to i16
  store i16 %conv29, i16* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.else
  %23 = load i16, i16* %retval
  ret i16 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_bilinear_32(double %x, double %y, i32* %values) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca i32*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32* %values, i32** %values.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %values.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_bilinear_32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %1, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %2 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %2, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %4 = load double, double* %x.addr, align 8
  %add = fadd double %4, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %5 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load double, double* %y.addr, align 8
  %add7 = fadd double %6, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %7 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %7
  %8 = load i32*, i32** %values.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx, align 4
  %conv = uitofp i32 %9 to double
  %mul = fmul double %sub, %conv
  %10 = load double, double* %x.addr, align 8
  %11 = load i32*, i32** %values.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32, i32* %arrayidx9, align 4
  %conv10 = uitofp i32 %12 to double
  %mul11 = fmul double %10, %conv10
  %add12 = fadd double %mul, %mul11
  store double %add12, double* %m0, align 8
  %13 = load double, double* %x.addr, align 8
  %sub13 = fsub double 1.000000e+00, %13
  %14 = load i32*, i32** %values.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx14, align 4
  %conv15 = uitofp i32 %15 to double
  %mul16 = fmul double %sub13, %conv15
  %16 = load double, double* %x.addr, align 8
  %17 = load i32*, i32** %values.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 3
  %18 = load i32, i32* %arrayidx17, align 4
  %conv18 = uitofp i32 %18 to double
  %mul19 = fmul double %16, %conv18
  %add20 = fadd double %mul16, %mul19
  store double %add20, double* %m1, align 8
  %19 = load double, double* %y.addr, align 8
  %sub21 = fsub double 1.000000e+00, %19
  %20 = load double, double* %m0, align 8
  %mul22 = fmul double %sub21, %20
  %21 = load double, double* %y.addr, align 8
  %22 = load double, double* %m1, align 8
  %mul23 = fmul double %21, %22
  %add24 = fadd double %mul22, %mul23
  %conv25 = fptoui double %add24 to i32
  store i32 %conv25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.else
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @gimp_bilinear_rgb(%struct._GimpRGB* noalias sret %agg.result, double %x, double %y, %struct._GimpRGB* %values) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca %struct._GimpRGB*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %ix = alloca double, align 8
  %iy = alloca double, align 8
  %v = alloca %struct._GimpRGB, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %values, %struct._GimpRGB** %values.addr, align 8
  %0 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_bilinear_rgb, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %2 = bitcast %struct._GimpRGB* %agg.result to i8*
  %3 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %4, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %5 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %5, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %6 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %7 = load double, double* %x.addr, align 8
  %add = fadd double %7, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %8 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load double, double* %y.addr, align 8
  %add7 = fadd double %9, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %10 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %10
  store double %sub, double* %ix, align 8
  %11 = load double, double* %y.addr, align 8
  %sub9 = fsub double 1.000000e+00, %11
  store double %sub9, double* %iy, align 8
  %12 = load double, double* %ix, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i64 0
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx, i32 0, i32 0
  %14 = load double, double* %r, align 8
  %mul = fmul double %12, %14
  %15 = load double, double* %x.addr, align 8
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i64 1
  %r11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx10, i32 0, i32 0
  %17 = load double, double* %r11, align 8
  %mul12 = fmul double %15, %17
  %add13 = fadd double %mul, %mul12
  store double %add13, double* %m0, align 8
  %18 = load double, double* %ix, align 8
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i64 2
  %r15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx14, i32 0, i32 0
  %20 = load double, double* %r15, align 8
  %mul16 = fmul double %18, %20
  %21 = load double, double* %x.addr, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i64 3
  %r18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx17, i32 0, i32 0
  %23 = load double, double* %r18, align 8
  %mul19 = fmul double %21, %23
  %add20 = fadd double %mul16, %mul19
  store double %add20, double* %m1, align 8
  %24 = load double, double* %iy, align 8
  %25 = load double, double* %m0, align 8
  %mul21 = fmul double %24, %25
  %26 = load double, double* %y.addr, align 8
  %27 = load double, double* %m1, align 8
  %mul22 = fmul double %26, %27
  %add23 = fadd double %mul21, %mul22
  %r24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 0
  store double %add23, double* %r24, align 8
  %28 = load double, double* %ix, align 8
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i64 0
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx25, i32 0, i32 1
  %30 = load double, double* %g, align 8
  %mul26 = fmul double %28, %30
  %31 = load double, double* %x.addr, align 8
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %32, i64 1
  %g28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx27, i32 0, i32 1
  %33 = load double, double* %g28, align 8
  %mul29 = fmul double %31, %33
  %add30 = fadd double %mul26, %mul29
  store double %add30, double* %m0, align 8
  %34 = load double, double* %ix, align 8
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i64 2
  %g32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx31, i32 0, i32 1
  %36 = load double, double* %g32, align 8
  %mul33 = fmul double %34, %36
  %37 = load double, double* %x.addr, align 8
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i64 3
  %g35 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx34, i32 0, i32 1
  %39 = load double, double* %g35, align 8
  %mul36 = fmul double %37, %39
  %add37 = fadd double %mul33, %mul36
  store double %add37, double* %m1, align 8
  %40 = load double, double* %iy, align 8
  %41 = load double, double* %m0, align 8
  %mul38 = fmul double %40, %41
  %42 = load double, double* %y.addr, align 8
  %43 = load double, double* %m1, align 8
  %mul39 = fmul double %42, %43
  %add40 = fadd double %mul38, %mul39
  %g41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 1
  store double %add40, double* %g41, align 8
  %44 = load double, double* %ix, align 8
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %45, i64 0
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx42, i32 0, i32 2
  %46 = load double, double* %b, align 8
  %mul43 = fmul double %44, %46
  %47 = load double, double* %x.addr, align 8
  %48 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %48, i64 1
  %b45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx44, i32 0, i32 2
  %49 = load double, double* %b45, align 8
  %mul46 = fmul double %47, %49
  %add47 = fadd double %mul43, %mul46
  store double %add47, double* %m0, align 8
  %50 = load double, double* %ix, align 8
  %51 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %51, i64 2
  %b49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx48, i32 0, i32 2
  %52 = load double, double* %b49, align 8
  %mul50 = fmul double %50, %52
  %53 = load double, double* %x.addr, align 8
  %54 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %54, i64 3
  %b52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx51, i32 0, i32 2
  %55 = load double, double* %b52, align 8
  %mul53 = fmul double %53, %55
  %add54 = fadd double %mul50, %mul53
  store double %add54, double* %m1, align 8
  %56 = load double, double* %iy, align 8
  %57 = load double, double* %m0, align 8
  %mul55 = fmul double %56, %57
  %58 = load double, double* %y.addr, align 8
  %59 = load double, double* %m1, align 8
  %mul56 = fmul double %58, %59
  %add57 = fadd double %mul55, %mul56
  %b58 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 2
  store double %add57, double* %b58, align 8
  %60 = bitcast %struct._GimpRGB* %agg.result to i8*
  %61 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.8, %if.else
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @gimp_bilinear_rgba(%struct._GimpRGB* noalias sret %agg.result, double %x, double %y, %struct._GimpRGB* %values) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %values.addr = alloca %struct._GimpRGB*, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %ix = alloca double, align 8
  %iy = alloca double, align 8
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %alpha = alloca double, align 8
  %v = alloca %struct._GimpRGB, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %values, %struct._GimpRGB** %values.addr, align 8
  %0 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_bilinear_rgba, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %2 = bitcast %struct._GimpRGB* %agg.result to i8*
  %3 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %4, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %5 = load double, double* %y.addr, align 8
  %call1 = call double @fmod(double %5, double 1.000000e+00) #3
  store double %call1, double* %y.addr, align 8
  %6 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %7 = load double, double* %x.addr, align 8
  %add = fadd double %7, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %8 = load double, double* %y.addr, align 8
  %cmp5 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load double, double* %y.addr, align 8
  %add7 = fadd double %9, 1.000000e+00
  store double %add7, double* %y.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %10 = load double, double* %x.addr, align 8
  %sub = fsub double 1.000000e+00, %10
  store double %sub, double* %ix, align 8
  %11 = load double, double* %y.addr, align 8
  %sub9 = fsub double 1.000000e+00, %11
  store double %sub9, double* %iy, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i64 0
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx, i32 0, i32 3
  %13 = load double, double* %a, align 8
  store double %13, double* %a0, align 8
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i64 1
  %a11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx10, i32 0, i32 3
  %15 = load double, double* %a11, align 8
  store double %15, double* %a1, align 8
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i64 2
  %a13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx12, i32 0, i32 3
  %17 = load double, double* %a13, align 8
  store double %17, double* %a2, align 8
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i64 3
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx14, i32 0, i32 3
  %19 = load double, double* %a15, align 8
  store double %19, double* %a3, align 8
  %20 = load double, double* %ix, align 8
  %21 = load double, double* %a0, align 8
  %mul = fmul double %20, %21
  %22 = load double, double* %x.addr, align 8
  %23 = load double, double* %a1, align 8
  %mul16 = fmul double %22, %23
  %add17 = fadd double %mul, %mul16
  store double %add17, double* %m0, align 8
  %24 = load double, double* %ix, align 8
  %25 = load double, double* %a2, align 8
  %mul18 = fmul double %24, %25
  %26 = load double, double* %x.addr, align 8
  %27 = load double, double* %a3, align 8
  %mul19 = fmul double %26, %27
  %add20 = fadd double %mul18, %mul19
  store double %add20, double* %m1, align 8
  %28 = load double, double* %iy, align 8
  %29 = load double, double* %m0, align 8
  %mul21 = fmul double %28, %29
  %30 = load double, double* %y.addr, align 8
  %31 = load double, double* %m1, align 8
  %mul22 = fmul double %30, %31
  %add23 = fadd double %mul21, %mul22
  %a24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 3
  store double %add23, double* %a24, align 8
  store double %add23, double* %alpha, align 8
  %32 = load double, double* %alpha, align 8
  %cmp25 = fcmp ogt double %32, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.92

if.then.26:                                       ; preds = %if.end.8
  %33 = load double, double* %ix, align 8
  %34 = load double, double* %a0, align 8
  %mul27 = fmul double %33, %34
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i64 0
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx28, i32 0, i32 0
  %36 = load double, double* %r, align 8
  %mul29 = fmul double %mul27, %36
  %37 = load double, double* %x.addr, align 8
  %38 = load double, double* %a1, align 8
  %mul30 = fmul double %37, %38
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i64 1
  %r32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx31, i32 0, i32 0
  %40 = load double, double* %r32, align 8
  %mul33 = fmul double %mul30, %40
  %add34 = fadd double %mul29, %mul33
  store double %add34, double* %m0, align 8
  %41 = load double, double* %ix, align 8
  %42 = load double, double* %a2, align 8
  %mul35 = fmul double %41, %42
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %43, i64 2
  %r37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx36, i32 0, i32 0
  %44 = load double, double* %r37, align 8
  %mul38 = fmul double %mul35, %44
  %45 = load double, double* %x.addr, align 8
  %46 = load double, double* %a3, align 8
  %mul39 = fmul double %45, %46
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %47, i64 3
  %r41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx40, i32 0, i32 0
  %48 = load double, double* %r41, align 8
  %mul42 = fmul double %mul39, %48
  %add43 = fadd double %mul38, %mul42
  store double %add43, double* %m1, align 8
  %49 = load double, double* %iy, align 8
  %50 = load double, double* %m0, align 8
  %mul44 = fmul double %49, %50
  %51 = load double, double* %y.addr, align 8
  %52 = load double, double* %m1, align 8
  %mul45 = fmul double %51, %52
  %add46 = fadd double %mul44, %mul45
  %53 = load double, double* %alpha, align 8
  %div = fdiv double %add46, %53
  %r47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 0
  store double %div, double* %r47, align 8
  %54 = load double, double* %ix, align 8
  %55 = load double, double* %a0, align 8
  %mul48 = fmul double %54, %55
  %56 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %56, i64 0
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx49, i32 0, i32 1
  %57 = load double, double* %g, align 8
  %mul50 = fmul double %mul48, %57
  %58 = load double, double* %x.addr, align 8
  %59 = load double, double* %a1, align 8
  %mul51 = fmul double %58, %59
  %60 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %60, i64 1
  %g53 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx52, i32 0, i32 1
  %61 = load double, double* %g53, align 8
  %mul54 = fmul double %mul51, %61
  %add55 = fadd double %mul50, %mul54
  store double %add55, double* %m0, align 8
  %62 = load double, double* %ix, align 8
  %63 = load double, double* %a2, align 8
  %mul56 = fmul double %62, %63
  %64 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %64, i64 2
  %g58 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx57, i32 0, i32 1
  %65 = load double, double* %g58, align 8
  %mul59 = fmul double %mul56, %65
  %66 = load double, double* %x.addr, align 8
  %67 = load double, double* %a3, align 8
  %mul60 = fmul double %66, %67
  %68 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %68, i64 3
  %g62 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx61, i32 0, i32 1
  %69 = load double, double* %g62, align 8
  %mul63 = fmul double %mul60, %69
  %add64 = fadd double %mul59, %mul63
  store double %add64, double* %m1, align 8
  %70 = load double, double* %iy, align 8
  %71 = load double, double* %m0, align 8
  %mul65 = fmul double %70, %71
  %72 = load double, double* %y.addr, align 8
  %73 = load double, double* %m1, align 8
  %mul66 = fmul double %72, %73
  %add67 = fadd double %mul65, %mul66
  %74 = load double, double* %alpha, align 8
  %div68 = fdiv double %add67, %74
  %g69 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 1
  store double %div68, double* %g69, align 8
  %75 = load double, double* %ix, align 8
  %76 = load double, double* %a0, align 8
  %mul70 = fmul double %75, %76
  %77 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %77, i64 0
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx71, i32 0, i32 2
  %78 = load double, double* %b, align 8
  %mul72 = fmul double %mul70, %78
  %79 = load double, double* %x.addr, align 8
  %80 = load double, double* %a1, align 8
  %mul73 = fmul double %79, %80
  %81 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %81, i64 1
  %b75 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx74, i32 0, i32 2
  %82 = load double, double* %b75, align 8
  %mul76 = fmul double %mul73, %82
  %add77 = fadd double %mul72, %mul76
  store double %add77, double* %m0, align 8
  %83 = load double, double* %ix, align 8
  %84 = load double, double* %a2, align 8
  %mul78 = fmul double %83, %84
  %85 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %85, i64 2
  %b80 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx79, i32 0, i32 2
  %86 = load double, double* %b80, align 8
  %mul81 = fmul double %mul78, %86
  %87 = load double, double* %x.addr, align 8
  %88 = load double, double* %a3, align 8
  %mul82 = fmul double %87, %88
  %89 = load %struct._GimpRGB*, %struct._GimpRGB** %values.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %89, i64 3
  %b84 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx83, i32 0, i32 2
  %90 = load double, double* %b84, align 8
  %mul85 = fmul double %mul82, %90
  %add86 = fadd double %mul81, %mul85
  store double %add86, double* %m1, align 8
  %91 = load double, double* %iy, align 8
  %92 = load double, double* %m0, align 8
  %mul87 = fmul double %91, %92
  %93 = load double, double* %y.addr, align 8
  %94 = load double, double* %m1, align 8
  %mul88 = fmul double %93, %94
  %add89 = fadd double %mul87, %mul88
  %95 = load double, double* %alpha, align 8
  %div90 = fdiv double %add89, %95
  %b91 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %v, i32 0, i32 2
  store double %div90, double* %b91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.26, %if.end.8
  %96 = bitcast %struct._GimpRGB* %agg.result to i8*
  %97 = bitcast %struct._GimpRGB* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.92, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_bilinear_pixels_8(i8* %dest, double %x, double %y, i32 %bpp, i32 %has_alpha, i8** %values) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %values.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ai = alloca i32, align 4
  %alpha0 = alloca double, align 8
  %alpha1 = alloca double, align 8
  %alpha2 = alloca double, align 8
  %alpha3 = alloca double, align 8
  %alpha = alloca double, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %m094 = alloca double, align 8
  %m1109 = alloca double, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i8** %values, i8*** %values.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %dest.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_bilinear_pixels_8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.134

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8**, i8*** %values.addr, align 8
  %cmp2 = icmp ne i8** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_bilinear_pixels_8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.134

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load double, double* %x.addr, align 8
  %call = call double @fmod(double %2, double 1.000000e+00) #3
  store double %call, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %call7 = call double @fmod(double %3, double 1.000000e+00) #3
  store double %call7, double* %y.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %cmp8 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.6
  %5 = load double, double* %x.addr, align 8
  %add = fadd double %5, 1.000000e+00
  store double %add, double* %x.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.end.6
  %6 = load double, double* %y.addr, align 8
  %cmp11 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %7 = load double, double* %y.addr, align 8
  %add13 = fadd double %7, 1.000000e+00
  store double %add13, double* %y.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %8 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.15, label %if.else.89

if.then.15:                                       ; preds = %if.end.14
  %9 = load i32, i32* %bpp.addr, align 4
  %sub = sub i32 %9, 1
  store i32 %sub, i32* %ai, align 4
  %10 = load i32, i32* %ai, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8**, i8*** %values.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx16, align 1
  %conv = uitofp i8 %13 to double
  store double %conv, double* %alpha0, align 8
  %14 = load i32, i32* %ai, align 4
  %idxprom17 = zext i32 %14 to i64
  %15 = load i8**, i8*** %values.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = uitofp i8 %17 to double
  store double %conv20, double* %alpha1, align 8
  %18 = load i32, i32* %ai, align 4
  %idxprom21 = zext i32 %18 to i64
  %19 = load i8**, i8*** %values.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = uitofp i8 %21 to double
  store double %conv24, double* %alpha2, align 8
  %22 = load i32, i32* %ai, align 4
  %idxprom25 = zext i32 %22 to i64
  %23 = load i8**, i8*** %values.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %23, i64 3
  %24 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom25
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = uitofp i8 %25 to double
  store double %conv28, double* %alpha3, align 8
  %26 = load double, double* %y.addr, align 8
  %sub29 = fsub double 1.000000e+00, %26
  %27 = load double, double* %x.addr, align 8
  %sub30 = fsub double 1.000000e+00, %27
  %28 = load double, double* %alpha0, align 8
  %mul = fmul double %sub30, %28
  %29 = load double, double* %x.addr, align 8
  %30 = load double, double* %alpha1, align 8
  %mul31 = fmul double %29, %30
  %add32 = fadd double %mul, %mul31
  %mul33 = fmul double %sub29, %add32
  %31 = load double, double* %y.addr, align 8
  %32 = load double, double* %x.addr, align 8
  %sub34 = fsub double 1.000000e+00, %32
  %33 = load double, double* %alpha2, align 8
  %mul35 = fmul double %sub34, %33
  %34 = load double, double* %x.addr, align 8
  %35 = load double, double* %alpha3, align 8
  %mul36 = fmul double %34, %35
  %add37 = fadd double %mul35, %mul36
  %mul38 = fmul double %31, %add37
  %add39 = fadd double %mul33, %mul38
  store double %add39, double* %alpha, align 8
  %36 = load double, double* %alpha, align 8
  %conv40 = fptoui double %36 to i8
  %37 = load i32, i32* %ai, align 4
  %idxprom41 = zext i32 %37 to i64
  %38 = load i8*, i8** %dest.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1
  %39 = load i32, i32* %ai, align 4
  %idxprom43 = zext i32 %39 to i64
  %40 = load i8*, i8** %dest.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 %idxprom43
  %41 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %41, 0
  br i1 %tobool45, label %if.then.46, label %if.end.88

if.then.46:                                       ; preds = %if.then.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.46
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %ai, align 4
  %cmp47 = icmp ult i32 %42, %43
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load double, double* %x.addr, align 8
  %sub49 = fsub double 1.000000e+00, %44
  %45 = load i32, i32* %i, align 4
  %idxprom50 = zext i32 %45 to i64
  %46 = load i8**, i8*** %values.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %46, i64 0
  %47 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %47, i64 %idxprom50
  %48 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %48 to i32
  %conv54 = sitofp i32 %conv53 to double
  %mul55 = fmul double %sub49, %conv54
  %49 = load double, double* %alpha0, align 8
  %mul56 = fmul double %mul55, %49
  %50 = load double, double* %x.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom57 = zext i32 %51 to i64
  %52 = load i8**, i8*** %values.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %52, i64 1
  %53 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %53, i64 %idxprom57
  %54 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %54 to i32
  %conv61 = sitofp i32 %conv60 to double
  %mul62 = fmul double %50, %conv61
  %55 = load double, double* %alpha1, align 8
  %mul63 = fmul double %mul62, %55
  %add64 = fadd double %mul56, %mul63
  store double %add64, double* %m0, align 8
  %56 = load double, double* %x.addr, align 8
  %sub65 = fsub double 1.000000e+00, %56
  %57 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %57 to i64
  %58 = load i8**, i8*** %values.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %58, i64 2
  %59 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %59, i64 %idxprom66
  %60 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %60 to i32
  %conv70 = sitofp i32 %conv69 to double
  %mul71 = fmul double %sub65, %conv70
  %61 = load double, double* %alpha2, align 8
  %mul72 = fmul double %mul71, %61
  %62 = load double, double* %x.addr, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom73 = zext i32 %63 to i64
  %64 = load i8**, i8*** %values.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %64, i64 3
  %65 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 %idxprom73
  %66 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %66 to i32
  %conv77 = sitofp i32 %conv76 to double
  %mul78 = fmul double %62, %conv77
  %67 = load double, double* %alpha3, align 8
  %mul79 = fmul double %mul78, %67
  %add80 = fadd double %mul72, %mul79
  store double %add80, double* %m1, align 8
  %68 = load double, double* %y.addr, align 8
  %sub81 = fsub double 1.000000e+00, %68
  %69 = load double, double* %m0, align 8
  %mul82 = fmul double %sub81, %69
  %70 = load double, double* %y.addr, align 8
  %71 = load double, double* %m1, align 8
  %mul83 = fmul double %70, %71
  %add84 = fadd double %mul82, %mul83
  %72 = load double, double* %alpha, align 8
  %div = fdiv double %add84, %72
  %conv85 = fptoui double %div to i8
  %73 = load i32, i32* %i, align 4
  %idxprom86 = zext i32 %73 to i64
  %74 = load i8*, i8** %dest.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %74, i64 %idxprom86
  store i8 %conv85, i8* %arrayidx87, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %inc = add i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.88

if.end.88:                                        ; preds = %for.end, %if.then.15
  br label %if.end.134

if.else.89:                                       ; preds = %if.end.14
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.131, %if.else.89
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %bpp.addr, align 4
  %cmp91 = icmp ult i32 %76, %77
  br i1 %cmp91, label %for.body.93, label %for.end.133

for.body.93:                                      ; preds = %for.cond.90
  %78 = load double, double* %x.addr, align 8
  %sub95 = fsub double 1.000000e+00, %78
  %79 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %79 to i64
  %80 = load i8**, i8*** %values.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %80, i64 0
  %81 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %81, i64 %idxprom96
  %82 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %82 to i32
  %conv100 = sitofp i32 %conv99 to double
  %mul101 = fmul double %sub95, %conv100
  %83 = load double, double* %x.addr, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom102 = zext i32 %84 to i64
  %85 = load i8**, i8*** %values.addr, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %85, i64 1
  %86 = load i8*, i8** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %86, i64 %idxprom102
  %87 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %87 to i32
  %conv106 = sitofp i32 %conv105 to double
  %mul107 = fmul double %83, %conv106
  %add108 = fadd double %mul101, %mul107
  store double %add108, double* %m094, align 8
  %88 = load double, double* %x.addr, align 8
  %sub110 = fsub double 1.000000e+00, %88
  %89 = load i32, i32* %i, align 4
  %idxprom111 = zext i32 %89 to i64
  %90 = load i8**, i8*** %values.addr, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %90, i64 2
  %91 = load i8*, i8** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %91, i64 %idxprom111
  %92 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %92 to i32
  %conv115 = sitofp i32 %conv114 to double
  %mul116 = fmul double %sub110, %conv115
  %93 = load double, double* %x.addr, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom117 = zext i32 %94 to i64
  %95 = load i8**, i8*** %values.addr, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %95, i64 3
  %96 = load i8*, i8** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %96, i64 %idxprom117
  %97 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %97 to i32
  %conv121 = sitofp i32 %conv120 to double
  %mul122 = fmul double %93, %conv121
  %add123 = fadd double %mul116, %mul122
  store double %add123, double* %m1109, align 8
  %98 = load double, double* %y.addr, align 8
  %sub124 = fsub double 1.000000e+00, %98
  %99 = load double, double* %m094, align 8
  %mul125 = fmul double %sub124, %99
  %100 = load double, double* %y.addr, align 8
  %101 = load double, double* %m1109, align 8
  %mul126 = fmul double %100, %101
  %add127 = fadd double %mul125, %mul126
  %conv128 = fptoui double %add127 to i8
  %102 = load i32, i32* %i, align 4
  %idxprom129 = zext i32 %102 to i64
  %103 = load i8*, i8** %dest.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %103, i64 %idxprom129
  store i8 %conv128, i8* %arrayidx130, align 1
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.93
  %104 = load i32, i32* %i, align 4
  %inc132 = add i32 %104, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.90

for.end.133:                                      ; preds = %for.cond.90
  br label %if.end.134

if.end.134:                                       ; preds = %if.else, %if.else.4, %for.end.133, %if.end.88
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
