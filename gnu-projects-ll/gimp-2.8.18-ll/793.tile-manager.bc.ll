; ModuleID = './app/base/tile-manager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TileManager = type { i32, i32, i32, i32, i32, i32, %struct._Tile**, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*, i32, %struct._Tile* }
%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_tile_manager_get_type.type = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"TileManager\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.tile_manager_new = private unnamed_addr constant [17 x i8] c"tile_manager_new\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bpp > 0 && bpp <= 4\00", align 1
@__func__.tile_manager_ref = private unnamed_addr constant [17 x i8] c"tile_manager_ref\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"tm != NULL\00", align 1
@__func__.tile_manager_unref = private unnamed_addr constant [19 x i8] c"tile_manager_unref\00", align 1
@__func__.tile_manager_duplicate = private unnamed_addr constant [23 x i8] c"tile_manager_duplicate\00", align 1
@__func__.tile_manager_set_validate_proc = private unnamed_addr constant [31 x i8] c"tile_manager_set_validate_proc\00", align 1
@__func__.tile_manager_get_tile = private unnamed_addr constant [22 x i8] c"tile_manager_get_tile\00", align 1
@__func__.tile_manager_get = private unnamed_addr constant [17 x i8] c"tile_manager_get\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"WRITE-ONLY TILE... UNTESTED!\00", align 1
@__func__.tile_manager_get_at = private unnamed_addr constant [20 x i8] c"tile_manager_get_at\00", align 1
@__func__.tile_manager_validate_tile = private unnamed_addr constant [27 x i8] c"tile_manager_validate_tile\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tile != NULL\00", align 1
@__func__.tile_manager_map_tile = private unnamed_addr constant [22 x i8] c"tile_manager_map_tile\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"srctile != NULL\00", align 1
@__func__.tile_manager_map = private unnamed_addr constant [17 x i8] c"tile_manager_map\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"tile_num >= 0\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"tile_num < tm->ntile_rows * tm->ntile_cols\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s: empty tile level - initializing\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"tile-manager.c:492\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: srctile not validated yet!  please report\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"tile-manager.c:504\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"%s: nonconformant map (%p -> %p)\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"tile-manager.c:511\00", align 1
@__func__.tile_manager_width = private unnamed_addr constant [19 x i8] c"tile_manager_width\00", align 1
@__func__.tile_manager_height = private unnamed_addr constant [20 x i8] c"tile_manager_height\00", align 1
@__func__.tile_manager_bpp = private unnamed_addr constant [17 x i8] c"tile_manager_bpp\00", align 1
@__func__.tile_manager_get_tile_col_row = private unnamed_addr constant [30 x i8] c"tile_manager_get_tile_col_row\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"tile_col != NULL && tile_row != NULL\00", align 1
@__func__.tile_manager_get_tile_coordinates = private unnamed_addr constant [34 x i8] c"tile_manager_get_tile_coordinates\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"x != NULL && y != NULL\00", align 1
@__func__.tile_manager_map_over_tile = private unnamed_addr constant [27 x i8] c"tile_manager_map_over_tile\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: tile not attached to manager\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"tile-manager.c:694\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"tile-manager.c\00", align 1
@__func__.tile_manager_allocate_tiles = private unnamed_addr constant [28 x i8] c"tile_manager_allocate_tiles\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"tm->tiles == NULL\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"tile-manager.c:631\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tile_manager_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_tile_manager_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._TileManager* (%struct._TileManager*)* @tile_manager_ref to i8* (i8*)*), void (i8*)* bitcast (void (%struct._TileManager*)* @tile_manager_unref to void (i8*)*))
  store i64 %call, i64* @gimp_tile_manager_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_tile_manager_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @tile_manager_ref(%struct._TileManager* %tm) #2 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_ref, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ref_count = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ref_count, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  store %struct._TileManager* %3, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %4
}

