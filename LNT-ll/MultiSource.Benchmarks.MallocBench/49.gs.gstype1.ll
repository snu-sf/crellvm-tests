; ModuleID = './MultiSource.Benchmarks.MallocBench/49.gs.gstype1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_type1_state_s = type { %struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_type1_data_s*, i32, i32, %struct.fixed_coeff, [24 x i64], i32, [11 x %struct.ip_state], i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32 }
%struct.gs_show_enum_s = type { %struct.gs_state_s*, i8*, i32, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_device_memory_s, %struct.device_s, i32, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, %struct.gs_point_s, i32, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.cached_char_s = type { %struct.cached_char_s*, i32, %struct.cached_fm_pair_s*, i16, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, float, float, float, float, i32 }
%struct.gs_font_s = type opaque
%struct.gs_point_s = type { float, float }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i64 }
%struct.ip_state = type { i8*, i16 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }

@gs_type1_state_sizeof = global i32 504, align 4

; Function Attrs: nounwind uwtable
define i32 @gs_type1_encrypt(i8* %dest, i8* %src, i32 %len, i16* %pstate) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pstate.addr = alloca i16*, align 8
  %state = alloca i16, align 2
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %count = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i16* %pstate, i16** %pstate.addr, align 8
  %0 = load i16*, i16** %pstate.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %state, align 2
  %2 = load i8*, i8** %src.addr, align 8
  store i8* %2, i8** %from, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  store i8* %3, i8** %to, align 8
  %4 = load i32, i32* %len.addr, align 4
  store i32 %4, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %from, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i16, i16* %state, align 2
  %conv1 = zext i16 %8 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %conv, %shr
  %conv2 = trunc i32 %xor to i8
  %9 = load i8*, i8** %to, align 8
  store i8 %conv2, i8* %9, align 1
  %10 = load i8*, i8** %to, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = zext i8 %11 to i32
  %12 = load i16, i16* %state, align 2
  %conv4 = zext i16 %12 to i32
  %add = add nsw i32 %conv3, %conv4
  %mul = mul nsw i32 %add, 52845
  %add5 = add nsw i32 %mul, 22719
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %state, align 2
  %13 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  %14 = load i8*, i8** %to, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %to, align 8
  %15 = load i32, i32* %count, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i16, i16* %state, align 2
  %17 = load i16*, i16** %pstate.addr, align 8
  store i16 %16, i16* %17, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_decrypt(i8* %dest, i8* %src, i32 %len, i16* %pstate) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pstate.addr = alloca i16*, align 8
  %state = alloca i16, align 2
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i16* %pstate, i16** %pstate.addr, align 8
  %0 = load i16*, i16** %pstate.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %state, align 2
  %2 = load i8*, i8** %src.addr, align 8
  store i8* %2, i8** %from, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  store i8* %3, i8** %to, align 8
  %4 = load i32, i32* %len.addr, align 4
  store i32 %4, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %ch, align 1
  %8 = load i8, i8* %ch, align 1
  %conv = zext i8 %8 to i32
  %9 = load i16, i16* %state, align 2
  %conv1 = zext i16 %9 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %conv, %shr
  %conv2 = trunc i32 %xor to i8
  %10 = load i8*, i8** %to, align 8
  store i8 %conv2, i8* %10, align 1
  %11 = load i8, i8* %ch, align 1
  %conv3 = zext i8 %11 to i32
  %12 = load i16, i16* %state, align 2
  %conv4 = zext i16 %12 to i32
  %add = add nsw i32 %conv3, %conv4
  %mul = mul nsw i32 %add, 52845
  %add5 = add nsw i32 %mul, 22719
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %state, align 2
  %13 = load i8*, i8** %to, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr7, i8** %to, align 8
  %14 = load i32, i32* %count, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i16, i16* %state, align 2
  %16 = load i16*, i16** %pstate.addr, align 8
  store i16 %15, i16* %16, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_init_matrix(%struct.gs_type1_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_type1_state_s*, align 8
  %ctm = alloca %struct.gs_matrix_s, align 8
  %scale = alloca i32, align 4
  %expt = alloca i32, align 4
  %shift = alloca i32, align 4
  store %struct.gs_type1_state_s* %pis, %struct.gs_type1_state_s** %pis.addr, align 8
  store i32 -10000, i32* %scale, align 4
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pgs = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  %2 = bitcast %struct.gs_matrix_fixed_s* %ctm1 to %struct.gs_matrix_s*
  %3 = bitcast %struct.gs_matrix_s* %ctm to i8*
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 96, i32 8, i1 false)
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 5
  %skewed = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  store i32 0, i32* %skewed, align 4
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %6 = bitcast float* %xx to i64*
  %7 = load i64, i64* %6, align 8
  %shl = shl i64 %7, 1
  %cmp = icmp eq i64 %shl, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %8 = load float, float* %xx2, align 4
  %conv = fpext float %8 to double
  %call = call double @frexp(double %conv, i32* %scale) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %9 = bitcast float* %xy to i64*
  %10 = load i64, i64* %9, align 8
  %shl3 = shl i64 %10, 1
  %cmp4 = icmp eq i64 %shl3, 0
  br i1 %cmp4, label %if.end.16, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %xy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %11 = load float, float* %xy7, align 4
  %conv8 = fpext float %11 to double
  %call9 = call double @frexp(double %conv8, i32* %expt) #1
  %12 = load i32, i32* %expt, align 4
  %13 = load i32, i32* %scale, align 4
  %cmp10 = icmp sgt i32 %12, %13
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.6
  %14 = load i32, i32* %expt, align 4
  store i32 %14, i32* %scale, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.6
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc14 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 5
  %skewed15 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc14, i32 0, i32 4
  store i32 1, i32* %skewed15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.13, %if.end
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %16 = bitcast float* %yx to i64*
  %17 = load i64, i64* %16, align 8
  %shl17 = shl i64 %17, 1
  %cmp18 = icmp eq i64 %shl17, 0
  br i1 %cmp18, label %if.end.30, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  %yx21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %18 = load float, float* %yx21, align 4
  %conv22 = fpext float %18 to double
  %call23 = call double @frexp(double %conv22, i32* %expt) #1
  %19 = load i32, i32* %expt, align 4
  %20 = load i32, i32* %scale, align 4
  %cmp24 = icmp sgt i32 %19, %20
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  %21 = load i32, i32* %expt, align 4
  store i32 %21, i32* %scale, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.20
  %22 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc28 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 5
  %skewed29 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc28, i32 0, i32 4
  store i32 1, i32* %skewed29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %if.end.16
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 6
  %23 = bitcast float* %yy to i64*
  %24 = load i64, i64* %23, align 8
  %shl31 = shl i64 %24, 1
  %cmp32 = icmp eq i64 %shl31, 0
  br i1 %cmp32, label %if.end.42, label %if.then.34

if.then.34:                                       ; preds = %if.end.30
  %yy35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 6
  %25 = load float, float* %yy35, align 4
  %conv36 = fpext float %25 to double
  %call37 = call double @frexp(double %conv36, i32* %expt) #1
  %26 = load i32, i32* %expt, align 4
  %27 = load i32, i32* %scale, align 4
  %cmp38 = icmp sgt i32 %26, %27
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.34
  %28 = load i32, i32* %expt, align 4
  store i32 %28, i32* %scale, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.30
  %29 = load i32, i32* %scale, align 4
  %sub = sub nsw i32 20, %29
  store i32 %sub, i32* %scale, align 4
  %xx43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %30 = bitcast float* %xx43 to i64*
  %31 = load i64, i64* %30, align 8
  %shl44 = shl i64 %31, 1
  %cmp45 = icmp eq i64 %shl44, 0
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %xx47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 0
  %32 = load float, float* %xx47, align 4
  %conv48 = fpext float %32 to double
  %33 = load i32, i32* %scale, align 4
  %call49 = call double @ldexp(double %conv48, i32 %33) #1
  %conv50 = fptosi double %call49 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv50, %cond.false ]
  %34 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc51 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %34, i32 0, i32 5
  %xx52 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc51, i32 0, i32 0
  store i64 %cond, i64* %xx52, align 8
  %yy53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 6
  %35 = bitcast float* %yy53 to i64*
  %36 = load i64, i64* %35, align 8
  %shl54 = shl i64 %36, 1
  %cmp55 = icmp eq i64 %shl54, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end
  br label %cond.end.63

cond.false.58:                                    ; preds = %cond.end
  %yy59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 6
  %37 = load float, float* %yy59, align 4
  %conv60 = fpext float %37 to double
  %38 = load i32, i32* %scale, align 4
  %call61 = call double @ldexp(double %conv60, i32 %38) #1
  %conv62 = fptosi double %call61 to i64
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.58, %cond.true.57
  %cond64 = phi i64 [ 0, %cond.true.57 ], [ %conv62, %cond.false.58 ]
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc65 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 5
  %yy66 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc65, i32 0, i32 3
  store i64 %cond64, i64* %yy66, align 8
  %40 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc67 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %40, i32 0, i32 5
  %skewed68 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc67, i32 0, i32 4
  %41 = load i32, i32* %skewed68, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %cond.end.63
  %xy70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %42 = bitcast float* %xy70 to i64*
  %43 = load i64, i64* %42, align 8
  %shl71 = shl i64 %43, 1
  %cmp72 = icmp eq i64 %shl71, 0
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %if.then.69
  br label %cond.end.80

cond.false.75:                                    ; preds = %if.then.69
  %xy76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 2
  %44 = load float, float* %xy76, align 4
  %conv77 = fpext float %44 to double
  %45 = load i32, i32* %scale, align 4
  %call78 = call double @ldexp(double %conv77, i32 %45) #1
  %conv79 = fptosi double %call78 to i64
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.75, %cond.true.74
  %cond81 = phi i64 [ 0, %cond.true.74 ], [ %conv79, %cond.false.75 ]
  %46 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc82 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %46, i32 0, i32 5
  %xy83 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc82, i32 0, i32 1
  store i64 %cond81, i64* %xy83, align 8
  %yx84 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %47 = bitcast float* %yx84 to i64*
  %48 = load i64, i64* %47, align 8
  %shl85 = shl i64 %48, 1
  %cmp86 = icmp eq i64 %shl85, 0
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.80
  br label %cond.end.94

cond.false.89:                                    ; preds = %cond.end.80
  %yx90 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ctm, i32 0, i32 4
  %49 = load float, float* %yx90, align 4
  %conv91 = fpext float %49 to double
  %50 = load i32, i32* %scale, align 4
  %call92 = call double @ldexp(double %conv91, i32 %50) #1
  %conv93 = fptosi double %call92 to i64
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.89, %cond.true.88
  %cond95 = phi i64 [ 0, %cond.true.88 ], [ %conv93, %cond.false.89 ]
  %51 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc96 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %51, i32 0, i32 5
  %yx97 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc96, i32 0, i32 2
  store i64 %cond95, i64* %yx97, align 8
  br label %if.end.102

if.else:                                          ; preds = %cond.end.63
  %52 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc98 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %52, i32 0, i32 5
  %yx99 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc98, i32 0, i32 2
  store i64 0, i64* %yx99, align 8
  %53 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc100 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %53, i32 0, i32 5
  %xy101 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc100, i32 0, i32 1
  store i64 0, i64* %xy101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %cond.end.94
  %54 = load i32, i32* %scale, align 4
  %sub103 = sub nsw i32 %54, 12
  store i32 %sub103, i32* %shift, align 4
  %55 = load i32, i32* %shift, align 4
  %56 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc104 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %56, i32 0, i32 5
  %shift105 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc104, i32 0, i32 5
  store i32 %55, i32* %shift105, align 4
  %57 = load i32, i32* %shift, align 4
  %cmp106 = icmp sgt i32 %57, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %if.end.102
  %58 = load i32, i32* %shift, align 4
  %sub109 = sub nsw i32 %58, 1
  %sh_prom = zext i32 %sub109 to i64
  %shl110 = shl i64 1, %sh_prom
  br label %cond.end.112

cond.false.111:                                   ; preds = %if.end.102
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.108
  %cond113 = phi i64 [ %shl110, %cond.true.108 ], [ 0, %cond.false.111 ]
  %59 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc114 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %59, i32 0, i32 5
  %round = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc114, i32 0, i32 6
  store i64 %cond113, i64* %round, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @frexp(double, i32*) #2

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gs_type1_init(%struct.gs_type1_state_s* %pis, %struct.gs_show_enum_s* %penum, i32 %charpath_flag, i32 %paint_type, i8* %str, %struct.gs_type1_data_s* %pdata) #0 {
entry:
  %pis.addr = alloca %struct.gs_type1_state_s*, align 8
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %charpath_flag.addr = alloca i32, align 4
  %paint_type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %pdata.addr = alloca %struct.gs_type1_data_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  store %struct.gs_type1_state_s* %pis, %struct.gs_type1_state_s** %pis.addr, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store i32 %charpath_flag, i32* %charpath_flag.addr, align 4
  store i32 %paint_type, i32* %paint_type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.gs_type1_data_s* %pdata, %struct.gs_type1_data_s** %pdata.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %penum2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 0
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pgs3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 1
  store %struct.gs_state_s* %4, %struct.gs_state_s** %pgs3, align 8
  %6 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata.addr, align 8
  %7 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pdata4 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %7, i32 0, i32 2
  store %struct.gs_type1_data_s* %6, %struct.gs_type1_data_s** %pdata4, align 8
  %8 = load i32, i32* %charpath_flag.addr, align 4
  %9 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %charpath_flag5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %9, i32 0, i32 3
  store i32 %8, i32* %charpath_flag5, align 4
  %10 = load i32, i32* %paint_type.addr, align 4
  %11 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %paint_type6 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %11, i32 0, i32 4
  store i32 %10, i32* %paint_type6, align 4
  %12 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %12, i32 0, i32 7
  store i32 0, i32* %os_count, align 4
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %14, i32 0, i32 8
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state], [11 x %struct.ip_state]* %ipstack, i32 0, i64 0
  %ip = getelementptr inbounds %struct.ip_state, %struct.ip_state* %arrayidx, i32 0, i32 0
  store i8* %13, i8** %ip, align 8
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ipstack7 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [11 x %struct.ip_state], [11 x %struct.ip_state]* %ipstack7, i32 0, i64 0
  %dstate = getelementptr inbounds %struct.ip_state, %struct.ip_state* %arrayidx8, i32 0, i32 1
  store i16 4330, i16* %dstate, align 2
  %16 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %16, i32 0, i32 9
  store i32 1, i32* %ips_count, align 4
  %17 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata.addr, align 8
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %17, i32 0, i32 3
  %18 = load i32, i32* %lenIV, align 4
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ip_skip = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %19, i32 0, i32 10
  store i32 %18, i32* %ip_skip, align 4
  %20 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %seac_base = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %20, i32 0, i32 13
  store i32 -1, i32* %seac_base, align 4
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %call = call i32 @gs_type1_init_matrix(%struct.gs_type1_state_s* %21)
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 7
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  store %struct.gx_path_s* %23, %struct.gx_path_s** %ppath, align 8
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 12
  %25 = load i64, i64* %tx_fixed, align 8
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i64 %25, i64* %x, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm9, i32 0, i32 13
  %28 = load i64, i64* %ty_fixed, align 8
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %29, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position10, i32 0, i32 1
  store i64 %28, i64* %y, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_interpret(%struct.gs_type1_state_s* %pis, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_type1_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %cstack = alloca [24 x i64], align 16
  %csp = alloca i64*, align 8
  %ipsp = alloca %struct.ip_state*, align 8
  %skip = alloca i32, align 4
  %cip = alloca i8*, align 8
  %state = alloca i16, align 2
  %c = alloca i32, align 4
  %code = alloca i32, align 4
  %fc = alloca %struct.fixed_coeff, align 8
  %ftx = alloca i64, align 8
  %fty = alloca i64, align 8
  %ptx = alloca i64, align 8
  %pty = alloca i64, align 8
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %index = alloca i32, align 4
  %nip = alloca i8*, align 8
  %index921 = alloca i32, align 4
  %scount = alloca i32, align 4
  %base_code = alloca i32, align 4
  %bbox = alloca %struct.gs_rect_s, align 4
  %adjust = alloca float, align 4
  %c0 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %lw = alloca i64, align 8
  store %struct.gs_type1_state_s* %pis, %struct.gs_type1_state_s** %pis.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  store %struct.gx_path_s* %3, %struct.gx_path_s** %ppath, align 8
  %4 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pdata2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %4, i32 0, i32 2
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata2, align 8
  store %struct.gs_type1_data_s* %5, %struct.gs_type1_data_s** %pdata, align 8
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 9
  %7 = load i32, i32* %ips_count, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %8, i32 0, i32 8
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state], [11 x %struct.ip_state]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state* %arrayidx, %struct.ip_state** %ipsp, align 8
  %9 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ip_skip = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %ip_skip, align 4
  store i32 %10, i32* %skip, align 4
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 12
  %12 = load i64, i64* %tx_fixed, align 8
  store i64 %12, i64* %ftx, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm3, i32 0, i32 13
  %14 = load i64, i64* %ty_fixed, align 8
  store i64 %14, i64* %fty, align 8
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %16 = load i64, i64* %x, align 8
  store i64 %16, i64* %ptx, align 8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position4, i32 0, i32 1
  %18 = load i64, i64* %y, align 8
  store i64 %18, i64* %pty, align 8
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %fc5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %19, i32 0, i32 5
  %20 = bitcast %struct.fixed_coeff* %fc to i8*
  %21 = bitcast %struct.fixed_coeff* %fc5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 48, i32 8, i1 false)
  %22 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 7
  %23 = load i32, i32* %os_count, align 4
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay, i64 -1
  store i64* %add.ptr, i64** %csp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = bitcast [24 x i64]* %cstack to i8*
  %25 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %25, i32 0, i32 6
  %26 = bitcast [24 x i64]* %ostack to i8*
  %27 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count6 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 7
  %28 = load i32, i32* %os_count6, align 4
  %conv = sext i32 %28 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %26, i64 %mul, i32 8, i1 false)
  %29 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count7 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %29, i32 0, i32 7
  %30 = load i32, i32* %os_count7, align 4
  %sub8 = sub nsw i32 %30, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 %idxprom9
  store i64* %arrayidx10, i64** %csp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i8*, i8** %str.addr, align 8
  %cmp11 = icmp ne i8* %31, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %32 = load i8*, i8** %str.addr, align 8
  %33 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %ip = getelementptr inbounds %struct.ip_state, %struct.ip_state* %33, i32 0, i32 0
  store i8* %32, i8** %ip, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  br label %itop

itop:                                             ; preds = %sw.bb.724, %if.end.14
  %34 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %ip15 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %34, i32 0, i32 0
  %35 = load i8*, i8** %ip15, align 8
  store i8* %35, i8** %cip, align 8
  %36 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %dstate = getelementptr inbounds %struct.ip_state, %struct.ip_state* %36, i32 0, i32 1
  %37 = load i16, i16* %dstate, align 2
  store i16 %37, i16* %state, align 2
  br label %top

top:                                              ; preds = %if.end.718, %itop
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %top
  %38 = load i32, i32* %skip, align 4
  %cmp16 = icmp sgt i32 %38, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %cip, align 8
  %40 = load i8, i8* %39, align 1
  %conv18 = zext i8 %40 to i32
  %41 = load i16, i16* %state, align 2
  %conv19 = zext i16 %41 to i32
  %shr = ashr i32 %conv19, 8
  %xor = xor i32 %conv18, %shr
  store i32 %xor, i32* %c, align 4
  %42 = load i8*, i8** %cip, align 8
  %43 = load i8, i8* %42, align 1
  %conv20 = zext i8 %43 to i32
  %44 = load i16, i16* %state, align 2
  %conv21 = zext i16 %44 to i32
  %add = add nsw i32 %conv20, %conv21
  %mul22 = mul nsw i32 %add, 52845
  %add23 = add nsw i32 %mul22, 22719
  %conv24 = trunc i32 %add23 to i16
  store i16 %conv24, i16* %state, align 2
  %45 = load i8*, i8** %cip, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %skip, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %skip, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end, %sw.epilog.2007
  %47 = load i8*, i8** %cip, align 8
  %48 = load i8, i8* %47, align 1
  %conv25 = zext i8 %48 to i32
  %49 = load i16, i16* %state, align 2
  %conv26 = zext i16 %49 to i32
  %shr27 = ashr i32 %conv26, 8
  %xor28 = xor i32 %conv25, %shr27
  store i32 %xor28, i32* %c, align 4
  %50 = load i8*, i8** %cip, align 8
  %51 = load i8, i8* %50, align 1
  %conv29 = zext i8 %51 to i32
  %52 = load i16, i16* %state, align 2
  %conv30 = zext i16 %52 to i32
  %add31 = add nsw i32 %conv29, %conv30
  %mul32 = mul nsw i32 %add31, 52845
  %add33 = add nsw i32 %mul32, 22719
  %conv34 = trunc i32 %add33 to i16
  store i16 %conv34, i16* %state, align 2
  %53 = load i8*, i8** %cip, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr35, i8** %cip, align 8
  %54 = load i32, i32* %c, align 4
  switch i32 %54, label %sw.default.1895 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.38
    i32 4, label %sw.bb.41
    i32 5, label %sw.bb.92
    i32 6, label %sw.bb.217
    i32 7, label %sw.bb.280
    i32 8, label %sw.bb.343
    i32 9, label %sw.bb.705
    i32 10, label %sw.bb.711
    i32 11, label %sw.bb.724
    i32 12, label %sw.bb.726
    i32 13, label %sw.bb.955
    i32 14, label %sw.bb.1087
    i32 21, label %sw.bb.1219
    i32 22, label %sw.bb.1341
    i32 30, label %sw.bb.1404
    i32 31, label %sw.bb.1649
    i32 0, label %sw.bb.1894
    i32 2, label %sw.bb.1894
    i32 15, label %sw.bb.1894
    i32 16, label %sw.bb.1894
    i32 17, label %sw.bb.1894
    i32 18, label %sw.bb.1894
    i32 19, label %sw.bb.1894
    i32 20, label %sw.bb.1894
    i32 23, label %sw.bb.1894
    i32 24, label %sw.bb.1894
    i32 25, label %sw.bb.1894
    i32 26, label %sw.bb.1894
    i32 27, label %sw.bb.1894
    i32 28, label %sw.bb.1894
    i32 29, label %sw.bb.1894
  ]

