; ModuleID = './app/base/tile-pyramid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TilePyramid = type { i32, i32, i32, i32, [10 x %struct._TileManager*], i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.tile_pyramid_new = private unnamed_addr constant [17 x i8] c"tile_pyramid_new\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tile-pyramid.c\00", align 1
@__func__.tile_pyramid_destroy = private unnamed_addr constant [21 x i8] c"tile_pyramid_destroy\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"pyramid != NULL\00", align 1
@__func__.tile_pyramid_get_tiles = private unnamed_addr constant [23 x i8] c"tile_pyramid_get_tiles\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"pyramid->tiles[level] != NULL\00", align 1
@__func__.tile_pyramid_invalidate_area = private unnamed_addr constant [29 x i8] c"tile_pyramid_invalidate_area\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"x >= 0 && y >= 0\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"width >= 0 && height >= 0\00", align 1
@__func__.tile_pyramid_set_validate_proc = private unnamed_addr constant [31 x i8] c"tile_pyramid_set_validate_proc\00", align 1
@__func__.tile_pyramid_get_width = private unnamed_addr constant [23 x i8] c"tile_pyramid_get_width\00", align 1
@__func__.tile_pyramid_get_height = private unnamed_addr constant [24 x i8] c"tile_pyramid_get_height\00", align 1
@__func__.tile_pyramid_get_bpp = private unnamed_addr constant [21 x i8] c"tile_pyramid_get_bpp\00", align 1
@__func__.tile_pyramid_get_memsize = private unnamed_addr constant [25 x i8] c"tile_pyramid_get_memsize\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TilePyramid* @tile_pyramid_new(i32 %type, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TilePyramid*, align 8
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pyramid = alloca %struct._TilePyramid*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_pyramid_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TilePyramid* null, %struct._TilePyramid** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_pyramid_new, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TilePyramid* null, %struct._TilePyramid** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call noalias i8* @g_slice_alloc0(i64 104)
  %2 = bitcast i8* %call to %struct._TilePyramid*
  store %struct._TilePyramid* %2, %struct._TilePyramid** %pyramid, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %type7 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %4, i32 0, i32 0
  store i32 %3, i32* %type7, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %width8 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %6, i32 0, i32 1
  store i32 %5, i32* %width8, align 4
  %7 = load i32, i32* %height.addr, align 4
  %8 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %height9 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %8, i32 0, i32 2
  store i32 %7, i32* %height9, align 4
  %9 = load i32, i32* %type.addr, align 4
  switch i32 %9, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.10
    i32 0, label %sw.bb.12
    i32 1, label %sw.bb.14
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end.6
  %10 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %bytes = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %10, i32 0, i32 3
  store i32 1, i32* %bytes, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end.6
  %11 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %bytes11 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %11, i32 0, i32 3
  store i32 2, i32* %bytes11, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end.6
  %12 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %bytes13 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %12, i32 0, i32 3
  store i32 3, i32* %bytes13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end.6
  %13 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %bytes15 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %13, i32 0, i32 3
  store i32 4, i32* %bytes15, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end.6, %do.end.6
  br label %do.body.17

do.body.17:                                       ; preds = %sw.bb.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_pyramid_new, i32 0, i32 0), i8* null) #3
  unreachable

do.end.18:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.6, %do.end.18, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %16 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %bytes19 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %16, i32 0, i32 3
  %17 = load i32, i32* %bytes19, align 4
  %call20 = call %struct._TileManager* @tile_manager_new(i32 %14, i32 %15, i32 %17)
  %18 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %18, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 0
  store %struct._TileManager* %call20, %struct._TileManager** %arrayidx, align 8
  %19 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  store %struct._TilePyramid* %19, %struct._TilePyramid** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.4, %if.else
  %20 = load %struct._TilePyramid*, %struct._TilePyramid** %retval
  ret %struct._TilePyramid* %20
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #2

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @tile_pyramid_destroy(%struct._TilePyramid* %pyramid) #0 {
entry:
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %level = alloca i32, align 4
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tile_pyramid_destroy, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.3

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %level, align 4
  %2 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %2, i32 0, i32 5
  %3 = load i32, i32* %top_level, align 4
  %cmp1 = icmp sle i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %level, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 %idxprom
  %6 = load %struct._TileManager*, %struct._TileManager** %arrayidx, align 8
  call void @tile_manager_unref(%struct._TileManager* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %level, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.2

do.body.2:                                        ; preds = %for.end
  %8 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %9 = bitcast %struct._TilePyramid* %8 to i8*
  call void @g_slice_free1(i64 104, i8* %9)
  br label %do.end.3

do.end.3:                                         ; preds = %if.else, %do.body.2
  ret void
}

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @tile_pyramid_get_level(i32 %width, i32 %height, double %scale) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %next = alloca double, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %level = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store double 1.000000e+00, double* %next, align 8
  %0 = load i32, i32* %width.addr, align 4
  store i32 %0, i32* %w, align 4
  %1 = load i32, i32* %height.addr, align 4
  store i32 %1, i32* %h, align 4
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %level, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %w, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, i32* %w, align 4
  %4 = load i32, i32* %h, align 4
  %shr1 = lshr i32 %4, 1
  store i32 %shr1, i32* %h, align 4
  %5 = load i32, i32* %w, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %h, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %w, align 4
  %cmp4 = icmp ule i32 %7, 64
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %h, align 4
  %cmp5 = icmp ule i32 %8, 64
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %9 = load double, double* %next, align 8
  %div = fdiv double %9, 2.000000e+00
  store double %div, double* %next, align 8
  %10 = load double, double* %next, align 8
  %11 = load double, double* %scale.addr, align 8
  %cmp8 = fcmp olt double %10, %11
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %for.end

if.end.10:                                        ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %12 = load i32, i32* %level, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %if.then.6, %if.then, %for.cond
  %13 = load i32, i32* %level, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct._TileManager* @tile_pyramid_get_tiles(%struct._TilePyramid* %pyramid, i32 %level, i32* %is_premult) #0 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %level.addr = alloca i32, align 4
  %is_premult.addr = alloca i32*, align 8
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32* %is_premult, i32** %is_premult.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tile_pyramid_get_tiles, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %2 = load i32, i32* %level.addr, align 4
  %call = call i32 @tile_pyramid_alloc_levels(%struct._TilePyramid* %1, i32 %2)
  store i32 %call, i32* %level.addr, align 4
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i32, i32* %level.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 %idxprom
  %5 = load %struct._TileManager*, %struct._TileManager** %arrayidx, align 8
  %cmp2 = icmp ne %struct._TileManager* %5, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tile_pyramid_get_tiles, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %6 = load i32*, i32** %is_premult.addr, align 8
  %tobool = icmp ne i32* %6, null
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end.6
  %7 = load i32, i32* %level.addr, align 4
  %cmp8 = icmp sgt i32 %7, 0
  %conv = zext i1 %cmp8 to i32
  %8 = load i32*, i32** %is_premult.addr, align 8
  store i32 %conv, i32* %8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.end.6
  %9 = load i32, i32* %level.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles11 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %10, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles11, i32 0, i64 %idxprom10
  %11 = load %struct._TileManager*, %struct._TileManager** %arrayidx12, align 8
  store %struct._TileManager* %11, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.else.4, %if.else
  %12 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_pyramid_alloc_levels(%struct._TilePyramid* %pyramid, i32 %top_level) #0 {