; Function Attrs: nounwind uwtable
define void @tile_manager_unref(%struct._TileManager* %tm) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %ntiles = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tile_manager_unref, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.15

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ref_count = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ref_count1 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 0
  %4 = load i32, i32* %ref_count1, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %do.end
  %5 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile = getelementptr inbounds %struct._TileManager, %struct._TileManager* %5, i32 0, i32 10
  %6 = load %struct._Tile*, %struct._Tile** %cached_tile, align 8
  %tobool = icmp ne %struct._Tile* %6, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.3
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile5 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 10
  %8 = load %struct._Tile*, %struct._Tile** %cached_tile5, align 8
  call void @tile_release(%struct._Tile* %8, i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.3
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 6
  %10 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool7 = icmp ne %struct._Tile** %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 4
  %12 = load i32, i32* %ntile_rows, align 4
  %13 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %13, i32 0, i32 5
  %14 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %12, %14
  store i32 %mul, i32* %ntiles, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %ntiles, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles10 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %18, i32 0, i32 6
  %19 = load %struct._Tile**, %struct._Tile*** %tiles10, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %19, i64 %idxprom
  %20 = load %struct._Tile*, %struct._Tile** %arrayidx, align 8
  %21 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %22 = bitcast %struct._TileManager* %21 to i8*
  %23 = load i32, i32* %i, align 4
  call void @tile_detach(%struct._Tile* %20, i8* %22, i32 %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles11 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %25, i32 0, i32 6
  %26 = load %struct._Tile**, %struct._Tile*** %tiles11, align 8
  %27 = bitcast %struct._Tile** %26 to i8*
  call void @g_free(i8* %27)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end.6
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %28 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %29 = bitcast %struct._TileManager* %28 to i8*
  call void @g_slice_free1(i64 64, i8* %29)
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %do.end.14, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._TileManager* @tile_manager_new(i32 %width, i32 %height, i32 %bpp) #2 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %tm = alloca %struct._TileManager*, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i32, i32* %bpp.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.7

land.lhs.true.4:                                  ; preds = %do.body.2
  %3 = load i32, i32* %bpp.addr, align 4
  %cmp5 = icmp sle i32 %3, 4
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true.4
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %call = call noalias i8* @g_slice_alloc0(i64 64)
  %4 = bitcast i8* %call to %struct._TileManager*
  store %struct._TileManager* %4, %struct._TileManager** %tm, align 8
  %5 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %ref_count = getelementptr inbounds %struct._TileManager, %struct._TileManager* %5, i32 0, i32 0
  store i32 1, i32* %ref_count, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %width10 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 1
  store i32 %6, i32* %width10, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %height11 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 2
  store i32 %8, i32* %height11, align 4
  %10 = load i32, i32* %bpp.addr, align 4
  %11 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %bpp12 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 3
  store i32 %10, i32* %bpp12, align 4
  %12 = load i32, i32* %height.addr, align 4
  %add = add nsw i32 %12, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  %13 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %13, i32 0, i32 4
  store i32 %div, i32* %ntile_rows, align 4
  %14 = load i32, i32* %width.addr, align 4
  %add13 = add nsw i32 %14, 64
  %sub14 = sub nsw i32 %add13, 1
  %div15 = sdiv i32 %sub14, 64
  %15 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %15, i32 0, i32 5
  store i32 %div15, i32* %ntile_cols, align 4
  %16 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %cached_num = getelementptr inbounds %struct._TileManager, %struct._TileManager* %16, i32 0, i32 9
  store i32 -1, i32* %cached_num, align 4
  %17 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  store %struct._TileManager* %17, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %do.end.9, %if.else.7, %if.else
  %18 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %18
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare void @tile_detach(%struct._Tile*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @tile_manager_duplicate(%struct._TileManager* %tm) #2 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  %copy = alloca %struct._TileManager*, align 8
  %n_tiles = alloca i32, align 4
  %i = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tile_manager_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %width = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %height = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  %5 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp = getelementptr inbounds %struct._TileManager, %struct._TileManager* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  %call = call %struct._TileManager* @tile_manager_new(i32 %2, i32 %4, i32 %6)
  store %struct._TileManager* %call, %struct._TileManager** %copy, align 8
  %7 = load %struct._TileManager*, %struct._TileManager** %copy, align 8
  call void @tile_manager_allocate_tiles(%struct._TileManager* %7)
  %8 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %8, i32 0, i32 4
  %9 = load i32, i32* %ntile_rows, align 4
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %10, i32 0, i32 5
  %11 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %9, %11
  store i32 %mul, i32* %n_tiles, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n_tiles, align 4
  %cmp1 = icmp slt i32 %12, %13
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call2 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %14, i32 %15, i32 1, i32 0)
  store %struct._Tile* %call2, %struct._Tile** %tile, align 8
  %16 = load %struct._TileManager*, %struct._TileManager** %copy, align 8
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_manager_map(%struct._TileManager* %16, i32 %17, %struct._Tile* %18)
  %19 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %19, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._TileManager*, %struct._TileManager** %copy, align 8
  store %struct._TileManager* %21, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %22 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %22
}

; Function Attrs: nounwind uwtable
define internal void @tile_manager_allocate_tiles(%struct._TileManager* %tm) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tiles = alloca %struct._Tile**, align 8
  %nrows = alloca i32, align 4
  %ncols = alloca i32, align 4
  %right_tile = alloca i32, align 4
  %bottom_tile = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %new = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %0, i32 0, i32 4
  %1 = load i32, i32* %ntile_rows, align 4
  store i32 %1, i32* %nrows, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %2, i32 0, i32 5
  %3 = load i32, i32* %ntile_cols, align 4
  store i32 %3, i32* %ncols, align 4
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %width = getelementptr inbounds %struct._TileManager, %struct._TileManager* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %6 = load i32, i32* %ncols, align 4
  %sub = sub nsw i32 %6, 1
  %mul = mul nsw i32 %sub, 64
  %sub1 = sub nsw i32 %5, %mul
  store i32 %sub1, i32* %right_tile, align 4
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %height = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 2
  %8 = load i32, i32* %height, align 4
  %9 = load i32, i32* %nrows, align 4
  %sub2 = sub nsw i32 %9, 1
  %mul3 = mul nsw i32 %sub2, 64
  %sub4 = sub nsw i32 %8, %mul3
  store i32 %sub4, i32* %bottom_tile, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles5 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %10, i32 0, i32 6
  %11 = load %struct._Tile**, %struct._Tile*** %tiles5, align 8
  %cmp = icmp eq %struct._Tile** %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tile_manager_allocate_tiles, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load i32, i32* %nrows, align 4
  %13 = load i32, i32* %ncols, align 4
  %mul6 = mul nsw i32 %12, %13
  %conv = sext i32 %mul6 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %14 = bitcast i8* %call to %struct._Tile**
  store %struct._Tile** %14, %struct._Tile*** %tiles, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %do.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nrows, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %ncols, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %19 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp = getelementptr inbounds %struct._TileManager, %struct._TileManager* %19, i32 0, i32 3
  %20 = load i32, i32* %bpp, align 4
  %call13 = call %struct._Tile* @tile_new(i32 %20)
  store %struct._Tile* %call13, %struct._Tile** %new, align 8
  %21 = load %struct._Tile*, %struct._Tile** %new, align 8
  %22 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %23 = bitcast %struct._TileManager* %22 to i8*
  %24 = load i32, i32* %k, align 4
  call void @tile_attach(%struct._Tile* %21, i8* %23, i32 %24)
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %ncols, align 4
  %sub14 = sub nsw i32 %26, 1
  %cmp15 = icmp eq i32 %25, %sub14
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body.12
  %27 = load i32, i32* %right_tile, align 4
  %conv18 = trunc i32 %27 to i16
  %28 = load %struct._Tile*, %struct._Tile** %new, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %28, i32 0, i32 5
  store i16 %conv18, i16* %ewidth, align 2
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.body.12
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %nrows, align 4
  %sub20 = sub nsw i32 %30, 1
  %cmp21 = icmp eq i32 %29, %sub20
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %31 = load i32, i32* %bottom_tile, align 4
  %conv24 = trunc i32 %31 to i16
  %32 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %32, i32 0, i32 6
  store i16 %conv24, i16* %eheight, align 2
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  %33 = load %struct._Tile*, %struct._Tile** %new, align 8
  %ewidth26 = getelementptr inbounds %struct._Tile, %struct._Tile* %33, i32 0, i32 5
  %34 = load i16, i16* %ewidth26, align 2
  %conv27 = zext i16 %34 to i32
  %35 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight28 = getelementptr inbounds %struct._Tile, %struct._Tile* %35, i32 0, i32 6
  %36 = load i16, i16* %eheight28, align 2
  %conv29 = zext i16 %36 to i32
  %mul30 = mul nsw i32 %conv27, %conv29
  %37 = load %struct._Tile*, %struct._Tile** %new, align 8
  %bpp31 = getelementptr inbounds %struct._Tile, %struct._Tile* %37, i32 0, i32 4
  %38 = load i8, i8* %bpp31, align 1
  %conv32 = zext i8 %38 to i32
  %mul33 = mul nsw i32 %mul30, %conv32
  %39 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %39, i32 0, i32 7
  store i32 %mul33, i32* %size, align 4
  %40 = load %struct._Tile*, %struct._Tile** %new, align 8
  %41 = load i32, i32* %k, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %42, i64 %idxprom
  store %struct._Tile* %40, %struct._Tile** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  %44 = load i32, i32* %k, align 4
  %inc34 = add nsw i32 %44, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %45 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %45, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %46 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %47 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles38 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %47, i32 0, i32 6
  store %struct._Tile** %46, %struct._Tile*** %tiles38, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Tile* @tile_manager_get(%struct._TileManager* %tm, i32 %tile_num, i32 %wantread, i32 %wantwrite) #2 {
entry:
  %retval = alloca %struct._Tile*, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile_num.addr = alloca i32, align 4
  %wantread.addr = alloca i32, align 4
  %wantwrite.addr = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %ntiles = alloca i32, align 4
  %new = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %tile_num, i32* %tile_num.addr, align 4
  store i32 %wantread, i32* %wantread.addr, align 4
  store i32 %wantwrite, i32* %wantwrite.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_get, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._Tile* null, %struct._Tile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 4
  %2 = load i32, i32* %ntile_rows, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 5
  %4 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %2, %4
  store i32 %mul, i32* %ntiles, align 4
  %5 = load i32, i32* %tile_num.addr, align 4
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i32, i32* %tile_num.addr, align 4
  %7 = load i32, i32* %ntiles, align 4
  %cmp2 = icmp sge i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store %struct._Tile* null, %struct._Tile** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %8, i32 0, i32 6
  %9 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool = icmp ne %struct._Tile** %9, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  call void @tile_manager_allocate_tiles(%struct._TileManager* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  %11 = load i32, i32* %tile_num.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles7 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %12, i32 0, i32 6
  %13 = load %struct._Tile**, %struct._Tile*** %tiles7, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %13, i64 %idxprom
  %14 = load %struct._Tile*, %struct._Tile** %arrayidx, align 8
  store %struct._Tile* %14, %struct._Tile** %tile, align 8
  %15 = load i32, i32* %wantwrite.addr, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.6
  %16 = load i32, i32* %wantread.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.6
  %17 = load i32, i32* %wantread.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.69

if.then.13:                                       ; preds = %if.end.11
  %18 = load i32, i32* %wantwrite.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.else.67

if.then.15:                                       ; preds = %if.then.13
  %19 = load i32, i32* %tile_num.addr, align 4
  %20 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num = getelementptr inbounds %struct._TileManager, %struct._TileManager* %20, i32 0, i32 9
  %21 = load i32, i32* %cached_num, align 4
  %cmp16 = icmp eq i32 %19, %21
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.15
  %22 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile = getelementptr inbounds %struct._TileManager, %struct._TileManager* %22, i32 0, i32 10
  %23 = load %struct._Tile*, %struct._Tile** %cached_tile, align 8
  call void @tile_release(%struct._Tile* %23, i32 0)
  %24 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile18 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %24, i32 0, i32 10
  store %struct._Tile* null, %struct._Tile** %cached_tile18, align 8
  %25 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num19 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %25, i32 0, i32 9
  store i32 -1, i32* %cached_num19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.15
  %26 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %26, i32 0, i32 2
  %27 = load i32, i32* %share_count, align 4
  %cmp21 = icmp ugt i32 %27, 1
  br i1 %cmp21, label %if.then.22, label %if.end.63

if.then.22:                                       ; preds = %if.end.20
  %28 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %28, i32 0, i32 4
  %29 = load i8, i8* %bpp, align 1
  %conv = zext i8 %29 to i32
  %call = call %struct._Tile* @tile_new(i32 %conv)
  store %struct._Tile* %call, %struct._Tile** %new, align 8
  %30 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %30, i32 0, i32 5
  %31 = load i16, i16* %ewidth, align 2
  %32 = load %struct._Tile*, %struct._Tile** %new, align 8
  %ewidth23 = getelementptr inbounds %struct._Tile, %struct._Tile* %32, i32 0, i32 5
  store i16 %31, i16* %ewidth23, align 2
  %33 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %33, i32 0, i32 6
  %34 = load i16, i16* %eheight, align 2
  %35 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight24 = getelementptr inbounds %struct._Tile, %struct._Tile* %35, i32 0, i32 6
  store i16 %34, i16* %eheight24, align 2
  %36 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %36, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %37 = load %struct._Tile*, %struct._Tile** %new, align 8
  %valid25 = getelementptr inbounds %struct._Tile, %struct._Tile* %37, i32 0, i32 3
  %38 = trunc i32 %bf.cast to i8
  %bf.load26 = load i8, i8* %valid25, align 8
  %bf.value = and i8 %38, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear27 = and i8 %bf.load26, -3
  %bf.set = or i8 %bf.clear27, %bf.shl
  store i8 %bf.set, i8* %valid25, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %39 = load %struct._Tile*, %struct._Tile** %new, align 8
  %ewidth28 = getelementptr inbounds %struct._Tile, %struct._Tile* %39, i32 0, i32 5
  %40 = load i16, i16* %ewidth28, align 2
  %conv29 = zext i16 %40 to i32
  %41 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight30 = getelementptr inbounds %struct._Tile, %struct._Tile* %41, i32 0, i32 6
  %42 = load i16, i16* %eheight30, align 2
  %conv31 = zext i16 %42 to i32
  %mul32 = mul nsw i32 %conv29, %conv31
  %43 = load %struct._Tile*, %struct._Tile** %new, align 8
  %bpp33 = getelementptr inbounds %struct._Tile, %struct._Tile* %43, i32 0, i32 4
  %44 = load i8, i8* %bpp33, align 1
  %conv34 = zext i8 %44 to i32
  %mul35 = mul nsw i32 %mul32, %conv34
  %45 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %45, i32 0, i32 7
  store i32 %mul35, i32* %size, align 4
  %46 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size36 = getelementptr inbounds %struct._Tile, %struct._Tile* %46, i32 0, i32 7
  %47 = load i32, i32* %size36, align 4
  %conv37 = sext i32 %47 to i64
  %call38 = call noalias i8* @g_malloc_n(i64 %conv37, i64 1)
  %48 = load %struct._Tile*, %struct._Tile** %new, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %48, i32 0, i32 9
  store i8* %call38, i8** %data, align 8
  %49 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %rowhint = getelementptr inbounds %struct._Tile, %struct._Tile* %49, i32 0, i32 8
  %50 = load i8*, i8** %rowhint, align 8
  %tobool39 = icmp ne i8* %50, null
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.then.22
  %51 = load %struct._Tile*, %struct._Tile** %new, align 8
  call void @tile_allocate_rowhints(%struct._Tile* %51)
  %52 = load %struct._Tile*, %struct._Tile** %new, align 8
  %rowhint41 = getelementptr inbounds %struct._Tile, %struct._Tile* %52, i32 0, i32 8
  %53 = load i8*, i8** %rowhint41, align 8
  %54 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %rowhint42 = getelementptr inbounds %struct._Tile, %struct._Tile* %54, i32 0, i32 8
  %55 = load i8*, i8** %rowhint42, align 8
  %56 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight43 = getelementptr inbounds %struct._Tile, %struct._Tile* %56, i32 0, i32 6
  %57 = load i16, i16* %eheight43, align 2
  %conv44 = zext i16 %57 to i64
  %mul45 = mul i64 %conv44, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %55, i64 %mul45, i32 1, i1 false)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %if.then.22
  %58 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data47 = getelementptr inbounds %struct._Tile, %struct._Tile* %58, i32 0, i32 9
  %59 = load i8*, i8** %data47, align 8
  %tobool48 = icmp ne i8* %59, null
  br i1 %tobool48, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %if.end.46
  %60 = load %struct._Tile*, %struct._Tile** %new, align 8
  %data50 = getelementptr inbounds %struct._Tile, %struct._Tile* %60, i32 0, i32 9
  %61 = load i8*, i8** %data50, align 8
  %62 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data51 = getelementptr inbounds %struct._Tile, %struct._Tile* %62, i32 0, i32 9
  %63 = load i8*, i8** %data51, align 8
  %64 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size52 = getelementptr inbounds %struct._Tile, %struct._Tile* %64, i32 0, i32 7
  %65 = load i32, i32* %size52, align 4
  %conv53 = sext i32 %65 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %63, i64 %conv53, i32 1, i1 false)
  br label %if.end.59

