; ModuleID = './app/base/lut-funcs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLut = type { i8**, i32 }
%struct.BrightnessContrastLutData = type { double, double }
%struct._GimpHistogram = type opaque
%struct.hist_lut_struct = type { %struct._GimpHistogram*, [5 x [256 x i32]] }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.brightness_contrast_lut_setup = private unnamed_addr constant [30 x i8] c"brightness_contrast_lut_setup\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lut != NULL\00", align 1
@__func__.posterize_lut_setup = private unnamed_addr constant [20 x i8] c"posterize_lut_setup\00", align 1
@__func__.equalize_lut_new = private unnamed_addr constant [17 x i8] c"equalize_lut_new\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"histogram != NULL\00", align 1
@__func__.invert_lut_setup = private unnamed_addr constant [17 x i8] c"invert_lut_setup\00", align 1
@__func__.add_lut_setup = private unnamed_addr constant [14 x i8] c"add_lut_setup\00", align 1
@__func__.intersect_lut_setup = private unnamed_addr constant [20 x i8] c"intersect_lut_setup\00", align 1
@__func__.threshold_lut_setup = private unnamed_addr constant [20 x i8] c"threshold_lut_setup\00", align 1
@__func__.equalize_lut_setup = private unnamed_addr constant [19 x i8] c"equalize_lut_setup\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hist != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @brightness_contrast_lut_setup(%struct._GimpLut* %lut, double %brightness, double %contrast, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %brightness.addr = alloca double, align 8
  %contrast.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  %data = alloca %struct.BrightnessContrastLutData, align 8
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store double %brightness, double* %brightness.addr, align 8
  store double %contrast, double* %contrast.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.brightness_contrast_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %brightness.addr, align 8
  %brightness1 = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %data, i32 0, i32 0
  store double %1, double* %brightness1, align 8
  %2 = load double, double* %contrast.addr, align 8
  %contrast2 = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %data, i32 0, i32 1
  store double %2, double* %contrast2, align 8
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %4 = bitcast %struct.BrightnessContrastLutData* %data to i8*
  %5 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup(%struct._GimpLut* %3, float (i8*, i32, i32, float)* bitcast (float (%struct.BrightnessContrastLutData*, i32, i32, float)* @brightness_contrast_lut_func to float (i8*, i32, i32, float)*), i8* %4, i32 %5)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_lut_setup(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal float @brightness_contrast_lut_func(%struct.BrightnessContrastLutData* %data, i32 %nchannels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %data.addr = alloca %struct.BrightnessContrastLutData*, align 8
  %nchannels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %slant = alloca double, align 8
  store %struct.BrightnessContrastLutData* %data, %struct.BrightnessContrastLutData** %data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nchannels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %nchannels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct.BrightnessContrastLutData*, %struct.BrightnessContrastLutData** %data.addr, align 8
  %brightness = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %5, i32 0, i32 0
  %6 = load double, double* %brightness, align 8
  %cmp3 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load float, float* %value.addr, align 4
  %conv = fpext float %7 to double
  %8 = load %struct.BrightnessContrastLutData*, %struct.BrightnessContrastLutData** %data.addr, align 8
  %brightness5 = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %8, i32 0, i32 0
  %9 = load double, double* %brightness5, align 8
  %add = fadd double 1.000000e+00, %9
  %mul = fmul double %conv, %add
  %conv6 = fptrunc double %mul to float
  store float %conv6, float* %value.addr, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %10 = load float, float* %value.addr, align 4
  %conv7 = fpext float %10 to double
  %11 = load float, float* %value.addr, align 4
  %conv8 = fpext float %11 to double
  %sub9 = fsub double 1.000000e+00, %conv8
  %12 = load %struct.BrightnessContrastLutData*, %struct.BrightnessContrastLutData** %data.addr, align 8
  %brightness10 = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %12, i32 0, i32 0
  %13 = load double, double* %brightness10, align 8
  %mul11 = fmul double %sub9, %13
  %add12 = fadd double %conv7, %mul11
  %conv13 = fptrunc double %add12 to float
  store float %conv13, float* %value.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.4
  %14 = load %struct.BrightnessContrastLutData*, %struct.BrightnessContrastLutData** %data.addr, align 8
  %contrast = getelementptr inbounds %struct.BrightnessContrastLutData, %struct.BrightnessContrastLutData* %14, i32 0, i32 1
  %15 = load double, double* %contrast, align 8
  %add15 = fadd double %15, 1.000000e+00
  %mul16 = fmul double %add15, 0x3FE921FB54442D18
  %call = call double @tan(double %mul16) #4
  store double %call, double* %slant, align 8
  %16 = load float, float* %value.addr, align 4
  %conv17 = fpext float %16 to double
  %sub18 = fsub double %conv17, 5.000000e-01
  %17 = load double, double* %slant, align 8
  %mul19 = fmul double %sub18, %17
  %add20 = fadd double %mul19, 5.000000e-01
  %conv21 = fptrunc double %add20 to float
  store float %conv21, float* %value.addr, align 4
  %18 = load float, float* %value.addr, align 4
  store float %18, float* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %19 = load float, float* %retval
  ret float %19
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @brightness_contrast_lut_new(double %brightness, double %contrast, i32 %n_channels) #0 {
entry:
  %brightness.addr = alloca double, align 8
  %contrast.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store double %brightness, double* %brightness.addr, align 8
  store double %contrast, double* %contrast.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load double, double* %brightness.addr, align 8
  %2 = load double, double* %contrast.addr, align 8
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @brightness_contrast_lut_setup(%struct._GimpLut* %0, double %1, double %2, i32 %3)
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %4
}

declare %struct._GimpLut* @gimp_lut_new() #1

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @invert_lut_new(i32 %n_channels) #0 {
entry:
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load i32, i32* %n_channels.addr, align 4
  call void @invert_lut_setup(%struct._GimpLut* %0, i32 %1)
  %2 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %2
}

