; ModuleID = './gsmatrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_sincos_s = type { double, double, i32 }
%struct.gs_matrix_double_s = type { double, double, double, double, double, double }
%struct.gs_point_s = type { double, double }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@gs_identity_matrix = internal constant %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4

; Function Attrs: nounwind uwtable
define void @gs_make_identity(%struct.gs_matrix_s* %pmat) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 24, i32 4, i1 false), !tbaa.struct !5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_make_translation(double %dx, double %dy, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store double %dx, double* %dx.addr, align 8, !tbaa !8
  store double %dy, double* %dy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 24, i32 4, i1 false), !tbaa.struct !5
  %2 = load double, double* %dx.addr, align 8, !tbaa !8
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 4
  store float %conv, float* %tx, align 4, !tbaa !10
  %4 = load double, double* %dy.addr, align 8, !tbaa !8
  %conv1 = fptrunc double %4 to float
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 5
  store float %conv1, float* %ty, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_scaling(double %sx, double %sy, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store double %sx, double* %sx.addr, align 8, !tbaa !8
  store double %sy, double* %sy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 24, i32 4, i1 false), !tbaa.struct !5
  %2 = load double, double* %sx.addr, align 8, !tbaa !8
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 0
  store float %conv, float* %xx, align 4, !tbaa !13
  %4 = load double, double* %sy.addr, align 8, !tbaa !8
  %conv1 = fptrunc double %4 to float
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 3
  store float %conv1, float* %yy, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_make_rotation(double %ang, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %ang.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %sincos = alloca %struct.gs_sincos_s, align 8
  store double %ang, double* %ang.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_sincos_s* %sincos to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load double, double* %ang.addr, align 8, !tbaa !8
  call void @gs_sincos_degrees(double %1, %struct.gs_sincos_s* %sincos) #5
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 1
  %2 = load double, double* %cos, align 8, !tbaa !15
  %conv = fptrunc double %2 to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 0
  store float %conv, float* %xx, align 4, !tbaa !13
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 3
  store float %conv, float* %yy, align 4, !tbaa !14
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %5 = load double, double* %sin, align 8, !tbaa !18
  %conv1 = fptrunc double %5 to float
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  store float %conv1, float* %xy, align 4, !tbaa !19
  %sin2 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %7 = load double, double* %sin2, align 8, !tbaa !18
  %sub = fsub double -0.000000e+00, %7
  %conv3 = fptrunc double %sub to float
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  store float %conv3, float* %yx, align 4, !tbaa !20
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !12
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !10
  %11 = bitcast %struct.gs_sincos_s* %sincos to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @gs_sincos_degrees(double, %struct.gs_sincos_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_multiply(%struct.gs_matrix_s* %pm1, %struct.gs_matrix_s* %pm2, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %pm1.addr = alloca %struct.gs_matrix_s*, align 8
  %pm2.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %xx1 = alloca double, align 8
  %yy1 = alloca double, align 8
  %tx1 = alloca double, align 8
  %ty1 = alloca double, align 8
  %xx2 = alloca double, align 8
  %yy2 = alloca double, align 8
  %xy2 = alloca double, align 8
  %yx2 = alloca double, align 8
  %xy1 = alloca double, align 8
  %yx1 = alloca double, align 8
  store %struct.gs_matrix_s* %pm1, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pm2, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %0 = bitcast double* %xx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !13
  %conv = fpext float %2 to double
  store double %conv, double* %xx1, align 8, !tbaa !8
  %3 = bitcast double* %yy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 3
  %5 = load float, float* %yy, align 4, !tbaa !14
  %conv1 = fpext float %5 to double
  store double %conv1, double* %yy1, align 8, !tbaa !8
  %6 = bitcast double* %tx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 4
  %8 = load float, float* %tx, align 4, !tbaa !10
  %conv2 = fpext float %8 to double
  store double %conv2, double* %tx1, align 8, !tbaa !8
  %9 = bitcast double* %ty1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 5
  %11 = load float, float* %ty, align 4, !tbaa !12
  %conv3 = fpext float %11 to double
  store double %conv3, double* %ty1, align 8, !tbaa !8
  %12 = bitcast double* %xx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %xx4 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 0
  %14 = load float, float* %xx4, align 4, !tbaa !13
  %conv5 = fpext float %14 to double
  store double %conv5, double* %xx2, align 8, !tbaa !8
  %15 = bitcast double* %yy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %yy6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 3
  %17 = load float, float* %yy6, align 4, !tbaa !14
  %conv7 = fpext float %17 to double
  store double %conv7, double* %yy2, align 8, !tbaa !8
  %18 = bitcast double* %xy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 1
  %20 = load float, float* %xy, align 4, !tbaa !19
  %conv8 = fpext float %20 to double
  store double %conv8, double* %xy2, align 8, !tbaa !8
  %21 = bitcast double* %yx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 2
  %23 = load float, float* %yx, align 4, !tbaa !20
  %conv9 = fpext float %23 to double
  store double %conv9, double* %yx2, align 8, !tbaa !8
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %xy10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 1
  %25 = load float, float* %xy10, align 4, !tbaa !19
  %conv11 = fpext float %25 to double
  %cmp = fcmp oeq double %conv11, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else.59

land.lhs.true:                                    ; preds = %entry
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %yx13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 2
  %27 = load float, float* %yx13, align 4, !tbaa !20
  %conv14 = fpext float %27 to double
  %cmp15 = fcmp oeq double %conv14, 0.000000e+00
  br i1 %cmp15, label %if.then, label %if.else.59

if.then:                                          ; preds = %land.lhs.true
  %28 = load double, double* %tx1, align 8, !tbaa !8
  %29 = load double, double* %xx2, align 8, !tbaa !8
  %mul = fmul double %28, %29
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %tx17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 4
  %31 = load float, float* %tx17, align 4, !tbaa !10
  %conv18 = fpext float %31 to double
  %add = fadd double %mul, %conv18
  %conv19 = fptrunc double %add to float
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 4
  store float %conv19, float* %tx20, align 4, !tbaa !10
  %33 = load double, double* %ty1, align 8, !tbaa !8
  %34 = load double, double* %yy2, align 8, !tbaa !8
  %mul21 = fmul double %33, %34
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %ty22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 5
  %36 = load float, float* %ty22, align 4, !tbaa !12
  %conv23 = fpext float %36 to double
  %add24 = fadd double %mul21, %conv23
  %conv25 = fptrunc double %add24 to float
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 5
  store float %conv25, float* %ty26, align 4, !tbaa !12
  %38 = load double, double* %xy2, align 8, !tbaa !8
  %cmp27 = fcmp oeq double %38, 0.000000e+00
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 1
  store float 0.000000e+00, float* %xy30, align 4, !tbaa !19
  br label %if.end

if.else:                                          ; preds = %if.then
  %40 = load double, double* %xx1, align 8, !tbaa !8
  %41 = load double, double* %xy2, align 8, !tbaa !8
  %mul31 = fmul double %40, %41
  %conv32 = fptrunc double %mul31 to float
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 1
  store float %conv32, float* %xy33, align 4, !tbaa !19
  %43 = load double, double* %tx1, align 8, !tbaa !8
  %44 = load double, double* %xy2, align 8, !tbaa !8
  %mul34 = fmul double %43, %44
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 5
  %46 = load float, float* %ty35, align 4, !tbaa !12
  %conv36 = fpext float %46 to double
  %add37 = fadd double %conv36, %mul34
  %conv38 = fptrunc double %add37 to float
  store float %conv38, float* %ty35, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  %47 = load double, double* %xx1, align 8, !tbaa !8
  %48 = load double, double* %xx2, align 8, !tbaa !8
  %mul39 = fmul double %47, %48
  %conv40 = fptrunc double %mul39 to float
  %49 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx41 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %49, i32 0, i32 0
  store float %conv40, float* %xx41, align 4, !tbaa !13
  %50 = load double, double* %yx2, align 8, !tbaa !8
  %cmp42 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 2
  store float 0.000000e+00, float* %yx45, align 4, !tbaa !20
  br label %if.end.55

if.else.46:                                       ; preds = %if.end
  %52 = load double, double* %yy1, align 8, !tbaa !8
  %53 = load double, double* %yx2, align 8, !tbaa !8
  %mul47 = fmul double %52, %53
  %conv48 = fptrunc double %mul47 to float
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 2
  store float %conv48, float* %yx49, align 4, !tbaa !20
  %55 = load double, double* %ty1, align 8, !tbaa !8
  %56 = load double, double* %yx2, align 8, !tbaa !8
  %mul50 = fmul double %55, %56
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 4
  %58 = load float, float* %tx51, align 4, !tbaa !10
  %conv52 = fpext float %58 to double
  %add53 = fadd double %conv52, %mul50
  %conv54 = fptrunc double %add53 to float
  store float %conv54, float* %tx51, align 4, !tbaa !10
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.46, %if.then.44
  %59 = load double, double* %yy1, align 8, !tbaa !8
  %60 = load double, double* %yy2, align 8, !tbaa !8
  %mul56 = fmul double %59, %60
  %conv57 = fptrunc double %mul56 to float
  %61 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %61, i32 0, i32 3
  store float %conv57, float* %yy58, align 4, !tbaa !14
  br label %if.end.100

if.else.59:                                       ; preds = %land.lhs.true, %entry
  %62 = bitcast double* %xy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %xy60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 1
  %64 = load float, float* %xy60, align 4, !tbaa !19
  %conv61 = fpext float %64 to double
  store double %conv61, double* %xy1, align 8, !tbaa !8
  %65 = bitcast double* %yx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm1.addr, align 8, !tbaa !1
  %yx62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %66, i32 0, i32 2
  %67 = load float, float* %yx62, align 4, !tbaa !20
  %conv63 = fpext float %67 to double
  store double %conv63, double* %yx1, align 8, !tbaa !8
  %68 = load double, double* %xx1, align 8, !tbaa !8
  %69 = load double, double* %xx2, align 8, !tbaa !8
  %mul64 = fmul double %68, %69
  %70 = load double, double* %xy1, align 8, !tbaa !8
  %71 = load double, double* %yx2, align 8, !tbaa !8
  %mul65 = fmul double %70, %71
  %add66 = fadd double %mul64, %mul65
  %conv67 = fptrunc double %add66 to float
  %72 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %72, i32 0, i32 0
  store float %conv67, float* %xx68, align 4, !tbaa !13
  %73 = load double, double* %xx1, align 8, !tbaa !8
  %74 = load double, double* %xy2, align 8, !tbaa !8
  %mul69 = fmul double %73, %74
  %75 = load double, double* %xy1, align 8, !tbaa !8
  %76 = load double, double* %yy2, align 8, !tbaa !8
  %mul70 = fmul double %75, %76
  %add71 = fadd double %mul69, %mul70
  %conv72 = fptrunc double %add71 to float
  %77 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %77, i32 0, i32 1
  store float %conv72, float* %xy73, align 4, !tbaa !19
  %78 = load double, double* %yx1, align 8, !tbaa !8
  %79 = load double, double* %xy2, align 8, !tbaa !8
  %mul74 = fmul double %78, %79
  %80 = load double, double* %yy1, align 8, !tbaa !8
  %81 = load double, double* %yy2, align 8, !tbaa !8
  %mul75 = fmul double %80, %81
  %add76 = fadd double %mul74, %mul75
  %conv77 = fptrunc double %add76 to float
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy78 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %82, i32 0, i32 3
  store float %conv77, float* %yy78, align 4, !tbaa !14
  %83 = load double, double* %yx1, align 8, !tbaa !8
  %84 = load double, double* %xx2, align 8, !tbaa !8
  %mul79 = fmul double %83, %84
  %85 = load double, double* %yy1, align 8, !tbaa !8
  %86 = load double, double* %yx2, align 8, !tbaa !8
  %mul80 = fmul double %85, %86
  %add81 = fadd double %mul79, %mul80
  %conv82 = fptrunc double %add81 to float
  %87 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx83 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %87, i32 0, i32 2
  store float %conv82, float* %yx83, align 4, !tbaa !20
  %88 = load double, double* %tx1, align 8, !tbaa !8
  %89 = load double, double* %xx2, align 8, !tbaa !8
  %mul84 = fmul double %88, %89
  %90 = load double, double* %ty1, align 8, !tbaa !8
  %91 = load double, double* %yx2, align 8, !tbaa !8
  %mul85 = fmul double %90, %91
  %add86 = fadd double %mul84, %mul85
  %92 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %tx87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %92, i32 0, i32 4
  %93 = load float, float* %tx87, align 4, !tbaa !10
  %conv88 = fpext float %93 to double
  %add89 = fadd double %add86, %conv88
  %conv90 = fptrunc double %add89 to float
  %94 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %94, i32 0, i32 4
  store float %conv90, float* %tx91, align 4, !tbaa !10
  %95 = load double, double* %tx1, align 8, !tbaa !8
  %96 = load double, double* %xy2, align 8, !tbaa !8
  %mul92 = fmul double %95, %96
  %97 = load double, double* %ty1, align 8, !tbaa !8
  %98 = load double, double* %yy2, align 8, !tbaa !8
  %mul93 = fmul double %97, %98
  %add94 = fadd double %mul92, %mul93
  %99 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %ty95 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %99, i32 0, i32 5
  %100 = load float, float* %ty95, align 4, !tbaa !12
  %conv96 = fpext float %100 to double
  %add97 = fadd double %add94, %conv96
  %conv98 = fptrunc double %add97 to float
  %101 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty99 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %101, i32 0, i32 5
  store float %conv98, float* %ty99, align 4, !tbaa !12
  %102 = bitcast double* %yx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %xy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.59, %if.end.55
  %104 = bitcast double* %yx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast double* %xy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast double* %yy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast double* %xx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast double* %ty1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast double* %tx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast double* %yy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast double* %xx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_multiply_double(%struct.gs_matrix_double_s* %pm1, %struct.gs_matrix_s* %pm2, %struct.gs_matrix_double_s* %pmr) #0 {
entry:
  %pm1.addr = alloca %struct.gs_matrix_double_s*, align 8
  %pm2.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_double_s*, align 8
  %xx1 = alloca double, align 8
  %yy1 = alloca double, align 8
  %tx1 = alloca double, align 8
  %ty1 = alloca double, align 8
  %xx2 = alloca double, align 8
  %yy2 = alloca double, align 8
  %xy2 = alloca double, align 8
  %yx2 = alloca double, align 8
  %xy1 = alloca double, align 8
  %yx1 = alloca double, align 8
  store %struct.gs_matrix_double_s* %pm1, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pm2, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  store %struct.gs_matrix_double_s* %pmr, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %0 = bitcast double* %xx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %1, i32 0, i32 0
  %2 = load double, double* %xx, align 8, !tbaa !21
  store double %2, double* %xx1, align 8, !tbaa !8
  %3 = bitcast double* %yy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %4, i32 0, i32 3
  %5 = load double, double* %yy, align 8, !tbaa !23
  store double %5, double* %yy1, align 8, !tbaa !8
  %6 = bitcast double* %tx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %7, i32 0, i32 4
  %8 = load double, double* %tx, align 8, !tbaa !24
  store double %8, double* %tx1, align 8, !tbaa !8
  %9 = bitcast double* %ty1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %10, i32 0, i32 5
  %11 = load double, double* %ty, align 8, !tbaa !25
  store double %11, double* %ty1, align 8, !tbaa !8
  %12 = bitcast double* %xx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %xx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 0
  %14 = load float, float* %xx3, align 4, !tbaa !13
  %conv = fpext float %14 to double
  store double %conv, double* %xx2, align 8, !tbaa !8
  %15 = bitcast double* %yy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %yy4 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 3
  %17 = load float, float* %yy4, align 4, !tbaa !14
  %conv5 = fpext float %17 to double
  store double %conv5, double* %yy2, align 8, !tbaa !8
  %18 = bitcast double* %xy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 1
  %20 = load float, float* %xy, align 4, !tbaa !19
  %conv6 = fpext float %20 to double
  store double %conv6, double* %xy2, align 8, !tbaa !8
  %21 = bitcast double* %yx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 2
  %23 = load float, float* %yx, align 4, !tbaa !20
  %conv7 = fpext float %23 to double
  store double %conv7, double* %yx2, align 8, !tbaa !8
  %24 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %xy8 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %24, i32 0, i32 1
  %25 = load double, double* %xy8, align 8, !tbaa !26
  %cmp = fcmp oeq double %25, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %entry
  %26 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %yx10 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %26, i32 0, i32 2
  %27 = load double, double* %yx10, align 8, !tbaa !27
  %cmp11 = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp11, label %if.then, label %if.else.45

if.then:                                          ; preds = %land.lhs.true
  %28 = load double, double* %tx1, align 8, !tbaa !8
  %29 = load double, double* %xx2, align 8, !tbaa !8
  %mul = fmul double %28, %29
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %tx13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 4
  %31 = load float, float* %tx13, align 4, !tbaa !10
  %conv14 = fpext float %31 to double
  %add = fadd double %mul, %conv14
  %32 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %tx15 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %32, i32 0, i32 4
  store double %add, double* %tx15, align 8, !tbaa !24
  %33 = load double, double* %ty1, align 8, !tbaa !8
  %34 = load double, double* %yy2, align 8, !tbaa !8
  %mul16 = fmul double %33, %34
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %ty17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 5
  %36 = load float, float* %ty17, align 4, !tbaa !12
  %conv18 = fpext float %36 to double
  %add19 = fadd double %mul16, %conv18
  %37 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %ty20 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %37, i32 0, i32 5
  store double %add19, double* %ty20, align 8, !tbaa !25
  %38 = load double, double* %xy2, align 8, !tbaa !8
  %cmp21 = fcmp oeq double %38, 0.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then
  %39 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xy24 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %39, i32 0, i32 1
  store double 0.000000e+00, double* %xy24, align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %if.then
  %40 = load double, double* %xx1, align 8, !tbaa !8
  %41 = load double, double* %xy2, align 8, !tbaa !8
  %mul25 = fmul double %40, %41
  %42 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xy26 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %42, i32 0, i32 1
  store double %mul25, double* %xy26, align 8, !tbaa !26
  %43 = load double, double* %tx1, align 8, !tbaa !8
  %44 = load double, double* %xy2, align 8, !tbaa !8
  %mul27 = fmul double %43, %44
  %45 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %ty28 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %45, i32 0, i32 5
  %46 = load double, double* %ty28, align 8, !tbaa !25
  %add29 = fadd double %46, %mul27
  store double %add29, double* %ty28, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  %47 = load double, double* %xx1, align 8, !tbaa !8
  %48 = load double, double* %xx2, align 8, !tbaa !8
  %mul30 = fmul double %47, %48
  %49 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xx31 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %49, i32 0, i32 0
  store double %mul30, double* %xx31, align 8, !tbaa !21
  %50 = load double, double* %yx2, align 8, !tbaa !8
  %cmp32 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end
  %51 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yx35 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %51, i32 0, i32 2
  store double 0.000000e+00, double* %yx35, align 8, !tbaa !27
  br label %if.end.42

if.else.36:                                       ; preds = %if.end
  %52 = load double, double* %yy1, align 8, !tbaa !8
  %53 = load double, double* %yx2, align 8, !tbaa !8
  %mul37 = fmul double %52, %53
  %54 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yx38 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %54, i32 0, i32 2
  store double %mul37, double* %yx38, align 8, !tbaa !27
  %55 = load double, double* %ty1, align 8, !tbaa !8
  %56 = load double, double* %yx2, align 8, !tbaa !8
  %mul39 = fmul double %55, %56
  %57 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %tx40 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %57, i32 0, i32 4
  %58 = load double, double* %tx40, align 8, !tbaa !24
  %add41 = fadd double %58, %mul39
  store double %add41, double* %tx40, align 8, !tbaa !24
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %if.then.34
  %59 = load double, double* %yy1, align 8, !tbaa !8
  %60 = load double, double* %yy2, align 8, !tbaa !8
  %mul43 = fmul double %59, %60
  %61 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yy44 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %61, i32 0, i32 3
  store double %mul43, double* %yy44, align 8, !tbaa !23
  br label %if.end.78

if.else.45:                                       ; preds = %land.lhs.true, %entry
  %62 = bitcast double* %xy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %xy46 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %63, i32 0, i32 1
  %64 = load double, double* %xy46, align 8, !tbaa !26
  store double %64, double* %xy1, align 8, !tbaa !8
  %65 = bitcast double* %yx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pm1.addr, align 8, !tbaa !1
  %yx47 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %66, i32 0, i32 2
  %67 = load double, double* %yx47, align 8, !tbaa !27
  store double %67, double* %yx1, align 8, !tbaa !8
  %68 = load double, double* %xx1, align 8, !tbaa !8
  %69 = load double, double* %xx2, align 8, !tbaa !8
  %mul48 = fmul double %68, %69
  %70 = load double, double* %xy1, align 8, !tbaa !8
  %71 = load double, double* %yx2, align 8, !tbaa !8
  %mul49 = fmul double %70, %71
  %add50 = fadd double %mul48, %mul49
  %72 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xx51 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %72, i32 0, i32 0
  store double %add50, double* %xx51, align 8, !tbaa !21
  %73 = load double, double* %xx1, align 8, !tbaa !8
  %74 = load double, double* %xy2, align 8, !tbaa !8
  %mul52 = fmul double %73, %74
  %75 = load double, double* %xy1, align 8, !tbaa !8
  %76 = load double, double* %yy2, align 8, !tbaa !8
  %mul53 = fmul double %75, %76
  %add54 = fadd double %mul52, %mul53
  %77 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xy55 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %77, i32 0, i32 1
  store double %add54, double* %xy55, align 8, !tbaa !26
  %78 = load double, double* %yx1, align 8, !tbaa !8
  %79 = load double, double* %xy2, align 8, !tbaa !8
  %mul56 = fmul double %78, %79
  %80 = load double, double* %yy1, align 8, !tbaa !8
  %81 = load double, double* %yy2, align 8, !tbaa !8
  %mul57 = fmul double %80, %81
  %add58 = fadd double %mul56, %mul57
  %82 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yy59 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %82, i32 0, i32 3
  store double %add58, double* %yy59, align 8, !tbaa !23
  %83 = load double, double* %yx1, align 8, !tbaa !8
  %84 = load double, double* %xx2, align 8, !tbaa !8
  %mul60 = fmul double %83, %84
  %85 = load double, double* %yy1, align 8, !tbaa !8
  %86 = load double, double* %yx2, align 8, !tbaa !8
  %mul61 = fmul double %85, %86
  %add62 = fadd double %mul60, %mul61
  %87 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yx63 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %87, i32 0, i32 2
  store double %add62, double* %yx63, align 8, !tbaa !27
  %88 = load double, double* %tx1, align 8, !tbaa !8
  %89 = load double, double* %xx2, align 8, !tbaa !8
  %mul64 = fmul double %88, %89
  %90 = load double, double* %ty1, align 8, !tbaa !8
  %91 = load double, double* %yx2, align 8, !tbaa !8
  %mul65 = fmul double %90, %91
  %add66 = fadd double %mul64, %mul65
  %92 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %tx67 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %92, i32 0, i32 4
  %93 = load float, float* %tx67, align 4, !tbaa !10
  %conv68 = fpext float %93 to double
  %add69 = fadd double %add66, %conv68
  %94 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %tx70 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %94, i32 0, i32 4
  store double %add69, double* %tx70, align 8, !tbaa !24
  %95 = load double, double* %tx1, align 8, !tbaa !8
  %96 = load double, double* %xy2, align 8, !tbaa !8
  %mul71 = fmul double %95, %96
  %97 = load double, double* %ty1, align 8, !tbaa !8
  %98 = load double, double* %yy2, align 8, !tbaa !8
  %mul72 = fmul double %97, %98
  %add73 = fadd double %mul71, %mul72
  %99 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm2.addr, align 8, !tbaa !1
  %ty74 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %99, i32 0, i32 5
  %100 = load float, float* %ty74, align 4, !tbaa !12
  %conv75 = fpext float %100 to double
  %add76 = fadd double %add73, %conv75
  %101 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %ty77 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %101, i32 0, i32 5
  store double %add76, double* %ty77, align 8, !tbaa !25
  %102 = bitcast double* %yx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %xy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.45, %if.end.42
  %104 = bitcast double* %yx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast double* %xy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast double* %yy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast double* %xx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast double* %ty1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast double* %tx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast double* %yy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast double* %xx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_invert(%struct.gs_matrix_s* %pm, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %mxx = alloca float, align 4
  %myy = alloca float, align 4
  %mxy = alloca float, align 4
  %myx = alloca float, align 4
  %mtx = alloca float, align 4
  %mty = alloca float, align 4
  %det = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !19
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !20
  %conv2 = fpext float %3 to double
  %cmp3 = fcmp oeq double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !13
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp oeq double %conv5, 0.000000e+00
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !14
  %conv8 = fpext float %7 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 0
  %9 = load float, float* %xx12, align 4, !tbaa !13
  %conv13 = fpext float %9 to double
  %div = fdiv double 1.000000e+00, %conv13
  %conv14 = fptrunc double %div to float
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 0
  store float %conv14, float* %xx15, align 4, !tbaa !13
  %sub = fsub float -0.000000e+00, %conv14
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 4
  %12 = load float, float* %tx, align 4, !tbaa !10
  %mul = fmul float %sub, %12
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 4
  store float %mul, float* %tx16, align 4, !tbaa !10
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 1
  store float 0.000000e+00, float* %xy17, align 4, !tbaa !19
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 2
  store float 0.000000e+00, float* %yx18, align 4, !tbaa !20
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 3
  %17 = load float, float* %yy19, align 4, !tbaa !14
  %conv20 = fpext float %17 to double
  %div21 = fdiv double 1.000000e+00, %conv20
  %conv22 = fptrunc double %div21 to float
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 3
  store float %conv22, float* %yy23, align 4, !tbaa !14
  %sub24 = fsub float -0.000000e+00, %conv22
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 5
  %20 = load float, float* %ty, align 4, !tbaa !12
  %mul25 = fmul float %sub24, %20
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 5
  store float %mul25, float* %ty26, align 4, !tbaa !12
  br label %if.end.79

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 0
  %24 = load float, float* %xx27, align 4, !tbaa !13
  store float %24, float* %mxx, align 4, !tbaa !6
  %25 = bitcast float* %myy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 3
  %27 = load float, float* %yy28, align 4, !tbaa !14
  store float %27, float* %myy, align 4, !tbaa !6
  %28 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 1
  %30 = load float, float* %xy29, align 4, !tbaa !19
  store float %30, float* %mxy, align 4, !tbaa !6
  %31 = bitcast float* %myx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 2
  %33 = load float, float* %yx30, align 4, !tbaa !20
  store float %33, float* %myx, align 4, !tbaa !6
  %34 = bitcast float* %mtx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  %36 = load float, float* %tx31, align 4, !tbaa !10
  store float %36, float* %mtx, align 4, !tbaa !6
  %37 = bitcast float* %mty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 5
  %39 = load float, float* %ty32, align 4, !tbaa !12
  store float %39, float* %mty, align 4, !tbaa !6
  %40 = bitcast double* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load float, float* %mxx, align 4, !tbaa !6
  %42 = load float, float* %myy, align 4, !tbaa !6
  %mul33 = fmul float %41, %42
  %43 = load float, float* %mxy, align 4, !tbaa !6
  %44 = load float, float* %myx, align 4, !tbaa !6
  %mul34 = fmul float %43, %44
  %sub35 = fsub float %mul33, %mul34
  %conv36 = fpext float %sub35 to double
  store double %conv36, double* %det, align 8, !tbaa !8
  %45 = load double, double* %det, align 8, !tbaa !8
  %cmp37 = fcmp oeq double %45, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.else
  %46 = load float, float* %myy, align 4, !tbaa !6
  %conv41 = fpext float %46 to double
  %47 = load double, double* %det, align 8, !tbaa !8
  %div42 = fdiv double %conv41, %47
  %conv43 = fptrunc double %div42 to float
  %48 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %48, i32 0, i32 0
  store float %conv43, float* %xx44, align 4, !tbaa !13
  %49 = load float, float* %mxy, align 4, !tbaa !6
  %sub45 = fsub float -0.000000e+00, %49
  %conv46 = fpext float %sub45 to double
  %50 = load double, double* %det, align 8, !tbaa !8
  %div47 = fdiv double %conv46, %50
  %conv48 = fptrunc double %div47 to float
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 1
  store float %conv48, float* %xy49, align 4, !tbaa !19
  %52 = load float, float* %myx, align 4, !tbaa !6
  %sub50 = fsub float -0.000000e+00, %52
  %conv51 = fpext float %sub50 to double
  %53 = load double, double* %det, align 8, !tbaa !8
  %div52 = fdiv double %conv51, %53
  %conv53 = fptrunc double %div52 to float
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 2
  store float %conv53, float* %yx54, align 4, !tbaa !20
  %55 = load float, float* %mxx, align 4, !tbaa !6
  %conv55 = fpext float %55 to double
  %56 = load double, double* %det, align 8, !tbaa !8
  %div56 = fdiv double %conv55, %56
  %conv57 = fptrunc double %div56 to float
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 3
  store float %conv57, float* %yy58, align 4, !tbaa !14
  %58 = load float, float* %mty, align 4, !tbaa !6
  %59 = load float, float* %myx, align 4, !tbaa !6
  %mul59 = fmul float %58, %59
  %60 = load float, float* %mtx, align 4, !tbaa !6
  %61 = load float, float* %myy, align 4, !tbaa !6
  %mul60 = fmul float %60, %61
  %sub61 = fsub float %mul59, %mul60
  %conv62 = fpext float %sub61 to double
  %62 = load double, double* %det, align 8, !tbaa !8
  %div63 = fdiv double %conv62, %62
  %conv64 = fptrunc double %div63 to float
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 4
  store float %conv64, float* %tx65, align 4, !tbaa !10
  %64 = load float, float* %mtx, align 4, !tbaa !6
  %65 = load float, float* %mxy, align 4, !tbaa !6
  %mul66 = fmul float %64, %65
  %66 = load float, float* %mty, align 4, !tbaa !6
  %67 = load float, float* %mxx, align 4, !tbaa !6
  %mul67 = fmul float %66, %67
  %sub68 = fsub float %mul66, %mul67
  %conv69 = fpext float %sub68 to double
  %68 = load double, double* %det, align 8, !tbaa !8
  %div70 = fdiv double %conv69, %68
  %conv71 = fptrunc double %div70 to float
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %69, i32 0, i32 5
  store float %conv71, float* %ty72, align 4, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.39
  %70 = bitcast double* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast float* %mty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %mtx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float* %myx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast float* %mxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast float* %myy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast float* %mxx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.79

if.end.79:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %cleanup, %if.then.11
  %77 = load i32, i32* %retval
  ret i32 %77

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_invert_to_double(%struct.gs_matrix_s* %pm, %struct.gs_matrix_double_s* %pmr) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %pmr.addr = alloca %struct.gs_matrix_double_s*, align 8
  %mxx = alloca double, align 8
  %myy = alloca double, align 8
  %mxy = alloca double, align 8
  %myx = alloca double, align 8
  %mtx = alloca double, align 8
  %mty = alloca double, align 8
  %det = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  store %struct.gs_matrix_double_s* %pmr, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !19
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !20
  %conv2 = fpext float %3 to double
  %cmp3 = fcmp oeq double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !13
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp oeq double %conv5, 0.000000e+00
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !14
  %conv8 = fpext float %7 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 0
  %9 = load float, float* %xx12, align 4, !tbaa !13
  %conv13 = fpext float %9 to double
  %div = fdiv double 1.000000e+00, %conv13
  %10 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xx14 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %10, i32 0, i32 0
  store double %div, double* %xx14, align 8, !tbaa !21
  %sub = fsub double -0.000000e+00, %div
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 4
  %12 = load float, float* %tx, align 4, !tbaa !10
  %conv15 = fpext float %12 to double
  %mul = fmul double %sub, %conv15
  %13 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %tx16 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %13, i32 0, i32 4
  store double %mul, double* %tx16, align 8, !tbaa !24
  %14 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xy17 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %14, i32 0, i32 1
  store double 0.000000e+00, double* %xy17, align 8, !tbaa !26
  %15 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yx18 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %15, i32 0, i32 2
  store double 0.000000e+00, double* %yx18, align 8, !tbaa !27
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 3
  %17 = load float, float* %yy19, align 4, !tbaa !14
  %conv20 = fpext float %17 to double
  %div21 = fdiv double 1.000000e+00, %conv20
  %18 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yy22 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %18, i32 0, i32 3
  store double %div21, double* %yy22, align 8, !tbaa !23
  %sub23 = fsub double -0.000000e+00, %div21
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 5
  %20 = load float, float* %ty, align 4, !tbaa !12
  %conv24 = fpext float %20 to double
  %mul25 = fmul double %sub23, %conv24
  %21 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %ty26 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %21, i32 0, i32 5
  store double %mul25, double* %ty26, align 8, !tbaa !25
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 0
  %24 = load float, float* %xx27, align 4, !tbaa !13
  %conv28 = fpext float %24 to double
  store double %conv28, double* %mxx, align 8, !tbaa !8
  %25 = bitcast double* %myy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 3
  %27 = load float, float* %yy29, align 4, !tbaa !14
  %conv30 = fpext float %27 to double
  store double %conv30, double* %myy, align 8, !tbaa !8
  %28 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 1
  %30 = load float, float* %xy31, align 4, !tbaa !19
  %conv32 = fpext float %30 to double
  store double %conv32, double* %mxy, align 8, !tbaa !8
  %31 = bitcast double* %myx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 2
  %33 = load float, float* %yx33, align 4, !tbaa !20
  %conv34 = fpext float %33 to double
  store double %conv34, double* %myx, align 8, !tbaa !8
  %34 = bitcast double* %mtx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  %36 = load float, float* %tx35, align 4, !tbaa !10
  %conv36 = fpext float %36 to double
  store double %conv36, double* %mtx, align 8, !tbaa !8
  %37 = bitcast double* %mty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty37 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 5
  %39 = load float, float* %ty37, align 4, !tbaa !12
  %conv38 = fpext float %39 to double
  store double %conv38, double* %mty, align 8, !tbaa !8
  %40 = bitcast double* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load double, double* %mxx, align 8, !tbaa !8
  %42 = load double, double* %myy, align 8, !tbaa !8
  %mul39 = fmul double %41, %42
  %43 = load double, double* %mxy, align 8, !tbaa !8
  %44 = load double, double* %myx, align 8, !tbaa !8
  %mul40 = fmul double %43, %44
  %sub41 = fsub double %mul39, %mul40
  store double %sub41, double* %det, align 8, !tbaa !8
  %45 = load double, double* %det, align 8, !tbaa !8
  %cmp42 = fcmp oeq double %45, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.else
  %46 = load double, double* %myy, align 8, !tbaa !8
  %47 = load double, double* %det, align 8, !tbaa !8
  %div46 = fdiv double %46, %47
  %48 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xx47 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %48, i32 0, i32 0
  store double %div46, double* %xx47, align 8, !tbaa !21
  %49 = load double, double* %mxy, align 8, !tbaa !8
  %sub48 = fsub double -0.000000e+00, %49
  %50 = load double, double* %det, align 8, !tbaa !8
  %div49 = fdiv double %sub48, %50
  %51 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %xy50 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %51, i32 0, i32 1
  store double %div49, double* %xy50, align 8, !tbaa !26
  %52 = load double, double* %myx, align 8, !tbaa !8
  %sub51 = fsub double -0.000000e+00, %52
  %53 = load double, double* %det, align 8, !tbaa !8
  %div52 = fdiv double %sub51, %53
  %54 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yx53 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %54, i32 0, i32 2
  store double %div52, double* %yx53, align 8, !tbaa !27
  %55 = load double, double* %mxx, align 8, !tbaa !8
  %56 = load double, double* %det, align 8, !tbaa !8
  %div54 = fdiv double %55, %56
  %57 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %yy55 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %57, i32 0, i32 3
  store double %div54, double* %yy55, align 8, !tbaa !23
  %58 = load double, double* %mty, align 8, !tbaa !8
  %59 = load double, double* %myx, align 8, !tbaa !8
  %mul56 = fmul double %58, %59
  %60 = load double, double* %mtx, align 8, !tbaa !8
  %61 = load double, double* %myy, align 8, !tbaa !8
  %mul57 = fmul double %60, %61
  %sub58 = fsub double %mul56, %mul57
  %62 = load double, double* %det, align 8, !tbaa !8
  %div59 = fdiv double %sub58, %62
  %63 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %tx60 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %63, i32 0, i32 4
  store double %div59, double* %tx60, align 8, !tbaa !24
  %64 = load double, double* %mtx, align 8, !tbaa !8
  %65 = load double, double* %mxy, align 8, !tbaa !8
  %mul61 = fmul double %64, %65
  %66 = load double, double* %mty, align 8, !tbaa !8
  %67 = load double, double* %mxx, align 8, !tbaa !8
  %mul62 = fmul double %66, %67
  %sub63 = fsub double %mul61, %mul62
  %68 = load double, double* %det, align 8, !tbaa !8
  %div64 = fdiv double %sub63, %68
  %69 = load %struct.gs_matrix_double_s*, %struct.gs_matrix_double_s** %pmr.addr, align 8, !tbaa !1
  %ty65 = getelementptr inbounds %struct.gs_matrix_double_s, %struct.gs_matrix_double_s* %69, i32 0, i32 5
  store double %div64, double* %ty65, align 8, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %70 = bitcast double* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast double* %mty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %mtx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %myx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast double* %myy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.72

if.end.72:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %cleanup, %if.then.11
  %77 = load i32, i32* %retval
  ret i32 %77

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_translate(%struct.gs_matrix_s* %pm, double %dx, double %dy, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %trans = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !8
  store double %dy, double* %dy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %trans to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load double, double* %dx.addr, align 8, !tbaa !8
  %3 = load double, double* %dy.addr, align 8, !tbaa !8
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform(double %2, double %3, %struct.gs_matrix_s* %4, %struct.gs_point_s* %trans) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %5 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_matrix_s* %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_matrix_s* %9 to i8*
  %12 = bitcast %struct.gs_matrix_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !tbaa.struct !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %trans, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !29
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 4
  %15 = load float, float* %tx, align 4, !tbaa !10
  %conv = fpext float %15 to double
  %add = fadd double %conv, %13
  %conv4 = fptrunc double %add to float
  store float %conv4, float* %tx, align 4, !tbaa !10
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %trans, i32 0, i32 1
  %16 = load double, double* %y, align 8, !tbaa !31
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 5
  %18 = load float, float* %ty, align 4, !tbaa !12
  %conv5 = fpext float %18 to double
  %add6 = fadd double %conv5, %16
  %conv7 = fptrunc double %add6 to float
  store float %conv7, float* %ty, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_point_s* %trans to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform(double %dx, double %dy, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pdpt) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  store double %dx, double* %dx.addr, align 8, !tbaa !8
  store double %dy, double* %dy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %0 = load double, double* %dx.addr, align 8, !tbaa !8
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !13
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i32 0, i32 0
  store double %mul, double* %x, align 8, !tbaa !29
  %4 = load double, double* %dy.addr, align 8, !tbaa !8
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 3
  %6 = load float, float* %yy, align 4, !tbaa !14
  %conv1 = fpext float %6 to double
  %mul2 = fmul double %4, %conv1
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %7, i32 0, i32 1
  store double %mul2, double* %y, align 8, !tbaa !31
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !20
  %conv3 = fpext float %9 to double
  %cmp = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load double, double* %dy.addr, align 8, !tbaa !8
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 2
  %12 = load float, float* %yx5, align 4, !tbaa !20
  %conv6 = fpext float %12 to double
  %mul7 = fmul double %10, %conv6
  %13 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 0
  %14 = load double, double* %x8, align 8, !tbaa !29
  %add = fadd double %14, %mul7
  store double %add, double* %x8, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 1
  %16 = load float, float* %xy, align 4, !tbaa !19
  %conv9 = fpext float %16 to double
  %cmp10 = fcmp oeq double %conv9, 0.000000e+00
  br i1 %cmp10, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %17 = load double, double* %dx.addr, align 8, !tbaa !8
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 1
  %19 = load float, float* %xy13, align 4, !tbaa !19
  %conv14 = fpext float %19 to double
  %mul15 = fmul double %17, %conv14
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 1
  %21 = load double, double* %y16, align 8, !tbaa !31
  %add17 = fadd double %21, %mul15
  store double %add17, double* %y16, align 8, !tbaa !31
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_scale(%struct.gs_matrix_s* %pm, double %sx, double %sy, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  store double %sx, double* %sx.addr, align 8, !tbaa !8
  store double %sy, double* %sy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 0
  %1 = load float, float* %xx, align 4, !tbaa !13
  %conv = fpext float %1 to double
  %2 = load double, double* %sx.addr, align 8, !tbaa !8
  %mul = fmul double %conv, %2
  %conv1 = fptrunc double %mul to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 0
  store float %conv1, float* %xx2, align 4, !tbaa !13
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 1
  %5 = load float, float* %xy, align 4, !tbaa !19
  %conv3 = fpext float %5 to double
  %6 = load double, double* %sx.addr, align 8, !tbaa !8
  %mul4 = fmul double %conv3, %6
  %conv5 = fptrunc double %mul4 to float
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 1
  store float %conv5, float* %xy6, align 4, !tbaa !19
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !20
  %conv7 = fpext float %9 to double
  %10 = load double, double* %sy.addr, align 8, !tbaa !8
  %mul8 = fmul double %conv7, %10
  %conv9 = fptrunc double %mul8 to float
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 2
  store float %conv9, float* %yx10, align 4, !tbaa !20
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 3
  %13 = load float, float* %yy, align 4, !tbaa !14
  %conv11 = fpext float %13 to double
  %14 = load double, double* %sy.addr, align 8, !tbaa !8
  %mul12 = fmul double %conv11, %14
  %conv13 = fptrunc double %mul12 to float
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 3
  store float %conv13, float* %yy14, align 4, !tbaa !14
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_matrix_s* %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 4
  %19 = load float, float* %tx, align 4, !tbaa !10
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 4
  store float %19, float* %tx16, align 4, !tbaa !10
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 5
  %22 = load float, float* %ty, align 4, !tbaa !12
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 5
  store float %22, float* %ty17, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_rotate(%struct.gs_matrix_s* %pm, double %ang, %struct.gs_matrix_s* %pmr) #0 {
entry:
  %pm.addr = alloca %struct.gs_matrix_s*, align 8
  %ang.addr = alloca double, align 8
  %pmr.addr = alloca %struct.gs_matrix_s*, align 8
  %mxx = alloca double, align 8
  %mxy = alloca double, align 8
  %sincos = alloca %struct.gs_sincos_s, align 8
  store %struct.gs_matrix_s* %pm, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  store double %ang, double* %ang.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmr, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %0 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_sincos_s* %sincos to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load double, double* %ang.addr, align 8, !tbaa !8
  call void @gs_sincos_degrees(double %3, %struct.gs_sincos_s* %sincos) #5
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !13
  %conv = fpext float %5 to double
  store double %conv, double* %mxx, align 8, !tbaa !8
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  %7 = load float, float* %xy, align 4, !tbaa !19
  %conv1 = fpext float %7 to double
  store double %conv1, double* %mxy, align 8, !tbaa !8
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 1
  %8 = load double, double* %cos, align 8, !tbaa !15
  %9 = load double, double* %mxx, align 8, !tbaa !8
  %mul = fmul double %8, %9
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %10 = load double, double* %sin, align 8, !tbaa !18
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 2
  %12 = load float, float* %yx, align 4, !tbaa !20
  %conv2 = fpext float %12 to double
  %mul3 = fmul double %10, %conv2
  %add = fadd double %mul, %mul3
  %conv4 = fptrunc double %add to float
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 0
  store float %conv4, float* %xx5, align 4, !tbaa !13
  %cos6 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 1
  %14 = load double, double* %cos6, align 8, !tbaa !15
  %15 = load double, double* %mxy, align 8, !tbaa !8
  %mul7 = fmul double %14, %15
  %sin8 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %16 = load double, double* %sin8, align 8, !tbaa !18
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 3
  %18 = load float, float* %yy, align 4, !tbaa !14
  %conv9 = fpext float %18 to double
  %mul10 = fmul double %16, %conv9
  %add11 = fadd double %mul7, %mul10
  %conv12 = fptrunc double %add11 to float
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %xy13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 1
  store float %conv12, float* %xy13, align 4, !tbaa !19
  %cos14 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 1
  %20 = load double, double* %cos14, align 8, !tbaa !15
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 2
  %22 = load float, float* %yx15, align 4, !tbaa !20
  %conv16 = fpext float %22 to double
  %mul17 = fmul double %20, %conv16
  %sin18 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %23 = load double, double* %sin18, align 8, !tbaa !18
  %24 = load double, double* %mxx, align 8, !tbaa !8
  %mul19 = fmul double %23, %24
  %sub = fsub double %mul17, %mul19
  %conv20 = fptrunc double %sub to float
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yx21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 2
  store float %conv20, float* %yx21, align 4, !tbaa !20
  %cos22 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 1
  %26 = load double, double* %cos22, align 8, !tbaa !15
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %yy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 3
  %28 = load float, float* %yy23, align 4, !tbaa !14
  %conv24 = fpext float %28 to double
  %mul25 = fmul double %26, %conv24
  %sin26 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %29 = load double, double* %sin26, align 8, !tbaa !18
  %30 = load double, double* %mxy, align 8, !tbaa !8
  %mul27 = fmul double %29, %30
  %sub28 = fsub double %mul25, %mul27
  %conv29 = fptrunc double %sub28 to float
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %yy30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 3
  store float %conv29, float* %yy30, align 4, !tbaa !14
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_matrix_s* %32, %33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 4
  %35 = load float, float* %tx, align 4, !tbaa !10
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %tx32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 4
  store float %35, float* %tx32, align 4, !tbaa !10
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pm.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 5
  %38 = load float, float* %ty, align 4, !tbaa !12
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmr.addr, align 8, !tbaa !1
  %ty33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 5
  store float %38, float* %ty33, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %40 = bitcast %struct.gs_sincos_s* %sincos to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #1
  %41 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform(double %x, double %y, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %ppt) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store double %x, double* %x.addr, align 8, !tbaa !8
  store double %y, double* %y.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load double, double* %x.addr, align 8, !tbaa !8
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !13
  %conv = fpext float %2 to double
  %mul = fmul double %0, %conv
  %conv1 = fptrunc double %mul to float
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 4
  %4 = load float, float* %tx, align 4, !tbaa !10
  %add = fadd float %conv1, %4
  %conv2 = fpext float %add to double
  %5 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 0
  store double %conv2, double* %x3, align 8, !tbaa !29
  %6 = load double, double* %y.addr, align 8, !tbaa !8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 3
  %8 = load float, float* %yy, align 4, !tbaa !14
  %conv4 = fpext float %8 to double
  %mul5 = fmul double %6, %conv4
  %conv6 = fptrunc double %mul5 to float
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 5
  %10 = load float, float* %ty, align 4, !tbaa !12
  %add7 = fadd float %conv6, %10
  %conv8 = fpext float %add7 to double
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  store double %conv8, double* %y9, align 8, !tbaa !31
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  %13 = load float, float* %yx, align 4, !tbaa !20
  %conv10 = fpext float %13 to double
  %cmp = fcmp oeq double %conv10, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load double, double* %y.addr, align 8, !tbaa !8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 2
  %16 = load float, float* %yx12, align 4, !tbaa !20
  %conv13 = fpext float %16 to double
  %mul14 = fmul double %14, %conv13
  %conv15 = fptrunc double %mul14 to float
  %conv16 = fpext float %conv15 to double
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 0
  %18 = load double, double* %x17, align 8, !tbaa !29
  %add18 = fadd double %18, %conv16
  store double %add18, double* %x17, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 1
  %20 = load float, float* %xy, align 4, !tbaa !19
  %conv19 = fpext float %20 to double
  %cmp20 = fcmp oeq double %conv19, 0.000000e+00
  br i1 %cmp20, label %if.end.30, label %if.then.22

if.then.22:                                       ; preds = %if.end
  %21 = load double, double* %x.addr, align 8, !tbaa !8
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 1
  %23 = load float, float* %xy23, align 4, !tbaa !19
  %conv24 = fpext float %23 to double
  %mul25 = fmul double %21, %conv24
  %conv26 = fptrunc double %mul25 to float
  %conv27 = fpext float %conv26 to double
  %24 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %24, i32 0, i32 1
  %25 = load double, double* %y28, align 8, !tbaa !31
  %add29 = fadd double %25, %conv27
  store double %add29, double* %y28, align 8, !tbaa !31
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform_inverse(double %x, double %y, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !8
  store double %y, double* %y.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !19
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !20
  %conv2 = fpext float %3 to double
  %cmp3 = fcmp oeq double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !13
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp oeq double %conv5, 0.000000e+00
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !14
  %conv8 = fpext float %7 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load double, double* %x.addr, align 8, !tbaa !8
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 4
  %10 = load float, float* %tx, align 4, !tbaa !10
  %conv12 = fpext float %10 to double
  %sub = fsub double %8, %conv12
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 0
  %12 = load float, float* %xx13, align 4, !tbaa !13
  %conv14 = fpext float %12 to double
  %div = fdiv double %sub, %conv14
  %13 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 0
  store double %div, double* %x15, align 8, !tbaa !29
  %14 = load double, double* %y.addr, align 8, !tbaa !8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 5
  %16 = load float, float* %ty, align 4, !tbaa !12
  %conv16 = fpext float %16 to double
  %sub17 = fsub double %14, %conv16
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 3
  %18 = load float, float* %yy18, align 4, !tbaa !14
  %conv19 = fpext float %18 to double
  %div20 = fdiv double %sub17, %conv19
  %19 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %19, i32 0, i32 1
  store double %div20, double* %y21, align 8, !tbaa !31
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 0
  %21 = load float, float* %xx22, align 4, !tbaa !13
  %conv23 = fpext float %21 to double
  %cmp24 = fcmp oeq double %conv23, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.26, label %if.else.57

land.lhs.true.26:                                 ; preds = %if.else
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 3
  %23 = load float, float* %yy27, align 4, !tbaa !14
  %conv28 = fpext float %23 to double
  %cmp29 = fcmp oeq double %conv28, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else.57

if.then.31:                                       ; preds = %land.lhs.true.26
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 1
  %25 = load float, float* %xy32, align 4, !tbaa !19
  %conv33 = fpext float %25 to double
  %cmp34 = fcmp oeq double %conv33, 0.000000e+00
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.31
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx37 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 2
  %27 = load float, float* %yx37, align 4, !tbaa !20
  %conv38 = fpext float %27 to double
  %cmp39 = fcmp oeq double %conv38, 0.000000e+00
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.36, %if.then.31
  store i32 -23, i32* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.36
  %28 = load double, double* %y.addr, align 8, !tbaa !8
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 5
  %30 = load float, float* %ty43, align 4, !tbaa !12
  %conv44 = fpext float %30 to double
  %sub45 = fsub double %28, %conv44
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 1
  %32 = load float, float* %xy46, align 4, !tbaa !19
  %conv47 = fpext float %32 to double
  %div48 = fdiv double %sub45, %conv47
  %33 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %33, i32 0, i32 0
  store double %div48, double* %x49, align 8, !tbaa !29
  %34 = load double, double* %x.addr, align 8, !tbaa !8
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  %36 = load float, float* %tx50, align 4, !tbaa !10
  %conv51 = fpext float %36 to double
  %sub52 = fsub double %34, %conv51
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 2
  %38 = load float, float* %yx53, align 4, !tbaa !20
  %conv54 = fpext float %38 to double
  %div55 = fdiv double %sub52, %conv54
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i32 0, i32 1
  store double %div55, double* %y56, align 8, !tbaa !31
  store i32 0, i32* %retval
  br label %return

if.else.57:                                       ; preds = %land.lhs.true.26, %if.else
  %40 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %42, %struct.gs_matrix_s* %imat) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %43 = load i32, i32* %code, align 4, !tbaa !28
  %cmp58 = icmp slt i32 %43, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.57
  %44 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.else.57
  %45 = load double, double* %x.addr, align 8, !tbaa !8
  %46 = load double, double* %y.addr, align 8, !tbaa !8
  %47 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call62 = call i32 @gs_point_transform(double %45, double %46, %struct.gs_matrix_s* %imat, %struct.gs_point_s* %47) #5
  store i32 %call62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.60
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %49) #1
  br label %return

return:                                           ; preds = %cleanup, %if.end.42, %if.then.41, %if.end, %if.then.11
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform_inverse(double %dx, double %dy, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pdpt) #0 {
entry:
  %retval = alloca i32, align 4
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  %det = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %dx, double* %dx.addr, align 8, !tbaa !8
  store double %dy, double* %dy.addr, align 8, !tbaa !8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !19
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !20
  %conv2 = fpext float %3 to double
  %cmp3 = fcmp oeq double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !13
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp oeq double %conv5, 0.000000e+00
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 3
  %7 = load float, float* %yy, align 4, !tbaa !14
  %conv8 = fpext float %7 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load double, double* %dx.addr, align 8, !tbaa !8
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 0
  %10 = load float, float* %xx12, align 4, !tbaa !13
  %conv13 = fpext float %10 to double
  %div = fdiv double %8, %conv13
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  store double %div, double* %x, align 8, !tbaa !29
  %12 = load double, double* %dy.addr, align 8, !tbaa !8
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 3
  %14 = load float, float* %yy14, align 4, !tbaa !14
  %conv15 = fpext float %14 to double
  %div16 = fdiv double %12, %conv15
  %15 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 1
  store double %div16, double* %y, align 8, !tbaa !31
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 0
  %17 = load float, float* %xx17, align 4, !tbaa !13
  %conv18 = fpext float %17 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.46

land.lhs.true.21:                                 ; preds = %if.else
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 3
  %19 = load float, float* %yy22, align 4, !tbaa !14
  %conv23 = fpext float %19 to double
  %cmp24 = fcmp oeq double %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.else.46

if.then.26:                                       ; preds = %land.lhs.true.21
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 1
  %21 = load float, float* %xy27, align 4, !tbaa !19
  %conv28 = fpext float %21 to double
  %cmp29 = fcmp oeq double %conv28, 0.000000e+00
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.26
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 2
  %23 = load float, float* %yx32, align 4, !tbaa !20
  %conv33 = fpext float %23 to double
  %cmp34 = fcmp oeq double %conv33, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %if.then.26
  store i32 -23, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.31
  %24 = load double, double* %dy.addr, align 8, !tbaa !8
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 1
  %26 = load float, float* %xy38, align 4, !tbaa !19
  %conv39 = fpext float %26 to double
  %div40 = fdiv double %24, %conv39
  %27 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %27, i32 0, i32 0
  store double %div40, double* %x41, align 8, !tbaa !29
  %28 = load double, double* %dx.addr, align 8, !tbaa !8
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 2
  %30 = load float, float* %yx42, align 4, !tbaa !20
  %conv43 = fpext float %30 to double
  %div44 = fdiv double %28, %conv43
  %31 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %31, i32 0, i32 1
  store double %div44, double* %y45, align 8, !tbaa !31
  br label %if.end.75

if.else.46:                                       ; preds = %land.lhs.true.21, %if.else
  %32 = bitcast double* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 0
  %34 = load float, float* %xx47, align 4, !tbaa !13
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy48 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 3
  %36 = load float, float* %yy48, align 4, !tbaa !14
  %mul = fmul float %34, %36
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 1
  %38 = load float, float* %xy49, align 4, !tbaa !19
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 2
  %40 = load float, float* %yx50, align 4, !tbaa !20
  %mul51 = fmul float %38, %40
  %sub = fsub float %mul, %mul51
  %conv52 = fpext float %sub to double
  store double %conv52, double* %det, align 8, !tbaa !8
  %41 = load double, double* %det, align 8, !tbaa !8
  %cmp53 = fcmp oeq double %41, 0.000000e+00
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.46
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.else.46
  %42 = load double, double* %dx.addr, align 8, !tbaa !8
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 3
  %44 = load float, float* %yy57, align 4, !tbaa !14
  %conv58 = fpext float %44 to double
  %mul59 = fmul double %42, %conv58
  %45 = load double, double* %dy.addr, align 8, !tbaa !8
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %46, i32 0, i32 2
  %47 = load float, float* %yx60, align 4, !tbaa !20
  %conv61 = fpext float %47 to double
  %mul62 = fmul double %45, %conv61
  %sub63 = fsub double %mul59, %mul62
  %48 = load double, double* %det, align 8, !tbaa !8
  %div64 = fdiv double %sub63, %48
  %49 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %49, i32 0, i32 0
  store double %div64, double* %x65, align 8, !tbaa !29
  %50 = load double, double* %dy.addr, align 8, !tbaa !8
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx66 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 0
  %52 = load float, float* %xx66, align 4, !tbaa !13
  %conv67 = fpext float %52 to double
  %mul68 = fmul double %50, %conv67
  %53 = load double, double* %dx.addr, align 8, !tbaa !8
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 1
  %55 = load float, float* %xy69, align 4, !tbaa !19
  %conv70 = fpext float %55 to double
  %mul71 = fmul double %53, %conv70
  %sub72 = fsub double %mul68, %mul71
  %56 = load double, double* %det, align 8, !tbaa !8
  %div73 = fdiv double %sub72, %56
  %57 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %y74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %57, i32 0, i32 1
  store double %div73, double* %y74, align 8, !tbaa !31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55
  %58 = bitcast double* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.75

if.end.75:                                        ; preds = %cleanup.cont, %if.end.37
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.76, %cleanup, %if.then.36, %if.then.11
  %59 = load i32, i32* %retval
  ret i32 %59

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gs_points_bbox(%struct.gs_point_s* %pts, %struct.gs_rect_s* %pbox) #0 {
entry:
  %pts.addr = alloca %struct.gs_point_s*, align 8
  %pbox.addr = alloca %struct.gs_rect_s*, align 8
  %min01 = alloca double, align 8
  %max01 = alloca double, align 8
  %min23 = alloca double, align 8
  %max23 = alloca double, align 8
  %min0135 = alloca double, align 8
  %max0136 = alloca double, align 8
  %min2337 = alloca double, align 8
  %max2338 = alloca double, align 8
  store %struct.gs_point_s* %pts, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast double* %min01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %max01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %min23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %max23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i64 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %5 = load double, double* %x, align 8, !tbaa !29
  %6 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 1
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx1, i32 0, i32 0
  %7 = load double, double* %x2, align 8, !tbaa !29
  %cmp = fcmp olt double %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i64 0
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx3, i32 0, i32 0
  %9 = load double, double* %x4, align 8, !tbaa !29
  store double %9, double* %min01, align 8, !tbaa !8
  %10 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i64 1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx5, i32 0, i32 0
  %11 = load double, double* %x6, align 8, !tbaa !29
  store double %11, double* %max01, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %12, i64 1
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx7, i32 0, i32 0
  %13 = load double, double* %x8, align 8, !tbaa !29
  store double %13, double* %min01, align 8, !tbaa !8
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i64 0
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx9, i32 0, i32 0
  %15 = load double, double* %x10, align 8, !tbaa !29
  store double %15, double* %max01, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %16, i64 2
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx11, i32 0, i32 0
  %17 = load double, double* %x12, align 8, !tbaa !29
  %18 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %18, i64 3
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx13, i32 0, i32 0
  %19 = load double, double* %x14, align 8, !tbaa !29
  %cmp15 = fcmp olt double %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.end
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i64 2
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx17, i32 0, i32 0
  %21 = load double, double* %x18, align 8, !tbaa !29
  store double %21, double* %min23, align 8, !tbaa !8
  %22 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i64 3
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx19, i32 0, i32 0
  %23 = load double, double* %x20, align 8, !tbaa !29
  store double %23, double* %max23, align 8, !tbaa !8
  br label %if.end.26

if.else.21:                                       ; preds = %if.end
  %24 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %24, i64 3
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx22, i32 0, i32 0
  %25 = load double, double* %x23, align 8, !tbaa !29
  store double %25, double* %min23, align 8, !tbaa !8
  %26 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %26, i64 2
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx24, i32 0, i32 0
  %27 = load double, double* %x25, align 8, !tbaa !29
  store double %27, double* %max23, align 8, !tbaa !8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.then.16
  %28 = load double, double* %min01, align 8, !tbaa !8
  %29 = load double, double* %min23, align 8, !tbaa !8
  %cmp27 = fcmp olt double %28, %29
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %30 = load double, double* %min01, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  %31 = load double, double* %min23, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %30, %cond.true ], [ %31, %cond.false ]
  %32 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %32, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %cond, double* %x28, align 8, !tbaa !32
  %33 = load double, double* %max01, align 8, !tbaa !8
  %34 = load double, double* %max23, align 8, !tbaa !8
  %cmp29 = fcmp ogt double %33, %34
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end
  %35 = load double, double* %max01, align 8, !tbaa !8
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  %36 = load double, double* %max23, align 8, !tbaa !8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi double [ %35, %cond.true.30 ], [ %36, %cond.false.31 ]
  %37 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %37, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %cond33, double* %x34, align 8, !tbaa !34
  %38 = bitcast double* %max23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast double* %min23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %max01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast double* %min01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast double* %min0135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast double* %max0136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast double* %min2337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = bitcast double* %max2338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %46, i64 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx39, i32 0, i32 1
  %47 = load double, double* %y, align 8, !tbaa !31
  %48 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %48, i64 1
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx40, i32 0, i32 1
  %49 = load double, double* %y41, align 8, !tbaa !31
  %cmp42 = fcmp olt double %47, %49
  br i1 %cmp42, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %cond.end.32
  %50 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %50, i64 0
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx44, i32 0, i32 1
  %51 = load double, double* %y45, align 8, !tbaa !31
  store double %51, double* %min0135, align 8, !tbaa !8
  %52 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %52, i64 1
  %y47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx46, i32 0, i32 1
  %53 = load double, double* %y47, align 8, !tbaa !31
  store double %53, double* %max0136, align 8, !tbaa !8
  br label %if.end.53

if.else.48:                                       ; preds = %cond.end.32
  %54 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %54, i64 1
  %y50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx49, i32 0, i32 1
  %55 = load double, double* %y50, align 8, !tbaa !31
  store double %55, double* %min0135, align 8, !tbaa !8
  %56 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %56, i64 0
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx51, i32 0, i32 1
  %57 = load double, double* %y52, align 8, !tbaa !31
  store double %57, double* %max0136, align 8, !tbaa !8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.43
  %58 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %58, i64 2
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx54, i32 0, i32 1
  %59 = load double, double* %y55, align 8, !tbaa !31
  %60 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %60, i64 3
  %y57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx56, i32 0, i32 1
  %61 = load double, double* %y57, align 8, !tbaa !31
  %cmp58 = fcmp olt double %59, %61
  br i1 %cmp58, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %if.end.53
  %62 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %62, i64 2
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx60, i32 0, i32 1
  %63 = load double, double* %y61, align 8, !tbaa !31
  store double %63, double* %min2337, align 8, !tbaa !8
  %64 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %64, i64 3
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx62, i32 0, i32 1
  %65 = load double, double* %y63, align 8, !tbaa !31
  store double %65, double* %max2338, align 8, !tbaa !8
  br label %if.end.69

if.else.64:                                       ; preds = %if.end.53
  %66 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %66, i64 3
  %y66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx65, i32 0, i32 1
  %67 = load double, double* %y66, align 8, !tbaa !31
  store double %67, double* %min2337, align 8, !tbaa !8
  %68 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %68, i64 2
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx67, i32 0, i32 1
  %69 = load double, double* %y68, align 8, !tbaa !31
  store double %69, double* %max2338, align 8, !tbaa !8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.64, %if.then.59
  %70 = load double, double* %min0135, align 8, !tbaa !8
  %71 = load double, double* %min2337, align 8, !tbaa !8
  %cmp70 = fcmp olt double %70, %71
  br i1 %cmp70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.end.69
  %72 = load double, double* %min0135, align 8, !tbaa !8
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.end.69
  %73 = load double, double* %min2337, align 8, !tbaa !8
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi double [ %72, %cond.true.71 ], [ %73, %cond.false.72 ]
  %74 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p75 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %74, i32 0, i32 0
  %y76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p75, i32 0, i32 1
  store double %cond74, double* %y76, align 8, !tbaa !35
  %75 = load double, double* %max0136, align 8, !tbaa !8
  %76 = load double, double* %max2338, align 8, !tbaa !8
  %cmp77 = fcmp ogt double %75, %76
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.end.73
  %77 = load double, double* %max0136, align 8, !tbaa !8
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.73
  %78 = load double, double* %max2338, align 8, !tbaa !8
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi double [ %77, %cond.true.78 ], [ %78, %cond.false.79 ]
  %79 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q82 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %79, i32 0, i32 1
  %y83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q82, i32 0, i32 1
  store double %cond81, double* %y83, align 8, !tbaa !36
  %80 = bitcast double* %max2338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast double* %min2337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast double* %max0136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast double* %min0135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_bbox_transform(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_rect_s* %pbox_out) #0 {
entry:
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pbox_out.addr = alloca %struct.gs_rect_s*, align 8
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox_out, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  %0 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  %call = call i32 @bbox_transform_either(%struct.gs_rect_s* %0, %struct.gs_matrix_s* %1, %struct.gs_rect_s* %2, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_transform_either(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_rect_s* %pbox_out, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %point_xform) #0 {
entry:
  %retval = alloca i32, align 4
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pbox_out.addr = alloca %struct.gs_rect_s*, align 8
  %point_xform.addr = alloca i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, align 8
  %code = alloca i32, align 4
  %pts = alloca [4 x %struct.gs_point_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox_out, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  store i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %point_xform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %pts, i32 0, i32 0
  %4 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %call = call i32 @bbox_transform_either_only(%struct.gs_rect_s* %2, %struct.gs_matrix_s* %3, %struct.gs_point_s* %arraydecay, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %4) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4 x %struct.gs_point_s], [4 x %struct.gs_point_s]* %pts, i32 0, i32 0
  %6 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_points_bbox(%struct.gs_point_s* %arraydecay1, %struct.gs_rect_s* %6) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast [4 x %struct.gs_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 64, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gs_bbox_transform_only(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %points) #0 {
entry:
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %points.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %points, %struct.gs_point_s** %points.addr, align 8, !tbaa !1
  %0 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %points.addr, align 8, !tbaa !1
  %call = call i32 @bbox_transform_either_only(%struct.gs_rect_s* %0, %struct.gs_matrix_s* %1, %struct.gs_point_s* %2, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_transform_either_only(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_point_s* %pts, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %point_xform) #0 {
entry:
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pts.addr = alloca %struct.gs_point_s*, align 8
  %point_xform.addr = alloca i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, align 8
  %code = alloca i32, align 4
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pts, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  store i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %point_xform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %3 = load double, double* %x, align 8, !tbaa !32
  %4 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %5 = load double, double* %y, align 8, !tbaa !35
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %7, i64 0
  %call = call i32 %1(double %3, double %5, %struct.gs_matrix_s* %6, %struct.gs_point_s* %arrayidx) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %9 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %9, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %10 = load double, double* %x3, align 8, !tbaa !32
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %11, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %12 = load double, double* %y4, align 8, !tbaa !36
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i64 1
  %call6 = call i32 %8(double %10, double %12, %struct.gs_matrix_s* %13, %struct.gs_point_s* %arrayidx5) #5
  store i32 %call6, i32* %code, align 4, !tbaa !28
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %15 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %q9 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q9, i32 0, i32 0
  %17 = load double, double* %x10, align 8, !tbaa !34
  %18 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %p11 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %18, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p11, i32 0, i32 1
  %19 = load double, double* %y12, align 8, !tbaa !35
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %21 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i64 2
  %call14 = call i32 %15(double %17, double %19, %struct.gs_matrix_s* %20, %struct.gs_point_s* %arrayidx13) #5
  store i32 %call14, i32* %code, align 4, !tbaa !28
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.8
  %22 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %point_xform.addr, align 8, !tbaa !1
  %23 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %q17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %23, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q17, i32 0, i32 0
  %24 = load double, double* %x18, align 8, !tbaa !34
  %25 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %q19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %25, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q19, i32 0, i32 1
  %26 = load double, double* %y20, align 8, !tbaa !36
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %28 = load %struct.gs_point_s*, %struct.gs_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %28, i64 3
  %call22 = call i32 %22(double %24, double %26, %struct.gs_matrix_s* %27, %struct.gs_point_s* %arrayidx21) #5
  store i32 %call22, i32* %code, align 4, !tbaa !28
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.8, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.16
  %29 = load i32, i32* %code, align 4, !tbaa !28
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %pbox_in, %struct.gs_matrix_s* %pmat, %struct.gs_rect_s* %pbox_out) #0 {
entry:
  %pbox_in.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pbox_out.addr = alloca %struct.gs_rect_s*, align 8
  store %struct.gs_rect_s* %pbox_in, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox_out, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  %0 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox_out.addr, align 8, !tbaa !1
  %call = call i32 @bbox_transform_either(%struct.gs_rect_s* %0, %struct.gs_matrix_s* %1, %struct.gs_rect_s* %2, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform_inverse) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %pfmat, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %pfmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_fixed_s* %pfmat, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_matrix_fixed_s* %0 to %struct.gs_matrix_s*
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s* %1 to i8*
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 4, i1 false), !tbaa.struct !5
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 4
  %6 = load float, float* %tx, align 4, !tbaa !10
  %conv = fpext float %6 to double
  %cmp = fcmp oge double %conv, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 4
  %8 = load float, float* %tx2, align 4, !tbaa !10
  %conv3 = fpext float %8 to double
  %cmp4 = fcmp olt double %conv3, 8.388608e+06
  br i1 %cmp4, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 5
  %10 = load float, float* %ty, align 4, !tbaa !12
  %conv7 = fpext float %10 to double
  %cmp8 = fcmp oge double %conv7, -8.388608e+06
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 5
  %12 = load float, float* %ty11, align 4, !tbaa !12
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp olt double %conv12, 8.388608e+06
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 4
  %14 = load float, float* %tx15, align 4, !tbaa !10
  %mul = fmul float %14, 2.560000e+02
  %conv16 = fptosi float %mul to i32
  %15 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %15, i32 0, i32 6
  store i32 %conv16, i32* %tx_fixed, align 4, !tbaa !37
  %conv17 = sitofp i32 %conv16 to double
  %mul18 = fmul double %conv17, 3.906250e-03
  %conv19 = fptrunc double %mul18 to float
  %16 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %tx20 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %16, i32 0, i32 4
  store float %conv19, float* %tx20, align 4, !tbaa !39
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 5
  %18 = load float, float* %ty21, align 4, !tbaa !12
  %mul22 = fmul float %18, 2.560000e+02
  %conv23 = fptosi float %mul22 to i32
  %19 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %19, i32 0, i32 7
  store i32 %conv23, i32* %ty_fixed, align 4, !tbaa !40
  %conv24 = sitofp i32 %conv23 to double
  %mul25 = fmul double %conv24, 3.906250e-03
  %conv26 = fptrunc double %mul25 to float
  %20 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %ty27 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %20, i32 0, i32 5
  store float %conv26, float* %ty27, align 4, !tbaa !41
  %21 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %21, i32 0, i32 8
  store i32 1, i32* %txy_fixed_valid, align 4, !tbaa !42
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %entry
  %22 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pfmat.addr, align 8, !tbaa !1
  %txy_fixed_valid28 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %22, i32 0, i32 8
  store i32 0, i32* %txy_fixed_valid28, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %pmat, double %x, double %y, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %t = alloca i32, align 4
  %xtemp = alloca double, align 8
  %ytemp = alloca double, align 8
  %code = alloca i32, align 4
  %fpt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !8
  store double %y, double* %y.addr, align 8, !tbaa !8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast double* %xtemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %ytemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %txy_fixed_valid = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %6, i32 0, i32 8
  %7 = load i32, i32* %txy_fixed_valid, align 4, !tbaa !42
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %8 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load double, double* %x.addr, align 8, !tbaa !8
  %10 = load double, double* %y.addr, align 8, !tbaa !8
  %11 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_matrix_fixed_s* %11 to %struct.gs_matrix_s*
  %call = call i32 @gs_point_transform(double %9, double %10, %struct.gs_matrix_s* %12, %struct.gs_point_s* %fpt) #5
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %13 = load double, double* %x1, align 8, !tbaa !29
  %cmp = fcmp oge double %13, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.then
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %14 = load double, double* %x2, align 8, !tbaa !29
  %cmp3 = fcmp olt double %14, 8.388608e+06
  br i1 %cmp3, label %land.lhs.true.4, label %if.then.10

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %15 = load double, double* %y5, align 8, !tbaa !31
  %cmp6 = fcmp oge double %15, -8.388608e+06
  br i1 %cmp6, label %land.lhs.true.7, label %if.then.10

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %16 = load double, double* %y8, align 8, !tbaa !31
  %cmp9 = fcmp olt double %16, 8.388608e+06
  br i1 %cmp9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %if.then
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.7
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %17 = load double, double* %x11, align 8, !tbaa !29
  %mul = fmul double %17, 2.560000e+02
  %conv = fptosi double %mul to i32
  %18 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  store i32 %conv, i32* %x12, align 4, !tbaa !43
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %19 = load double, double* %y13, align 8, !tbaa !31
  %mul14 = fmul double %19, 2.560000e+02
  %conv15 = fptosi double %mul14 to i32
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 1
  store i32 %conv15, i32* %y16, align 4, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %21 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  br label %cleanup.246

if.end.17:                                        ; preds = %entry
  %22 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %22, i32 0, i32 1
  %23 = load float, float* %xy, align 4, !tbaa !46
  %conv18 = fpext float %23 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  %24 = load double, double* %y.addr, align 8, !tbaa !8
  %25 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %25, i32 0, i32 2
  %26 = load float, float* %yx, align 4, !tbaa !47
  %conv22 = fpext float %26 to double
  %mul23 = fmul double %24, %conv22
  store double %mul23, double* %xtemp, align 8, !tbaa !8
  %27 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp24 = fcmp oge double %27, -8.388608e+06
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.21
  %28 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp26 = fcmp olt double %28, 8.388608e+06
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.21
  %29 = phi i1 [ false, %if.then.21 ], [ %cmp26, %land.rhs ]
  %cond = select i1 %29, i32 0, i32 -13
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %cond, 0
  br i1 %cmp28, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %30 = load double, double* %x.addr, align 8, !tbaa !8
  %31 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xy30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %31, i32 0, i32 1
  %32 = load float, float* %xy30, align 4, !tbaa !46
  %conv31 = fpext float %32 to double
  %mul32 = fmul double %30, %conv31
  store double %mul32, double* %ytemp, align 8, !tbaa !8
  %33 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp33 = fcmp oge double %33, -8.388608e+06
  br i1 %cmp33, label %land.rhs.35, label %land.end.38

land.rhs.35:                                      ; preds = %lor.lhs.false
  %34 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp36 = fcmp olt double %34, 8.388608e+06
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.35, %lor.lhs.false
  %35 = phi i1 [ false, %lor.lhs.false ], [ %cmp36, %land.rhs.35 ]
  %cond39 = select i1 %35, i32 0, i32 -13
  store i32 %cond39, i32* %code, align 4, !tbaa !28
  %cmp40 = icmp slt i32 %cond39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.end.38, %land.end
  %36 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.43:                                        ; preds = %land.end.38
  %37 = load double, double* %xtemp, align 8, !tbaa !8
  %mul44 = fmul double %37, 2.560000e+02
  %conv45 = fptosi double %mul44 to i32
  store i32 %conv45, i32* %px, align 4, !tbaa !28
  %38 = load double, double* %ytemp, align 8, !tbaa !8
  %mul46 = fmul double %38, 2.560000e+02
  %conv47 = fptosi double %mul46 to i32
  store i32 %conv47, i32* %py, align 4, !tbaa !28
  %39 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %39, i32 0, i32 0
  %40 = load float, float* %xx, align 4, !tbaa !48
  %conv48 = fpext float %40 to double
  %cmp49 = fcmp oeq double %conv48, 0.000000e+00
  br i1 %cmp49, label %if.end.83, label %if.then.51

if.then.51:                                       ; preds = %if.end.43
  %41 = load double, double* %x.addr, align 8, !tbaa !8
  %42 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xx52 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %42, i32 0, i32 0
  %43 = load float, float* %xx52, align 4, !tbaa !48
  %conv53 = fpext float %43 to double
  %mul54 = fmul double %41, %conv53
  store double %mul54, double* %xtemp, align 8, !tbaa !8
  %44 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp55 = fcmp oge double %44, -8.388608e+06
  br i1 %cmp55, label %land.rhs.57, label %land.end.60

land.rhs.57:                                      ; preds = %if.then.51
  %45 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp58 = fcmp olt double %45, 8.388608e+06
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.57, %if.then.51
  %46 = phi i1 [ false, %if.then.51 ], [ %cmp58, %land.rhs.57 ]
  %cond61 = select i1 %46, i32 0, i32 -13
  store i32 %cond61, i32* %code, align 4, !tbaa !28
  %cmp62 = icmp slt i32 %cond61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.end.60
  %47 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.65:                                        ; preds = %land.end.60
  %48 = load double, double* %xtemp, align 8, !tbaa !8
  %mul66 = fmul double %48, 2.560000e+02
  %conv67 = fptosi double %mul66 to i32
  store i32 %conv67, i32* %t, align 4, !tbaa !28
  %49 = load i32, i32* %px, align 4, !tbaa !28
  %50 = load i32, i32* %t, align 4, !tbaa !28
  %xor = xor i32 %49, %50
  %cmp68 = icmp sge i32 %xor, 0
  br i1 %cmp68, label %land.lhs.true.70, label %cond.false

land.lhs.true.70:                                 ; preds = %if.end.65
  %51 = load i32, i32* %px, align 4, !tbaa !28
  %52 = load i32, i32* %t, align 4, !tbaa !28
  %add = add nsw i32 %51, %52
  %53 = load i32, i32* %px, align 4, !tbaa !28
  %xor71 = xor i32 %add, %53
  %cmp72 = icmp slt i32 %xor71, 0
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.70
  %54 = load i32, i32* %px, align 4, !tbaa !28
  %cmp74 = icmp slt i32 %54, 0
  %cond76 = select i1 %cmp74, i32 -2147483648, i32 2147483647
  store i32 %cond76, i32* %px, align 4, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.70, %if.end.65
  %55 = load i32, i32* %px, align 4, !tbaa !28
  %56 = load i32, i32* %t, align 4, !tbaa !28
  %add77 = add nsw i32 %55, %56
  store i32 %add77, i32* %px, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond78 = phi i32 [ -13, %cond.true ], [ 0, %cond.false ]
  store i32 %cond78, i32* %code, align 4, !tbaa !28
  %cmp79 = icmp slt i32 %cond78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %cond.end
  %57 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.82:                                        ; preds = %cond.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.43
  %58 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %58, i32 0, i32 3
  %59 = load float, float* %yy, align 4, !tbaa !49
  %conv84 = fpext float %59 to double
  %cmp85 = fcmp oeq double %conv84, 0.000000e+00
  br i1 %cmp85, label %if.end.124, label %if.then.87

if.then.87:                                       ; preds = %if.end.83
  %60 = load double, double* %y.addr, align 8, !tbaa !8
  %61 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yy88 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %61, i32 0, i32 3
  %62 = load float, float* %yy88, align 4, !tbaa !49
  %conv89 = fpext float %62 to double
  %mul90 = fmul double %60, %conv89
  store double %mul90, double* %ytemp, align 8, !tbaa !8
  %63 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp91 = fcmp oge double %63, -8.388608e+06
  br i1 %cmp91, label %land.rhs.93, label %land.end.96

land.rhs.93:                                      ; preds = %if.then.87
  %64 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp94 = fcmp olt double %64, 8.388608e+06
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.93, %if.then.87
  %65 = phi i1 [ false, %if.then.87 ], [ %cmp94, %land.rhs.93 ]
  %cond97 = select i1 %65, i32 0, i32 -13
  store i32 %cond97, i32* %code, align 4, !tbaa !28
  %cmp98 = icmp slt i32 %cond97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.end.96
  %66 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.101:                                       ; preds = %land.end.96
  %67 = load double, double* %ytemp, align 8, !tbaa !8
  %mul102 = fmul double %67, 2.560000e+02
  %conv103 = fptosi double %mul102 to i32
  store i32 %conv103, i32* %t, align 4, !tbaa !28
  %68 = load i32, i32* %py, align 4, !tbaa !28
  %69 = load i32, i32* %t, align 4, !tbaa !28
  %xor104 = xor i32 %68, %69
  %cmp105 = icmp sge i32 %xor104, 0
  br i1 %cmp105, label %land.lhs.true.107, label %cond.false.116

land.lhs.true.107:                                ; preds = %if.end.101
  %70 = load i32, i32* %py, align 4, !tbaa !28
  %71 = load i32, i32* %t, align 4, !tbaa !28
  %add108 = add nsw i32 %70, %71
  %72 = load i32, i32* %py, align 4, !tbaa !28
  %xor109 = xor i32 %add108, %72
  %cmp110 = icmp slt i32 %xor109, 0
  br i1 %cmp110, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %land.lhs.true.107
  %73 = load i32, i32* %py, align 4, !tbaa !28
  %cmp113 = icmp slt i32 %73, 0
  %cond115 = select i1 %cmp113, i32 -2147483648, i32 2147483647
  store i32 %cond115, i32* %py, align 4, !tbaa !28
  br label %cond.end.118

cond.false.116:                                   ; preds = %land.lhs.true.107, %if.end.101
  %74 = load i32, i32* %py, align 4, !tbaa !28
  %75 = load i32, i32* %t, align 4, !tbaa !28
  %add117 = add nsw i32 %74, %75
  store i32 %add117, i32* %py, align 4, !tbaa !28
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.true.112
  %cond119 = phi i32 [ -13, %cond.true.112 ], [ 0, %cond.false.116 ]
  store i32 %cond119, i32* %code, align 4, !tbaa !28
  %cmp120 = icmp slt i32 %cond119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %cond.end.118
  %76 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.123:                                       ; preds = %cond.end.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.83
  br label %if.end.198

if.else:                                          ; preds = %if.end.17
  %77 = load double, double* %x.addr, align 8, !tbaa !8
  %78 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xx125 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %78, i32 0, i32 0
  %79 = load float, float* %xx125, align 4, !tbaa !48
  %conv126 = fpext float %79 to double
  %mul127 = fmul double %77, %conv126
  store double %mul127, double* %xtemp, align 8, !tbaa !8
  %80 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp128 = fcmp oge double %80, -8.388608e+06
  br i1 %cmp128, label %land.rhs.130, label %land.end.133

land.rhs.130:                                     ; preds = %if.else
  %81 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp131 = fcmp olt double %81, 8.388608e+06
  br label %land.end.133

land.end.133:                                     ; preds = %land.rhs.130, %if.else
  %82 = phi i1 [ false, %if.else ], [ %cmp131, %land.rhs.130 ]
  %cond134 = select i1 %82, i32 0, i32 -13
  store i32 %cond134, i32* %code, align 4, !tbaa !28
  %cmp135 = icmp slt i32 %cond134, 0
  br i1 %cmp135, label %if.then.150, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.end.133
  %83 = load double, double* %y.addr, align 8, !tbaa !8
  %84 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yy138 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %84, i32 0, i32 3
  %85 = load float, float* %yy138, align 4, !tbaa !49
  %conv139 = fpext float %85 to double
  %mul140 = fmul double %83, %conv139
  store double %mul140, double* %ytemp, align 8, !tbaa !8
  %86 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp141 = fcmp oge double %86, -8.388608e+06
  br i1 %cmp141, label %land.rhs.143, label %land.end.146

land.rhs.143:                                     ; preds = %lor.lhs.false.137
  %87 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp144 = fcmp olt double %87, 8.388608e+06
  br label %land.end.146

land.end.146:                                     ; preds = %land.rhs.143, %lor.lhs.false.137
  %88 = phi i1 [ false, %lor.lhs.false.137 ], [ %cmp144, %land.rhs.143 ]
  %cond147 = select i1 %88, i32 0, i32 -13
  store i32 %cond147, i32* %code, align 4, !tbaa !28
  %cmp148 = icmp slt i32 %cond147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.end.146, %land.end.133
  %89 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.151:                                       ; preds = %land.end.146
  %90 = load double, double* %xtemp, align 8, !tbaa !8
  %mul152 = fmul double %90, 2.560000e+02
  %conv153 = fptosi double %mul152 to i32
  store i32 %conv153, i32* %px, align 4, !tbaa !28
  %91 = load double, double* %ytemp, align 8, !tbaa !8
  %mul154 = fmul double %91, 2.560000e+02
  %conv155 = fptosi double %mul154 to i32
  store i32 %conv155, i32* %py, align 4, !tbaa !28
  %92 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yx156 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %92, i32 0, i32 2
  %93 = load float, float* %yx156, align 4, !tbaa !47
  %conv157 = fpext float %93 to double
  %cmp158 = fcmp oeq double %conv157, 0.000000e+00
  br i1 %cmp158, label %if.end.197, label %if.then.160

if.then.160:                                      ; preds = %if.end.151
  %94 = load double, double* %y.addr, align 8, !tbaa !8
  %95 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yx161 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %95, i32 0, i32 2
  %96 = load float, float* %yx161, align 4, !tbaa !47
  %conv162 = fpext float %96 to double
  %mul163 = fmul double %94, %conv162
  store double %mul163, double* %ytemp, align 8, !tbaa !8
  %97 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp164 = fcmp oge double %97, -8.388608e+06
  br i1 %cmp164, label %land.rhs.166, label %land.end.169

land.rhs.166:                                     ; preds = %if.then.160
  %98 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp167 = fcmp olt double %98, 8.388608e+06
  br label %land.end.169

land.end.169:                                     ; preds = %land.rhs.166, %if.then.160
  %99 = phi i1 [ false, %if.then.160 ], [ %cmp167, %land.rhs.166 ]
  %cond170 = select i1 %99, i32 0, i32 -13
  store i32 %cond170, i32* %code, align 4, !tbaa !28
  %cmp171 = icmp slt i32 %cond170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %land.end.169
  %100 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.174:                                       ; preds = %land.end.169
  %101 = load double, double* %ytemp, align 8, !tbaa !8
  %mul175 = fmul double %101, 2.560000e+02
  %conv176 = fptosi double %mul175 to i32
  store i32 %conv176, i32* %t, align 4, !tbaa !28
  %102 = load i32, i32* %px, align 4, !tbaa !28
  %103 = load i32, i32* %t, align 4, !tbaa !28
  %xor177 = xor i32 %102, %103
  %cmp178 = icmp sge i32 %xor177, 0
  br i1 %cmp178, label %land.lhs.true.180, label %cond.false.189

land.lhs.true.180:                                ; preds = %if.end.174
  %104 = load i32, i32* %px, align 4, !tbaa !28
  %105 = load i32, i32* %t, align 4, !tbaa !28
  %add181 = add nsw i32 %104, %105
  %106 = load i32, i32* %px, align 4, !tbaa !28
  %xor182 = xor i32 %add181, %106
  %cmp183 = icmp slt i32 %xor182, 0
  br i1 %cmp183, label %cond.true.185, label %cond.false.189

cond.true.185:                                    ; preds = %land.lhs.true.180
  %107 = load i32, i32* %px, align 4, !tbaa !28
  %cmp186 = icmp slt i32 %107, 0
  %cond188 = select i1 %cmp186, i32 -2147483648, i32 2147483647
  store i32 %cond188, i32* %px, align 4, !tbaa !28
  br label %cond.end.191

cond.false.189:                                   ; preds = %land.lhs.true.180, %if.end.174
  %108 = load i32, i32* %px, align 4, !tbaa !28
  %109 = load i32, i32* %t, align 4, !tbaa !28
  %add190 = add nsw i32 %108, %109
  store i32 %add190, i32* %px, align 4, !tbaa !28
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.185
  %cond192 = phi i32 [ -13, %cond.true.185 ], [ 0, %cond.false.189 ]
  store i32 %cond192, i32* %code, align 4, !tbaa !28
  %cmp193 = icmp slt i32 %cond192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %cond.end.191
  %110 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.196:                                       ; preds = %cond.end.191
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.151
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.124
  %111 = load i32, i32* %px, align 4, !tbaa !28
  %112 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %112, i32 0, i32 6
  %113 = load i32, i32* %tx_fixed, align 4, !tbaa !37
  %xor199 = xor i32 %111, %113
  %cmp200 = icmp sge i32 %xor199, 0
  br i1 %cmp200, label %land.lhs.true.202, label %cond.false.213

land.lhs.true.202:                                ; preds = %if.end.198
  %114 = load i32, i32* %px, align 4, !tbaa !28
  %115 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %tx_fixed203 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %115, i32 0, i32 6
  %116 = load i32, i32* %tx_fixed203, align 4, !tbaa !37
  %add204 = add nsw i32 %114, %116
  %117 = load i32, i32* %px, align 4, !tbaa !28
  %xor205 = xor i32 %add204, %117
  %cmp206 = icmp slt i32 %xor205, 0
  br i1 %cmp206, label %cond.true.208, label %cond.false.213

cond.true.208:                                    ; preds = %land.lhs.true.202
  %118 = load i32, i32* %px, align 4, !tbaa !28
  %cmp209 = icmp slt i32 %118, 0
  %cond211 = select i1 %cmp209, i32 -2147483648, i32 2147483647
  %119 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %119, i32 0, i32 0
  store i32 %cond211, i32* %x212, align 4, !tbaa !43
  br label %cond.end.217

cond.false.213:                                   ; preds = %land.lhs.true.202, %if.end.198
  %120 = load i32, i32* %px, align 4, !tbaa !28
  %121 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %tx_fixed214 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %121, i32 0, i32 6
  %122 = load i32, i32* %tx_fixed214, align 4, !tbaa !37
  %add215 = add nsw i32 %120, %122
  %123 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x216 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %123, i32 0, i32 0
  store i32 %add215, i32* %x216, align 4, !tbaa !43
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.213, %cond.true.208
  %cond218 = phi i32 [ -13, %cond.true.208 ], [ 0, %cond.false.213 ]
  store i32 %cond218, i32* %code, align 4, !tbaa !28
  %cmp219 = icmp slt i32 %cond218, 0
  br i1 %cmp219, label %if.then.244, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %cond.end.217
  %124 = load i32, i32* %py, align 4, !tbaa !28
  %125 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %125, i32 0, i32 7
  %126 = load i32, i32* %ty_fixed, align 4, !tbaa !40
  %xor222 = xor i32 %124, %126
  %cmp223 = icmp sge i32 %xor222, 0
  br i1 %cmp223, label %land.lhs.true.225, label %cond.false.236

land.lhs.true.225:                                ; preds = %lor.lhs.false.221
  %127 = load i32, i32* %py, align 4, !tbaa !28
  %128 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %ty_fixed226 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %128, i32 0, i32 7
  %129 = load i32, i32* %ty_fixed226, align 4, !tbaa !40
  %add227 = add nsw i32 %127, %129
  %130 = load i32, i32* %py, align 4, !tbaa !28
  %xor228 = xor i32 %add227, %130
  %cmp229 = icmp slt i32 %xor228, 0
  br i1 %cmp229, label %cond.true.231, label %cond.false.236

cond.true.231:                                    ; preds = %land.lhs.true.225
  %131 = load i32, i32* %py, align 4, !tbaa !28
  %cmp232 = icmp slt i32 %131, 0
  %cond234 = select i1 %cmp232, i32 -2147483648, i32 2147483647
  %132 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y235 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %132, i32 0, i32 1
  store i32 %cond234, i32* %y235, align 4, !tbaa !45
  br label %cond.end.240

cond.false.236:                                   ; preds = %land.lhs.true.225, %lor.lhs.false.221
  %133 = load i32, i32* %py, align 4, !tbaa !28
  %134 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %ty_fixed237 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %134, i32 0, i32 7
  %135 = load i32, i32* %ty_fixed237, align 4, !tbaa !40
  %add238 = add nsw i32 %133, %135
  %136 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y239 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %136, i32 0, i32 1
  store i32 %add238, i32* %y239, align 4, !tbaa !45
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.236, %cond.true.231
  %cond241 = phi i32 [ -13, %cond.true.231 ], [ 0, %cond.false.236 ]
  store i32 %cond241, i32* %code, align 4, !tbaa !28
  %cmp242 = icmp slt i32 %cond241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %cond.end.240, %cond.end.217
  %137 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

if.end.245:                                       ; preds = %cond.end.240
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %if.end.245, %if.then.244, %if.then.195, %if.then.173, %if.then.150, %if.then.122, %if.then.100, %if.then.81, %if.then.64, %if.then.42, %cleanup
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast double* %ytemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast double* %xtemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define i32 @gs_point_transform2fixed_rounding(%struct.gs_matrix_fixed_s* %pmat, double %x, double %y, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %fpt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !8
  store double %y, double* %y.addr, align 8, !tbaa !8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load double, double* %x.addr, align 8, !tbaa !8
  %2 = load double, double* %y.addr, align 8, !tbaa !8
  %3 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_matrix_fixed_s* %3 to %struct.gs_matrix_s*
  %call = call i32 @gs_point_transform(double %1, double %2, %struct.gs_matrix_s* %4, %struct.gs_point_s* %fpt) #5
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %5 = load double, double* %x1, align 8, !tbaa !29
  %cmp = fcmp oge double %5, -8.388608e+06
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %6 = load double, double* %x2, align 8, !tbaa !29
  %cmp3 = fcmp olt double %6, 8.388608e+06
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %7 = load double, double* %y5, align 8, !tbaa !31
  %cmp6 = fcmp oge double %7, -8.388608e+06
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %8 = load double, double* %y8, align 8, !tbaa !31
  %cmp9 = fcmp olt double %8, 8.388608e+06
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.7
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %9 = load double, double* %x10, align 8, !tbaa !29
  %mul = fmul double %9, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call11 = call double @floor(double %add) #6
  %conv = fptosi double %call11 to i32
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 0
  store i32 %conv, i32* %x12, align 4, !tbaa !43
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %11 = load double, double* %y13, align 8, !tbaa !31
  %mul14 = fmul double %11, 2.560000e+02
  %add15 = fadd double %mul14, 5.000000e-01
  %call16 = call double @floor(double %add15) #6
  %conv17 = fptosi double %call16 to i32
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  store i32 %conv17, i32* %y18, align 4, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %pmat, double %dx, double %dy, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %t = alloca i32, align 4
  %xtemp = alloca double, align 8
  %ytemp = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !8
  store double %dy, double* %dy.addr, align 8, !tbaa !8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast double* %xtemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %ytemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load double, double* %dx.addr, align 8, !tbaa !8
  %7 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %7, i32 0, i32 0
  %8 = load float, float* %xx, align 4, !tbaa !48
  %conv = fpext float %8 to double
  %mul = fmul double %6, %conv
  store double %mul, double* %xtemp, align 8, !tbaa !8
  %9 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp = fcmp oge double %9, -8.388608e+06
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %10 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp2 = fcmp olt double %10, 8.388608e+06
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %cond = select i1 %11, i32 0, i32 -13
  store i32 %cond, i32* %code, align 4, !tbaa !28
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %12 = load double, double* %dy.addr, align 8, !tbaa !8
  %13 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %13, i32 0, i32 3
  %14 = load float, float* %yy, align 4, !tbaa !49
  %conv6 = fpext float %14 to double
  %mul7 = fmul double %12, %conv6
  store double %mul7, double* %ytemp, align 8, !tbaa !8
  %15 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp8 = fcmp oge double %15, -8.388608e+06
  br i1 %cmp8, label %land.rhs.10, label %land.end.13

land.rhs.10:                                      ; preds = %lor.lhs.false
  %16 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp11 = fcmp olt double %16, 8.388608e+06
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.10, %lor.lhs.false
  %17 = phi i1 [ false, %lor.lhs.false ], [ %cmp11, %land.rhs.10 ]
  %cond14 = select i1 %17, i32 0, i32 -13
  store i32 %cond14, i32* %code, align 4, !tbaa !28
  %cmp15 = icmp slt i32 %cond14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.13, %land.end
  %18 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.end.13
  %19 = load double, double* %xtemp, align 8, !tbaa !8
  %mul17 = fmul double %19, 2.560000e+02
  %conv18 = fptosi double %mul17 to i32
  store i32 %conv18, i32* %px, align 4, !tbaa !28
  %20 = load double, double* %ytemp, align 8, !tbaa !8
  %mul19 = fmul double %20, 2.560000e+02
  %conv20 = fptosi double %mul19 to i32
  store i32 %conv20, i32* %py, align 4, !tbaa !28
  %21 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %21, i32 0, i32 2
  %22 = load float, float* %yx, align 4, !tbaa !47
  %conv21 = fpext float %22 to double
  %cmp22 = fcmp oeq double %conv21, 0.000000e+00
  br i1 %cmp22, label %if.end.55, label %if.then.24

if.then.24:                                       ; preds = %if.end
  %23 = load double, double* %dy.addr, align 8, !tbaa !8
  %24 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %yx25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %24, i32 0, i32 2
  %25 = load float, float* %yx25, align 4, !tbaa !47
  %conv26 = fpext float %25 to double
  %mul27 = fmul double %23, %conv26
  store double %mul27, double* %ytemp, align 8, !tbaa !8
  %26 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp28 = fcmp oge double %26, -8.388608e+06
  br i1 %cmp28, label %land.rhs.30, label %land.end.33

land.rhs.30:                                      ; preds = %if.then.24
  %27 = load double, double* %ytemp, align 8, !tbaa !8
  %cmp31 = fcmp olt double %27, 8.388608e+06
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.30, %if.then.24
  %28 = phi i1 [ false, %if.then.24 ], [ %cmp31, %land.rhs.30 ]
  %cond34 = select i1 %28, i32 0, i32 -13
  store i32 %cond34, i32* %code, align 4, !tbaa !28
  %cmp35 = icmp slt i32 %cond34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.end.33
  %29 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %land.end.33
  %30 = load double, double* %ytemp, align 8, !tbaa !8
  %mul39 = fmul double %30, 2.560000e+02
  %conv40 = fptosi double %mul39 to i32
  store i32 %conv40, i32* %t, align 4, !tbaa !28
  %31 = load i32, i32* %px, align 4, !tbaa !28
  %32 = load i32, i32* %t, align 4, !tbaa !28
  %xor = xor i32 %31, %32
  %cmp41 = icmp sge i32 %xor, 0
  br i1 %cmp41, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.38
  %33 = load i32, i32* %px, align 4, !tbaa !28
  %34 = load i32, i32* %t, align 4, !tbaa !28
  %add = add nsw i32 %33, %34
  %35 = load i32, i32* %px, align 4, !tbaa !28
  %xor43 = xor i32 %add, %35
  %cmp44 = icmp slt i32 %xor43, 0
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %36 = load i32, i32* %px, align 4, !tbaa !28
  %cmp46 = icmp slt i32 %36, 0
  %cond48 = select i1 %cmp46, i32 -2147483648, i32 2147483647
  store i32 %cond48, i32* %px, align 4, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.38
  %37 = load i32, i32* %px, align 4, !tbaa !28
  %38 = load i32, i32* %t, align 4, !tbaa !28
  %add49 = add nsw i32 %37, %38
  store i32 %add49, i32* %px, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond50 = phi i32 [ -13, %cond.true ], [ 0, %cond.false ]
  store i32 %cond50, i32* %code, align 4, !tbaa !28
  %cmp51 = icmp slt i32 %cond50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cond.end
  %39 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %cond.end
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end
  %40 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %40, i32 0, i32 1
  %41 = load float, float* %xy, align 4, !tbaa !46
  %conv56 = fpext float %41 to double
  %cmp57 = fcmp oeq double %conv56, 0.000000e+00
  br i1 %cmp57, label %if.end.96, label %if.then.59

if.then.59:                                       ; preds = %if.end.55
  %42 = load double, double* %dx.addr, align 8, !tbaa !8
  %43 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %xy60 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %43, i32 0, i32 1
  %44 = load float, float* %xy60, align 4, !tbaa !46
  %conv61 = fpext float %44 to double
  %mul62 = fmul double %42, %conv61
  store double %mul62, double* %xtemp, align 8, !tbaa !8
  %45 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp63 = fcmp oge double %45, -8.388608e+06
  br i1 %cmp63, label %land.rhs.65, label %land.end.68

land.rhs.65:                                      ; preds = %if.then.59
  %46 = load double, double* %xtemp, align 8, !tbaa !8
  %cmp66 = fcmp olt double %46, 8.388608e+06
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.65, %if.then.59
  %47 = phi i1 [ false, %if.then.59 ], [ %cmp66, %land.rhs.65 ]
  %cond69 = select i1 %47, i32 0, i32 -13
  store i32 %cond69, i32* %code, align 4, !tbaa !28
  %cmp70 = icmp slt i32 %cond69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.end.68
  %48 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %land.end.68
  %49 = load double, double* %xtemp, align 8, !tbaa !8
  %mul74 = fmul double %49, 2.560000e+02
  %conv75 = fptosi double %mul74 to i32
  store i32 %conv75, i32* %t, align 4, !tbaa !28
  %50 = load i32, i32* %py, align 4, !tbaa !28
  %51 = load i32, i32* %t, align 4, !tbaa !28
  %xor76 = xor i32 %50, %51
  %cmp77 = icmp sge i32 %xor76, 0
  br i1 %cmp77, label %land.lhs.true.79, label %cond.false.88

land.lhs.true.79:                                 ; preds = %if.end.73
  %52 = load i32, i32* %py, align 4, !tbaa !28
  %53 = load i32, i32* %t, align 4, !tbaa !28
  %add80 = add nsw i32 %52, %53
  %54 = load i32, i32* %py, align 4, !tbaa !28
  %xor81 = xor i32 %add80, %54
  %cmp82 = icmp slt i32 %xor81, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.88

cond.true.84:                                     ; preds = %land.lhs.true.79
  %55 = load i32, i32* %py, align 4, !tbaa !28
  %cmp85 = icmp slt i32 %55, 0
  %cond87 = select i1 %cmp85, i32 -2147483648, i32 2147483647
  store i32 %cond87, i32* %py, align 4, !tbaa !28
  br label %cond.end.90

cond.false.88:                                    ; preds = %land.lhs.true.79, %if.end.73
  %56 = load i32, i32* %py, align 4, !tbaa !28
  %57 = load i32, i32* %t, align 4, !tbaa !28
  %add89 = add nsw i32 %56, %57
  store i32 %add89, i32* %py, align 4, !tbaa !28
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.84
  %cond91 = phi i32 [ -13, %cond.true.84 ], [ 0, %cond.false.88 ]
  store i32 %cond91, i32* %code, align 4, !tbaa !28
  %cmp92 = icmp slt i32 %cond91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %cond.end.90
  %58 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %cond.end.90
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.55
  %59 = load i32, i32* %px, align 4, !tbaa !28
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %60, i32 0, i32 0
  store i32 %59, i32* %x, align 4, !tbaa !43
  %61 = load i32, i32* %py, align 4, !tbaa !28
  %62 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %62, i32 0, i32 1
  store i32 %61, i32* %y, align 4, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.then.94, %if.then.72, %if.then.53, %if.then.37, %if.then
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast double* %ytemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast double* %xtemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define i32 @sput_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %buf = alloca [25 x i8], align 16
  %cp = alloca i8*, align 8
  %b = alloca i8, align 1
  %coeff = alloca [6 x float], align 16
  %i = alloca i32, align 4
  %ignore = alloca i32, align 4
  %u = alloca float, align 4
  %v = alloca float, align 4
  %v39 = alloca float, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast [25 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 25, i8* %0) #1
  %1 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  store i8* %add.ptr, i8** %cp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  store i8 0, i8* %b, align 1, !tbaa !50
  %2 = bitcast [6 x float]* %coeff to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 0
  %6 = load float, float* %xx, align 4, !tbaa !13
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 0
  store float %6, float* %arrayidx, align 4, !tbaa !6
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 1
  %8 = load float, float* %xy, align 4, !tbaa !19
  %arrayidx1 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 1
  store float %8, float* %arrayidx1, align 4, !tbaa !6
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 2
  %10 = load float, float* %yx, align 4, !tbaa !20
  %arrayidx2 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 2
  store float %10, float* %arrayidx2, align 4, !tbaa !6
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 3
  %12 = load float, float* %yy, align 4, !tbaa !14
  %arrayidx3 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 3
  store float %12, float* %arrayidx3, align 4, !tbaa !6
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 4
  %14 = load float, float* %tx, align 4, !tbaa !10
  %arrayidx4 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 4
  store float %14, float* %arrayidx4, align 4, !tbaa !6
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 5
  %16 = load float, float* %ty, align 4, !tbaa !12
  %arrayidx5 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 5
  store float %16, float* %arrayidx5, align 4, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp slt i32 %17, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom
  %20 = load float, float* %arrayidx6, align 4, !tbaa !6
  store float %20, float* %u, align 4, !tbaa !6
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %i, align 4, !tbaa !28
  %xor = xor i32 %22, 3
  %idxprom7 = sext i32 %xor to i64
  %arrayidx8 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom7
  %23 = load float, float* %arrayidx8, align 4, !tbaa !6
  store float %23, float* %v, align 4, !tbaa !6
  %24 = load i8, i8* %b, align 1, !tbaa !50
  %conv = zext i8 %24 to i32
  %shl = shl i32 %conv, 2
  %conv9 = trunc i32 %shl to i8
  store i8 %conv9, i8* %b, align 1, !tbaa !50
  %25 = load float, float* %u, align 4, !tbaa !6
  %cmp10 = fcmp une float %25, 0.000000e+00
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %26 = load float, float* %v, align 4, !tbaa !6
  %cmp12 = fcmp une float %26, 0.000000e+00
  br i1 %cmp12, label %if.then, label %if.end.33

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %27 = load i8*, i8** %cp, align 8, !tbaa !1
  %28 = bitcast float* %u to i8*
  %call = call i8* @memcpy(i8* %27, i8* %28, i64 4) #7
  %29 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr14, i8** %cp, align 8, !tbaa !1
  %30 = load float, float* %v, align 4, !tbaa !6
  %31 = load float, float* %u, align 4, !tbaa !6
  %cmp15 = fcmp oeq float %30, %31
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %32 = load i8, i8* %b, align 1, !tbaa !50
  %conv18 = zext i8 %32 to i32
  %add = add nsw i32 %conv18, 1
  %conv19 = trunc i32 %add to i8
  store i8 %conv19, i8* %b, align 1, !tbaa !50
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %33 = load float, float* %v, align 4, !tbaa !6
  %34 = load float, float* %u, align 4, !tbaa !6
  %sub = fsub float -0.000000e+00, %34
  %cmp20 = fcmp oeq float %33, %sub
  br i1 %cmp20, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %if.else
  %35 = load i8, i8* %b, align 1, !tbaa !50
  %conv23 = zext i8 %35 to i32
  %add24 = add nsw i32 %conv23, 2
  %conv25 = trunc i32 %add24 to i8
  store i8 %conv25, i8* %b, align 1, !tbaa !50
  br label %if.end

if.else.26:                                       ; preds = %if.else
  %36 = load i8, i8* %b, align 1, !tbaa !50
  %conv27 = zext i8 %36 to i32
  %add28 = add nsw i32 %conv27, 3
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, i8* %b, align 1, !tbaa !50
  %37 = load i8*, i8** %cp, align 8, !tbaa !1
  %38 = bitcast float* %v to i8*
  %call30 = call i8* @memcpy(i8* %37, i8* %38, i64 4) #7
  %39 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %add.ptr31, i8** %cp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.22
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.17
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %40 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %42 = load i32, i32* %i, align 4, !tbaa !28
  %add34 = add nsw i32 %42, 2
  store i32 %add34, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.51, %for.end
  %43 = load i32, i32* %i, align 4, !tbaa !28
  %cmp36 = icmp slt i32 %43, 6
  br i1 %cmp36, label %for.body.38, label %for.end.53

for.body.38:                                      ; preds = %for.cond.35
  %44 = bitcast float* %v39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom40
  %46 = load float, float* %arrayidx41, align 4, !tbaa !6
  store float %46, float* %v39, align 4, !tbaa !6
  %47 = load i8, i8* %b, align 1, !tbaa !50
  %conv42 = zext i8 %47 to i32
  %shl43 = shl i32 %conv42, 1
  %conv44 = trunc i32 %shl43 to i8
  store i8 %conv44, i8* %b, align 1, !tbaa !50
  %48 = load float, float* %v39, align 4, !tbaa !6
  %cmp45 = fcmp une float %48, 0.000000e+00
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %for.body.38
  %49 = load i8, i8* %b, align 1, !tbaa !50
  %inc = add i8 %49, 1
  store i8 %inc, i8* %b, align 1, !tbaa !50
  %50 = load i8*, i8** %cp, align 8, !tbaa !1
  %51 = bitcast float* %v39 to i8*
  %call48 = call i8* @memcpy(i8* %50, i8* %51, i64 4) #7
  %52 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %add.ptr49, i8** %cp, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %for.body.38
  %53 = bitcast float* %v39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %54 = load i32, i32* %i, align 4, !tbaa !28
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !28
  br label %for.cond.35

for.end.53:                                       ; preds = %for.cond.35
  %55 = load i8, i8* %b, align 1, !tbaa !50
  %conv54 = zext i8 %55 to i32
  %shl55 = shl i32 %conv54, 2
  %conv56 = trunc i32 %shl55 to i8
  %arrayidx57 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i64 0
  store i8 %conv56, i8* %arrayidx57, align 1, !tbaa !50
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %57 = load i8*, i8** %cp, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i64 %sub.ptr.sub to i32
  %call61 = call i32 @sputs(%struct.stream_s* %56, i8* %arraydecay58, i32 %conv60, i32* %ignore) #5
  %58 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast [6 x float]* %coeff to i8*
  call void @llvm.lifetime.end(i64 24, i8* %60) #1
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  %61 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [25 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 25, i8* %62) #1
  ret i32 %call61
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @sget_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %b = alloca i32, align 4
  %coeff = alloca [6 x float], align 16
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %nread = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %value = alloca float, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !51
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !53
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r4, i32 0, i32 0
  %6 = load i8*, i8** %ptr5, align 8, !tbaa !53
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !53
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_read_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r7, i32 0, i32 0
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !53
  %9 = load i8, i8* %8, align 1, !tbaa !50
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spgetcc(%struct.stream_s* %10, i32 1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %b, align 4, !tbaa !28
  %11 = bitcast [6 x float]* %coeff to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %b, align 4, !tbaa !28
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %b, align 4, !tbaa !28
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !28
  %cmp11 = icmp slt i32 %17, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %b, align 4, !tbaa !28
  %and = and i32 %18, 192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !28
  %xor = xor i32 %19, 3
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !6
  %20 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom14
  store float 0.000000e+00, float* %arrayidx15, align 4, !tbaa !6
  br label %if.end.45

if.else:                                          ; preds = %for.body
  %21 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = bitcast float* %value to i8*
  %call16 = call i32 @sgets(%struct.stream_s* %22, i8* %23, i32 4, i32* %nread) #5
  store i32 %call16, i32* %status, align 4, !tbaa !28
  %24 = load i32, i32* %status, align 4, !tbaa !28
  %cmp17 = icmp slt i32 %24, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %25 = load i32, i32* %status, align 4, !tbaa !28
  %cmp19 = icmp ne i32 %25, -1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %land.lhs.true, %if.else
  %26 = load float, float* %value, align 4, !tbaa !6
  %27 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom23
  store float %26, float* %arrayidx24, align 4, !tbaa !6
  %28 = load i32, i32* %b, align 4, !tbaa !28
  %shr = ashr i32 %28, 6
  %and25 = and i32 %shr, 3
  switch i32 %and25, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end.22
  %29 = load float, float* %value, align 4, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !28
  %xor26 = xor i32 %30, 3
  %idxprom27 = sext i32 %xor26 to i64
  %arrayidx28 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom27
  store float %29, float* %arrayidx28, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.22
  %31 = load float, float* %value, align 4, !tbaa !6
  %sub = fsub float -0.000000e+00, %31
  %32 = load i32, i32* %i, align 4, !tbaa !28
  %xor30 = xor i32 %32, 3
  %idxprom31 = sext i32 %xor30 to i64
  %arrayidx32 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom31
  store float %sub, float* %arrayidx32, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.22
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !28
  %xor34 = xor i32 %34, 3
  %idxprom35 = sext i32 %xor34 to i64
  %arrayidx36 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom35
  %35 = bitcast float* %arrayidx36 to i8*
  %call37 = call i32 @sgets(%struct.stream_s* %33, i8* %35, i32 4, i32* %nread) #5
  store i32 %call37, i32* %status, align 4, !tbaa !28
  %36 = load i32, i32* %status, align 4, !tbaa !28
  %cmp38 = icmp slt i32 %36, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %sw.bb.33
  %37 = load i32, i32* %status, align 4, !tbaa !28
  %cmp41 = icmp ne i32 %37, -1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.40
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true.40, %sw.bb.33
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.44, %if.end.22, %sw.bb.29, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.43, %if.then.21
  %38 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.45

if.end.45:                                        ; preds = %cleanup.cont, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %39 = load i32, i32* %i, align 4, !tbaa !28
  %add = add nsw i32 %39, 2
  store i32 %add, i32* %i, align 4, !tbaa !28
  %40 = load i32, i32* %b, align 4, !tbaa !28
  %shl = shl i32 %40, 2
  store i32 %shl, i32* %b, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.67, %for.end
  %41 = load i32, i32* %i, align 4, !tbaa !28
  %cmp47 = icmp slt i32 %41, 6
  br i1 %cmp47, label %for.body.49, label %for.end.69

for.body.49:                                      ; preds = %for.cond.46
  %42 = load i32, i32* %b, align 4, !tbaa !28
  %and50 = and i32 %42, 128
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.63

if.then.52:                                       ; preds = %for.body.49
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom53 = sext i32 %44 to i64
  %arrayidx54 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom53
  %45 = bitcast float* %arrayidx54 to i8*
  %call55 = call i32 @sgets(%struct.stream_s* %43, i8* %45, i32 4, i32* %nread) #5
  store i32 %call55, i32* %status, align 4, !tbaa !28
  %46 = load i32, i32* %status, align 4, !tbaa !28
  %cmp56 = icmp slt i32 %46, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.62

land.lhs.true.58:                                 ; preds = %if.then.52
  %47 = load i32, i32* %status, align 4, !tbaa !28
  %cmp59 = icmp ne i32 %47, -1
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %land.lhs.true.58
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.62:                                        ; preds = %land.lhs.true.58, %if.then.52
  br label %if.end.66

if.else.63:                                       ; preds = %for.body.49
  %48 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 %idxprom64
  store float 0.000000e+00, float* %arrayidx65, align 4, !tbaa !6
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.end.62
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %49 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  %50 = load i32, i32* %b, align 4, !tbaa !28
  %shl68 = shl i32 %50, 1
  store i32 %shl68, i32* %b, align 4, !tbaa !28
  br label %for.cond.46

for.end.69:                                       ; preds = %for.cond.46
  %arrayidx70 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 0
  %51 = load float, float* %arrayidx70, align 4, !tbaa !6
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %52, i32 0, i32 0
  store float %51, float* %xx, align 4, !tbaa !13
  %arrayidx71 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 1
  %53 = load float, float* %arrayidx71, align 4, !tbaa !6
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 1
  store float %53, float* %xy, align 4, !tbaa !19
  %arrayidx72 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 2
  %55 = load float, float* %arrayidx72, align 4, !tbaa !6
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %56, i32 0, i32 2
  store float %55, float* %yx, align 4, !tbaa !20
  %arrayidx73 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 3
  %57 = load float, float* %arrayidx73, align 4, !tbaa !6
  %58 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %58, i32 0, i32 3
  store float %57, float* %yy, align 4, !tbaa !14
  %arrayidx74 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 4
  %59 = load float, float* %arrayidx74, align 4, !tbaa !6
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %60, i32 0, i32 4
  store float %59, float* %tx, align 4, !tbaa !10
  %arrayidx75 = getelementptr inbounds [6 x float], [6 x float]* %coeff, i32 0, i64 5
  %61 = load float, float* %arrayidx75, align 4, !tbaa !6
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 5
  store float %61, float* %ty, align 4, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %for.end.69, %if.then.61, %cleanup, %if.then
  %63 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast [6 x float]* %coeff to i8*
  call void @llvm.lifetime.end(i64 24, i8* %66) #1
  %67 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i32 @spgetcc(%struct.stream_s*, i32) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_matrix_compare(%struct.gs_matrix_s* %pmat1, %struct.gs_matrix_s* %pmat2) #0 {
entry:
  %retval = alloca i32, align 4
  %pmat1.addr = alloca %struct.gs_matrix_s*, align 8
  %pmat2.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %pmat1, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat2, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 0
  %1 = load float, float* %xx, align 4, !tbaa !13
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %xx1 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  %3 = load float, float* %xx1, align 4, !tbaa !13
  %cmp = fcmp une float %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 1
  %5 = load float, float* %xy, align 4, !tbaa !19
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %xy2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  %7 = load float, float* %xy2, align 4, !tbaa !19
  %cmp3 = fcmp une float %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !20
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %yx6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 2
  %11 = load float, float* %yx6, align 4, !tbaa !20
  %cmp7 = fcmp une float %9, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 3
  %13 = load float, float* %yy, align 4, !tbaa !14
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %yy10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 3
  %15 = load float, float* %yy10, align 4, !tbaa !14
  %cmp11 = fcmp une float %13, %15
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 4
  %17 = load float, float* %tx, align 4, !tbaa !10
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %tx14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 4
  %19 = load float, float* %tx14, align 4, !tbaa !10
  %cmp15 = fcmp une float %17, %19
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 5
  %21 = load float, float* %ty, align 4, !tbaa !12
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %ty18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 5
  %23 = load float, float* %ty18, align 4, !tbaa !12
  %cmp19 = fcmp une float %21, %23
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!11, !7, i64 16}
!11 = !{!"gs_matrix_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!12 = !{!11, !7, i64 20}
!13 = !{!11, !7, i64 0}
!14 = !{!11, !7, i64 12}
!15 = !{!16, !9, i64 8}
!16 = !{!"gs_sincos_s", !9, i64 0, !9, i64 8, !17, i64 16}
!17 = !{!"int", !3, i64 0}
!18 = !{!16, !9, i64 0}
!19 = !{!11, !7, i64 4}
!20 = !{!11, !7, i64 8}
!21 = !{!22, !9, i64 0}
!22 = !{!"gs_matrix_double_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!23 = !{!22, !9, i64 24}
!24 = !{!22, !9, i64 32}
!25 = !{!22, !9, i64 40}
!26 = !{!22, !9, i64 8}
!27 = !{!22, !9, i64 16}
!28 = !{!17, !17, i64 0}
!29 = !{!30, !9, i64 0}
!30 = !{!"gs_point_s", !9, i64 0, !9, i64 8}
!31 = !{!30, !9, i64 8}
!32 = !{!33, !9, i64 0}
!33 = !{!"gs_rect_s", !30, i64 0, !30, i64 16}
!34 = !{!33, !9, i64 16}
!35 = !{!33, !9, i64 8}
!36 = !{!33, !9, i64 24}
!37 = !{!38, !17, i64 24}
!38 = !{!"gs_matrix_fixed_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !17, i64 24, !17, i64 28, !17, i64 32}
!39 = !{!38, !7, i64 16}
!40 = !{!38, !17, i64 28}
!41 = !{!38, !7, i64 20}
!42 = !{!38, !17, i64 32}
!43 = !{!44, !17, i64 0}
!44 = !{!"gs_fixed_point_s", !17, i64 0, !17, i64 4}
!45 = !{!44, !17, i64 4}
!46 = !{!38, !7, i64 4}
!47 = !{!38, !7, i64 8}
!48 = !{!38, !7, i64 0}
!49 = !{!38, !7, i64 12}
!50 = !{!3, !3, i64 0}
!51 = !{!52, !2, i64 8}
!52 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!53 = !{!52, !2, i64 0}
