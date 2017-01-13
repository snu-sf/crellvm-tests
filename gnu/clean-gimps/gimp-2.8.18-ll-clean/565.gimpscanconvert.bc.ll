; ModuleID = './app/core/gimpscanconvert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpScanConvert = type { double, i32, i32, i32, i32, i32, i32, double, i32, i32, double, double, %struct._GArray*, %struct._GArray* }
%struct._GArray = type { i8*, i32 }
%struct._GimpVector2 = type { double, double }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct.anon = type { i32, i32 }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_scan_convert_free = private unnamed_addr constant [23 x i8] c"gimp_scan_convert_free\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sc != NULL\00", align 1
@__func__.gimp_scan_convert_set_pixel_ratio = private unnamed_addr constant [34 x i8] c"gimp_scan_convert_set_pixel_ratio\00", align 1
@__func__.gimp_scan_convert_set_clip_rectangle = private unnamed_addr constant [37 x i8] c"gimp_scan_convert_set_clip_rectangle\00", align 1
@__func__.gimp_scan_convert_add_polyline = private unnamed_addr constant [31 x i8] c"gimp_scan_convert_add_polyline\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"points != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"n_points > 0\00", align 1
@__func__.gimp_scan_convert_add_bezier = private unnamed_addr constant [29 x i8] c"gimp_scan_convert_add_bezier\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bezier != NULL\00", align 1
@__func__.gimp_scan_convert_render_full = private unnamed_addr constant [30 x i8] c"gimp_scan_convert_render_full\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"tile_manager != NULL\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"maskPR.bytes == 1\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpScanConvert* @gimp_scan_convert_new() #0 {
entry:
  %sc = alloca %struct._GimpScanConvert*, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 80)
  %0 = bitcast i8* %call to %struct._GimpScanConvert*
  store %struct._GimpScanConvert* %0, %struct._GimpScanConvert** %sc, align 8
  %call1 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 16)
  %1 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  %path_data = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %1, i32 0, i32 13
  store %struct._GArray* %call1, %struct._GArray** %path_data, align 8
  %2 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  %ratio_xy = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %2, i32 0, i32 0
  store double 1.000000e+00, double* %ratio_xy, align 8
  %3 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc, align 8
  ret %struct._GimpScanConvert* %3
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_free(%struct._GimpScanConvert* %sc) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_scan_convert_free, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.10

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %1, i32 0, i32 13
  %2 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %tobool = icmp ne %struct._GArray* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data2 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %3, i32 0, i32 13
  %4 = load %struct._GArray*, %struct._GArray** %path_data2, align 8
  %call = call i8* @g_array_free(%struct._GArray* %4, i32 1)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %5, i32 0, i32 12
  %6 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %tobool4 = icmp ne %struct._GArray* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info6 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %7, i32 0, i32 12
  %8 = load %struct._GArray*, %struct._GArray** %dash_info6, align 8
  %call7 = call i8* @g_array_free(%struct._GArray* %8, i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %9 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %10 = bitcast %struct._GimpScanConvert* %9 to i8*
  call void @g_slice_free1(i64 80, i8* %10)
  br label %do.end.10

do.end.10:                                        ; preds = %if.else, %do.body.9
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_set_pixel_ratio(%struct._GimpScanConvert* %sc, double %ratio_xy) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %ratio_xy.addr = alloca double, align 8
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store double %ratio_xy, double* %ratio_xy.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_scan_convert_set_pixel_ratio, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %ratio_xy.addr, align 8
  %2 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %ratio_xy1 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %2, i32 0, i32 0
  store double %1, double* %ratio_xy1, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_set_clip_rectangle(%struct._GimpScanConvert* %sc, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_scan_convert_set_clip_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %1, i32 0, i32 1
  store i32 1, i32* %clip, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_x = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %3, i32 0, i32 2
  store i32 %2, i32* %clip_x, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_y = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %5, i32 0, i32 3
  store i32 %4, i32* %clip_y, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_w = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %7, i32 0, i32 4
  store i32 %6, i32* %clip_w, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_h = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %9, i32 0, i32 5
  store i32 %8, i32* %clip_h, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %sc, i32 %n_points, %struct._GimpVector2* %points, i32 %closed) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %n_points.addr = alloca i32, align 4
  %points.addr = alloca %struct._GimpVector2*, align 8
  %closed.addr = alloca i32, align 4
  %prev = alloca %struct._GimpVector2, align 8
  %pd = alloca %union._cairo_path_data_t, align 8
  %i = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %closed, i32* %closed.addr, align 4
  %0 = bitcast %struct._GimpVector2* %prev to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scan_convert_add_polyline, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.49

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %cmp2 = icmp ne %struct._GimpVector2* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scan_convert_add_polyline, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.49

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load i32, i32* %n_points.addr, align 4
  %cmp8 = icmp ugt i32 %3, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scan_convert_add_polyline, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.49

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.12
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_points.addr, align 4
  %cmp13 = icmp ult i32 %4, %5
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %6, 0
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %prev, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %9, i64 %idxprom
  %x15 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %10 = load double, double* %x15, align 8
  %cmp16 = fcmp une double %7, %10
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %prev, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %13, i64 %idxprom18
  %y20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx19, i32 0, i32 1
  %14 = load double, double* %y20, align 8
  %cmp21 = fcmp une double %11, %14
  br i1 %cmp21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false, %for.body
  %15 = load i32, i32* %i, align 4
  %cmp23 = icmp eq i32 %15, 0
  %cond = select i1 %cmp23, i32 0, i32 1
  %header = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %type = getelementptr inbounds %struct.anon, %struct.anon* %header, i32 0, i32 0
  store i32 %cond, i32* %type, align 4
  %header24 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %length = getelementptr inbounds %struct.anon, %struct.anon* %header24, i32 0, i32 1
  store i32 2, i32* %length, align 4
  %16 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %16, i32 0, i32 13
  %17 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %18 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call = call %struct._GArray* @g_array_append_vals(%struct._GArray* %17, i8* %18, i32 1)
  %19 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data25 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %19, i32 0, i32 13
  store %struct._GArray* %call, %struct._GArray** %path_data25, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %21, i64 %idxprom26
  %x28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx27, i32 0, i32 0
  %22 = load double, double* %x28, align 8
  %point = bitcast %union._cairo_path_data_t* %pd to %struct.anon.0*
  %x29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point, i32 0, i32 0
  store double %22, double* %x29, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %24, i64 %idxprom30
  %y32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx31, i32 0, i32 1
  %25 = load double, double* %y32, align 8
  %point33 = bitcast %union._cairo_path_data_t* %pd to %struct.anon.0*
  %y34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point33, i32 0, i32 1
  store double %25, double* %y34, align 8
  %26 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data35 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %26, i32 0, i32 13
  %27 = load %struct._GArray*, %struct._GArray** %path_data35, align 8
  %28 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call36 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %27, i8* %28, i32 1)
  %29 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data37 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %29, i32 0, i32 13
  store %struct._GArray* %call36, %struct._GArray** %path_data37, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %31, i64 %idxprom38
  %32 = bitcast %struct._GimpVector2* %prev to i8*
  %33 = bitcast %struct._GimpVector2* %arrayidx39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.22, %lor.lhs.false.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %closed.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %for.end
  %header42 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %type43 = getelementptr inbounds %struct.anon, %struct.anon* %header42, i32 0, i32 0
  store i32 3, i32* %type43, align 4
  %header44 = bitcast %union._cairo_path_data_t* %pd to %struct.anon*
  %length45 = getelementptr inbounds %struct.anon, %struct.anon* %header44, i32 0, i32 1
  store i32 1, i32* %length45, align 4
  %36 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data46 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %36, i32 0, i32 13
  %37 = load %struct._GArray*, %struct._GArray** %path_data46, align 8
  %38 = bitcast %union._cairo_path_data_t* %pd to i8*
  %call47 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %37, i8* %38, i32 1)
  %39 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data48 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %39, i32 0, i32 13
  store %struct._GArray* %call47, %struct._GArray** %path_data48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.else.4, %if.else.10, %if.then.41, %for.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert* %sc, %struct.cairo_path* %bezier) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %bezier.addr = alloca %struct.cairo_path*, align 8
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct.cairo_path* %bezier, %struct.cairo_path** %bezier.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_scan_convert_add_bezier, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct.cairo_path*, %struct.cairo_path** %bezier.addr, align 8
  %cmp2 = icmp ne %struct.cairo_path* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_scan_convert_add_bezier, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %2, i32 0, i32 13
  %3 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %4 = load %struct.cairo_path*, %struct.cairo_path** %bezier.addr, align 8
  %data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %4, i32 0, i32 1
  %5 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %6 = bitcast %union._cairo_path_data_t* %5 to i8*
  %7 = load %struct.cairo_path*, %struct.cairo_path** %bezier.addr, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %7, i32 0, i32 2
  %8 = load i32, i32* %num_data, align 4
  %call = call %struct._GArray* @g_array_append_vals(%struct._GArray* %3, i8* %6, i32 %8)
  %9 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data7 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %9, i32 0, i32 13
  store %struct._GArray* %call, %struct._GArray** %path_data7, align 8
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_stroke(%struct._GimpScanConvert* %sc, double %width, i32 %join, i32 %cap, double %miter, double %dash_offset, %struct._GArray* %dash_info) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %width.addr = alloca double, align 8
  %join.addr = alloca i32, align 4
  %cap.addr = alloca i32, align 4
  %miter.addr = alloca double, align 8
  %dash_offset.addr = alloca double, align 8
  %dash_info.addr = alloca %struct._GArray*, align 8
  %n_dashes = alloca i32, align 4
  %dashes = alloca double*, align 8
  %i = alloca i32, align 4
  %first = alloca double, align 8
  %last = alloca double, align 8
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store double %width, double* %width.addr, align 8
  store i32 %join, i32* %join.addr, align 4
  store i32 %cap, i32* %cap.addr, align 4
  store double %miter, double* %miter.addr, align 8
  store double %dash_offset, double* %dash_offset.addr, align 8
  store %struct._GArray* %dash_info, %struct._GArray** %dash_info.addr, align 8
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %do_stroke = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %0, i32 0, i32 6
  store i32 1, i32* %do_stroke, align 4
  %1 = load double, double* %width.addr, align 8
  %2 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %2, i32 0, i32 7
  store double %1, double* %width1, align 8
  %3 = load i32, i32* %join.addr, align 4
  %4 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %join2 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %4, i32 0, i32 8
  store i32 %3, i32* %join2, align 4
  %5 = load i32, i32* %cap.addr, align 4
  %6 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cap3 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %6, i32 0, i32 9
  store i32 %5, i32* %cap3, align 4
  %7 = load double, double* %miter.addr, align 8
  %8 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %miter4 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %8, i32 0, i32 10
  store double %7, double* %miter4, align 8
  %9 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info5 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %9, i32 0, i32 12
  %10 = load %struct._GArray*, %struct._GArray** %dash_info5, align 8
  %tobool = icmp ne %struct._GArray* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info6 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %11, i32 0, i32 12
  %12 = load %struct._GArray*, %struct._GArray** %dash_info6, align 8
  %call = call i8* @g_array_free(%struct._GArray* %12, i32 1)
  %13 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info7 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %13, i32 0, i32 12
  store %struct._GArray* null, %struct._GArray** %dash_info7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %tobool8 = icmp ne %struct._GArray* %14, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp = icmp uge i32 %16, 2
  br i1 %cmp, label %if.then.9, label %if.end.89