if.else.54:                                       ; preds = %if.end.46
  %66 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_lock(%struct._Tile* %66)
  %67 = load %struct._Tile*, %struct._Tile** %new, align 8
  %data55 = getelementptr inbounds %struct._Tile, %struct._Tile* %67, i32 0, i32 9
  %68 = load i8*, i8** %data55, align 8
  %69 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data56 = getelementptr inbounds %struct._Tile, %struct._Tile* %69, i32 0, i32 9
  %70 = load i8*, i8** %data56, align 8
  %71 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size57 = getelementptr inbounds %struct._Tile, %struct._Tile* %71, i32 0, i32 7
  %72 = load i32, i32* %size57, align 4
  %conv58 = sext i32 %72 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %70, i64 %conv58, i32 1, i1 false)
  %73 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %73, i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.54, %if.then.49
  %74 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %75 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %76 = bitcast %struct._TileManager* %75 to i8*
  %77 = load i32, i32* %tile_num.addr, align 4
  call void @tile_detach(%struct._Tile* %74, i8* %76, i32 %77)
  %78 = load %struct._Tile*, %struct._Tile** %new, align 8
  %79 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %80 = bitcast %struct._TileManager* %79 to i8*
  %81 = load i32, i32* %tile_num.addr, align 4
  call void @tile_attach(%struct._Tile* %78, i8* %80, i32 %81)
  %82 = load %struct._Tile*, %struct._Tile** %new, align 8
  store %struct._Tile* %82, %struct._Tile** %tile, align 8
  %83 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %84 = load i32, i32* %tile_num.addr, align 4
  %idxprom60 = sext i32 %84 to i64
  %85 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles61 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %85, i32 0, i32 6
  %86 = load %struct._Tile**, %struct._Tile*** %tiles61, align 8
  %arrayidx62 = getelementptr inbounds %struct._Tile*, %struct._Tile** %86, i64 %idxprom60
  store %struct._Tile* %83, %struct._Tile** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.59, %if.end.20
  %87 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_lock(%struct._Tile* %87)
  %88 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %write_count = getelementptr inbounds %struct._Tile, %struct._Tile* %88, i32 0, i32 1
  %89 = load i16, i16* %write_count, align 2
  %inc = add i16 %89, 1
  store i16 %inc, i16* %write_count, align 2
  %90 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %90, i32 0, i32 3
  %bf.load64 = load i8, i8* %dirty, align 8
  %bf.clear65 = and i8 %bf.load64, -2
  %bf.set66 = or i8 %bf.clear65, 1
  store i8 %bf.set66, i8* %dirty, align 8
  br label %if.end.68

if.else.67:                                       ; preds = %if.then.13
  %91 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_lock(%struct._Tile* %91)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.end.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.11
  %92 = load %struct._Tile*, %struct._Tile** %tile, align 8
  store %struct._Tile* %92, %struct._Tile** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.3, %if.else
  %93 = load %struct._Tile*, %struct._Tile** %retval
  ret %struct._Tile* %93
}

