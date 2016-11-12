; ModuleID = './libgimp/gimpdrawable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_drawable_get = private unnamed_addr constant [18 x i8] c"gimp_drawable_get\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"width > 0 && height > 0 && bpp > 0\00", align 1
@__func__.gimp_drawable_detach = private unnamed_addr constant [21 x i8] c"gimp_drawable_detach\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@__func__.gimp_drawable_flush = private unnamed_addr constant [20 x i8] c"gimp_drawable_flush\00", align 1
@__func__.gimp_drawable_get_tile = private unnamed_addr constant [23 x i8] c"gimp_drawable_get_tile\00", align 1
@__func__.gimp_drawable_get_tile2 = private unnamed_addr constant [24 x i8] c"gimp_drawable_get_tile2\00", align 1
@__func__.gimp_drawable_get_color_uchar = private unnamed_addr constant [30 x i8] c"gimp_drawable_get_color_uchar\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"color_uchar != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_get(i32 %drawable_ID) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %drawable_ID.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  store i32 %call, i32* %width, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %1)
  store i32 %call1, i32* %height, align 4
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %2)
  store i32 %call2, i32* %bpp, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %4 = load i32, i32* %height, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %bpp, align 4
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_drawable_get, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call6 = call noalias i8* @g_slice_alloc0(i64 40)
  %6 = bitcast i8* %call6 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  store i32 %7, i32* %drawable_id, align 4
  %9 = load i32, i32* %width, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  store i32 %9, i32* %width7, align 4
  %11 = load i32, i32* %height, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  store i32 %11, i32* %height8, align 4
  %13 = load i32, i32* %bpp, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 3
  store i32 %13, i32* %bpp9, align 4
  %15 = load i32, i32* %height, align 4
  %call10 = call i32 @gimp_tile_height() #3
  %add = add i32 %15, %call10
  %sub = sub i32 %add, 1
  %call11 = call i32 @gimp_tile_height() #3
  %div = udiv i32 %sub, %call11
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 4
  store i32 %div, i32* %ntile_rows, align 4
  %17 = load i32, i32* %width, align 4
  %call12 = call i32 @gimp_tile_width() #3
  %add13 = add i32 %17, %call12
  %sub14 = sub i32 %add13, 1
  %call15 = call i32 @gimp_tile_width() #3
  %div16 = udiv i32 %sub14, %call15
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 5
  store i32 %div16, i32* %ntile_cols, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %19, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %20
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #2

