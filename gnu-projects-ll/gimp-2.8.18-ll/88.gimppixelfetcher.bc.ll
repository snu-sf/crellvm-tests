; ModuleID = './libgimp/gimppixelfetcher.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPixelFetcher = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, %struct._GimpDrawable*, %struct._GimpTile*, i32, i32 }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_pixel_fetcher_new = private unnamed_addr constant [23 x i8] c"gimp_pixel_fetcher_new\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"width > 0 && height > 0 && bpp > 0\00", align 1
@__func__.gimp_pixel_fetcher_destroy = private unnamed_addr constant [27 x i8] c"gimp_pixel_fetcher_destroy\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pf != NULL\00", align 1
@__func__.gimp_pixel_fetcher_set_edge_mode = private unnamed_addr constant [33 x i8] c"gimp_pixel_fetcher_set_edge_mode\00", align 1
@__func__.gimp_pixel_fetcher_set_bg_color = private unnamed_addr constant [32 x i8] c"gimp_pixel_fetcher_set_bg_color\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_pixel_fetcher_get_pixel = private unnamed_addr constant [29 x i8] c"gimp_pixel_fetcher_get_pixel\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"pixel != NULL\00", align 1
@__func__.gimp_pixel_fetcher_put_pixel = private unnamed_addr constant [29 x i8] c"gimp_pixel_fetcher_put_pixel\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %drawable, i32 %shadow) #0 {
entry:
  %retval = alloca %struct._GimpPixelFetcher*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %shadow.addr = alloca i32, align 4
  %pf = alloca %struct._GimpPixelFetcher*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %shadow, i32* %shadow.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_fetcher_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPixelFetcher* null, %struct._GimpPixelFetcher** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  store i32 %call, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %4)
  store i32 %call2, i32* %height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_bpp(i32 %6)
  store i32 %call4, i32* %bpp, align 4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %7 = load i32, i32* %width, align 4
  %cmp6 = icmp sgt i32 %7, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body.5
  %8 = load i32, i32* %height, align 4
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.11

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %bpp, align 4
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true.8
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true.8, %land.lhs.true, %do.body.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_fetcher_new, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPixelFetcher* null, %struct._GimpPixelFetcher** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %call14 = call noalias i8* @g_slice_alloc0(i64 80)
  %10 = bitcast i8* %call14 to %struct._GimpPixelFetcher*
  store %struct._GimpPixelFetcher* %10, %struct._GimpPixelFetcher** %pf, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id15, align 4
  %13 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %sel_x1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %13, i32 0, i32 4
  %14 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %sel_y1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %14, i32 0, i32 5
  %15 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %sel_x2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %15, i32 0, i32 6
  %16 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %sel_y2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %16, i32 0, i32 7
  %call16 = call i32 @gimp_drawable_mask_bounds(i32 %12, i32* %sel_x1, i32* %sel_y1, i32* %sel_x2, i32* %sel_y2)
  %17 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %col = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %17, i32 0, i32 0
  store i32 -1, i32* %col, align 4
  %18 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %row = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %18, i32 0, i32 1
  store i32 -1, i32* %row, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %img_width = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %20, i32 0, i32 2
  store i32 %19, i32* %img_width, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %img_height = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %22, i32 0, i32 3
  store i32 %21, i32* %img_height, align 4
  %23 = load i32, i32* %bpp, align 4
  %24 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %img_bpp = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %24, i32 0, i32 8
  store i32 %23, i32* %img_bpp, align 4
  %call17 = call i32 @gimp_tile_width() #3
  %25 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %tile_width = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %25, i32 0, i32 9
  store i32 %call17, i32* %tile_width, align 4
  %call18 = call i32 @gimp_tile_height() #3
  %26 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %tile_height = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %26, i32 0, i32 10
  store i32 %call18, i32* %tile_height, align 4
  %27 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %bg_color = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %27, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %28 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %bg_color19 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %28, i32 0, i32 11
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color19, i32 0, i64 1
  store i8 0, i8* %arrayidx20, align 1
  %29 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %bg_color21 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %29, i32 0, i32 11
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color21, i32 0, i64 2
  store i8 0, i8* %arrayidx22, align 1
  %30 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %bg_color23 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %30, i32 0, i32 11
  %arrayidx24 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color23, i32 0, i64 3
  store i8 -1, i8* %arrayidx24, align 1
  %31 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %mode = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %31, i32 0, i32 12
  store i32 0, i32* %mode, align 4
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %drawable25 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %33, i32 0, i32 13
  store %struct._GimpDrawable* %32, %struct._GimpDrawable** %drawable25, align 8
  %34 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %tile = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %34, i32 0, i32 14
  store %struct._GimpTile* null, %struct._GimpTile** %tile, align 8
  %35 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %tile_dirty = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %35, i32 0, i32 15
  store i32 0, i32* %tile_dirty, align 4
  %36 = load i32, i32* %shadow.addr, align 4
  %37 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  %shadow26 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %37, i32 0, i32 16
  store i32 %36, i32* %shadow26, align 4
  %38 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf, align 8
  store %struct._GimpPixelFetcher* %38, %struct._GimpPixelFetcher** %retval
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else
  %39 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %retval
  ret %struct._GimpPixelFetcher* %39
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #2