; Function Attrs: nounwind uwtable
define void @tile_manager_map(%struct._TileManager* %tm, i32 %tile_num, %struct._Tile* %srctile) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile_num.addr = alloca i32, align 4
  %srctile.addr = alloca %struct._Tile*, align 8
  %tile = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %tile_num, i32* %tile_num.addr, align 4
  store %struct._Tile* %srctile, %struct._Tile** %srctile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_map, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_map, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %tile_num.addr, align 4
  %cmp8 = icmp sge i32 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_map, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %3 = load i32, i32* %tile_num.addr, align 4
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %4, i32 0, i32 4
  %5 = load i32, i32* %ntile_rows, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %6, i32 0, i32 5
  %7 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %5, %7
  %cmp14 = icmp slt i32 %3, %mul
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_map, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %8 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %8, i32 0, i32 6
  %9 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool = icmp ne %struct._Tile** %9, null
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.18
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  call void @tile_manager_allocate_tiles(%struct._TileManager* %10)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.18
  %11 = load i32, i32* %tile_num.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles21 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %12, i32 0, i32 6
  %13 = load %struct._Tile**, %struct._Tile*** %tiles21, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %13, i64 %idxprom
  %14 = load %struct._Tile*, %struct._Tile** %arrayidx, align 8
  store %struct._Tile* %14, %struct._Tile** %tile, align 8
  %15 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool22 = icmp ne i32 %bf.cast, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %16 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %16, i32 0, i32 5
  %17 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %17 to i32
  %18 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %ewidth25 = getelementptr inbounds %struct._Tile, %struct._Tile* %18, i32 0, i32 5
  %19 = load i16, i16* %ewidth25, align 2
  %conv26 = zext i16 %19 to i32
  %cmp27 = icmp ne i32 %conv, %conv26
  br i1 %cmp27, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %20 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 6
  %21 = load i16, i16* %eheight, align 2
  %conv29 = zext i16 %21 to i32
  %22 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %eheight30 = getelementptr inbounds %struct._Tile, %struct._Tile* %22, i32 0, i32 6
  %23 = load i16, i16* %eheight30, align 2
  %conv31 = zext i16 %23 to i32
  %cmp32 = icmp ne i32 %conv29, %conv31
  br i1 %cmp32, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %24 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 4
  %25 = load i8, i8* %bpp, align 1
  %conv35 = zext i8 %25 to i32
  %26 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %bpp36 = getelementptr inbounds %struct._Tile, %struct._Tile* %26, i32 0, i32 4
  %27 = load i8, i8* %bpp36, align 1
  %conv37 = zext i8 %27 to i32
  %cmp38 = icmp ne i32 %conv35, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false, %if.end.24
  %28 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %29 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), %struct._Tile* %28, %struct._Tile* %29)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %lor.lhs.false.34
  %30 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %31 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %32 = bitcast %struct._TileManager* %31 to i8*
  %33 = load i32, i32* %tile_num.addr, align 4
  call void @tile_detach(%struct._Tile* %30, i8* %32, i32 %33)
  %34 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %35 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %36 = bitcast %struct._TileManager* %35 to i8*
  %37 = load i32, i32* %tile_num.addr, align 4
  call void @tile_attach(%struct._Tile* %34, i8* %36, i32 %37)
  %38 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %39 = load i32, i32* %tile_num.addr, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles43 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %40, i32 0, i32 6
  %41 = load %struct._Tile**, %struct._Tile*** %tiles43, align 8
  %arrayidx44 = getelementptr inbounds %struct._Tile*, %struct._Tile** %41, i64 %idxprom42
  store %struct._Tile* %38, %struct._Tile** %arrayidx44, align 8
  br label %return

return:                                           ; preds = %if.end.41, %if.else.16, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_set_validate_proc(%struct._TileManager* %tm, void (%struct._TileManager*, %struct._Tile*, i8*)* %proc, i8* %user_data) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %proc.addr = alloca void (%struct._TileManager*, %struct._Tile*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store void (%struct._TileManager*, %struct._Tile*, i8*)* %proc, void (%struct._TileManager*, %struct._Tile*, i8*)** %proc.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tile_manager_set_validate_proc, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (%struct._TileManager*, %struct._Tile*, i8*)*, void (%struct._TileManager*, %struct._Tile*, i8*)** %proc.addr, align 8
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %validate_proc = getelementptr inbounds %struct._TileManager, %struct._TileManager* %2, i32 0, i32 7
  store void (%struct._TileManager*, %struct._Tile*, i8*)* %1, void (%struct._TileManager*, %struct._Tile*, i8*)** %validate_proc, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %user_data1 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %4, i32 0, i32 8
  store i8* %3, i8** %user_data1, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %tm, i32 %xpixel, i32 %ypixel, i32 %wantread, i32 %wantwrite) #2 {
