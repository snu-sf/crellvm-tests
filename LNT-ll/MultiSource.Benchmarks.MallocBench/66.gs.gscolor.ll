; ModuleID = './MultiSource.Benchmarks.MallocBench/66.gs.gscolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.gs_screen_enum_s = type { float, float, %struct.ht_bit_s*, i32, i32, %struct.gs_matrix_s, i32, i32, %struct.gs_state_s* }
%struct.gs_point_s = type { float, float }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@gs_screen_enum_sizeof = global i32 136, align 4
@gs_color_sizeof = global i32 10, align 4
@.str = private unnamed_addr constant [17 x i8] c"halftone samples\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setgray(%struct.gs_state_s* %pgs, double %gray) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %gray.addr = alloca double, align 8
  %fgray = alloca float, align 4
  %code = alloca i32, align 4
  %pcolor = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %gray, double* %gray.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  store %struct.gs_color_s* %1, %struct.gs_color_s** %pcolor, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 19
  %3 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load double, double* %gray.addr, align 8
  %call = call i32 @check_unit(double %4, float* %fgray)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load float, float* %fgray, align 4
  %mul = fmul float 6.553500e+04, %6
  %conv = fptoui float %mul to i16
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %7, i32 0, i32 3
  store i16 %conv, i16* %luminance, align 2
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %luminance3 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i32 0, i32 3
  %9 = load i16, i16* %luminance3, align 2
  %10 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %10, i32 0, i32 2
  store i16 %9, i16* %blue, align 2
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 1
  store i16 %9, i16* %green, align 2
  %12 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %12, i32 0, i32 0
  store i16 %9, i16* %red, align 2
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 5
  store i8 1, i8* %luminance_set, align 1
  %14 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %is_gray = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %14, i32 0, i32 4
  store i8 1, i8* %is_gray, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @check_unit(double %fval, float* %pp) #0 {
entry:
  %fval.addr = alloca double, align 8
  %pp.addr = alloca float*, align 8
  store double %fval, double* %fval.addr, align 8
  store float* %pp, float** %pp.addr, align 8
  %0 = load double, double* %fval.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float*, float** %pp.addr, align 8
  store float 0.000000e+00, float* %1, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %2 = load double, double* %fval.addr, align 8
  %cmp1 = fcmp ogt double %2, 1.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load float*, float** %pp.addr, align 8
  store float 1.000000e+00, float* %3, align 4
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %4 = load double, double* %fval.addr, align 8
  %conv = fptrunc double %4 to float
  %5 = load float*, float** %pp.addr, align 8
  store float %conv, float* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @gs_currentgray(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %1, i32 0, i32 5
  %2 = load i8, i8* %luminance_set, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 13
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %color1, align 8
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 3
  %5 = load i16, i16* %luminance, align 2
  %conv2 = zext i16 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %color3, align 8
  %call = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* %7)
  %conv4 = zext i16 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = sitofp i32 %cond to float
  %div = fdiv float %conv5, 6.553500e+04
  ret float %div
}