sw.bb:                                            ; preds = %while.body
  %arraydecay36 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i64, i64* %arraydecay36, i64 -1
  store i64* %add.ptr37, i64** %csp, align 8
  br label %sw.epilog.2007

sw.bb.38:                                         ; preds = %while.body
  %arraydecay39 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr40 = getelementptr inbounds i64, i64* %arraydecay39, i64 -1
  store i64* %add.ptr40, i64** %csp, align 8
  br label %sw.epilog.2007

sw.bb.41:                                         ; preds = %while.body
  %shift = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %55 = load i32, i32* %shift, align 4
  %cmp42 = icmp sge i32 %55, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.41
  %arrayidx44 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %56 = load i64, i64* %arrayidx44, align 8
  %shr45 = ashr i64 %56, 12
  %conv46 = trunc i64 %shr45 to i32
  %conv47 = sext i32 %conv46 to i64
  %yy = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %57 = load i64, i64* %yy, align 8
  %mul48 = mul nsw i64 %conv47, %57
  %round = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %58 = load i64, i64* %round, align 8
  %add49 = add nsw i64 %mul48, %58
  %shift50 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %59 = load i32, i32* %shift50, align 4
  %sh_prom = zext i32 %59 to i64
  %shr51 = ashr i64 %add49, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.41
  %arrayidx52 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %60 = load i64, i64* %arrayidx52, align 8
  %shr53 = ashr i64 %60, 12
  %conv54 = trunc i64 %shr53 to i32
  %conv55 = sext i32 %conv54 to i64
  %yy56 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %61 = load i64, i64* %yy56, align 8
  %mul57 = mul nsw i64 %conv55, %61
  %shift58 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %62 = load i32, i32* %shift58, align 4
  %sub59 = sub nsw i32 0, %62
  %sh_prom60 = zext i32 %sub59 to i64
  %shl = shl i64 %mul57, %sh_prom60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr51, %cond.true ], [ %shl, %cond.false ]
  %63 = load i64, i64* %pty, align 8
  %add61 = add nsw i64 %63, %cond
  store i64 %add61, i64* %pty, align 8
  %skewed = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %64 = load i32, i32* %skewed, align 4
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.62, label %if.end.91

if.then.62:                                       ; preds = %cond.end
  %shift63 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %65 = load i32, i32* %shift63, align 4
  %cmp64 = icmp sge i32 %65, 0
  br i1 %cmp64, label %cond.true.66, label %cond.false.77

cond.true.66:                                     ; preds = %if.then.62
  %arrayidx67 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %66 = load i64, i64* %arrayidx67, align 8
  %shr68 = ashr i64 %66, 12
  %conv69 = trunc i64 %shr68 to i32
  %conv70 = sext i32 %conv69 to i64
  %yx = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %67 = load i64, i64* %yx, align 8
  %mul71 = mul nsw i64 %conv70, %67
  %round72 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %68 = load i64, i64* %round72, align 8
  %add73 = add nsw i64 %mul71, %68
  %shift74 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %69 = load i32, i32* %shift74, align 4
  %sh_prom75 = zext i32 %69 to i64
  %shr76 = ashr i64 %add73, %sh_prom75
  br label %cond.end.88

cond.false.77:                                    ; preds = %if.then.62
  %arrayidx78 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %70 = load i64, i64* %arrayidx78, align 8
  %shr79 = ashr i64 %70, 12
  %conv80 = trunc i64 %shr79 to i32
  %conv81 = sext i32 %conv80 to i64
  %yx82 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %71 = load i64, i64* %yx82, align 8
  %mul83 = mul nsw i64 %conv81, %71
  %shift84 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %72 = load i32, i32* %shift84, align 4
  %sub85 = sub nsw i32 0, %72
  %sh_prom86 = zext i32 %sub85 to i64
  %shl87 = shl i64 %mul83, %sh_prom86
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.77, %cond.true.66
  %cond89 = phi i64 [ %shr76, %cond.true.66 ], [ %shl87, %cond.false.77 ]
  %73 = load i64, i64* %ptx, align 8
  %add90 = add nsw i64 %73, %cond89
  store i64 %add90, i64* %ptx, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %cond.end.88, %cond.end
  br label %mto

sw.bb.92:                                         ; preds = %while.body
  %shift93 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %74 = load i32, i32* %shift93, align 4
  %cmp94 = icmp sge i32 %74, 0
  br i1 %cmp94, label %cond.true.96, label %cond.false.107

cond.true.96:                                     ; preds = %sw.bb.92
  %arrayidx97 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %75 = load i64, i64* %arrayidx97, align 8
  %shr98 = ashr i64 %75, 12
  %conv99 = trunc i64 %shr98 to i32
  %conv100 = sext i32 %conv99 to i64
  %xx = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %76 = load i64, i64* %xx, align 8
  %mul101 = mul nsw i64 %conv100, %76
  %round102 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %77 = load i64, i64* %round102, align 8
  %add103 = add nsw i64 %mul101, %77
  %shift104 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %78 = load i32, i32* %shift104, align 4
  %sh_prom105 = zext i32 %78 to i64
  %shr106 = ashr i64 %add103, %sh_prom105
  br label %cond.end.118

cond.false.107:                                   ; preds = %sw.bb.92
  %arrayidx108 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %79 = load i64, i64* %arrayidx108, align 8
  %shr109 = ashr i64 %79, 12
  %conv110 = trunc i64 %shr109 to i32
  %conv111 = sext i32 %conv110 to i64
  %xx112 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %80 = load i64, i64* %xx112, align 8
  %mul113 = mul nsw i64 %conv111, %80
  %shift114 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %81 = load i32, i32* %shift114, align 4
  %sub115 = sub nsw i32 0, %81
  %sh_prom116 = zext i32 %sub115 to i64
  %shl117 = shl i64 %mul113, %sh_prom116
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.107, %cond.true.96
  %cond119 = phi i64 [ %shr106, %cond.true.96 ], [ %shl117, %cond.false.107 ]
  %82 = load i64, i64* %ptx, align 8
  %add120 = add nsw i64 %82, %cond119
  store i64 %add120, i64* %ptx, align 8
  %shift121 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %83 = load i32, i32* %shift121, align 4
  %cmp122 = icmp sge i32 %83, 0
  br i1 %cmp122, label %cond.true.124, label %cond.false.136

cond.true.124:                                    ; preds = %cond.end.118
  %arrayidx125 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %84 = load i64, i64* %arrayidx125, align 8
  %shr126 = ashr i64 %84, 12
  %conv127 = trunc i64 %shr126 to i32
  %conv128 = sext i32 %conv127 to i64
  %yy129 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %85 = load i64, i64* %yy129, align 8
  %mul130 = mul nsw i64 %conv128, %85
  %round131 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %86 = load i64, i64* %round131, align 8
  %add132 = add nsw i64 %mul130, %86
  %shift133 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %87 = load i32, i32* %shift133, align 4
  %sh_prom134 = zext i32 %87 to i64
  %shr135 = ashr i64 %add132, %sh_prom134
  br label %cond.end.147

cond.false.136:                                   ; preds = %cond.end.118
  %arrayidx137 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %88 = load i64, i64* %arrayidx137, align 8
  %shr138 = ashr i64 %88, 12
  %conv139 = trunc i64 %shr138 to i32
  %conv140 = sext i32 %conv139 to i64
  %yy141 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %89 = load i64, i64* %yy141, align 8
  %mul142 = mul nsw i64 %conv140, %89
  %shift143 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %90 = load i32, i32* %shift143, align 4
  %sub144 = sub nsw i32 0, %90
  %sh_prom145 = zext i32 %sub144 to i64
  %shl146 = shl i64 %mul142, %sh_prom145
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.136, %cond.true.124
  %cond148 = phi i64 [ %shr135, %cond.true.124 ], [ %shl146, %cond.false.136 ]
  %91 = load i64, i64* %pty, align 8
  %add149 = add nsw i64 %91, %cond148
  store i64 %add149, i64* %pty, align 8
  %skewed150 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %92 = load i32, i32* %skewed150, align 4
  %tobool151 = icmp ne i32 %92, 0
  br i1 %tobool151, label %if.then.152, label %if.end.210

if.then.152:                                      ; preds = %cond.end.147
  %shift153 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %93 = load i32, i32* %shift153, align 4
  %cmp154 = icmp sge i32 %93, 0
  br i1 %cmp154, label %cond.true.156, label %cond.false.167

cond.true.156:                                    ; preds = %if.then.152
  %arrayidx157 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %94 = load i64, i64* %arrayidx157, align 8
  %shr158 = ashr i64 %94, 12
  %conv159 = trunc i64 %shr158 to i32
  %conv160 = sext i32 %conv159 to i64
  %xy = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %95 = load i64, i64* %xy, align 8
  %mul161 = mul nsw i64 %conv160, %95
  %round162 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %96 = load i64, i64* %round162, align 8
  %add163 = add nsw i64 %mul161, %96
  %shift164 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %97 = load i32, i32* %shift164, align 4
  %sh_prom165 = zext i32 %97 to i64
  %shr166 = ashr i64 %add163, %sh_prom165
  br label %cond.end.178

cond.false.167:                                   ; preds = %if.then.152
  %arrayidx168 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %98 = load i64, i64* %arrayidx168, align 8
  %shr169 = ashr i64 %98, 12
  %conv170 = trunc i64 %shr169 to i32
  %conv171 = sext i32 %conv170 to i64
  %xy172 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %99 = load i64, i64* %xy172, align 8
  %mul173 = mul nsw i64 %conv171, %99
  %shift174 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %100 = load i32, i32* %shift174, align 4
  %sub175 = sub nsw i32 0, %100
  %sh_prom176 = zext i32 %sub175 to i64
  %shl177 = shl i64 %mul173, %sh_prom176
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.167, %cond.true.156
  %cond179 = phi i64 [ %shr166, %cond.true.156 ], [ %shl177, %cond.false.167 ]
  %101 = load i64, i64* %pty, align 8
  %add180 = add nsw i64 %101, %cond179
  store i64 %add180, i64* %pty, align 8
  %shift181 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %102 = load i32, i32* %shift181, align 4
  %cmp182 = icmp sge i32 %102, 0
  br i1 %cmp182, label %cond.true.184, label %cond.false.196

cond.true.184:                                    ; preds = %cond.end.178
  %arrayidx185 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %103 = load i64, i64* %arrayidx185, align 8
  %shr186 = ashr i64 %103, 12
  %conv187 = trunc i64 %shr186 to i32
  %conv188 = sext i32 %conv187 to i64
  %yx189 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %104 = load i64, i64* %yx189, align 8
  %mul190 = mul nsw i64 %conv188, %104
  %round191 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %105 = load i64, i64* %round191, align 8
  %add192 = add nsw i64 %mul190, %105
  %shift193 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %106 = load i32, i32* %shift193, align 4
  %sh_prom194 = zext i32 %106 to i64
  %shr195 = ashr i64 %add192, %sh_prom194
  br label %cond.end.207

cond.false.196:                                   ; preds = %cond.end.178
  %arrayidx197 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %107 = load i64, i64* %arrayidx197, align 8
  %shr198 = ashr i64 %107, 12
  %conv199 = trunc i64 %shr198 to i32
  %conv200 = sext i32 %conv199 to i64
  %yx201 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %108 = load i64, i64* %yx201, align 8
  %mul202 = mul nsw i64 %conv200, %108
  %shift203 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %109 = load i32, i32* %shift203, align 4
  %sub204 = sub nsw i32 0, %109
  %sh_prom205 = zext i32 %sub204 to i64
  %shl206 = shl i64 %mul202, %sh_prom205
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.196, %cond.true.184
  %cond208 = phi i64 [ %shr195, %cond.true.184 ], [ %shl206, %cond.false.196 ]
  %110 = load i64, i64* %ptx, align 8
  %add209 = add nsw i64 %110, %cond208
  store i64 %add209, i64* %ptx, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %cond.end.207, %cond.end.147
  br label %lto

lto:                                              ; preds = %if.end.342, %if.end.279, %if.end.210
  %111 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %112 = load i64, i64* %ptx, align 8
  %113 = load i64, i64* %pty, align 8
  %call = call i32 @gx_path_add_line(%struct.gx_path_s* %111, i64 %112, i64 %113)
  store i32 %call, i32* %code, align 4
  br label %moved

moved:                                            ; preds = %mto, %curve, %lto
  %114 = load i32, i32* %code, align 4
  %cmp211 = icmp slt i32 %114, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %moved
  %115 = load i32, i32* %code, align 4
  store i32 %115, i32* %retval
  br label %return

if.end.214:                                       ; preds = %moved
  br label %pp

pp:                                               ; preds = %if.end.1086, %if.end.214
  %arraydecay215 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr216 = getelementptr inbounds i64, i64* %arraydecay215, i64 -1
  store i64* %add.ptr216, i64** %csp, align 8
  br label %sw.epilog.2007

sw.bb.217:                                        ; preds = %while.body
  %shift218 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %116 = load i32, i32* %shift218, align 4
  %cmp219 = icmp sge i32 %116, 0
  br i1 %cmp219, label %cond.true.221, label %cond.false.233

cond.true.221:                                    ; preds = %sw.bb.217
  %arrayidx222 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %117 = load i64, i64* %arrayidx222, align 8
  %shr223 = ashr i64 %117, 12
  %conv224 = trunc i64 %shr223 to i32
  %conv225 = sext i32 %conv224 to i64
  %xx226 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %118 = load i64, i64* %xx226, align 8
  %mul227 = mul nsw i64 %conv225, %118
  %round228 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %119 = load i64, i64* %round228, align 8
  %add229 = add nsw i64 %mul227, %119
  %shift230 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %120 = load i32, i32* %shift230, align 4
  %sh_prom231 = zext i32 %120 to i64
  %shr232 = ashr i64 %add229, %sh_prom231
  br label %cond.end.244

cond.false.233:                                   ; preds = %sw.bb.217
  %arrayidx234 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %121 = load i64, i64* %arrayidx234, align 8
  %shr235 = ashr i64 %121, 12
  %conv236 = trunc i64 %shr235 to i32
  %conv237 = sext i32 %conv236 to i64
  %xx238 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %122 = load i64, i64* %xx238, align 8
  %mul239 = mul nsw i64 %conv237, %122
  %shift240 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %123 = load i32, i32* %shift240, align 4
  %sub241 = sub nsw i32 0, %123
  %sh_prom242 = zext i32 %sub241 to i64
  %shl243 = shl i64 %mul239, %sh_prom242
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.233, %cond.true.221
  %cond245 = phi i64 [ %shr232, %cond.true.221 ], [ %shl243, %cond.false.233 ]
  %124 = load i64, i64* %ptx, align 8
  %add246 = add nsw i64 %124, %cond245
  store i64 %add246, i64* %ptx, align 8
  %skewed247 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %125 = load i32, i32* %skewed247, align 4
  %tobool248 = icmp ne i32 %125, 0
  br i1 %tobool248, label %if.then.249, label %if.end.279

if.then.249:                                      ; preds = %cond.end.244
  %shift250 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %126 = load i32, i32* %shift250, align 4
  %cmp251 = icmp sge i32 %126, 0
  br i1 %cmp251, label %cond.true.253, label %cond.false.265

cond.true.253:                                    ; preds = %if.then.249
  %arrayidx254 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %127 = load i64, i64* %arrayidx254, align 8
  %shr255 = ashr i64 %127, 12
  %conv256 = trunc i64 %shr255 to i32
  %conv257 = sext i32 %conv256 to i64
  %xy258 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %128 = load i64, i64* %xy258, align 8
  %mul259 = mul nsw i64 %conv257, %128
  %round260 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %129 = load i64, i64* %round260, align 8
  %add261 = add nsw i64 %mul259, %129
  %shift262 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %130 = load i32, i32* %shift262, align 4
  %sh_prom263 = zext i32 %130 to i64
  %shr264 = ashr i64 %add261, %sh_prom263
  br label %cond.end.276

cond.false.265:                                   ; preds = %if.then.249
  %arrayidx266 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %131 = load i64, i64* %arrayidx266, align 8
  %shr267 = ashr i64 %131, 12
  %conv268 = trunc i64 %shr267 to i32
  %conv269 = sext i32 %conv268 to i64
  %xy270 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %132 = load i64, i64* %xy270, align 8
  %mul271 = mul nsw i64 %conv269, %132
  %shift272 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %133 = load i32, i32* %shift272, align 4
  %sub273 = sub nsw i32 0, %133
  %sh_prom274 = zext i32 %sub273 to i64
  %shl275 = shl i64 %mul271, %sh_prom274
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.265, %cond.true.253
  %cond277 = phi i64 [ %shr264, %cond.true.253 ], [ %shl275, %cond.false.265 ]
  %134 = load i64, i64* %pty, align 8
  %add278 = add nsw i64 %134, %cond277
  store i64 %add278, i64* %pty, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %cond.end.276, %cond.end.244
  br label %lto

sw.bb.280:                                        ; preds = %while.body
  %shift281 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %135 = load i32, i32* %shift281, align 4
  %cmp282 = icmp sge i32 %135, 0
  br i1 %cmp282, label %cond.true.284, label %cond.false.296

cond.true.284:                                    ; preds = %sw.bb.280
  %arrayidx285 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %136 = load i64, i64* %arrayidx285, align 8
  %shr286 = ashr i64 %136, 12
  %conv287 = trunc i64 %shr286 to i32
  %conv288 = sext i32 %conv287 to i64
  %yy289 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %137 = load i64, i64* %yy289, align 8
  %mul290 = mul nsw i64 %conv288, %137
  %round291 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %138 = load i64, i64* %round291, align 8
  %add292 = add nsw i64 %mul290, %138
  %shift293 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %139 = load i32, i32* %shift293, align 4
  %sh_prom294 = zext i32 %139 to i64
  %shr295 = ashr i64 %add292, %sh_prom294
  br label %cond.end.307

cond.false.296:                                   ; preds = %sw.bb.280
  %arrayidx297 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %140 = load i64, i64* %arrayidx297, align 8
  %shr298 = ashr i64 %140, 12
  %conv299 = trunc i64 %shr298 to i32
  %conv300 = sext i32 %conv299 to i64
  %yy301 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %141 = load i64, i64* %yy301, align 8
  %mul302 = mul nsw i64 %conv300, %141
  %shift303 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %142 = load i32, i32* %shift303, align 4
  %sub304 = sub nsw i32 0, %142
  %sh_prom305 = zext i32 %sub304 to i64
  %shl306 = shl i64 %mul302, %sh_prom305
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.296, %cond.true.284
  %cond308 = phi i64 [ %shr295, %cond.true.284 ], [ %shl306, %cond.false.296 ]
  %143 = load i64, i64* %pty, align 8
  %add309 = add nsw i64 %143, %cond308
  store i64 %add309, i64* %pty, align 8
  %skewed310 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %144 = load i32, i32* %skewed310, align 4
  %tobool311 = icmp ne i32 %144, 0
  br i1 %tobool311, label %if.then.312, label %if.end.342

if.then.312:                                      ; preds = %cond.end.307
  %shift313 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %145 = load i32, i32* %shift313, align 4
  %cmp314 = icmp sge i32 %145, 0
  br i1 %cmp314, label %cond.true.316, label %cond.false.328

cond.true.316:                                    ; preds = %if.then.312
  %arrayidx317 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %146 = load i64, i64* %arrayidx317, align 8
  %shr318 = ashr i64 %146, 12
  %conv319 = trunc i64 %shr318 to i32
  %conv320 = sext i32 %conv319 to i64
  %yx321 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %147 = load i64, i64* %yx321, align 8
  %mul322 = mul nsw i64 %conv320, %147
  %round323 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %148 = load i64, i64* %round323, align 8
  %add324 = add nsw i64 %mul322, %148
  %shift325 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %149 = load i32, i32* %shift325, align 4
  %sh_prom326 = zext i32 %149 to i64
  %shr327 = ashr i64 %add324, %sh_prom326
  br label %cond.end.339

cond.false.328:                                   ; preds = %if.then.312
  %arrayidx329 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %150 = load i64, i64* %arrayidx329, align 8
  %shr330 = ashr i64 %150, 12
  %conv331 = trunc i64 %shr330 to i32
  %conv332 = sext i32 %conv331 to i64
  %yx333 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %151 = load i64, i64* %yx333, align 8
  %mul334 = mul nsw i64 %conv332, %151
  %shift335 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %152 = load i32, i32* %shift335, align 4
  %sub336 = sub nsw i32 0, %152
  %sh_prom337 = zext i32 %sub336 to i64
  %shl338 = shl i64 %mul334, %sh_prom337
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.328, %cond.true.316
  %cond340 = phi i64 [ %shr327, %cond.true.316 ], [ %shl338, %cond.false.328 ]
  %153 = load i64, i64* %ptx, align 8
  %add341 = add nsw i64 %153, %cond340
  store i64 %add341, i64* %ptx, align 8
  br label %if.end.342

if.end.342:                                       ; preds = %cond.end.339, %cond.end.307
  br label %lto

sw.bb.343:                                        ; preds = %while.body
  %shift344 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %154 = load i32, i32* %shift344, align 4
  %cmp345 = icmp sge i32 %154, 0
  br i1 %cmp345, label %cond.true.347, label %cond.false.359

cond.true.347:                                    ; preds = %sw.bb.343
  %arrayidx348 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %155 = load i64, i64* %arrayidx348, align 8
  %shr349 = ashr i64 %155, 12
  %conv350 = trunc i64 %shr349 to i32
  %conv351 = sext i32 %conv350 to i64
  %xx352 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %156 = load i64, i64* %xx352, align 8
  %mul353 = mul nsw i64 %conv351, %156
  %round354 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %157 = load i64, i64* %round354, align 8
  %add355 = add nsw i64 %mul353, %157
  %shift356 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %158 = load i32, i32* %shift356, align 4
  %sh_prom357 = zext i32 %158 to i64
  %shr358 = ashr i64 %add355, %sh_prom357
  br label %cond.end.370