entry:
  %retval = alloca i32, align 4
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %top_level.addr = alloca i32, align 4
  %level = alloca i32, align 4
  %proc = alloca void (%struct._TileManager*, %struct._Tile*, i8*)*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  store i32 %top_level, i32* %top_level.addr, align 4
  %0 = load i32, i32* %top_level.addr, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %top_level.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 9, %cond.false ]
  store i32 %cond, i32* %top_level.addr, align 4
  %2 = load i32, i32* %top_level.addr, align 4
  %3 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level1 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %3, i32 0, i32 5
  %4 = load i32, i32* %top_level1, align 4
  %cmp2 = icmp sle i32 %2, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* %top_level.addr, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level3 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %6, i32 0, i32 5
  %7 = load i32, i32* %top_level3, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %level, align 4
  %9 = load i32, i32* %top_level.addr, align 4
  %cmp4 = icmp sle i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %width5 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %10, i32 0, i32 1
  %11 = load i32, i32* %width5, align 4
  %12 = load i32, i32* %level, align 4
  %shr = lshr i32 %11, %12
  store i32 %shr, i32* %width, align 4
  %13 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %height6 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %13, i32 0, i32 2
  %14 = load i32, i32* %height6, align 4
  %15 = load i32, i32* %level, align 4
  %shr7 = lshr i32 %14, %15
  store i32 %shr7, i32* %height, align 4
  %16 = load i32, i32* %width, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %height, align 4
  %cmp9 = icmp eq i32 %17, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %for.body
  %18 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level11 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %18, i32 0, i32 5
  %19 = load i32, i32* %top_level11, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* %width, align 4
  %cmp13 = icmp sle i32 %20, 32
  br i1 %cmp13, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.12
  %21 = load i32, i32* %height, align 4
  %cmp14 = icmp sle i32 %21, 32
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true
  %22 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level16 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %22, i32 0, i32 5
  %23 = load i32, i32* %top_level16, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.end.12
  %24 = load i32, i32* %level, align 4
  %25 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level18 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %25, i32 0, i32 5
  store i32 %24, i32* %top_level18, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %bytes = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %28, i32 0, i32 3
  %29 = load i32, i32* %bytes, align 4
  %call = call %struct._TileManager* @tile_manager_new(i32 %26, i32 %27, i32 %29)
  %30 = load i32, i32* %level, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %31, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 %idxprom
  store %struct._TileManager* %call, %struct._TileManager** %arrayidx, align 8
  %32 = load i32, i32* %level, align 4
  %cmp19 = icmp eq i32 %32, 1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  store void (%struct._TileManager*, %struct._Tile*, i8*)* bitcast (void (%struct._TileManager*, %struct._Tile*, %struct._TileManager*)* @tile_pyramid_validate_tile to void (%struct._TileManager*, %struct._Tile*, i8*)*), void (%struct._TileManager*, %struct._Tile*, i8*)** %proc, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.17
  store void (%struct._TileManager*, %struct._Tile*, i8*)* bitcast (void (%struct._TileManager*, %struct._Tile*, %struct._TileManager*)* @tile_pyramid_validate_upper_tile to void (%struct._TileManager*, %struct._Tile*, i8*)*), void (%struct._TileManager*, %struct._Tile*, i8*)** %proc, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %33 = load i32, i32* %level, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles23 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %34, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles23, i32 0, i64 %idxprom22
  %35 = load %struct._TileManager*, %struct._TileManager** %arrayidx24, align 8
  %36 = load void (%struct._TileManager*, %struct._Tile*, i8*)*, void (%struct._TileManager*, %struct._Tile*, i8*)** %proc, align 8
  %37 = load i32, i32* %level, align 4
  %sub = sub nsw i32 %37, 1
  %idxprom25 = sext i32 %sub to i64
  %38 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles26 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %38, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles26, i32 0, i64 %idxprom25
  %39 = load %struct._TileManager*, %struct._TileManager** %arrayidx27, align 8
  %40 = bitcast %struct._TileManager* %39 to i8*
  call void @tile_manager_set_validate_proc(%struct._TileManager* %35, void (%struct._TileManager*, %struct._Tile*, i8*)* %36, i8* %40)
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %41 = load i32, i32* %level, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level28 = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %42, i32 0, i32 5
  %43 = load i32, i32* %top_level28, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then.10, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define void @tile_pyramid_invalidate_area(%struct._TilePyramid* %pyramid, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %level = alloca i32, align 4
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_pyramid_invalidate_area, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp sge i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_pyramid_invalidate_area, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %3 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp sge i32 %3, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.13

land.lhs.true.10:                                 ; preds = %do.body.8
  %4 = load i32, i32* %height.addr, align 4
  %cmp11 = icmp sge i32 %4, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.10
  br label %if.end.14

if.else.13:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_pyramid_invalidate_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %for.end

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %5 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp eq i32 %5, 0
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.15
  %6 = load i32, i32* %height.addr, align 4
  %cmp17 = icmp eq i32 %6, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %do.end.15
  br label %for.end

if.end.19:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %7 = load i32, i32* %level, align 4
  %8 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %8, i32 0, i32 5
  %9 = load i32, i32* %top_level, align 4
  %cmp20 = icmp sle i32 %7, %9
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %level, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %11, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 %idxprom
  %12 = load %struct._TileManager*, %struct._TileManager** %arrayidx, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp sgt i32 %15, 1
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 1, %cond.false ]
  %17 = load i32, i32* %height.addr, align 4
  %cmp22 = icmp sgt i32 %17, 1
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end
  %18 = load i32, i32* %height.addr, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %18, %cond.true.23 ], [ 1, %cond.false.24 ]
  call void @tile_manager_invalidate_area(%struct._TileManager* %12, i32 %13, i32 %14, i32 %cond, i32 %cond26)
  %19 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %19, 1
  store i32 %shr, i32* %x.addr, align 4
  %20 = load i32, i32* %y.addr, align 4
  %shr27 = ashr i32 %20, 1
  store i32 %shr27, i32* %y.addr, align 4
  %21 = load i32, i32* %width.addr, align 4
  %shr28 = ashr i32 %21, 1
  store i32 %shr28, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %shr29 = ashr i32 %22, 1
  store i32 %shr29, i32* %height.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.25
  %23 = load i32, i32* %level, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.5, %if.else.13, %if.then.18, %for.cond
  ret void
}