entry:
  %retval = alloca %struct._Tile*, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  %xpixel.addr = alloca i32, align 4
  %ypixel.addr = alloca i32, align 4
  %wantread.addr = alloca i32, align 4
  %wantwrite.addr = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %xpixel, i32* %xpixel.addr, align 4
  store i32 %ypixel, i32* %ypixel.addr, align 4
  store i32 %wantread, i32* %wantread.addr, align 4
  store i32 %wantwrite, i32* %wantwrite.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tile_manager_get_tile, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._Tile* null, %struct._Tile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %3 = load i32, i32* %xpixel.addr, align 4
  %4 = load i32, i32* %ypixel.addr, align 4
  %call = call i32 @tile_manager_get_tile_num(%struct._TileManager* %2, i32 %3, i32 %4)
  %5 = load i32, i32* %wantread.addr, align 4
  %6 = load i32, i32* %wantwrite.addr, align 4
  %call1 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %1, i32 %call, i32 %5, i32 %6)
  store %struct._Tile* %call1, %struct._Tile** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %7 = load %struct._Tile*, %struct._Tile** %retval
  ret %struct._Tile* %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tile_manager_get_tile_num(%struct._TileManager* %tm, i32 %xpixel, i32 %ypixel) #3 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct._TileManager*, align 8
  %xpixel.addr = alloca i32, align 4
  %ypixel.addr = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %xpixel, i32* %xpixel.addr, align 4
  store i32 %ypixel, i32* %ypixel.addr, align 4
  %0 = load i32, i32* %xpixel.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %xpixel.addr, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %width = getelementptr inbounds %struct._TileManager, %struct._TileManager* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %cmp1 = icmp sge i32 %1, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %ypixel.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load i32, i32* %ypixel.addr, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %height = getelementptr inbounds %struct._TileManager, %struct._TileManager* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %cmp5 = icmp sge i32 %5, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %ypixel.addr, align 4
  %div = sdiv i32 %8, 64
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 5
  %10 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %div, %10
  %11 = load i32, i32* %xpixel.addr, align 4
  %div6 = sdiv i32 %11, 64
  %add = add nsw i32 %mul, %div6
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._Tile* @tile_new(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @tile_allocate_rowhints(%struct._Tile*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @tile_lock(%struct._Tile*) #1

declare void @tile_attach(%struct._Tile*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._Tile* @tile_manager_get_at(%struct._TileManager* %tm, i32 %tile_col, i32 %tile_row, i32 %wantread, i32 %wantwrite) #2 {
entry:
  %retval = alloca %struct._Tile*, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile_col.addr = alloca i32, align 4
  %tile_row.addr = alloca i32, align 4
  %wantread.addr = alloca i32, align 4
  %wantwrite.addr = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %tile_col, i32* %tile_col.addr, align 4
  store i32 %tile_row, i32* %tile_row.addr, align 4
  store i32 %wantread, i32* %wantread.addr, align 4
  store i32 %wantwrite, i32* %wantwrite.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tile_manager_get_at, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._Tile* null, %struct._Tile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %tile_col.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load i32, i32* %tile_col.addr, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 5
  %4 = load i32, i32* %ntile_cols, align 4
  %cmp2 = icmp sge i32 %2, %4
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %tile_row.addr, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %6 = load i32, i32* %tile_row.addr, align 4
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 4
  %8 = load i32, i32* %ntile_rows, align 4
  %cmp6 = icmp sge i32 %6, %8
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %do.end
  store %struct._Tile* null, %struct._Tile** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.5
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %10 = load i32, i32* %tile_row.addr, align 4
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols9 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 5
  %12 = load i32, i32* %ntile_cols9, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load i32, i32* %tile_col.addr, align 4
  %add = add nsw i32 %mul, %13
  %14 = load i32, i32* %wantread.addr, align 4
  %15 = load i32, i32* %wantwrite.addr, align 4
  %call = call %struct._Tile* @tile_manager_get(%struct._TileManager* %9, i32 %add, i32 %14, i32 %15)
  store %struct._Tile* %call, %struct._Tile** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else
  %16 = load %struct._Tile*, %struct._Tile** %retval
  ret %struct._Tile* %16
}

; Function Attrs: nounwind uwtable
define void @tile_manager_validate_tile(%struct._TileManager* %tm, %struct._Tile* %tile) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tile_manager_validate_tile, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.10

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tile_manager_validate_tile, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.10

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %valid, align 8
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %validate_proc = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 7
  %4 = load void (%struct._TileManager*, %struct._Tile*, i8*)*, void (%struct._TileManager*, %struct._Tile*, i8*)** %validate_proc, align 8
  %tobool = icmp ne void (%struct._TileManager*, %struct._Tile*, i8*)* %4, null
  br i1 %tobool, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %do.end.6
  %5 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %validate_proc8 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %5, i32 0, i32 7
  %6 = load void (%struct._TileManager*, %struct._Tile*, i8*)*, void (%struct._TileManager*, %struct._Tile*, i8*)** %validate_proc8, align 8
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %8 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %user_data = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 8
  %10 = load i8*, i8** %user_data, align 8
  call void %6(%struct._TileManager* %7, %struct._Tile* %8, i8* %10)
  br label %if.end.10

if.else.9:                                        ; preds = %do.end.6
  %11 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %11, i32 0, i32 9
  %12 = load i8*, i8** %data, align 8
  %13 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_size(%struct._Tile* %13)
  %conv = sext i32 %call to i64
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.else.4, %if.else.9, %if.then.7
  ret void
}

declare i32 @tile_size(%struct._Tile*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @tile_manager_map_tile(%struct._TileManager* %tm, i32 %xpixel, i32 %ypixel, %struct._Tile* %srctile) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %xpixel.addr = alloca i32, align 4
  %ypixel.addr = alloca i32, align 4
  %srctile.addr = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %xpixel, i32* %xpixel.addr, align 4
  store i32 %ypixel, i32* %ypixel.addr, align 4
  store %struct._Tile* %srctile, %struct._Tile** %srctile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tile_manager_map_tile, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tile_manager_map_tile, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %4 = load i32, i32* %xpixel.addr, align 4
  %5 = load i32, i32* %ypixel.addr, align 4
  %call = call i32 @tile_manager_get_tile_num(%struct._TileManager* %3, i32 %4, i32 %5)
  %6 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  call void @tile_manager_map(%struct._TileManager* %2, i32 %call, %struct._Tile* %6)
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_invalidate_area(%struct._TileManager* %tm, i32 %x, i32 %y, i32 %w, i32 %h) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %0, i32 0, i32 6
  %1 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool = icmp ne %struct._Tile** %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.10

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %4, %5
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x.addr, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %w.addr, align 4
  %add2 = add nsw i32 %8, %9
  %cmp3 = icmp slt i32 %7, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  call void @tile_manager_invalidate_pixel(%struct._TileManager* %10, i32 %11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %j, align 4
  %rem = srem i32 %13, 64
  %sub = sub nsw i32 64, %rem
  %14 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %14, %sub
  store i32 %add5, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %rem7 = srem i32 %15, 64
  %sub8 = sub nsw i32 64, %rem7
  %16 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %16, %sub8
  store i32 %add9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_manager_invalidate_pixel(%struct._TileManager* %tm, i32 %xpixel, i32 %ypixel) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %xpixel.addr = alloca i32, align 4
  %ypixel.addr = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %xpixel, i32* %xpixel.addr, align 4
  store i32 %ypixel, i32* %ypixel.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load i32, i32* %xpixel.addr, align 4
  %2 = load i32, i32* %ypixel.addr, align 4
  %call = call i32 @tile_manager_get_tile_num(%struct._TileManager* %0, i32 %1, i32 %2)
  store i32 %call, i32* %num, align 4
  %3 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %5 = load i32, i32* %num, align 4
  call void @tile_manager_invalidate_tile(%struct._TileManager* %4, i32 %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @tile_manager_width(%struct._TileManager* %tm) #2 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct._TileManager*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tile_manager_width, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %width = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @tile_manager_height(%struct._TileManager* %tm) #2 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct._TileManager*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tile_manager_height, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %height = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 2
  %2 = load i32, i32* %height, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @tile_manager_bpp(%struct._TileManager* %tm) #2 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct._TileManager*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tile_manager_bpp, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 3
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i64 @tile_manager_get_memsize(%struct._TileManager* %tm, i32 %sparse) #2 {
entry:
  %retval = alloca i64, align 8
  %tm.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %memsize = alloca i64, align 8
  %tiles7 = alloca %struct._Tile**, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i64 64, i64* %memsize, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tobool = icmp ne %struct._TileManager* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 4
  %2 = load i32, i32* %ntile_rows, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %3, i32 0, i32 5
  %4 = load i32, i32* %ntile_cols, align 4
  %conv1 = sext i32 %4 to i64
  %mul = mul nsw i64 %conv, %conv1
  %mul2 = mul i64 %mul, 80
  %5 = load i64, i64* %memsize, align 8
  %add = add i64 %5, %mul2
  store i64 %add, i64* %memsize, align 8
  %6 = load i32, i32* %sparse.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 6
  %8 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool5 = icmp ne %struct._Tile** %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %if.then.4
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles8 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 6
  %10 = load %struct._Tile**, %struct._Tile*** %tiles8, align 8
  store %struct._Tile** %10, %struct._Tile*** %tiles7, align 8
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 3
  %12 = load i32, i32* %bpp, align 4
  %mul9 = mul nsw i32 4096, %12
  %conv10 = sext i32 %mul9 to i64
  store i64 %conv10, i64* %size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then.6
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_rows11 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %14, i32 0, i32 4
  %15 = load i32, i32* %ntile_rows11, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols14 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %17, i32 0, i32 5
  %18 = load i32, i32* %ntile_cols14, align 4
  %cmp15 = icmp slt i32 %16, %18
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %19 = load %struct._Tile**, %struct._Tile*** %tiles7, align 8
  %20 = load %struct._Tile*, %struct._Tile** %19, align 8
  %call = call i32 @tile_is_valid(%struct._Tile* %20)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.17
  %21 = load i64, i64* %size, align 8
  %22 = load i64, i64* %memsize, align 8
  %add20 = add nsw i64 %22, %21
  store i64 %add20, i64* %memsize, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  %24 = load %struct._Tile**, %struct._Tile*** %tiles7, align 8
  %incdec.ptr = getelementptr inbounds %struct._Tile*, %struct._Tile** %24, i32 1
  store %struct._Tile** %incdec.ptr, %struct._Tile*** %tiles7, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %if.then.4
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %26 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %width = getelementptr inbounds %struct._TileManager, %struct._TileManager* %26, i32 0, i32 1
  %27 = load i32, i32* %width, align 4
  %conv26 = sext i32 %27 to i64
  %28 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %height = getelementptr inbounds %struct._TileManager, %struct._TileManager* %28, i32 0, i32 2
  %29 = load i32, i32* %height, align 4
  %conv27 = sext i32 %29 to i64
  %mul28 = mul nsw i64 %conv26, %conv27
  %30 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp29 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %30, i32 0, i32 3
  %31 = load i32, i32* %bpp29, align 4
  %conv30 = sext i32 %31 to i64
  %mul31 = mul nsw i64 %mul28, %conv30
  %32 = load i64, i64* %memsize, align 8
  %add32 = add nsw i64 %32, %mul31
  store i64 %add32, i64* %memsize, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.25
  %33 = load i64, i64* %memsize, align 8
  store i64 %33, i64* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %34 = load i64, i64* %retval
  ret i64 %34
}

declare i32 @tile_is_valid(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define void @tile_manager_get_tile_col_row(%struct._TileManager* %tm, %struct._Tile* %tile, i32* %tile_col, i32* %tile_row) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %tile_col.addr = alloca i32*, align 8
  %tile_row.addr = alloca i32*, align 8
  %tile_num = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32* %tile_col, i32** %tile_col.addr, align 8
  store i32* %tile_row, i32** %tile_row.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tile_manager_get_tile_col_row, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tile_manager_get_tile_col_row, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %tile_col.addr, align 8
  %cmp8 = icmp ne i32* %2, null
  br i1 %cmp8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body.7
  %3 = load i32*, i32** %tile_row.addr, align 8
  %cmp9 = icmp ne i32* %3, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tile_manager_get_tile_col_row, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %5 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_manager_locate_tile(%struct._TileManager* %4, %struct._Tile* %5)
  store i32 %call, i32* %tile_num, align 4
  %6 = load i32, i32* %tile_num, align 4
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %rem = srem i32 %6, %8
  %9 = load i32*, i32** %tile_col.addr, align 8
  store i32 %rem, i32* %9, align 4
  %10 = load i32, i32* %tile_num, align 4
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %ntile_cols14 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 5
  %12 = load i32, i32* %ntile_cols14, align 4
  %div = sdiv i32 %10, %12
  %13 = load i32*, i32** %tile_row.addr, align 8
  store i32 %div, i32* %13, align 4
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tile_manager_locate_tile(%struct._TileManager* %tm, %struct._Tile* %tile) #3 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %tl = alloca %struct._TileLink*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 11
  %1 = load %struct._TileLink*, %struct._TileLink** %tlink, align 8
  store %struct._TileLink* %1, %struct._TileLink** %tl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tobool = icmp ne %struct._TileLink* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tm1 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %3, i32 0, i32 2
  %4 = load %struct._TileManager*, %struct._TileManager** %tm1, align 8
  %5 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp eq %struct._TileManager* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %next = getelementptr inbounds %struct._TileLink, %struct._TileLink* %6, i32 0, i32 0
  %7 = load %struct._TileLink*, %struct._TileLink** %next, align 8
  store %struct._TileLink* %7, %struct._TileLink** %tl, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %cmp2 = icmp eq %struct._TileLink* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %for.end
  %9 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tile_num = getelementptr inbounds %struct._TileLink, %struct._TileLink* %9, i32 0, i32 1
  %10 = load i32, i32* %tile_num, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @tile_manager_get_tile_coordinates(%struct._TileManager* %tm, %struct._Tile* %tile, i32* %x, i32* %y) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %tile_col = alloca i32, align 4
  %tile_row = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tile_manager_get_tile_coordinates, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tile_manager_get_tile_coordinates, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %x.addr, align 8
  %cmp8 = icmp ne i32* %2, null
  br i1 %cmp8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body.7
  %3 = load i32*, i32** %y.addr, align 8
  %cmp9 = icmp ne i32* %3, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tile_manager_get_tile_coordinates, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %5 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_col_row(%struct._TileManager* %4, %struct._Tile* %5, i32* %tile_col, i32* %tile_row)
  %6 = load i32, i32* %tile_col, align 4
  %mul = mul nsw i32 64, %6
  %7 = load i32*, i32** %x.addr, align 8
  store i32 %mul, i32* %7, align 4
  %8 = load i32, i32* %tile_row, align 4
  %mul14 = mul nsw i32 64, %8
  %9 = load i32*, i32** %y.addr, align 8
  store i32 %mul14, i32* %9, align 4
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_map_over_tile(%struct._TileManager* %tm, %struct._Tile* %tile, %struct._Tile* %srctile) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %srctile.addr = alloca %struct._Tile*, align 8
  %tl = alloca %struct._TileLink*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._Tile* %srctile, %struct._Tile** %srctile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tile_manager_map_over_tile, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cmp2 = icmp ne %struct._Tile* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tile_manager_map_over_tile, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  %cmp8 = icmp ne %struct._Tile* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tile_manager_map_over_tile, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 11
  %4 = load %struct._TileLink*, %struct._TileLink** %tlink, align 8
  store %struct._TileLink* %4, %struct._TileLink** %tl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.12
  %5 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tobool = icmp ne %struct._TileLink* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tm13 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %6, i32 0, i32 2
  %7 = load %struct._TileManager*, %struct._TileManager** %tm13, align 8
  %8 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cmp14 = icmp eq %struct._TileManager* %7, %8
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %9 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %next = getelementptr inbounds %struct._TileLink, %struct._TileLink* %9, i32 0, i32 0
  %10 = load %struct._TileLink*, %struct._TileLink** %next, align 8
  store %struct._TileLink* %10, %struct._TileLink** %tl, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %11 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %cmp17 = icmp eq %struct._TileLink* %11, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %for.end
  %12 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %13 = load %struct._TileLink*, %struct._TileLink** %tl, align 8
  %tile_num = getelementptr inbounds %struct._TileLink, %struct._TileLink* %13, i32 0, i32 1
  %14 = load i32, i32* %tile_num, align 4
  %15 = load %struct._Tile*, %struct._Tile** %srctile.addr, align 8
  call void @tile_manager_map(%struct._TileManager* %12, i32 %14, %struct._Tile* %15)
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_read_pixel_data(%struct._TileManager* %tm, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %buffer, i32 %stride) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %srcstride = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %y1.addr, align 4
  store i32 %0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %cmp = icmp ule i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x1.addr, align 4
  store i32 %3, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %x2.addr, align 4
  %cmp2 = icmp ule i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %6, i32 %7, i32 %8, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %9 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 9
  %10 = load i8*, i8** %data, align 8
  %11 = load i32, i32* %y, align 4
  %and = and i32 %11, 63
  %12 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %12, i32 0, i32 5
  %13 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %13 to i32
  %mul = mul i32 %and, %conv
  %14 = load i32, i32* %x, align 4
  %and4 = and i32 %14, 63
  %add = add i32 %mul, %and4
  %15 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 4
  %16 = load i8, i8* %bpp, align 1
  %conv5 = zext i8 %16 to i32
  %mul6 = mul i32 %add, %conv5
  %idx.ext = zext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %17 = load i8*, i8** %buffer.addr, align 8
  %18 = load i32, i32* %stride.addr, align 4
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %y1.addr, align 4
  %sub = sub i32 %19, %20
  %mul7 = mul i32 %18, %sub
  %idx.ext8 = zext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 %idx.ext8
  %21 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp10 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %21, i32 0, i32 3
  %22 = load i32, i32* %bpp10, align 4
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %x1.addr, align 4
  %sub11 = sub i32 %23, %24
  %mul12 = mul i32 %22, %sub11
  %idx.ext13 = zext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.ext13
  store i8* %add.ptr14, i8** %d, align 8
  %25 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %25, i32 0, i32 6
  %26 = load i16, i16* %eheight, align 2
  %conv15 = zext i16 %26 to i32
  %27 = load i32, i32* %y, align 4
  %rem = urem i32 %27, 64
  %sub16 = sub i32 %conv15, %rem
  store i32 %sub16, i32* %rows, align 4
  %28 = load i32, i32* %rows, align 4
  %29 = load i32, i32* %y2.addr, align 4
  %30 = load i32, i32* %y, align 4
  %sub17 = sub i32 %29, %30
  %add18 = add i32 %sub17, 1
  %cmp19 = icmp ugt i32 %28, %add18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %31 = load i32, i32* %y2.addr, align 4
  %32 = load i32, i32* %y, align 4
  %sub21 = sub i32 %31, %32
  %add22 = add i32 %sub21, 1
  store i32 %add22, i32* %rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %33 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth23 = getelementptr inbounds %struct._Tile, %struct._Tile* %33, i32 0, i32 5
  %34 = load i16, i16* %ewidth23, align 2
  %conv24 = zext i16 %34 to i32
  %35 = load i32, i32* %x, align 4
  %rem25 = urem i32 %35, 64
  %sub26 = sub i32 %conv24, %rem25
  store i32 %sub26, i32* %cols, align 4
  %36 = load i32, i32* %cols, align 4
  %37 = load i32, i32* %x2.addr, align 4
  %38 = load i32, i32* %x, align 4
  %sub27 = sub i32 %37, %38
  %add28 = add i32 %sub27, 1
  %cmp29 = icmp ugt i32 %36, %add28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end
  %39 = load i32, i32* %x2.addr, align 4
  %40 = load i32, i32* %x, align 4
  %sub32 = sub i32 %39, %40
  %add33 = add i32 %sub32, 1
  store i32 %add33, i32* %cols, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end
  %41 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth35 = getelementptr inbounds %struct._Tile, %struct._Tile* %41, i32 0, i32 5
  %42 = load i16, i16* %ewidth35, align 2
  %conv36 = zext i16 %42 to i32
  %43 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp37 = getelementptr inbounds %struct._Tile, %struct._Tile* %43, i32 0, i32 4
  %44 = load i8, i8* %bpp37, align 1
  %conv38 = zext i8 %44 to i32
  %mul39 = mul nsw i32 %conv36, %conv38
  store i32 %mul39, i32* %srcstride, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %45 = load i32, i32* %rows, align 4
  %dec = add i32 %45, -1
  store i32 %dec, i32* %rows, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %d, align 8
  %47 = load i8*, i8** %s, align 8
  %48 = load i32, i32* %cols, align 4
  %49 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp40 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %49, i32 0, i32 3
  %50 = load i32, i32* %bpp40, align 4
  %mul41 = mul i32 %48, %50
  %conv42 = zext i32 %mul41 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %conv42, i32 1, i1 false)
  %51 = load i32, i32* %srcstride, align 4
  %52 = load i8*, i8** %s, align 8
  %idx.ext43 = zext i32 %51 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %52, i64 %idx.ext43
  store i8* %add.ptr44, i8** %s, align 8
  %53 = load i32, i32* %stride.addr, align 4
  %54 = load i8*, i8** %d, align 8
  %idx.ext45 = zext i32 %53 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %idx.ext45
  store i8* %add.ptr46, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %55, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %56 = load i32, i32* %x, align 4
  %rem47 = urem i32 %56, 64
  %sub48 = sub i32 64, %rem47
  %57 = load i32, i32* %x, align 4
  %add49 = add i32 %57, %sub48
  store i32 %add49, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %58 = load i32, i32* %y, align 4
  %rem51 = urem i32 %58, 64
  %sub52 = sub i32 64, %rem51
  %59 = load i32, i32* %y, align 4
  %add53 = add i32 %59, %sub52
  store i32 %add53, i32* %y, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_write_pixel_data(%struct._TileManager* %tm, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %buffer, i32 %stride) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %dststride = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %y1.addr, align 4
  store i32 %0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %cmp = icmp ule i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x1.addr, align 4
  store i32 %3, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %x2.addr, align 4
  %cmp2 = icmp ule i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %6, i32 %7, i32 %8, i32 1, i32 1)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i32, i32* %stride.addr, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %y1.addr, align 4
  %sub = sub i32 %11, %12
  %mul = mul i32 %10, %sub
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %13 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp = getelementptr inbounds %struct._TileManager, %struct._TileManager* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp, align 4
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %x1.addr, align 4
  %sub4 = sub i32 %15, %16
  %mul5 = mul i32 %14, %sub4
  %idx.ext6 = zext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext6
  store i8* %add.ptr7, i8** %s, align 8
  %17 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %17, i32 0, i32 9
  %18 = load i8*, i8** %data, align 8
  %19 = load i32, i32* %y, align 4
  %and = and i32 %19, 63
  %20 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 5
  %21 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %21 to i32
  %mul8 = mul i32 %and, %conv
  %22 = load i32, i32* %x, align 4
  %and9 = and i32 %22, 63
  %add = add i32 %mul8, %and9
  %23 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp10 = getelementptr inbounds %struct._Tile, %struct._Tile* %23, i32 0, i32 4
  %24 = load i8, i8* %bpp10, align 1
  %conv11 = zext i8 %24 to i32
  %mul12 = mul i32 %add, %conv11
  %idx.ext13 = zext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %idx.ext13
  store i8* %add.ptr14, i8** %d, align 8
  %25 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %25, i32 0, i32 6
  %26 = load i16, i16* %eheight, align 2
  %conv15 = zext i16 %26 to i32
  %27 = load i32, i32* %y, align 4
  %rem = urem i32 %27, 64
  %sub16 = sub i32 %conv15, %rem
  store i32 %sub16, i32* %rows, align 4
  %28 = load i32, i32* %rows, align 4
  %29 = load i32, i32* %y2.addr, align 4
  %30 = load i32, i32* %y, align 4
  %sub17 = sub i32 %29, %30
  %add18 = add i32 %sub17, 1
  %cmp19 = icmp ugt i32 %28, %add18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %31 = load i32, i32* %y2.addr, align 4
  %32 = load i32, i32* %y, align 4
  %sub21 = sub i32 %31, %32
  %add22 = add i32 %sub21, 1
  store i32 %add22, i32* %rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %33 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth23 = getelementptr inbounds %struct._Tile, %struct._Tile* %33, i32 0, i32 5
  %34 = load i16, i16* %ewidth23, align 2
  %conv24 = zext i16 %34 to i32
  %35 = load i32, i32* %x, align 4
  %rem25 = urem i32 %35, 64
  %sub26 = sub i32 %conv24, %rem25
  store i32 %sub26, i32* %cols, align 4
  %36 = load i32, i32* %cols, align 4
  %37 = load i32, i32* %x2.addr, align 4
  %38 = load i32, i32* %x, align 4
  %sub27 = sub i32 %37, %38
  %add28 = add i32 %sub27, 1
  %cmp29 = icmp ugt i32 %36, %add28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end
  %39 = load i32, i32* %x2.addr, align 4
  %40 = load i32, i32* %x, align 4
  %sub32 = sub i32 %39, %40
  %add33 = add i32 %sub32, 1
  store i32 %add33, i32* %cols, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end
  %41 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth35 = getelementptr inbounds %struct._Tile, %struct._Tile* %41, i32 0, i32 5
  %42 = load i16, i16* %ewidth35, align 2
  %conv36 = zext i16 %42 to i32
  %43 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp37 = getelementptr inbounds %struct._Tile, %struct._Tile* %43, i32 0, i32 4
  %44 = load i8, i8* %bpp37, align 1
  %conv38 = zext i8 %44 to i32
  %mul39 = mul nsw i32 %conv36, %conv38
  store i32 %mul39, i32* %dststride, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %45 = load i32, i32* %rows, align 4
  %dec = add i32 %45, -1
  store i32 %dec, i32* %rows, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %d, align 8
  %47 = load i8*, i8** %s, align 8
  %48 = load i32, i32* %cols, align 4
  %49 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp40 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %49, i32 0, i32 3
  %50 = load i32, i32* %bpp40, align 4
  %mul41 = mul i32 %48, %50
  %conv42 = zext i32 %mul41 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %conv42, i32 1, i1 false)
  %51 = load i32, i32* %stride.addr, align 4
  %52 = load i8*, i8** %s, align 8
  %idx.ext43 = zext i32 %51 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %52, i64 %idx.ext43
  store i8* %add.ptr44, i8** %s, align 8
  %53 = load i32, i32* %dststride, align 4
  %54 = load i8*, i8** %d, align 8
  %idx.ext45 = zext i32 %53 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %idx.ext45
  store i8* %add.ptr46, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %55, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %56 = load i32, i32* %x, align 4
  %rem47 = urem i32 %56, 64
  %sub48 = sub i32 64, %rem47
  %57 = load i32, i32* %x, align 4
  %add49 = add i32 %57, %sub48
  store i32 %add49, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %58 = load i32, i32* %y, align 4
  %rem51 = urem i32 %58, 64
  %sub52 = sub i32 64, %rem51
  %59 = load i32, i32* %y, align 4
  %add53 = add i32 %59, %sub52
  store i32 %add53, i32* %y, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_read_pixel_data_1(%struct._TileManager* %tm, i32 %x, i32 %y, i8* %buffer) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %num = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %src = alloca i8*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call i32 @tile_manager_get_tile_num(%struct._TileManager* %0, i32 %1, i32 %2)
  store i32 %call, i32* %num, align 4
  %3 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %num, align 4
  %5 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num = getelementptr inbounds %struct._TileManager, %struct._TileManager* %5, i32 0, i32 9
  %6 = load i32, i32* %cached_num, align 4
  %cmp1 = icmp ne i32 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile = getelementptr inbounds %struct._TileManager, %struct._TileManager* %7, i32 0, i32 10
  %8 = load %struct._Tile*, %struct._Tile** %cached_tile, align 8
  %tobool = icmp ne %struct._Tile* %8, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.then.2
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile4 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %9, i32 0, i32 10
  %10 = load %struct._Tile*, %struct._Tile** %cached_tile4, align 8
  call void @tile_release(%struct._Tile* %10, i32 0)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.then.2
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num6 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 9
  store i32 -1, i32* %cached_num6, align 4
  %12 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile7 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %12, i32 0, i32 10
  store %struct._Tile* null, %struct._Tile** %cached_tile7, align 8
  %13 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %14 = load i32, i32* %num, align 4
  %call8 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %13, i32 %14, i32 1, i32 0)
  store %struct._Tile* %call8, %struct._Tile** %tile, align 8
  %15 = load i32, i32* %num, align 4
  %16 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num9 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %16, i32 0, i32 9
  store i32 %15, i32* %cached_num9, align 4
  %17 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %18 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile10 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %18, i32 0, i32 10
  store %struct._Tile* %17, %struct._Tile** %cached_tile10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.5, %if.end
  %19 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile12 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %19, i32 0, i32 10
  %20 = load %struct._Tile*, %struct._Tile** %cached_tile12, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 9
  %21 = load i8*, i8** %data, align 8
  %22 = load i32, i32* %y.addr, align 4
  %and = and i32 %22, 63
  %23 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile13 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %23, i32 0, i32 10
  %24 = load %struct._Tile*, %struct._Tile** %cached_tile13, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 5
  %25 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %25 to i32
  %mul = mul nsw i32 %and, %conv
  %26 = load i32, i32* %x.addr, align 4
  %and14 = and i32 %26, 63
  %add = add nsw i32 %mul, %and14
  %27 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile15 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %27, i32 0, i32 10
  %28 = load %struct._Tile*, %struct._Tile** %cached_tile15, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %28, i32 0, i32 4
  %29 = load i8, i8* %bpp, align 1
  %conv16 = zext i8 %29 to i32
  %mul17 = mul nsw i32 %add, %conv16
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %30 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp18 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %30, i32 0, i32 3
  %31 = load i32, i32* %bpp18, align 4
  switch i32 %31, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.20
    i32 2, label %sw.bb.23
    i32 1, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.11
  %32 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr19, i8** %buffer.addr, align 8
  store i8 %33, i8* %34, align 1
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %if.end.11, %sw.bb
  %35 = load i8*, i8** %src, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr21, i8** %src, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr22, i8** %buffer.addr, align 8
  store i8 %36, i8* %37, align 1
  br label %sw.bb.23

