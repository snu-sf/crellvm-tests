; ModuleID = './MultiSource.Benchmarks.MallocBench/82.gs.gspath2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
%struct.gs_path_enum_s = type { %struct.segment_s*, %struct.gs_state_s* }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@gs_path_enum_sizeof = global i32 16, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad type %x in gs_path_enum_next!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_flattenpath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %fpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 8
  %2 = load i32, i32* %curve_count, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 21
  %6 = load float, float* %flatness, align 4
  %conv = fpext float %6 to double
  %call = call i32 @gx_path_flatten(%struct.gx_path_s* %4, %struct.gx_path_s* %fpath, double %conv)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %path5, align 8
  call void @gx_path_release(%struct.gx_path_s* %10)
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8
  %13 = bitcast %struct.gx_path_s* %12 to i8*
  %14 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 144, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gx_path_flatten(%struct.gx_path_s*, %struct.gx_path_s*, double) #1

declare void @gx_path_release(%struct.gx_path_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gs_reversepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define i32 @gs_pathbbox(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pbox.addr = alloca %struct.gs_rect_s*, align 8
  %fbox = alloca %struct.gs_fixed_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_rect_s* %pbox, %struct.gs_rect_s** %pbox.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_bbox(%struct.gx_path_s* %1, %struct.gs_fixed_rect_s* %fbox)
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %4 = load i64, i64* %x, align 8
  %conv = sitofp i64 %4 to double
  %mul = fmul double %conv, 0x3F30000000000000
  %conv1 = fptrunc double %mul to float
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  store float %conv1, float* %x3, align 4
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 1
  %5 = load i64, i64* %y, align 8
  %conv5 = sitofp i64 %5 to double
  %mul6 = fmul double %conv5, 0x3F30000000000000
  %conv7 = fptrunc double %mul6 to float
  %p8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p8, i32 0, i32 1
  store float %conv7, float* %y9, align 4
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %6 = load i64, i64* %x10, align 8
  %conv11 = sitofp i64 %6 to double
  %mul12 = fmul double %conv11, 0x3F30000000000000
  %conv13 = fptrunc double %mul12 to float
  %q14 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q14, i32 0, i32 0
  store float %conv13, float* %x15, align 4
  %q16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q16, i32 0, i32 1
  %7 = load i64, i64* %y17, align 8
  %conv18 = sitofp i64 %7 to double
  %mul19 = fmul double %conv18, 0x3F30000000000000
  %conv20 = fptrunc double %mul19 to float
  %q21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q21, i32 0, i32 1
  store float %conv20, float* %y22, align 4
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %9 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8
  %call23 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %dbox, %struct.gs_matrix_s* %9, %struct.gs_rect_s* %10)
  store i32 %call23, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind uwtable
define void @gs_path_enum_init(%struct.gs_path_enum_s* %penum, %struct.gs_state_s* %pgs) #0 {
entry:
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 4
  %2 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %3 = bitcast %struct.subpath* %2 to %struct.segment_s*
  %4 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8
  %pseg = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %4, i32 0, i32 0
  store %struct.segment_s* %3, %struct.segment_s** %pseg, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %6 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %6, i32 0, i32 1
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_point_s* %ppts) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %ppts.addr = alloca %struct.gs_point_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8
  store %struct.gs_point_s* %ppts, %struct.gs_point_s** %ppts.addr, align 8
  %0 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8
  %pseg1 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i32 0, i32 0
  %1 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  store %struct.segment_s* %1, %struct.segment_s** %pseg, align 8
  %2 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8
  %pgs2 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %2, i32 0, i32 1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8
  store %struct.gs_state_s* %3, %struct.gs_state_s** %pgs, align 8
  %4 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %cmp = icmp eq %struct.segment_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i32 0, i32 1
  %6 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  %7 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8
  %pseg3 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %7, i32 0, i32 0
  store %struct.segment_s* %6, %struct.segment_s** %pseg3, align 8
  %8 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 2
  %9 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %11 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %11, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %12 = load i64, i64* %x, align 8
  %conv = sitofp i64 %12 to double
  %mul = fmul double %conv, 0x3F30000000000000
  %conv8 = fptrunc double %mul to float
  %conv9 = fpext float %conv8 to double
  %13 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt10, i32 0, i32 1
  %14 = load i64, i64* %y, align 8
  %conv11 = sitofp i64 %14 to double
  %mul12 = fmul double %conv11, 0x3F30000000000000
  %conv13 = fptrunc double %mul12 to float
  %conv14 = fpext float %conv13 to double
  %call = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %10, double %conv9, double %conv14, %struct.gs_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.6
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.6
  %16 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %16, i32 0, i32 2
  %17 = load i32, i32* %type19, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 3, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.18
  %18 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %arrayidx = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %18, i64 0
  %19 = bitcast %struct.gs_point_s* %arrayidx to i8*
  %20 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 4, i1 false)
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end.18
  %21 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i64 0
  %22 = bitcast %struct.gs_point_s* %arrayidx21 to i8*
  %23 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 4, i1 false)
  store i32 2, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %if.end.18
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %25 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %26 = bitcast %struct.segment_s* %25 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %26, i32 0, i32 4
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %27 = load i64, i64* %x23, align 8
  %conv24 = sitofp i64 %27 to double
  %mul25 = fmul double %conv24, 0x3F30000000000000
  %conv26 = fptrunc double %mul25 to float
  %conv27 = fpext float %conv26 to double
  %28 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %29 = bitcast %struct.segment_s* %28 to %struct.curve_segment*
  %p128 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 4
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p128, i32 0, i32 1
  %30 = load i64, i64* %y29, align 8
  %conv30 = sitofp i64 %30 to double
  %mul31 = fmul double %conv30, 0x3F30000000000000
  %conv32 = fptrunc double %mul31 to float
  %conv33 = fpext float %conv32 to double
  %31 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %31, i64 0
  %call35 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %24, double %conv27, double %conv33, %struct.gs_point_s* %arrayidx34)
  store i32 %call35, i32* %code, align 4
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.22
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %33 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %34 = bitcast %struct.segment_s* %33 to %struct.curve_segment*
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 5
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %35 = load i64, i64* %x38, align 8
  %conv39 = sitofp i64 %35 to double
  %mul40 = fmul double %conv39, 0x3F30000000000000
  %conv41 = fptrunc double %mul40 to float
  %conv42 = fpext float %conv41 to double
  %36 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %37 = bitcast %struct.segment_s* %36 to %struct.curve_segment*
  %p243 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %37, i32 0, i32 5
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p243, i32 0, i32 1
  %38 = load i64, i64* %y44, align 8
  %conv45 = sitofp i64 %38 to double
  %mul46 = fmul double %conv45, 0x3F30000000000000
  %conv47 = fptrunc double %mul46 to float
  %conv48 = fpext float %conv47 to double
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i64 1
  %call50 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %32, double %conv42, double %conv48, %struct.gs_point_s* %arrayidx49)
  store i32 %call50, i32* %code, align 4
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %sw.bb.22
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false
  %40 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %40, i64 2
  %41 = bitcast %struct.gs_point_s* %arrayidx55 to i8*
  %42 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.18
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i32 125)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 2
  %46 = load i32, i32* %type57, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %46)
  call void @exit(i32 1) #4
  unreachable