cond.false.359:                                   ; preds = %sw.bb.343
  %arrayidx360 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %159 = load i64, i64* %arrayidx360, align 8
  %shr361 = ashr i64 %159, 12
  %conv362 = trunc i64 %shr361 to i32
  %conv363 = sext i32 %conv362 to i64
  %xx364 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %160 = load i64, i64* %xx364, align 8
  %mul365 = mul nsw i64 %conv363, %160
  %shift366 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %161 = load i32, i32* %shift366, align 4
  %sub367 = sub nsw i32 0, %161
  %sh_prom368 = zext i32 %sub367 to i64
  %shl369 = shl i64 %mul365, %sh_prom368
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.359, %cond.true.347
  %cond371 = phi i64 [ %shr358, %cond.true.347 ], [ %shl369, %cond.false.359 ]
  %162 = load i64, i64* %ptx, align 8
  %add372 = add nsw i64 %162, %cond371
  store i64 %add372, i64* %ptx, align 8
  %shift373 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %163 = load i32, i32* %shift373, align 4
  %cmp374 = icmp sge i32 %163, 0
  br i1 %cmp374, label %cond.true.376, label %cond.false.388

cond.true.376:                                    ; preds = %cond.end.370
  %arrayidx377 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %164 = load i64, i64* %arrayidx377, align 8
  %shr378 = ashr i64 %164, 12
  %conv379 = trunc i64 %shr378 to i32
  %conv380 = sext i32 %conv379 to i64
  %yy381 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %165 = load i64, i64* %yy381, align 8
  %mul382 = mul nsw i64 %conv380, %165
  %round383 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %166 = load i64, i64* %round383, align 8
  %add384 = add nsw i64 %mul382, %166
  %shift385 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %167 = load i32, i32* %shift385, align 4
  %sh_prom386 = zext i32 %167 to i64
  %shr387 = ashr i64 %add384, %sh_prom386
  br label %cond.end.399

cond.false.388:                                   ; preds = %cond.end.370
  %arrayidx389 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %168 = load i64, i64* %arrayidx389, align 8
  %shr390 = ashr i64 %168, 12
  %conv391 = trunc i64 %shr390 to i32
  %conv392 = sext i32 %conv391 to i64
  %yy393 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %169 = load i64, i64* %yy393, align 8
  %mul394 = mul nsw i64 %conv392, %169
  %shift395 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %170 = load i32, i32* %shift395, align 4
  %sub396 = sub nsw i32 0, %170
  %sh_prom397 = zext i32 %sub396 to i64
  %shl398 = shl i64 %mul394, %sh_prom397
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.388, %cond.true.376
  %cond400 = phi i64 [ %shr387, %cond.true.376 ], [ %shl398, %cond.false.388 ]
  %171 = load i64, i64* %pty, align 8
  %add401 = add nsw i64 %171, %cond400
  store i64 %add401, i64* %pty, align 8
  %skewed402 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %172 = load i32, i32* %skewed402, align 4
  %tobool403 = icmp ne i32 %172, 0
  br i1 %tobool403, label %if.then.404, label %if.end.463

if.then.404:                                      ; preds = %cond.end.399
  %shift405 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %173 = load i32, i32* %shift405, align 4
  %cmp406 = icmp sge i32 %173, 0
  br i1 %cmp406, label %cond.true.408, label %cond.false.420

cond.true.408:                                    ; preds = %if.then.404
  %arrayidx409 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %174 = load i64, i64* %arrayidx409, align 8
  %shr410 = ashr i64 %174, 12
  %conv411 = trunc i64 %shr410 to i32
  %conv412 = sext i32 %conv411 to i64
  %xy413 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %175 = load i64, i64* %xy413, align 8
  %mul414 = mul nsw i64 %conv412, %175
  %round415 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %176 = load i64, i64* %round415, align 8
  %add416 = add nsw i64 %mul414, %176
  %shift417 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %177 = load i32, i32* %shift417, align 4
  %sh_prom418 = zext i32 %177 to i64
  %shr419 = ashr i64 %add416, %sh_prom418
  br label %cond.end.431

cond.false.420:                                   ; preds = %if.then.404
  %arrayidx421 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %178 = load i64, i64* %arrayidx421, align 8
  %shr422 = ashr i64 %178, 12
  %conv423 = trunc i64 %shr422 to i32
  %conv424 = sext i32 %conv423 to i64
  %xy425 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %179 = load i64, i64* %xy425, align 8
  %mul426 = mul nsw i64 %conv424, %179
  %shift427 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %180 = load i32, i32* %shift427, align 4
  %sub428 = sub nsw i32 0, %180
  %sh_prom429 = zext i32 %sub428 to i64
  %shl430 = shl i64 %mul426, %sh_prom429
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.420, %cond.true.408
  %cond432 = phi i64 [ %shr419, %cond.true.408 ], [ %shl430, %cond.false.420 ]
  %181 = load i64, i64* %pty, align 8
  %add433 = add nsw i64 %181, %cond432
  store i64 %add433, i64* %pty, align 8
  %shift434 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %182 = load i32, i32* %shift434, align 4
  %cmp435 = icmp sge i32 %182, 0
  br i1 %cmp435, label %cond.true.437, label %cond.false.449

cond.true.437:                                    ; preds = %cond.end.431
  %arrayidx438 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %183 = load i64, i64* %arrayidx438, align 8
  %shr439 = ashr i64 %183, 12
  %conv440 = trunc i64 %shr439 to i32
  %conv441 = sext i32 %conv440 to i64
  %yx442 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %184 = load i64, i64* %yx442, align 8
  %mul443 = mul nsw i64 %conv441, %184
  %round444 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %185 = load i64, i64* %round444, align 8
  %add445 = add nsw i64 %mul443, %185
  %shift446 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %186 = load i32, i32* %shift446, align 4
  %sh_prom447 = zext i32 %186 to i64
  %shr448 = ashr i64 %add445, %sh_prom447
  br label %cond.end.460

cond.false.449:                                   ; preds = %cond.end.431
  %arrayidx450 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %187 = load i64, i64* %arrayidx450, align 8
  %shr451 = ashr i64 %187, 12
  %conv452 = trunc i64 %shr451 to i32
  %conv453 = sext i32 %conv452 to i64
  %yx454 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %188 = load i64, i64* %yx454, align 8
  %mul455 = mul nsw i64 %conv453, %188
  %shift456 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %189 = load i32, i32* %shift456, align 4
  %sub457 = sub nsw i32 0, %189
  %sh_prom458 = zext i32 %sub457 to i64
  %shl459 = shl i64 %mul455, %sh_prom458
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.false.449, %cond.true.437
  %cond461 = phi i64 [ %shr448, %cond.true.437 ], [ %shl459, %cond.false.449 ]
  %190 = load i64, i64* %ptx, align 8
  %add462 = add nsw i64 %190, %cond461
  store i64 %add462, i64* %ptx, align 8
  br label %if.end.463

if.end.463:                                       ; preds = %cond.end.460, %cond.end.399
  %191 = load i64, i64* %ptx, align 8
  store i64 %191, i64* %x1, align 8
  %192 = load i64, i64* %pty, align 8
  store i64 %192, i64* %y1, align 8
  %shift464 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %193 = load i32, i32* %shift464, align 4
  %cmp465 = icmp sge i32 %193, 0
  br i1 %cmp465, label %cond.true.467, label %cond.false.479

cond.true.467:                                    ; preds = %if.end.463
  %arrayidx468 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %194 = load i64, i64* %arrayidx468, align 8
  %shr469 = ashr i64 %194, 12
  %conv470 = trunc i64 %shr469 to i32
  %conv471 = sext i32 %conv470 to i64
  %xx472 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %195 = load i64, i64* %xx472, align 8
  %mul473 = mul nsw i64 %conv471, %195
  %round474 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %196 = load i64, i64* %round474, align 8
  %add475 = add nsw i64 %mul473, %196
  %shift476 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %197 = load i32, i32* %shift476, align 4
  %sh_prom477 = zext i32 %197 to i64
  %shr478 = ashr i64 %add475, %sh_prom477
  br label %cond.end.490

cond.false.479:                                   ; preds = %if.end.463
  %arrayidx480 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %198 = load i64, i64* %arrayidx480, align 8
  %shr481 = ashr i64 %198, 12
  %conv482 = trunc i64 %shr481 to i32
  %conv483 = sext i32 %conv482 to i64
  %xx484 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %199 = load i64, i64* %xx484, align 8
  %mul485 = mul nsw i64 %conv483, %199
  %shift486 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %200 = load i32, i32* %shift486, align 4
  %sub487 = sub nsw i32 0, %200
  %sh_prom488 = zext i32 %sub487 to i64
  %shl489 = shl i64 %mul485, %sh_prom488
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.479, %cond.true.467
  %cond491 = phi i64 [ %shr478, %cond.true.467 ], [ %shl489, %cond.false.479 ]
  %201 = load i64, i64* %ptx, align 8
  %add492 = add nsw i64 %201, %cond491
  store i64 %add492, i64* %ptx, align 8
  %shift493 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %202 = load i32, i32* %shift493, align 4
  %cmp494 = icmp sge i32 %202, 0
  br i1 %cmp494, label %cond.true.496, label %cond.false.508

cond.true.496:                                    ; preds = %cond.end.490
  %arrayidx497 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %203 = load i64, i64* %arrayidx497, align 8
  %shr498 = ashr i64 %203, 12
  %conv499 = trunc i64 %shr498 to i32
  %conv500 = sext i32 %conv499 to i64
  %yy501 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %204 = load i64, i64* %yy501, align 8
  %mul502 = mul nsw i64 %conv500, %204
  %round503 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %205 = load i64, i64* %round503, align 8
  %add504 = add nsw i64 %mul502, %205
  %shift505 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %206 = load i32, i32* %shift505, align 4
  %sh_prom506 = zext i32 %206 to i64
  %shr507 = ashr i64 %add504, %sh_prom506
  br label %cond.end.519

cond.false.508:                                   ; preds = %cond.end.490
  %arrayidx509 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %207 = load i64, i64* %arrayidx509, align 8
  %shr510 = ashr i64 %207, 12
  %conv511 = trunc i64 %shr510 to i32
  %conv512 = sext i32 %conv511 to i64
  %yy513 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %208 = load i64, i64* %yy513, align 8
  %mul514 = mul nsw i64 %conv512, %208
  %shift515 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %209 = load i32, i32* %shift515, align 4
  %sub516 = sub nsw i32 0, %209
  %sh_prom517 = zext i32 %sub516 to i64
  %shl518 = shl i64 %mul514, %sh_prom517
  br label %cond.end.519

cond.end.519:                                     ; preds = %cond.false.508, %cond.true.496
  %cond520 = phi i64 [ %shr507, %cond.true.496 ], [ %shl518, %cond.false.508 ]
  %210 = load i64, i64* %pty, align 8
  %add521 = add nsw i64 %210, %cond520
  store i64 %add521, i64* %pty, align 8
  %skewed522 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %211 = load i32, i32* %skewed522, align 4
  %tobool523 = icmp ne i32 %211, 0
  br i1 %tobool523, label %if.then.524, label %if.end.583

if.then.524:                                      ; preds = %cond.end.519
  %shift525 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %212 = load i32, i32* %shift525, align 4
  %cmp526 = icmp sge i32 %212, 0
  br i1 %cmp526, label %cond.true.528, label %cond.false.540

cond.true.528:                                    ; preds = %if.then.524
  %arrayidx529 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %213 = load i64, i64* %arrayidx529, align 8
  %shr530 = ashr i64 %213, 12
  %conv531 = trunc i64 %shr530 to i32
  %conv532 = sext i32 %conv531 to i64
  %xy533 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %214 = load i64, i64* %xy533, align 8
  %mul534 = mul nsw i64 %conv532, %214
  %round535 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %215 = load i64, i64* %round535, align 8
  %add536 = add nsw i64 %mul534, %215
  %shift537 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %216 = load i32, i32* %shift537, align 4
  %sh_prom538 = zext i32 %216 to i64
  %shr539 = ashr i64 %add536, %sh_prom538
  br label %cond.end.551

cond.false.540:                                   ; preds = %if.then.524
  %arrayidx541 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %217 = load i64, i64* %arrayidx541, align 8
  %shr542 = ashr i64 %217, 12
  %conv543 = trunc i64 %shr542 to i32
  %conv544 = sext i32 %conv543 to i64
  %xy545 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %218 = load i64, i64* %xy545, align 8
  %mul546 = mul nsw i64 %conv544, %218
  %shift547 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %219 = load i32, i32* %shift547, align 4
  %sub548 = sub nsw i32 0, %219
  %sh_prom549 = zext i32 %sub548 to i64
  %shl550 = shl i64 %mul546, %sh_prom549
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.false.540, %cond.true.528
  %cond552 = phi i64 [ %shr539, %cond.true.528 ], [ %shl550, %cond.false.540 ]
  %220 = load i64, i64* %pty, align 8
  %add553 = add nsw i64 %220, %cond552
  store i64 %add553, i64* %pty, align 8
  %shift554 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %221 = load i32, i32* %shift554, align 4
  %cmp555 = icmp sge i32 %221, 0
  br i1 %cmp555, label %cond.true.557, label %cond.false.569

cond.true.557:                                    ; preds = %cond.end.551
  %arrayidx558 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %222 = load i64, i64* %arrayidx558, align 8
  %shr559 = ashr i64 %222, 12
  %conv560 = trunc i64 %shr559 to i32
  %conv561 = sext i32 %conv560 to i64
  %yx562 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %223 = load i64, i64* %yx562, align 8
  %mul563 = mul nsw i64 %conv561, %223
  %round564 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %224 = load i64, i64* %round564, align 8
  %add565 = add nsw i64 %mul563, %224
  %shift566 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %225 = load i32, i32* %shift566, align 4
  %sh_prom567 = zext i32 %225 to i64
  %shr568 = ashr i64 %add565, %sh_prom567
  br label %cond.end.580

cond.false.569:                                   ; preds = %cond.end.551
  %arrayidx570 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %226 = load i64, i64* %arrayidx570, align 8
  %shr571 = ashr i64 %226, 12
  %conv572 = trunc i64 %shr571 to i32
  %conv573 = sext i32 %conv572 to i64
  %yx574 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %227 = load i64, i64* %yx574, align 8
  %mul575 = mul nsw i64 %conv573, %227
  %shift576 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %228 = load i32, i32* %shift576, align 4
  %sub577 = sub nsw i32 0, %228
  %sh_prom578 = zext i32 %sub577 to i64
  %shl579 = shl i64 %mul575, %sh_prom578
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.569, %cond.true.557
  %cond581 = phi i64 [ %shr568, %cond.true.557 ], [ %shl579, %cond.false.569 ]
  %229 = load i64, i64* %ptx, align 8
  %add582 = add nsw i64 %229, %cond581
  store i64 %add582, i64* %ptx, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %cond.end.580, %cond.end.519
  %230 = load i64, i64* %ptx, align 8
  store i64 %230, i64* %x2, align 8
  %231 = load i64, i64* %pty, align 8
  store i64 %231, i64* %y2, align 8
  %shift584 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %232 = load i32, i32* %shift584, align 4
  %cmp585 = icmp sge i32 %232, 0
  br i1 %cmp585, label %cond.true.587, label %cond.false.599

cond.true.587:                                    ; preds = %if.end.583
  %arrayidx588 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 4
  %233 = load i64, i64* %arrayidx588, align 8
  %shr589 = ashr i64 %233, 12
  %conv590 = trunc i64 %shr589 to i32
  %conv591 = sext i32 %conv590 to i64
  %xx592 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %234 = load i64, i64* %xx592, align 8
  %mul593 = mul nsw i64 %conv591, %234
  %round594 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %235 = load i64, i64* %round594, align 8
  %add595 = add nsw i64 %mul593, %235
  %shift596 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %236 = load i32, i32* %shift596, align 4
  %sh_prom597 = zext i32 %236 to i64
  %shr598 = ashr i64 %add595, %sh_prom597
  br label %cond.end.610

cond.false.599:                                   ; preds = %if.end.583
  %arrayidx600 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 4
  %237 = load i64, i64* %arrayidx600, align 8
  %shr601 = ashr i64 %237, 12
  %conv602 = trunc i64 %shr601 to i32
  %conv603 = sext i32 %conv602 to i64
  %xx604 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %238 = load i64, i64* %xx604, align 8
  %mul605 = mul nsw i64 %conv603, %238
  %shift606 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %239 = load i32, i32* %shift606, align 4
  %sub607 = sub nsw i32 0, %239
  %sh_prom608 = zext i32 %sub607 to i64
  %shl609 = shl i64 %mul605, %sh_prom608
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.599, %cond.true.587
  %cond611 = phi i64 [ %shr598, %cond.true.587 ], [ %shl609, %cond.false.599 ]
  %240 = load i64, i64* %ptx, align 8
  %add612 = add nsw i64 %240, %cond611
  store i64 %add612, i64* %ptx, align 8
  %shift613 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %241 = load i32, i32* %shift613, align 4
  %cmp614 = icmp sge i32 %241, 0
  br i1 %cmp614, label %cond.true.616, label %cond.false.628

cond.true.616:                                    ; preds = %cond.end.610
  %arrayidx617 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 5
  %242 = load i64, i64* %arrayidx617, align 8
  %shr618 = ashr i64 %242, 12
  %conv619 = trunc i64 %shr618 to i32
  %conv620 = sext i32 %conv619 to i64
  %yy621 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %243 = load i64, i64* %yy621, align 8
  %mul622 = mul nsw i64 %conv620, %243
  %round623 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %244 = load i64, i64* %round623, align 8
  %add624 = add nsw i64 %mul622, %244
  %shift625 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %245 = load i32, i32* %shift625, align 4
  %sh_prom626 = zext i32 %245 to i64
  %shr627 = ashr i64 %add624, %sh_prom626
  br label %cond.end.639

cond.false.628:                                   ; preds = %cond.end.610
  %arrayidx629 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 5
  %246 = load i64, i64* %arrayidx629, align 8
  %shr630 = ashr i64 %246, 12
  %conv631 = trunc i64 %shr630 to i32
  %conv632 = sext i32 %conv631 to i64
  %yy633 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %247 = load i64, i64* %yy633, align 8
  %mul634 = mul nsw i64 %conv632, %247
  %shift635 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %248 = load i32, i32* %shift635, align 4
  %sub636 = sub nsw i32 0, %248
  %sh_prom637 = zext i32 %sub636 to i64
  %shl638 = shl i64 %mul634, %sh_prom637
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.628, %cond.true.616
  %cond640 = phi i64 [ %shr627, %cond.true.616 ], [ %shl638, %cond.false.628 ]
  %249 = load i64, i64* %pty, align 8
  %add641 = add nsw i64 %249, %cond640
  store i64 %add641, i64* %pty, align 8
  %skewed642 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %250 = load i32, i32* %skewed642, align 4
  %tobool643 = icmp ne i32 %250, 0
  br i1 %tobool643, label %if.then.644, label %if.end.703

if.then.644:                                      ; preds = %cond.end.639
  %shift645 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %251 = load i32, i32* %shift645, align 4
  %cmp646 = icmp sge i32 %251, 0
  br i1 %cmp646, label %cond.true.648, label %cond.false.660

cond.true.648:                                    ; preds = %if.then.644
  %arrayidx649 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 4
  %252 = load i64, i64* %arrayidx649, align 8
  %shr650 = ashr i64 %252, 12
  %conv651 = trunc i64 %shr650 to i32
  %conv652 = sext i32 %conv651 to i64
  %xy653 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %253 = load i64, i64* %xy653, align 8
  %mul654 = mul nsw i64 %conv652, %253
  %round655 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %254 = load i64, i64* %round655, align 8
  %add656 = add nsw i64 %mul654, %254
  %shift657 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %255 = load i32, i32* %shift657, align 4
  %sh_prom658 = zext i32 %255 to i64
  %shr659 = ashr i64 %add656, %sh_prom658
  br label %cond.end.671

cond.false.660:                                   ; preds = %if.then.644
  %arrayidx661 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 4
  %256 = load i64, i64* %arrayidx661, align 8
  %shr662 = ashr i64 %256, 12
  %conv663 = trunc i64 %shr662 to i32
  %conv664 = sext i32 %conv663 to i64
  %xy665 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %257 = load i64, i64* %xy665, align 8
  %mul666 = mul nsw i64 %conv664, %257
  %shift667 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %258 = load i32, i32* %shift667, align 4
  %sub668 = sub nsw i32 0, %258
  %sh_prom669 = zext i32 %sub668 to i64
  %shl670 = shl i64 %mul666, %sh_prom669
  br label %cond.end.671

cond.end.671:                                     ; preds = %cond.false.660, %cond.true.648
  %cond672 = phi i64 [ %shr659, %cond.true.648 ], [ %shl670, %cond.false.660 ]
  %259 = load i64, i64* %pty, align 8
  %add673 = add nsw i64 %259, %cond672
  store i64 %add673, i64* %pty, align 8
  %shift674 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %260 = load i32, i32* %shift674, align 4
  %cmp675 = icmp sge i32 %260, 0
  br i1 %cmp675, label %cond.true.677, label %cond.false.689

cond.true.677:                                    ; preds = %cond.end.671
  %arrayidx678 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 5
  %261 = load i64, i64* %arrayidx678, align 8
  %shr679 = ashr i64 %261, 12
  %conv680 = trunc i64 %shr679 to i32
  %conv681 = sext i32 %conv680 to i64
  %yx682 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %262 = load i64, i64* %yx682, align 8
  %mul683 = mul nsw i64 %conv681, %262
  %round684 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %263 = load i64, i64* %round684, align 8
  %add685 = add nsw i64 %mul683, %263
  %shift686 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %264 = load i32, i32* %shift686, align 4
  %sh_prom687 = zext i32 %264 to i64
  %shr688 = ashr i64 %add685, %sh_prom687
  br label %cond.end.700