if.then.9:                                        ; preds = %land.lhs.true
  %17 = load double, double* %dash_offset.addr, align 8
  %18 = load double, double* %width.addr, align 8
  %cmp10 = fcmp ogt double %18, 1.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %19 = load double, double* %width.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %19, %cond.true ], [ 1.000000e+00, %cond.false ]
  %mul = fmul double %17, %cond
  store double %mul, double* %dash_offset.addr, align 8
  %20 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len11 = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 1
  %21 = load i32, i32* %len11, align 4
  store i32 %21, i32* %n_dashes, align 4
  %22 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len12 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len12, align 4
  %conv = zext i32 %23 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %24 = bitcast i8* %call13 to double*
  store double* %24, double** %dashes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len14 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 1
  %27 = load i32, i32* %len14, align 4
  %cmp15 = icmp ult i32 %25, %27
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load double, double* %width.addr, align 8
  %cmp17 = fcmp ogt double %28, 1.000000e+00
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.body
  %29 = load double, double* %width.addr, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.body
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi double [ %29, %cond.true.19 ], [ 1.000000e+00, %cond.false.20 ]
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to double*
  %arrayidx = getelementptr inbounds double, double* %33, i64 %idxprom
  %34 = load double, double* %arrayidx, align 8
  %mul23 = fmul double %cond22, %34
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load double*, double** %dashes, align 8
  %arrayidx25 = getelementptr inbounds double, double* %36, i64 %idxprom24
  store double %mul23, double* %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.21
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load double*, double** %dashes, align 8
  %arrayidx26 = getelementptr inbounds double, double* %38, i64 0
  %39 = load double, double* %arrayidx26, align 8
  %cmp27 = fcmp oeq double %39, 0.000000e+00
  br i1 %cmp27, label %if.then.29, label %if.end.66