; Function Attrs: nounwind uwtable
define void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %pf) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %cmp = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pixel_fetcher_destroy, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.5

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %1, i32 0, i32 14
  %2 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %tobool = icmp ne %struct._GimpTile* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %3, i32 0, i32 14
  %4 = load %struct._GimpTile*, %struct._GimpTile** %tile2, align 8
  %5 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_dirty = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %5, i32 0, i32 15
  %6 = load i32, i32* %tile_dirty, align 4
  call void @gimp_tile_unref(%struct._GimpTile* %4, i32 %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %8 = bitcast %struct._GimpPixelFetcher* %7 to i8*
  call void @g_slice_free1(i64 80, i8* %8)
  br label %do.end.5

do.end.5:                                         ; preds = %if.else, %do.body.4
  ret void
}

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %pf, i32 %mode) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %cmp = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_pixel_fetcher_set_edge_mode, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %mode1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %2, i32 0, i32 12
  store i32 %1, i32* %mode1, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %pf, %struct._GimpRGB* %color) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %cmp = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_pixel_fetcher_set_bg_color, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_pixel_fetcher_set_bg_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %2, i32 0, i32 8
  %3 = load i32, i32* %img_bpp, align 4
  switch i32 %3, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %do.end.6
  %4 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %4, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 1
  store i8 -1, i8* %arrayidx, align 1
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %do.end.6, %sw.bb
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %5)
  %6 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color8 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %6, i32 0, i32 11
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color8, i32 0, i64 0
  store i8 %call, i8* %arrayidx9, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end.6
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color11 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %7, i32 0, i32 11
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color11, i32 0, i64 3
  store i8 -1, i8* %arrayidx12, align 1
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %do.end.6, %sw.bb.10
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color14 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %9, i32 0, i32 11
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color14, i32 0, i32 0
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color15 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %10, i32 0, i32 11
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color15, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %11 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color17 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %11, i32 0, i32 11
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color17, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %8, i8* %arraydecay, i8* %add.ptr, i8* %add.ptr19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.4, %do.end.6, %sw.bb.13, %sw.bb.7
  ret void
}

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %pf, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %cmp = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pixel_fetcher_get_pixel, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.91

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %pixel.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pixel_fetcher_get_pixel, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %do.end.91

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %mode = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %2, i32 0, i32 12
  %3 = load i32, i32* %mode, align 4
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %do.end.6
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_x1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %5, i32 0, i32 4
  %6 = load i32, i32* %sel_x1, align 4
  %cmp8 = icmp slt i32 %4, %6
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i32, i32* %x.addr, align 4
  %8 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_x2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %8, i32 0, i32 6
  %9 = load i32, i32* %sel_x2, align 4
  %cmp9 = icmp sge i32 %7, %9
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_y1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %11, i32 0, i32 5
  %12 = load i32, i32* %sel_y1, align 4
  %cmp11 = icmp slt i32 %10, %12
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_y2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %14, i32 0, i32 7
  %15 = load i32, i32* %sel_y2, align 4
  %cmp13 = icmp sge i32 %13, %15
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false, %land.lhs.true
  br label %do.end.91