; Function Attrs: nounwind uwtable
define internal void @invert_lut_setup(%struct._GimpLut* %lut, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %n_channels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.invert_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %2 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup_exact(%struct._GimpLut* %1, float (i8*, i32, i32, float)* @invert_lut_func, i8* null, i32 %2)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @add_lut_new(double %amount, i32 %n_channels) #0 {
entry:
  %amount.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store double %amount, double* %amount.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load double, double* %amount.addr, align 8
  %2 = load i32, i32* %n_channels.addr, align 4
  call void @add_lut_setup(%struct._GimpLut* %0, double %1, i32 %2)
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %3
}

; Function Attrs: nounwind uwtable
define internal void @add_lut_setup(%struct._GimpLut* %lut, double %amount, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %amount.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store double %amount, double* %amount.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.add_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %2 = bitcast double* %amount.addr to i8*
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup(%struct._GimpLut* %1, float (i8*, i32, i32, float)* bitcast (float (double*, i32, i32, float)* @add_lut_func to float (i8*, i32, i32, float)*), i8* %2, i32 %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @intersect_lut_new(double %value, i32 %n_channels) #0 {
entry:
  %value.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store double %value, double* %value.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load double, double* %value.addr, align 8
  %2 = load i32, i32* %n_channels.addr, align 4
  call void @intersect_lut_setup(%struct._GimpLut* %0, double %1, i32 %2)
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %3
}

; Function Attrs: nounwind uwtable
define internal void @intersect_lut_setup(%struct._GimpLut* %lut, double %value, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %value.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store double %value, double* %value.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.intersect_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %2 = bitcast double* %value.addr to i8*
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup_exact(%struct._GimpLut* %1, float (i8*, i32, i32, float)* bitcast (float (double*, i32, i32, float)* @intersect_lut_func to float (i8*, i32, i32, float)*), i8* %2, i32 %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @threshold_lut_new(double %value, i32 %n_channels) #0 {
entry:
  %value.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store double %value, double* %value.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load double, double* %value.addr, align 8
  %2 = load i32, i32* %n_channels.addr, align 4
  call void @threshold_lut_setup(%struct._GimpLut* %0, double %1, i32 %2)
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %3
}

; Function Attrs: nounwind uwtable
define internal void @threshold_lut_setup(%struct._GimpLut* %lut, double %value, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %value.addr = alloca double, align 8
  %n_channels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store double %value, double* %value.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.threshold_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %2 = bitcast double* %value.addr to i8*
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup_exact(%struct._GimpLut* %1, float (i8*, i32, i32, float)* bitcast (float (double*, i32, i32, float)* @threshold_lut_func to float (i8*, i32, i32, float)*), i8* %2, i32 %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @posterize_lut_setup(%struct._GimpLut* %lut, i32 %levels, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %levels.addr = alloca i32, align 4
  %n_channels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store i32 %levels, i32* %levels.addr, align 4
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.posterize_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %2 = bitcast i32* %levels.addr to i8*
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup_exact(%struct._GimpLut* %1, float (i8*, i32, i32, float)* bitcast (float (i32*, i32, i32, float)* @posterize_lut_func to float (i8*, i32, i32, float)*), i8* %2, i32 %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_lut_setup_exact(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal float @posterize_lut_func(i32* %ilevels, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %ilevels.addr = alloca i32*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %levels = alloca i32, align 4
  store i32* %ilevels, i32** %ilevels.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i32*, i32** %ilevels.addr, align 8
  %6 = load i32, i32* %5, align 4
  %cmp3 = icmp slt i32 %6, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 2, i32* %levels, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %7 = load i32*, i32** %ilevels.addr, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %levels, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %9 = load float, float* %value.addr, align 4
  %conv = fpext float %9 to double
  %10 = load i32, i32* %levels, align 4
  %conv6 = sitofp i32 %10 to double
  %sub7 = fsub double %conv6, 1.000000e+00
  %mul = fmul double %conv, %sub7
  %call = call double @rint(double %mul) #5
  %11 = load i32, i32* %levels, align 4
  %conv8 = sitofp i32 %11 to double
  %sub9 = fsub double %conv8, 1.000000e+00
  %div = fdiv double %call, %sub9
  %conv10 = fptrunc double %div to float
  store float %conv10, float* %value.addr, align 4
  %12 = load float, float* %value.addr, align 4
  store float %12, float* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %13 = load float, float* %retval
  ret float %13
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @posterize_lut_new(i32 %levels, i32 %n_channels) #0 {
entry:
  %levels.addr = alloca i32, align 4
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store i32 %levels, i32* %levels.addr, align 4
  store i32 %n_channels, i32* %n_channels.addr, align 4
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %1 = load i32, i32* %levels.addr, align 4
  %2 = load i32, i32* %n_channels.addr, align 4
  call void @posterize_lut_setup(%struct._GimpLut* %0, i32 %1, i32 %2)
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %3
}

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @equalize_lut_new(%struct._GimpHistogram* %histogram, i32 %n_channels) #0 {
entry:
  %retval = alloca %struct._GimpLut*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %n_channels.addr = alloca i32, align 4
  %lut = alloca %struct._GimpLut*, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.equalize_lut_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLut* null, %struct._GimpLut** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call, %struct._GimpLut** %lut, align 8
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %3 = load i32, i32* %n_channels.addr, align 4
  call void @equalize_lut_setup(%struct._GimpLut* %1, %struct._GimpHistogram* %2, i32 %3)
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  store %struct._GimpLut* %4, %struct._GimpLut** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load %struct._GimpLut*, %struct._GimpLut** %retval
  ret %struct._GimpLut* %5
}

; Function Attrs: nounwind uwtable
define internal void @equalize_lut_setup(%struct._GimpLut* %lut, %struct._GimpHistogram* %hist, i32 %n_channels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %hist.addr = alloca %struct._GimpHistogram*, align 8
  %n_channels.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %hlut = alloca %struct.hist_lut_struct, align 8
  %pixels = alloca double, align 8
  %sum = alloca double, align 8
  %histi = alloca double, align 8
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store %struct._GimpHistogram* %hist, %struct._GimpHistogram** %hist.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %cmp = icmp ne %struct._GimpLut* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.equalize_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist.addr, align 8
  %cmp2 = icmp ne %struct._GimpHistogram* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.equalize_lut_setup, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist.addr, align 8
  %call = call double @gimp_histogram_get_count(%struct._GimpHistogram* %2, i32 0, i32 0, i32 255)
  store double %call, double* %pixels, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %do.end.6
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %n_channels.addr, align 4
  %cmp7 = icmp slt i32 %3, %4
  br i1 %cmp7, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %5, 256
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %hist.addr, align 8
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %i, align 4
  %call11 = call double @gimp_histogram_get_channel(%struct._GimpHistogram* %6, i32 %7, i32 %8)
  store double %call11, double* %histi, align 8
  %9 = load double, double* %histi, align 8
  %10 = load double, double* %sum, align 8
  %add = fadd double %10, %9
  store double %add, double* %sum, align 8
  %11 = load double, double* %sum, align 8
  %mul = fmul double %11, 2.550000e+02
  %12 = load double, double* %pixels, align 8
  %div = fdiv double %mul, %12
  %call12 = call double @rint(double %div) #5
  %conv = fptosi double %call12 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %14 to i64
  %part = getelementptr inbounds %struct.hist_lut_struct, %struct.hist_lut_struct* %hlut, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x [256 x i32]], [5 x [256 x i32]]* %part, i32 0, i64 %idxprom13
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %16 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %k, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %17 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %18 = bitcast %struct.hist_lut_struct* %hlut to i8*
  %19 = load i32, i32* %n_channels.addr, align 4
  call void @gimp_lut_setup(%struct._GimpLut* %17, float (i8*, i32, i32, float)* bitcast (float (%struct.hist_lut_struct*, i32, i32, float)* @equalize_lut_func to float (i8*, i32, i32, float)*), i8* %18, i32 %19)
  br label %return

return:                                           ; preds = %for.end.17, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind uwtable
define internal float @invert_lut_func(i8* %unused, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %unused.addr = alloca i8*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load float, float* %value.addr, align 4
  %conv = fpext float %5 to double
  %sub3 = fsub double 1.000000e+00, %conv
  %conv4 = fptrunc double %sub3 to float
  store float %conv4, float* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load float, float* %retval
  ret float %6
}

; Function Attrs: nounwind uwtable
define internal float @add_lut_func(double* %amount, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %amount.addr = alloca double*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store double* %amount, double** %amount.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load float, float* %value.addr, align 4
  %conv = fpext float %5 to double
  %6 = load double*, double** %amount.addr, align 8
  %7 = load double, double* %6, align 8
  %add = fadd double %conv, %7
  %conv3 = fptrunc double %add to float
  store float %conv3, float* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load float, float* %retval
  ret float %8
}

; Function Attrs: nounwind uwtable
define internal float @intersect_lut_func(double* %min, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %min.addr = alloca double*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store double* %min, double** %min.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load float, float* %value.addr, align 4
  %conv = fpext float %5 to double
  %6 = load double*, double** %min.addr, align 8
  %7 = load double, double* %6, align 8
  %cmp3 = fcmp olt double %conv, %7
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %conv5 = fpext float %8 to double
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load double*, double** %min.addr, align 8
  %10 = load double, double* %9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv5, %cond.true ], [ %10, %cond.false ]
  %conv6 = fptrunc double %cond to float
  store float %conv6, float* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load float, float* %retval
  ret float %11
}

; Function Attrs: nounwind uwtable
define internal float @threshold_lut_func(double* %min, i32 %n_channels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %min.addr = alloca double*, align 8
  %n_channels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store double* %min, double** %min.addr, align 8
  store i32 %n_channels, i32* %n_channels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %n_channels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %n_channels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load float, float* %value.addr, align 4
  %conv = fpext float %5 to double
  %6 = load double*, double** %min.addr, align 8
  %7 = load double, double* %6, align 8
  %cmp3 = fcmp olt double %conv, %7
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store float 0.000000e+00, float* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store float 1.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load float, float* %retval
  ret float %8
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare double @gimp_histogram_get_count(%struct._GimpHistogram*, i32, i32, i32) #1

declare double @gimp_histogram_get_channel(%struct._GimpHistogram*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @equalize_lut_func(%struct.hist_lut_struct* %hlut, i32 %nchannels, i32 %channel, float %value) #0 {
entry:
  %retval = alloca float, align 4
  %hlut.addr = alloca %struct.hist_lut_struct*, align 8
  %nchannels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %j = alloca i32, align 4
  store %struct.hist_lut_struct* %hlut, %struct.hist_lut_struct** %hlut.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nchannels.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load i32, i32* %nchannels.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp eq i32 %2, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load float, float* %value.addr, align 4
  store float %4, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load float, float* %value.addr, align 4
  %conv = fpext float %5 to double
  %mul = fmul double %conv, 2.550000e+02
  %cmp3 = fcmp ogt double %mul, 2.550000e+02
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.13

cond.false:                                       ; preds = %if.end
  %6 = load float, float* %value.addr, align 4
  %conv5 = fpext float %6 to double
  %mul6 = fmul double %conv5, 2.550000e+02
  %cmp7 = fcmp olt double %mul6, 0.000000e+00
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %7 = load float, float* %value.addr, align 4
  %conv11 = fpext float %7 to double
  %mul12 = fmul double %conv11, 2.550000e+02
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi double [ 0.000000e+00, %cond.true.9 ], [ %mul12, %cond.false.10 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %call = call double @rint(double %cond14) #5
  %conv15 = fptosi double %call to i32
  store i32 %conv15, i32* %j, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %channel.addr, align 4
  %idxprom16 = sext i32 %9 to i64
  %10 = load %struct.hist_lut_struct*, %struct.hist_lut_struct** %hlut.addr, align 8
  %part = getelementptr inbounds %struct.hist_lut_struct, %struct.hist_lut_struct* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x [256 x i32]], [5 x [256 x i32]]* %part, i32 0, i64 %idxprom16
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx17, align 4
  %conv18 = sitofp i32 %11 to double
  %div = fdiv double %conv18, 2.550000e+02
  %conv19 = fptrunc double %div to float
  store float %conv19, float* %retval
  br label %return

return:                                           ; preds = %cond.end.13, %if.then
  %12 = load float, float* %retval
  ret float %12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