; Function Attrs: nounwind uwtable
define void @gimp_drawable_detach(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_detach, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.9

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 6
  %3 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %tobool = icmp ne %struct._GimpTile* %3, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 6
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tiles2, align 8
  %6 = bitcast %struct._GimpTile* %5 to i8*
  call void @g_free(i8* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 7
  %8 = load %struct._GimpTile*, %struct._GimpTile** %shadow_tiles, align 8
  %tobool4 = icmp ne %struct._GimpTile* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 7
  %10 = load %struct._GimpTile*, %struct._GimpTile** %shadow_tiles6, align 8
  %11 = bitcast %struct._GimpTile* %10 to i8*
  call void @g_free(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to i8*
  call void @g_slice_free1(i64 40, i8* %13)
  br label %do.end.9

do.end.9:                                         ; preds = %if.else, %do.body.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_flush(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tiles = alloca %struct._GimpTile*, align 8
  %n_tiles = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_flush, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 6
  %2 = load %struct._GimpTile*, %struct._GimpTile** %tiles1, align 8
  %tobool = icmp ne %struct._GimpTile* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 6
  %4 = load %struct._GimpTile*, %struct._GimpTile** %tiles3, align 8
  store %struct._GimpTile* %4, %struct._GimpTile** %tiles, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 4
  %6 = load i32, i32* %ntile_rows, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 %6, %8
  store i32 %mul, i32* %n_tiles, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_tiles, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %12, i64 %idxprom
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx, i32 0, i32 4
  %13 = load i16, i16* %ref_count, align 2
  %conv = zext i16 %13 to i32
  %cmp5 = icmp sgt i32 %conv, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %15, i64 %idxprom7
  %dirty = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx8, i32 0, i32 5
  %bf.load = load i8, i8* %dirty, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool9 = icmp ne i32 %bf.cast, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %17, i64 %idxprom11
  call void @gimp_tile_flush(%struct._GimpTile* %arrayidx12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %do.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 7
  %20 = load %struct._GimpTile*, %struct._GimpTile** %shadow_tiles, align 8
  %tobool15 = icmp ne %struct._GimpTile* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.46

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 7
  %22 = load %struct._GimpTile*, %struct._GimpTile** %shadow_tiles17, align 8
  store %struct._GimpTile* %22, %struct._GimpTile** %tiles, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 4
  %24 = load i32, i32* %ntile_rows18, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 5
  %26 = load i32, i32* %ntile_cols19, align 4
  %mul20 = mul i32 %24, %26
  store i32 %mul20, i32* %n_tiles, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.43, %if.then.16
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n_tiles, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body.24, label %for.end.45

for.body.24:                                      ; preds = %for.cond.21
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i64 %idxprom25
  %ref_count27 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx26, i32 0, i32 4
  %31 = load i16, i16* %ref_count27, align 2
  %conv28 = zext i16 %31 to i32
  %cmp29 = icmp sgt i32 %conv28, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %for.body.24
  %32 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %33, i64 %idxprom32
  %dirty34 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx33, i32 0, i32 5
  %bf.load35 = load i8, i8* %dirty34, align 2
  %bf.clear36 = and i8 %bf.load35, 1
  %bf.cast37 = zext i8 %bf.clear36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %land.lhs.true.31
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i64 %idxprom40
  call void @gimp_tile_flush(%struct._GimpTile* %arrayidx41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %land.lhs.true.31, %for.body.24
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %36 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.21

for.end.45:                                       ; preds = %for.cond.21
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.end.14
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @_gimp_tile_cache_flush_drawable(%struct._GimpDrawable* %37)
  br label %return

return:                                           ; preds = %if.end.46, %if.else
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @gimp_tile_flush(%struct._GimpTile*) #1

declare hidden void @_gimp_tile_cache_flush_drawable(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %drawable, i32 %shadow, i32 %row, i32 %col) #0 {
entry:
  %retval = alloca %struct._GimpTile*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %shadow.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %tiles = alloca %struct._GimpTile*, align 8
  %right_tile = alloca i32, align 4
  %bottom_tile = alloca i32, align 4
  %n_tiles = alloca i32, align 4
  %tile_num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %shadow, i32* %shadow.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_drawable_get_tile, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTile* null, %struct._GimpTile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %shadow.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 7
  %3 = load %struct._GimpTile*, %struct._GimpTile** %shadow_tiles, align 8
  store %struct._GimpTile* %3, %struct._GimpTile** %tiles, align 8
  br label %if.end.4

if.else.2:                                        ; preds = %do.end
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 6
  %5 = load %struct._GimpTile*, %struct._GimpTile** %tiles3, align 8
  store %struct._GimpTile* %5, %struct._GimpTile** %tiles, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.2, %if.then.1
  %6 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %tobool5 = icmp ne %struct._GimpTile* %6, null
  br i1 %tobool5, label %if.end.78, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 4
  %8 = load i32, i32* %ntile_rows, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 5
  %10 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 %8, %10
  store i32 %mul, i32* %n_tiles, align 4
  %11 = load i32, i32* %n_tiles, align 4
  %conv = sext i32 %11 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 40)
  %12 = bitcast i8* %call to %struct._GimpTile*
  store %struct._GimpTile* %12, %struct._GimpTile** %tiles, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 5
  %16 = load i32, i32* %ntile_cols7, align 4
  %sub = sub i32 %16, 1
  %call8 = call i32 @gimp_tile_width() #3
  %mul9 = mul i32 %sub, %call8
  %sub10 = sub i32 %14, %mul9
  store i32 %sub10, i32* %right_tile, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 4
  %20 = load i32, i32* %ntile_rows11, align 4
  %sub12 = sub i32 %20, 1
  %call13 = call i32 @gimp_tile_height() #3
  %mul14 = mul i32 %sub12, %call13
  %sub15 = sub i32 %18, %mul14
  store i32 %sub15, i32* %bottom_tile, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %if.then.6
  %21 = load i32, i32* %i, align 4
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 4
  %23 = load i32, i32* %ntile_rows16, align 4
  %cmp17 = icmp ult i32 %21, %23
  br i1 %cmp17, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 5
  %26 = load i32, i32* %ntile_cols20, align 4
  %cmp21 = icmp ult i32 %24, %26
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.19
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 3
  %28 = load i32, i32* %bpp, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i64 %idxprom
  %bpp24 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx, i32 0, i32 2
  store i32 %28, i32* %bpp24, align 4
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %33, i64 %idxprom25
  %tile_num27 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx26, i32 0, i32 3
  store i32 %31, i32* %tile_num27, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i64 %idxprom28
  %ref_count = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx29, i32 0, i32 4
  store i16 0, i16* %ref_count, align 2
  %36 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %37, i64 %idxprom30
  %dirty = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx31, i32 0, i32 5
  %bf.load = load i8, i8* %dirty, align 2
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %dirty, align 2
  %38 = load i32, i32* %shadow.addr, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %40, i64 %idxprom32
  %shadow34 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx33, i32 0, i32 5
  %41 = trunc i32 %38 to i8
  %bf.load35 = load i8, i8* %shadow34, align 2
  %bf.value = and i8 %41, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear36 = and i8 %bf.load35, -3
  %bf.set = or i8 %bf.clear36, %bf.shl
  store i8 %bf.set, i8* %shadow34, align 2
  %bf.result.cast = zext i8 %bf.value to i32
  %42 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %43, i64 %idxprom37
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx38, i32 0, i32 6
  store i8* null, i8** %data, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %46, i64 %idxprom39
  %drawable41 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx40, i32 0, i32 7
  store %struct._GimpDrawable* %44, %struct._GimpDrawable** %drawable41, align 8
  %47 = load i32, i32* %j, align 4
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 5
  %49 = load i32, i32* %ntile_cols42, align 4
  %sub43 = sub i32 %49, 1
  %cmp44 = icmp eq i32 %47, %sub43
  br i1 %cmp44, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %for.body.23
  %50 = load i32, i32* %right_tile, align 4
  %51 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %51 to i64
  %52 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %52, i64 %idxprom47
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx48, i32 0, i32 0
  store i32 %50, i32* %ewidth, align 4
  br label %if.end.54

if.else.49:                                       ; preds = %for.body.23
  %call50 = call i32 @gimp_tile_width() #3
  %53 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %54, i64 %idxprom51
  %ewidth53 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx52, i32 0, i32 0
  store i32 %call50, i32* %ewidth53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.49, %if.then.46
  %55 = load i32, i32* %i, align 4
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_rows55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %56, i32 0, i32 4
  %57 = load i32, i32* %ntile_rows55, align 4
  %sub56 = sub i32 %57, 1
  %cmp57 = icmp eq i32 %55, %sub56
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %if.end.54
  %58 = load i32, i32* %bottom_tile, align 4
  %59 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %59 to i64
  %60 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %60, i64 %idxprom60
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx61, i32 0, i32 1
  store i32 %58, i32* %eheight, align 4
  br label %if.end.67

if.else.62:                                       ; preds = %if.end.54
  %call63 = call i32 @gimp_tile_height() #3
  %61 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %62, i64 %idxprom64
  %eheight66 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %arrayidx65, i32 0, i32 1
  store i32 %call63, i32* %eheight66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %63 = load i32, i32* %j, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %j, align 4
  %64 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %64, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %65 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %65, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %66 = load i32, i32* %shadow.addr, align 4
  %tobool72 = icmp ne i32 %66, 0
  br i1 %tobool72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %for.end.71
  %67 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %shadow_tiles74 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %68, i32 0, i32 7
  store %struct._GimpTile* %67, %struct._GimpTile** %shadow_tiles74, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %for.end.71
  %69 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tiles76 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %70, i32 0, i32 6
  store %struct._GimpTile* %69, %struct._GimpTile** %tiles76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.73
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.4
  %71 = load i32, i32* %row.addr, align 4
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %ntile_cols79 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 5
  %73 = load i32, i32* %ntile_cols79, align 4
  %mul80 = mul i32 %71, %73
  %74 = load i32, i32* %col.addr, align 4
  %add = add i32 %mul80, %74
  store i32 %add, i32* %tile_num, align 4
  %75 = load i32, i32* %tile_num, align 4
  %idxprom81 = sext i32 %75 to i64
  %76 = load %struct._GimpTile*, %struct._GimpTile** %tiles, align 8
  %arrayidx82 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %76, i64 %idxprom81
  store %struct._GimpTile* %arrayidx82, %struct._GimpTile** %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.else
  %77 = load %struct._GimpTile*, %struct._GimpTile** %retval
  ret %struct._GimpTile* %77
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %drawable, i32 %shadow, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._GimpTile*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %shadow.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %shadow, i32* %shadow.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp ne %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_get_tile2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTile* null, %struct._GimpTile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 @gimp_tile_width() #3
  %div = udiv i32 %1, %call
  store i32 %div, i32* %col, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call1 = call i32 @gimp_tile_height() #3
  %div2 = udiv i32 %2, %call1
  store i32 %div2, i32* %row, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load i32, i32* %shadow.addr, align 4
  %5 = load i32, i32* %row, align 4
  %6 = load i32, i32* %col, align 4
  %call3 = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %3, i32 %4, i32 %5, i32 %6)
  store %struct._GimpTile* %call3, %struct._GimpTile** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %7 = load %struct._GimpTile*, %struct._GimpTile** %retval
  ret %struct._GimpTile* %7
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_get_color_uchar(i32 %drawable_ID, %struct._GimpRGB* %color, i8* %color_uchar) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_uchar.addr = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %color_uchar, i8** %color_uchar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_color_uchar, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %color_uchar.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_color_uchar, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %2)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %do.end.6
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %4 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %3, i8* %arrayidx, i8* %arrayidx7, i8* %arrayidx8)
  %7 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 -1, i8* %arrayidx9, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end.6
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %9 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %8, i8* %arrayidx11, i8* %arrayidx12, i8* %arrayidx13, i8* %arrayidx14)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end.6
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call16 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %13)
  %14 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %call16, i8* %arrayidx17, align 1
  %15 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 -1, i8* %arrayidx18, align 1
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end.6
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call20 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %16)
  %17 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %call20, i8* %arrayidx21, align 1
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %19 = load i8*, i8** %color_uchar.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %19, i64 1
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %18, i8* null, i8* null, i8* null, i8* %arrayidx22)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.4, %sw.default, %sw.bb.19, %sw.bb.15, %sw.bb.10, %sw.bb
  ret void
}