if.end.15:                                        ; preds = %lor.lhs.false.12, %do.end.6
  %16 = load i32, i32* %x.addr, align 4
  %cmp16 = icmp slt i32 %16, 0
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.15
  %17 = load i32, i32* %x.addr, align 4
  %18 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %18, i32 0, i32 2
  %19 = load i32, i32* %img_width, align 4
  %cmp18 = icmp sge i32 %17, %19
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %20 = load i32, i32* %y.addr, align 4
  %cmp20 = icmp slt i32 %20, 0
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %21 = load i32, i32* %y.addr, align 4
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %22, i32 0, i32 3
  %23 = load i32, i32* %img_height, align 4
  %cmp22 = icmp sge i32 %21, %23
  br i1 %cmp22, label %if.then.23, label %if.end.87

if.then.23:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.19, %lor.lhs.false.17, %if.end.15
  %24 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %mode24 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %24, i32 0, i32 12
  %25 = load i32, i32* %mode24, align 4
  switch i32 %25, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.49
    i32 3, label %sw.bb.73
    i32 4, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.then.23
  %26 = load i32, i32* %x.addr, align 4
  %cmp25 = icmp slt i32 %26, 0
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %sw.bb
  %27 = load i32, i32* %x.addr, align 4
  %28 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width27 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %28, i32 0, i32 2
  %29 = load i32, i32* %img_width27, align 4
  %cmp28 = icmp sge i32 %27, %29
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %lor.lhs.false.26, %sw.bb
  %30 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width30 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %30, i32 0, i32 2
  %31 = load i32, i32* %img_width30, align 4
  %32 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %32, %31
  store i32 %rem, i32* %x.addr, align 4
  %33 = load i32, i32* %x.addr, align 4
  %cmp31 = icmp slt i32 %33, 0
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.29
  %34 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width33 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %34, i32 0, i32 2
  %35 = load i32, i32* %img_width33, align 4
  %36 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %x.addr, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %lor.lhs.false.26
  %37 = load i32, i32* %y.addr, align 4
  %cmp36 = icmp slt i32 %37, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.end.35
  %38 = load i32, i32* %y.addr, align 4
  %39 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height38 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %39, i32 0, i32 3
  %40 = load i32, i32* %img_height38, align 4
  %cmp39 = icmp sge i32 %38, %40
  br i1 %cmp39, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.35
  %41 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height41 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %41, i32 0, i32 3
  %42 = load i32, i32* %img_height41, align 4
  %43 = load i32, i32* %y.addr, align 4
  %rem42 = srem i32 %43, %42
  store i32 %rem42, i32* %y.addr, align 4
  %44 = load i32, i32* %y.addr, align 4
  %cmp43 = icmp slt i32 %44, 0
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.then.40
  %45 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height45 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %45, i32 0, i32 3
  %46 = load i32, i32* %img_height45, align 4
  %47 = load i32, i32* %y.addr, align 4
  %add46 = add nsw i32 %47, %46
  store i32 %add46, i32* %y.addr, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false.37
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.23
  %48 = load i32, i32* %x.addr, align 4
  %49 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width50 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %49, i32 0, i32 2
  %50 = load i32, i32* %img_width50, align 4
  %sub = sub nsw i32 %50, 1
  %cmp51 = icmp sgt i32 %48, %sub
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.49
  %51 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_width52 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %51, i32 0, i32 2
  %52 = load i32, i32* %img_width52, align 4
  %sub53 = sub nsw i32 %52, 1
  br label %cond.end.57

cond.false:                                       ; preds = %sw.bb.49
  %53 = load i32, i32* %x.addr, align 4
  %cmp54 = icmp slt i32 %53, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false
  br label %cond.end