if.then.29:                                       ; preds = %for.end
  %40 = load double*, double** %dashes, align 8
  %arrayidx30 = getelementptr inbounds double, double* %40, i64 1
  %41 = load double, double* %arrayidx30, align 8
  store double %41, double* %first, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %if.then.29
  %42 = load i32, i32* %i, align 4
  %43 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len32 = getelementptr inbounds %struct._GArray, %struct._GArray* %43, i32 0, i32 1
  %44 = load i32, i32* %len32, align 4
  %sub = sub i32 %44, 2
  %cmp33 = icmp ult i32 %42, %sub
  br i1 %cmp33, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.31
  %45 = load i32, i32* %i, align 4
  %add = add nsw i32 %45, 2
  %idxprom36 = sext i32 %add to i64
  %46 = load double*, double** %dashes, align 8
  %arrayidx37 = getelementptr inbounds double, double* %46, i64 %idxprom36
  %47 = load double, double* %arrayidx37, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load double*, double** %dashes, align 8
  %arrayidx39 = getelementptr inbounds double, double* %49, i64 %idxprom38
  store double %47, double* %arrayidx39, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %50 to i64
  %51 = load double*, double** %dashes, align 8
  %arrayidx41 = getelementptr inbounds double, double* %51, i64 %idxprom40
  %52 = load double, double* %arrayidx41, align 8
  %53 = load double, double* %dash_offset.addr, align 8
  %add42 = fadd double %53, %52
  store double %add42, double* %dash_offset.addr, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.35
  %54 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  %55 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len46 = getelementptr inbounds %struct._GArray, %struct._GArray* %55, i32 0, i32 1
  %56 = load i32, i32* %len46, align 4
  %rem = urem i32 %56, 2
  %cmp47 = icmp eq i32 %rem, 1
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %for.end.45
  %57 = load double, double* %first, align 8
  %58 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len50 = getelementptr inbounds %struct._GArray, %struct._GArray* %58, i32 0, i32 1
  %59 = load i32, i32* %len50, align 4
  %sub51 = sub i32 %59, 2
  %idxprom52 = zext i32 %sub51 to i64
  %60 = load double*, double** %dashes, align 8
  %arrayidx53 = getelementptr inbounds double, double* %60, i64 %idxprom52
  store double %57, double* %arrayidx53, align 8
  %61 = load i32, i32* %n_dashes, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %n_dashes, align 4
  br label %if.end.65