cond.false.689:                                   ; preds = %cond.end.671
  %arrayidx690 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 5
  %265 = load i64, i64* %arrayidx690, align 8
  %shr691 = ashr i64 %265, 12
  %conv692 = trunc i64 %shr691 to i32
  %conv693 = sext i32 %conv692 to i64
  %yx694 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %266 = load i64, i64* %yx694, align 8
  %mul695 = mul nsw i64 %conv693, %266
  %shift696 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %267 = load i32, i32* %shift696, align 4
  %sub697 = sub nsw i32 0, %267
  %sh_prom698 = zext i32 %sub697 to i64
  %shl699 = shl i64 %mul695, %sh_prom698
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.689, %cond.true.677
  %cond701 = phi i64 [ %shr688, %cond.true.677 ], [ %shl699, %cond.false.689 ]
  %268 = load i64, i64* %ptx, align 8
  %add702 = add nsw i64 %268, %cond701
  store i64 %add702, i64* %ptx, align 8
  br label %if.end.703

if.end.703:                                       ; preds = %cond.end.700, %cond.end.639
  br label %curve

curve:                                            ; preds = %if.end.1893, %if.end.1648, %if.end.703
  %269 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %270 = load i64, i64* %x1, align 8
  %271 = load i64, i64* %y1, align 8
  %272 = load i64, i64* %x2, align 8
  %273 = load i64, i64* %y2, align 8
  %274 = load i64, i64* %ptx, align 8
  %275 = load i64, i64* %pty, align 8
  %call704 = call i32 @gx_path_add_curve(%struct.gx_path_s* %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275)
  store i32 %call704, i32* %code, align 4
  br label %moved

sw.bb.705:                                        ; preds = %while.body
  %276 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call706 = call i32 @gx_path_close_subpath(%struct.gx_path_s* %276)
  store i32 %call706, i32* %code, align 4
  %277 = load i32, i32* %code, align 4
  %cmp707 = icmp slt i32 %277, 0
  br i1 %cmp707, label %if.then.709, label %if.end.710

if.then.709:                                      ; preds = %sw.bb.705
  %278 = load i32, i32* %code, align 4
  store i32 %278, i32* %retval
  br label %return

if.end.710:                                       ; preds = %sw.bb.705
  br label %mto

sw.bb.711:                                        ; preds = %while.body
  %279 = load i64*, i64** %csp, align 8
  %280 = load i64, i64* %279, align 8
  %shr712 = ashr i64 %280, 12
  %conv713 = trunc i64 %shr712 to i32
  store i32 %conv713, i32* %index, align 4
  %281 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8
  %subr_proc = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %281, i32 0, i32 0
  %282 = load i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i32, i8**)** %subr_proc, align 8
  %283 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8
  %284 = load i32, i32* %index, align 4
  %call714 = call i32 %282(%struct.gs_type1_data_s* %283, i32 %284, i8** %nip)
  store i32 %call714, i32* %code, align 4
  %285 = load i32, i32* %code, align 4
  %cmp715 = icmp slt i32 %285, 0
  br i1 %cmp715, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %sw.bb.711
  %286 = load i32, i32* %code, align 4
  store i32 %286, i32* %retval
  br label %return

if.end.718:                                       ; preds = %sw.bb.711
  %287 = load i64*, i64** %csp, align 8
  %incdec.ptr719 = getelementptr inbounds i64, i64* %287, i32 -1
  store i64* %incdec.ptr719, i64** %csp, align 8
  %288 = load i8*, i8** %cip, align 8
  %289 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %ip720 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %289, i32 0, i32 0
  store i8* %288, i8** %ip720, align 8
  %290 = load i16, i16* %state, align 2
  %291 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %dstate721 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %291, i32 0, i32 1
  store i16 %290, i16* %dstate721, align 2
  %292 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %incdec.ptr722 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %292, i32 1
  store %struct.ip_state* %incdec.ptr722, %struct.ip_state** %ipsp, align 8
  %293 = load i8*, i8** %nip, align 8
  store i8* %293, i8** %cip, align 8
  store i16 4330, i16* %state, align 2
  %294 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pdata723 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %294, i32 0, i32 2
  %295 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata723, align 8
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %295, i32 0, i32 3
  %296 = load i32, i32* %lenIV, align 4
  store i32 %296, i32* %skip, align 4
  br label %top

sw.bb.724:                                        ; preds = %while.body
  %297 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %incdec.ptr725 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %297, i32 -1
  store %struct.ip_state* %incdec.ptr725, %struct.ip_state** %ipsp, align 8
  br label %itop

sw.bb.726:                                        ; preds = %while.body
  %298 = load i8*, i8** %cip, align 8
  %299 = load i8, i8* %298, align 1
  %conv727 = zext i8 %299 to i32
  %300 = load i16, i16* %state, align 2
  %conv728 = zext i16 %300 to i32
  %shr729 = ashr i32 %conv728, 8
  %xor730 = xor i32 %conv727, %shr729
  store i32 %xor730, i32* %c, align 4
  %301 = load i8*, i8** %cip, align 8
  %302 = load i8, i8* %301, align 1
  %conv731 = zext i8 %302 to i32
  %303 = load i16, i16* %state, align 2
  %conv732 = zext i16 %303 to i32
  %add733 = add nsw i32 %conv731, %conv732
  %mul734 = mul nsw i32 %add733, 52845
  %add735 = add nsw i32 %mul734, 22719
  %conv736 = trunc i32 %add735 to i16
  store i16 %conv736, i16* %state, align 2
  %304 = load i8*, i8** %cip, align 8
  %incdec.ptr737 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %incdec.ptr737, i8** %cip, align 8
  %305 = load i32, i32* %c, align 4
  switch i32 %305, label %sw.default [
    i32 0, label %sw.bb.738
    i32 1, label %sw.bb.741
    i32 2, label %sw.bb.744
    i32 6, label %sw.bb.747
    i32 7, label %sw.bb.891
    i32 12, label %sw.bb.902
    i32 15, label %sw.bb.910
    i32 16, label %sw.bb.920
    i32 17, label %sw.bb.947
    i32 33, label %sw.bb.954
  ]

sw.bb.738:                                        ; preds = %sw.bb.726
  %arraydecay739 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr740 = getelementptr inbounds i64, i64* %arraydecay739, i64 -1
  store i64* %add.ptr740, i64** %csp, align 8
  br label %sw.epilog

sw.bb.741:                                        ; preds = %sw.bb.726
  %arraydecay742 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr743 = getelementptr inbounds i64, i64* %arraydecay742, i64 -1
  store i64* %add.ptr743, i64** %csp, align 8
  br label %sw.epilog

sw.bb.744:                                        ; preds = %sw.bb.726
  %arraydecay745 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr746 = getelementptr inbounds i64, i64* %arraydecay745, i64 -1
  store i64* %add.ptr746, i64** %csp, align 8
  br label %sw.epilog

sw.bb.747:                                        ; preds = %sw.bb.726
  %arrayidx748 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %306 = load i64, i64* %arrayidx748, align 8
  %shr749 = ashr i64 %306, 12
  %conv750 = trunc i64 %shr749 to i32
  %conv751 = trunc i32 %conv750 to i8
  %conv752 = zext i8 %conv751 to i32
  %307 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %seac_base = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %307, i32 0, i32 13
  store i32 %conv752, i32* %seac_base, align 4
  %308 = load i64, i64* %ftx, align 8
  store i64 %308, i64* %ptx, align 8
  %309 = load i64, i64* %fty, align 8
  store i64 %309, i64* %pty, align 8
  %arrayidx753 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %310 = load i64, i64* %arrayidx753, align 8
  %arrayidx754 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %311 = load i64, i64* %arrayidx754, align 8
  %sub755 = sub nsw i64 %311, %310
  store i64 %sub755, i64* %arrayidx754, align 8
  %shift756 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %312 = load i32, i32* %shift756, align 4
  %cmp757 = icmp sge i32 %312, 0
  br i1 %cmp757, label %cond.true.759, label %cond.false.771

cond.true.759:                                    ; preds = %sw.bb.747
  %arrayidx760 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %313 = load i64, i64* %arrayidx760, align 8
  %shr761 = ashr i64 %313, 12
  %conv762 = trunc i64 %shr761 to i32
  %conv763 = sext i32 %conv762 to i64
  %xx764 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %314 = load i64, i64* %xx764, align 8
  %mul765 = mul nsw i64 %conv763, %314
  %round766 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %315 = load i64, i64* %round766, align 8
  %add767 = add nsw i64 %mul765, %315
  %shift768 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %316 = load i32, i32* %shift768, align 4
  %sh_prom769 = zext i32 %316 to i64
  %shr770 = ashr i64 %add767, %sh_prom769
  br label %cond.end.782

cond.false.771:                                   ; preds = %sw.bb.747
  %arrayidx772 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %317 = load i64, i64* %arrayidx772, align 8
  %shr773 = ashr i64 %317, 12
  %conv774 = trunc i64 %shr773 to i32
  %conv775 = sext i32 %conv774 to i64
  %xx776 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %318 = load i64, i64* %xx776, align 8
  %mul777 = mul nsw i64 %conv775, %318
  %shift778 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %319 = load i32, i32* %shift778, align 4
  %sub779 = sub nsw i32 0, %319
  %sh_prom780 = zext i32 %sub779 to i64
  %shl781 = shl i64 %mul777, %sh_prom780
  br label %cond.end.782

cond.end.782:                                     ; preds = %cond.false.771, %cond.true.759
  %cond783 = phi i64 [ %shr770, %cond.true.759 ], [ %shl781, %cond.false.771 ]
  %320 = load i64, i64* %ptx, align 8
  %add784 = add nsw i64 %320, %cond783
  store i64 %add784, i64* %ptx, align 8
  %shift785 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %321 = load i32, i32* %shift785, align 4
  %cmp786 = icmp sge i32 %321, 0
  br i1 %cmp786, label %cond.true.788, label %cond.false.800

cond.true.788:                                    ; preds = %cond.end.782
  %arrayidx789 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %322 = load i64, i64* %arrayidx789, align 8
  %shr790 = ashr i64 %322, 12
  %conv791 = trunc i64 %shr790 to i32
  %conv792 = sext i32 %conv791 to i64
  %yy793 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %323 = load i64, i64* %yy793, align 8
  %mul794 = mul nsw i64 %conv792, %323
  %round795 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %324 = load i64, i64* %round795, align 8
  %add796 = add nsw i64 %mul794, %324
  %shift797 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %325 = load i32, i32* %shift797, align 4
  %sh_prom798 = zext i32 %325 to i64
  %shr799 = ashr i64 %add796, %sh_prom798
  br label %cond.end.811

cond.false.800:                                   ; preds = %cond.end.782
  %arrayidx801 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %326 = load i64, i64* %arrayidx801, align 8
  %shr802 = ashr i64 %326, 12
  %conv803 = trunc i64 %shr802 to i32
  %conv804 = sext i32 %conv803 to i64
  %yy805 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %327 = load i64, i64* %yy805, align 8
  %mul806 = mul nsw i64 %conv804, %327
  %shift807 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %328 = load i32, i32* %shift807, align 4
  %sub808 = sub nsw i32 0, %328
  %sh_prom809 = zext i32 %sub808 to i64
  %shl810 = shl i64 %mul806, %sh_prom809
  br label %cond.end.811

cond.end.811:                                     ; preds = %cond.false.800, %cond.true.788
  %cond812 = phi i64 [ %shr799, %cond.true.788 ], [ %shl810, %cond.false.800 ]
  %329 = load i64, i64* %pty, align 8
  %add813 = add nsw i64 %329, %cond812
  store i64 %add813, i64* %pty, align 8
  %skewed814 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %330 = load i32, i32* %skewed814, align 4
  %tobool815 = icmp ne i32 %330, 0
  br i1 %tobool815, label %if.then.816, label %if.end.875

if.then.816:                                      ; preds = %cond.end.811
  %shift817 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %331 = load i32, i32* %shift817, align 4
  %cmp818 = icmp sge i32 %331, 0
  br i1 %cmp818, label %cond.true.820, label %cond.false.832

cond.true.820:                                    ; preds = %if.then.816
  %arrayidx821 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %332 = load i64, i64* %arrayidx821, align 8
  %shr822 = ashr i64 %332, 12
  %conv823 = trunc i64 %shr822 to i32
  %conv824 = sext i32 %conv823 to i64
  %xy825 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %333 = load i64, i64* %xy825, align 8
  %mul826 = mul nsw i64 %conv824, %333
  %round827 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %334 = load i64, i64* %round827, align 8
  %add828 = add nsw i64 %mul826, %334
  %shift829 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %335 = load i32, i32* %shift829, align 4
  %sh_prom830 = zext i32 %335 to i64
  %shr831 = ashr i64 %add828, %sh_prom830
  br label %cond.end.843

cond.false.832:                                   ; preds = %if.then.816
  %arrayidx833 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %336 = load i64, i64* %arrayidx833, align 8
  %shr834 = ashr i64 %336, 12
  %conv835 = trunc i64 %shr834 to i32
  %conv836 = sext i32 %conv835 to i64
  %xy837 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %337 = load i64, i64* %xy837, align 8
  %mul838 = mul nsw i64 %conv836, %337
  %shift839 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %338 = load i32, i32* %shift839, align 4
  %sub840 = sub nsw i32 0, %338
  %sh_prom841 = zext i32 %sub840 to i64
  %shl842 = shl i64 %mul838, %sh_prom841
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.false.832, %cond.true.820
  %cond844 = phi i64 [ %shr831, %cond.true.820 ], [ %shl842, %cond.false.832 ]
  %339 = load i64, i64* %pty, align 8
  %add845 = add nsw i64 %339, %cond844
  store i64 %add845, i64* %pty, align 8
  %shift846 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %340 = load i32, i32* %shift846, align 4
  %cmp847 = icmp sge i32 %340, 0
  br i1 %cmp847, label %cond.true.849, label %cond.false.861

cond.true.849:                                    ; preds = %cond.end.843
  %arrayidx850 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %341 = load i64, i64* %arrayidx850, align 8
  %shr851 = ashr i64 %341, 12
  %conv852 = trunc i64 %shr851 to i32
  %conv853 = sext i32 %conv852 to i64
  %yx854 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %342 = load i64, i64* %yx854, align 8
  %mul855 = mul nsw i64 %conv853, %342
  %round856 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %343 = load i64, i64* %round856, align 8
  %add857 = add nsw i64 %mul855, %343
  %shift858 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %344 = load i32, i32* %shift858, align 4
  %sh_prom859 = zext i32 %344 to i64
  %shr860 = ashr i64 %add857, %sh_prom859
  br label %cond.end.872

cond.false.861:                                   ; preds = %cond.end.843
  %arrayidx862 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %345 = load i64, i64* %arrayidx862, align 8
  %shr863 = ashr i64 %345, 12
  %conv864 = trunc i64 %shr863 to i32
  %conv865 = sext i32 %conv864 to i64
  %yx866 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %346 = load i64, i64* %yx866, align 8
  %mul867 = mul nsw i64 %conv865, %346
  %shift868 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %347 = load i32, i32* %shift868, align 4
  %sub869 = sub nsw i32 0, %347
  %sh_prom870 = zext i32 %sub869 to i64
  %shl871 = shl i64 %mul867, %sh_prom870
  br label %cond.end.872

cond.end.872:                                     ; preds = %cond.false.861, %cond.true.849
  %cond873 = phi i64 [ %shr860, %cond.true.849 ], [ %shl871, %cond.false.861 ]
  %348 = load i64, i64* %ptx, align 8
  %add874 = add nsw i64 %348, %cond873
  store i64 %add874, i64* %ptx, align 8
  br label %if.end.875

if.end.875:                                       ; preds = %cond.end.872, %cond.end.811
  %349 = load i64, i64* %ptx, align 8
  %350 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position876 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %350, i32 0, i32 9
  %x877 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position876, i32 0, i32 0
  store i64 %349, i64* %x877, align 8
  %351 = load i64, i64* %pty, align 8
  %352 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position878 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %352, i32 0, i32 9
  %y879 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position878, i32 0, i32 1
  store i64 %351, i64* %y879, align 8
  %arraydecay880 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr881 = getelementptr inbounds i64, i64* %arraydecay880, i64 -1
  store i64* %add.ptr881, i64** %csp, align 8
  store i16 4330, i16* %state, align 2
  %353 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pdata882 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %353, i32 0, i32 2
  %354 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata882, align 8
  %lenIV883 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %354, i32 0, i32 3
  %355 = load i32, i32* %lenIV883, align 4
  store i32 %355, i32* %skip, align 4
  %arrayidx884 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 4
  %356 = load i64, i64* %arrayidx884, align 8
  %shr885 = ashr i64 %356, 12
  %conv886 = trunc i64 %shr885 to i32
  %conv887 = trunc i32 %conv886 to i8
  %conv888 = zext i8 %conv887 to i32
  %shl889 = shl i32 %conv888, 1
  %add890 = add nsw i32 %shl889, 1
  store i32 %add890, i32* %retval
  br label %return

sw.bb.891:                                        ; preds = %sw.bb.726
  %arrayidx892 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %357 = load i64, i64* %arrayidx892, align 8
  %358 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %358, i32 0, i32 11
  %x893 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  store i64 %357, i64* %x893, align 8
  %arrayidx894 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %359 = load i64, i64* %arrayidx894, align 8
  %360 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %lsb895 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %360, i32 0, i32 11
  %y896 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb895, i32 0, i32 1
  store i64 %359, i64* %y896, align 8
  %arrayidx897 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %361 = load i64, i64* %arrayidx897, align 8
  %362 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %362, i32 0, i32 12
  %x898 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  store i64 %361, i64* %x898, align 8
  %arrayidx899 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %363 = load i64, i64* %arrayidx899, align 8
  %364 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width900 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %364, i32 0, i32 12
  %y901 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width900, i32 0, i32 1
  store i64 %363, i64* %y901, align 8
  br label %setp

sw.bb.902:                                        ; preds = %sw.bb.726
  %365 = load i64*, i64** %csp, align 8
  %arrayidx903 = getelementptr inbounds i64, i64* %365, i64 -1
  %366 = load i64, i64* %arrayidx903, align 8
  %conv904 = sitofp i64 %366 to float
  %367 = load i64*, i64** %csp, align 8
  %368 = load i64, i64* %367, align 8
  %conv905 = sitofp i64 %368 to float
  %div = fdiv float %conv904, %conv905
  %mul906 = fmul float %div, 4.096000e+03
  %conv907 = fptosi float %mul906 to i64
  %369 = load i64*, i64** %csp, align 8
  %arrayidx908 = getelementptr inbounds i64, i64* %369, i64 -1
  store i64 %conv907, i64* %arrayidx908, align 8
  %370 = load i64*, i64** %csp, align 8
  %incdec.ptr909 = getelementptr inbounds i64, i64* %370, i32 -1
  store i64* %incdec.ptr909, i64** %csp, align 8
  br label %sw.epilog

sw.bb.910:                                        ; preds = %sw.bb.726
  %371 = load i64*, i64** %csp, align 8
  %arrayidx911 = getelementptr inbounds i64, i64* %371, i64 -2
  %372 = load i64, i64* %arrayidx911, align 8
  %373 = load i64*, i64** %csp, align 8
  %arrayidx912 = getelementptr inbounds i64, i64* %373, i64 -1
  %374 = load i64, i64* %arrayidx912, align 8
  %cmp913 = icmp sgt i64 %372, %374
  br i1 %cmp913, label %if.then.915, label %if.end.918

if.then.915:                                      ; preds = %sw.bb.910
  %375 = load i64*, i64** %csp, align 8
  %376 = load i64, i64* %375, align 8
  %377 = load i64*, i64** %csp, align 8
  %arrayidx916 = getelementptr inbounds i64, i64* %377, i64 -3
  %378 = load i64, i64* %arrayidx916, align 8
  %add917 = add nsw i64 %378, %376
  store i64 %add917, i64* %arrayidx916, align 8
  br label %if.end.918

if.end.918:                                       ; preds = %if.then.915, %sw.bb.910
  %379 = load i64*, i64** %csp, align 8
  %add.ptr919 = getelementptr inbounds i64, i64* %379, i64 -3
  store i64* %add.ptr919, i64** %csp, align 8
  br label %sw.epilog

sw.bb.920:                                        ; preds = %sw.bb.726
  %380 = load i64*, i64** %csp, align 8
  %381 = load i64, i64* %380, align 8
  %shr922 = ashr i64 %381, 12
  %conv923 = trunc i64 %shr922 to i32
  store i32 %conv923, i32* %index921, align 4
  %382 = load i64*, i64** %csp, align 8
  %arraydecay924 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i64* %382 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %arraydecay924 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv925 = trunc i64 %sub.ptr.div to i32
  store i32 %conv925, i32* %scount, align 4
  %383 = load i8*, i8** %cip, align 8
  %384 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %ip926 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %384, i32 0, i32 0
  store i8* %383, i8** %ip926, align 8
  %385 = load i16, i16* %state, align 2
  %386 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %dstate927 = getelementptr inbounds %struct.ip_state, %struct.ip_state* %386, i32 0, i32 1
  store i16 %385, i16* %dstate927, align 2
  %387 = load i32, i32* %scount, align 4
  %388 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count928 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %388, i32 0, i32 7
  store i32 %387, i32* %os_count928, align 4
  %389 = load %struct.ip_state*, %struct.ip_state** %ipsp, align 8
  %390 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ipstack929 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %390, i32 0, i32 8
  %arrayidx930 = getelementptr inbounds [11 x %struct.ip_state], [11 x %struct.ip_state]* %ipstack929, i32 0, i64 0
  %sub.ptr.lhs.cast931 = ptrtoint %struct.ip_state* %389 to i64
  %sub.ptr.rhs.cast932 = ptrtoint %struct.ip_state* %arrayidx930 to i64
  %sub.ptr.sub933 = sub i64 %sub.ptr.lhs.cast931, %sub.ptr.rhs.cast932
  %sub.ptr.div934 = sdiv exact i64 %sub.ptr.sub933, 16
  %add935 = add nsw i64 %sub.ptr.div934, 1
  %conv936 = trunc i64 %add935 to i32
  %391 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ips_count937 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %391, i32 0, i32 9
  store i32 %conv936, i32* %ips_count937, align 4
  %392 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ip_skip938 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %392, i32 0, i32 10
  store i32 0, i32* %ip_skip938, align 4
  %393 = load i32, i32* %scount, align 4
  %tobool939 = icmp ne i32 %393, 0
  br i1 %tobool939, label %if.then.940, label %if.end.944