sw.bb.23:                                         ; preds = %if.end.11, %sw.bb.20
  %38 = load i8*, i8** %src, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr24, i8** %src, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr25, i8** %buffer.addr, align 8
  store i8 %39, i8* %40, align 1
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.end.11, %sw.bb.23
  %41 = load i8*, i8** %src, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr27, i8** %src, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr28, i8** %buffer.addr, align 8
  store i8 %42, i8* %43, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.26, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_manager_write_pixel_data_1(%struct._TileManager* %tm, i32 %x, i32 %y, i8* %buffer) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %tile = alloca %struct._Tile*, align 8
  %dest = alloca i8*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %0, i32 %1, i32 %2, i32 1, i32 1)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %3 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 9
  %4 = load i8*, i8** %data, align 8
  %5 = load i32, i32* %y.addr, align 4
  %and = and i32 %5, 63
  %6 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 5
  %7 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %7 to i32
  %mul = mul nsw i32 %and, %conv
  %8 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %8, 63
  %add = add nsw i32 %mul, %and1
  %9 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 4
  %10 = load i8, i8* %bpp, align 1
  %conv2 = zext i8 %10 to i32
  %mul3 = mul nsw i32 %add, %conv2
  %idx.ext = sext i32 %mul3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %bpp4 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 3
  %12 = load i32, i32* %bpp4, align 4
  switch i32 %12, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.6
    i32 2, label %sw.bb.9
    i32 1, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %13 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %dest, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %dest, align 8
  store i8 %14, i8* %15, align 1
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %sw.bb
  %16 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %buffer.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %dest, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr8, i8** %dest, align 8
  store i8 %17, i8* %18, align 1
  br label %sw.bb.9