if.else:                                          ; preds = %for.end.45
  %62 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len54 = getelementptr inbounds %struct._GArray, %struct._GArray* %62, i32 0, i32 1
  %63 = load i32, i32* %len54, align 4
  %cmp55 = icmp ugt i32 %63, 2
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.else
  %64 = load double, double* %first, align 8
  %65 = load %struct._GArray*, %struct._GArray** %dash_info.addr, align 8
  %len58 = getelementptr inbounds %struct._GArray, %struct._GArray* %65, i32 0, i32 1
  %66 = load i32, i32* %len58, align 4
  %sub59 = sub i32 %66, 3
  %idxprom60 = zext i32 %sub59 to i64
  %67 = load double*, double** %dashes, align 8
  %arrayidx61 = getelementptr inbounds double, double* %67, i64 %idxprom60
  %68 = load double, double* %arrayidx61, align 8
  %add62 = fadd double %68, %64
  store double %add62, double* %arrayidx61, align 8
  %69 = load i32, i32* %n_dashes, align 4
  %sub63 = sub nsw i32 %69, 2
  store i32 %sub63, i32* %n_dashes, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.57, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.49
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %for.end
  %70 = load i32, i32* %n_dashes, align 4
  %rem67 = srem i32 %70, 2
  %cmp68 = icmp eq i32 %rem67, 1
  br i1 %cmp68, label %if.then.70, label %if.end.78

if.then.70:                                       ; preds = %if.end.66
  %71 = load i32, i32* %n_dashes, align 4
  %sub71 = sub nsw i32 %71, 1
  %idxprom72 = sext i32 %sub71 to i64
  %72 = load double*, double** %dashes, align 8
  %arrayidx73 = getelementptr inbounds double, double* %72, i64 %idxprom72
  %73 = load double, double* %arrayidx73, align 8
  store double %73, double* %last, align 8
  %74 = load double, double* %last, align 8
  %75 = load double*, double** %dashes, align 8
  %arrayidx74 = getelementptr inbounds double, double* %75, i64 0
  %76 = load double, double* %arrayidx74, align 8
  %add75 = fadd double %76, %74
  store double %add75, double* %arrayidx74, align 8
  %77 = load double, double* %last, align 8
  %78 = load double, double* %dash_offset.addr, align 8
  %add76 = fadd double %78, %77
  store double %add76, double* %dash_offset.addr, align 8
  %79 = load i32, i32* %n_dashes, align 4
  %dec77 = add nsw i32 %79, -1
  store i32 %dec77, i32* %n_dashes, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.70, %if.end.66
  %80 = load i32, i32* %n_dashes, align 4
  %cmp79 = icmp sge i32 %80, 2
  br i1 %cmp79, label %if.then.81, label %if.end.88

