; ModuleID = './MultiSource.Benchmarks.MallocBench/83.gs.gsimage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_image_enum_s = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, %struct.gs_state_s*, i8*, i32, i32, i32, i32, i32, [4 x i8*], i32, i32, i32, i64, i64, i32, [256 x %struct.gx_device_color_s] }
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
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%union.color_sample = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }

@gs_image_enum_sizeof = global i32 8376, align 4
@map_4_to_32 = global [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], align 16
@map_4_to_16 = global [16 x i16] [i16 0, i16 21760, i16 -22016, i16 -256, i16 85, i16 21845, i16 -21931, i16 -171, i16 170, i16 21930, i16 -21846, i16 -86, i16 255, i16 22015, i16 -21761, i16 -1], align 16
@.str = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@image_init.procs = internal global [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*] [void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_0, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_1, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_2, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_3], align 16
@image_init.spread_procs = internal global [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*] [void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_0_spread, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_1_spread, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_2, void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_3_spread], align 16

; Function Attrs: nounwind uwtable
define i32 @gs_image_init(%struct.gs_image_enum_s* %penum, %struct.gs_state_s* %pgs, i32 %width, i32 %height, i32 %bps, i32 %spp, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_bps = alloca i32, align 4
  %spread = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bps, i32* %bps.addr, align 4
  store i32 %spp, i32* %spp.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 19
  %1 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %bps.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %3 = load i32, i32* %bps.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %log2_bps, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  store i32 3, i32* %log2_bps, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %4 = load i32, i32* %spp.addr, align 4
  switch i32 %4, label %sw.default.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 -3, label %sw.bb.3
    i32 -4, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  store i32 1, i32* %spread, align 4
  br label %sw.epilog.5

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  %5 = load i32, i32* %spp.addr, align 4
  %sub = sub nsw i32 0, %5
  store i32 %sub, i32* %spp.addr, align 4
  %6 = load i32, i32* %spp.addr, align 4
  store i32 %6, i32* %spread, align 4
  br label %sw.epilog.5

sw.default.4:                                     ; preds = %sw.epilog
  store i32 -15, i32* %retval
  br label %return

sw.epilog.5:                                      ; preds = %sw.bb.3, %sw.bb.2
  %7 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %10 = load i32, i32* %log2_bps, align 4
  %11 = load i32, i32* %spp.addr, align 4
  %12 = load i32, i32* %spread, align 4
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 22
  %16 = load %struct.device_s*, %struct.device_s** %device, align 8
  %black = getelementptr inbounds %struct.device_s, %struct.device_s* %16, i32 0, i32 3
  %17 = load i64, i64* %black, align 8
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 22
  %19 = load %struct.device_s*, %struct.device_s** %device6, align 8
  %white = getelementptr inbounds %struct.device_s, %struct.device_s* %19, i32 0, i32 2
  %20 = load i64, i64* %white, align 8
  %call = call i32 @image_init(%struct.gs_image_enum_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct.gs_matrix_s* %13, %struct.gs_state_s* %14, i64 %17, i64 %20)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.5, %sw.default.4, %sw.default, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @image_init(%struct.gs_image_enum_s* %penum, i32 %width, i32 %height, i32 %log2_bps, i32 %spp, i32 %spread, %struct.gs_matrix_s* %pmat, %struct.gs_state_s* %pgs, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %log2_bps.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %spread.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  %bsize = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %mtx = alloca i64, align 8
  %mty = alloca i64, align 8
  %pcht = alloca %struct.gx_device_color_s*, align 8
  %n = alloca i32, align 4
  %pcpath = alloca %struct.gx_path_s*, align 8
  %xmin = alloca i64, align 8
  %ymin = alloca i64, align 8
  %xmax = alloca i64, align 8
  %ymax = alloca i64, align 8
  %mdx = alloca i64, align 8
  %mdy = alloca i64, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %log2_bps, i32* %log2_bps.addr, align 4
  store i32 %spp, i32* %spp.addr, align 4
  store i32 %spread, i32* %spread.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i64 %color0, i64* %color0.addr, align 8
  store i64 %color1, i64* %color1.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %1 = load i32, i32* %spp.addr, align 4
  %mul = mul nsw i32 %add, %1
  store i32 %mul, i32* %bsize, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %5, %struct.gs_matrix_s* %mat)
  store i32 %call, i32* %code, align 4
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end.4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %7 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call7 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %7, %struct.gs_matrix_s* %mat)
  store i32 %call7, i32* %code, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.end.4
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false.6
  %9 = load i32, i32* %bsize, align 4
  %call11 = call i8* @gs_malloc(i32 1, i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  store i8* %call11, i8** %buffer, align 8
  %10 = load i8*, i8** %buffer, align 8
  %cmp12 = icmp eq i8* %10, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 -25, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %width15 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %12, i32 0, i32 0
  store i32 %11, i32* %width15, align 4
  %13 = load i32, i32* %height.addr, align 4
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %height16 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %14, i32 0, i32 1
  store i32 %13, i32* %height16, align 4
  %15 = load i32, i32* %log2_bps.addr, align 4
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %log2_bps17 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 2
  store i32 %15, i32* %log2_bps17, align 4
  %17 = load i32, i32* %spp.addr, align 4
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spp18 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 3
  store i32 %17, i32* %spp18, align 4
  %19 = load i32, i32* %spread.addr, align 4
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread19 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %20, i32 0, i32 4
  store i32 %19, i32* %spread19, align 4
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %21 = load float, float* %xx, align 4
  %mul20 = fmul float %21, 4.096000e+03
  %conv = fptosi float %mul20 to i64
  %22 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %22, i32 0, i32 5
  store i64 %conv, i64* %fxx, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 6
  %23 = load float, float* %yy, align 4
  %mul21 = fmul float %23, 4.096000e+03
  %conv22 = fptosi float %mul21 to i64
  %24 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %24, i32 0, i32 8
  store i64 %conv22, i64* %fyy, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %25 = bitcast float* %xy to i64*
  %26 = load i64, i64* %25, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %27 = bitcast float* %yx to i64*
  %28 = load i64, i64* %27, align 8
  %or = or i64 %26, %28
  %shl = shl i64 %or, 1
  %cmp23 = icmp eq i64 %shl, 0
  %lnot = xor i1 %cmp23, true
  %lnot.ext = zext i1 %lnot to i32
  %29 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %skewed = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %29, i32 0, i32 16
  store i32 %lnot.ext, i32* %skewed, align 4
  br i1 %lnot, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.14
  %xy26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %30 = load float, float* %xy26, align 4
  %mul27 = fmul float %30, 4.096000e+03
  %conv28 = fptosi float %mul27 to i64
  %31 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %31, i32 0, i32 6
  store i64 %conv28, i64* %fxy, align 8
  %yx29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %32 = load float, float* %yx29, align 4
  %mul30 = fmul float %32, 4.096000e+03
  %conv31 = fptosi float %mul30 to i64
  %33 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %33, i32 0, i32 7
  store i64 %conv31, i64* %fyx, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.end.14
  %34 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxy32 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %34, i32 0, i32 6
  store i64 0, i64* %fxy32, align 8
  %35 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyx33 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %35, i32 0, i32 7
  store i64 0, i64* %fyx33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.25
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 8
  %36 = load float, float* %tx, align 4
  %mul35 = fmul float %36, 4.096000e+03
  %conv36 = fptosi float %mul35 to i64
  store i64 %conv36, i64* %mtx, align 8
  %37 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %xcur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %37, i32 0, i32 22
  store i64 %conv36, i64* %xcur, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 10
  %38 = load float, float* %ty, align 4
  %mul37 = fmul float %38, 4.096000e+03
  %conv38 = fptosi float %mul37 to i64
  store i64 %conv38, i64* %mty, align 8
  %39 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %ycur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %39, i32 0, i32 23
  store i64 %conv38, i64* %ycur, align 8
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %41 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %pgs39 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %41, i32 0, i32 11
  store %struct.gs_state_s* %40, %struct.gs_state_s** %pgs39, align 8
  %42 = load i8*, i8** %buffer, align 8
  %43 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer40 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %43, i32 0, i32 12
  store i8* %42, i8** %buffer40, align 8
  %44 = load i32, i32* %bsize, align 4
  %45 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer_size = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %45, i32 0, i32 13
  store i32 %44, i32* %buffer_size, align 4
  %46 = load i32, i32* %width.addr, align 4
  %conv41 = sext i32 %46 to i64
  %47 = load i32, i32* %log2_bps.addr, align 4
  %sh_prom = zext i32 %47 to i64
  %shl42 = shl i64 %conv41, %sh_prom
  %48 = load i32, i32* %spp.addr, align 4
  %conv43 = sext i32 %48 to i64
  %mul44 = mul i64 %shl42, %conv43
  %49 = load i32, i32* %spread.addr, align 4
  %conv45 = sext i32 %49 to i64
  %div = udiv i64 %mul44, %conv45
  %add46 = add i64 %div, 7
  %shr = lshr i64 %add46, 3
  %conv47 = trunc i64 %shr to i32
  %50 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %bytes_per_row = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %50, i32 0, i32 14
  store i32 %conv47, i32* %bytes_per_row, align 4
  %51 = load i32, i32* %spp.addr, align 4
  %cmp48 = icmp eq i32 %51, 1
  br i1 %cmp48, label %if.then.50, label %if.end.116

if.then.50:                                       ; preds = %if.end.34
  %52 = load i32, i32* %log2_bps.addr, align 4
  switch i32 %52, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.60
    i32 1, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %if.then.50
  %53 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %53, i32 0, i32 25
  %arrayidx = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors, i32 0, i64 0
  store %struct.gx_device_color_s* %arrayidx, %struct.gx_device_color_s** %pcht, align 8
  store i32 64, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %54 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pcht, align 8
  %arrayidx51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %54, i64 3
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx51, i32 0, i32 2
  store i32 -1, i32* %halftone_level, align 4
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pcht, align 8
  %arrayidx52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i64 2
  %halftone_level53 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx52, i32 0, i32 2
  store i32 -1, i32* %halftone_level53, align 4
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pcht, align 8
  %arrayidx54 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %56, i64 1
  %halftone_level55 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx54, i32 0, i32 2
  store i32 -1, i32* %halftone_level55, align 4
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pcht, align 8
  %arrayidx56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %57, i64 0
  %halftone_level57 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx56, i32 0, i32 2
  store i32 -1, i32* %halftone_level57, align 4
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pcht, align 8
  %add.ptr = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %58, i64 4
  store %struct.gx_device_color_s* %add.ptr, %struct.gx_device_color_s** %pcht, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %59 = load i32, i32* %n, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %n, align 4
  %cmp58 = icmp sgt i32 %dec, 0
  br i1 %cmp58, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.then.50
  %60 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors61 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %60, i32 0, i32 25
  %arrayidx62 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors61, i32 0, i64 238
  %halftone_level63 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx62, i32 0, i32 2
  store i32 -1, i32* %halftone_level63, align 4
  %61 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors64 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %61, i32 0, i32 25
  %arrayidx65 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors64, i32 0, i64 221
  %halftone_level66 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx65, i32 0, i32 2
  store i32 -1, i32* %halftone_level66, align 4
  %62 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors67 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %62, i32 0, i32 25
  %arrayidx68 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors67, i32 0, i64 204
  %halftone_level69 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx68, i32 0, i32 2
  store i32 -1, i32* %halftone_level69, align 4
  %63 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors70 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %63, i32 0, i32 25
  %arrayidx71 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors70, i32 0, i64 187
  %halftone_level72 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx71, i32 0, i32 2
  store i32 -1, i32* %halftone_level72, align 4
  %64 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors73 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %64, i32 0, i32 25
  %arrayidx74 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors73, i32 0, i64 153
  %halftone_level75 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx74, i32 0, i32 2
  store i32 -1, i32* %halftone_level75, align 4
  %65 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors76 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %65, i32 0, i32 25
  %arrayidx77 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors76, i32 0, i64 136
  %halftone_level78 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx77, i32 0, i32 2
  store i32 -1, i32* %halftone_level78, align 4
  %66 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors79 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %66, i32 0, i32 25
  %arrayidx80 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors79, i32 0, i64 119
  %halftone_level81 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx80, i32 0, i32 2
  store i32 -1, i32* %halftone_level81, align 4
  %67 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors82 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %67, i32 0, i32 25
  %arrayidx83 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors82, i32 0, i64 102
  %halftone_level84 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx83, i32 0, i32 2
  store i32 -1, i32* %halftone_level84, align 4
  %68 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors85 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %68, i32 0, i32 25
  %arrayidx86 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors85, i32 0, i64 68
  %halftone_level87 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx86, i32 0, i32 2
  store i32 -1, i32* %halftone_level87, align 4
  %69 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors88 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %69, i32 0, i32 25
  %arrayidx89 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors88, i32 0, i64 51
  %halftone_level90 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx89, i32 0, i32 2
  store i32 -1, i32* %halftone_level90, align 4
  %70 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors91 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %70, i32 0, i32 25
  %arrayidx92 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors91, i32 0, i64 34
  %halftone_level93 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx92, i32 0, i32 2
  store i32 -1, i32* %halftone_level93, align 4
  %71 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors94 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %71, i32 0, i32 25
  %arrayidx95 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors94, i32 0, i64 17
  %halftone_level96 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx95, i32 0, i32 2
  store i32 -1, i32* %halftone_level96, align 4
  br label %sw.bb.97

sw.bb.97:                                         ; preds = %if.then.50, %sw.bb.60
  %72 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors98 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %72, i32 0, i32 25
  %arrayidx99 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors98, i32 0, i64 170
  %halftone_level100 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx99, i32 0, i32 2
  store i32 -1, i32* %halftone_level100, align 4
  %73 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors101 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %73, i32 0, i32 25
  %arrayidx102 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors101, i32 0, i64 85
  %halftone_level103 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx102, i32 0, i32 2
  store i32 -1, i32* %halftone_level103, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.97, %if.then.50, %do.end
  %74 = load i64, i64* %color0.addr, align 8
  %75 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors104 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %75, i32 0, i32 25
  %arrayidx105 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors104, i32 0, i64 0
  %color1106 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx105, i32 0, i32 0
  store i64 %74, i64* %color1106, align 8
  %76 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors107 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %76, i32 0, i32 25
  %arrayidx108 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors107, i32 0, i64 0
  %halftone_level109 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx108, i32 0, i32 2
  store i32 0, i32* %halftone_level109, align 4
  %77 = load i64, i64* %color1.addr, align 8
  %78 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors110 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %78, i32 0, i32 25
  %arrayidx111 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors110, i32 0, i64 255
  %color1112 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx111, i32 0, i32 0
  store i64 %77, i64* %color1112, align 8
  %79 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors113 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %79, i32 0, i32 25
  %arrayidx114 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors113, i32 0, i64 255
  %halftone_level115 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx114, i32 0, i32 2
  store i32 0, i32* %halftone_level115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %sw.epilog, %if.end.34
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %80, i32 0, i32 8
  %81 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  store %struct.gx_path_s* %81, %struct.gx_path_s** %pcpath, align 8
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %pcpath, align 8
  %cbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %82, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %83 = load i64, i64* %x, align 8
  store i64 %83, i64* %xmin, align 8
  %84 = load %struct.gx_path_s*, %struct.gx_path_s** %pcpath, align 8
  %cbox117 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %84, i32 0, i32 3
  %p118 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox117, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p118, i32 0, i32 1
  %85 = load i64, i64* %y, align 8
  store i64 %85, i64* %ymin, align 8
  %86 = load %struct.gx_path_s*, %struct.gx_path_s** %pcpath, align 8
  %cbox119 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %86, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox119, i32 0, i32 1
  %x120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %87 = load i64, i64* %x120, align 8
  store i64 %87, i64* %xmax, align 8
  %88 = load %struct.gx_path_s*, %struct.gx_path_s** %pcpath, align 8
  %cbox121 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %88, i32 0, i32 3
  %q122 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox121, i32 0, i32 1
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q122, i32 0, i32 1
  %89 = load i64, i64* %y123, align 8
  store i64 %89, i64* %ymax, align 8
  %xx124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %90 = load float, float* %xx124, align 4
  %mul125 = fmul float %90, 4.096000e+03
  %conv126 = fptosi float %mul125 to i64
  %91 = load i32, i32* %width.addr, align 4
  %conv127 = sext i32 %91 to i64
  %mul128 = mul nsw i64 %conv126, %conv127
  store i64 %mul128, i64* %mdx, align 8
  %yy129 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 6
  %92 = load float, float* %yy129, align 4
  %mul130 = fmul float %92, 4.096000e+03
  %conv131 = fptosi float %mul130 to i64
  %93 = load i32, i32* %height.addr, align 4
  %conv132 = sext i32 %93 to i64
  %mul133 = mul nsw i64 %conv131, %conv132
  store i64 %mul133, i64* %mdy, align 8
  %94 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %skewed134 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %94, i32 0, i32 16
  %95 = load i32, i32* %skewed134, align 4
  %tobool = icmp ne i32 %95, 0
  br i1 %tobool, label %if.then.135, label %if.end.148

if.then.135:                                      ; preds = %if.end.116
  %yx136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %96 = load float, float* %yx136, align 4
  %mul137 = fmul float %96, 4.096000e+03
  %conv138 = fptosi float %mul137 to i64
  %97 = load i32, i32* %height.addr, align 4
  %conv139 = sext i32 %97 to i64
  %mul140 = mul nsw i64 %conv138, %conv139
  %98 = load i64, i64* %mdx, align 8
  %add141 = add nsw i64 %98, %mul140
  store i64 %add141, i64* %mdx, align 8
  %xy142 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %99 = load float, float* %xy142, align 4
  %mul143 = fmul float %99, 4.096000e+03
  %conv144 = fptosi float %mul143 to i64
  %100 = load i32, i32* %width.addr, align 4
  %conv145 = sext i32 %100 to i64
  %mul146 = mul nsw i64 %conv144, %conv145
  %101 = load i64, i64* %mdy, align 8
  %add147 = add nsw i64 %101, %mul146
  store i64 %add147, i64* %mdy, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.135, %if.end.116
  %102 = load i64, i64* %mdx, align 8
  %cmp149 = icmp slt i64 %102, 0
  br i1 %cmp149, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.148
  %103 = load i64, i64* %mtx, align 8
  %104 = load i64, i64* %mdx, align 8
  %add151 = add nsw i64 %103, %104
  %105 = load i64, i64* %xmin, align 8
  %cmp152 = icmp sge i64 %add151, %105
  br i1 %cmp152, label %land.lhs.true, label %land.end.181

land.lhs.true:                                    ; preds = %cond.true
  %106 = load i64, i64* %mtx, align 8
  %107 = load i64, i64* %xmax, align 8
  %cmp154 = icmp sle i64 %106, %107
  br i1 %cmp154, label %land.rhs, label %land.end.181

cond.false:                                       ; preds = %if.end.148
  %108 = load i64, i64* %mtx, align 8
  %109 = load i64, i64* %xmin, align 8
  %cmp156 = icmp sge i64 %108, %109
  br i1 %cmp156, label %land.lhs.true.158, label %land.end.181

land.lhs.true.158:                                ; preds = %cond.false
  %110 = load i64, i64* %mtx, align 8
  %111 = load i64, i64* %mdx, align 8
  %add159 = add nsw i64 %110, %111
  %112 = load i64, i64* %xmax, align 8
  %cmp160 = icmp sle i64 %add159, %112
  br i1 %cmp160, label %land.rhs, label %land.end.181

land.rhs:                                         ; preds = %land.lhs.true.158, %land.lhs.true
  %113 = load i64, i64* %mdy, align 8
  %cmp162 = icmp slt i64 %113, 0
  br i1 %cmp162, label %cond.true.164, label %cond.false.171

cond.true.164:                                    ; preds = %land.rhs
  %114 = load i64, i64* %mty, align 8
  %115 = load i64, i64* %mdy, align 8
  %add165 = add nsw i64 %114, %115
  %116 = load i64, i64* %ymin, align 8
  %cmp166 = icmp sge i64 %add165, %116
  br i1 %cmp166, label %land.rhs.168, label %land.end

land.rhs.168:                                     ; preds = %cond.true.164
  %117 = load i64, i64* %mty, align 8
  %118 = load i64, i64* %ymax, align 8
  %cmp169 = icmp sle i64 %117, %118
  br label %land.end

land.end:                                         ; preds = %land.rhs.168, %cond.true.164
  %119 = phi i1 [ false, %cond.true.164 ], [ %cmp169, %land.rhs.168 ]
  %land.ext = zext i1 %119 to i32
  br label %cond.end

cond.false.171:                                   ; preds = %land.rhs
  %120 = load i64, i64* %mty, align 8
  %121 = load i64, i64* %ymin, align 8
  %cmp172 = icmp sge i64 %120, %121
  br i1 %cmp172, label %land.rhs.174, label %land.end.178

land.rhs.174:                                     ; preds = %cond.false.171
  %122 = load i64, i64* %mty, align 8
  %123 = load i64, i64* %mdy, align 8
  %add175 = add nsw i64 %122, %123
  %124 = load i64, i64* %ymax, align 8
  %cmp176 = icmp sle i64 %add175, %124
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.174, %cond.false.171
  %125 = phi i1 [ false, %cond.false.171 ], [ %cmp176, %land.rhs.174 ]
  %land.ext179 = zext i1 %125 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end.178, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %land.ext179, %land.end.178 ]
  %tobool180 = icmp ne i32 %cond, 0
  br label %land.end.181