declare i32 @gimp_drawable_type(i32) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_drawable_get_thumbnail_data(i32 %drawable_ID, i32* %width, i32* %height, i32* %bpp) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %ret_width = alloca i32, align 4
  %ret_height = alloca i32, align 4
  %image_data = alloca i8*, align 8
  %data_size = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32*, i32** %width.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32*, i32** %height.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %bpp.addr, align 8
  %call = call i32 @_gimp_drawable_thumbnail(i32 %0, i32 %2, i32 %4, i32* %ret_width, i32* %ret_height, i32* %5, i32* %data_size, i8** %image_data)
  %6 = load i32, i32* %ret_width, align 4
  %7 = load i32*, i32** %width.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %ret_height, align 4
  %9 = load i32*, i32** %height.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i8*, i8** %image_data, align 8
  ret i8* %10
}

declare hidden i32 @_gimp_drawable_thumbnail(i32, i32, i32, i32*, i32*, i32*, i32*, i8**) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_drawable_get_sub_thumbnail_data(i32 %drawable_ID, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32* %dest_width, i32* %dest_height, i32* %bpp) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32*, align 8
  %dest_height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %ret_width = alloca i32, align 4
  %ret_height = alloca i32, align 4
  %image_data = alloca i8*, align 8
  %data_size = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32* %dest_width, i32** %dest_width.addr, align 8
  store i32* %dest_height, i32** %dest_height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %src_x.addr, align 4
  %2 = load i32, i32* %src_y.addr, align 4
  %3 = load i32, i32* %src_width.addr, align 4
  %4 = load i32, i32* %src_height.addr, align 4
  %5 = load i32*, i32** %dest_width.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %dest_height.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %bpp.addr, align 8
  %call = call i32 @_gimp_drawable_sub_thumbnail(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %6, i32 %8, i32* %ret_width, i32* %ret_height, i32* %9, i32* %data_size, i8** %image_data)
  %10 = load i32, i32* %ret_width, align 4
  %11 = load i32*, i32** %dest_width.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %ret_height, align 4
  %13 = load i32*, i32** %dest_height.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %image_data, align 8
  ret i8* %14
}