if.then.81:                                       ; preds = %if.end.78
  %81 = load i32, i32* %n_dashes, align 4
  %call82 = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 8, i32 %81)
  %82 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info83 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %82, i32 0, i32 12
  store %struct._GArray* %call82, %struct._GArray** %dash_info83, align 8
  %83 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info84 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %83, i32 0, i32 12
  %84 = load %struct._GArray*, %struct._GArray** %dash_info84, align 8
  %85 = load double*, double** %dashes, align 8
  %86 = bitcast double* %85 to i8*
  %87 = load i32, i32* %n_dashes, align 4
  %call85 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %84, i8* %86, i32 %87)
  %88 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info86 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %88, i32 0, i32 12
  store %struct._GArray* %call85, %struct._GArray** %dash_info86, align 8
  %89 = load double, double* %dash_offset.addr, align 8
  %90 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_offset87 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %90, i32 0, i32 11
  store double %89, double* %dash_offset87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.81, %if.end.78
  %91 = load double*, double** %dashes, align 8
  %92 = bitcast double* %91 to i8*
  call void @g_free(i8* %92)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true, %if.end
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_render(%struct._GimpScanConvert* %sc, %struct._TileManager* %tile_manager, i32 %off_x, i32 %off_y, i32 %antialias) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %tile_manager.addr = alloca %struct._TileManager*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct._TileManager* %tile_manager, %struct._TileManager** %tile_manager.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %1 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %2 = load i32, i32* %off_x.addr, align 4
  %3 = load i32, i32* %off_y.addr, align 4
  %4 = load i32, i32* %antialias.addr, align 4
  call void @gimp_scan_convert_render_full(%struct._GimpScanConvert* %0, %struct._TileManager* %1, i32 %2, i32 %3, i32 1, i32 %4, i8 zeroext -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_render_full(%struct._GimpScanConvert* %sc, %struct._TileManager* %tile_manager, i32 %off_x, i32 %off_y, i32 %replace, i32 %antialias, i8 zeroext %value) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %tile_manager.addr = alloca %struct._TileManager*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %replace.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  %maskPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %cr = alloca %struct._cairo*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %path = alloca %struct.cairo_path, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tmp_buf = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %i = alloca i32, align 4
  %dest94 = alloca i8*, align 8
  %src96 = alloca i8*, align 8
  %i97 = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct._TileManager* %tile_manager, %struct._TileManager** %tile_manager.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 %replace, i32* %replace.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i8 %value, i8* %value.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cmp = icmp ne %struct._GimpScanConvert* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_scan_convert_render_full, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.116

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %cmp2 = icmp ne %struct._TileManager* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_scan_convert_render_full, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end.116

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %2)
  store i32 %call, i32* %width, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %call7 = call i32 @tile_manager_height(%struct._TileManager* %3)
  store i32 %call7, i32* %height, align 4
  %4 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %4, i32 0, i32 1
  %5 = load i32, i32* %clip, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.end.6
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %10 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_x = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %10, i32 0, i32 2
  %11 = load i32, i32* %clip_x, align 4
  %12 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_y = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %12, i32 0, i32 3
  %13 = load i32, i32* %clip_y, align 4
  %14 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_w = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %14, i32 0, i32 4
  %15 = load i32, i32* %clip_w, align 4
  %16 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %clip_h = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %16, i32 0, i32 5
  %17 = load i32, i32* %clip_h, align 4
  %call8 = call i32 @gimp_rectangle_intersect(i32 %6, i32 %7, i32 %8, i32 %9, i32 %11, i32 %13, i32 %15, i32 %17, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  br label %for.end.116

if.end.11:                                        ; preds = %land.lhs.true, %do.end.6
  %18 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 1)
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 10
  %23 = load i32, i32* %bytes, align 4
  %cmp13 = icmp eq i32 %23, 1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_scan_convert_render_full, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end.116

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %status = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %path, i32 0, i32 0
  store i32 0, i32* %status, align 4
  %24 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %24, i32 0, i32 13
  %25 = load %struct._GArray*, %struct._GArray** %path_data, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %27 = bitcast i8* %26 to %union._cairo_path_data_t*
  %data18 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %path, i32 0, i32 1
  store %union._cairo_path_data_t* %27, %union._cairo_path_data_t** %data18, align 8
  %28 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %path_data19 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %28, i32 0, i32 13
  %29 = load %struct._GArray*, %struct._GArray** %path_data19, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %29, i32 0, i32 1
  %30 = load i32, i32* %len, align 4
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %path, i32 0, i32 2
  store i32 %30, i32* %num_data, align 4
  %call20 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %maskPR)
  %31 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %31, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %do.end.17
  %32 = load i8*, i8** %pr, align 8
  %cmp21 = icmp ne i8* %32, null
  br i1 %cmp21, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %tmp_buf, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %33 = load i32, i32* %w, align 4
  %call22 = call i32 @cairo_format_stride_for_width(i32 2, i32 %33)
  store i32 %call22, i32* %stride, align 4
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %34 = load i32, i32* %rowstride, align 4
  %35 = load i32, i32* %stride, align 4
  %cmp23 = icmp ne i32 %34, %35
  br i1 %cmp23, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %for.body
  %data25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %36 = load i8*, i8** %data25, align 8
  store i8* %36, i8** %src, align 8
  %37 = load i32, i32* %stride, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %38 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %37, %38
  %conv = sext i32 %mul to i64
  %39 = alloca i8, i64 %conv
  store i8* %39, i8** %tmp_buf, align 8
  store i8* %39, i8** %dest, align 8
  %40 = load i32, i32* %replace.addr, align 4
  %tobool26 = icmp ne i32 %40, 0
  br i1 %tobool26, label %if.end.38, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.then.27
  %41 = load i32, i32* %i, align 4
  %h29 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %42 = load i32, i32* %h29, align 4
  %cmp30 = icmp slt i32 %41, %42
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.28
  %43 = load i8*, i8** %dest, align 8
  %44 = load i8*, i8** %src, align 8
  %w33 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %45 = load i32, i32* %w33, align 4
  %conv34 = sext i32 %45 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %conv34, i32 1, i1 false)
  %rowstride35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %46 = load i32, i32* %rowstride35, align 4
  %47 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %48 = load i32, i32* %stride, align 4
  %49 = load i8*, i8** %dest, align 8
  %idx.ext36 = sext i32 %48 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %49, i64 %idx.ext36
  store i8* %add.ptr37, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  %51 = load i8*, i8** %tmp_buf, align 8
  %tobool40 = icmp ne i8* %51, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %52 = load i8*, i8** %tmp_buf, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %data41 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %53 = load i8*, i8** %data41, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %52, %cond.true ], [ %53, %cond.false ]
  %w42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %54 = load i32, i32* %w42, align 4
  %h43 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %55 = load i32, i32* %h43, align 4
  %56 = load i32, i32* %stride, align 4
  %call44 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %cond, i32 2, i32 %54, i32 %55, i32 %56)
  store %struct._cairo_surface* %call44, %struct._cairo_surface** %surface, align 8
  %57 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %58 = load i32, i32* %off_x.addr, align 4
  %sub = sub nsw i32 0, %58
  %x45 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %59 = load i32, i32* %x45, align 4
  %sub46 = sub nsw i32 %sub, %59
  %conv47 = sitofp i32 %sub46 to double
  %60 = load i32, i32* %off_y.addr, align 4
  %sub48 = sub nsw i32 0, %60
  %y49 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %61 = load i32, i32* %y49, align 4
  %sub50 = sub nsw i32 %sub48, %61
  %conv51 = sitofp i32 %sub50 to double
  call void @cairo_surface_set_device_offset(%struct._cairo_surface* %57, double %conv47, double %conv51)
  %62 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call52 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %62)
  store %struct._cairo* %call52, %struct._cairo** %cr, align 8
  %63 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_operator(%struct._cairo* %63, i32 1)
  %64 = load i32, i32* %replace.addr, align 4
  %tobool53 = icmp ne i32 %64, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %cond.end
  %65 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %65, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %66)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %cond.end
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %68 = load i8, i8* %value.addr, align 1
  %conv56 = zext i8 %68 to i32
  %conv57 = sitofp i32 %conv56 to double
  %div = fdiv double %conv57, 2.550000e+02
  call void @cairo_set_source_rgba(%struct._cairo* %67, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double %div)
  %69 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_append_path(%struct._cairo* %69, %struct.cairo_path* %path)
  %70 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %71 = load i32, i32* %antialias.addr, align 4
  %tobool58 = icmp ne i32 %71, 0
  %cond59 = select i1 %tobool58, i32 2, i32 1
  call void @cairo_set_antialias(%struct._cairo* %70, i32 %cond59)
  %72 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %73 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %miter = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %73, i32 0, i32 10
  %74 = load double, double* %miter, align 8
  call void @cairo_set_miter_limit(%struct._cairo* %72, double %74)
  %75 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %do_stroke = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %75, i32 0, i32 6
  %76 = load i32, i32* %do_stroke, align 4
  %tobool60 = icmp ne i32 %76, 0
  br i1 %tobool60, label %if.then.61, label %if.else.90

