; ModuleID = './MultiSource.Benchmarks.MallocBench/88.gs.gscoord.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque
%struct.gs_point_s = type { float, float }

; Function Attrs: nounwind uwtable
define i32 @gs_initmatrix(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %4 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %4, i32 0, i32 1
  %5 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %8 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  call void %5(%struct.gx_device_s* %6, %struct.gs_matrix_s* %8)
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 8
  %10 = load float, float* %tx, align 4
  %mul = fmul float %10, 4.096000e+03
  %conv = fptosi float %mul to i64
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 12
  store i64 %conv, i64* %tx_fixed, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 10
  %13 = load float, float* %ty, align 4
  %mul4 = fmul float %13, 4.096000e+03
  %conv5 = fptosi float %mul4 to i64
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 13
  store i64 %conv5, i64* %ty_fixed, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_defaultmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %4 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %4, i32 0, i32 1
  %5 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  call void %5(%struct.gx_device_s* %6, %struct.gs_matrix_s* %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %3 = bitcast %struct.gs_matrix_s* %0 to i8*
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 96, i32 8, i1 false)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setmatrix(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %3 = bitcast %struct.gs_matrix_s* %1 to i8*
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 96, i32 8, i1 false)
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 8
  %6 = load float, float* %tx, align 4
  %mul = fmul float %6, 4.096000e+03
  %conv = fptosi float %mul to i64
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 12
  store i64 %conv, i64* %tx_fixed, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 10
  %9 = load float, float* %ty, align 4
  %mul4 = fmul float %9, 4.096000e+03
  %conv5 = fptosi float %mul4 to i64
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 13
  store i64 %conv5, i64* %ty_fixed, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_translate(%struct.gs_state_s* %pgs, double %dx, double %dy) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  %0 = load double, double* %dx.addr, align 8
  %1 = load double, double* %dy.addr, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_distance_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %5 = load float, float* %x, align 4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 8
  %7 = load float, float* %tx, align 4
  %add = fadd float %7, %5
  store float %add, float* %tx, align 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %8 = load float, float* %y, align 4
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 10
  %10 = load float, float* %ty, align 4
  %add3 = fadd float %10, %8
  store float %add3, float* %ty, align 4
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %tx5 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 8
  %12 = load float, float* %tx5, align 4
  %mul = fmul float %12, 4.096000e+03
  %conv = fptosi float %mul to i64
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 12
  store i64 %conv, i64* %tx_fixed, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 2
  %ty8 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 10
  %15 = load float, float* %ty8, align 4
  %mul9 = fmul float %15, 4.096000e+03
  %conv10 = fptosi float %mul9 to i64
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 13
  store i64 %conv10, i64* %ty_fixed, align 8
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_scale(%struct.gs_state_s* %pgs, double %sx, double %sy) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  %0 = load double, double* %sx.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %2 = load float, float* %xx, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %conv, %0
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %xx, align 4
  %3 = load double, double* %sx.addr, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 2
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %5 = load float, float* %xy, align 4
  %conv3 = fpext float %5 to double
  %mul4 = fmul double %conv3, %3
  %conv5 = fptrunc double %mul4 to float
  store float %conv5, float* %xy, align 4
  %6 = load double, double* %sy.addr, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 4
  %8 = load float, float* %yx, align 4
  %conv7 = fpext float %8 to double
  %mul8 = fmul double %conv7, %6
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, float* %yx, align 4
  %9 = load double, double* %sy.addr, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm10, i32 0, i32 6
  %11 = load float, float* %yy, align 4
  %conv11 = fpext float %11 to double
  %mul12 = fmul double %conv11, %9
  %conv13 = fptrunc double %mul12 to float
  store float %conv13, float* %yy, align 4
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_rotate(%struct.gs_state_s* %pgs, double %ang) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ang.addr = alloca double, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %ang, double* %ang.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %2 = load double, double* %ang.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 2
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm1 to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* %1, double %2, %struct.gs_matrix_s* %4)
  store i32 %call, i32* %code, align 4
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

