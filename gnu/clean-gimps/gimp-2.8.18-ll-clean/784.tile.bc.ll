; ModuleID = './app/base/tile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct._TileManager = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@tile_ref_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Tried to detach a nonattached tile -- TILE BUG!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"tried to destroy a ref'd tile\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"tried to destroy an attached tile\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Tile* @tile_new(i32 %bpp) #0 {
entry:
  %bpp.addr = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 72)
  %0 = bitcast i8* %call to %struct._Tile*
  store %struct._Tile* %0, %struct._Tile** %tile, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 5
  store i16 64, i16* %ewidth, align 2
  %2 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 6
  store i16 64, i16* %eheight, align 2
  %3 = load i32, i32* %bpp.addr, align 4
  %conv = trunc i32 %3 to i8
  %4 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %bpp1 = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 4
  store i8 %conv, i8* %bpp1, align 1
  %5 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %5, i32 0, i32 10
  store i64 -1, i64* %swap_offset, align 8
  %6 = load %struct._Tile*, %struct._Tile** %tile, align 8
  ret %struct._Tile* %6
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define void @tile_lock(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load i32, i32* @tile_ref_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @tile_ref_count, align 4
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 0
  %2 = load i16, i16* %ref_count, align 2
  %inc1 = add i16 %2, 1
  store i16 %inc1, i16* %ref_count, align 2
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count2 = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 0
  %4 = load i16, i16* %ref_count2, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_cache_flush(%struct._Tile* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 9
  %7 = load i8*, i8** %data, align 8
  %cmp4 = icmp eq i8* %7, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_in(%struct._Tile* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %9 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.7
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink = getelementptr inbounds %struct._Tile, %struct._Tile* %10, i32 0, i32 11
  %11 = load %struct._TileLink*, %struct._TileLink** %tlink, align 8
  %tm = getelementptr inbounds %struct._TileLink, %struct._TileLink* %11, i32 0, i32 2
  %12 = load %struct._TileManager*, %struct._TileManager** %tm, align 8
  %13 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_validate_tile(%struct._TileManager* %12, %struct._Tile* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  ret void
}

declare void @tile_cache_flush(%struct._Tile*) #1

declare void @tile_swap_in(%struct._Tile*) #1

declare void @tile_manager_validate_tile(%struct._TileManager*, %struct._Tile*) #1

; Function Attrs: nounwind uwtable
define void @tile_release(%struct._Tile* %tile, i32 %dirty) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %dirty.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %dirty, i32* %dirty.addr, align 4
  %0 = load i32, i32* @tile_ref_count, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @tile_ref_count, align 4
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 0
  %2 = load i16, i16* %ref_count, align 2
  %dec1 = add i16 %2, -1
  store i16 %dec1, i16* %ref_count, align 2
  %3 = load i32, i32* %dirty.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %write_count = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 1
  %5 = load i16, i16* %write_count, align 2
  %dec2 = add i16 %5, -1
  store i16 %dec2, i16* %write_count, align 2
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 8
  %7 = load i8*, i8** %rowhint, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %8 = load i32, i32* %y, align 4
  %9 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 6
  %10 = load i16, i16* %eheight, align 2
  %conv = zext i16 %10 to i32
  %cmp = icmp slt i32 %8, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %y, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint6 = getelementptr inbounds %struct._Tile, %struct._Tile* %12, i32 0, i32 8
  %13 = load i8*, i8** %rowhint6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %y, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %15 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count8 = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 0
  %16 = load i16, i16* %ref_count8, align 2
  %conv9 = sext i16 %16 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.7
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %17, i32 0, i32 2
  %18 = load i32, i32* %share_count, align 4
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %19 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_destroy(%struct._Tile* %19)
  br label %if.end.17

if.else:                                          ; preds = %if.then.12
  %20 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_cache_insert(%struct._Tile* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.16, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_destroy(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 0
  %1 = load i16, i16* %ref_count, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end

if.end:                                           ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 2
  %3 = load i32, i32* %share_count, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 9
  %5 = load i8*, i8** %data, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data6 = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 9
  %7 = load i8*, i8** %data6, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data7 = getelementptr inbounds %struct._Tile, %struct._Tile* %8, i32 0, i32 9
  store i8* null, i8** %data7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %9 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 8
  %10 = load i8*, i8** %rowhint, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint11 = getelementptr inbounds %struct._Tile, %struct._Tile* %11, i32 0, i32 8
  %12 = load i8*, i8** %rowhint11, align 8
  call void @g_slice_free1(i64 64, i8* %12)
  %13 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %rowhint12 = getelementptr inbounds %struct._Tile, %struct._Tile* %13, i32 0, i32 8
  store i8* null, i8** %rowhint12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %14 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_cache_flush(%struct._Tile* %14)
  %15 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 10
  %16 = load i64, i64* %swap_offset, align 8
  %cmp = icmp ne i64 %16, -1
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.13
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_swap_delete(%struct._Tile* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %18 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %19 = bitcast %struct._Tile* %18 to i8*
  call void @g_slice_free1(i64 72, i8* %19)
  br label %do.end

do.end:                                           ; preds = %if.then, %if.then.2, %do.body
  ret void
}

declare void @tile_cache_insert(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define void @tile_alloc(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 9
  %1 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 7
  %3 = load i32, i32* %size, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data1 = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 9
  store i8* %call, i8** %data1, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @tile_size(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 7
  %1 = load i32, i32* %size, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @tile_ewidth(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 5
  %1 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @tile_eheight(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %eheight = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 6
  %1 = load i16, i16* %eheight, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @tile_bpp(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 4
  %1 = load i8, i8* %bpp, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @tile_is_valid(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: nounwind uwtable
define void @tile_attach(%struct._Tile* %tile, i8* %tm, i32 %tile_num) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %tm.addr = alloca i8*, align 8
  %tile_num.addr = alloca i32, align 4
  %new = alloca %struct._TileLink*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i8* %tm, i8** %tm.addr, align 8
  store i32 %tile_num, i32* %tile_num.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 2
  %1 = load i32, i32* %share_count, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 11
  %4 = load %struct._TileLink*, %struct._TileLink** %tlink, align 8
  %tm1 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %4, i32 0, i32 2
  %5 = load %struct._TileManager*, %struct._TileManager** %tm1, align 8
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_validate_tile(%struct._TileManager* %5, %struct._Tile* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count2 = getelementptr inbounds %struct._Tile, %struct._Tile* %7, i32 0, i32 2
  %8 = load i32, i32* %share_count2, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %share_count2, align 4
  %call = call noalias i8* @g_slice_alloc(i64 24)
  %9 = bitcast i8* %call to %struct._TileLink*
  store %struct._TileLink* %9, %struct._TileLink** %new, align 8
  %10 = load i8*, i8** %tm.addr, align 8
  %11 = bitcast i8* %10 to %struct._TileManager*
  %12 = load %struct._TileLink*, %struct._TileLink** %new, align 8
  %tm3 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %12, i32 0, i32 2
  store %struct._TileManager* %11, %struct._TileManager** %tm3, align 8
  %13 = load i32, i32* %tile_num.addr, align 4
  %14 = load %struct._TileLink*, %struct._TileLink** %new, align 8
  %tile_num4 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %14, i32 0, i32 1
  store i32 %13, i32* %tile_num4, align 4
  %15 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink5 = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 11
  %16 = load %struct._TileLink*, %struct._TileLink** %tlink5, align 8
  %17 = load %struct._TileLink*, %struct._TileLink** %new, align 8
  %next = getelementptr inbounds %struct._TileLink, %struct._TileLink* %17, i32 0, i32 0
  store %struct._TileLink* %16, %struct._TileLink** %next, align 8
  %18 = load %struct._TileLink*, %struct._TileLink** %new, align 8
  %19 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink6 = getelementptr inbounds %struct._Tile, %struct._Tile* %19, i32 0, i32 11
  store %struct._TileLink* %18, %struct._TileLink** %tlink6, align 8
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

; Function Attrs: nounwind uwtable
define void @tile_detach(%struct._Tile* %tile, i8* %tm, i32 %tile_num) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %tm.addr = alloca i8*, align 8
  %tile_num.addr = alloca i32, align 4
  %link = alloca %struct._TileLink**, align 8
  %tmp = alloca %struct._TileLink*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i8* %tm, i8** %tm.addr, align 8
  store i32 %tile_num, i32* %tile_num.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %tlink = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 11
  store %struct._TileLink** %tlink, %struct._TileLink*** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %2 = load %struct._TileLink*, %struct._TileLink** %1, align 8
  %cmp = icmp ne %struct._TileLink* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %4 = load %struct._TileLink*, %struct._TileLink** %3, align 8
  %tm1 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %4, i32 0, i32 2
  %5 = load %struct._TileManager*, %struct._TileManager** %tm1, align 8
  %6 = load i8*, i8** %tm.addr, align 8
  %7 = bitcast i8* %6 to %struct._TileManager*
  %cmp2 = icmp eq %struct._TileManager* %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %9 = load %struct._TileLink*, %struct._TileLink** %8, align 8
  %tile_num3 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %9, i32 0, i32 1
  %10 = load i32, i32* %tile_num3, align 4
  %11 = load i32, i32* %tile_num.addr, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %13 = load %struct._TileLink*, %struct._TileLink** %12, align 8
  %next = getelementptr inbounds %struct._TileLink, %struct._TileLink* %13, i32 0, i32 0
  store %struct._TileLink** %next, %struct._TileLink*** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %15 = load %struct._TileLink*, %struct._TileLink** %14, align 8
  %cmp5 = icmp eq %struct._TileLink* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0))
  br label %if.end.15

if.end.7:                                         ; preds = %for.end
  %16 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  %17 = load %struct._TileLink*, %struct._TileLink** %16, align 8
  store %struct._TileLink* %17, %struct._TileLink** %tmp, align 8
  %18 = load %struct._TileLink*, %struct._TileLink** %tmp, align 8
  %next8 = getelementptr inbounds %struct._TileLink, %struct._TileLink* %18, i32 0, i32 0
  %19 = load %struct._TileLink*, %struct._TileLink** %next8, align 8
  %20 = load %struct._TileLink**, %struct._TileLink*** %link, align 8
  store %struct._TileLink* %19, %struct._TileLink** %20, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %21 = load %struct._TileLink*, %struct._TileLink** %tmp, align 8
  %22 = bitcast %struct._TileLink* %21 to i8*
  call void @g_slice_free1(i64 24, i8* %22)
  br label %do.end

do.end:                                           ; preds = %do.body
  %23 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count = getelementptr inbounds %struct._Tile, %struct._Tile* %23, i32 0, i32 2
  %24 = load i32, i32* %share_count, align 4
  %dec = add i32 %24, -1
  store i32 %dec, i32* %share_count, align 4
  %25 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %share_count9 = getelementptr inbounds %struct._Tile, %struct._Tile* %25, i32 0, i32 2
  %26 = load i32, i32* %share_count9, align 4
  %cmp10 = icmp eq i32 %26, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %do.end
  %27 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ref_count = getelementptr inbounds %struct._Tile, %struct._Tile* %27, i32 0, i32 0
  %28 = load i16, i16* %ref_count, align 2
  %conv = sext i16 %28 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  %29 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_destroy(%struct._Tile* %29)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.6, %if.then.14, %land.lhs.true.11, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @tile_data_pointer(%struct._Tile* %tile, i32 %xoff, i32 %yoff) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %xoff.addr = alloca i32, align 4
  %yoff.addr = alloca i32, align 4
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %xoff, i32* %xoff.addr, align 4
  store i32 %yoff, i32* %yoff.addr, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 9
  %1 = load i8*, i8** %data, align 8
  %2 = load i32, i32* %yoff.addr, align 4
  %and = and i32 %2, 63
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %ewidth = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 5
  %4 = load i16, i16* %ewidth, align 2
  %conv = zext i16 %4 to i32
  %mul = mul nsw i32 %and, %conv
  %5 = load i32, i32* %xoff.addr, align 4
  %and1 = and i32 %5, 63
  %add = add nsw i32 %mul, %and1
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %bpp = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 4
  %7 = load i8, i8* %bpp, align 1
  %conv2 = zext i8 %7 to i32
  %mul3 = mul nsw i32 %add, %conv2
  %idx.ext = sext i32 %mul3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @tile_global_refcount() #0 {
entry:
  %0 = load i32, i32* @tile_ref_count, align 4
  ret i32 %0
}

declare void @g_free(i8*) #1

declare void @tile_swap_delete(%struct._Tile*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