if.then.61:                                       ; preds = %if.end.55
  %77 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %78 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cap = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %78, i32 0, i32 9
  %79 = load i32, i32* %cap, align 4
  %cmp62 = icmp eq i32 %79, 0
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.61
  br label %cond.end.70

cond.false.65:                                    ; preds = %if.then.61
  %80 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %cap66 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %80, i32 0, i32 9
  %81 = load i32, i32* %cap66, align 4
  %cmp67 = icmp eq i32 %81, 1
  %cond69 = select i1 %cmp67, i32 1, i32 2
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.65, %cond.true.64
  %cond71 = phi i32 [ 0, %cond.true.64 ], [ %cond69, %cond.false.65 ]
  call void @cairo_set_line_cap(%struct._cairo* %77, i32 %cond71)
  %82 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %83 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %join = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %83, i32 0, i32 8
  %84 = load i32, i32* %join, align 4
  %cmp72 = icmp eq i32 %84, 0
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.70
  br label %cond.end.80

cond.false.75:                                    ; preds = %cond.end.70
  %85 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %join76 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %85, i32 0, i32 8
  %86 = load i32, i32* %join76, align 4
  %cmp77 = icmp eq i32 %86, 1
  %cond79 = select i1 %cmp77, i32 1, i32 2
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.75, %cond.true.74
  %cond81 = phi i32 [ 0, %cond.true.74 ], [ %cond79, %cond.false.75 ]
  call void @cairo_set_line_join(%struct._cairo* %82, i32 %cond81)
  %87 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %88 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %width82 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %88, i32 0, i32 7
  %89 = load double, double* %width82, align 8
  call void @cairo_set_line_width(%struct._cairo* %87, double %89)
  %90 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %90, i32 0, i32 12
  %91 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %tobool83 = icmp ne %struct._GArray* %91, null
  br i1 %tobool83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %cond.end.80
  %92 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %93 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info85 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %93, i32 0, i32 12
  %94 = load %struct._GArray*, %struct._GArray** %dash_info85, align 8
  %data86 = getelementptr inbounds %struct._GArray, %struct._GArray* %94, i32 0, i32 0
  %95 = load i8*, i8** %data86, align 8
  %96 = bitcast i8* %95 to double*
  %97 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_info87 = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %97, i32 0, i32 12
  %98 = load %struct._GArray*, %struct._GArray** %dash_info87, align 8
  %len88 = getelementptr inbounds %struct._GArray, %struct._GArray* %98, i32 0, i32 1
  %99 = load i32, i32* %len88, align 4
  %100 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %dash_offset = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %100, i32 0, i32 11
  %101 = load double, double* %dash_offset, align 8
  call void @cairo_set_dash(%struct._cairo* %92, double* %96, i32 %99, double %101)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %cond.end.80
  %102 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %103 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %ratio_xy = getelementptr inbounds %struct._GimpScanConvert, %struct._GimpScanConvert* %103, i32 0, i32 0
  %104 = load double, double* %ratio_xy, align 8
  call void @cairo_scale(%struct._cairo* %102, double 1.000000e+00, double %104)
  %105 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %105)
  br label %if.end.91