cond.false.56:                                    ; preds = %cond.false
  %54 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.56, %cond.true.55
  %cond = phi i32 [ 0, %cond.true.55 ], [ %54, %cond.false.56 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end, %cond.true
  %cond58 = phi i32 [ %sub53, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond58, i32* %x.addr, align 4
  %55 = load i32, i32* %y.addr, align 4
  %56 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height59 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %56, i32 0, i32 3
  %57 = load i32, i32* %img_height59, align 4
  %sub60 = sub nsw i32 %57, 1
  %cmp61 = icmp sgt i32 %55, %sub60
  br i1 %cmp61, label %cond.true.62, label %cond.false.65

cond.true.62:                                     ; preds = %cond.end.57
  %58 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_height63 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %58, i32 0, i32 3
  %59 = load i32, i32* %img_height63, align 4
  %sub64 = sub nsw i32 %59, 1
  br label %cond.end.71

cond.false.65:                                    ; preds = %cond.end.57
  %60 = load i32, i32* %y.addr, align 4
  %cmp66 = icmp slt i32 %60, 0
  br i1 %cmp66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.65
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.false.65
  %61 = load i32, i32* %y.addr, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ 0, %cond.true.67 ], [ %61, %cond.false.68 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.62
  %cond72 = phi i32 [ %sub64, %cond.true.62 ], [ %cond70, %cond.end.69 ]
  store i32 %cond72, i32* %y.addr, align 4
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.then.23
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.73
  %62 = load i32, i32* %i, align 4
  %63 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %63, i32 0, i32 8
  %64 = load i32, i32* %img_bpp, align 4
  %cmp74 = icmp slt i32 %62, %64
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %i, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.end.91

sw.bb.75:                                         ; preds = %if.then.23
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.84, %sw.bb.75
  %68 = load i32, i32* %i, align 4
  %69 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp77 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %69, i32 0, i32 8
  %70 = load i32, i32* %img_bpp77, align 4
  %cmp78 = icmp slt i32 %68, %70
  br i1 %cmp78, label %for.body.79, label %for.end.86

for.body.79:                                      ; preds = %for.cond.76
  %71 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %71 to i64
  %72 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %bg_color = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %72, i32 0, i32 11
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 %idxprom80
  %73 = load i8, i8* %arrayidx81, align 1
  %74 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %74 to i64
  %75 = load i8*, i8** %pixel.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %75, i64 %idxprom82
  store i8 %73, i8* %arrayidx83, align 1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.79
  %76 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %76, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.76

for.end.86:                                       ; preds = %for.cond.76
  br label %do.end.91

sw.default:                                       ; preds = %if.then.23
  br label %do.end.91

sw.epilog:                                        ; preds = %cond.end.71, %if.end.48
  br label %if.end.87

if.end.87:                                        ; preds = %sw.epilog, %lor.lhs.false.21
  %77 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %78 = load i32, i32* %x.addr, align 4
  %79 = load i32, i32* %y.addr, align 4
  %call = call i8* @gimp_pixel_fetcher_provide_tile(%struct._GimpPixelFetcher* %77, i32 %78, i32 %79)
  store i8* %call, i8** %p, align 8
  %80 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp88 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %80, i32 0, i32 8
  %81 = load i32, i32* %img_bpp88, align 4
  store i32 %81, i32* %i, align 4
  br label %do.body.89

do.body.89:                                       ; preds = %do.cond, %if.end.87
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %pixel.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr90, i8** %pixel.addr, align 8
  store i8 %83, i8* %84, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body.89
  %85 = load i32, i32* %i, align 4
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body.89, label %do.end.91

do.end.91:                                        ; preds = %if.else, %if.else.4, %if.then.14, %for.end, %for.end.86, %sw.default, %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pixel_fetcher_provide_tile(%struct._GimpPixelFetcher* %pf, i32 %x, i32 %y) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %coloff = alloca i32, align 4
  %rowoff = alloca i32, align 4
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_width = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %1, i32 0, i32 9
  %2 = load i32, i32* %tile_width, align 4
  %div = sdiv i32 %0, %2
  store i32 %div, i32* %col, align 4
  %3 = load i32, i32* %x.addr, align 4
  %4 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_width1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %4, i32 0, i32 9
  %5 = load i32, i32* %tile_width1, align 4
  %rem = srem i32 %3, %5
  store i32 %rem, i32* %coloff, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_height = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %7, i32 0, i32 10
  %8 = load i32, i32* %tile_height, align 4
  %div2 = sdiv i32 %6, %8
  store i32 %div2, i32* %row, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_height3 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %10, i32 0, i32 10
  %11 = load i32, i32* %tile_height3, align 4
  %rem4 = srem i32 %9, %11
  store i32 %rem4, i32* %rowoff, align 4
  %12 = load i32, i32* %col, align 4
  %13 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %col5 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %13, i32 0, i32 0
  %14 = load i32, i32* %col5, align 4
  %cmp = icmp ne i32 %12, %14
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i32, i32* %row, align 4
  %16 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %row6 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %16, i32 0, i32 1
  %17 = load i32, i32* %row6, align 4
  %cmp7 = icmp ne i32 %15, %17
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %18 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %18, i32 0, i32 14
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %cmp9 = icmp eq %struct._GimpTile* %19, null
  br i1 %cmp9, label %if.then, label %if.end.19

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %entry
  %20 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile10 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %20, i32 0, i32 14
  %21 = load %struct._GimpTile*, %struct._GimpTile** %tile10, align 8
  %cmp11 = icmp ne %struct._GimpTile* %21, null
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile13 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %22, i32 0, i32 14
  %23 = load %struct._GimpTile*, %struct._GimpTile** %tile13, align 8
  %24 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_dirty = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %24, i32 0, i32 15
  %25 = load i32, i32* %tile_dirty, align 4
  call void @gimp_tile_unref(%struct._GimpTile* %23, i32 %25)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %26 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %26, i32 0, i32 13
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %28, i32 0, i32 16
  %29 = load i32, i32* %shadow, align 4
  %30 = load i32, i32* %row, align 4
  %31 = load i32, i32* %col, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %27, i32 %29, i32 %30, i32 %31)
  %32 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile14 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %32, i32 0, i32 14
  store %struct._GimpTile* %call, %struct._GimpTile** %tile14, align 8
  %33 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_dirty15 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %33, i32 0, i32 15
  store i32 0, i32* %tile_dirty15, align 4
  %34 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile16 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %34, i32 0, i32 14
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile16, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %35)
  %36 = load i32, i32* %col, align 4
  %37 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %col17 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %37, i32 0, i32 0
  store i32 %36, i32* %col17, align 4
  %38 = load i32, i32* %row, align 4
  %39 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %row18 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %39, i32 0, i32 1
  store i32 %38, i32* %row18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %lor.lhs.false.8
  %40 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile20 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %40, i32 0, i32 14
  %41 = load %struct._GimpTile*, %struct._GimpTile** %tile20, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %41, i32 0, i32 6
  %42 = load i8*, i8** %data, align 8
  %43 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %43, i32 0, i32 8
  %44 = load i32, i32* %img_bpp, align 4
  %45 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile21 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %45, i32 0, i32 14
  %46 = load %struct._GimpTile*, %struct._GimpTile** %tile21, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %46, i32 0, i32 0
  %47 = load i32, i32* %ewidth, align 4
  %48 = load i32, i32* %rowoff, align 4
  %mul = mul i32 %47, %48
  %49 = load i32, i32* %coloff, align 4
  %add = add i32 %mul, %49
  %mul22 = mul i32 %44, %add
  %idx.ext = zext i32 %mul22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher* %pf, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %pf.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpPixelFetcher* %pf, %struct._GimpPixelFetcher** %pf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %cmp = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pixel_fetcher_put_pixel, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %pixel.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pixel_fetcher_put_pixel, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_x1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %3, i32 0, i32 4
  %4 = load i32, i32* %sel_x1, align 4
  %cmp7 = icmp slt i32 %2, %4
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.6
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_x2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %6, i32 0, i32 6
  %7 = load i32, i32* %sel_x2, align 4
  %cmp8 = icmp sge i32 %5, %7
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %y.addr, align 4
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_y1 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %9, i32 0, i32 5
  %10 = load i32, i32* %sel_y1, align 4
  %cmp10 = icmp slt i32 %8, %10
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %sel_y2 = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %12, i32 0, i32 7
  %13 = load i32, i32* %sel_y2, align 4
  %cmp12 = icmp sge i32 %11, %13
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false, %do.end.6
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.11
  %14 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %call = call i8* @gimp_pixel_fetcher_provide_tile(%struct._GimpPixelFetcher* %14, i32 %15, i32 %16)
  store i8* %call, i8** %p, align 8
  %17 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %img_bpp = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %17, i32 0, i32 8
  %18 = load i32, i32* %img_bpp, align 4
  store i32 %18, i32* %i, align 4
  br label %do.body.15

do.body.15:                                       ; preds = %do.cond, %if.end.14
  %19 = load i8*, i8** %pixel.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %pixel.addr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 %20, i8* %21, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body.15
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body.15, label %do.end.17

do.end.17:                                        ; preds = %do.cond
  %23 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pf.addr, align 8
  %tile_dirty = getelementptr inbounds %struct._GimpPixelFetcher, %struct._GimpPixelFetcher* %23, i32 0, i32 15
  store i32 1, i32* %tile_dirty, align 4
  br label %return

return:                                           ; preds = %do.end.17, %if.then.13, %if.else.4, %if.else
  ret void
}

declare %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