if.then.940:                                      ; preds = %sw.bb.920
  %394 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ostack941 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %394, i32 0, i32 6
  %395 = bitcast [24 x i64]* %ostack941 to i8*
  %396 = bitcast [24 x i64]* %cstack to i8*
  %397 = load i32, i32* %scount, align 4
  %conv942 = sext i32 %397 to i64
  %mul943 = mul i64 %conv942, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %395, i8* %396, i64 %mul943, i32 8, i1 false)
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.940, %sw.bb.920
  %398 = load i32, i32* %index921, align 4
  %add945 = add nsw i32 %398, 1
  %shl946 = shl i32 %add945, 1
  store i32 %shl946, i32* %retval
  br label %return

sw.bb.947:                                        ; preds = %sw.bb.726
  %399 = load i64*, i64** %csp, align 8
  %incdec.ptr948 = getelementptr inbounds i64, i64* %399, i32 1
  store i64* %incdec.ptr948, i64** %csp, align 8
  %400 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8
  %pop_proc = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %400, i32 0, i32 1
  %401 = load i32 (%struct.gs_type1_data_s*, i64*)*, i32 (%struct.gs_type1_data_s*, i64*)** %pop_proc, align 8
  %402 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8
  %403 = load i64*, i64** %csp, align 8
  %call949 = call i32 %401(%struct.gs_type1_data_s* %402, i64* %403)
  store i32 %call949, i32* %code, align 4
  %404 = load i32, i32* %code, align 4
  %cmp950 = icmp slt i32 %404, 0
  br i1 %cmp950, label %if.then.952, label %if.end.953

if.then.952:                                      ; preds = %sw.bb.947
  %405 = load i32, i32* %code, align 4
  store i32 %405, i32* %retval
  br label %return

if.end.953:                                       ; preds = %sw.bb.947
  br label %pushed

sw.bb.954:                                        ; preds = %sw.bb.726
  %406 = load i64, i64* %ftx, align 8
  store i64 %406, i64* %ptx, align 8
  %407 = load i64, i64* %fty, align 8
  store i64 %407, i64* %pty, align 8
  br label %setp

sw.default:                                       ; preds = %sw.bb.726
  store i32 -10, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.918, %sw.bb.902, %sw.bb.744, %sw.bb.741, %sw.bb.738
  br label %sw.epilog.2007

sw.bb.955:                                        ; preds = %while.body
  %arrayidx956 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %408 = load i64, i64* %arrayidx956, align 8
  %409 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %lsb957 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %409, i32 0, i32 11
  %x958 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb957, i32 0, i32 0
  store i64 %408, i64* %x958, align 8
  %410 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %lsb959 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %410, i32 0, i32 11
  %y960 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb959, i32 0, i32 1
  store i64 0, i64* %y960, align 8
  %arrayidx961 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %411 = load i64, i64* %arrayidx961, align 8
  %412 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width962 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %412, i32 0, i32 12
  %x963 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width962, i32 0, i32 0
  store i64 %411, i64* %x963, align 8
  %413 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width964 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %413, i32 0, i32 12
  %y965 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width964, i32 0, i32 1
  store i64 0, i64* %y965, align 8
  %arrayidx966 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  store i64 0, i64* %arrayidx966, align 8
  br label %setp

setp:                                             ; preds = %sw.bb.955, %sw.bb.954, %sw.bb.891
  %shift967 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %414 = load i32, i32* %shift967, align 4
  %cmp968 = icmp sge i32 %414, 0
  br i1 %cmp968, label %cond.true.970, label %cond.false.982

cond.true.970:                                    ; preds = %setp
  %arrayidx971 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %415 = load i64, i64* %arrayidx971, align 8
  %shr972 = ashr i64 %415, 12
  %conv973 = trunc i64 %shr972 to i32
  %conv974 = sext i32 %conv973 to i64
  %xx975 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %416 = load i64, i64* %xx975, align 8
  %mul976 = mul nsw i64 %conv974, %416
  %round977 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %417 = load i64, i64* %round977, align 8
  %add978 = add nsw i64 %mul976, %417
  %shift979 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %418 = load i32, i32* %shift979, align 4
  %sh_prom980 = zext i32 %418 to i64
  %shr981 = ashr i64 %add978, %sh_prom980
  br label %cond.end.993

cond.false.982:                                   ; preds = %setp
  %arrayidx983 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %419 = load i64, i64* %arrayidx983, align 8
  %shr984 = ashr i64 %419, 12
  %conv985 = trunc i64 %shr984 to i32
  %conv986 = sext i32 %conv985 to i64
  %xx987 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %420 = load i64, i64* %xx987, align 8
  %mul988 = mul nsw i64 %conv986, %420
  %shift989 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %421 = load i32, i32* %shift989, align 4
  %sub990 = sub nsw i32 0, %421
  %sh_prom991 = zext i32 %sub990 to i64
  %shl992 = shl i64 %mul988, %sh_prom991
  br label %cond.end.993

cond.end.993:                                     ; preds = %cond.false.982, %cond.true.970
  %cond994 = phi i64 [ %shr981, %cond.true.970 ], [ %shl992, %cond.false.982 ]
  %422 = load i64, i64* %ptx, align 8
  %add995 = add nsw i64 %422, %cond994
  store i64 %add995, i64* %ptx, align 8
  %shift996 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %423 = load i32, i32* %shift996, align 4
  %cmp997 = icmp sge i32 %423, 0
  br i1 %cmp997, label %cond.true.999, label %cond.false.1011

cond.true.999:                                    ; preds = %cond.end.993
  %arrayidx1000 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %424 = load i64, i64* %arrayidx1000, align 8
  %shr1001 = ashr i64 %424, 12
  %conv1002 = trunc i64 %shr1001 to i32
  %conv1003 = sext i32 %conv1002 to i64
  %yy1004 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %425 = load i64, i64* %yy1004, align 8
  %mul1005 = mul nsw i64 %conv1003, %425
  %round1006 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %426 = load i64, i64* %round1006, align 8
  %add1007 = add nsw i64 %mul1005, %426
  %shift1008 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %427 = load i32, i32* %shift1008, align 4
  %sh_prom1009 = zext i32 %427 to i64
  %shr1010 = ashr i64 %add1007, %sh_prom1009
  br label %cond.end.1022

cond.false.1011:                                  ; preds = %cond.end.993
  %arrayidx1012 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %428 = load i64, i64* %arrayidx1012, align 8
  %shr1013 = ashr i64 %428, 12
  %conv1014 = trunc i64 %shr1013 to i32
  %conv1015 = sext i32 %conv1014 to i64
  %yy1016 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %429 = load i64, i64* %yy1016, align 8
  %mul1017 = mul nsw i64 %conv1015, %429
  %shift1018 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %430 = load i32, i32* %shift1018, align 4
  %sub1019 = sub nsw i32 0, %430
  %sh_prom1020 = zext i32 %sub1019 to i64
  %shl1021 = shl i64 %mul1017, %sh_prom1020
  br label %cond.end.1022

cond.end.1022:                                    ; preds = %cond.false.1011, %cond.true.999
  %cond1023 = phi i64 [ %shr1010, %cond.true.999 ], [ %shl1021, %cond.false.1011 ]
  %431 = load i64, i64* %pty, align 8
  %add1024 = add nsw i64 %431, %cond1023
  store i64 %add1024, i64* %pty, align 8
  %skewed1025 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %432 = load i32, i32* %skewed1025, align 4
  %tobool1026 = icmp ne i32 %432, 0
  br i1 %tobool1026, label %if.then.1027, label %if.end.1086

if.then.1027:                                     ; preds = %cond.end.1022
  %shift1028 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %433 = load i32, i32* %shift1028, align 4
  %cmp1029 = icmp sge i32 %433, 0
  br i1 %cmp1029, label %cond.true.1031, label %cond.false.1043

cond.true.1031:                                   ; preds = %if.then.1027
  %arrayidx1032 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %434 = load i64, i64* %arrayidx1032, align 8
  %shr1033 = ashr i64 %434, 12
  %conv1034 = trunc i64 %shr1033 to i32
  %conv1035 = sext i32 %conv1034 to i64
  %xy1036 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %435 = load i64, i64* %xy1036, align 8
  %mul1037 = mul nsw i64 %conv1035, %435
  %round1038 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %436 = load i64, i64* %round1038, align 8
  %add1039 = add nsw i64 %mul1037, %436
  %shift1040 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %437 = load i32, i32* %shift1040, align 4
  %sh_prom1041 = zext i32 %437 to i64
  %shr1042 = ashr i64 %add1039, %sh_prom1041
  br label %cond.end.1054

cond.false.1043:                                  ; preds = %if.then.1027
  %arrayidx1044 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %438 = load i64, i64* %arrayidx1044, align 8
  %shr1045 = ashr i64 %438, 12
  %conv1046 = trunc i64 %shr1045 to i32
  %conv1047 = sext i32 %conv1046 to i64
  %xy1048 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %439 = load i64, i64* %xy1048, align 8
  %mul1049 = mul nsw i64 %conv1047, %439
  %shift1050 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %440 = load i32, i32* %shift1050, align 4
  %sub1051 = sub nsw i32 0, %440
  %sh_prom1052 = zext i32 %sub1051 to i64
  %shl1053 = shl i64 %mul1049, %sh_prom1052
  br label %cond.end.1054

cond.end.1054:                                    ; preds = %cond.false.1043, %cond.true.1031
  %cond1055 = phi i64 [ %shr1042, %cond.true.1031 ], [ %shl1053, %cond.false.1043 ]
  %441 = load i64, i64* %pty, align 8
  %add1056 = add nsw i64 %441, %cond1055
  store i64 %add1056, i64* %pty, align 8
  %shift1057 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %442 = load i32, i32* %shift1057, align 4
  %cmp1058 = icmp sge i32 %442, 0
  br i1 %cmp1058, label %cond.true.1060, label %cond.false.1072

cond.true.1060:                                   ; preds = %cond.end.1054
  %arrayidx1061 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %443 = load i64, i64* %arrayidx1061, align 8
  %shr1062 = ashr i64 %443, 12
  %conv1063 = trunc i64 %shr1062 to i32
  %conv1064 = sext i32 %conv1063 to i64
  %yx1065 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %444 = load i64, i64* %yx1065, align 8
  %mul1066 = mul nsw i64 %conv1064, %444
  %round1067 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %445 = load i64, i64* %round1067, align 8
  %add1068 = add nsw i64 %mul1066, %445
  %shift1069 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %446 = load i32, i32* %shift1069, align 4
  %sh_prom1070 = zext i32 %446 to i64
  %shr1071 = ashr i64 %add1068, %sh_prom1070
  br label %cond.end.1083

cond.false.1072:                                  ; preds = %cond.end.1054
  %arrayidx1073 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %447 = load i64, i64* %arrayidx1073, align 8
  %shr1074 = ashr i64 %447, 12
  %conv1075 = trunc i64 %shr1074 to i32
  %conv1076 = sext i32 %conv1075 to i64
  %yx1077 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %448 = load i64, i64* %yx1077, align 8
  %mul1078 = mul nsw i64 %conv1076, %448
  %shift1079 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %449 = load i32, i32* %shift1079, align 4
  %sub1080 = sub nsw i32 0, %449
  %sh_prom1081 = zext i32 %sub1080 to i64
  %shl1082 = shl i64 %mul1078, %sh_prom1081
  br label %cond.end.1083

cond.end.1083:                                    ; preds = %cond.false.1072, %cond.true.1060
  %cond1084 = phi i64 [ %shr1071, %cond.true.1060 ], [ %shl1082, %cond.false.1072 ]
  %450 = load i64, i64* %ptx, align 8
  %add1085 = add nsw i64 %450, %cond1084
  store i64 %add1085, i64* %ptx, align 8
  br label %if.end.1086

if.end.1086:                                      ; preds = %cond.end.1083, %cond.end.1022
  br label %pp

sw.bb.1087:                                       ; preds = %while.body
  %451 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %seac_base1088 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %451, i32 0, i32 13
  %452 = load i32, i32* %seac_base1088, align 4
  %cmp1089 = icmp sge i32 %452, 0
  br i1 %cmp1089, label %if.then.1091, label %if.end.1108

if.then.1091:                                     ; preds = %sw.bb.1087
  %453 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %seac_base1092 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %453, i32 0, i32 13
  %454 = load i32, i32* %seac_base1092, align 4
  store i32 %454, i32* %base_code, align 4
  %455 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %seac_base1093 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %455, i32 0, i32 13
  store i32 -1, i32* %seac_base1093, align 4
  %456 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1094 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %456, i32 0, i32 2
  %tx_fixed1095 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1094, i32 0, i32 12
  %457 = load i64, i64* %tx_fixed1095, align 8
  %458 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position1096 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %458, i32 0, i32 9
  %x1097 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1096, i32 0, i32 0
  store i64 %457, i64* %x1097, align 8
  %459 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1098 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %459, i32 0, i32 2
  %ty_fixed1099 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1098, i32 0, i32 13
  %460 = load i64, i64* %ty_fixed1099, align 8
  %461 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position1100 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %461, i32 0, i32 9
  %y1101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1100, i32 0, i32 1
  store i64 %460, i64* %y1101, align 8
  %arraydecay1102 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i32 0
  %add.ptr1103 = getelementptr inbounds i64, i64* %arraydecay1102, i64 -1
  store i64* %add.ptr1103, i64** %csp, align 8
  store i16 4330, i16* %state, align 2
  %462 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %pdata1104 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %462, i32 0, i32 2
  %463 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1104, align 8
  %lenIV1105 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %463, i32 0, i32 3
  %464 = load i32, i32* %lenIV1105, align 4
  store i32 %464, i32* %skip, align 4
  %465 = load i32, i32* %base_code, align 4
  %shl1106 = shl i32 %465, 1
  %add1107 = add nsw i32 %shl1106, 1
  store i32 %add1107, i32* %retval
  br label %return

if.end.1108:                                      ; preds = %sw.bb.1087
  %466 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %467 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1109 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %467, i32 0, i32 2
  %tx_fixed1110 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1109, i32 0, i32 12
  %468 = load i64, i64* %tx_fixed1110, align 8
  %469 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1111 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %469, i32 0, i32 2
  %ty_fixed1112 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1111, i32 0, i32 13
  %470 = load i64, i64* %ty_fixed1112, align 8
  %call1113 = call i32 @gx_path_add_point(%struct.gx_path_s* %466, i64 %468, i64 %470)
  %471 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %471, i32 0, i32 3
  %472 = load i32, i32* %charpath_flag, align 4
  %tobool1114 = icmp ne i32 %472, 0
  br i1 %tobool1114, label %if.then.1115, label %if.else.1135

if.then.1115:                                     ; preds = %if.end.1108
  %473 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %penum = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %473, i32 0, i32 0
  %474 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %475 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width1116 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %475, i32 0, i32 12
  %x1117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1116, i32 0, i32 0
  %476 = load i64, i64* %x1117, align 8
  %conv1118 = sitofp i64 %476 to double
  %mul1119 = fmul double %conv1118, 0x3F30000000000000
  %conv1120 = fptrunc double %mul1119 to float
  %conv1121 = fpext float %conv1120 to double
  %477 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width1122 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %477, i32 0, i32 12
  %y1123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1122, i32 0, i32 1
  %478 = load i64, i64* %y1123, align 8
  %conv1124 = sitofp i64 %478 to double
  %mul1125 = fmul double %conv1124, 0x3F30000000000000
  %conv1126 = fptrunc double %mul1125 to float
  %conv1127 = fpext float %conv1126 to double
  %call1128 = call i32 @gs_setcharwidth(%struct.gs_show_enum_s* %474, double %conv1121, double %conv1127)
  store i32 %call1128, i32* %code, align 4
  %479 = load i32, i32* %code, align 4
  %cmp1129 = icmp slt i32 %479, 0
  br i1 %cmp1129, label %if.then.1131, label %if.end.1132

if.then.1131:                                     ; preds = %if.then.1115
  %480 = load i32, i32* %code, align 4
  store i32 %480, i32* %retval
  br label %return

if.end.1132:                                      ; preds = %if.then.1115
  %481 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %482 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %482, i32 0, i32 0
  %483 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8
  %path1133 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %483, i32 0, i32 7
  %484 = load %struct.gx_path_s*, %struct.gx_path_s** %path1133, align 8
  %call1134 = call i32 @gx_path_merge(%struct.gx_path_s* %481, %struct.gx_path_s* %484)
  store i32 %call1134, i32* %code, align 4
  br label %if.end.1218

if.else.1135:                                     ; preds = %if.end.1108
  %485 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call1136 = call i32 (%struct.gs_state_s*, %struct.gs_rect_s*, ...) bitcast (i32 (...)* @gs_pathbbox to i32 (%struct.gs_state_s*, %struct.gs_rect_s*, ...)*)(%struct.gs_state_s* %485, %struct.gs_rect_s* %bbox)
  store i32 %call1136, i32* %code, align 4
  %486 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %487 = load i64, i64* %ftx, align 8
  %488 = load i64, i64* %fty, align 8
  %call1137 = call i32 @gx_path_add_point(%struct.gx_path_s* %486, i64 %487, i64 %488)
  %489 = load i32, i32* %code, align 4
  %cmp1138 = icmp slt i32 %489, 0
  br i1 %cmp1138, label %if.then.1140, label %if.end.1147

if.then.1140:                                     ; preds = %if.else.1135
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y1141 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store float 0.000000e+00, float* %y1141, align 4
  %q1142 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x1143 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q1142, i32 0, i32 0
  store float 0.000000e+00, float* %x1143, align 4
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y1144 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store float 0.000000e+00, float* %y1144, align 4
  %p1145 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x1146 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1145, i32 0, i32 0
  store float 0.000000e+00, float* %x1146, align 4
  br label %if.end.1147

if.end.1147:                                      ; preds = %if.then.1140, %if.else.1135
  %490 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %paint_type = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %490, i32 0, i32 4
  %491 = load i32, i32* %paint_type, align 4
  %tobool1148 = icmp ne i32 %491, 0
  br i1 %tobool1148, label %if.then.1149, label %if.end.1167

if.then.1149:                                     ; preds = %if.end.1147
  %492 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call1150 = call float @gs_currentlinewidth(%struct.gs_state_s* %492)
  store float %call1150, float* %adjust, align 4
  %493 = load float, float* %adjust, align 4
  %cmp1151 = fcmp oeq float %493, 0.000000e+00
  br i1 %cmp1151, label %if.then.1153, label %if.end.1154

if.then.1153:                                     ; preds = %if.then.1149
  store float 1.000000e+00, float* %adjust, align 4
  br label %if.end.1154

if.end.1154:                                      ; preds = %if.then.1153, %if.then.1149
  %494 = load float, float* %adjust, align 4
  %p1155 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x1156 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1155, i32 0, i32 0
  %495 = load float, float* %x1156, align 4
  %sub1157 = fsub float %495, %494
  store float %sub1157, float* %x1156, align 4
  %496 = load float, float* %adjust, align 4
  %p1158 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y1159 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1158, i32 0, i32 1
  %497 = load float, float* %y1159, align 4
  %sub1160 = fsub float %497, %496
  store float %sub1160, float* %y1159, align 4
  %498 = load float, float* %adjust, align 4
  %q1161 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x1162 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q1161, i32 0, i32 0
  %499 = load float, float* %x1162, align 4
  %add1163 = fadd float %499, %498
  store float %add1163, float* %x1162, align 4
  %500 = load float, float* %adjust, align 4
  %q1164 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y1165 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q1164, i32 0, i32 1
  %501 = load float, float* %y1165, align 4
  %add1166 = fadd float %501, %500
  store float %add1166, float* %y1165, align 4
  br label %if.end.1167

if.end.1167:                                      ; preds = %if.end.1154, %if.end.1147
  %502 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %penum1168 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %502, i32 0, i32 0
  %503 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum1168, align 8
  %504 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width1169 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %504, i32 0, i32 12
  %x1170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1169, i32 0, i32 0
  %505 = load i64, i64* %x1170, align 8
  %conv1171 = sitofp i64 %505 to double
  %mul1172 = fmul double %conv1171, 0x3F30000000000000
  %conv1173 = fptrunc double %mul1172 to float
  %conv1174 = fpext float %conv1173 to double
  %506 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %width1175 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %506, i32 0, i32 12
  %y1176 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1175, i32 0, i32 1
  %507 = load i64, i64* %y1176, align 8
  %conv1177 = sitofp i64 %507 to double
  %mul1178 = fmul double %conv1177, 0x3F30000000000000
  %conv1179 = fptrunc double %mul1178 to float
  %conv1180 = fpext float %conv1179 to double
  %p1181 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x1182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1181, i32 0, i32 0
  %508 = load float, float* %x1182, align 4
  %conv1183 = fpext float %508 to double
  %p1184 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y1185 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1184, i32 0, i32 1
  %509 = load float, float* %y1185, align 4
  %conv1186 = fpext float %509 to double
  %q1187 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x1188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q1187, i32 0, i32 0
  %510 = load float, float* %x1188, align 4
  %conv1189 = fpext float %510 to double
  %q1190 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y1191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q1190, i32 0, i32 1
  %511 = load float, float* %y1191, align 4
  %conv1192 = fpext float %511 to double
  %call1193 = call i32 @gs_setcachedevice(%struct.gs_show_enum_s* %503, double %conv1174, double %conv1180, double %conv1183, double %conv1186, double %conv1189, double %conv1192)
  store i32 %call1193, i32* %code, align 4
  %512 = load i32, i32* %code, align 4
  %cmp1194 = icmp slt i32 %512, 0
  br i1 %cmp1194, label %if.then.1196, label %if.end.1197