if.else.90:                                       ; preds = %if.end.55
  %106 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_fill_rule(%struct._cairo* %106, i32 1)
  %107 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %107)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.end.89
  %108 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %108)
  %109 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %109)
  %110 = load i8*, i8** %tmp_buf, align 8
  %tobool92 = icmp ne i8* %110, null
  br i1 %tobool92, label %if.then.93, label %if.end.113

if.then.93:                                       ; preds = %if.end.91
  %data95 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %111 = load i8*, i8** %data95, align 8
  store i8* %111, i8** %dest94, align 8
  %112 = load i8*, i8** %tmp_buf, align 8
  store i8* %112, i8** %src96, align 8
  store i32 0, i32* %i97, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.110, %if.then.93
  %113 = load i32, i32* %i97, align 4
  %h99 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %114 = load i32, i32* %h99, align 4
  %cmp100 = icmp slt i32 %113, %114
  br i1 %cmp100, label %for.body.102, label %for.end.112

for.body.102:                                     ; preds = %for.cond.98
  %115 = load i8*, i8** %dest94, align 8
  %116 = load i8*, i8** %src96, align 8
  %w103 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %117 = load i32, i32* %w103, align 4
  %conv104 = sext i32 %117 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 %conv104, i32 1, i1 false)
  %118 = load i32, i32* %stride, align 4
  %119 = load i8*, i8** %src96, align 8
  %idx.ext105 = sext i32 %118 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %119, i64 %idx.ext105
  store i8* %add.ptr106, i8** %src96, align 8
  %rowstride107 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %120 = load i32, i32* %rowstride107, align 4
  %121 = load i8*, i8** %dest94, align 8
  %idx.ext108 = sext i32 %120 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %121, i64 %idx.ext108
  store i8* %add.ptr109, i8** %dest94, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.102
  %122 = load i32, i32* %i97, align 4
  %inc111 = add nsw i32 %122, 1
  store i32 %inc111, i32* %i97, align 4
  br label %for.cond.98