declare zeroext i16 @gx_color_luminance(%struct.gs_color_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setgscolor(%struct.gs_state_s* %pgs, %struct.gs_color_s* %pcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 19
  %1 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 13
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %5 = bitcast %struct.gs_color_s* %3 to i8*
  %6 = bitcast %struct.gs_color_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 10, i32 2, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentgscolor(%struct.gs_state_s* %pgs, %struct.gs_color_s* %pcolor) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  %0 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 13
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %3 = bitcast %struct.gs_color_s* %0 to i8*
  %4 = bitcast %struct.gs_color_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 10, i32 2, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_sethsbcolor(%struct.gs_state_s* %pgs, double %h, double %s, double %b) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %params = alloca [3 x i16], align 2
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 19
  %1 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %h.addr, align 8
  %3 = load double, double* %s.addr, align 8
  %4 = load double, double* %b.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i32 0
  %call = call i32 @tri_param(double %2, double %3, double %4, i16* %arraydecay)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 1
  %9 = load i16, i16* %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 2
  %10 = load i16, i16* %arrayidx4, align 2
  call void @gx_color_from_hsb(%struct.gs_color_s* %7, i16 zeroext %8, i16 zeroext %9, i16 zeroext %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @tri_param(double %p1, double %p2, double %p3, i16* %pq3) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca double, align 8
  %p2.addr = alloca double, align 8
  %p3.addr = alloca double, align 8
  %pq3.addr = alloca i16*, align 8
  %code = alloca i32, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  store double %p1, double* %p1.addr, align 8
  store double %p2, double* %p2.addr, align 8
  store double %p3, double* %p3.addr, align 8
  store i16* %pq3, i16** %pq3.addr, align 8
  %0 = load double, double* %p1.addr, align 8
  %call = call i32 @check_unit(double %0, float* %f1)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %p2.addr, align 8
  %call1 = call i32 @check_unit(double %1, float* %f2)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load double, double* %p3.addr, align 8
  %call4 = call i32 @check_unit(double %2, float* %f3)
  store i32 %call4, i32* %code, align 4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %4 = load float, float* %f1, align 4
  %mul = fmul float %4, 6.553500e+04
  %conv = fptoui float %mul to i16
  %5 = load i16*, i16** %pq3.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %6 = load float, float* %f2, align 4
  %mul6 = fmul float %6, 6.553500e+04
  %conv7 = fptoui float %mul6 to i16
  %7 = load i16*, i16** %pq3.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %conv7, i16* %arrayidx8, align 2
  %8 = load float, float* %f3, align 4
  %mul9 = fmul float %8, 6.553500e+04
  %conv10 = fptoui float %mul9 to i16
  %9 = load i16*, i16** %pq3.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %conv10, i16* %arrayidx11, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @gx_color_from_hsb(%struct.gs_color_s*, i16 zeroext, i16 zeroext, i16 zeroext) #1

; Function Attrs: nounwind uwtable
define i32 @gs_currenthsbcolor(%struct.gs_state_s* %pgs, float* %pr3) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr3.addr = alloca float*, align 8
  %hsb = alloca [3 x i16], align 2
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store float* %pr3, float** %pr3.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %hsb, i32 0, i32 0
  call void @gx_color_to_hsb(%struct.gs_color_s* %1, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %hsb, i32 0, i64 0
  %2 = load i16, i16* %arrayidx, align 2
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %hsb, i32 0, i64 1
  %3 = load i16, i16* %arrayidx1, align 2
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %hsb, i32 0, i64 2
  %4 = load i16, i16* %arrayidx2, align 2
  %5 = load float*, float** %pr3.addr, align 8
  call void @tri_return(i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, float* %5)
  ret i32 0
}

declare void @gx_color_to_hsb(%struct.gs_color_s*, i16*) #1

; Function Attrs: nounwind uwtable
define void @tri_return(i16 zeroext %p1, i16 zeroext %p2, i16 zeroext %p3, float* %pr3) #0 {
entry:
  %p1.addr = alloca i16, align 2
  %p2.addr = alloca i16, align 2
  %p3.addr = alloca i16, align 2
  %pr3.addr = alloca float*, align 8
  store i16 %p1, i16* %p1.addr, align 2
  store i16 %p2, i16* %p2.addr, align 2
  store i16 %p3, i16* %p3.addr, align 2
  store float* %pr3, float** %pr3.addr, align 8
  %0 = load i16, i16* %p1.addr, align 2
  %conv = zext i16 %0 to i32
  %conv1 = sitofp i32 %conv to float
  %div = fdiv float %conv1, 6.553500e+04
  %1 = load float*, float** %pr3.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  store float %div, float* %arrayidx, align 4
  %2 = load i16, i16* %p2.addr, align 2
  %conv2 = zext i16 %2 to i32
  %conv3 = sitofp i32 %conv2 to float
  %div4 = fdiv float %conv3, 6.553500e+04
  %3 = load float*, float** %pr3.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %3, i64 1
  store float %div4, float* %arrayidx5, align 4
  %4 = load i16, i16* %p3.addr, align 2
  %conv6 = zext i16 %4 to i32
  %conv7 = sitofp i32 %conv6 to float
  %div8 = fdiv float %conv7, 6.553500e+04
  %5 = load float*, float** %pr3.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %5, i64 2
  store float %div8, float* %arrayidx9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setrgbcolor(%struct.gs_state_s* %pgs, double %r, double %g, double %b) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %r.addr = alloca double, align 8
  %g.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %params = alloca [3 x i16], align 2
  %code = alloca i32, align 4
  %pcolor = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %g, double* %g.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 19
  %1 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %r.addr, align 8
  %3 = load double, double* %g.addr, align 8
  %4 = load double, double* %b.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i32 0
  %call = call i32 @tri_param(double %2, double %3, double %4, i16* %arraydecay)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  store %struct.gs_color_s* %7, %struct.gs_color_s** %pcolor, align 8
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  %9 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %9, i32 0, i32 0
  store i16 %8, i16* %red, align 2
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 1
  %10 = load i16, i16* %arrayidx3, align 2
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 1
  store i16 %10, i16* %green, align 2
  %arrayidx4 = getelementptr inbounds [3 x i16], [3 x i16]* %params, i32 0, i64 2
  %12 = load i16, i16* %arrayidx4, align 2
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 2
  store i16 %12, i16* %blue, align 2
  %14 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  call void @gx_color_from_rgb(%struct.gs_color_s* %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gx_color_from_rgb(%struct.gs_color_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_currentrgbcolor(%struct.gs_state_s* %pgs, float* %pr3) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pr3.addr = alloca float*, align 8
  %pcolor = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store float* %pr3, float** %pr3.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  store %struct.gs_color_s* %1, %struct.gs_color_s** %pcolor, align 8
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 0
  %3 = load i16, i16* %red, align 2
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 1
  %5 = load i16, i16* %green, align 2
  %6 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %6, i32 0, i32 2
  %7 = load i16, i16* %blue, align 2
  %8 = load float*, float** %pr3.addr, align 8
  call void @tri_return(i16 zeroext %3, i16 zeroext %5, i16 zeroext %7, float* %8)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_colorrgb(%struct.gs_color_s* %pcolor, float* %pr3) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  %pr3.addr = alloca float*, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  store float* %pr3, float** %pr3.addr, align 8
  %0 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i32 0, i32 0
  %1 = load i16, i16* %red, align 2
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 1
  %3 = load i16, i16* %green, align 2
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 2
  %5 = load i16, i16* %blue, align 2
  %6 = load float*, float** %pr3.addr, align 8
  call void @tri_return(i16 zeroext %1, i16 zeroext %3, i16 zeroext %5, float* %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setscreen(%struct.gs_state_s* %pgs, double %freq, double %angle, float (double, double)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %freq.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %proc.addr = alloca float (double, double)*, align 8
  %senum = alloca %struct.gs_screen_enum_s, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %freq, double* %freq.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store float (double, double)* %proc, float (double, double)** %proc.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load double, double* %freq.addr, align 8
  %2 = load double, double* %angle.addr, align 8
  %call = call i32 @gs_screen_init(%struct.gs_screen_enum_s* %senum, %struct.gs_state_s* %0, double %1, double %2)
  store i32 %call, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %call1 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %senum, %struct.gs_point_s* %pt)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load float (double, double)*, float (double, double)** %proc.addr, align 8
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %6 = load float, float* %x, align 4
  %conv = fpext float %6 to double
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %7 = load float, float* %y, align 4
  %conv3 = fpext float %7 to double
  %call4 = call float %5(double %conv, double %conv3)
  %conv5 = fpext float %call4 to double
  %call6 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* %senum, double %conv5)
  store i32 %call6, i32* %code, align 4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %code, align 4
  %cmp11 = icmp slt i32 %9, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.14:                                        ; preds = %while.end
  %11 = load float (double, double)*, float (double, double)** %proc.addr, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ht_proc = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 12
  store float (double, double)* %11, float (double, double)** %ht_proc, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_init(%struct.gs_screen_enum_s* %penum, %struct.gs_state_s* %pgs, double %freq, double %angle) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %freq.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %cwidth = alloca i32, align 4
  %cheight = alloca i32, align 4
  %code = alloca i32, align 4
  %order = alloca %struct.ht_bit_s*, align 8
  %cell_size = alloca float, align 4
  %pcwh = alloca %struct.gs_point_s, align 4
  %imat = alloca %struct.gs_matrix_s, align 8
  %dev_w = alloca i32, align 4
  %dev_h = alloca i32, align 4
  %xscale = alloca float, align 4
  %yscale = alloca float, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %freq, double* %freq.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load double, double* %freq.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %freq.addr, align 8
  %div = fdiv double 7.200000e+01, %1
  %conv = fptrunc double %div to float
  store float %conv, float* %cell_size, align 4
  %2 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 96, i32 8, i1 false)
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %3)
  call void @gs_deviceparams(%struct.gx_device_s* %call, %struct.gs_matrix_s* %imat, i32* %dev_w, i32* %dev_h)
  %4 = load float, float* %cell_size, align 4
  %conv1 = fpext float %4 to double
  %5 = load float, float* %cell_size, align 4
  %conv2 = fpext float %5 to double
  %call3 = call i32 @gs_distance_transform(double %conv1, double %conv2, %struct.gs_matrix_s* %imat, %struct.gs_point_s* %pcwh)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 0
  %7 = load float, float* %x, align 4
  %cmp8 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 0
  %8 = load float, float* %x10, align 4
  %conv11 = fptosi float %8 to i32
  %sub = sub nsw i32 0, %conv11
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 0
  %9 = load float, float* %x12, align 4
  %conv13 = fptosi float %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv13, %cond.false ]
  store i32 %cond, i32* %cwidth, align 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 1
  %10 = load float, float* %y, align 4
  %cmp14 = fcmp olt float %10, 0.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %cond.end
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 1
  %11 = load float, float* %y17, align 4
  %conv18 = fptosi float %11 to i32
  %sub19 = sub nsw i32 0, %conv18
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pcwh, i32 0, i32 1
  %12 = load float, float* %y21, align 4
  %conv22 = fptosi float %12 to i32
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.16
  %cond24 = phi i32 [ %sub19, %cond.true.16 ], [ %conv22, %cond.false.20 ]
  store i32 %cond24, i32* %cheight, align 4
  %13 = load i32, i32* %cwidth, align 4
  %cmp25 = icmp eq i32 %13, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end.23
  store i32 1, i32* %cwidth, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %cond.end.23
  %14 = load i32, i32* %cheight, align 4
  %cmp29 = icmp eq i32 %14, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 1, i32* %cheight, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %15 = load i32, i32* %cwidth, align 4
  %16 = load i32, i32* %cheight, align 4
  %div33 = sdiv i32 65535, %16
  %cmp34 = icmp sgt i32 %15, %div33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  %17 = load i32, i32* %cwidth, align 4
  %18 = load i32, i32* %cheight, align 4
  %mul = mul nsw i32 %17, %18
  %call38 = call i8* @gs_malloc(i32 %mul, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %19 = bitcast i8* %call38 to %struct.ht_bit_s*
  store %struct.ht_bit_s* %19, %struct.ht_bit_s** %order, align 8
  %20 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %cmp39 = icmp eq %struct.ht_bit_s* %20, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  store i32 -25, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  %21 = load double, double* %freq.addr, align 8
  %conv43 = fptrunc double %21 to float
  %22 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %freq44 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %22, i32 0, i32 0
  store float %conv43, float* %freq44, align 4
  %23 = load double, double* %angle.addr, align 8
  %conv45 = fptrunc double %23 to float
  %24 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %angle46 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %24, i32 0, i32 1
  store float %conv45, float* %angle46, align 4
  %25 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %26 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %order47 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %26, i32 0, i32 2
  store %struct.ht_bit_s* %25, %struct.ht_bit_s** %order47, align 8
  %27 = load i32, i32* %cwidth, align 4
  %28 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %28, i32 0, i32 3
  store i32 %27, i32* %width, align 4
  %29 = load i32, i32* %cheight, align 4
  %30 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %height = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %30, i32 0, i32 4
  store i32 %29, i32* %height, align 4
  %31 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %y48 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %31, i32 0, i32 7
  store i32 0, i32* %y48, align 4
  %32 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %x49 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %32, i32 0, i32 6
  store i32 0, i32* %x49, align 4
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %34 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %pgs50 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %34, i32 0, i32 8
  store %struct.gs_state_s* %33, %struct.gs_state_s** %pgs50, align 8
  %35 = load i32, i32* %cwidth, align 4
  %conv51 = sitofp i32 %35 to double
  %div52 = fdiv double 2.000000e+00, %conv51
  %conv53 = fptrunc double %div52 to float
  store float %conv53, float* %xscale, align 4
  %36 = load i32, i32* %cheight, align 4
  %conv54 = sitofp i32 %36 to double
  %div55 = fdiv double 2.000000e+00, %conv54
  %conv56 = fptrunc double %div55 to float
  store float %conv56, float* %yscale, align 4
  call void @gs_make_identity(%struct.gs_matrix_s* %mat)
  %37 = load float, float* %xscale, align 4
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %37, float* %xx, align 4
  %38 = load float, float* %yscale, align 4
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 6
  store float %38, float* %yy, align 4
  %39 = load float, float* %xscale, align 4
  %conv57 = fpext float %39 to double
  %mul58 = fmul double %conv57, 5.000000e-01
  %sub59 = fsub double %mul58, 1.000000e+00
  %conv60 = fptrunc double %sub59 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 8
  store float %conv60, float* %tx, align 4
  %40 = load float, float* %yscale, align 4
  %conv61 = fpext float %40 to double
  %mul62 = fmul double %conv61, 5.000000e-01
  %sub63 = fsub double %mul62, 1.000000e+00
  %conv64 = fptrunc double %sub63 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 10
  store float %conv64, float* %ty, align 4
  %41 = load double, double* %angle.addr, align 8
  %sub65 = fsub double -0.000000e+00, %41
  %42 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %mat66 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %42, i32 0, i32 5
  %call67 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* %mat, double %sub65, %struct.gs_matrix_s* %mat66)
  store i32 %call67, i32* %code, align 4
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.42
  %43 = load i32, i32* %code, align 4
  store i32 %43, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.70, %if.then.41, %if.then.36, %if.then.6, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %penum, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8
  %0 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %y = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i32 0, i32 7
  %1 = load i32, i32* %y, align 4
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %height = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %2, i32 0, i32 4
  %3 = load i32, i32* %height, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %call = call i32 @gx_screen_finish(%struct.gs_screen_enum_s* %4)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %x = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %5, i32 0, i32 6
  %6 = load i32, i32* %x, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %y1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %7, i32 0, i32 7
  %8 = load i32, i32* %y1, align 4
  %conv2 = sitofp i32 %8 to double
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %mat = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 5
  %call3 = call i32 @gs_point_transform(double %conv, double %conv2, %struct.gs_matrix_s* %mat, %struct.gs_point_s* %pt)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %11 = load float, float* %x8, align 4
  %conv9 = fpext float %11 to double
  %cmp10 = fcmp olt double %conv9, -1.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.7
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %12 = load float, float* %x13, align 4
  %conv14 = fpext float %12 to double
  %add = fadd double %conv14, 2.000000e+00
  %conv15 = fptrunc double %add to float
  store float %conv15, float* %x13, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.7
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %13 = load float, float* %x16, align 4
  %conv17 = fpext float %13 to double
  %cmp18 = fcmp ogt double %conv17, 1.000000e+00
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.else
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %14 = load float, float* %x21, align 4
  %conv22 = fpext float %14 to double
  %sub = fsub double %conv22, 2.000000e+00
  %conv23 = fptrunc double %sub to float
  store float %conv23, float* %x21, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.12
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %15 = load float, float* %y26, align 4
  %conv27 = fpext float %15 to double
  %cmp28 = fcmp olt double %conv27, -1.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %if.end.25
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %16 = load float, float* %y31, align 4
  %conv32 = fpext float %16 to double
  %add33 = fadd double %conv32, 2.000000e+00
  %conv34 = fptrunc double %add33 to float
  store float %conv34, float* %y31, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %if.end.25
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %17 = load float, float* %y36, align 4
  %conv37 = fpext float %17 to double
  %cmp38 = fcmp ogt double %conv37, 1.000000e+00
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.else.35
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %18 = load float, float* %y41, align 4
  %conv42 = fpext float %18 to double
  %sub43 = fsub double %conv42, 2.000000e+00
  %conv44 = fptrunc double %sub43 to float
  store float %conv44, float* %y41, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.else.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.30
  %19 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %20 = bitcast %struct.gs_point_s* %19 to i8*
  %21 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @gs_screen_next(%struct.gs_screen_enum_s* %penum, double %value) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %value.addr = alloca double, align 8
  %sample = alloca i16, align 2
  %order = alloca %struct.ht_bit_s*, align 8
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %order1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i32 0, i32 2
  %1 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order1, align 8
  store %struct.ht_bit_s* %1, %struct.ht_bit_s** %order, align 8
  %2 = load double, double* %value.addr, align 8
  %cmp = fcmp olt double %2, -1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load double, double* %value.addr, align 8
  %cmp2 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %value.addr, align 8
  %mul = fmul double %4, 3.276700e+04
  %conv = fptoui double %mul to i16
  %conv3 = zext i16 %conv to i32
  %add = add nsw i32 %conv3, 32767
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %sample, align 2
  %5 = load i16, i16* %sample, align 2
  %6 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %y = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %6, i32 0, i32 7
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 3
  %9 = load i32, i32* %width, align 4
  %mul5 = mul nsw i32 %7, %9
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %x = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %10, i32 0, i32 6
  %11 = load i32, i32* %x, align 4
  %add6 = add nsw i32 %mul5, %11
  %idxprom = sext i32 %add6 to i64
  %12 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %12, i64 %idxprom
  %mask = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx, i32 0, i32 1
  store i16 %5, i16* %mask, align 2
  %13 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %x7 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %13, i32 0, i32 6
  %14 = load i32, i32* %x7, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x7, align 4
  %15 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width8 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %15, i32 0, i32 3
  %16 = load i32, i32* %width8, align 4
  %cmp9 = icmp sge i32 %inc, %16
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end
  %17 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %x12 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %17, i32 0, i32 6
  store i32 0, i32* %x12, align 4
  %18 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %y13 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %18, i32 0, i32 7
  %19 = load i32, i32* %y13, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %y13, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentscreen(%struct.gs_state_s* %pgs, float* %pfreq, float* %pangle, float (double, double)** %pproc) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfreq.addr = alloca float*, align 8
  %pangle.addr = alloca float*, align 8
  %pproc.addr = alloca float (double, double)**, align 8
  %pht = alloca %struct.halftone_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store float* %pfreq, float** %pfreq.addr, align 8
  store float* %pangle, float** %pangle.addr, align 8
  store float (double, double)** %pproc, float (double, double)*** %pproc.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 11
  %1 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  store %struct.halftone_s* %1, %struct.halftone_s** %pht, align 8
  %2 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %frequency = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %2, i32 0, i32 0
  %3 = load float, float* %frequency, align 4
  %4 = load float*, float** %pfreq.addr, align 8
  store float %3, float* %4, align 4
  %5 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %angle = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %5, i32 0, i32 1
  %6 = load float, float* %angle, align 4
  %7 = load float*, float** %pangle.addr, align 8
  store float %6, float* %7, align 4
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ht_proc = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 12
  %9 = load float (double, double)*, float (double, double)** %ht_proc, align 8
  %10 = load float (double, double)**, float (double, double)*** %pproc.addr, align 8
  store float (double, double)* %9, float (double, double)** %10, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @gs_deviceparams(%struct.gx_device_s*, %struct.gs_matrix_s*, i32*, i32*) #1

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #1

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

declare i8* @gs_malloc(i32, i32, i8*) #1

declare void @gs_make_identity(%struct.gs_matrix_s*) #1

declare i32 @gs_matrix_rotate(%struct.gs_matrix_s*, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_screen_finish(%struct.gs_screen_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_screen_enum_s*, align 8
  %order = alloca %struct.ht_bit_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %pht = alloca %struct.halftone_s*, align 8
  store %struct.gs_screen_enum_s* %penum, %struct.gs_screen_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %order1 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i32 0, i32 2
  %1 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order1, align 8
  store %struct.ht_bit_s* %1, %struct.ht_bit_s** %order, align 8
  %2 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %2, i32 0, i32 3
  %3 = load i32, i32* %width, align 4
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %height = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %4, i32 0, i32 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %3, %5
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = trunc i32 %8 to i16
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %10, i64 %idxprom
  %offset = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx, i32 0, i32 0
  store i16 %conv, i16* %offset, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %13 = load i32, i32* %size, align 4
  call void @gx_sort_ht_order(%struct.ht_bit_s* %12, i32 %13)
  %14 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %order2 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %14, i32 0, i32 2
  %15 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order2, align 8
  %16 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width3 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %16, i32 0, i32 3
  %17 = load i32, i32* %width3, align 4
  %18 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %height4 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %18, i32 0, i32 4
  %19 = load i32, i32* %height4, align 4
  %call = call i32 (%struct.ht_bit_s*, i32, i32, ...) bitcast (i32 (...)* @gx_ht_construct_order to i32 (%struct.ht_bit_s*, i32, i32, ...)*)(%struct.ht_bit_s* %15, i32 %17, i32 %19)
  store i32 %call, i32* %code, align 4
  %20 = load i32, i32* %code, align 4
  %cmp5 = icmp slt i32 %20, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %22 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %pgs = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %22, i32 0, i32 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 11
  %24 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  store %struct.halftone_s* %24, %struct.halftone_s** %pht, align 8
  %25 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %freq = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %25, i32 0, i32 0
  %26 = load float, float* %freq, align 4
  %27 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %frequency = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %27, i32 0, i32 0
  store float %26, float* %frequency, align 4
  %28 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %angle = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %28, i32 0, i32 1
  %29 = load float, float* %angle, align 4
  %30 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %angle7 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %30, i32 0, i32 1
  store float %29, float* %angle7, align 4
  %31 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %width8 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %31, i32 0, i32 3
  %32 = load i32, i32* %width8, align 4
  %33 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %width9 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %33, i32 0, i32 2
  store i32 %32, i32* %width9, align 4
  %34 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %height10 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %34, i32 0, i32 4
  %35 = load i32, i32* %height10, align 4
  %36 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %height11 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %36, i32 0, i32 3
  store i32 %35, i32* %height11, align 4
  %37 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum.addr, align 8
  %order12 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %37, i32 0, i32 2
  %38 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order12, align 8
  %39 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %order13 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %39, i32 0, i32 4
  store %struct.ht_bit_s* %38, %struct.ht_bit_s** %order13, align 8
  %40 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %width14 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %40, i32 0, i32 2
  %41 = load i32, i32* %width14, align 4
  %42 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %height15 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %42, i32 0, i32 3
  %43 = load i32, i32* %height15, align 4
  %mul16 = mul nsw i32 %41, %43
  %44 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %order_size = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %44, i32 0, i32 5
  store i32 %mul16, i32* %order_size, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

declare void @gx_sort_ht_order(%struct.ht_bit_s*, i32) #1

declare i32 @gx_ht_construct_order(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