declare i32 @gs_matrix_rotate(%struct.gs_matrix_s*, double, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_concat(%struct.gs_state_s* %pgs, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 2
  %4 = bitcast %struct.gs_matrix_fixed_s* %ctm1 to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %0, %struct.gs_matrix_s* %2, %struct.gs_matrix_s* %4)
  store i32 %call, i32* %code, align 4
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 8
  %6 = load float, float* %tx, align 4
  %mul = fmul float %6, 4.096000e+03
  %conv = fptosi float %mul to i64
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 12
  store i64 %conv, i64* %tx_fixed, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 10
  %9 = load float, float* %ty, align 4
  %mul5 = fmul float %9, 4.096000e+03
  %conv6 = fptosi float %mul5 to i64
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 13
  store i64 %conv6, i64* %ty_fixed, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  %13 = load i32, i32* %code, align 4
  ret i32 %13
}

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_transform(%struct.gs_state_s* %pgs, double %x, double %y, %struct.gs_point_s* %pt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8
  %call = call i32 @gs_point_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4)
  ret i32 %call
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_dtransform(%struct.gs_state_s* %pgs, double %dx, double %dy, %struct.gs_point_s* %pt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8
  %0 = load double, double* %dx.addr, align 8
  %1 = load double, double* %dy.addr, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8
  %call = call i32 @gs_distance_transform(double %0, double %1, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_itransform(%struct.gs_state_s* %pgs, double %x, double %y, %struct.gs_point_s* %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 4
  %1 = load i32, i32* %inverse_valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm_inverse = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 3
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %3, %struct.gs_matrix_s* %ctm_inverse)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 4
  store i32 1, i32* %inverse_valid2, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load double, double* %x.addr, align 8
  %conv = fptrunc double %8 to float
  %conv4 = fpext float %conv to double
  %9 = load double, double* %y.addr, align 8
  %conv5 = fptrunc double %9 to float
  %conv6 = fpext float %conv5 to double
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm_inverse7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 3
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8
  %call8 = call i32 @gs_point_transform(double %conv4, double %conv6, %struct.gs_matrix_s* %ctm_inverse7, %struct.gs_point_s* %11)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_idtransform(%struct.gs_state_s* %pgs, double %dx, double %dy, %struct.gs_point_s* %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pt.addr = alloca %struct.gs_point_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store %struct.gs_point_s* %pt, %struct.gs_point_s** %pt.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 4
  %1 = load i32, i32* %inverse_valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %3 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm_inverse = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 3
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %3, %struct.gs_matrix_s* %ctm_inverse)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 4
  store i32 1, i32* %inverse_valid2, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load double, double* %dx.addr, align 8
  %conv = fptrunc double %8 to float
  %conv4 = fpext float %conv to double
  %9 = load double, double* %dy.addr, align 8
  %conv5 = fptrunc double %9 to float
  %conv6 = fpext float %conv5 to double
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm_inverse7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 3
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %pt.addr, align 8
  %call8 = call i32 @gs_distance_transform(double %conv4, double %conv6, %struct.gs_matrix_s* %ctm_inverse7, %struct.gs_point_s* %11)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_translate_to_fixed(%struct.gs_state_s* %pgs, i64 %px, i64 %py) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %px.addr = alloca i64, align 8
  %py.addr = alloca i64, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i64 %px, i64* %px.addr, align 8
  store i64 %py, i64* %py.addr, align 8
  %0 = load i64, i64* %px.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 12
  store i64 %0, i64* %tx_fixed, align 8
  %conv = sitofp i64 %0 to double
  %mul = fmul double %conv, 0x3F30000000000000
  %conv1 = fptrunc double %mul to float
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 8
  store float %conv1, float* %tx, align 4
  %3 = load i64, i64* %py.addr, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 13
  store i64 %3, i64* %ty_fixed, align 8
  %conv4 = sitofp i64 %3 to double
  %mul5 = fmul double %conv4, 0x3F30000000000000
  %conv6 = fptrunc double %mul5 to float
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 10
  store float %conv6, float* %ty, align 4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %inverse_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 4
  store i32 0, i32* %inverse_valid, align 4
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 18
  store i32 1, i32* %char_tm_valid, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