land.end.181:                                     ; preds = %cond.end, %land.lhs.true.158, %cond.false, %land.lhs.true, %cond.true
  %126 = phi i1 [ false, %land.lhs.true.158 ], [ false, %cond.false ], [ false, %land.lhs.true ], [ false, %cond.true ], [ %tobool180, %cond.end ]
  %land.ext182 = zext i1 %126 to i32
  %127 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %never_clip = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %127, i32 0, i32 15
  store i32 %land.ext182, i32* %never_clip, align 4
  %128 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %never_clip183 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %128, i32 0, i32 15
  %129 = load i32, i32* %never_clip183, align 4
  %tobool184 = icmp ne i32 %129, 0
  br i1 %tobool184, label %lor.lhs.false.185, label %lor.end

lor.lhs.false.185:                                ; preds = %land.end.181
  %130 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %skewed186 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %130, i32 0, i32 16
  %131 = load i32, i32* %skewed186, align 4
  %tobool187 = icmp ne i32 %131, 0
  br i1 %tobool187, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.185
  %132 = load i64, i64* %color0.addr, align 8
  %cmp188 = icmp eq i64 %132, -1
  br i1 %cmp188, label %land.rhs.193, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %lor.rhs
  %133 = load i64, i64* %color1.addr, align 8
  %cmp191 = icmp eq i64 %133, -1
  br i1 %cmp191, label %land.rhs.193, label %land.end.199

land.rhs.193:                                     ; preds = %lor.lhs.false.190, %lor.rhs
  %134 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %134, i32 0, i32 14
  %135 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %halftone_level194 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %135, i32 0, i32 2
  %136 = load i32, i32* %halftone_level194, align 4
  %cmp195 = icmp eq i32 %136, 0
  %lnot197 = xor i1 %cmp195, true
  br label %land.end.199