declare void @tile_manager_invalidate_area(%struct._TileManager*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @tile_pyramid_set_validate_proc(%struct._TilePyramid* %pyramid, void (%struct._TileManager*, %struct._Tile*, i8*)* %proc, i8* %user_data) #0 {
entry:
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %proc.addr = alloca void (%struct._TileManager*, %struct._Tile*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  store void (%struct._TileManager*, %struct._Tile*, i8*)* %proc, void (%struct._TileManager*, %struct._Tile*, i8*)** %proc.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tile_pyramid_set_validate_proc, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 0
  %2 = load %struct._TileManager*, %struct._TileManager** %arrayidx, align 8
  %3 = load void (%struct._TileManager*, %struct._Tile*, i8*)*, void (%struct._TileManager*, %struct._Tile*, i8*)** %proc.addr, align 8
  %4 = load i8*, i8** %user_data.addr, align 8
  call void @tile_manager_set_validate_proc(%struct._TileManager* %2, void (%struct._TileManager*, %struct._Tile*, i8*)* %3, i8* %4)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @tile_manager_set_validate_proc(%struct._TileManager*, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @tile_pyramid_get_width(%struct._TilePyramid* %pyramid) #0 {
entry:
  %retval = alloca i32, align 4
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tile_pyramid_get_width, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %width = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @tile_pyramid_get_height(%struct._TilePyramid* %pyramid) #0 {
entry:
  %retval = alloca i32, align 4
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tile_pyramid_get_height, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %height = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %1, i32 0, i32 2
  %2 = load i32, i32* %height, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @tile_pyramid_get_bpp(%struct._TilePyramid* %pyramid) #0 {
entry:
  %retval = alloca i32, align 4
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tile_pyramid_get_bpp, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %bytes = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %1, i32 0, i32 3
  %2 = load i32, i32* %bytes, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i64 @tile_pyramid_get_memsize(%struct._TilePyramid* %pyramid) #0 {
entry:
  %retval = alloca i64, align 8
  %pyramid.addr = alloca %struct._TilePyramid*, align 8
  %memsize = alloca i64, align 8
  %level = alloca i32, align 4
  store %struct._TilePyramid* %pyramid, %struct._TilePyramid** %pyramid.addr, align 8
  store i64 104, i64* %memsize, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %cmp = icmp ne %struct._TilePyramid* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tile_pyramid_get_memsize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %level, align 4
  %2 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %top_level = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %2, i32 0, i32 5
  %3 = load i32, i32* %top_level, align 4
  %cmp1 = icmp sle i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %level, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid.addr, align 8
  %tiles = getelementptr inbounds %struct._TilePyramid, %struct._TilePyramid* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x %struct._TileManager*], [10 x %struct._TileManager*]* %tiles, i32 0, i64 %idxprom
  %6 = load %struct._TileManager*, %struct._TileManager** %arrayidx, align 8
  %call = call i64 @tile_manager_get_memsize(%struct._TileManager* %6, i32 1)
  %7 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %7, %call
  store i64 %add, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %level, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %memsize, align 8
  store i64 %9, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @tile_manager_get_memsize(%struct._TileManager*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tile_pyramid_validate_tile(%struct._TileManager* %tm, %struct._Tile* %tile, %struct._TileManager* %tm_below) #0 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %tm_below.addr = alloca %struct._TileManager*, align 8
  %tile_col = alloca i32, align 4
  %tile_row = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %source = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._TileManager* %tm_below, %struct._TileManager** %tm_below.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_col_row(%struct._TileManager* %0, %struct._Tile* %1, i32* %tile_col, i32* %tile_row)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct._TileManager*, %struct._TileManager** %tm_below.addr, align 8
  %5 = load i32, i32* %tile_col, align 4
  %mul = mul nsw i32 %5, 2
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %6
  %7 = load i32, i32* %tile_row, align 4
  %mul4 = mul nsw i32 %7, 2
  %8 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %mul4, %8
  %call = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %4, i32 %add, i32 %add5, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %source, align 8
  %9 = load %struct._Tile*, %struct._Tile** %source, align 8
  %tobool = icmp ne %struct._Tile* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %11 = load %struct._Tile*, %struct._Tile** %source, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  call void @tile_pyramid_write_quarter(%struct._Tile* %10, %struct._Tile* %11, i32 %12, i32 %13)
  %14 = load %struct._Tile*, %struct._Tile** %source, align 8
  call void @tile_release(%struct._Tile* %14, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_pyramid_validate_upper_tile(%struct._TileManager* %tm, %struct._Tile* %tile, %struct._TileManager* %tm_below) #0 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %tm_below.addr = alloca %struct._TileManager*, align 8
  %tile_col = alloca i32, align 4
  %tile_row = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %source = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._TileManager* %tm_below, %struct._TileManager** %tm_below.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_col_row(%struct._TileManager* %0, %struct._Tile* %1, i32* %tile_col, i32* %tile_row)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct._TileManager*, %struct._TileManager** %tm_below.addr, align 8
  %5 = load i32, i32* %tile_col, align 4
  %mul = mul nsw i32 %5, 2
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %6
  %7 = load i32, i32* %tile_row, align 4
  %mul4 = mul nsw i32 %7, 2
  %8 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %mul4, %8
  %call = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %4, i32 %add, i32 %add5, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %source, align 8
  %9 = load %struct._Tile*, %struct._Tile** %source, align 8
  %tobool = icmp ne %struct._Tile* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %11 = load %struct._Tile*, %struct._Tile** %source, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  call void @tile_pyramid_write_upper_quarter(%struct._Tile* %10, %struct._Tile* %11, i32 %12, i32 %13)
  %14 = load %struct._Tile*, %struct._Tile** %source, align 8
  call void @tile_release(%struct._Tile* %14, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

declare void @tile_manager_get_tile_col_row(%struct._TileManager*, %struct._Tile*, i32*, i32*) #1

declare %struct._Tile* @tile_manager_get_at(%struct._TileManager*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tile_pyramid_write_quarter(%struct._Tile* %dest, %struct._Tile* %src, i32 %i, i32 %j) #0 {
entry:
  %dest.addr = alloca %struct._Tile*, align 8
  %src.addr = alloca %struct._Tile*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %src_data = alloca i8*, align 8
  %dest_data = alloca i8*, align 8
  %src_ewidth = alloca i32, align 4
  %src_eheight = alloca i32, align 4
  %dest_ewidth = alloca i32, align 4
  %bpp = alloca i32, align 4
  %y = alloca i32, align 4
  %src0 = alloca i8*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %src3 = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %x = alloca i32, align 4
  %a = alloca i32, align 4
  %a179 = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  store %struct._Tile* %dest, %struct._Tile** %dest.addr, align 8
  store %struct._Tile* %src, %struct._Tile** %src.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call = call i8* @tile_data_pointer(%struct._Tile* %0, i32 0, i32 0)
  store i8* %call, i8** %src_data, align 8
  %1 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %2, 64
  %div = sdiv i32 %mul, 2
  %3 = load i32, i32* %j.addr, align 4
  %mul1 = mul nsw i32 %3, 64
  %div2 = sdiv i32 %mul1, 2
  %call3 = call i8* @tile_data_pointer(%struct._Tile* %1, i32 %div, i32 %div2)
  store i8* %call3, i8** %dest_data, align 8
  %4 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call4 = call i32 @tile_ewidth(%struct._Tile* %4)
  store i32 %call4, i32* %src_ewidth, align 4
  %5 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call5 = call i32 @tile_eheight(%struct._Tile* %5)
  store i32 %call5, i32* %src_eheight, align 4
  %6 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %call6 = call i32 @tile_ewidth(%struct._Tile* %6)
  store i32 %call6, i32* %dest_ewidth, align 4
  %7 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %call7 = call i32 @tile_bpp(%struct._Tile* %7)
  store i32 %call7, i32* %bpp, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.331, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %src_eheight, align 4
  %div8 = sdiv i32 %9, 2
  %cmp = icmp slt i32 %8, %div8
  br i1 %cmp, label %for.body, label %for.end.333

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %src_data, align 8
  store i8* %10, i8** %src0, align 8
  %11 = load i8*, i8** %src_data, align 8
  %12 = load i32, i32* %bpp, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %13 = load i8*, i8** %src0, align 8
  %14 = load i32, i32* %bpp, align 4
  %15 = load i32, i32* %src_ewidth, align 4
  %mul9 = mul nsw i32 %14, %15
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 %idx.ext10
  store i8* %add.ptr11, i8** %src2, align 8
  %16 = load i8*, i8** %src1, align 8
  %17 = load i32, i32* %bpp, align 4
  %18 = load i32, i32* %src_ewidth, align 4
  %mul12 = mul nsw i32 %17, %18
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 %idx.ext13
  store i8* %add.ptr14, i8** %src3, align 8
  %19 = load i8*, i8** %dest_data, align 8
  store i8* %19, i8** %dst, align 8
  %20 = load i32, i32* %bpp, align 4
  switch i32 %20, label %sw.epilog.323 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.35
    i32 3, label %sw.bb.114
    i32 4, label %sw.bb.173
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %sw.bb
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %src_ewidth, align 4
  %div16 = sdiv i32 %22, 2
  %cmp17 = icmp slt i32 %21, %div16
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %23 = load i8*, i8** %src0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %24 to i32
  %25 = load i8*, i8** %src1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %26 to i32
  %add = add nsw i32 %conv, %conv20
  %27 = load i8*, i8** %src2, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %28 to i32
  %add23 = add nsw i32 %add, %conv22
  %29 = load i8*, i8** %src3, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %add26 = add nsw i32 %add23, %conv25
  %add27 = add nsw i32 %add26, 2
  %shr = ashr i32 %add27, 2
  %conv28 = trunc i32 %shr to i8
  %31 = load i8*, i8** %dst, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1
  %32 = load i8*, i8** %dst, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %add.ptr30, i8** %dst, align 8
  %33 = load i8*, i8** %src0, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr31, i8** %src0, align 8
  %34 = load i8*, i8** %src1, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr32, i8** %src1, align 8
  %35 = load i8*, i8** %src2, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr33, i8** %src2, align 8
  %36 = load i8*, i8** %src3, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %add.ptr34, i8** %src3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %37 = load i32, i32* %x, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %sw.epilog.323

sw.bb.35:                                         ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.111, %sw.bb.35
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %src_ewidth, align 4
  %div37 = sdiv i32 %39, 2
  %cmp38 = icmp slt i32 %38, %div37
  br i1 %cmp38, label %for.body.40, label %for.end.113

for.body.40:                                      ; preds = %for.cond.36
  %40 = load i8*, i8** %src0, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %41 to i32
  %42 = load i8*, i8** %src1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %43 to i32
  %add45 = add nsw i32 %conv42, %conv44
  %44 = load i8*, i8** %src2, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %45 to i32
  %add48 = add nsw i32 %add45, %conv47
  %46 = load i8*, i8** %src3, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %47 to i32
  %add51 = add nsw i32 %add48, %conv50
  store i32 %add51, i32* %a, align 4
  %48 = load i32, i32* %a, align 4
  switch i32 %48, label %sw.default [
    i32 0, label %sw.bb.52
    i32 1020, label %sw.bb.55
  ]

sw.bb.52:                                         ; preds = %for.body.40
  %49 = load i8*, i8** %dst, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %arrayidx53, align 1
  %50 = load i8*, i8** %dst, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %arrayidx54, align 1
  br label %sw.epilog

sw.bb.55:                                         ; preds = %for.body.40
  %51 = load i8*, i8** %src0, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %52 to i32
  %53 = load i8*, i8** %src1, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %54 to i32
  %add60 = add nsw i32 %conv57, %conv59
  %55 = load i8*, i8** %src2, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %56 to i32
  %add63 = add nsw i32 %add60, %conv62
  %57 = load i8*, i8** %src3, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %58 to i32
  %add66 = add nsw i32 %add63, %conv65
  %add67 = add nsw i32 %add66, 2
  %shr68 = ashr i32 %add67, 2
  %conv69 = trunc i32 %shr68 to i8
  %59 = load i8*, i8** %dst, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %conv69, i8* %arrayidx70, align 1
  %60 = load i8*, i8** %dst, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 -1, i8* %arrayidx71, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.40
  %61 = load i8*, i8** %src0, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %62 to i32
  %63 = load i8*, i8** %src0, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %64 to i32
  %add76 = add nsw i32 %conv75, 1
  %mul77 = mul nsw i32 %conv73, %add76
  %65 = load i8*, i8** %src1, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %66 to i32
  %67 = load i8*, i8** %src1, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %68 to i32
  %add82 = add nsw i32 %conv81, 1
  %mul83 = mul nsw i32 %conv79, %add82
  %add84 = add nsw i32 %mul77, %mul83
  %69 = load i8*, i8** %src2, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %70 to i32
  %71 = load i8*, i8** %src2, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %72 to i32
  %add89 = add nsw i32 %conv88, 1
  %mul90 = mul nsw i32 %conv86, %add89
  %add91 = add nsw i32 %add84, %mul90
  %73 = load i8*, i8** %src3, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %74 to i32
  %75 = load i8*, i8** %src3, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %76 to i32
  %add96 = add nsw i32 %conv95, 1
  %mul97 = mul nsw i32 %conv93, %add96
  %add98 = add nsw i32 %add91, %mul97
  %shr99 = ashr i32 %add98, 10
  %conv100 = trunc i32 %shr99 to i8
  %77 = load i8*, i8** %dst, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %conv100, i8* %arrayidx101, align 1
  %78 = load i32, i32* %a, align 4
  %add102 = add i32 %78, 2
  %shr103 = lshr i32 %add102, 2
  %conv104 = trunc i32 %shr103 to i8
  %79 = load i8*, i8** %dst, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %conv104, i8* %arrayidx105, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.55, %sw.bb.52
  %80 = load i8*, i8** %dst, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %add.ptr106, i8** %dst, align 8
  %81 = load i8*, i8** %src0, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %add.ptr107, i8** %src0, align 8
  %82 = load i8*, i8** %src1, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %82, i64 4
  store i8* %add.ptr108, i8** %src1, align 8
  %83 = load i8*, i8** %src2, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %add.ptr109, i8** %src2, align 8
  %84 = load i8*, i8** %src3, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %84, i64 4
  store i8* %add.ptr110, i8** %src3, align 8
  br label %for.inc.111

for.inc.111:                                      ; preds = %sw.epilog
  %85 = load i32, i32* %x, align 4
  %inc112 = add nsw i32 %85, 1
  store i32 %inc112, i32* %x, align 4
  br label %for.cond.36

for.end.113:                                      ; preds = %for.cond.36
  br label %sw.epilog.323

sw.bb.114:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.170, %sw.bb.114
  %86 = load i32, i32* %x, align 4
  %87 = load i32, i32* %src_ewidth, align 4
  %div116 = sdiv i32 %87, 2
  %cmp117 = icmp slt i32 %86, %div116
  br i1 %cmp117, label %for.body.119, label %for.end.172

for.body.119:                                     ; preds = %for.cond.115
  %88 = load i8*, i8** %src0, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %88, i64 0
  %89 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %89 to i32
  %90 = load i8*, i8** %src1, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %91 to i32
  %add124 = add nsw i32 %conv121, %conv123
  %92 = load i8*, i8** %src2, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %93 to i32
  %add127 = add nsw i32 %add124, %conv126
  %94 = load i8*, i8** %src3, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %95 to i32
  %add130 = add nsw i32 %add127, %conv129
  %add131 = add nsw i32 %add130, 2
  %shr132 = ashr i32 %add131, 2
  %conv133 = trunc i32 %shr132 to i8
  %96 = load i8*, i8** %dst, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %conv133, i8* %arrayidx134, align 1
  %97 = load i8*, i8** %src0, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %98 to i32
  %99 = load i8*, i8** %src1, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %100 to i32
  %add139 = add nsw i32 %conv136, %conv138
  %101 = load i8*, i8** %src2, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %102 to i32
  %add142 = add nsw i32 %add139, %conv141
  %103 = load i8*, i8** %src3, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %104 to i32
  %add145 = add nsw i32 %add142, %conv144
  %add146 = add nsw i32 %add145, 2
  %shr147 = ashr i32 %add146, 2
  %conv148 = trunc i32 %shr147 to i8
  %105 = load i8*, i8** %dst, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 %conv148, i8* %arrayidx149, align 1
  %106 = load i8*, i8** %src0, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %106, i64 2
  %107 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %107 to i32
  %108 = load i8*, i8** %src1, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %109 to i32
  %add154 = add nsw i32 %conv151, %conv153
  %110 = load i8*, i8** %src2, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %111 to i32
  %add157 = add nsw i32 %add154, %conv156
  %112 = load i8*, i8** %src3, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %112, i64 2
  %113 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %113 to i32
  %add160 = add nsw i32 %add157, %conv159
  %add161 = add nsw i32 %add160, 2
  %shr162 = ashr i32 %add161, 2
  %conv163 = trunc i32 %shr162 to i8
  %114 = load i8*, i8** %dst, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %114, i64 2
  store i8 %conv163, i8* %arrayidx164, align 1
  %115 = load i8*, i8** %dst, align 8
  %add.ptr165 = getelementptr inbounds i8, i8* %115, i64 3
  store i8* %add.ptr165, i8** %dst, align 8
  %116 = load i8*, i8** %src0, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %116, i64 6
  store i8* %add.ptr166, i8** %src0, align 8
  %117 = load i8*, i8** %src1, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %117, i64 6
  store i8* %add.ptr167, i8** %src1, align 8
  %118 = load i8*, i8** %src2, align 8
  %add.ptr168 = getelementptr inbounds i8, i8* %118, i64 6
  store i8* %add.ptr168, i8** %src2, align 8
  %119 = load i8*, i8** %src3, align 8
  %add.ptr169 = getelementptr inbounds i8, i8* %119, i64 6
  store i8* %add.ptr169, i8** %src3, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.119
  %120 = load i32, i32* %x, align 4
  %inc171 = add nsw i32 %120, 1
  store i32 %inc171, i32* %x, align 4
  br label %for.cond.115

for.end.172:                                      ; preds = %for.cond.115
  br label %sw.epilog.323

sw.bb.173:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.320, %sw.bb.173
  %121 = load i32, i32* %x, align 4
  %122 = load i32, i32* %src_ewidth, align 4
  %div175 = sdiv i32 %122, 2
  %cmp176 = icmp slt i32 %121, %div175
  br i1 %cmp176, label %for.body.178, label %for.end.322

for.body.178:                                     ; preds = %for.cond.174
  %123 = load i8*, i8** %src0, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %123, i64 3
  %124 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %124 to i32
  %125 = load i8*, i8** %src1, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %125, i64 3
  %126 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %126 to i32
  %add184 = add nsw i32 %conv181, %conv183
  %127 = load i8*, i8** %src2, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %127, i64 3
  %128 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %128 to i32
  %add187 = add nsw i32 %add184, %conv186
  %129 = load i8*, i8** %src3, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %129, i64 3
  %130 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %130 to i32
  %add190 = add nsw i32 %add187, %conv189
  store i32 %add190, i32* %a179, align 4
  %131 = load i32, i32* %a179, align 4
  switch i32 %131, label %sw.default.243 [
    i32 0, label %sw.bb.191
    i32 1020, label %sw.bb.196
  ]

sw.bb.191:                                        ; preds = %for.body.178
  %132 = load i8*, i8** %dst, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %132, i64 3
  store i8 0, i8* %arrayidx192, align 1
  %133 = load i8*, i8** %dst, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %133, i64 2
  store i8 0, i8* %arrayidx193, align 1
  %134 = load i8*, i8** %dst, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 0, i8* %arrayidx194, align 1
  %135 = load i8*, i8** %dst, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 0, i8* %arrayidx195, align 1
  br label %sw.epilog.314

sw.bb.196:                                        ; preds = %for.body.178
  %136 = load i8*, i8** %src0, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %136, i64 0
  %137 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %137 to i32
  %138 = load i8*, i8** %src1, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %138, i64 0
  %139 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %139 to i32
  %add201 = add nsw i32 %conv198, %conv200
  %140 = load i8*, i8** %src2, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %140, i64 0
  %141 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %141 to i32
  %add204 = add nsw i32 %add201, %conv203
  %142 = load i8*, i8** %src3, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %142, i64 0
  %143 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %143 to i32
  %add207 = add nsw i32 %add204, %conv206
  %add208 = add nsw i32 %add207, 2
  %shr209 = ashr i32 %add208, 2
  %conv210 = trunc i32 %shr209 to i8
  %144 = load i8*, i8** %dst, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 %conv210, i8* %arrayidx211, align 1
  %145 = load i8*, i8** %src0, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %146 to i32
  %147 = load i8*, i8** %src1, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %148 to i32
  %add216 = add nsw i32 %conv213, %conv215
  %149 = load i8*, i8** %src2, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %150 to i32
  %add219 = add nsw i32 %add216, %conv218
  %151 = load i8*, i8** %src3, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %152 to i32
  %add222 = add nsw i32 %add219, %conv221
  %add223 = add nsw i32 %add222, 2
  %shr224 = ashr i32 %add223, 2
  %conv225 = trunc i32 %shr224 to i8
  %153 = load i8*, i8** %dst, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 %conv225, i8* %arrayidx226, align 1
  %154 = load i8*, i8** %src0, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %154, i64 2
  %155 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %155 to i32
  %156 = load i8*, i8** %src1, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %156, i64 2
  %157 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %157 to i32
  %add231 = add nsw i32 %conv228, %conv230
  %158 = load i8*, i8** %src2, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %158, i64 2
  %159 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %159 to i32
  %add234 = add nsw i32 %add231, %conv233
  %160 = load i8*, i8** %src3, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %160, i64 2
  %161 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %161 to i32
  %add237 = add nsw i32 %add234, %conv236
  %add238 = add nsw i32 %add237, 2
  %shr239 = ashr i32 %add238, 2
  %conv240 = trunc i32 %shr239 to i8
  %162 = load i8*, i8** %dst, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %162, i64 2
  store i8 %conv240, i8* %arrayidx241, align 1
  %163 = load i8*, i8** %dst, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %163, i64 3
  store i8 -1, i8* %arrayidx242, align 1
  br label %sw.epilog.314

sw.default.243:                                   ; preds = %for.body.178
  %164 = load i8*, i8** %src0, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %164, i64 3
  %165 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %165 to i32
  %add246 = add nsw i32 %conv245, 1
  store i32 %add246, i32* %a0, align 4
  %166 = load i8*, i8** %src1, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %166, i64 3
  %167 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %167 to i32
  %add249 = add nsw i32 %conv248, 1
  store i32 %add249, i32* %a1, align 4
  %168 = load i8*, i8** %src2, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %168, i64 3
  %169 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %169 to i32
  %add252 = add nsw i32 %conv251, 1
  store i32 %add252, i32* %a2, align 4
  %170 = load i8*, i8** %src3, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %170, i64 3
  %171 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %171 to i32
  %add255 = add nsw i32 %conv254, 1
  store i32 %add255, i32* %a3, align 4
  %172 = load i8*, i8** %src0, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %172, i64 0
  %173 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %173 to i32
  %174 = load i32, i32* %a0, align 4
  %mul258 = mul i32 %conv257, %174
  %175 = load i8*, i8** %src1, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %175, i64 0
  %176 = load i8, i8* %arrayidx259, align 1
  %conv260 = zext i8 %176 to i32
  %177 = load i32, i32* %a1, align 4
  %mul261 = mul i32 %conv260, %177
  %add262 = add i32 %mul258, %mul261
  %178 = load i8*, i8** %src2, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %179 to i32
  %180 = load i32, i32* %a2, align 4
  %mul265 = mul i32 %conv264, %180
  %add266 = add i32 %add262, %mul265
  %181 = load i8*, i8** %src3, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %181, i64 0
  %182 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %182 to i32
  %183 = load i32, i32* %a3, align 4
  %mul269 = mul i32 %conv268, %183
  %add270 = add i32 %add266, %mul269
  %shr271 = lshr i32 %add270, 10
  %conv272 = trunc i32 %shr271 to i8
  %184 = load i8*, i8** %dst, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 %conv272, i8* %arrayidx273, align 1
  %185 = load i8*, i8** %src0, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %185, i64 1
  %186 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %186 to i32
  %187 = load i32, i32* %a0, align 4
  %mul276 = mul i32 %conv275, %187
  %188 = load i8*, i8** %src1, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %188, i64 1
  %189 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %189 to i32
  %190 = load i32, i32* %a1, align 4
  %mul279 = mul i32 %conv278, %190
  %add280 = add i32 %mul276, %mul279
  %191 = load i8*, i8** %src2, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %191, i64 1
  %192 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %192 to i32
  %193 = load i32, i32* %a2, align 4
  %mul283 = mul i32 %conv282, %193
  %add284 = add i32 %add280, %mul283
  %194 = load i8*, i8** %src3, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %194, i64 1
  %195 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %195 to i32
  %196 = load i32, i32* %a3, align 4
  %mul287 = mul i32 %conv286, %196
  %add288 = add i32 %add284, %mul287
  %shr289 = lshr i32 %add288, 10
  %conv290 = trunc i32 %shr289 to i8
  %197 = load i8*, i8** %dst, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %conv290, i8* %arrayidx291, align 1
  %198 = load i8*, i8** %src0, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %198, i64 2
  %199 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %199 to i32
  %200 = load i32, i32* %a0, align 4
  %mul294 = mul i32 %conv293, %200
  %201 = load i8*, i8** %src1, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %201, i64 2
  %202 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %202 to i32
  %203 = load i32, i32* %a1, align 4
  %mul297 = mul i32 %conv296, %203
  %add298 = add i32 %mul294, %mul297
  %204 = load i8*, i8** %src2, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %204, i64 2
  %205 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %205 to i32
  %206 = load i32, i32* %a2, align 4
  %mul301 = mul i32 %conv300, %206
  %add302 = add i32 %add298, %mul301
  %207 = load i8*, i8** %src3, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %207, i64 2
  %208 = load i8, i8* %arrayidx303, align 1
  %conv304 = zext i8 %208 to i32
  %209 = load i32, i32* %a3, align 4
  %mul305 = mul i32 %conv304, %209
  %add306 = add i32 %add302, %mul305
  %shr307 = lshr i32 %add306, 10
  %conv308 = trunc i32 %shr307 to i8
  %210 = load i8*, i8** %dst, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %210, i64 2
  store i8 %conv308, i8* %arrayidx309, align 1
  %211 = load i32, i32* %a179, align 4
  %add310 = add i32 %211, 2
  %shr311 = lshr i32 %add310, 2
  %conv312 = trunc i32 %shr311 to i8
  %212 = load i8*, i8** %dst, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %212, i64 3
  store i8 %conv312, i8* %arrayidx313, align 1
  br label %sw.epilog.314

sw.epilog.314:                                    ; preds = %sw.default.243, %sw.bb.196, %sw.bb.191
  %213 = load i8*, i8** %dst, align 8
  %add.ptr315 = getelementptr inbounds i8, i8* %213, i64 4
  store i8* %add.ptr315, i8** %dst, align 8
  %214 = load i8*, i8** %src0, align 8
  %add.ptr316 = getelementptr inbounds i8, i8* %214, i64 8
  store i8* %add.ptr316, i8** %src0, align 8
  %215 = load i8*, i8** %src1, align 8
  %add.ptr317 = getelementptr inbounds i8, i8* %215, i64 8
  store i8* %add.ptr317, i8** %src1, align 8
  %216 = load i8*, i8** %src2, align 8
  %add.ptr318 = getelementptr inbounds i8, i8* %216, i64 8
  store i8* %add.ptr318, i8** %src2, align 8
  %217 = load i8*, i8** %src3, align 8
  %add.ptr319 = getelementptr inbounds i8, i8* %217, i64 8
  store i8* %add.ptr319, i8** %src3, align 8
  br label %for.inc.320

for.inc.320:                                      ; preds = %sw.epilog.314
  %218 = load i32, i32* %x, align 4
  %inc321 = add nsw i32 %218, 1
  store i32 %inc321, i32* %x, align 4
  br label %for.cond.174

for.end.322:                                      ; preds = %for.cond.174
  br label %sw.epilog.323

sw.epilog.323:                                    ; preds = %for.body, %for.end.322, %for.end.172, %for.end.113, %for.end
  %219 = load i32, i32* %dest_ewidth, align 4
  %220 = load i32, i32* %bpp, align 4
  %mul324 = mul nsw i32 %219, %220
  %221 = load i8*, i8** %dest_data, align 8
  %idx.ext325 = sext i32 %mul324 to i64
  %add.ptr326 = getelementptr inbounds i8, i8* %221, i64 %idx.ext325
  store i8* %add.ptr326, i8** %dest_data, align 8
  %222 = load i32, i32* %src_ewidth, align 4
  %223 = load i32, i32* %bpp, align 4
  %mul327 = mul nsw i32 %222, %223
  %mul328 = mul nsw i32 %mul327, 2
  %224 = load i8*, i8** %src_data, align 8
  %idx.ext329 = sext i32 %mul328 to i64
  %add.ptr330 = getelementptr inbounds i8, i8* %224, i64 %idx.ext329
  store i8* %add.ptr330, i8** %src_data, align 8
  br label %for.inc.331

for.inc.331:                                      ; preds = %sw.epilog.323
  %225 = load i32, i32* %y, align 4
  %inc332 = add nsw i32 %225, 1
  store i32 %inc332, i32* %y, align 4
  br label %for.cond

for.end.333:                                      ; preds = %for.cond
  ret void
}

declare void @tile_release(%struct._Tile*, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare i32 @tile_bpp(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define internal void @tile_pyramid_write_upper_quarter(%struct._Tile* %dest, %struct._Tile* %src, i32 %i, i32 %j) #0 {
entry:
  %dest.addr = alloca %struct._Tile*, align 8
  %src.addr = alloca %struct._Tile*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %src_data = alloca i8*, align 8
  %dest_data = alloca i8*, align 8
  %src_ewidth = alloca i32, align 4
  %src_eheight = alloca i32, align 4
  %dest_ewidth = alloca i32, align 4
  %bpp = alloca i32, align 4
  %y = alloca i32, align 4
  %src0 = alloca i8*, align 8
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %src3 = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %x = alloca i32, align 4
  store %struct._Tile* %dest, %struct._Tile** %dest.addr, align 8
  store %struct._Tile* %src, %struct._Tile** %src.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call = call i8* @tile_data_pointer(%struct._Tile* %0, i32 0, i32 0)
  store i8* %call, i8** %src_data, align 8
  %1 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %2, 64
  %div = sdiv i32 %mul, 2
  %3 = load i32, i32* %j.addr, align 4
  %mul1 = mul nsw i32 %3, 64
  %div2 = sdiv i32 %mul1, 2
  %call3 = call i8* @tile_data_pointer(%struct._Tile* %1, i32 %div, i32 %div2)
  store i8* %call3, i8** %dest_data, align 8
  %4 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call4 = call i32 @tile_ewidth(%struct._Tile* %4)
  store i32 %call4, i32* %src_ewidth, align 4
  %5 = load %struct._Tile*, %struct._Tile** %src.addr, align 8
  %call5 = call i32 @tile_eheight(%struct._Tile* %5)
  store i32 %call5, i32* %src_eheight, align 4
  %6 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %call6 = call i32 @tile_ewidth(%struct._Tile* %6)
  store i32 %call6, i32* %dest_ewidth, align 4
  %7 = load %struct._Tile*, %struct._Tile** %dest.addr, align 8
  %call7 = call i32 @tile_bpp(%struct._Tile* %7)
  store i32 %call7, i32* %bpp, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.219, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %src_eheight, align 4
  %div8 = sdiv i32 %9, 2
  %cmp = icmp slt i32 %8, %div8
  br i1 %cmp, label %for.body, label %for.end.221

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %src_data, align 8
  store i8* %10, i8** %src0, align 8
  %11 = load i8*, i8** %src_data, align 8
  %12 = load i32, i32* %bpp, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %src1, align 8
  %13 = load i8*, i8** %src0, align 8
  %14 = load i32, i32* %bpp, align 4
  %15 = load i32, i32* %src_ewidth, align 4
  %mul9 = mul nsw i32 %14, %15
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 %idx.ext10
  store i8* %add.ptr11, i8** %src2, align 8
  %16 = load i8*, i8** %src1, align 8
  %17 = load i32, i32* %bpp, align 4
  %18 = load i32, i32* %src_ewidth, align 4
  %mul12 = mul nsw i32 %17, %18
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 %idx.ext13
  store i8* %add.ptr14, i8** %src3, align 8
  %19 = load i8*, i8** %dest_data, align 8
  store i8* %19, i8** %dst, align 8
  %20 = load i32, i32* %bpp, align 4
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.35
    i32 3, label %sw.bb.79
    i32 4, label %sw.bb.138
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %sw.bb
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %src_ewidth, align 4
  %div16 = sdiv i32 %22, 2
  %cmp17 = icmp slt i32 %21, %div16
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %23 = load i8*, i8** %src0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %24 to i32
  %25 = load i8*, i8** %src1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %26 to i32
  %add = add nsw i32 %conv, %conv20
  %27 = load i8*, i8** %src2, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %28 to i32
  %add23 = add nsw i32 %add, %conv22
  %29 = load i8*, i8** %src3, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %add26 = add nsw i32 %add23, %conv25
  %add27 = add nsw i32 %add26, 2
  %shr = ashr i32 %add27, 2
  %conv28 = trunc i32 %shr to i8
  %31 = load i8*, i8** %dst, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1
  %32 = load i8*, i8** %dst, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %add.ptr30, i8** %dst, align 8
  %33 = load i8*, i8** %src0, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr31, i8** %src0, align 8
  %34 = load i8*, i8** %src1, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr32, i8** %src1, align 8
  %35 = load i8*, i8** %src2, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr33, i8** %src2, align 8
  %36 = load i8*, i8** %src3, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %add.ptr34, i8** %src3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %37 = load i32, i32* %x, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.76, %sw.bb.35
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %src_ewidth, align 4
  %div37 = sdiv i32 %39, 2
  %cmp38 = icmp slt i32 %38, %div37
  br i1 %cmp38, label %for.body.40, label %for.end.78

for.body.40:                                      ; preds = %for.cond.36
  %40 = load i8*, i8** %src0, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %41 to i32
  %42 = load i8*, i8** %src1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %43 to i32
  %add45 = add nsw i32 %conv42, %conv44
  %44 = load i8*, i8** %src2, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %45 to i32
  %add48 = add nsw i32 %add45, %conv47
  %46 = load i8*, i8** %src3, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %47 to i32
  %add51 = add nsw i32 %add48, %conv50
  %add52 = add nsw i32 %add51, 2
  %shr53 = ashr i32 %add52, 2
  %conv54 = trunc i32 %shr53 to i8
  %48 = load i8*, i8** %dst, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %conv54, i8* %arrayidx55, align 1
  %49 = load i8*, i8** %src0, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %50 to i32
  %51 = load i8*, i8** %src1, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %52 to i32
  %add60 = add nsw i32 %conv57, %conv59
  %53 = load i8*, i8** %src2, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %54 to i32
  %add63 = add nsw i32 %add60, %conv62
  %55 = load i8*, i8** %src3, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %56 to i32
  %add66 = add nsw i32 %add63, %conv65
  %add67 = add nsw i32 %add66, 2
  %shr68 = ashr i32 %add67, 2
  %conv69 = trunc i32 %shr68 to i8
  %57 = load i8*, i8** %dst, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %conv69, i8* %arrayidx70, align 1
  %58 = load i8*, i8** %dst, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %add.ptr71, i8** %dst, align 8
  %59 = load i8*, i8** %src0, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %add.ptr72, i8** %src0, align 8
  %60 = load i8*, i8** %src1, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %add.ptr73, i8** %src1, align 8
  %61 = load i8*, i8** %src2, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %add.ptr74, i8** %src2, align 8
  %62 = load i8*, i8** %src3, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %add.ptr75, i8** %src3, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.40
  %63 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %63, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond.36

for.end.78:                                       ; preds = %for.cond.36
  br label %sw.epilog

sw.bb.79:                                         ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.135, %sw.bb.79
  %64 = load i32, i32* %x, align 4
  %65 = load i32, i32* %src_ewidth, align 4
  %div81 = sdiv i32 %65, 2
  %cmp82 = icmp slt i32 %64, %div81
  br i1 %cmp82, label %for.body.84, label %for.end.137

for.body.84:                                      ; preds = %for.cond.80
  %66 = load i8*, i8** %src0, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %67 to i32
  %68 = load i8*, i8** %src1, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %69 to i32
  %add89 = add nsw i32 %conv86, %conv88
  %70 = load i8*, i8** %src2, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %71 to i32
  %add92 = add nsw i32 %add89, %conv91
  %72 = load i8*, i8** %src3, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %73 to i32
  %add95 = add nsw i32 %add92, %conv94
  %add96 = add nsw i32 %add95, 2
  %shr97 = ashr i32 %add96, 2
  %conv98 = trunc i32 %shr97 to i8
  %74 = load i8*, i8** %dst, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %conv98, i8* %arrayidx99, align 1
  %75 = load i8*, i8** %src0, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %76 to i32
  %77 = load i8*, i8** %src1, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %78 to i32
  %add104 = add nsw i32 %conv101, %conv103
  %79 = load i8*, i8** %src2, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %80 to i32
  %add107 = add nsw i32 %add104, %conv106
  %81 = load i8*, i8** %src3, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %82 to i32
  %add110 = add nsw i32 %add107, %conv109
  %add111 = add nsw i32 %add110, 2
  %shr112 = ashr i32 %add111, 2
  %conv113 = trunc i32 %shr112 to i8
  %83 = load i8*, i8** %dst, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 %conv113, i8* %arrayidx114, align 1
  %84 = load i8*, i8** %src0, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %84, i64 2
  %85 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %85 to i32
  %86 = load i8*, i8** %src1, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %87 to i32
  %add119 = add nsw i32 %conv116, %conv118
  %88 = load i8*, i8** %src2, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %88, i64 2
  %89 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %89 to i32
  %add122 = add nsw i32 %add119, %conv121
  %90 = load i8*, i8** %src3, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %91 to i32
  %add125 = add nsw i32 %add122, %conv124
  %add126 = add nsw i32 %add125, 2
  %shr127 = ashr i32 %add126, 2
  %conv128 = trunc i32 %shr127 to i8
  %92 = load i8*, i8** %dst, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %92, i64 2
  store i8 %conv128, i8* %arrayidx129, align 1
  %93 = load i8*, i8** %dst, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %93, i64 3
  store i8* %add.ptr130, i8** %dst, align 8
  %94 = load i8*, i8** %src0, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %94, i64 6
  store i8* %add.ptr131, i8** %src0, align 8
  %95 = load i8*, i8** %src1, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %95, i64 6
  store i8* %add.ptr132, i8** %src1, align 8
  %96 = load i8*, i8** %src2, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %96, i64 6
  store i8* %add.ptr133, i8** %src2, align 8
  %97 = load i8*, i8** %src3, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %97, i64 6
  store i8* %add.ptr134, i8** %src3, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.84
  %98 = load i32, i32* %x, align 4
  %inc136 = add nsw i32 %98, 1
  store i32 %inc136, i32* %x, align 4
  br label %for.cond.80

for.end.137:                                      ; preds = %for.cond.80
  br label %sw.epilog

sw.bb.138:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.209, %sw.bb.138
  %99 = load i32, i32* %x, align 4
  %100 = load i32, i32* %src_ewidth, align 4
  %div140 = sdiv i32 %100, 2
  %cmp141 = icmp slt i32 %99, %div140
  br i1 %cmp141, label %for.body.143, label %for.end.211

for.body.143:                                     ; preds = %for.cond.139
  %101 = load i8*, i8** %src0, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %101, i64 0
  %102 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %102 to i32
  %103 = load i8*, i8** %src1, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %103, i64 0
  %104 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %104 to i32
  %add148 = add nsw i32 %conv145, %conv147
  %105 = load i8*, i8** %src2, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %106 to i32
  %add151 = add nsw i32 %add148, %conv150
  %107 = load i8*, i8** %src3, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %108 to i32
  %add154 = add nsw i32 %add151, %conv153
  %add155 = add nsw i32 %add154, 2
  %shr156 = ashr i32 %add155, 2
  %conv157 = trunc i32 %shr156 to i8
  %109 = load i8*, i8** %dst, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 %conv157, i8* %arrayidx158, align 1
  %110 = load i8*, i8** %src0, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %111 to i32
  %112 = load i8*, i8** %src1, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %113 to i32
  %add163 = add nsw i32 %conv160, %conv162
  %114 = load i8*, i8** %src2, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %115 to i32
  %add166 = add nsw i32 %add163, %conv165
  %116 = load i8*, i8** %src3, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %117 to i32
  %add169 = add nsw i32 %add166, %conv168
  %add170 = add nsw i32 %add169, 2
  %shr171 = ashr i32 %add170, 2
  %conv172 = trunc i32 %shr171 to i8
  %118 = load i8*, i8** %dst, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 %conv172, i8* %arrayidx173, align 1
  %119 = load i8*, i8** %src0, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %119, i64 2
  %120 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %120 to i32
  %121 = load i8*, i8** %src1, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %121, i64 2
  %122 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %122 to i32
  %add178 = add nsw i32 %conv175, %conv177
  %123 = load i8*, i8** %src2, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %123, i64 2
  %124 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %124 to i32
  %add181 = add nsw i32 %add178, %conv180
  %125 = load i8*, i8** %src3, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %125, i64 2
  %126 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %126 to i32
  %add184 = add nsw i32 %add181, %conv183
  %add185 = add nsw i32 %add184, 2
  %shr186 = ashr i32 %add185, 2
  %conv187 = trunc i32 %shr186 to i8
  %127 = load i8*, i8** %dst, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %127, i64 2
  store i8 %conv187, i8* %arrayidx188, align 1
  %128 = load i8*, i8** %src0, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %128, i64 3
  %129 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %129 to i32
  %130 = load i8*, i8** %src1, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %131 to i32
  %add193 = add nsw i32 %conv190, %conv192
  %132 = load i8*, i8** %src2, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %132, i64 3
  %133 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %133 to i32
  %add196 = add nsw i32 %add193, %conv195
  %134 = load i8*, i8** %src3, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %134, i64 3
  %135 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %135 to i32
  %add199 = add nsw i32 %add196, %conv198
  %add200 = add nsw i32 %add199, 2
  %shr201 = ashr i32 %add200, 2
  %conv202 = trunc i32 %shr201 to i8
  %136 = load i8*, i8** %dst, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %136, i64 3
  store i8 %conv202, i8* %arrayidx203, align 1
  %137 = load i8*, i8** %dst, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %add.ptr204, i8** %dst, align 8
  %138 = load i8*, i8** %src0, align 8
  %add.ptr205 = getelementptr inbounds i8, i8* %138, i64 8
  store i8* %add.ptr205, i8** %src0, align 8
  %139 = load i8*, i8** %src1, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %139, i64 8
  store i8* %add.ptr206, i8** %src1, align 8
  %140 = load i8*, i8** %src2, align 8
  %add.ptr207 = getelementptr inbounds i8, i8* %140, i64 8
  store i8* %add.ptr207, i8** %src2, align 8
  %141 = load i8*, i8** %src3, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %141, i64 8
  store i8* %add.ptr208, i8** %src3, align 8
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.body.143
  %142 = load i32, i32* %x, align 4
  %inc210 = add nsw i32 %142, 1
  store i32 %inc210, i32* %x, align 4
  br label %for.cond.139

for.end.211:                                      ; preds = %for.cond.139
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %for.end.211, %for.end.137, %for.end.78, %for.end
  %143 = load i32, i32* %dest_ewidth, align 4
  %144 = load i32, i32* %bpp, align 4
  %mul212 = mul nsw i32 %143, %144
  %145 = load i8*, i8** %dest_data, align 8
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %145, i64 %idx.ext213
  store i8* %add.ptr214, i8** %dest_data, align 8
  %146 = load i32, i32* %src_ewidth, align 4
  %147 = load i32, i32* %bpp, align 4
  %mul215 = mul nsw i32 %146, %147
  %mul216 = mul nsw i32 %mul215, 2
  %148 = load i8*, i8** %src_data, align 8
  %idx.ext217 = sext i32 %mul216 to i64
  %add.ptr218 = getelementptr inbounds i8, i8* %148, i64 %idx.ext217
  store i8* %add.ptr218, i8** %src_data, align 8
  br label %for.inc.219

for.inc.219:                                      ; preds = %sw.epilog
  %149 = load i32, i32* %y, align 4
  %inc220 = add nsw i32 %149, 1
  store i32 %inc220, i32* %y, align 4
  br label %for.cond

for.end.221:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