sw.bb.9:                                          ; preds = %entry, %sw.bb.6
  %19 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr10, i8** %buffer.addr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %dest, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %dest, align 8
  store i8 %20, i8* %21, align 1
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %entry, %sw.bb.9
  %22 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr13, i8** %buffer.addr, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %dest, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr14, i8** %dest, align 8
  store i8 %23, i8* %24, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.12, %entry
  %25 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %25, i32 1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @tile_manager_invalidate_tile(%struct._TileManager* %tm, i32 %tile_num) #2 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile_num.addr = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %new = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %tile_num, i32* %tile_num.addr, align 4
  %0 = load i32, i32* %tile_num.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %1, i32 0, i32 6
  %2 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %2, i64 %idxprom
  %3 = load %struct._Tile*, %struct._Tile** %arrayidx, align 8
  store %struct._Tile* %3, %struct._Tile** %tile, align 8
  %4 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.32

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %tile_num.addr, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num = getelementptr inbounds %struct._TileManager, %struct._TileManager* %6, i32 0, i32 9
  %7 = load i32, i32* %cached_num, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile = getelementptr inbounds %struct._TileManager, %struct._TileManager* %8, i32 0, i32 10
  %9 = load %struct._Tile*, %struct._Tile** %cached_tile, align 8
  call void @tile_release(%struct._Tile* %9, i32 0)
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_tile2 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %10, i32 0, i32 10
  store %struct._Tile* null, %struct._Tile** %cached_tile2, align 8
  %11 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %cached_num3 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %11, i32 0, i32 9
  store i32 -1, i32* %cached_num3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %if.end
  %12 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %cached = getelementptr inbounds %struct._Tile, %struct._Tile* %12, i32 0, i32 3
  %bf.load5 = load i8, i8* %cached, align 8
  %bf.lshr6 = lshr i8 %bf.load5, 2
  %bf.clear7 = and i8 %bf.lshr6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  %13 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_cache_flush(%struct._Tile* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.4
  %14 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %14, i32 0, i32 2
  %15 = load i32, i32* %share_count, align 4
  %cmp12 = icmp ugt i32 %15, 1
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.11
  %16 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %16, i32 0, i32 4
  %17 = load i8, i8* %bpp, align 1
  %conv = zext i8 %17 to i32
  %call = call %struct._Tile* @tile_new(i32 %conv)
  store %struct._Tile* %call, %struct._Tile** %new, align 8
  %18 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %18, i32 0, i32 5
  %19 = load i16, i16* %ewidth, align 2
  %20 = load %struct._Tile*, %struct._Tile** %new, align 8
  %ewidth14 = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 5
  store i16 %19, i16* %ewidth14, align 2
  %21 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %21, i32 0, i32 6
  %22 = load i16, i16* %eheight, align 2
  %23 = load %struct._Tile*, %struct._Tile** %new, align 8
  %eheight15 = getelementptr inbounds %struct._Tile, %struct._Tile* %23, i32 0, i32 6
  store i16 %22, i16* %eheight15, align 2
  %24 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 7
  %25 = load i32, i32* %size, align 4
  %26 = load %struct._Tile*, %struct._Tile** %new, align 8
  %size16 = getelementptr inbounds %struct._Tile, %struct._Tile* %26, i32 0, i32 7
  store i32 %25, i32* %size16, align 4
  %27 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %28 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %29 = bitcast %struct._TileManager* %28 to i8*
  %30 = load i32, i32* %tile_num.addr, align 4
  call void @tile_detach(%struct._Tile* %27, i8* %29, i32 %30)
  %31 = load %struct._Tile*, %struct._Tile** %new, align 8
  %32 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %33 = bitcast %struct._TileManager* %32 to i8*
  %34 = load i32, i32* %tile_num.addr, align 4
  call void @tile_attach(%struct._Tile* %31, i8* %33, i32 %34)
  %35 = load %struct._Tile*, %struct._Tile** %new, align 8
  store %struct._Tile* %35, %struct._Tile** %tile, align 8
  %36 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %37 = load i32, i32* %tile_num.addr, align 4
  %idxprom17 = sext i32 %37 to i64
  %38 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %tiles18 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %38, i32 0, i32 6
  %39 = load %struct._Tile**, %struct._Tile*** %tiles18, align 8
  %arrayidx19 = getelementptr inbounds %struct._Tile*, %struct._Tile** %39, i64 %idxprom17
  store %struct._Tile* %36, %struct._Tile** %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end.11
  %40 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %valid21 = getelementptr inbounds %struct._Tile, %struct._Tile* %40, i32 0, i32 3
  %bf.load22 = load i8, i8* %valid21, align 8
  %bf.clear23 = and i8 %bf.load22, -3
  store i8 %bf.clear23, i8* %valid21, align 8
  %41 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %41, i32 0, i32 9
  %42 = load i8*, i8** %data, align 8
  %tobool24 = icmp ne i8* %42, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.20
  %43 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data26 = getelementptr inbounds %struct._Tile, %struct._Tile* %43, i32 0, i32 9
  %44 = load i8*, i8** %data26, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data27 = getelementptr inbounds %struct._Tile, %struct._Tile* %45, i32 0, i32 9
  store i8* null, i8** %data27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.20
  %46 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %46, i32 0, i32 10
  %47 = load i64, i64* %swap_offset, align 8
  %cmp29 = icmp ne i64 %47, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %48 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_swap_delete(%struct._Tile* %48)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then, %if.then.31, %if.end.28
  ret void
}

declare void @tile_cache_flush(%struct._Tile*) #1

declare void @tile_swap_delete(%struct._Tile*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