if.then.1196:                                     ; preds = %if.end.1167
  %513 = load i32, i32* %code, align 4
  store i32 %513, i32* %retval
  br label %return

if.end.1197:                                      ; preds = %if.end.1167
  %514 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path1198 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %514, i32 0, i32 7
  %515 = load %struct.gx_path_s*, %struct.gx_path_s** %path1198, align 8
  %516 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1199 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %516, i32 0, i32 2
  %tx_fixed1200 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1199, i32 0, i32 12
  %517 = load i64, i64* %tx_fixed1200, align 8
  %518 = load i64, i64* %ftx, align 8
  %sub1201 = sub nsw i64 %517, %518
  %519 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm1202 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %519, i32 0, i32 2
  %ty_fixed1203 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1202, i32 0, i32 13
  %520 = load i64, i64* %ty_fixed1203, align 8
  %521 = load i64, i64* %fty, align 8
  %sub1204 = sub nsw i64 %520, %521
  %call1205 = call i32 @gx_path_translate(%struct.gx_path_s* %515, i64 %sub1201, i64 %sub1204)
  %522 = load i32, i32* %code, align 4
  %cmp1206 = icmp slt i32 %522, 0
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %if.end.1197
  %523 = load i32, i32* %code, align 4
  store i32 %523, i32* %retval
  br label %return

if.end.1209:                                      ; preds = %if.end.1197
  %524 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %paint_type1210 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %524, i32 0, i32 4
  %525 = load i32, i32* %paint_type1210, align 4
  %tobool1211 = icmp ne i32 %525, 0
  br i1 %tobool1211, label %cond.true.1212, label %cond.false.1214

cond.true.1212:                                   ; preds = %if.end.1209
  %526 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call1213 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_stroke to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %526)
  br label %cond.end.1216

cond.false.1214:                                  ; preds = %if.end.1209
  %527 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call1215 = call i32 (%struct.gs_state_s*, i64, ...) bitcast (i32 (...)* @gs_fill_trim to i32 (%struct.gs_state_s*, i64, ...)*)(%struct.gs_state_s* %527, i64 819)
  br label %cond.end.1216

cond.end.1216:                                    ; preds = %cond.false.1214, %cond.true.1212
  %cond1217 = phi i32 [ %call1213, %cond.true.1212 ], [ %call1215, %cond.false.1214 ]
  store i32 %cond1217, i32* %code, align 4
  br label %if.end.1218

if.end.1218:                                      ; preds = %cond.end.1216, %if.end.1132
  %528 = load i32, i32* %code, align 4
  store i32 %528, i32* %retval
  br label %return

sw.bb.1219:                                       ; preds = %while.body
  %shift1220 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %529 = load i32, i32* %shift1220, align 4
  %cmp1221 = icmp sge i32 %529, 0
  br i1 %cmp1221, label %cond.true.1223, label %cond.false.1235

cond.true.1223:                                   ; preds = %sw.bb.1219
  %arrayidx1224 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %530 = load i64, i64* %arrayidx1224, align 8
  %shr1225 = ashr i64 %530, 12
  %conv1226 = trunc i64 %shr1225 to i32
  %conv1227 = sext i32 %conv1226 to i64
  %xx1228 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %531 = load i64, i64* %xx1228, align 8
  %mul1229 = mul nsw i64 %conv1227, %531
  %round1230 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %532 = load i64, i64* %round1230, align 8
  %add1231 = add nsw i64 %mul1229, %532
  %shift1232 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %533 = load i32, i32* %shift1232, align 4
  %sh_prom1233 = zext i32 %533 to i64
  %shr1234 = ashr i64 %add1231, %sh_prom1233
  br label %cond.end.1246

cond.false.1235:                                  ; preds = %sw.bb.1219
  %arrayidx1236 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %534 = load i64, i64* %arrayidx1236, align 8
  %shr1237 = ashr i64 %534, 12
  %conv1238 = trunc i64 %shr1237 to i32
  %conv1239 = sext i32 %conv1238 to i64
  %xx1240 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %535 = load i64, i64* %xx1240, align 8
  %mul1241 = mul nsw i64 %conv1239, %535
  %shift1242 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %536 = load i32, i32* %shift1242, align 4
  %sub1243 = sub nsw i32 0, %536
  %sh_prom1244 = zext i32 %sub1243 to i64
  %shl1245 = shl i64 %mul1241, %sh_prom1244
  br label %cond.end.1246

cond.end.1246:                                    ; preds = %cond.false.1235, %cond.true.1223
  %cond1247 = phi i64 [ %shr1234, %cond.true.1223 ], [ %shl1245, %cond.false.1235 ]
  %537 = load i64, i64* %ptx, align 8
  %add1248 = add nsw i64 %537, %cond1247
  store i64 %add1248, i64* %ptx, align 8
  %shift1249 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %538 = load i32, i32* %shift1249, align 4
  %cmp1250 = icmp sge i32 %538, 0
  br i1 %cmp1250, label %cond.true.1252, label %cond.false.1264

cond.true.1252:                                   ; preds = %cond.end.1246
  %arrayidx1253 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %539 = load i64, i64* %arrayidx1253, align 8
  %shr1254 = ashr i64 %539, 12
  %conv1255 = trunc i64 %shr1254 to i32
  %conv1256 = sext i32 %conv1255 to i64
  %yy1257 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %540 = load i64, i64* %yy1257, align 8
  %mul1258 = mul nsw i64 %conv1256, %540
  %round1259 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %541 = load i64, i64* %round1259, align 8
  %add1260 = add nsw i64 %mul1258, %541
  %shift1261 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %542 = load i32, i32* %shift1261, align 4
  %sh_prom1262 = zext i32 %542 to i64
  %shr1263 = ashr i64 %add1260, %sh_prom1262
  br label %cond.end.1275

cond.false.1264:                                  ; preds = %cond.end.1246
  %arrayidx1265 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %543 = load i64, i64* %arrayidx1265, align 8
  %shr1266 = ashr i64 %543, 12
  %conv1267 = trunc i64 %shr1266 to i32
  %conv1268 = sext i32 %conv1267 to i64
  %yy1269 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %544 = load i64, i64* %yy1269, align 8
  %mul1270 = mul nsw i64 %conv1268, %544
  %shift1271 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %545 = load i32, i32* %shift1271, align 4
  %sub1272 = sub nsw i32 0, %545
  %sh_prom1273 = zext i32 %sub1272 to i64
  %shl1274 = shl i64 %mul1270, %sh_prom1273
  br label %cond.end.1275

cond.end.1275:                                    ; preds = %cond.false.1264, %cond.true.1252
  %cond1276 = phi i64 [ %shr1263, %cond.true.1252 ], [ %shl1274, %cond.false.1264 ]
  %546 = load i64, i64* %pty, align 8
  %add1277 = add nsw i64 %546, %cond1276
  store i64 %add1277, i64* %pty, align 8
  %skewed1278 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %547 = load i32, i32* %skewed1278, align 4
  %tobool1279 = icmp ne i32 %547, 0
  br i1 %tobool1279, label %if.then.1280, label %if.end.1339

if.then.1280:                                     ; preds = %cond.end.1275
  %shift1281 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %548 = load i32, i32* %shift1281, align 4
  %cmp1282 = icmp sge i32 %548, 0
  br i1 %cmp1282, label %cond.true.1284, label %cond.false.1296

cond.true.1284:                                   ; preds = %if.then.1280
  %arrayidx1285 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %549 = load i64, i64* %arrayidx1285, align 8
  %shr1286 = ashr i64 %549, 12
  %conv1287 = trunc i64 %shr1286 to i32
  %conv1288 = sext i32 %conv1287 to i64
  %xy1289 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %550 = load i64, i64* %xy1289, align 8
  %mul1290 = mul nsw i64 %conv1288, %550
  %round1291 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %551 = load i64, i64* %round1291, align 8
  %add1292 = add nsw i64 %mul1290, %551
  %shift1293 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %552 = load i32, i32* %shift1293, align 4
  %sh_prom1294 = zext i32 %552 to i64
  %shr1295 = ashr i64 %add1292, %sh_prom1294
  br label %cond.end.1307

cond.false.1296:                                  ; preds = %if.then.1280
  %arrayidx1297 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %553 = load i64, i64* %arrayidx1297, align 8
  %shr1298 = ashr i64 %553, 12
  %conv1299 = trunc i64 %shr1298 to i32
  %conv1300 = sext i32 %conv1299 to i64
  %xy1301 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %554 = load i64, i64* %xy1301, align 8
  %mul1302 = mul nsw i64 %conv1300, %554
  %shift1303 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %555 = load i32, i32* %shift1303, align 4
  %sub1304 = sub nsw i32 0, %555
  %sh_prom1305 = zext i32 %sub1304 to i64
  %shl1306 = shl i64 %mul1302, %sh_prom1305
  br label %cond.end.1307

cond.end.1307:                                    ; preds = %cond.false.1296, %cond.true.1284
  %cond1308 = phi i64 [ %shr1295, %cond.true.1284 ], [ %shl1306, %cond.false.1296 ]
  %556 = load i64, i64* %pty, align 8
  %add1309 = add nsw i64 %556, %cond1308
  store i64 %add1309, i64* %pty, align 8
  %shift1310 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %557 = load i32, i32* %shift1310, align 4
  %cmp1311 = icmp sge i32 %557, 0
  br i1 %cmp1311, label %cond.true.1313, label %cond.false.1325

cond.true.1313:                                   ; preds = %cond.end.1307
  %arrayidx1314 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %558 = load i64, i64* %arrayidx1314, align 8
  %shr1315 = ashr i64 %558, 12
  %conv1316 = trunc i64 %shr1315 to i32
  %conv1317 = sext i32 %conv1316 to i64
  %yx1318 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %559 = load i64, i64* %yx1318, align 8
  %mul1319 = mul nsw i64 %conv1317, %559
  %round1320 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %560 = load i64, i64* %round1320, align 8
  %add1321 = add nsw i64 %mul1319, %560
  %shift1322 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %561 = load i32, i32* %shift1322, align 4
  %sh_prom1323 = zext i32 %561 to i64
  %shr1324 = ashr i64 %add1321, %sh_prom1323
  br label %cond.end.1336

cond.false.1325:                                  ; preds = %cond.end.1307
  %arrayidx1326 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %562 = load i64, i64* %arrayidx1326, align 8
  %shr1327 = ashr i64 %562, 12
  %conv1328 = trunc i64 %shr1327 to i32
  %conv1329 = sext i32 %conv1328 to i64
  %yx1330 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %563 = load i64, i64* %yx1330, align 8
  %mul1331 = mul nsw i64 %conv1329, %563
  %shift1332 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %564 = load i32, i32* %shift1332, align 4
  %sub1333 = sub nsw i32 0, %564
  %sh_prom1334 = zext i32 %sub1333 to i64
  %shl1335 = shl i64 %mul1331, %sh_prom1334
  br label %cond.end.1336

cond.end.1336:                                    ; preds = %cond.false.1325, %cond.true.1313
  %cond1337 = phi i64 [ %shr1324, %cond.true.1313 ], [ %shl1335, %cond.false.1325 ]
  %565 = load i64, i64* %ptx, align 8
  %add1338 = add nsw i64 %565, %cond1337
  store i64 %add1338, i64* %ptx, align 8
  br label %if.end.1339

if.end.1339:                                      ; preds = %cond.end.1336, %cond.end.1275
  br label %mto

mto:                                              ; preds = %if.end.1403, %if.end.1339, %if.end.710, %if.end.91
  %566 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %567 = load i64, i64* %ptx, align 8
  %568 = load i64, i64* %pty, align 8
  %call1340 = call i32 @gx_path_add_point(%struct.gx_path_s* %566, i64 %567, i64 %568)
  store i32 %call1340, i32* %code, align 4
  br label %moved

sw.bb.1341:                                       ; preds = %while.body
  %shift1342 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %569 = load i32, i32* %shift1342, align 4
  %cmp1343 = icmp sge i32 %569, 0
  br i1 %cmp1343, label %cond.true.1345, label %cond.false.1357

cond.true.1345:                                   ; preds = %sw.bb.1341
  %arrayidx1346 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %570 = load i64, i64* %arrayidx1346, align 8
  %shr1347 = ashr i64 %570, 12
  %conv1348 = trunc i64 %shr1347 to i32
  %conv1349 = sext i32 %conv1348 to i64
  %xx1350 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %571 = load i64, i64* %xx1350, align 8
  %mul1351 = mul nsw i64 %conv1349, %571
  %round1352 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %572 = load i64, i64* %round1352, align 8
  %add1353 = add nsw i64 %mul1351, %572
  %shift1354 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %573 = load i32, i32* %shift1354, align 4
  %sh_prom1355 = zext i32 %573 to i64
  %shr1356 = ashr i64 %add1353, %sh_prom1355
  br label %cond.end.1368

cond.false.1357:                                  ; preds = %sw.bb.1341
  %arrayidx1358 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %574 = load i64, i64* %arrayidx1358, align 8
  %shr1359 = ashr i64 %574, 12
  %conv1360 = trunc i64 %shr1359 to i32
  %conv1361 = sext i32 %conv1360 to i64
  %xx1362 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %575 = load i64, i64* %xx1362, align 8
  %mul1363 = mul nsw i64 %conv1361, %575
  %shift1364 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %576 = load i32, i32* %shift1364, align 4
  %sub1365 = sub nsw i32 0, %576
  %sh_prom1366 = zext i32 %sub1365 to i64
  %shl1367 = shl i64 %mul1363, %sh_prom1366
  br label %cond.end.1368

cond.end.1368:                                    ; preds = %cond.false.1357, %cond.true.1345
  %cond1369 = phi i64 [ %shr1356, %cond.true.1345 ], [ %shl1367, %cond.false.1357 ]
  %577 = load i64, i64* %ptx, align 8
  %add1370 = add nsw i64 %577, %cond1369
  store i64 %add1370, i64* %ptx, align 8
  %skewed1371 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %578 = load i32, i32* %skewed1371, align 4
  %tobool1372 = icmp ne i32 %578, 0
  br i1 %tobool1372, label %if.then.1373, label %if.end.1403

if.then.1373:                                     ; preds = %cond.end.1368
  %shift1374 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %579 = load i32, i32* %shift1374, align 4
  %cmp1375 = icmp sge i32 %579, 0
  br i1 %cmp1375, label %cond.true.1377, label %cond.false.1389

cond.true.1377:                                   ; preds = %if.then.1373
  %arrayidx1378 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %580 = load i64, i64* %arrayidx1378, align 8
  %shr1379 = ashr i64 %580, 12
  %conv1380 = trunc i64 %shr1379 to i32
  %conv1381 = sext i32 %conv1380 to i64
  %xy1382 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %581 = load i64, i64* %xy1382, align 8
  %mul1383 = mul nsw i64 %conv1381, %581
  %round1384 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %582 = load i64, i64* %round1384, align 8
  %add1385 = add nsw i64 %mul1383, %582
  %shift1386 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %583 = load i32, i32* %shift1386, align 4
  %sh_prom1387 = zext i32 %583 to i64
  %shr1388 = ashr i64 %add1385, %sh_prom1387
  br label %cond.end.1400

cond.false.1389:                                  ; preds = %if.then.1373
  %arrayidx1390 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %584 = load i64, i64* %arrayidx1390, align 8
  %shr1391 = ashr i64 %584, 12
  %conv1392 = trunc i64 %shr1391 to i32
  %conv1393 = sext i32 %conv1392 to i64
  %xy1394 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %585 = load i64, i64* %xy1394, align 8
  %mul1395 = mul nsw i64 %conv1393, %585
  %shift1396 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %586 = load i32, i32* %shift1396, align 4
  %sub1397 = sub nsw i32 0, %586
  %sh_prom1398 = zext i32 %sub1397 to i64
  %shl1399 = shl i64 %mul1395, %sh_prom1398
  br label %cond.end.1400

cond.end.1400:                                    ; preds = %cond.false.1389, %cond.true.1377
  %cond1401 = phi i64 [ %shr1388, %cond.true.1377 ], [ %shl1399, %cond.false.1389 ]
  %587 = load i64, i64* %pty, align 8
  %add1402 = add nsw i64 %587, %cond1401
  store i64 %add1402, i64* %pty, align 8
  br label %if.end.1403

if.end.1403:                                      ; preds = %cond.end.1400, %cond.end.1368
  br label %mto

sw.bb.1404:                                       ; preds = %while.body
  %shift1405 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %588 = load i32, i32* %shift1405, align 4
  %cmp1406 = icmp sge i32 %588, 0
  br i1 %cmp1406, label %cond.true.1408, label %cond.false.1420

cond.true.1408:                                   ; preds = %sw.bb.1404
  %arrayidx1409 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %589 = load i64, i64* %arrayidx1409, align 8
  %shr1410 = ashr i64 %589, 12
  %conv1411 = trunc i64 %shr1410 to i32
  %conv1412 = sext i32 %conv1411 to i64
  %yy1413 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %590 = load i64, i64* %yy1413, align 8
  %mul1414 = mul nsw i64 %conv1412, %590
  %round1415 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %591 = load i64, i64* %round1415, align 8
  %add1416 = add nsw i64 %mul1414, %591
  %shift1417 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %592 = load i32, i32* %shift1417, align 4
  %sh_prom1418 = zext i32 %592 to i64
  %shr1419 = ashr i64 %add1416, %sh_prom1418
  br label %cond.end.1431

cond.false.1420:                                  ; preds = %sw.bb.1404
  %arrayidx1421 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %593 = load i64, i64* %arrayidx1421, align 8
  %shr1422 = ashr i64 %593, 12
  %conv1423 = trunc i64 %shr1422 to i32
  %conv1424 = sext i32 %conv1423 to i64
  %yy1425 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %594 = load i64, i64* %yy1425, align 8
  %mul1426 = mul nsw i64 %conv1424, %594
  %shift1427 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %595 = load i32, i32* %shift1427, align 4
  %sub1428 = sub nsw i32 0, %595
  %sh_prom1429 = zext i32 %sub1428 to i64
  %shl1430 = shl i64 %mul1426, %sh_prom1429
  br label %cond.end.1431

cond.end.1431:                                    ; preds = %cond.false.1420, %cond.true.1408
  %cond1432 = phi i64 [ %shr1419, %cond.true.1408 ], [ %shl1430, %cond.false.1420 ]
  %596 = load i64, i64* %pty, align 8
  %add1433 = add nsw i64 %596, %cond1432
  store i64 %add1433, i64* %pty, align 8
  %skewed1434 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %597 = load i32, i32* %skewed1434, align 4
  %tobool1435 = icmp ne i32 %597, 0
  br i1 %tobool1435, label %if.then.1436, label %if.end.1466

if.then.1436:                                     ; preds = %cond.end.1431
  %shift1437 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %598 = load i32, i32* %shift1437, align 4
  %cmp1438 = icmp sge i32 %598, 0
  br i1 %cmp1438, label %cond.true.1440, label %cond.false.1452

cond.true.1440:                                   ; preds = %if.then.1436
  %arrayidx1441 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %599 = load i64, i64* %arrayidx1441, align 8
  %shr1442 = ashr i64 %599, 12
  %conv1443 = trunc i64 %shr1442 to i32
  %conv1444 = sext i32 %conv1443 to i64
  %yx1445 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %600 = load i64, i64* %yx1445, align 8
  %mul1446 = mul nsw i64 %conv1444, %600
  %round1447 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %601 = load i64, i64* %round1447, align 8
  %add1448 = add nsw i64 %mul1446, %601
  %shift1449 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %602 = load i32, i32* %shift1449, align 4
  %sh_prom1450 = zext i32 %602 to i64
  %shr1451 = ashr i64 %add1448, %sh_prom1450
  br label %cond.end.1463

cond.false.1452:                                  ; preds = %if.then.1436
  %arrayidx1453 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %603 = load i64, i64* %arrayidx1453, align 8
  %shr1454 = ashr i64 %603, 12
  %conv1455 = trunc i64 %shr1454 to i32
  %conv1456 = sext i32 %conv1455 to i64
  %yx1457 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %604 = load i64, i64* %yx1457, align 8
  %mul1458 = mul nsw i64 %conv1456, %604
  %shift1459 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %605 = load i32, i32* %shift1459, align 4
  %sub1460 = sub nsw i32 0, %605
  %sh_prom1461 = zext i32 %sub1460 to i64
  %shl1462 = shl i64 %mul1458, %sh_prom1461
  br label %cond.end.1463

cond.end.1463:                                    ; preds = %cond.false.1452, %cond.true.1440
  %cond1464 = phi i64 [ %shr1451, %cond.true.1440 ], [ %shl1462, %cond.false.1452 ]
  %606 = load i64, i64* %ptx, align 8
  %add1465 = add nsw i64 %606, %cond1464
  store i64 %add1465, i64* %ptx, align 8
  br label %if.end.1466

if.end.1466:                                      ; preds = %cond.end.1463, %cond.end.1431
  %607 = load i64, i64* %ptx, align 8
  store i64 %607, i64* %x1, align 8
  %608 = load i64, i64* %pty, align 8
  store i64 %608, i64* %y1, align 8
  %shift1467 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %609 = load i32, i32* %shift1467, align 4
  %cmp1468 = icmp sge i32 %609, 0
  br i1 %cmp1468, label %cond.true.1470, label %cond.false.1482