declare hidden i32 @_gimp_drawable_sub_thumbnail(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_valid(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_is_valid(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_valid(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_layer(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_is_layer(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_layer(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_text_layer(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_is_text_layer(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_text_layer(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_layer_mask(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_is_layer_mask(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_layer_mask(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_channel(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_is_channel(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_channel(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_delete(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_delete(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_delete(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_get_image(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_get_image(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_image(i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_drawable_get_name(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i8* @gimp_item_get_name(i32 %0)
  ret i8* %call
}

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_name(i32 %drawable_ID, i8* %name) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_item_set_name(i32 %0, i8* %1)
  ret i32 %call
}

declare i32 @gimp_item_set_name(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_get_visible(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_get_visible(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_visible(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_visible(i32 %drawable_ID, i32 %visible) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %visible.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %visible, i32* %visible.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %visible.addr, align 4
  %call = call i32 @gimp_item_set_visible(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_visible(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_get_linked(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_get_linked(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_linked(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_linked(i32 %drawable_ID, i32 %linked) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %linked.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %linked, i32* %linked.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %linked.addr, align 4
  %call = call i32 @gimp_item_set_linked(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_linked(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_get_tattoo(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_item_get_tattoo(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_tattoo(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_tattoo(i32 %drawable_ID, i32 %tattoo) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call i32 @gimp_item_set_tattoo(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_tattoo(i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_drawable_parasite_find(i32 %drawable_ID, i8* %name) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParasite* @gimp_item_get_parasite(i32 %0, i8* %1)
  ret %struct._GimpParasite* %call
}

declare %struct._GimpParasite* @gimp_item_get_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_parasite_attach(i32 %drawable_ID, %struct._GimpParasite* %parasite) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_item_attach_parasite(i32 %0, %struct._GimpParasite* %1)
  ret i32 %call
}

declare i32 @gimp_item_attach_parasite(i32, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_parasite_detach(i32 %drawable_ID, i8* %name) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_item_detach_parasite(i32 %0, i8* %1)
  ret i32 %call
}

declare i32 @gimp_item_detach_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_parasite_list(i32 %drawable_ID, i32* %num_parasites, i8*** %parasites) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_parasites.addr = alloca i32*, align 8
  %parasites.addr = alloca i8***, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32* %num_parasites, i32** %num_parasites.addr, align 8
  store i8*** %parasites, i8**** %parasites.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32*, i32** %num_parasites.addr, align 8
  %call = call i8** @gimp_item_get_parasite_list(i32 %0, i32* %1)
  %2 = load i8***, i8**** %parasites.addr, align 8
  store i8** %call, i8*** %2, align 8
  %3 = load i8***, i8**** %parasites.addr, align 8
  %4 = load i8**, i8*** %3, align 8
  %cmp = icmp ne i8** %4, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8** @gimp_item_get_parasite_list(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_attach_new_parasite(i32 %drawable_ID, i8* %name, i32 %flags, i32 %size, i8* %data) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %flags.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpParasite* @gimp_parasite_new(i8* %0, i32 %1, i32 %2, i8* %3)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %4 = load i32, i32* %drawable_ID.addr, align 4
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call1 = call i32 @gimp_item_attach_parasite(i32 %4, %struct._GimpParasite* %5)
  store i32 %call1, i32* %success, align 4
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