return:                                           ; preds = %if.end.54, %if.then.53, %sw.bb.20, %sw.bb, %if.then.17, %if.then.5, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @gs_itransform(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_clippath(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call = call i32 @gx_path_copy(%struct.gx_path_s* %1, %struct.gx_path_s* %3)
  ret i32 %call
}

declare i32 @gx_path_copy(%struct.gx_path_s*, %struct.gx_path_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_initclip(%struct.gs_state_s* %pgs) #0 {
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
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load i32, i32* %width, align 4
  %conv = sext i32 %5 to i64
  %shl = shl i64 %conv, 12
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %conv1 = sext i32 %7 to i64
  %shl2 = shl i64 %conv1, 12
  %call = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* %3, i64 0, i64 0, i64 %shl, i64 %shl2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_clip(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @common_clip(%struct.gs_state_s* %0, i32 -1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @common_clip(%struct.gs_state_s* %pgs, i32 %rule) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %rule.addr = alloca i32, align 4
  %cpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %rule, i32* %rule.addr, align 4
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 7
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 21
  %3 = load float, float* %flatness, align 4
  %conv = fpext float %3 to double
  %call = call i32 @gx_path_flatten(%struct.gx_path_s* %1, %struct.gx_path_s* %cpath, double %conv)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %6 = load i32, i32* %rule.addr, align 4
  %call1 = call i32 @set_clip_path(%struct.gs_state_s* %5, %struct.gx_path_s* %cpath, i32 %6)
  store i32 %call1, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_eoclip(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @common_clip(%struct.gs_state_s* %0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_clip_to_rectangle(%struct.gs_state_s* %pgs, i64 %x0, i64 %y0, i64 %x1, i64 %y1) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %cpath = alloca %struct.gx_path_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i64 %x0, i64* %x0.addr, align 8
  store i64 %y0, i64* %y0.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store %struct.gx_path_s* %cpath, %struct.gx_path_s** %ppath, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %0, %struct.gs_memory_procs* %memory_procs)
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %3 = load i64, i64* %x0.addr, align 8
  %4 = load i64, i64* %y0.addr, align 8
  %5 = load i64, i64* %x1.addr, align 8
  %6 = load i64, i64* %y1.addr, align 8
  %call = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %2, i64 %3, i64 %4, i64 %5, i64 %6)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  call void @gx_path_release(%struct.gx_path_s* %7)
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  call void @gx_path_release(%struct.gx_path_s* %10)
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call1 = call i32 @set_clip_path(%struct.gs_state_s* %11, %struct.gx_path_s* %12, i32 -1)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #1

declare i32 @gx_path_add_rectangle(%struct.gx_path_s*, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @set_clip_path(%struct.gs_state_s* %pgs, %struct.gx_path_s* %ppath, i32 %rule) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rule.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i32 %rule, i32* %rule.addr, align 4
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %call = call i32 @gx_path_is_rectangle(%struct.gx_path_s* %0, %struct.gs_fixed_rect_s* %cbox)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i64 0, i64* %y, align 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  store i64 0, i64* %x, align 8
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox4, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i64 0, i64* %y5, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 3
  %q7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox6, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q7, i32 0, i32 0
  store i64 0, i64* %x8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 1
  %call9 = call i32 @gx_path_bbox(%struct.gx_path_s* %6, %struct.gs_fixed_rect_s* %bbox)
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 8
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %11 = bitcast %struct.gx_path_s* %9 to i8*
  %12 = bitcast %struct.gx_path_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 144, i32 8, i1 false)
  %13 = load i32, i32* %rule.addr, align 4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_rule = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 9
  store i32 %13, i32* %clip_rule, align 4
  ret i32 0
}

declare i32 @gx_path_is_rectangle(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