land.end.199:                                     ; preds = %land.rhs.193, %lor.lhs.false.190
  %137 = phi i1 [ false, %lor.lhs.false.190 ], [ %lnot197, %land.rhs.193 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.199, %lor.lhs.false.185, %land.end.181
  %138 = phi i1 [ true, %lor.lhs.false.185 ], [ true, %land.end.181 ], [ %137, %land.end.199 ]
  %lor.ext = zext i1 %138 to i32
  %139 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %slow_loop = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %139, i32 0, i32 17
  store i32 %lor.ext, i32* %slow_loop, align 4
  %140 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %140, i32 0, i32 20
  %141 = load i8, i8* %in_charpath, align 1
  %conv201 = zext i8 %141 to i32
  %tobool202 = icmp ne i32 %conv201, 0
  br i1 %tobool202, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %lor.end
  br label %cond.end.230

cond.false.204:                                   ; preds = %lor.end
  %142 = load i32, i32* %spp.addr, align 4
  %cmp205 = icmp sgt i32 %142, 1
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %cond.false.204
  br label %cond.end.228

cond.false.208:                                   ; preds = %cond.false.204
  %143 = load i32, i32* %log2_bps.addr, align 4
  %cmp209 = icmp eq i32 %143, 0
  br i1 %cmp209, label %land.lhs.true.211, label %land.end.225

land.lhs.true.211:                                ; preds = %cond.false.208
  %144 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %slow_loop212 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %144, i32 0, i32 17
  %145 = load i32, i32* %slow_loop212, align 4
  %tobool213 = icmp ne i32 %145, 0
  br i1 %tobool213, label %land.end.225, label %land.rhs.214

land.rhs.214:                                     ; preds = %land.lhs.true.211
  %146 = load i64, i64* %mtx, align 8
  %147 = load i32, i32* %width.addr, align 4
  %conv215 = sext i32 %147 to i64
  %148 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxx216 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %148, i32 0, i32 5
  %149 = load i64, i64* %fxx216, align 8
  %mul217 = mul nsw i64 %conv215, %149
  %add218 = add nsw i64 %146, %mul217
  %add219 = add nsw i64 %add218, 2048
  %shr220 = ashr i64 %add219, 12
  %150 = load i64, i64* %mtx, align 8
  %shr221 = ashr i64 %150, 12
  %sub = sub nsw i64 %shr220, %shr221
  %151 = load i32, i32* %width.addr, align 4
  %conv222 = sext i32 %151 to i64
  %cmp223 = icmp eq i64 %sub, %conv222
  br label %land.end.225

land.end.225:                                     ; preds = %land.rhs.214, %land.lhs.true.211, %cond.false.208
  %152 = phi i1 [ false, %land.lhs.true.211 ], [ false, %cond.false.208 ], [ %cmp223, %land.rhs.214 ]
  %cond227 = select i1 %152, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* @image_render_direct, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* @image_render_mono
  br label %cond.end.228

cond.end.228:                                     ; preds = %land.end.225, %cond.true.207
  %cond229 = phi i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* [ @image_render_color, %cond.true.207 ], [ %cond227, %land.end.225 ]
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.end.228, %cond.true.203
  %cond231 = phi i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* [ @image_render_skip, %cond.true.203 ], [ %cond229, %cond.end.228 ]
  %153 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %render = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %153, i32 0, i32 10
  store i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* %cond231, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)** %render, align 8
  %154 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %render232 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %154, i32 0, i32 10
  %155 = load i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)** %render232, align 8
  %cmp233 = icmp eq i32 (%struct.gs_image_enum_s*, i8*, i32, i32)* %155, @image_render_direct
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %cond.end.230
  %156 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %unpack = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %156, i32 0, i32 9
  store void (%struct.gs_image_enum_s*, i8*, i8*, i32)* @image_unpack_3, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %unpack, align 8
  br label %if.end.247

if.else.236:                                      ; preds = %cond.end.230
  %157 = load i32, i32* %spread.addr, align 4
  %cmp237 = icmp ne i32 %157, 1
  br i1 %cmp237, label %if.then.239, label %if.else.242

if.then.239:                                      ; preds = %if.else.236
  %158 = load i32, i32* %log2_bps.addr, align 4
  %idxprom = sext i32 %158 to i64
  %arrayidx240 = getelementptr inbounds [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*], [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*]* @image_init.spread_procs, i32 0, i64 %idxprom
  %159 = load void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %arrayidx240, align 8
  %160 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %unpack241 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %160, i32 0, i32 9
  store void (%struct.gs_image_enum_s*, i8*, i8*, i32)* %159, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %unpack241, align 8
  br label %if.end.246

if.else.242:                                      ; preds = %if.else.236
  %161 = load i32, i32* %log2_bps.addr, align 4
  %idxprom243 = sext i32 %161 to i64
  %arrayidx244 = getelementptr inbounds [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*], [4 x void (%struct.gs_image_enum_s*, i8*, i8*, i32)*]* @image_init.procs, i32 0, i64 %idxprom243
  %162 = load void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %arrayidx244, align 8
  %163 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %unpack245 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %163, i32 0, i32 9
  store void (%struct.gs_image_enum_s*, i8*, i8*, i32)* %162, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %unpack245, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.242, %if.then.239
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.235
  %164 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %164, i32 0, i32 19
  store i32 0, i32* %plane_index, align 4
  %165 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %byte_in_row = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %165, i32 0, i32 21
  store i32 0, i32* %byte_in_row, align 4
  %166 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %y248 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %166, i32 0, i32 24
  store i32 0, i32* %y248, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.247, %if.then.13, %if.then.9, %if.then.3, %if.then
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind uwtable
define i32 @gs_imagemask_init(%struct.gs_image_enum_s* %penum, %struct.gs_state_s* %pgs, i32 %width, i32 %height, i32 %invert, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %color0 = alloca i64, align 8
  %color1 = alloca i64, align 8
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %invert, i32* %invert.addr, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 13
  %1 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 14
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %1, %struct.gx_device_color_s* %3, %struct.gs_state_s* %4)
  %5 = load i32, i32* %invert.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* %color0, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 14
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color1, align 8
  %color12 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 0
  %8 = load i64, i64* %color12, align 8
  store i64 %8, i64* %color1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %dev_color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 14
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color3, align 8
  %color14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 0
  %11 = load i64, i64* %color14, align 8
  store i64 %11, i64* %color0, align 8
  store i64 -1, i64* %color1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %height.addr, align 4
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %17 = load i64, i64* %color0, align 8
  %18 = load i64, i64* %color1, align 8
  %call5 = call i32 @image_init(%struct.gs_image_enum_s* %12, i32 %13, i32 %14, i32 0, i32 1, i32 1, %struct.gs_matrix_s* %15, %struct.gs_state_s* %16, i64 %17, i64 %18)
  ret i32 %call5
}