cond.true.1470:                                   ; preds = %if.end.1466
  %arrayidx1471 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %610 = load i64, i64* %arrayidx1471, align 8
  %shr1472 = ashr i64 %610, 12
  %conv1473 = trunc i64 %shr1472 to i32
  %conv1474 = sext i32 %conv1473 to i64
  %xx1475 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %611 = load i64, i64* %xx1475, align 8
  %mul1476 = mul nsw i64 %conv1474, %611
  %round1477 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %612 = load i64, i64* %round1477, align 8
  %add1478 = add nsw i64 %mul1476, %612
  %shift1479 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %613 = load i32, i32* %shift1479, align 4
  %sh_prom1480 = zext i32 %613 to i64
  %shr1481 = ashr i64 %add1478, %sh_prom1480
  br label %cond.end.1493

cond.false.1482:                                  ; preds = %if.end.1466
  %arrayidx1483 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %614 = load i64, i64* %arrayidx1483, align 8
  %shr1484 = ashr i64 %614, 12
  %conv1485 = trunc i64 %shr1484 to i32
  %conv1486 = sext i32 %conv1485 to i64
  %xx1487 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %615 = load i64, i64* %xx1487, align 8
  %mul1488 = mul nsw i64 %conv1486, %615
  %shift1489 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %616 = load i32, i32* %shift1489, align 4
  %sub1490 = sub nsw i32 0, %616
  %sh_prom1491 = zext i32 %sub1490 to i64
  %shl1492 = shl i64 %mul1488, %sh_prom1491
  br label %cond.end.1493

cond.end.1493:                                    ; preds = %cond.false.1482, %cond.true.1470
  %cond1494 = phi i64 [ %shr1481, %cond.true.1470 ], [ %shl1492, %cond.false.1482 ]
  %617 = load i64, i64* %ptx, align 8
  %add1495 = add nsw i64 %617, %cond1494
  store i64 %add1495, i64* %ptx, align 8
  %shift1496 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %618 = load i32, i32* %shift1496, align 4
  %cmp1497 = icmp sge i32 %618, 0
  br i1 %cmp1497, label %cond.true.1499, label %cond.false.1511

cond.true.1499:                                   ; preds = %cond.end.1493
  %arrayidx1500 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %619 = load i64, i64* %arrayidx1500, align 8
  %shr1501 = ashr i64 %619, 12
  %conv1502 = trunc i64 %shr1501 to i32
  %conv1503 = sext i32 %conv1502 to i64
  %yy1504 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %620 = load i64, i64* %yy1504, align 8
  %mul1505 = mul nsw i64 %conv1503, %620
  %round1506 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %621 = load i64, i64* %round1506, align 8
  %add1507 = add nsw i64 %mul1505, %621
  %shift1508 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %622 = load i32, i32* %shift1508, align 4
  %sh_prom1509 = zext i32 %622 to i64
  %shr1510 = ashr i64 %add1507, %sh_prom1509
  br label %cond.end.1522

cond.false.1511:                                  ; preds = %cond.end.1493
  %arrayidx1512 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %623 = load i64, i64* %arrayidx1512, align 8
  %shr1513 = ashr i64 %623, 12
  %conv1514 = trunc i64 %shr1513 to i32
  %conv1515 = sext i32 %conv1514 to i64
  %yy1516 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %624 = load i64, i64* %yy1516, align 8
  %mul1517 = mul nsw i64 %conv1515, %624
  %shift1518 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %625 = load i32, i32* %shift1518, align 4
  %sub1519 = sub nsw i32 0, %625
  %sh_prom1520 = zext i32 %sub1519 to i64
  %shl1521 = shl i64 %mul1517, %sh_prom1520
  br label %cond.end.1522

cond.end.1522:                                    ; preds = %cond.false.1511, %cond.true.1499
  %cond1523 = phi i64 [ %shr1510, %cond.true.1499 ], [ %shl1521, %cond.false.1511 ]
  %626 = load i64, i64* %pty, align 8
  %add1524 = add nsw i64 %626, %cond1523
  store i64 %add1524, i64* %pty, align 8
  %skewed1525 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %627 = load i32, i32* %skewed1525, align 4
  %tobool1526 = icmp ne i32 %627, 0
  br i1 %tobool1526, label %if.then.1527, label %if.end.1586

if.then.1527:                                     ; preds = %cond.end.1522
  %shift1528 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %628 = load i32, i32* %shift1528, align 4
  %cmp1529 = icmp sge i32 %628, 0
  br i1 %cmp1529, label %cond.true.1531, label %cond.false.1543

cond.true.1531:                                   ; preds = %if.then.1527
  %arrayidx1532 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %629 = load i64, i64* %arrayidx1532, align 8
  %shr1533 = ashr i64 %629, 12
  %conv1534 = trunc i64 %shr1533 to i32
  %conv1535 = sext i32 %conv1534 to i64
  %xy1536 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %630 = load i64, i64* %xy1536, align 8
  %mul1537 = mul nsw i64 %conv1535, %630
  %round1538 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %631 = load i64, i64* %round1538, align 8
  %add1539 = add nsw i64 %mul1537, %631
  %shift1540 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %632 = load i32, i32* %shift1540, align 4
  %sh_prom1541 = zext i32 %632 to i64
  %shr1542 = ashr i64 %add1539, %sh_prom1541
  br label %cond.end.1554

cond.false.1543:                                  ; preds = %if.then.1527
  %arrayidx1544 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %633 = load i64, i64* %arrayidx1544, align 8
  %shr1545 = ashr i64 %633, 12
  %conv1546 = trunc i64 %shr1545 to i32
  %conv1547 = sext i32 %conv1546 to i64
  %xy1548 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %634 = load i64, i64* %xy1548, align 8
  %mul1549 = mul nsw i64 %conv1547, %634
  %shift1550 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %635 = load i32, i32* %shift1550, align 4
  %sub1551 = sub nsw i32 0, %635
  %sh_prom1552 = zext i32 %sub1551 to i64
  %shl1553 = shl i64 %mul1549, %sh_prom1552
  br label %cond.end.1554

cond.end.1554:                                    ; preds = %cond.false.1543, %cond.true.1531
  %cond1555 = phi i64 [ %shr1542, %cond.true.1531 ], [ %shl1553, %cond.false.1543 ]
  %636 = load i64, i64* %pty, align 8
  %add1556 = add nsw i64 %636, %cond1555
  store i64 %add1556, i64* %pty, align 8
  %shift1557 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %637 = load i32, i32* %shift1557, align 4
  %cmp1558 = icmp sge i32 %637, 0
  br i1 %cmp1558, label %cond.true.1560, label %cond.false.1572

cond.true.1560:                                   ; preds = %cond.end.1554
  %arrayidx1561 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %638 = load i64, i64* %arrayidx1561, align 8
  %shr1562 = ashr i64 %638, 12
  %conv1563 = trunc i64 %shr1562 to i32
  %conv1564 = sext i32 %conv1563 to i64
  %yx1565 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %639 = load i64, i64* %yx1565, align 8
  %mul1566 = mul nsw i64 %conv1564, %639
  %round1567 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %640 = load i64, i64* %round1567, align 8
  %add1568 = add nsw i64 %mul1566, %640
  %shift1569 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %641 = load i32, i32* %shift1569, align 4
  %sh_prom1570 = zext i32 %641 to i64
  %shr1571 = ashr i64 %add1568, %sh_prom1570
  br label %cond.end.1583

cond.false.1572:                                  ; preds = %cond.end.1554
  %arrayidx1573 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %642 = load i64, i64* %arrayidx1573, align 8
  %shr1574 = ashr i64 %642, 12
  %conv1575 = trunc i64 %shr1574 to i32
  %conv1576 = sext i32 %conv1575 to i64
  %yx1577 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %643 = load i64, i64* %yx1577, align 8
  %mul1578 = mul nsw i64 %conv1576, %643
  %shift1579 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %644 = load i32, i32* %shift1579, align 4
  %sub1580 = sub nsw i32 0, %644
  %sh_prom1581 = zext i32 %sub1580 to i64
  %shl1582 = shl i64 %mul1578, %sh_prom1581
  br label %cond.end.1583

cond.end.1583:                                    ; preds = %cond.false.1572, %cond.true.1560
  %cond1584 = phi i64 [ %shr1571, %cond.true.1560 ], [ %shl1582, %cond.false.1572 ]
  %645 = load i64, i64* %ptx, align 8
  %add1585 = add nsw i64 %645, %cond1584
  store i64 %add1585, i64* %ptx, align 8
  br label %if.end.1586

if.end.1586:                                      ; preds = %cond.end.1583, %cond.end.1522
  %646 = load i64, i64* %ptx, align 8
  store i64 %646, i64* %x2, align 8
  %647 = load i64, i64* %pty, align 8
  store i64 %647, i64* %y2, align 8
  %shift1587 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %648 = load i32, i32* %shift1587, align 4
  %cmp1588 = icmp sge i32 %648, 0
  br i1 %cmp1588, label %cond.true.1590, label %cond.false.1602

cond.true.1590:                                   ; preds = %if.end.1586
  %arrayidx1591 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %649 = load i64, i64* %arrayidx1591, align 8
  %shr1592 = ashr i64 %649, 12
  %conv1593 = trunc i64 %shr1592 to i32
  %conv1594 = sext i32 %conv1593 to i64
  %xx1595 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %650 = load i64, i64* %xx1595, align 8
  %mul1596 = mul nsw i64 %conv1594, %650
  %round1597 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %651 = load i64, i64* %round1597, align 8
  %add1598 = add nsw i64 %mul1596, %651
  %shift1599 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %652 = load i32, i32* %shift1599, align 4
  %sh_prom1600 = zext i32 %652 to i64
  %shr1601 = ashr i64 %add1598, %sh_prom1600
  br label %cond.end.1613

cond.false.1602:                                  ; preds = %if.end.1586
  %arrayidx1603 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %653 = load i64, i64* %arrayidx1603, align 8
  %shr1604 = ashr i64 %653, 12
  %conv1605 = trunc i64 %shr1604 to i32
  %conv1606 = sext i32 %conv1605 to i64
  %xx1607 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %654 = load i64, i64* %xx1607, align 8
  %mul1608 = mul nsw i64 %conv1606, %654
  %shift1609 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %655 = load i32, i32* %shift1609, align 4
  %sub1610 = sub nsw i32 0, %655
  %sh_prom1611 = zext i32 %sub1610 to i64
  %shl1612 = shl i64 %mul1608, %sh_prom1611
  br label %cond.end.1613

cond.end.1613:                                    ; preds = %cond.false.1602, %cond.true.1590
  %cond1614 = phi i64 [ %shr1601, %cond.true.1590 ], [ %shl1612, %cond.false.1602 ]
  %656 = load i64, i64* %ptx, align 8
  %add1615 = add nsw i64 %656, %cond1614
  store i64 %add1615, i64* %ptx, align 8
  %skewed1616 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %657 = load i32, i32* %skewed1616, align 4
  %tobool1617 = icmp ne i32 %657, 0
  br i1 %tobool1617, label %if.then.1618, label %if.end.1648

if.then.1618:                                     ; preds = %cond.end.1613
  %shift1619 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %658 = load i32, i32* %shift1619, align 4
  %cmp1620 = icmp sge i32 %658, 0
  br i1 %cmp1620, label %cond.true.1622, label %cond.false.1634

cond.true.1622:                                   ; preds = %if.then.1618
  %arrayidx1623 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %659 = load i64, i64* %arrayidx1623, align 8
  %shr1624 = ashr i64 %659, 12
  %conv1625 = trunc i64 %shr1624 to i32
  %conv1626 = sext i32 %conv1625 to i64
  %xy1627 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %660 = load i64, i64* %xy1627, align 8
  %mul1628 = mul nsw i64 %conv1626, %660
  %round1629 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %661 = load i64, i64* %round1629, align 8
  %add1630 = add nsw i64 %mul1628, %661
  %shift1631 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %662 = load i32, i32* %shift1631, align 4
  %sh_prom1632 = zext i32 %662 to i64
  %shr1633 = ashr i64 %add1630, %sh_prom1632
  br label %cond.end.1645

cond.false.1634:                                  ; preds = %if.then.1618
  %arrayidx1635 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %663 = load i64, i64* %arrayidx1635, align 8
  %shr1636 = ashr i64 %663, 12
  %conv1637 = trunc i64 %shr1636 to i32
  %conv1638 = sext i32 %conv1637 to i64
  %xy1639 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %664 = load i64, i64* %xy1639, align 8
  %mul1640 = mul nsw i64 %conv1638, %664
  %shift1641 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %665 = load i32, i32* %shift1641, align 4
  %sub1642 = sub nsw i32 0, %665
  %sh_prom1643 = zext i32 %sub1642 to i64
  %shl1644 = shl i64 %mul1640, %sh_prom1643
  br label %cond.end.1645

cond.end.1645:                                    ; preds = %cond.false.1634, %cond.true.1622
  %cond1646 = phi i64 [ %shr1633, %cond.true.1622 ], [ %shl1644, %cond.false.1634 ]
  %666 = load i64, i64* %pty, align 8
  %add1647 = add nsw i64 %666, %cond1646
  store i64 %add1647, i64* %pty, align 8
  br label %if.end.1648

if.end.1648:                                      ; preds = %cond.end.1645, %cond.end.1613
  br label %curve

sw.bb.1649:                                       ; preds = %while.body
  %shift1650 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %667 = load i32, i32* %shift1650, align 4
  %cmp1651 = icmp sge i32 %667, 0
  br i1 %cmp1651, label %cond.true.1653, label %cond.false.1665

cond.true.1653:                                   ; preds = %sw.bb.1649
  %arrayidx1654 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %668 = load i64, i64* %arrayidx1654, align 8
  %shr1655 = ashr i64 %668, 12
  %conv1656 = trunc i64 %shr1655 to i32
  %conv1657 = sext i32 %conv1656 to i64
  %xx1658 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %669 = load i64, i64* %xx1658, align 8
  %mul1659 = mul nsw i64 %conv1657, %669
  %round1660 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %670 = load i64, i64* %round1660, align 8
  %add1661 = add nsw i64 %mul1659, %670
  %shift1662 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %671 = load i32, i32* %shift1662, align 4
  %sh_prom1663 = zext i32 %671 to i64
  %shr1664 = ashr i64 %add1661, %sh_prom1663
  br label %cond.end.1676

cond.false.1665:                                  ; preds = %sw.bb.1649
  %arrayidx1666 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %672 = load i64, i64* %arrayidx1666, align 8
  %shr1667 = ashr i64 %672, 12
  %conv1668 = trunc i64 %shr1667 to i32
  %conv1669 = sext i32 %conv1668 to i64
  %xx1670 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %673 = load i64, i64* %xx1670, align 8
  %mul1671 = mul nsw i64 %conv1669, %673
  %shift1672 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %674 = load i32, i32* %shift1672, align 4
  %sub1673 = sub nsw i32 0, %674
  %sh_prom1674 = zext i32 %sub1673 to i64
  %shl1675 = shl i64 %mul1671, %sh_prom1674
  br label %cond.end.1676

cond.end.1676:                                    ; preds = %cond.false.1665, %cond.true.1653
  %cond1677 = phi i64 [ %shr1664, %cond.true.1653 ], [ %shl1675, %cond.false.1665 ]
  %675 = load i64, i64* %ptx, align 8
  %add1678 = add nsw i64 %675, %cond1677
  store i64 %add1678, i64* %ptx, align 8
  %skewed1679 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %676 = load i32, i32* %skewed1679, align 4
  %tobool1680 = icmp ne i32 %676, 0
  br i1 %tobool1680, label %if.then.1681, label %if.end.1711

if.then.1681:                                     ; preds = %cond.end.1676
  %shift1682 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %677 = load i32, i32* %shift1682, align 4
  %cmp1683 = icmp sge i32 %677, 0
  br i1 %cmp1683, label %cond.true.1685, label %cond.false.1697

cond.true.1685:                                   ; preds = %if.then.1681
  %arrayidx1686 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %678 = load i64, i64* %arrayidx1686, align 8
  %shr1687 = ashr i64 %678, 12
  %conv1688 = trunc i64 %shr1687 to i32
  %conv1689 = sext i32 %conv1688 to i64
  %xy1690 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %679 = load i64, i64* %xy1690, align 8
  %mul1691 = mul nsw i64 %conv1689, %679
  %round1692 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %680 = load i64, i64* %round1692, align 8
  %add1693 = add nsw i64 %mul1691, %680
  %shift1694 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %681 = load i32, i32* %shift1694, align 4
  %sh_prom1695 = zext i32 %681 to i64
  %shr1696 = ashr i64 %add1693, %sh_prom1695
  br label %cond.end.1708

cond.false.1697:                                  ; preds = %if.then.1681
  %arrayidx1698 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 0
  %682 = load i64, i64* %arrayidx1698, align 8
  %shr1699 = ashr i64 %682, 12
  %conv1700 = trunc i64 %shr1699 to i32
  %conv1701 = sext i32 %conv1700 to i64
  %xy1702 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %683 = load i64, i64* %xy1702, align 8
  %mul1703 = mul nsw i64 %conv1701, %683
  %shift1704 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %684 = load i32, i32* %shift1704, align 4
  %sub1705 = sub nsw i32 0, %684
  %sh_prom1706 = zext i32 %sub1705 to i64
  %shl1707 = shl i64 %mul1703, %sh_prom1706
  br label %cond.end.1708

cond.end.1708:                                    ; preds = %cond.false.1697, %cond.true.1685
  %cond1709 = phi i64 [ %shr1696, %cond.true.1685 ], [ %shl1707, %cond.false.1697 ]
  %685 = load i64, i64* %pty, align 8
  %add1710 = add nsw i64 %685, %cond1709
  store i64 %add1710, i64* %pty, align 8
  br label %if.end.1711

if.end.1711:                                      ; preds = %cond.end.1708, %cond.end.1676
  %686 = load i64, i64* %ptx, align 8
  store i64 %686, i64* %x1, align 8
  %687 = load i64, i64* %pty, align 8
  store i64 %687, i64* %y1, align 8
  %shift1712 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %688 = load i32, i32* %shift1712, align 4
  %cmp1713 = icmp sge i32 %688, 0
  br i1 %cmp1713, label %cond.true.1715, label %cond.false.1727

cond.true.1715:                                   ; preds = %if.end.1711
  %arrayidx1716 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %689 = load i64, i64* %arrayidx1716, align 8
  %shr1717 = ashr i64 %689, 12
  %conv1718 = trunc i64 %shr1717 to i32
  %conv1719 = sext i32 %conv1718 to i64
  %xx1720 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %690 = load i64, i64* %xx1720, align 8
  %mul1721 = mul nsw i64 %conv1719, %690
  %round1722 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %691 = load i64, i64* %round1722, align 8
  %add1723 = add nsw i64 %mul1721, %691
  %shift1724 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %692 = load i32, i32* %shift1724, align 4
  %sh_prom1725 = zext i32 %692 to i64
  %shr1726 = ashr i64 %add1723, %sh_prom1725
  br label %cond.end.1738

cond.false.1727:                                  ; preds = %if.end.1711
  %arrayidx1728 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %693 = load i64, i64* %arrayidx1728, align 8
  %shr1729 = ashr i64 %693, 12
  %conv1730 = trunc i64 %shr1729 to i32
  %conv1731 = sext i32 %conv1730 to i64
  %xx1732 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 0
  %694 = load i64, i64* %xx1732, align 8
  %mul1733 = mul nsw i64 %conv1731, %694
  %shift1734 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %695 = load i32, i32* %shift1734, align 4
  %sub1735 = sub nsw i32 0, %695
  %sh_prom1736 = zext i32 %sub1735 to i64
  %shl1737 = shl i64 %mul1733, %sh_prom1736
  br label %cond.end.1738

cond.end.1738:                                    ; preds = %cond.false.1727, %cond.true.1715
  %cond1739 = phi i64 [ %shr1726, %cond.true.1715 ], [ %shl1737, %cond.false.1727 ]
  %696 = load i64, i64* %ptx, align 8
  %add1740 = add nsw i64 %696, %cond1739
  store i64 %add1740, i64* %ptx, align 8
  %shift1741 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %697 = load i32, i32* %shift1741, align 4
  %cmp1742 = icmp sge i32 %697, 0
  br i1 %cmp1742, label %cond.true.1744, label %cond.false.1756

cond.true.1744:                                   ; preds = %cond.end.1738
  %arrayidx1745 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %698 = load i64, i64* %arrayidx1745, align 8
  %shr1746 = ashr i64 %698, 12
  %conv1747 = trunc i64 %shr1746 to i32
  %conv1748 = sext i32 %conv1747 to i64
  %yy1749 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %699 = load i64, i64* %yy1749, align 8
  %mul1750 = mul nsw i64 %conv1748, %699
  %round1751 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %700 = load i64, i64* %round1751, align 8
  %add1752 = add nsw i64 %mul1750, %700
  %shift1753 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %701 = load i32, i32* %shift1753, align 4
  %sh_prom1754 = zext i32 %701 to i64
  %shr1755 = ashr i64 %add1752, %sh_prom1754
  br label %cond.end.1767

cond.false.1756:                                  ; preds = %cond.end.1738
  %arrayidx1757 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %702 = load i64, i64* %arrayidx1757, align 8
  %shr1758 = ashr i64 %702, 12
  %conv1759 = trunc i64 %shr1758 to i32
  %conv1760 = sext i32 %conv1759 to i64
  %yy1761 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %703 = load i64, i64* %yy1761, align 8
  %mul1762 = mul nsw i64 %conv1760, %703
  %shift1763 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %704 = load i32, i32* %shift1763, align 4
  %sub1764 = sub nsw i32 0, %704
  %sh_prom1765 = zext i32 %sub1764 to i64
  %shl1766 = shl i64 %mul1762, %sh_prom1765
  br label %cond.end.1767

cond.end.1767:                                    ; preds = %cond.false.1756, %cond.true.1744
  %cond1768 = phi i64 [ %shr1755, %cond.true.1744 ], [ %shl1766, %cond.false.1756 ]
  %705 = load i64, i64* %pty, align 8
  %add1769 = add nsw i64 %705, %cond1768
  store i64 %add1769, i64* %pty, align 8
  %skewed1770 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %706 = load i32, i32* %skewed1770, align 4
  %tobool1771 = icmp ne i32 %706, 0
  br i1 %tobool1771, label %if.then.1772, label %if.end.1831