for.end.112:                                      ; preds = %for.cond.98
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.112, %if.end.91
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %123 = load i8*, i8** %pr, align 8
  %124 = bitcast i8* %123 to %struct._PixelRegionIterator*
  %call115 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %124)
  %125 = bitcast %struct._PixelRegionIterator* %call115 to i8*
  store i8* %125, i8** %pr, align 8
  br label %for.cond

for.end.116:                                      ; preds = %if.else, %if.else.4, %if.then.10, %if.else.15, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_render_value(%struct._GimpScanConvert* %sc, %struct._TileManager* %tile_manager, i32 %off_x, i32 %off_y, i8 zeroext %value) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %tile_manager.addr = alloca %struct._TileManager*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct._TileManager* %tile_manager, %struct._TileManager** %tile_manager.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i8 %value, i8* %value.addr, align 1
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %1 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %2 = load i32, i32* %off_x.addr, align 4
  %3 = load i32, i32* %off_y.addr, align 4
  %4 = load i8, i8* %value.addr, align 1
  call void @gimp_scan_convert_render_full(%struct._GimpScanConvert* %0, %struct._TileManager* %1, i32 %2, i32 %3, i32 1, i32 0, i8 zeroext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_compose(%struct._GimpScanConvert* %sc, %struct._TileManager* %tile_manager, i32 %off_x, i32 %off_y) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %tile_manager.addr = alloca %struct._TileManager*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct._TileManager* %tile_manager, %struct._TileManager** %tile_manager.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %1 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %2 = load i32, i32* %off_x.addr, align 4
  %3 = load i32, i32* %off_y.addr, align 4
  call void @gimp_scan_convert_render_full(%struct._GimpScanConvert* %0, %struct._TileManager* %1, i32 %2, i32 %3, i32 0, i32 0, i8 zeroext -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_scan_convert_compose_value(%struct._GimpScanConvert* %sc, %struct._TileManager* %tile_manager, i32 %off_x, i32 %off_y, i32 %value) #0 {
entry:
  %sc.addr = alloca %struct._GimpScanConvert*, align 8
  %tile_manager.addr = alloca %struct._TileManager*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct._GimpScanConvert* %sc, %struct._GimpScanConvert** %sc.addr, align 8
  store %struct._TileManager* %tile_manager, %struct._TileManager** %tile_manager.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %sc.addr, align 8
  %1 = load %struct._TileManager*, %struct._TileManager** %tile_manager.addr, align 8
  %2 = load i32, i32* %off_x.addr, align 4
  %3 = load i32, i32* %off_y.addr, align 4
  %4 = load i32, i32* %value.addr, align 4
  %conv = trunc i32 %4 to i8
  call void @gimp_scan_convert_render_full(%struct._GimpScanConvert* %0, %struct._TileManager* %1, i32 %2, i32 %3, i32 0, i32 0, i8 zeroext %conv)
  ret void
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare i32 @cairo_format_stride_for_width(i32, i32) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare void @cairo_surface_set_device_offset(%struct._cairo_surface*, double, double) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @cairo_set_operator(%struct._cairo*, i32) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_append_path(%struct._cairo*, %struct.cairo_path*) #1

declare void @cairo_set_antialias(%struct._cairo*, i32) #1

declare void @cairo_set_miter_limit(%struct._cairo*, double) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @cairo_set_line_join(%struct._cairo*, i32) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_dash(%struct._cairo*, double*, i32, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_set_fill_rule(%struct._cairo*, i32) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
