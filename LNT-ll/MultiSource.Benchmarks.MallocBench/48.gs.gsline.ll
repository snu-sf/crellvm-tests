; ModuleID = './MultiSource.Benchmarks.MallocBench/48.gs.gsline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type { float, i32, i32, float, float, %struct.dash_params_s }
%struct.dash_params_s = type { float*, i32, float, i32, i32, float }
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque

@.str = private unnamed_addr constant [13 x i8] c"dash pattern\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_setlinewidth(%struct.gs_state_s* %pgs, double %width) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %width, double* %width.addr, align 8
  %0 = load double, double* %width.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %width.addr, align 8
  %div = fdiv double %1, 2.000000e+00
  %conv = fptrunc double %div to float
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %width1 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i32 0, i32 0
  store float %conv, float* %width1, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define float @gs_currentlinewidth(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %width = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 0
  %2 = load float, float* %width, align 4
  %mul = fmul float %2, 2.000000e+00
  ret float %mul
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinecap(%struct.gs_state_s* %pgs, i32 %cap) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %cap, i32* %cap.addr, align 4
  %0 = load i32, i32* %cap.addr, align 4
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 10
  %2 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %cap1 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %2, i32 0, i32 1
  store i32 %0, i32* %cap1, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentlinecap(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %cap = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 1
  %2 = load i32, i32* %cap, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_setlinejoin(%struct.gs_state_s* %pgs, i32 %join) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %join.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %join, i32* %join.addr, align 4
  %0 = load i32, i32* %join.addr, align 4
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 10
  %2 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %join1 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %2, i32 0, i32 2
  store i32 %0, i32* %join1, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentlinejoin(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %join = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 2
  %2 = load i32, i32* %join, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_setmiterlimit(%struct.gs_state_s* %pgs, double %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %limit.addr = alloca double, align 8
  %limit_sq = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %limit, double* %limit.addr, align 8
  %0 = load double, double* %limit.addr, align 8
  %cmp = fcmp olt double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %limit.addr, align 8
  %conv = fptrunc double %1 to float
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %miter_limit = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i32 0, i32 3
  store float %conv, float* %miter_limit, align 4
  %4 = load double, double* %limit.addr, align 8
  %5 = load double, double* %limit.addr, align 8
  %mul = fmul double %4, %5
  store double %mul, double* %limit_sq, align 8
  %6 = load double, double* %limit_sq, align 8
  %cmp1 = fcmp olt double %6, 2.000100e+00
  br i1 %cmp1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %7 = load double, double* %limit_sq, align 8
  %cmp3 = fcmp ogt double %7, 1.999900e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %8 = load double, double* %limit_sq, align 8
  %sub = fsub double %8, 1.000000e+00
  %call = call double @sqrt(double %sub) #4
  %mul5 = fmul double %call, 2.000000e+00
  %9 = load double, double* %limit_sq, align 8
  %sub6 = fsub double %9, 2.000000e+00
  %div = fdiv double %mul5, %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+06, %cond.true ], [ %div, %cond.false ]
  %conv7 = fptrunc double %cond to float
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 10
  %11 = load %struct.line_params_s*, %struct.line_params_s** %line_params8, align 8
  %miter_check = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %11, i32 0, i32 4
  store float %conv7, float* %miter_check, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define float @gs_currentmiterlimit(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %miter_limit = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 3
  %2 = load float, float* %miter_limit, align 4
  ret float %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdash(%struct.gs_state_s* %pgs, float* %pattern, i32 %length, double %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pattern.addr = alloca float*, align 8
  %length.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %n = alloca i32, align 4
  %dfrom = alloca float*, align 8
  %ink = alloca i8, align 1
  %index = alloca i32, align 4
  %pattern_length = alloca float, align 4
  %dist_left = alloca float, align 4
  %dash = alloca %struct.dash_params_s*, align 8
  %ppat = alloca float*, align 8
  %elt = alloca float, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store float* %pattern, float** %pattern.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store double %offset, double* %offset.addr, align 8
  %0 = load i32, i32* %length.addr, align 4
  store i32 %0, i32* %n, align 4
  %1 = load float*, float** %pattern.addr, align 8
  store float* %1, float** %dfrom, align 8
  store i8 1, i8* %ink, align 1
  store i32 0, i32* %index, align 4
  store float 0.000000e+00, float* %pattern_length, align 4
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %dash1 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i32 0, i32 5
  store %struct.dash_params_s* %dash1, %struct.dash_params_s** %dash, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %n, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load float*, float** %dfrom, align 8
  %incdec.ptr = getelementptr inbounds float, float* %5, i32 1
  store float* %incdec.ptr, float** %dfrom, align 8
  %6 = load float, float* %5, align 4
  store float %6, float* %elt, align 4
  %7 = load float, float* %elt, align 4
  %cmp = fcmp olt float %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load float, float* %elt, align 4
  %9 = load float, float* %pattern_length, align 4
  %add = fadd float %9, %8
  store float %add, float* %pattern_length, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %length.addr, align 4
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.end
  store float 0.000000e+00, float* %dist_left, align 4
  store float* null, float** %ppat, align 8
  br label %if.end.24

if.else:                                          ; preds = %while.end
  %11 = load float, float* %pattern_length, align 4
  %cmp4 = fcmp oeq float %11, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.else
  %12 = load double, double* %offset.addr, align 8
  %13 = load double, double* %offset.addr, align 8
  %14 = load float, float* %pattern_length, align 4
  %conv = fpext float %14 to double
  %div = fdiv double %13, %conv
  %call = call double @floor(double %div) #5
  %15 = load float, float* %pattern_length, align 4
  %conv7 = fpext float %15 to double
  %mul = fmul double %call, %conv7
  %sub = fsub double %12, %mul
  %conv8 = fptrunc double %sub to float
  store float %conv8, float* %dist_left, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.13, %if.end.6
  %16 = load i32, i32* %index, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load float*, float** %pattern.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %17, i64 %idxprom
  %18 = load float, float* %arrayidx, align 4
  %19 = load float, float* %dist_left, align 4
  %sub10 = fsub float %19, %18
  store float %sub10, float* %dist_left, align 4
  %cmp11 = fcmp oge float %sub10, 0.000000e+00
  br i1 %cmp11, label %while.body.13, label %while.end.16

while.body.13:                                    ; preds = %while.cond.9
  %20 = load i8, i8* %ink, align 1
  %tobool14 = icmp ne i8 %20, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  %conv15 = trunc i32 %lnot.ext to i8
  store i8 %conv15, i8* %ink, align 1
  %21 = load i32, i32* %index, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %index, align 4
  br label %while.cond.9

while.end.16:                                     ; preds = %while.cond.9
  %22 = load i32, i32* %length.addr, align 4
  %call17 = call i8* @gs_malloc(i32 %22, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %23 = bitcast i8* %call17 to float*
  store float* %23, float** %ppat, align 8
  %24 = load float*, float** %ppat, align 8
  %cmp18 = icmp eq float* %24, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end.16
  store i32 -25, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.end.16
  %25 = load float*, float** %ppat, align 8
  %26 = bitcast float* %25 to i8*
  %27 = load float*, float** %pattern.addr, align 8
  %28 = bitcast float* %27 to i8*
  %29 = load i32, i32* %length.addr, align 4
  %conv22 = zext i32 %29 to i64
  %mul23 = mul i64 %conv22, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 %mul23, i32 4, i1 false)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.then.3
  %30 = load float*, float** %ppat, align 8
  %31 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %pattern25 = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %31, i32 0, i32 0
  store float* %30, float** %pattern25, align 8
  %32 = load i32, i32* %length.addr, align 4
  %33 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %pattern_size = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %33, i32 0, i32 1
  store i32 %32, i32* %pattern_size, align 4
  %34 = load double, double* %offset.addr, align 8
  %conv26 = fptrunc double %34 to float
  %35 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %offset27 = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %35, i32 0, i32 2
  store float %conv26, float* %offset27, align 4
  %36 = load i8, i8* %ink, align 1
  %conv28 = sext i8 %36 to i32
  %37 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_ink_on = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %37, i32 0, i32 3
  store i32 %conv28, i32* %init_ink_on, align 4
  %38 = load i32, i32* %index, align 4
  %39 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_index = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %39, i32 0, i32 4
  store i32 %38, i32* %init_index, align 4
  %40 = load float, float* %dist_left, align 4
  %sub29 = fsub float -0.000000e+00, %40
  %41 = load %struct.dash_params_s*, %struct.dash_params_s** %dash, align 8
  %init_dist_left = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %41, i32 0, i32 5
  store float %sub29, float* %init_dist_left, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.20, %if.then.5, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare i8* @gs_malloc(i32, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @gs_currentdash_length(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %dash = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 5
  %pattern_size = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %dash, i32 0, i32 1
  %2 = load i32, i32* %pattern_size, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentdash_pattern(%struct.gs_state_s* %pgs, float* %pattern) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pattern.addr = alloca float*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store float* %pattern, float** %pattern.addr, align 8
  %0 = load float*, float** %pattern.addr, align 8
  %1 = bitcast float* %0 to i8*
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %dash = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i32 0, i32 5
  %pattern1 = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %dash, i32 0, i32 0
  %4 = load float*, float** %pattern1, align 8
  %5 = bitcast float* %4 to i8*
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 10
  %7 = load %struct.line_params_s*, %struct.line_params_s** %line_params2, align 8
  %dash3 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %7, i32 0, i32 5
  %pattern_size = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %dash3, i32 0, i32 1
  %8 = load i32, i32* %pattern_size, align 4
  %conv = zext i32 %8 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %5, i64 %mul, i32 4, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @gs_currentdash_offset(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 10
  %1 = load %struct.line_params_s*, %struct.line_params_s** %line_params, align 8
  %dash = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %1, i32 0, i32 5
  %offset = getelementptr inbounds %struct.dash_params_s, %struct.dash_params_s* %dash, i32 0, i32 2
  %2 = load float, float* %offset, align 4
  ret float %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