if.then.1772:                                     ; preds = %cond.end.1767
  %shift1773 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %707 = load i32, i32* %shift1773, align 4
  %cmp1774 = icmp sge i32 %707, 0
  br i1 %cmp1774, label %cond.true.1776, label %cond.false.1788

cond.true.1776:                                   ; preds = %if.then.1772
  %arrayidx1777 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %708 = load i64, i64* %arrayidx1777, align 8
  %shr1778 = ashr i64 %708, 12
  %conv1779 = trunc i64 %shr1778 to i32
  %conv1780 = sext i32 %conv1779 to i64
  %xy1781 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %709 = load i64, i64* %xy1781, align 8
  %mul1782 = mul nsw i64 %conv1780, %709
  %round1783 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %710 = load i64, i64* %round1783, align 8
  %add1784 = add nsw i64 %mul1782, %710
  %shift1785 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %711 = load i32, i32* %shift1785, align 4
  %sh_prom1786 = zext i32 %711 to i64
  %shr1787 = ashr i64 %add1784, %sh_prom1786
  br label %cond.end.1799

cond.false.1788:                                  ; preds = %if.then.1772
  %arrayidx1789 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 1
  %712 = load i64, i64* %arrayidx1789, align 8
  %shr1790 = ashr i64 %712, 12
  %conv1791 = trunc i64 %shr1790 to i32
  %conv1792 = sext i32 %conv1791 to i64
  %xy1793 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 1
  %713 = load i64, i64* %xy1793, align 8
  %mul1794 = mul nsw i64 %conv1792, %713
  %shift1795 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %714 = load i32, i32* %shift1795, align 4
  %sub1796 = sub nsw i32 0, %714
  %sh_prom1797 = zext i32 %sub1796 to i64
  %shl1798 = shl i64 %mul1794, %sh_prom1797
  br label %cond.end.1799

cond.end.1799:                                    ; preds = %cond.false.1788, %cond.true.1776
  %cond1800 = phi i64 [ %shr1787, %cond.true.1776 ], [ %shl1798, %cond.false.1788 ]
  %715 = load i64, i64* %pty, align 8
  %add1801 = add nsw i64 %715, %cond1800
  store i64 %add1801, i64* %pty, align 8
  %shift1802 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %716 = load i32, i32* %shift1802, align 4
  %cmp1803 = icmp sge i32 %716, 0
  br i1 %cmp1803, label %cond.true.1805, label %cond.false.1817

cond.true.1805:                                   ; preds = %cond.end.1799
  %arrayidx1806 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %717 = load i64, i64* %arrayidx1806, align 8
  %shr1807 = ashr i64 %717, 12
  %conv1808 = trunc i64 %shr1807 to i32
  %conv1809 = sext i32 %conv1808 to i64
  %yx1810 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %718 = load i64, i64* %yx1810, align 8
  %mul1811 = mul nsw i64 %conv1809, %718
  %round1812 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %719 = load i64, i64* %round1812, align 8
  %add1813 = add nsw i64 %mul1811, %719
  %shift1814 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %720 = load i32, i32* %shift1814, align 4
  %sh_prom1815 = zext i32 %720 to i64
  %shr1816 = ashr i64 %add1813, %sh_prom1815
  br label %cond.end.1828

cond.false.1817:                                  ; preds = %cond.end.1799
  %arrayidx1818 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 2
  %721 = load i64, i64* %arrayidx1818, align 8
  %shr1819 = ashr i64 %721, 12
  %conv1820 = trunc i64 %shr1819 to i32
  %conv1821 = sext i32 %conv1820 to i64
  %yx1822 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %722 = load i64, i64* %yx1822, align 8
  %mul1823 = mul nsw i64 %conv1821, %722
  %shift1824 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %723 = load i32, i32* %shift1824, align 4
  %sub1825 = sub nsw i32 0, %723
  %sh_prom1826 = zext i32 %sub1825 to i64
  %shl1827 = shl i64 %mul1823, %sh_prom1826
  br label %cond.end.1828

cond.end.1828:                                    ; preds = %cond.false.1817, %cond.true.1805
  %cond1829 = phi i64 [ %shr1816, %cond.true.1805 ], [ %shl1827, %cond.false.1817 ]
  %724 = load i64, i64* %ptx, align 8
  %add1830 = add nsw i64 %724, %cond1829
  store i64 %add1830, i64* %ptx, align 8
  br label %if.end.1831

if.end.1831:                                      ; preds = %cond.end.1828, %cond.end.1767
  %725 = load i64, i64* %ptx, align 8
  store i64 %725, i64* %x2, align 8
  %726 = load i64, i64* %pty, align 8
  store i64 %726, i64* %y2, align 8
  %shift1832 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %727 = load i32, i32* %shift1832, align 4
  %cmp1833 = icmp sge i32 %727, 0
  br i1 %cmp1833, label %cond.true.1835, label %cond.false.1847

cond.true.1835:                                   ; preds = %if.end.1831
  %arrayidx1836 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %728 = load i64, i64* %arrayidx1836, align 8
  %shr1837 = ashr i64 %728, 12
  %conv1838 = trunc i64 %shr1837 to i32
  %conv1839 = sext i32 %conv1838 to i64
  %yy1840 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %729 = load i64, i64* %yy1840, align 8
  %mul1841 = mul nsw i64 %conv1839, %729
  %round1842 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %730 = load i64, i64* %round1842, align 8
  %add1843 = add nsw i64 %mul1841, %730
  %shift1844 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %731 = load i32, i32* %shift1844, align 4
  %sh_prom1845 = zext i32 %731 to i64
  %shr1846 = ashr i64 %add1843, %sh_prom1845
  br label %cond.end.1858

cond.false.1847:                                  ; preds = %if.end.1831
  %arrayidx1848 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %732 = load i64, i64* %arrayidx1848, align 8
  %shr1849 = ashr i64 %732, 12
  %conv1850 = trunc i64 %shr1849 to i32
  %conv1851 = sext i32 %conv1850 to i64
  %yy1852 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 3
  %733 = load i64, i64* %yy1852, align 8
  %mul1853 = mul nsw i64 %conv1851, %733
  %shift1854 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %734 = load i32, i32* %shift1854, align 4
  %sub1855 = sub nsw i32 0, %734
  %sh_prom1856 = zext i32 %sub1855 to i64
  %shl1857 = shl i64 %mul1853, %sh_prom1856
  br label %cond.end.1858

cond.end.1858:                                    ; preds = %cond.false.1847, %cond.true.1835
  %cond1859 = phi i64 [ %shr1846, %cond.true.1835 ], [ %shl1857, %cond.false.1847 ]
  %735 = load i64, i64* %pty, align 8
  %add1860 = add nsw i64 %735, %cond1859
  store i64 %add1860, i64* %pty, align 8
  %skewed1861 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 4
  %736 = load i32, i32* %skewed1861, align 4
  %tobool1862 = icmp ne i32 %736, 0
  br i1 %tobool1862, label %if.then.1863, label %if.end.1893

if.then.1863:                                     ; preds = %cond.end.1858
  %shift1864 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %737 = load i32, i32* %shift1864, align 4
  %cmp1865 = icmp sge i32 %737, 0
  br i1 %cmp1865, label %cond.true.1867, label %cond.false.1879

cond.true.1867:                                   ; preds = %if.then.1863
  %arrayidx1868 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %738 = load i64, i64* %arrayidx1868, align 8
  %shr1869 = ashr i64 %738, 12
  %conv1870 = trunc i64 %shr1869 to i32
  %conv1871 = sext i32 %conv1870 to i64
  %yx1872 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %739 = load i64, i64* %yx1872, align 8
  %mul1873 = mul nsw i64 %conv1871, %739
  %round1874 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 6
  %740 = load i64, i64* %round1874, align 8
  %add1875 = add nsw i64 %mul1873, %740
  %shift1876 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %741 = load i32, i32* %shift1876, align 4
  %sh_prom1877 = zext i32 %741 to i64
  %shr1878 = ashr i64 %add1875, %sh_prom1877
  br label %cond.end.1890

cond.false.1879:                                  ; preds = %if.then.1863
  %arrayidx1880 = getelementptr inbounds [24 x i64], [24 x i64]* %cstack, i32 0, i64 3
  %742 = load i64, i64* %arrayidx1880, align 8
  %shr1881 = ashr i64 %742, 12
  %conv1882 = trunc i64 %shr1881 to i32
  %conv1883 = sext i32 %conv1882 to i64
  %yx1884 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 2
  %743 = load i64, i64* %yx1884, align 8
  %mul1885 = mul nsw i64 %conv1883, %743
  %shift1886 = getelementptr inbounds %struct.fixed_coeff, %struct.fixed_coeff* %fc, i32 0, i32 5
  %744 = load i32, i32* %shift1886, align 4
  %sub1887 = sub nsw i32 0, %744
  %sh_prom1888 = zext i32 %sub1887 to i64
  %shl1889 = shl i64 %mul1885, %sh_prom1888
  br label %cond.end.1890

cond.end.1890:                                    ; preds = %cond.false.1879, %cond.true.1867
  %cond1891 = phi i64 [ %shr1878, %cond.true.1867 ], [ %shl1889, %cond.false.1879 ]
  %745 = load i64, i64* %ptx, align 8
  %add1892 = add nsw i64 %745, %cond1891
  store i64 %add1892, i64* %ptx, align 8
  br label %if.end.1893

if.end.1893:                                      ; preds = %cond.end.1890, %cond.end.1858
  br label %curve

sw.bb.1894:                                       ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  store i32 -10, i32* %retval
  br label %return

sw.default.1895:                                  ; preds = %while.body
  %746 = load i64*, i64** %csp, align 8
  %incdec.ptr1896 = getelementptr inbounds i64, i64* %746, i32 1
  store i64* %incdec.ptr1896, i64** %csp, align 8
  %747 = load i32, i32* %c, align 4
  %cmp1897 = icmp sle i32 %747, 246
  br i1 %cmp1897, label %if.then.1899, label %if.else.1905

if.then.1899:                                     ; preds = %sw.default.1895
  %748 = load i32, i32* %c, align 4
  %conv1900 = trunc i32 %748 to i8
  %conv1901 = zext i8 %conv1900 to i32
  %sub1902 = sub nsw i32 %conv1901, 139
  %conv1903 = sext i32 %sub1902 to i64
  %shl1904 = shl i64 %conv1903, 12
  %749 = load i64*, i64** %csp, align 8
  store i64 %shl1904, i64* %749, align 8
  br label %if.end.2006

if.else.1905:                                     ; preds = %sw.default.1895
  %750 = load i8*, i8** %cip, align 8
  %751 = load i8, i8* %750, align 1
  %conv1906 = zext i8 %751 to i32
  %752 = load i16, i16* %state, align 2
  %conv1907 = zext i16 %752 to i32
  %shr1908 = ashr i32 %conv1907, 8
  %xor1909 = xor i32 %conv1906, %shr1908
  %conv1910 = trunc i32 %xor1909 to i8
  store i8 %conv1910, i8* %c0, align 1
  %753 = load i8*, i8** %cip, align 8
  %754 = load i8, i8* %753, align 1
  %conv1911 = zext i8 %754 to i32
  %755 = load i16, i16* %state, align 2
  %conv1912 = zext i16 %755 to i32
  %add1913 = add nsw i32 %conv1911, %conv1912
  %mul1914 = mul nsw i32 %add1913, 52845
  %add1915 = add nsw i32 %mul1914, 22719
  %conv1916 = trunc i32 %add1915 to i16
  store i16 %conv1916, i16* %state, align 2
  %756 = load i8*, i8** %cip, align 8
  %incdec.ptr1917 = getelementptr inbounds i8, i8* %756, i32 1
  store i8* %incdec.ptr1917, i8** %cip, align 8
  %757 = load i32, i32* %c, align 4
  %cmp1918 = icmp sle i32 %757, 250
  br i1 %cmp1918, label %if.then.1920, label %if.else.1932

if.then.1920:                                     ; preds = %if.else.1905
  %758 = load i32, i32* %c, align 4
  %sub1921 = sub nsw i32 %758, 247
  %conv1922 = trunc i32 %sub1921 to i8
  %conv1923 = zext i8 %conv1922 to i32
  %shl1924 = shl i32 %conv1923, 8
  %759 = load i8, i8* %c0, align 1
  %conv1925 = zext i8 %759 to i32
  %conv1926 = trunc i32 %conv1925 to i8
  %conv1927 = zext i8 %conv1926 to i32
  %add1928 = add nsw i32 %shl1924, %conv1927
  %add1929 = add nsw i32 %add1928, 108
  %conv1930 = sext i32 %add1929 to i64
  %shl1931 = shl i64 %conv1930, 12
  %760 = load i64*, i64** %csp, align 8
  store i64 %shl1931, i64* %760, align 8
  br label %if.end.2005

if.else.1932:                                     ; preds = %if.else.1905
  %761 = load i32, i32* %c, align 4
  %cmp1933 = icmp sle i32 %761, 254
  br i1 %cmp1933, label %if.then.1935, label %if.else.1948

if.then.1935:                                     ; preds = %if.else.1932
  %762 = load i32, i32* %c, align 4
  %sub1936 = sub nsw i32 %762, 251
  %conv1937 = trunc i32 %sub1936 to i8
  %conv1938 = zext i8 %conv1937 to i32
  %shl1939 = shl i32 %conv1938, 8
  %763 = load i8, i8* %c0, align 1
  %conv1940 = zext i8 %763 to i32
  %conv1941 = trunc i32 %conv1940 to i8
  %conv1942 = zext i8 %conv1941 to i32
  %add1943 = add nsw i32 %shl1939, %conv1942
  %add1944 = add nsw i32 %add1943, 108
  %sub1945 = sub nsw i32 0, %add1944
  %conv1946 = sext i32 %sub1945 to i64
  %shl1947 = shl i64 %conv1946, 12
  %764 = load i64*, i64** %csp, align 8
  store i64 %shl1947, i64* %764, align 8
  br label %if.end.2004

if.else.1948:                                     ; preds = %if.else.1932
  %765 = load i8*, i8** %cip, align 8
  %766 = load i8, i8* %765, align 1
  %conv1949 = zext i8 %766 to i32
  %767 = load i16, i16* %state, align 2
  %conv1950 = zext i16 %767 to i32
  %shr1951 = ashr i32 %conv1950, 8
  %xor1952 = xor i32 %conv1949, %shr1951
  %conv1953 = trunc i32 %xor1952 to i8
  store i8 %conv1953, i8* %c1, align 1
  %768 = load i8*, i8** %cip, align 8
  %769 = load i8, i8* %768, align 1
  %conv1954 = zext i8 %769 to i32
  %770 = load i16, i16* %state, align 2
  %conv1955 = zext i16 %770 to i32
  %add1956 = add nsw i32 %conv1954, %conv1955
  %mul1957 = mul nsw i32 %add1956, 52845
  %add1958 = add nsw i32 %mul1957, 22719
  %conv1959 = trunc i32 %add1958 to i16
  store i16 %conv1959, i16* %state, align 2
  %771 = load i8*, i8** %cip, align 8
  %incdec.ptr1960 = getelementptr inbounds i8, i8* %771, i32 1
  store i8* %incdec.ptr1960, i8** %cip, align 8
  %772 = load i8*, i8** %cip, align 8
  %773 = load i8, i8* %772, align 1
  %conv1961 = zext i8 %773 to i32
  %774 = load i16, i16* %state, align 2
  %conv1962 = zext i16 %774 to i32
  %shr1963 = ashr i32 %conv1962, 8
  %xor1964 = xor i32 %conv1961, %shr1963
  %conv1965 = trunc i32 %xor1964 to i8
  store i8 %conv1965, i8* %c2, align 1
  %775 = load i8*, i8** %cip, align 8
  %776 = load i8, i8* %775, align 1
  %conv1966 = zext i8 %776 to i32
  %777 = load i16, i16* %state, align 2
  %conv1967 = zext i16 %777 to i32
  %add1968 = add nsw i32 %conv1966, %conv1967
  %mul1969 = mul nsw i32 %add1968, 52845
  %add1970 = add nsw i32 %mul1969, 22719
  %conv1971 = trunc i32 %add1970 to i16
  store i16 %conv1971, i16* %state, align 2
  %778 = load i8*, i8** %cip, align 8
  %incdec.ptr1972 = getelementptr inbounds i8, i8* %778, i32 1
  store i8* %incdec.ptr1972, i8** %cip, align 8
  %779 = load i8*, i8** %cip, align 8
  %780 = load i8, i8* %779, align 1
  %conv1973 = zext i8 %780 to i32
  %781 = load i16, i16* %state, align 2
  %conv1974 = zext i16 %781 to i32
  %shr1975 = ashr i32 %conv1974, 8
  %xor1976 = xor i32 %conv1973, %shr1975
  %conv1977 = sext i32 %xor1976 to i64
  store i64 %conv1977, i64* %lw, align 8
  %782 = load i8*, i8** %cip, align 8
  %783 = load i8, i8* %782, align 1
  %conv1978 = zext i8 %783 to i32
  %784 = load i16, i16* %state, align 2
  %conv1979 = zext i16 %784 to i32
  %add1980 = add nsw i32 %conv1978, %conv1979
  %mul1981 = mul nsw i32 %add1980, 52845
  %add1982 = add nsw i32 %mul1981, 22719
  %conv1983 = trunc i32 %add1982 to i16
  store i16 %conv1983, i16* %state, align 2
  %785 = load i8*, i8** %cip, align 8
  %incdec.ptr1984 = getelementptr inbounds i8, i8* %785, i32 1
  store i8* %incdec.ptr1984, i8** %cip, align 8
  %786 = load i8, i8* %c0, align 1
  %conv1985 = zext i8 %786 to i64
  %shl1986 = shl i64 %conv1985, 24
  %787 = load i64, i64* %lw, align 8
  %add1987 = add nsw i64 %787, %shl1986
  store i64 %add1987, i64* %lw, align 8
  %788 = load i8, i8* %c1, align 1
  %conv1988 = zext i8 %788 to i32
  %shl1989 = shl i32 %conv1988, 16
  %conv1990 = zext i32 %shl1989 to i64
  %789 = load i64, i64* %lw, align 8
  %add1991 = add nsw i64 %789, %conv1990
  store i64 %add1991, i64* %lw, align 8
  %790 = load i8, i8* %c2, align 1
  %conv1992 = zext i8 %790 to i32
  %shl1993 = shl i32 %conv1992, 8
  %conv1994 = zext i32 %shl1993 to i64
  %791 = load i64, i64* %lw, align 8
  %add1995 = add nsw i64 %791, %conv1994
  store i64 %add1995, i64* %lw, align 8
  %792 = load i64, i64* %lw, align 8
  %shl1996 = shl i64 %792, 12
  %793 = load i64*, i64** %csp, align 8
  store i64 %shl1996, i64* %793, align 8
  %794 = load i64, i64* %lw, align 8
  %795 = load i64*, i64** %csp, align 8
  %796 = load i64, i64* %795, align 8
  %shr1997 = ashr i64 %796, 12
  %conv1998 = trunc i64 %shr1997 to i32
  %conv1999 = sext i32 %conv1998 to i64
  %cmp2000 = icmp ne i64 %794, %conv1999
  br i1 %cmp2000, label %if.then.2002, label %if.end.2003

if.then.2002:                                     ; preds = %if.else.1948
  store i32 -15, i32* %retval
  br label %return

if.end.2003:                                      ; preds = %if.else.1948
  br label %if.end.2004

if.end.2004:                                      ; preds = %if.end.2003, %if.then.1935
  br label %if.end.2005

if.end.2005:                                      ; preds = %if.end.2004, %if.then.1920
  br label %if.end.2006

if.end.2006:                                      ; preds = %if.end.2005, %if.then.1899
  br label %pushed

pushed:                                           ; preds = %if.end.2006, %if.end.953
  br label %sw.epilog.2007

sw.epilog.2007:                                   ; preds = %pushed, %sw.epilog, %pp, %sw.bb.38, %sw.bb
  br label %while.body

return:                                           ; preds = %if.then.2002, %sw.bb.1894, %if.end.1218, %if.then.1208, %if.then.1196, %if.then.1131, %if.then.1091, %sw.default, %if.then.952, %if.end.944, %if.end.875, %if.then.717, %if.then.709, %if.then.213
  %797 = load i32, i32* %retval
  ret i32 %797
}

declare i32 @gx_path_add_line(%struct.gx_path_s*, i64, i64) #3

declare i32 @gx_path_add_curve(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #3

declare i32 @gx_path_close_subpath(%struct.gx_path_s*) #3

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #3

declare i32 @gs_setcharwidth(%struct.gs_show_enum_s*, double, double) #3

declare i32 @gx_path_merge(%struct.gx_path_s*, %struct.gx_path_s*) #3

declare i32 @gs_pathbbox(...) #3

declare float @gs_currentlinewidth(%struct.gs_state_s*) #3

declare i32 @gs_setcachedevice(%struct.gs_show_enum_s*, double, double, double, double, double, double) #3

declare i32 @gx_path_translate(%struct.gx_path_s*, i64, i64) #3

declare i32 @gs_stroke(...) #3

declare i32 @gs_fill_trim(...) #3

; Function Attrs: nounwind uwtable
define i32 @gs_type1_pop(%struct.gs_type1_state_s* %pis, i64* %pf) #0 {
entry:
  %pis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pf.addr = alloca i64*, align 8
  store %struct.gs_type1_state_s* %pis, %struct.gs_type1_state_s** %pis.addr, align 8
  store i64* %pf, i64** %pf.addr, align 8
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 7
  %1 = load i32, i32* %os_count, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %os_count, align 4
  %idxprom = sext i32 %dec to i64
  %2 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis.addr, align 8
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [24 x i64], [24 x i64]* %ostack, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load i64*, i64** %pf.addr, align 8
  store i64 %3, i64* %4, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