declare i32 @gx_color_render(...) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i8* @gs_malloc(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @image_unpack_0(%struct.gs_image_enum_s* %penum, i8* %bptr, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bptr.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %bufp = alloca i32*, align 8
  %left = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bptr, i8** %bptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load i8*, i8** %bptr.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %bufp, align 8
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %shr = lshr i32 %6, 4
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @map_4_to_32, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %bufp, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr1, i32** %bufp, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %b, align 4
  %and = and i32 %9, 15
  %idxprom2 = zext i32 %and to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* @map_4_to_32, i32 0, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32*, i32** %bufp, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr4, i32** %bufp, align 8
  store i32 %10, i32* %11, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_1(%struct.gs_image_enum_s* %penum, i8* %bptr, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bptr.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %left = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bptr, i8** %bptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load i8*, i8** %bptr.addr, align 8
  %1 = bitcast i8* %0 to i16*
  store i16* %1, i16** %bufp, align 8
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %shr = lshr i32 %6, 4
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %8 = load i16*, i16** %bufp, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr1, i16** %bufp, align 8
  store i16 %7, i16* %8, align 2
  %9 = load i32, i32* %b, align 4
  %and = and i32 %9, 15
  %idxprom2 = zext i32 %and to i64
  %arrayidx3 = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i32 0, i64 %idxprom2
  %10 = load i16, i16* %arrayidx3, align 2
  %11 = load i16*, i16** %bufp, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr4, i16** %bufp, align 8
  store i16 %10, i16* %11, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_2(%struct.gs_image_enum_s* %penum, i8* %bufp, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bufp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %spread = alloca i32, align 4
  %left = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 4
  %1 = load i32, i32* %spread1, align 4
  store i32 %1, i32* %spread, align 4
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %and = and i32 %6, 240
  %7 = load i32, i32* %b, align 4
  %shr = lshr i32 %7, 4
  %add = add i32 %and, %shr
  %conv2 = trunc i32 %add to i8
  %8 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv2, i8* %8, align 1
  %9 = load i32, i32* %spread, align 4
  %10 = load i8*, i8** %bufp.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %bufp.addr, align 8
  %11 = load i32, i32* %b, align 4
  %and3 = and i32 %11, 15
  store i32 %and3, i32* %b, align 4
  %12 = load i32, i32* %b, align 4
  %shl = shl i32 %12, 4
  %13 = load i32, i32* %b, align 4
  %add4 = add i32 %shl, %13
  %conv5 = trunc i32 %add4 to i8
  %14 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv5, i8* %14, align 1
  %15 = load i32, i32* %spread, align 4
  %16 = load i8*, i8** %bufp.addr, align 8
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 %idx.ext6
  store i8* %add.ptr7, i8** %bufp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_3(%struct.gs_image_enum_s* %penum, i8* %bufp, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bufp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8*, i8** %bufp.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %bufp.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i32, i32* %dsize.addr, align 4
  %conv = zext i32 %4 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_0_spread(%struct.gs_image_enum_s* %penum, i8* %bufp, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bufp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %spread = alloca i32, align 4
  %left = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 4
  %1 = load i32, i32* %spread1, align 4
  store i32 %1, i32* %spread, align 4
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %shr = lshr i32 %6, 7
  %sub = sub i32 0, %shr
  %conv2 = trunc i32 %sub to i8
  %7 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv2, i8* %7, align 1
  %8 = load i32, i32* %spread, align 4
  %9 = load i8*, i8** %bufp.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %bufp.addr, align 8
  %10 = load i32, i32* %b, align 4
  %shr3 = lshr i32 %10, 6
  %and = and i32 %shr3, 1
  %sub4 = sub i32 0, %and
  %conv5 = trunc i32 %sub4 to i8
  %11 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv5, i8* %11, align 1
  %12 = load i32, i32* %spread, align 4
  %13 = load i8*, i8** %bufp.addr, align 8
  %idx.ext6 = sext i32 %12 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %idx.ext6
  store i8* %add.ptr7, i8** %bufp.addr, align 8
  %14 = load i32, i32* %b, align 4
  %shr8 = lshr i32 %14, 5
  %and9 = and i32 %shr8, 1
  %sub10 = sub i32 0, %and9
  %conv11 = trunc i32 %sub10 to i8
  %15 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv11, i8* %15, align 1
  %16 = load i32, i32* %spread, align 4
  %17 = load i8*, i8** %bufp.addr, align 8
  %idx.ext12 = sext i32 %16 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %idx.ext12
  store i8* %add.ptr13, i8** %bufp.addr, align 8
  %18 = load i32, i32* %b, align 4
  %shr14 = lshr i32 %18, 4
  %and15 = and i32 %shr14, 1
  %sub16 = sub i32 0, %and15
  %conv17 = trunc i32 %sub16 to i8
  %19 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv17, i8* %19, align 1
  %20 = load i32, i32* %spread, align 4
  %21 = load i8*, i8** %bufp.addr, align 8
  %idx.ext18 = sext i32 %20 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %21, i64 %idx.ext18
  store i8* %add.ptr19, i8** %bufp.addr, align 8
  %22 = load i32, i32* %b, align 4
  %shr20 = lshr i32 %22, 3
  %and21 = and i32 %shr20, 1
  %sub22 = sub i32 0, %and21
  %conv23 = trunc i32 %sub22 to i8
  %23 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv23, i8* %23, align 1
  %24 = load i32, i32* %spread, align 4
  %25 = load i8*, i8** %bufp.addr, align 8
  %idx.ext24 = sext i32 %24 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %25, i64 %idx.ext24
  store i8* %add.ptr25, i8** %bufp.addr, align 8
  %26 = load i32, i32* %b, align 4
  %shr26 = lshr i32 %26, 2
  %and27 = and i32 %shr26, 1
  %sub28 = sub i32 0, %and27
  %conv29 = trunc i32 %sub28 to i8
  %27 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv29, i8* %27, align 1
  %28 = load i32, i32* %spread, align 4
  %29 = load i8*, i8** %bufp.addr, align 8
  %idx.ext30 = sext i32 %28 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %29, i64 %idx.ext30
  store i8* %add.ptr31, i8** %bufp.addr, align 8
  %30 = load i32, i32* %b, align 4
  %shr32 = lshr i32 %30, 1
  %and33 = and i32 %shr32, 1
  %sub34 = sub i32 0, %and33
  %conv35 = trunc i32 %sub34 to i8
  %31 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv35, i8* %31, align 1
  %32 = load i32, i32* %spread, align 4
  %33 = load i8*, i8** %bufp.addr, align 8
  %idx.ext36 = sext i32 %32 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %33, i64 %idx.ext36
  store i8* %add.ptr37, i8** %bufp.addr, align 8
  %34 = load i32, i32* %b, align 4
  %and38 = and i32 %34, 1
  %sub39 = sub i32 0, %and38
  %conv40 = trunc i32 %sub39 to i8
  %35 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv40, i8* %35, align 1
  %36 = load i32, i32* %spread, align 4
  %37 = load i8*, i8** %bufp.addr, align 8
  %idx.ext41 = sext i32 %36 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %37, i64 %idx.ext41
  store i8* %add.ptr42, i8** %bufp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_1_spread(%struct.gs_image_enum_s* %penum, i8* %bufp, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bufp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %spread = alloca i32, align 4
  %left = alloca i32, align 4
  %b = alloca i32, align 4
  %b2 = alloca i16, align 2
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 4
  %1 = load i32, i32* %spread1, align 4
  store i32 %1, i32* %spread, align 4
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %shr = lshr i32 %6, 4
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  store i16 %7, i16* %b2, align 2
  %8 = load i16, i16* %b2, align 2
  %conv2 = zext i16 %8 to i32
  %shr3 = ashr i32 %conv2, 8
  %conv4 = trunc i32 %shr3 to i8
  %9 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv4, i8* %9, align 1
  %10 = load i32, i32* %spread, align 4
  %11 = load i8*, i8** %bufp.addr, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %bufp.addr, align 8
  %12 = load i16, i16* %b2, align 2
  %conv5 = trunc i16 %12 to i8
  %13 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv5, i8* %13, align 1
  %14 = load i32, i32* %spread, align 4
  %15 = load i8*, i8** %bufp.addr, align 8
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.ext6
  store i8* %add.ptr7, i8** %bufp.addr, align 8
  %16 = load i32, i32* %b, align 4
  %and = and i32 %16, 15
  %idxprom8 = zext i32 %and to i64
  %arrayidx9 = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i32 0, i64 %idxprom8
  %17 = load i16, i16* %arrayidx9, align 2
  store i16 %17, i16* %b2, align 2
  %18 = load i16, i16* %b2, align 2
  %conv10 = zext i16 %18 to i32
  %shr11 = ashr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i8
  %19 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv12, i8* %19, align 1
  %20 = load i32, i32* %spread, align 4
  %21 = load i8*, i8** %bufp.addr, align 8
  %idx.ext13 = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 %idx.ext13
  store i8* %add.ptr14, i8** %bufp.addr, align 8
  %22 = load i16, i16* %b2, align 2
  %conv15 = trunc i16 %22 to i8
  %23 = load i8*, i8** %bufp.addr, align 8
  store i8 %conv15, i8* %23, align 1
  %24 = load i32, i32* %spread, align 4
  %25 = load i8*, i8** %bufp.addr, align 8
  %idx.ext16 = sext i32 %24 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext16
  store i8* %add.ptr17, i8** %bufp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @image_unpack_3_spread(%struct.gs_image_enum_s* %penum, i8* %bufp, i8* %data, i32 %dsize) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %bufp.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %spread = alloca i32, align 4
  %left = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 4
  %1 = load i32, i32* %spread1, align 4
  store i32 %1, i32* %spread, align 4
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %left, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %left, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %bufp.addr, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i32, i32* %spread, align 4
  %8 = load i8*, i8** %bufp.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %bufp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @image_render_skip(%struct.gs_image_enum_s* %penum, i8* %data, i32 %w, i32 %h) #0 {
entry:
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %data.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i32, i32* %h.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @image_render_color(%struct.gs_image_enum_s* %penum, i8* %buffer, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %dxx = alloca i64, align 8
  %dxy = alloca i64, align 8
  %dyx = alloca i64, align 8
  %dyy = alloca i64, align 8
  %skew = alloca i32, align 4
  %xt = alloca i64, align 8
  %ytf = alloca i64, align 8
  %yt = alloca i32, align 4
  %idy = alloca i32, align 4
  %iht = alloca i32, align 4
  %rcolor = alloca %struct.gs_color_s, align 2
  %devc1 = alloca %struct.gx_device_color_s, align 8
  %devc2 = alloca %struct.gx_device_color_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %pdevc_next = alloca %struct.gx_device_color_s*, align 8
  %spp = alloca i32, align 4
  %xl = alloca i64, align 8
  %psrc = alloca i8*, align 8
  %xrun = alloca i64, align 8
  %yrun = alloca i64, align 8
  %run = alloca %union.color_sample, align 8
  %next = alloca %union.color_sample, align 8
  %bufend = alloca i8*, align 8
  %yn = alloca i64, align 8
  %black = alloca i32, align 4
  %ptemp = alloca %struct.gx_device_color_s*, align 8
  %ipath = alloca %struct.gx_path_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 11
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 5
  %3 = load i64, i64* %fxx, align 8
  store i64 %3, i64* %dxx, align 8
  %4 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %4, i32 0, i32 6
  %5 = load i64, i64* %fxy, align 8
  store i64 %5, i64* %dxy, align 8
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %6, i32 0, i32 7
  %7 = load i64, i64* %fyx, align 8
  store i64 %7, i64* %dyx, align 8
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 8
  %9 = load i64, i64* %fyy, align 8
  store i64 %9, i64* %dyy, align 8
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %skewed = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 16
  %11 = load i32, i32* %skewed, align 4
  store i32 %11, i32* %skew, align 4
  %12 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %xcur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %12, i32 0, i32 22
  %13 = load i64, i64* %xcur, align 8
  store i64 %13, i64* %xt, align 8
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %ycur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %14, i32 0, i32 23
  %15 = load i64, i64* %ycur, align 8
  store i64 %15, i64* %ytf, align 8
  store %struct.gx_device_color_s* %devc1, %struct.gx_device_color_s** %pdevc, align 8
  store %struct.gx_device_color_s* %devc2, %struct.gx_device_color_s** %pdevc_next, align 8
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spp2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 3
  %17 = load i32, i32* %spp2, align 4
  store i32 %17, i32* %spp, align 4
  %18 = load i64, i64* %xt, align 8
  store i64 %18, i64* %xl, align 8
  %19 = load i8*, i8** %buffer.addr, align 8
  store i8* %19, i8** %psrc, align 8
  %20 = load i64, i64* %xt, align 8
  store i64 %20, i64* %xrun, align 8
  %21 = load i64, i64* %ytf, align 8
  store i64 %21, i64* %yrun, align 8
  %22 = load i8*, i8** %buffer.addr, align 8
  %23 = load i32, i32* %w.addr, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %bufend, align 8
  %24 = load i32, i32* %spp, align 4
  %sub = sub nsw i32 0, %24
  %idxprom = sext i32 %sub to i64
  %25 = load i8*, i8** %bufend, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %26 to i32
  %neg = xor i32 %conv, -1
  %conv3 = trunc i32 %neg to i8
  %27 = load i8*, i8** %bufend, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %conv3, i8* %arrayidx4, align 1
  %28 = load i32, i32* %skew, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %entry
  %29 = load i64, i64* %ytf, align 8
  %30 = load i64, i64* %dyy, align 8
  %add = add nsw i64 %29, %30
  store i64 %add, i64* %yn, align 8
  %31 = load i64, i64* %ytf, align 8
  %add5 = add nsw i64 %31, 2048
  %shr = ashr i64 %add5, 12
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, i32* %yt, align 4
  %32 = load i64, i64* %yn, align 8
  %add7 = add nsw i64 %32, 2048
  %shr8 = ashr i64 %add7, 12
  %conv9 = trunc i64 %shr8 to i32
  %33 = load i32, i32* %yt, align 4
  %sub10 = sub nsw i32 %conv9, %33
  store i32 %sub10, i32* %iht, align 4
  %34 = load i32, i32* %iht, align 4
  %cmp = icmp sge i32 %34, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %idy, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %35 = load i32, i32* %iht, align 4
  store i32 %35, i32* %idy, align 4
  %36 = load i32, i32* %iht, align 4
  %sub13 = sub nsw i32 0, %36
  store i32 %sub13, i32* %iht, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %all = bitcast %union.color_sample* %run to i64*
  store i64 0, i64* %all, align 8
  %all15 = bitcast %union.color_sample* %next to i64*
  store i64 0, i64* %all15, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 2
  store i16 0, i16* %blue, align 2
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 1
  store i16 0, i16* %green, align 2
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 0
  store i16 0, i16* %red, align 2
  %call = call i32 (%struct.gs_color_s*, ...) bitcast (i32 (...)* @gx_color_from_rgb to i32 (%struct.gs_color_s*, ...)*)(%struct.gs_color_s* %rcolor)
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call16 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %rcolor, %struct.gx_device_color_s* %37, %struct.gs_state_s* %38)
  br label %while.cond

while.cond:                                       ; preds = %if.end.141, %if.end.14
  %39 = load i8*, i8** %psrc, align 8
  %40 = load i8*, i8** %bufend, align 8
  %cmp17 = icmp ule i8* %39, %40
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %spp, align 4
  %cmp19 = icmp eq i32 %41, 4
  br i1 %cmp19, label %if.then.21, label %if.else.44

if.then.21:                                       ; preds = %while.body
  %42 = load i8*, i8** %psrc, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %43 to i32
  %sub24 = sub nsw i32 255, %conv23
  store i32 %sub24, i32* %black, align 4
  %44 = load i8*, i8** %psrc, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %45 to i32
  %sub27 = sub nsw i32 255, %conv26
  %46 = load i32, i32* %black, align 4
  %mul = mul i32 %sub27, %46
  %div = udiv i32 %mul, 255
  %conv28 = trunc i32 %div to i8
  %v = bitcast %union.color_sample* %next to %struct.anon*
  %r = getelementptr inbounds %struct.anon, %struct.anon* %v, i32 0, i32 0
  store i8 %conv28, i8* %r, align 1
  %47 = load i8*, i8** %psrc, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %48 to i32
  %sub31 = sub nsw i32 255, %conv30
  %49 = load i32, i32* %black, align 4
  %mul32 = mul i32 %sub31, %49
  %div33 = udiv i32 %mul32, 255
  %conv34 = trunc i32 %div33 to i8
  %v35 = bitcast %union.color_sample* %next to %struct.anon*
  %g = getelementptr inbounds %struct.anon, %struct.anon* %v35, i32 0, i32 1
  store i8 %conv34, i8* %g, align 1
  %50 = load i8*, i8** %psrc, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %51 to i32
  %sub38 = sub nsw i32 255, %conv37
  %52 = load i32, i32* %black, align 4
  %mul39 = mul i32 %sub38, %52
  %div40 = udiv i32 %mul39, 255
  %conv41 = trunc i32 %div40 to i8
  %v42 = bitcast %union.color_sample* %next to %struct.anon*
  %b = getelementptr inbounds %struct.anon, %struct.anon* %v42, i32 0, i32 2
  store i8 %conv41, i8* %b, align 1
  %53 = load i8*, i8** %psrc, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %add.ptr43, i8** %psrc, align 8
  br label %if.end.55

if.else.44:                                       ; preds = %while.body
  %54 = load i8*, i8** %psrc, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx45, align 1
  %v46 = bitcast %union.color_sample* %next to %struct.anon*
  %r47 = getelementptr inbounds %struct.anon, %struct.anon* %v46, i32 0, i32 0
  store i8 %55, i8* %r47, align 1
  %56 = load i8*, i8** %psrc, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx48, align 1
  %v49 = bitcast %union.color_sample* %next to %struct.anon*
  %g50 = getelementptr inbounds %struct.anon, %struct.anon* %v49, i32 0, i32 1
  store i8 %57, i8* %g50, align 1
  %58 = load i8*, i8** %psrc, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx51, align 1
  %v52 = bitcast %union.color_sample* %next to %struct.anon*
  %b53 = getelementptr inbounds %struct.anon, %struct.anon* %v52, i32 0, i32 2
  store i8 %59, i8* %b53, align 1
  %60 = load i8*, i8** %psrc, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %add.ptr54, i8** %psrc, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.44, %if.then.21
  %all56 = bitcast %union.color_sample* %next to i64*
  %61 = load i64, i64* %all56, align 8
  %all57 = bitcast %union.color_sample* %run to i64*
  %62 = load i64, i64* %all57, align 8
  %cmp58 = icmp ne i64 %61, %62
  br i1 %cmp58, label %if.then.60, label %if.end.141

if.then.60:                                       ; preds = %if.end.55
  %v61 = bitcast %union.color_sample* %next to %struct.anon*
  %r62 = getelementptr inbounds %struct.anon, %struct.anon* %v61, i32 0, i32 0
  %63 = load i8, i8* %r62, align 1
  %conv63 = zext i8 %63 to i16
  %conv64 = zext i16 %conv63 to i32
  %shl = shl i32 %conv64, 8
  %v65 = bitcast %union.color_sample* %next to %struct.anon*
  %r66 = getelementptr inbounds %struct.anon, %struct.anon* %v65, i32 0, i32 0
  %64 = load i8, i8* %r66, align 1
  %conv67 = zext i8 %64 to i32
  %add68 = add nsw i32 %shl, %conv67
  %conv69 = trunc i32 %add68 to i16
  %red70 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 0
  store i16 %conv69, i16* %red70, align 2
  %v71 = bitcast %union.color_sample* %next to %struct.anon*
  %g72 = getelementptr inbounds %struct.anon, %struct.anon* %v71, i32 0, i32 1
  %65 = load i8, i8* %g72, align 1
  %conv73 = zext i8 %65 to i16
  %conv74 = zext i16 %conv73 to i32
  %shl75 = shl i32 %conv74, 8
  %v76 = bitcast %union.color_sample* %next to %struct.anon*
  %g77 = getelementptr inbounds %struct.anon, %struct.anon* %v76, i32 0, i32 1
  %66 = load i8, i8* %g77, align 1
  %conv78 = zext i8 %66 to i32
  %add79 = add nsw i32 %shl75, %conv78
  %conv80 = trunc i32 %add79 to i16
  %green81 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 1
  store i16 %conv80, i16* %green81, align 2
  %v82 = bitcast %union.color_sample* %next to %struct.anon*
  %b83 = getelementptr inbounds %struct.anon, %struct.anon* %v82, i32 0, i32 2
  %67 = load i8, i8* %b83, align 1
  %conv84 = zext i8 %67 to i16
  %conv85 = zext i16 %conv84 to i32
  %shl86 = shl i32 %conv85, 8
  %v87 = bitcast %union.color_sample* %next to %struct.anon*
  %b88 = getelementptr inbounds %struct.anon, %struct.anon* %v87, i32 0, i32 2
  %68 = load i8, i8* %b88, align 1
  %conv89 = zext i8 %68 to i32
  %add90 = add nsw i32 %shl86, %conv89
  %conv91 = trunc i32 %add90 to i16
  %blue92 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 2
  store i16 %conv91, i16* %blue92, align 2
  %call93 = call i32 (%struct.gs_color_s*, ...) bitcast (i32 (...)* @gx_color_from_rgb to i32 (%struct.gs_color_s*, ...)*)(%struct.gs_color_s* %rcolor)
  %69 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call94 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %rcolor, %struct.gx_device_color_s* %69, %struct.gs_state_s* %70)
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 0
  %71 = load i64, i64* %color1, align 8
  %color195 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 0
  %72 = load i64, i64* %color195, align 8
  %cmp96 = icmp ne i64 %71, %72
  br i1 %cmp96, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.60
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 2
  %73 = load i32, i32* %halftone_level, align 4
  %halftone_level98 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 2
  %74 = load i32, i32* %halftone_level98, align 4
  %cmp99 = icmp ne i32 %73, %74
  br i1 %cmp99, label %if.then.110, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false
  %halftone_level102 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 2
  %75 = load i32, i32* %halftone_level102, align 4
  %tobool103 = icmp ne i32 %75, 0
  br i1 %tobool103, label %land.lhs.true, label %lor.lhs.false.107

land.lhs.true:                                    ; preds = %lor.lhs.false.101
  %color2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc1, i32 0, i32 1
  %76 = load i64, i64* %color2, align 8
  %color2104 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc2, i32 0, i32 1
  %77 = load i64, i64* %color2104, align 8
  %cmp105 = icmp ne i64 %76, %77
  br i1 %cmp105, label %if.then.110, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true, %lor.lhs.false.101
  %78 = load i8*, i8** %psrc, align 8
  %79 = load i8*, i8** %bufend, align 8
  %cmp108 = icmp ugt i8* %78, %79
  br i1 %cmp108, label %if.then.110, label %if.end.138

if.then.110:                                      ; preds = %lor.lhs.false.107, %land.lhs.true, %lor.lhs.false, %if.then.60
  %80 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %slow_loop = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %80, i32 0, i32 17
  %81 = load i32, i32* %slow_loop, align 4
  %tobool111 = icmp ne i32 %81, 0
  br i1 %tobool111, label %if.then.112, label %if.else.121

if.then.112:                                      ; preds = %if.then.110
  store %struct.gx_path_s* %ipath, %struct.gx_path_s** %ppath, align 8
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %82, %struct.gs_memory_procs* %memory_procs)
  %84 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %85 = load i64, i64* %xrun, align 8
  %86 = load i64, i64* %yrun, align 8
  %87 = load i64, i64* %xl, align 8
  %88 = load i64, i64* %ytf, align 8
  %89 = load i64, i64* %xl, align 8
  %90 = load i64, i64* %dyx, align 8
  %add113 = add nsw i64 %89, %90
  %91 = load i64, i64* %ytf, align 8
  %92 = load i64, i64* %dyy, align 8
  %add114 = add nsw i64 %91, %92
  %call115 = call i32 @gx_path_add_pgram(%struct.gx_path_s* %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %add113, i64 %add114)
  store i32 %call115, i32* %code, align 4
  %93 = load i32, i32* %code, align 4
  %cmp116 = icmp slt i32 %93, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.112
  %94 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  call void @gx_path_release(%struct.gx_path_s* %94)
  %95 = load i32, i32* %code, align 4
  store i32 %95, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.112
  %96 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %97 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call120 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %96, %struct.gx_device_color_s* %97, %struct.gs_state_s* %98, i32 -1, i64 0)
  %99 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  call void @gx_path_release(%struct.gx_path_s* %99)
  br label %if.end.137

if.else.121:                                      ; preds = %if.then.110
  %100 = load i64, i64* %xrun, align 8
  %add122 = add nsw i64 %100, 2048
  %shr123 = ashr i64 %add122, 12
  %conv124 = trunc i64 %shr123 to i32
  store i32 %conv124, i32* %xi, align 4
  %101 = load i64, i64* %xl, align 8
  %add125 = add nsw i64 %101, 2048
  %shr126 = ashr i64 %add125, 12
  %conv127 = trunc i64 %shr126 to i32
  %102 = load i32, i32* %xi, align 4
  %sub128 = sub nsw i32 %conv127, %102
  store i32 %sub128, i32* %wi, align 4
  %103 = load i32, i32* %wi, align 4
  %cmp129 = icmp slt i32 %103, 0
  br i1 %cmp129, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.else.121
  %104 = load i32, i32* %wi, align 4
  %105 = load i32, i32* %xi, align 4
  %add132 = add nsw i32 %105, %104
  store i32 %add132, i32* %xi, align 4
  %106 = load i32, i32* %wi, align 4
  %sub133 = sub nsw i32 0, %106
  store i32 %sub133, i32* %wi, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.else.121
  %107 = load i32, i32* %xi, align 4
  %108 = load i32, i32* %yt, align 4
  %109 = load i32, i32* %idy, align 4
  %add135 = add nsw i32 %108, %109
  %110 = load i32, i32* %wi, align 4
  %111 = load i32, i32* %iht, align 4
  %112 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call136 = call i32 (i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gz_fill_rectangle to i32 (i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(i32 %107, i32 %add135, i32 %110, i32 %111, %struct.gx_device_color_s* %112, %struct.gs_state_s* %113)
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.134, %if.end.119
  %114 = load i64, i64* %xl, align 8
  store i64 %114, i64* %xrun, align 8
  %115 = load i64, i64* %ytf, align 8
  store i64 %115, i64* %yrun, align 8
  %116 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  store %struct.gx_device_color_s* %116, %struct.gx_device_color_s** %ptemp, align 8
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc_next, align 8
  store %struct.gx_device_color_s* %117, %struct.gx_device_color_s** %pdevc, align 8
  %118 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %ptemp, align 8
  store %struct.gx_device_color_s* %118, %struct.gx_device_color_s** %pdevc_next, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %lor.lhs.false.107
  %all139 = bitcast %union.color_sample* %next to i64*
  %119 = load i64, i64* %all139, align 8
  %all140 = bitcast %union.color_sample* %run to i64*
  store i64 %119, i64* %all140, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.138, %if.end.55
  %120 = load i64, i64* %dxx, align 8
  %121 = load i64, i64* %xl, align 8
  %add142 = add nsw i64 %121, %120
  store i64 %add142, i64* %xl, align 8
  %122 = load i64, i64* %dxy, align 8
  %123 = load i64, i64* %ytf, align 8
  %add143 = add nsw i64 %123, %122
  store i64 %add143, i64* %ytf, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.118
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define i32 @image_render_direct(%struct.gs_image_enum_s* %penum, i8* %data, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %data.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %xt = alloca i64, align 8
  %yt = alloca i64, align 8
  %yn = alloca i64, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %ht = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, align 8
  %zero = alloca i64, align 8
  %one = alloca i64, align 8
  %dy = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %xcur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 22
  %1 = load i64, i64* %xcur, align 8
  store i64 %1, i64* %xt, align 8
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %ycur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 23
  %3 = load i64, i64* %ycur, align 8
  store i64 %3, i64* %yt, align 8
  %4 = load i64, i64* %yt, align 8
  %5 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %5, i32 0, i32 8
  %6 = load i64, i64* %fyy, align 8
  %add = add nsw i64 %4, %6
  store i64 %add, i64* %yn, align 8
  %7 = load i64, i64* %xt, align 8
  %shr = ashr i64 %7, 12
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %ix, align 4
  %8 = load i64, i64* %yt, align 8
  %shr1 = ashr i64 %8, 12
  %conv2 = trunc i64 %shr1 to i32
  store i32 %conv2, i32* %iy, align 4
  %9 = load i64, i64* %yn, align 8
  %shr3 = ashr i64 %9, 12
  %conv4 = trunc i64 %shr3 to i32
  %10 = load i32, i32* %iy, align 4
  %sub = sub nsw i32 %conv4, %10
  store i32 %sub, i32* %ht, align 4
  %11 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %pgs = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %11, i32 0, i32 11
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 22
  %13 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %13, i32 0, i32 0
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %14, %struct.gx_device_s** %dev, align 8
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 1
  %16 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %16, i32 0, i32 9
  %17 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* %17, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc, align 8
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 25
  %arrayidx = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors, i32 0, i64 0
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx, i32 0, i32 0
  %19 = load i64, i64* %color1, align 8
  store i64 %19, i64* %zero, align 8
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors5 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %20, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors5, i32 0, i64 255
  %color17 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx6, i32 0, i32 0
  %21 = load i64, i64* %color17, align 8
  store i64 %21, i64* %one, align 8
  %22 = load i32, i32* %ht, align 4
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc, align 8
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %25 = load i8*, i8** %data.addr, align 8
  %26 = load i32, i32* %w.addr, align 4
  %add9 = add i32 %26, 7
  %shr10 = lshr i32 %add9, 3
  %27 = load i32, i32* %ix, align 4
  %28 = load i32, i32* %iy, align 4
  %29 = load i32, i32* %w.addr, align 4
  %30 = load i32, i32* %h.addr, align 4
  %31 = load i64, i64* %zero, align 8
  %32 = load i64, i64* %one, align 8
  %call = call i32 %23(%struct.gx_device_s* %24, i8* %25, i32 0, i32 %shr10, i32 %27, i32 %28, i32 %29, i32 %30, i64 %31, i64 %32)
  %33 = load i32, i32* %h.addr, align 4
  store i32 %33, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %34 = load i32, i32* %ht, align 4
  %cmp11 = icmp slt i32 %34, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %35 = load i32, i32* %ht, align 4
  %36 = load i32, i32* %iy, align 4
  %add14 = add nsw i32 %36, %35
  store i32 %add14, i32* %iy, align 4
  %37 = load i32, i32* %ht, align 4
  %sub15 = sub nsw i32 0, %37
  store i32 %sub15, i32* %ht, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  store i32 0, i32* %dy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load i32, i32* %dy, align 4
  %39 = load i32, i32* %ht, align 4
  %cmp16 = icmp slt i32 %38, %39
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc, align 8
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %42 = load i8*, i8** %data.addr, align 8
  %43 = load i32, i32* %w.addr, align 4
  %add18 = add i32 %43, 7
  %shr19 = lshr i32 %add18, 3
  %44 = load i32, i32* %ix, align 4
  %45 = load i32, i32* %iy, align 4
  %46 = load i32, i32* %dy, align 4
  %add20 = add nsw i32 %45, %46
  %47 = load i32, i32* %w.addr, align 4
  %48 = load i64, i64* %zero, align 8
  %49 = load i64, i64* %one, align 8
  %call21 = call i32 %40(%struct.gx_device_s* %41, i8* %42, i32 0, i32 %shr19, i32 %44, i32 %add20, i32 %47, i32 1, i64 %48, i64 %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %dy, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %dy, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define i32 @image_render_mono(%struct.gs_image_enum_s* %penum, i8* %buffer, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero = alloca i64, align 8
  %one = alloca i64, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %dxx = alloca i64, align 8
  %dxy = alloca i64, align 8
  %dyx = alloca i64, align 8
  %dyy = alloca i64, align 8
  %cbox = alloca %struct.gs_fixed_rect_s, align 8
  %skew = alloca i32, align 4
  %xt = alloca i64, align 8
  %ytf = alloca i64, align 8
  %yn = alloca i64, align 8
  %yt = alloca i32, align 4
  %yb = alloca i32, align 4
  %idy = alloca i32, align 4
  %iht = alloca i32, align 4
  %rcolor = alloca %struct.gs_color_s, align 2
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %xcnt = alloca i32, align 4
  %xl = alloca i64, align 8
  %psrc = alloca i8*, align 8
  %xrun = alloca i64, align 8
  %yrun = alloca i64, align 8
  %run = alloca i32, align 4
  %htrun = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %fill_proc = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %ipath = alloca %struct.gx_path_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %xlr = alloca i64, align 8
  %xrr = alloca i64, align 8
  %box = alloca %struct.gs_fixed_rect_s, align 8
  %rcx = alloca i64, align 8
  %xi = alloca i32, align 4
  %wi = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 25
  %arrayidx = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors, i32 0, i64 0
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx, i32 0, i32 0
  %1 = load i64, i64* %color1, align 8
  store i64 %1, i64* %zero, align 8
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 25
  %arrayidx2 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors1, i32 0, i64 255
  %color13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %arrayidx2, i32 0, i32 0
  %3 = load i64, i64* %color13, align 8
  store i64 %3, i64* %one, align 8
  %4 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %pgs4 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %4, i32 0, i32 11
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs4, align 8
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs, align 8
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %6, i32 0, i32 5
  %7 = load i64, i64* %fxx, align 8
  store i64 %7, i64* %dxx, align 8
  %8 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fxy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %8, i32 0, i32 6
  %9 = load i64, i64* %fxy, align 8
  store i64 %9, i64* %dxy, align 8
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 7
  %11 = load i64, i64* %fyx, align 8
  store i64 %11, i64* %dyx, align 8
  %12 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %12, i32 0, i32 8
  %13 = load i64, i64* %fyy, align 8
  store i64 %13, i64* %dyy, align 8
  %14 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %skewed = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %14, i32 0, i32 16
  %15 = load i32, i32* %skewed, align 4
  store i32 %15, i32* %skew, align 4
  %16 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %xcur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %16, i32 0, i32 22
  %17 = load i64, i64* %xcur, align 8
  store i64 %17, i64* %xt, align 8
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %ycur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 23
  %19 = load i64, i64* %ycur, align 8
  store i64 %19, i64* %ytf, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 14
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  store %struct.gx_device_color_s* %21, %struct.gx_device_color_s** %pdevc, align 8
  %22 = load i32, i32* %w.addr, align 4
  store i32 %22, i32* %xcnt, align 4
  %23 = load i64, i64* %xt, align 8
  store i64 %23, i64* %xl, align 8
  %24 = load i8*, i8** %buffer.addr, align 8
  store i8* %24, i8** %psrc, align 8
  %25 = load i64, i64* %xt, align 8
  store i64 %25, i64* %xrun, align 8
  %26 = load i64, i64* %ytf, align 8
  store i64 %26, i64* %yrun, align 8
  %27 = load i8*, i8** %psrc, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* %run, align 4
  store i32 -2, i32* %htrun, align 4
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 22
  %30 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %30, i32 0, i32 0
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %31, %struct.gx_device_s** %dev, align 8
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 1
  %33 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %33, i32 0, i32 7
  %34 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %34, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc, align 8
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 8
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %36, i32 0, i32 1
  %37 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  %38 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  %39 = load i32, i32* %skew, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.end.42, label %if.then

if.then:                                          ; preds = %entry
  %40 = load i64, i64* %ytf, align 8
  %41 = load i64, i64* %dyy, align 8
  %add = add nsw i64 %40, %41
  %add5 = add nsw i64 %add, 2048
  %and = and i64 %add5, -4096
  store i64 %and, i64* %yn, align 8
  %42 = load i64, i64* %ytf, align 8
  %add6 = add nsw i64 %42, 2048
  %and7 = and i64 %add6, -4096
  store i64 %and7, i64* %ytf, align 8
  %43 = load i64, i64* %ytf, align 8
  %shr = ashr i64 %43, 12
  %conv8 = trunc i64 %shr to i32
  store i32 %conv8, i32* %yt, align 4
  %44 = load i64, i64* %yn, align 8
  %shr9 = ashr i64 %44, 12
  %conv10 = trunc i64 %shr9 to i32
  store i32 %conv10, i32* %yb, align 4
  %45 = load i32, i32* %yb, align 4
  %46 = load i32, i32* %yt, align 4
  %sub = sub nsw i32 %45, %46
  store i32 %sub, i32* %iht, align 4
  %47 = load i32, i32* %iht, align 4
  %cmp = icmp sgt i32 %47, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %idy, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %48 = load i32, i32* %iht, align 4
  %cmp13 = icmp slt i32 %48, 0
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %49 = load i32, i32* %iht, align 4
  store i32 %49, i32* %idy, align 4
  %50 = load i32, i32* %iht, align 4
  %sub16 = sub nsw i32 0, %50
  store i32 %sub16, i32* %iht, align 4
  br label %if.end

if.else.17:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.12
  %51 = load i64, i64* %dyy, align 8
  %cmp19 = icmp sgt i64 %51, 0
  br i1 %cmp19, label %if.then.21, label %if.else.29

if.then.21:                                       ; preds = %if.end.18
  %52 = load i64, i64* %ytf, align 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %53 = load i64, i64* %y, align 8
  %cmp22 = icmp sge i64 %52, %53
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.21
  %54 = load i64, i64* %yn, align 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %55 = load i64, i64* %y24, align 8
  %cmp25 = icmp sle i64 %54, %55
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.21
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  br label %if.end.41

if.else.29:                                       ; preds = %if.end.18
  %56 = load i64, i64* %yn, align 8
  %q30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q30, i32 0, i32 1
  %57 = load i64, i64* %y31, align 8
  %cmp32 = icmp sge i64 %56, %57
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.else.29
  %58 = load i64, i64* %ytf, align 8
  %p35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p35, i32 0, i32 1
  %59 = load i64, i64* %y36, align 8
  %cmp37 = icmp sle i64 %58, %59
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.34, %if.else.29
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  %60 = load i32, i32* %w.addr, align 4
  %sub43 = sub i32 %60, 1
  %idxprom = zext i32 %sub43 to i64
  %61 = load i8*, i8** %buffer.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %61, i64 %idxprom
  %62 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %62 to i32
  %neg = xor i32 %conv45, -1
  %conv46 = trunc i32 %neg to i8
  %63 = load i32, i32* %w.addr, align 4
  %idxprom47 = zext i32 %63 to i64
  %64 = load i8*, i8** %buffer.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %64, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 5
  store i8 1, i8* %luminance_set, align 1
  %is_gray = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 4
  store i8 1, i8* %is_gray, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.253, %if.end.42
  %65 = load i32, i32* %xcnt, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %xcnt, align 4
  %cmp49 = icmp sge i32 %65, 0
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i8*, i8** %psrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8
  %67 = load i8, i8* %66, align 1
  %conv51 = zext i8 %67 to i32
  %68 = load i32, i32* %run, align 4
  %cmp52 = icmp ne i32 %conv51, %68
  br i1 %cmp52, label %if.then.54, label %if.end.253

if.then.54:                                       ; preds = %while.body
  %69 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %slow_loop = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %69, i32 0, i32 17
  %70 = load i32, i32* %slow_loop, align 4
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %if.then.56, label %if.else.199

if.then.56:                                       ; preds = %if.then.54
  store %struct.gx_path_s* %ipath, %struct.gx_path_s** %ppath, align 8
  %71 = load i32, i32* %run, align 4
  %72 = load i32, i32* %htrun, align 4
  %cmp57 = icmp ne i32 %71, %72
  br i1 %cmp57, label %if.then.59, label %if.end.90

if.then.59:                                       ; preds = %if.then.56
  %73 = load i32, i32* %run, align 4
  store i32 %73, i32* %htrun, align 4
  %74 = load i32, i32* %run, align 4
  %cmp60 = icmp eq i32 %74, 0
  br i1 %cmp60, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.then.59
  %75 = load i64, i64* %zero, align 8
  %cmp63 = icmp eq i64 %75, -1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  br label %trans

if.end.66:                                        ; preds = %if.then.62
  br label %if.end.76

if.else.67:                                       ; preds = %if.then.59
  %76 = load i32, i32* %run, align 4
  %cmp68 = icmp eq i32 %76, 255
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.else.67
  %77 = load i64, i64* %one, align 8
  %cmp71 = icmp eq i64 %77, -1
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.70
  br label %trans

if.end.74:                                        ; preds = %if.then.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.else.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.66
  %78 = load i32, i32* %run, align 4
  %idxprom77 = sext i32 %78 to i64
  %79 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors78 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %79, i32 0, i32 25
  %arrayidx79 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors78, i32 0, i64 %idxprom77
  store %struct.gx_device_color_s* %arrayidx79, %struct.gx_device_color_s** %pdevc, align 8
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 2
  %81 = load i32, i32* %halftone_level, align 4
  %cmp80 = icmp slt i32 %81, 0
  br i1 %cmp80, label %if.then.82, label %if.else.87

if.then.82:                                       ; preds = %if.end.76
  %82 = load i32, i32* %run, align 4
  %conv83 = trunc i32 %82 to i16
  %conv84 = zext i16 %conv83 to i32
  %shl = shl i32 %conv84, 8
  %83 = load i32, i32* %run, align 4
  %add85 = add nsw i32 %shl, %83
  %conv86 = trunc i32 %add85 to i16
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 2
  store i16 %conv86, i16* %blue, align 2
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 1
  store i16 %conv86, i16* %green, align 2
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 0
  store i16 %conv86, i16* %red, align 2
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 3
  store i16 %conv86, i16* %luminance, align 2
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %rcolor, %struct.gx_device_color_s* %84, %struct.gs_state_s* %85)
  br label %if.end.89

if.else.87:                                       ; preds = %if.end.76
  %86 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call88 = call i32 (%struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_load to i32 (%struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gx_device_color_s* %86, %struct.gs_state_s* %87)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.82
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.56
  %88 = load i32, i32* %skew, align 4
  %tobool91 = icmp ne i32 %88, 0
  br i1 %tobool91, label %if.else.128, label %if.then.92

if.then.92:                                       ; preds = %if.end.90
  %89 = load i64, i64* %xl, align 8
  %add93 = add nsw i64 %89, 2048
  %and94 = and i64 %add93, -4096
  store i64 %and94, i64* %xlr, align 8
  %90 = load i64, i64* %xrun, align 8
  %add95 = add nsw i64 %90, 2048
  %and96 = and i64 %add95, -4096
  store i64 %and96, i64* %xrr, align 8
  %91 = load i64, i64* %xrr, align 8
  %92 = load i64, i64* %xlr, align 8
  %cmp97 = icmp eq i64 %91, %92
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.92
  br label %trans

if.end.100:                                       ; preds = %if.then.92
  %93 = load i64, i64* %dxx, align 8
  %cmp101 = icmp sge i64 %93, 0
  br i1 %cmp101, label %if.then.103, label %if.else.114

if.then.103:                                      ; preds = %if.end.100
  %94 = load i64, i64* %xrr, align 8
  %q104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q104, i32 0, i32 0
  %95 = load i64, i64* %x, align 8
  %cmp105 = icmp sge i64 %94, %95
  br i1 %cmp105, label %if.then.112, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.then.103
  %96 = load i64, i64* %xlr, align 8
  %p108 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p108, i32 0, i32 0
  %97 = load i64, i64* %x109, align 8
  %cmp110 = icmp sle i64 %96, %97
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false.107, %if.then.103
  br label %trans

if.end.113:                                       ; preds = %lor.lhs.false.107
  br label %if.end.126

if.else.114:                                      ; preds = %if.end.100
  %98 = load i64, i64* %xlr, align 8
  %q115 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q115, i32 0, i32 0
  %99 = load i64, i64* %x116, align 8
  %cmp117 = icmp sge i64 %98, %99
  br i1 %cmp117, label %if.then.124, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.else.114
  %100 = load i64, i64* %xrr, align 8
  %p120 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p120, i32 0, i32 0
  %101 = load i64, i64* %x121, align 8
  %cmp122 = icmp sle i64 %100, %101
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false.119, %if.else.114
  br label %trans

if.end.125:                                       ; preds = %lor.lhs.false.119
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.113
  %102 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %memory_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %102, %struct.gs_memory_procs* %memory_procs)
  %104 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %105 = load i64, i64* %xrr, align 8
  %106 = load i64, i64* %ytf, align 8
  %107 = load i64, i64* %xlr, align 8
  %108 = load i64, i64* %ytf, align 8
  %109 = load i64, i64* %xlr, align 8
  %110 = load i64, i64* %yn, align 8
  %call127 = call i32 @gx_path_add_pgram(%struct.gx_path_s* %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  store i32 %call127, i32* %code, align 4
  br label %if.end.133

if.else.128:                                      ; preds = %if.end.90
  %111 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %112 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %memory_procs129 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %112, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* %111, %struct.gs_memory_procs* %memory_procs129)
  %113 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %114 = load i64, i64* %xrun, align 8
  %115 = load i64, i64* %yrun, align 8
  %116 = load i64, i64* %xl, align 8
  %117 = load i64, i64* %ytf, align 8
  %118 = load i64, i64* %xl, align 8
  %119 = load i64, i64* %dyx, align 8
  %add130 = add nsw i64 %118, %119
  %120 = load i64, i64* %ytf, align 8
  %121 = load i64, i64* %dyy, align 8
  %add131 = add nsw i64 %120, %121
  %call132 = call i32 @gx_path_add_pgram(%struct.gx_path_s* %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %add130, i64 %add131)
  store i32 %call132, i32* %code, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.128, %if.end.126
  %122 = load i32, i32* %code, align 4
  %cmp134 = icmp slt i32 %122, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %123 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  call void @gx_path_release(%struct.gx_path_s* %123)
  %124 = load i32, i32* %code, align 4
  store i32 %124, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.133
  %125 = load i32, i32* %skew, align 4
  %tobool138 = icmp ne i32 %125, 0
  br i1 %tobool138, label %if.then.139, label %if.end.197

if.then.139:                                      ; preds = %if.end.137
  %126 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call140 = call i32 @gx_path_bbox(%struct.gx_path_s* %126, %struct.gs_fixed_rect_s* %box)
  %q141 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q141, i32 0, i32 0
  %127 = load i64, i64* %x142, align 8
  %p143 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p143, i32 0, i32 0
  %128 = load i64, i64* %x144, align 8
  %cmp145 = icmp sle i64 %127, %128
  br i1 %cmp145, label %if.then.167, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %if.then.139
  %p148 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p148, i32 0, i32 0
  %129 = load i64, i64* %x149, align 8
  %q150 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x151 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q150, i32 0, i32 0
  %130 = load i64, i64* %x151, align 8
  %cmp152 = icmp sge i64 %129, %130
  br i1 %cmp152, label %if.then.167, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.147
  %p155 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p155, i32 0, i32 0
  %131 = load i64, i64* %x156, align 8
  %add157 = add nsw i64 %131, 2048
  %shr158 = ashr i64 %add157, 12
  %conv159 = trunc i64 %shr158 to i32
  %q160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q160, i32 0, i32 0
  %132 = load i64, i64* %x161, align 8
  %add162 = add nsw i64 %132, 2048
  %shr163 = ashr i64 %add162, 12
  %conv164 = trunc i64 %shr163 to i32
  %cmp165 = icmp eq i32 %conv159, %conv164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.147, %if.then.139
  br label %nofill

if.end.168:                                       ; preds = %lor.lhs.false.154
  %q169 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q169, i32 0, i32 1
  %133 = load i64, i64* %y170, align 8
  %p171 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p171, i32 0, i32 1
  %134 = load i64, i64* %y172, align 8
  %cmp173 = icmp sle i64 %133, %134
  br i1 %cmp173, label %if.then.195, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.end.168
  %p176 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p176, i32 0, i32 1
  %135 = load i64, i64* %y177, align 8
  %q178 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q178, i32 0, i32 1
  %136 = load i64, i64* %y179, align 8
  %cmp180 = icmp sge i64 %135, %136
  br i1 %cmp180, label %if.then.195, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %lor.lhs.false.175
  %p183 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y184 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p183, i32 0, i32 1
  %137 = load i64, i64* %y184, align 8
  %add185 = add nsw i64 %137, 2048
  %shr186 = ashr i64 %add185, 12
  %conv187 = trunc i64 %shr186 to i32
  %q188 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q188, i32 0, i32 1
  %138 = load i64, i64* %y189, align 8
  %add190 = add nsw i64 %138, 2048
  %shr191 = ashr i64 %add190, 12
  %conv192 = trunc i64 %shr191 to i32
  %cmp193 = icmp eq i32 %conv187, %conv192
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %lor.lhs.false.182, %lor.lhs.false.175, %if.end.168
  br label %nofill

if.end.196:                                       ; preds = %lor.lhs.false.182
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.137
  %139 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %140 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %141 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call198 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* %139, %struct.gx_device_color_s* %140, %struct.gs_state_s* %141, i32 -1, i64 0)
  br label %nofill

nofill:                                           ; preds = %if.end.197, %if.then.195, %if.then.167
  %142 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  call void @gx_path_release(%struct.gx_path_s* %142)
  br label %trans

trans:                                            ; preds = %nofill, %if.then.124, %if.then.112, %if.then.99, %if.then.73, %if.then.65
  br label %if.end.250

if.else.199:                                      ; preds = %if.then.54
  %143 = load i64, i64* %xrun, align 8
  %add200 = add nsw i64 %143, 2048
  %shr201 = ashr i64 %add200, 12
  %conv202 = trunc i64 %shr201 to i32
  store i32 %conv202, i32* %xi, align 4
  %144 = load i64, i64* %xl, align 8
  %add203 = add nsw i64 %144, 2048
  %shr204 = ashr i64 %add203, 12
  %conv205 = trunc i64 %shr204 to i32
  %145 = load i32, i32* %xi, align 4
  %sub206 = sub nsw i32 %conv205, %145
  store i32 %sub206, i32* %wi, align 4
  %146 = load i32, i32* %wi, align 4
  %cmp207 = icmp sle i32 %146, 0
  br i1 %cmp207, label %if.then.209, label %if.end.216

if.then.209:                                      ; preds = %if.else.199
  %147 = load i32, i32* %wi, align 4
  %cmp210 = icmp eq i32 %147, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.209
  br label %mt

if.end.213:                                       ; preds = %if.then.209
  %148 = load i32, i32* %wi, align 4
  %149 = load i32, i32* %xi, align 4
  %add214 = add nsw i32 %149, %148
  store i32 %add214, i32* %xi, align 4
  %150 = load i32, i32* %wi, align 4
  %sub215 = sub nsw i32 0, %150
  store i32 %sub215, i32* %wi, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.213, %if.else.199
  %151 = load i32, i32* %run, align 4
  switch i32 %151, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb.217
  ]

sw.bb:                                            ; preds = %if.end.216
  %152 = load i64, i64* %zero, align 8
  store i64 %152, i64* %rcx, align 8
  br label %zo

sw.bb.217:                                        ; preds = %if.end.216
  %153 = load i64, i64* %one, align 8
  store i64 %153, i64* %rcx, align 8
  br label %zo

zo:                                               ; preds = %sw.bb.217, %sw.bb
  %154 = load i64, i64* %rcx, align 8
  %cmp218 = icmp ne i64 %154, -1
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %zo
  %155 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_proc, align 8
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %157 = load i32, i32* %xi, align 4
  %158 = load i32, i32* %yt, align 4
  %159 = load i32, i32* %idy, align 4
  %add221 = add nsw i32 %158, %159
  %160 = load i32, i32* %wi, align 4
  %161 = load i32, i32* %iht, align 4
  %162 = load i64, i64* %rcx, align 8
  %call222 = call i32 %155(%struct.gx_device_s* %156, i32 %157, i32 %add221, i32 %160, i32 %161, i64 %162)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %zo
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.216
  %163 = load i32, i32* %run, align 4
  %164 = load i32, i32* %htrun, align 4
  %cmp224 = icmp ne i32 %163, %164
  br i1 %cmp224, label %if.then.226, label %if.end.247

if.then.226:                                      ; preds = %sw.default
  %165 = load i32, i32* %run, align 4
  %idxprom227 = sext i32 %165 to i64
  %166 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %dev_colors228 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %166, i32 0, i32 25
  %arrayidx229 = getelementptr inbounds [256 x %struct.gx_device_color_s], [256 x %struct.gx_device_color_s]* %dev_colors228, i32 0, i64 %idxprom227
  store %struct.gx_device_color_s* %arrayidx229, %struct.gx_device_color_s** %pdevc, align 8
  %167 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %halftone_level230 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %167, i32 0, i32 2
  %168 = load i32, i32* %halftone_level230, align 4
  %cmp231 = icmp slt i32 %168, 0
  br i1 %cmp231, label %if.then.233, label %if.else.244

if.then.233:                                      ; preds = %if.then.226
  %169 = load i32, i32* %run, align 4
  %conv234 = trunc i32 %169 to i16
  %conv235 = zext i16 %conv234 to i32
  %shl236 = shl i32 %conv235, 8
  %170 = load i32, i32* %run, align 4
  %add237 = add nsw i32 %shl236, %170
  %conv238 = trunc i32 %add237 to i16
  %blue239 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 2
  store i16 %conv238, i16* %blue239, align 2
  %green240 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 1
  store i16 %conv238, i16* %green240, align 2
  %red241 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 0
  store i16 %conv238, i16* %red241, align 2
  %luminance242 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %rcolor, i32 0, i32 3
  store i16 %conv238, i16* %luminance242, align 2
  %171 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %172 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call243 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %rcolor, %struct.gx_device_color_s* %171, %struct.gs_state_s* %172)
  br label %if.end.246

if.else.244:                                      ; preds = %if.then.226
  %173 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %174 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call245 = call i32 (%struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_load to i32 (%struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gx_device_color_s* %173, %struct.gs_state_s* %174)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.244, %if.then.233
  %175 = load i32, i32* %run, align 4
  store i32 %175, i32* %htrun, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %sw.default
  %176 = load i32, i32* %xi, align 4
  %177 = load i32, i32* %yt, align 4
  %178 = load i32, i32* %idy, align 4
  %add248 = add nsw i32 %177, %178
  %179 = load i32, i32* %wi, align 4
  %180 = load i32, i32* %iht, align 4
  %181 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %182 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call249 = call i32 (i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gz_fill_rectangle to i32 (i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(i32 %176, i32 %add248, i32 %179, i32 %180, %struct.gx_device_color_s* %181, %struct.gs_state_s* %182)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.247, %if.end.223
  br label %mt

mt:                                               ; preds = %sw.epilog, %if.then.212
  br label %if.end.250

if.end.250:                                       ; preds = %mt, %trans
  %183 = load i64, i64* %xl, align 8
  store i64 %183, i64* %xrun, align 8
  %184 = load i64, i64* %ytf, align 8
  store i64 %184, i64* %yrun, align 8
  %185 = load i8*, i8** %psrc, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %185, i64 -1
  %186 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %186 to i32
  store i32 %conv252, i32* %run, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.250, %while.body
  %187 = load i64, i64* %dxx, align 8
  %188 = load i64, i64* %xl, align 8
  %add254 = add nsw i64 %188, %187
  store i64 %add254, i64* %xl, align 8
  %189 = load i64, i64* %dxy, align 8
  %190 = load i64, i64* %ytf, align 8
  %add255 = add nsw i64 %190, %189
  store i64 %add255, i64* %ytf, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.136, %if.then.39, %if.then.27, %if.else.17
  %191 = load i32, i32* %retval
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define i32 @gs_image_next(%struct.gs_image_enum_s* %penum, i8* %dbytes, i32 %dsize) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_image_enum_s*, align 8
  %dbytes.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %rsize = alloca i32, align 4
  %pos = alloca i32, align 4
  %width = alloca i32, align 4
  %dleft = alloca i32, align 4
  %dpos = alloca i32, align 4
  %code = alloca i32, align 4
  %bcount = alloca i32, align 4
  %bptr = alloca i8*, align 8
  %px = alloca i32, align 4
  store %struct.gs_image_enum_s* %penum, %struct.gs_image_enum_s** %penum.addr, align 8
  store i8* %dbytes, i8** %dbytes.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %bytes_per_row = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %0, i32 0, i32 14
  %1 = load i32, i32* %bytes_per_row, align 4
  store i32 %1, i32* %rsize, align 4
  %2 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %byte_in_row = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %2, i32 0, i32 21
  %3 = load i32, i32* %byte_in_row, align 4
  store i32 %3, i32* %pos, align 4
  %4 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %width1 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %4, i32 0, i32 0
  %5 = load i32, i32* %width1, align 4
  store i32 %5, i32* %width, align 4
  %6 = load i32, i32* %dsize.addr, align 4
  store i32 %6, i32* %dleft, align 4
  store i32 0, i32* %dpos, align 4
  %7 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_index = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %7, i32 0, i32 19
  %8 = load i32, i32* %plane_index, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %dsize.addr, align 4
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_size = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %10, i32 0, i32 20
  store i32 %9, i32* %plane_size, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %dsize.addr, align 4
  %12 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_size2 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %12, i32 0, i32 20
  %13 = load i32, i32* %plane_size2, align 4
  %cmp3 = icmp ne i32 %11, %13
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %14 = load i8*, i8** %dbytes.addr, align 8
  %15 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_index6 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %15, i32 0, i32 19
  %16 = load i32, i32* %plane_index6, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %planes = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %17, i32 0, i32 18
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %planes, i32 0, i64 %idxprom
  store i8* %14, i8** %arrayidx, align 8
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_index7 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %18, i32 0, i32 19
  %19 = load i32, i32* %plane_index7, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %plane_index7, align 4
  %20 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %20, i32 0, i32 4
  %21 = load i32, i32* %spread, align 4
  %cmp8 = icmp ne i32 %inc, %21
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %22 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %plane_index11 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %22, i32 0, i32 19
  store i32 0, i32* %plane_index11, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end.10
  %23 = load i32, i32* %dleft, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %dleft, align 4
  %25 = load i32, i32* %rsize, align 4
  %26 = load i32, i32* %pos, align 4
  %sub = sub i32 %25, %26
  %cmp12 = icmp ult i32 %24, %sub
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load i32, i32* %dleft, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %28 = load i32, i32* %rsize, align 4
  %29 = load i32, i32* %pos, align 4
  %sub13 = sub i32 %28, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %sub13, %cond.false ]
  store i32 %cond, i32* %bcount, align 4
  %30 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %30, i32 0, i32 12
  %31 = load i8*, i8** %buffer, align 8
  %32 = load i32, i32* %pos, align 4
  %33 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %log2_bps = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %33, i32 0, i32 2
  %34 = load i32, i32* %log2_bps, align 4
  %sub14 = sub nsw i32 3, %34
  %shl = shl i32 %32, %sub14
  %35 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread15 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %35, i32 0, i32 4
  %36 = load i32, i32* %spread15, align 4
  %mul = mul i32 %shl, %36
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %bptr, align 8
  store i32 0, i32* %px, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %37 = load i32, i32* %px, align 4
  %38 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spread16 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %38, i32 0, i32 4
  %39 = load i32, i32* %spread16, align 4
  %cmp17 = icmp slt i32 %37, %39
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %unpack = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %40, i32 0, i32 9
  %41 = load void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, void (%struct.gs_image_enum_s*, i8*, i8*, i32)** %unpack, align 8
  %42 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %43 = load i8*, i8** %bptr, align 8
  %44 = load i32, i32* %px, align 4
  %idx.ext18 = sext i32 %44 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %43, i64 %idx.ext18
  %45 = load i32, i32* %px, align 4
  %idxprom20 = sext i32 %45 to i64
  %46 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %planes21 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %46, i32 0, i32 18
  %arrayidx22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %planes21, i32 0, i64 %idxprom20
  %47 = load i8*, i8** %arrayidx22, align 8
  %48 = load i32, i32* %dpos, align 4
  %idx.ext23 = zext i32 %48 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %47, i64 %idx.ext23
  %49 = load i32, i32* %bcount, align 4
  call void %41(%struct.gs_image_enum_s* %42, i8* %add.ptr19, i8* %add.ptr24, i32 %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %px, align 4
  %inc25 = add nsw i32 %50, 1
  store i32 %inc25, i32* %px, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %bcount, align 4
  %52 = load i32, i32* %pos, align 4
  %add = add i32 %52, %51
  store i32 %add, i32* %pos, align 4
  %53 = load i32, i32* %bcount, align 4
  %54 = load i32, i32* %dpos, align 4
  %add26 = add i32 %54, %53
  store i32 %add26, i32* %dpos, align 4
  %55 = load i32, i32* %bcount, align 4
  %56 = load i32, i32* %dleft, align 4
  %sub27 = sub i32 %56, %55
  store i32 %sub27, i32* %dleft, align 4
  %57 = load i32, i32* %pos, align 4
  %58 = load i32, i32* %rsize, align 4
  %cmp28 = icmp eq i32 %57, %58
  br i1 %cmp28, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %for.end
  %59 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %render = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %59, i32 0, i32 10
  %60 = load i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)** %render, align 8
  %61 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %62 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer30 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %62, i32 0, i32 12
  %63 = load i8*, i8** %buffer30, align 8
  %64 = load i32, i32* %width, align 4
  %65 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %spp = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %65, i32 0, i32 3
  %66 = load i32, i32* %spp, align 4
  %mul31 = mul nsw i32 %64, %66
  %call = call i32 %60(%struct.gs_image_enum_s* %61, i8* %63, i32 %mul31, i32 1)
  store i32 %call, i32* %code, align 4
  %67 = load i32, i32* %code, align 4
  %cmp32 = icmp slt i32 %67, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  br label %err

if.end.34:                                        ; preds = %if.then.29
  %68 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %y = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %68, i32 0, i32 24
  %69 = load i32, i32* %y, align 4
  %inc35 = add nsw i32 %69, 1
  store i32 %inc35, i32* %y, align 4
  %70 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %height = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %70, i32 0, i32 1
  %71 = load i32, i32* %height, align 4
  %cmp36 = icmp eq i32 %inc35, %71
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %end

if.end.38:                                        ; preds = %if.end.34
  store i32 0, i32* %pos, align 4
  %72 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyx = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %72, i32 0, i32 7
  %73 = load i64, i64* %fyx, align 8
  %74 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %xcur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %74, i32 0, i32 22
  %75 = load i64, i64* %xcur, align 8
  %add39 = add nsw i64 %75, %73
  store i64 %add39, i64* %xcur, align 8
  %76 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %fyy = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %76, i32 0, i32 8
  %77 = load i64, i64* %fyy, align 8
  %78 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %ycur = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %78, i32 0, i32 23
  %79 = load i64, i64* %ycur, align 8
  %add40 = add nsw i64 %79, %77
  store i64 %add40, i64* %ycur, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %80 = load i32, i32* %pos, align 4
  %81 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %byte_in_row42 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %81, i32 0, i32 21
  store i32 %80, i32* %byte_in_row42, align 4
  store i32 0, i32* %retval
  br label %return

end:                                              ; preds = %if.then.37
  store i32 1, i32* %code, align 4
  br label %err

err:                                              ; preds = %end, %if.then.33
  %82 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer43 = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %82, i32 0, i32 12
  %83 = load i8*, i8** %buffer43, align 8
  %84 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum.addr, align 8
  %buffer_size = getelementptr inbounds %struct.gs_image_enum_s, %struct.gs_image_enum_s* %84, i32 0, i32 13
  %85 = load i32, i32* %buffer_size, align 4
  call void @gs_free(i8* %83, i32 %85, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %86 = load i32, i32* %code, align 4
  store i32 %86, i32* %retval
  br label %return

return:                                           ; preds = %err, %while.end, %if.then.9, %if.then.4
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare void @gs_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gx_color_load(...) #1

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #1

declare i32 @gx_path_add_pgram(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #1

declare void @gx_path_release(%struct.gx_path_s*) #1

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_fill_path(...) #1

declare i32 @gz_fill_rectangle(...) #1

declare i32 @gx_color_from_rgb(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
