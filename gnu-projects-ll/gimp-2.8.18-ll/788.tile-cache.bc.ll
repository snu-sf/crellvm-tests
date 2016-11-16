; ModuleID = './app/base/tile-cache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._GMutex = type { i8* }
%struct._TileList = type { %struct._Tile*, %struct._Tile* }
%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct._TileManager = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@tile_cache_mutex = internal global %union._GMutex* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.tile_cache_init = private unnamed_addr constant [16 x i8] c"tile_cache_init\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"tile_cache_mutex == NULL\00", align 1
@tile_list = internal global %struct._TileList zeroinitializer, align 8
@idle_scan_last = internal global %struct._Tile* null, align 8
@max_cache_size = internal global i64 0, align 8
@idle_swapper = internal global i32 0, align 4
@cur_cache_size = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"tile cache not empty (%lu bytes left)\00", align 1
@idle_delay = internal global i32 0, align 4
@cur_cache_dirty = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"cache: unable to find room for a tile\00", align 1

; Function Attrs: nounwind uwtable
define void @tile_cache_init(i64 %tile_cache_size) #0 {
entry:
  %tile_cache_size.addr = alloca i64, align 8
  store i64 %tile_cache_size, i64* %tile_cache_size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  %cmp = icmp eq %union._GMutex* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tile_cache_init, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %union._GMutex* @g_mutex_new()
  store %union._GMutex* %call, %union._GMutex** @tile_cache_mutex, align 8
  store %struct._Tile* null, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  store %struct._Tile* null, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 0), align 8
  store %struct._Tile* null, %struct._Tile** @idle_scan_last, align 8
  %1 = load i64, i64* %tile_cache_size.addr, align 8
  store i64 %1, i64* @max_cache_size, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %union._GMutex* @g_mutex_new() #1

; Function Attrs: nounwind uwtable
define void @tile_cache_exit() #0 {
entry:
  %0 = load i32, i32* @idle_swapper, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @idle_swapper, align 4
  %call = call i32 @g_source_remove(i32 %1)
  store i32 0, i32* @idle_swapper, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @cur_cache_size, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i64, i64* @cur_cache_size, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i64 %3)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @tile_cache_set_size(i64 0)
  %4 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_free(%union._GMutex* %4)
  store %union._GMutex* null, %union._GMutex** @tile_cache_mutex, align 8
  ret void
}

declare i32 @g_source_remove(i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_cache_set_size(i64 %cache_size) #0 {
entry:
  %cache_size.addr = alloca i64, align 8
  store i64 %cache_size, i64* %cache_size.addr, align 8
  %0 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %0)
  store i32 1, i32* @idle_delay, align 4
  %1 = load i64, i64* %cache_size.addr, align 8
  store i64 %1, i64* @max_cache_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* @cur_cache_size, align 8
  %3 = load i64, i64* @max_cache_size, align 8
  %cmp = icmp ugt i64 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @tile_cache_zorch_next()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %4)
  ret void
}

declare void @g_mutex_free(%union._GMutex*) #1

; Function Attrs: nounwind uwtable
define void @tile_cache_suspend_idle_swapper() #0 {
entry:
  store i32 1, i32* @idle_delay, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @tile_cache_insert(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %0)
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 9
  %2 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cached = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 3
  %bf.load = load i8, i8* %cached, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then.2, label %if.else.29

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 12
  %5 = load %struct._Tile*, %struct._Tile** %next, align 8
  %tobool3 = icmp ne %struct._Tile* %5, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev = getelementptr inbounds %struct._Tile, %struct._Tile* %6, i32 0, i32 13
  %7 = load %struct._Tile*, %struct._Tile** %prev, align 8
  %8 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next5 = getelementptr inbounds %struct._Tile, %struct._Tile* %8, i32 0, i32 12
  %9 = load %struct._Tile*, %struct._Tile** %next5, align 8
  %prev6 = getelementptr inbounds %struct._Tile, %struct._Tile* %9, i32 0, i32 13
  store %struct._Tile* %7, %struct._Tile** %prev6, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.then.2
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev7 = getelementptr inbounds %struct._Tile, %struct._Tile* %10, i32 0, i32 13
  %11 = load %struct._Tile*, %struct._Tile** %prev7, align 8
  store %struct._Tile* %11, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.4
  %12 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev9 = getelementptr inbounds %struct._Tile, %struct._Tile* %12, i32 0, i32 13
  %13 = load %struct._Tile*, %struct._Tile** %prev9, align 8
  %tobool10 = icmp ne %struct._Tile* %13, null
  br i1 %tobool10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next12 = getelementptr inbounds %struct._Tile, %struct._Tile* %14, i32 0, i32 12
  %15 = load %struct._Tile*, %struct._Tile** %next12, align 8
  %16 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev13 = getelementptr inbounds %struct._Tile, %struct._Tile* %16, i32 0, i32 13
  %17 = load %struct._Tile*, %struct._Tile** %prev13, align 8
  %next14 = getelementptr inbounds %struct._Tile, %struct._Tile* %17, i32 0, i32 12
  store %struct._Tile* %15, %struct._Tile** %next14, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %if.end.8
  %18 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next16 = getelementptr inbounds %struct._Tile, %struct._Tile* %18, i32 0, i32 12
  %19 = load %struct._Tile*, %struct._Tile** %next16, align 8
  store %struct._Tile* %19, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 0), align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.11
  %20 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 3
  %bf.load18 = load i8, i8* %dirty, align 8
  %bf.clear19 = and i8 %bf.load18, 1
  %bf.cast20 = zext i8 %bf.clear19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %21 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %21, i32 0, i32 10
  %22 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %22, -1
  br i1 %cmp, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.17
  %23 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %23, i32 0, i32 7
  %24 = load i32, i32* %size, align 4
  %conv = sext i32 %24 to i64
  %25 = load i64, i64* @cur_cache_dirty, align 8
  %sub = sub i64 %25, %conv
  store i64 %sub, i64* @cur_cache_dirty, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false
  %26 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %27 = load %struct._Tile*, %struct._Tile** @idle_scan_last, align 8
  %cmp24 = icmp eq %struct._Tile* %26, %27
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %28 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next27 = getelementptr inbounds %struct._Tile, %struct._Tile* %28, i32 0, i32 12
  %29 = load %struct._Tile*, %struct._Tile** %next27, align 8
  store %struct._Tile* %29, %struct._Tile** @idle_scan_last, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  br label %if.end.40

if.else.29:                                       ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.else.29
  %30 = load i64, i64* @cur_cache_size, align 8
  %31 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size30 = getelementptr inbounds %struct._Tile, %struct._Tile* %31, i32 0, i32 7
  %32 = load i32, i32* %size30, align 4
  %conv31 = sext i32 %32 to i64
  %add = add i64 %30, %conv31
  %33 = load i64, i64* @max_cache_size, align 8
  %cmp32 = icmp ugt i64 %add, %33
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @tile_cache_zorch_next()
  %tobool34 = icmp ne i32 %call, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %while.body
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  br label %out

if.end.36:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size37 = getelementptr inbounds %struct._Tile, %struct._Tile* %34, i32 0, i32 7
  %35 = load i32, i32* %size37, align 4
  %conv38 = sext i32 %35 to i64
  %36 = load i64, i64* @cur_cache_size, align 8
  %add39 = add i64 %36, %conv38
  store i64 %add39, i64* @cur_cache_size, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.end.28
  %37 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next41 = getelementptr inbounds %struct._Tile, %struct._Tile* %37, i32 0, i32 12
  store %struct._Tile* null, %struct._Tile** %next41, align 8
  %38 = load %struct._Tile*, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  %39 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev42 = getelementptr inbounds %struct._Tile, %struct._Tile* %39, i32 0, i32 13
  store %struct._Tile* %38, %struct._Tile** %prev42, align 8
  %40 = load %struct._Tile*, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  %tobool43 = icmp ne %struct._Tile* %40, null
  br i1 %tobool43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.40
  %41 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %42 = load %struct._Tile*, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  %next45 = getelementptr inbounds %struct._Tile, %struct._Tile* %42, i32 0, i32 12
  store %struct._Tile* %41, %struct._Tile** %next45, align 8
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.40
  %43 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  store %struct._Tile* %43, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 0), align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  %44 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  store %struct._Tile* %44, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  %45 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cached48 = getelementptr inbounds %struct._Tile, %struct._Tile* %45, i32 0, i32 3
  %bf.load49 = load i8, i8* %cached48, align 8
  %bf.clear50 = and i8 %bf.load49, -5
  %bf.set = or i8 %bf.clear50, 4
  store i8 %bf.set, i8* %cached48, align 8
  store i32 1, i32* @idle_delay, align 4
  %46 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %dirty51 = getelementptr inbounds %struct._Tile, %struct._Tile* %46, i32 0, i32 3
  %bf.load52 = load i8, i8* %dirty51, align 8
  %bf.clear53 = and i8 %bf.load52, 1
  %bf.cast54 = zext i8 %bf.clear53 to i32
  %tobool55 = icmp ne i32 %bf.cast54, 0
  br i1 %tobool55, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.47
  %47 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset57 = getelementptr inbounds %struct._Tile, %struct._Tile* %47, i32 0, i32 10
  %48 = load i64, i64* %swap_offset57, align 8
  %cmp58 = icmp eq i64 %48, -1
  br i1 %cmp58, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %lor.lhs.false.56, %if.end.47
  %49 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size61 = getelementptr inbounds %struct._Tile, %struct._Tile* %49, i32 0, i32 7
  %50 = load i32, i32* %size61, align 4
  %conv62 = sext i32 %50 to i64
  %51 = load i64, i64* @cur_cache_dirty, align 8
  %add63 = add i64 %51, %conv62
  store i64 %add63, i64* @cur_cache_dirty, align 8
  %52 = load %struct._Tile*, %struct._Tile** @idle_scan_last, align 8
  %tobool64 = icmp ne %struct._Tile* %52, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.60
  %53 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  store %struct._Tile* %53, %struct._Tile** @idle_scan_last, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.60
  %54 = load i32, i32* @idle_swapper, align 4
  %tobool67 = icmp ne i32 %54, 0
  br i1 %tobool67, label %if.end.70, label %if.then.68

if.then.68:                                       ; preds = %if.end.66
  store i32 0, i32* @idle_delay, align 4
  %call69 = call i32 @g_timeout_add_full(i32 300, i32 1000, i32 (i8*)* @tile_idle_preswap, i8* null, void (i8*)* null)
  store i32 %call69, i32* @idle_swapper, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %lor.lhs.false.56
  br label %out

out:                                              ; preds = %if.end.71, %if.then.35, %if.then
  %55 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %55)
  ret void
}

declare void @g_mutex_lock(%union._GMutex*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_cache_zorch_next() #0 {
entry:
  %retval = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %0 = load %struct._Tile*, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 0), align 8
  store %struct._Tile* %0, %struct._Tile** %tile, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool = icmp ne %struct._Tile* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_cache_flush_internal(%struct._Tile* %2)
  %3 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %3, i32 0, i32 3
  %bf.load = load i8, i8* %dirty, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 10
  %5 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %5, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* @idle_delay, align 4
  %6 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_swap_out(%struct._Tile* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %lor.lhs.false
  %7 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %dirty4 = getelementptr inbounds %struct._Tile, %struct._Tile* %7, i32 0, i32 3
  %bf.load5 = load i8, i8* %dirty4, align 8
  %bf.clear6 = and i8 %bf.load5, 1
  %bf.cast7 = zext i8 %bf.clear6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.3
  %8 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data = getelementptr inbounds %struct._Tile, %struct._Tile* %8, i32 0, i32 9
  %9 = load i8*, i8** %data, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %data10 = getelementptr inbounds %struct._Tile, %struct._Tile* %10, i32 0, i32 9
  store i8* null, i8** %data10, align 8
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_idle_preswap(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @idle_delay, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @idle_delay, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @g_timeout_add_full(i32 300, i32 20, i32 (i8*)* @tile_idle_preswap_run, i8* null, void (i8*)* null)
  store i32 %call, i32* @idle_swapper, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @g_mutex_unlock(%union._GMutex*) #1

; Function Attrs: nounwind uwtable
define void @tile_cache_flush(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %0)
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cached = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 3
  %bf.load = load i8, i8* %cached, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_cache_flush_internal(%struct._Tile* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_cache_flush_internal(%struct._Tile* %tile) #0 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %cached = getelementptr inbounds %struct._Tile, %struct._Tile* %0, i32 0, i32 3
  %bf.load = load i8, i8* %cached, align 8
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, i8* %cached, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 3
  %bf.load1 = load i8, i8* %dirty, align 8
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast = zext i8 %bf.clear2 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %2, i32 0, i32 10
  %3 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 7
  %5 = load i32, i32* %size, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* @cur_cache_dirty, align 8
  %sub = sub i64 %6, %conv
  store i64 %sub, i64* @cur_cache_dirty, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %size3 = getelementptr inbounds %struct._Tile, %struct._Tile* %7, i32 0, i32 7
  %8 = load i32, i32* %size3, align 4
  %conv4 = sext i32 %8 to i64
  %9 = load i64, i64* @cur_cache_size, align 8
  %sub5 = sub i64 %9, %conv4
  store i64 %sub5, i64* @cur_cache_size, align 8
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next = getelementptr inbounds %struct._Tile, %struct._Tile* %10, i32 0, i32 12
  %11 = load %struct._Tile*, %struct._Tile** %next, align 8
  %tobool6 = icmp ne %struct._Tile* %11, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev = getelementptr inbounds %struct._Tile, %struct._Tile* %12, i32 0, i32 13
  %13 = load %struct._Tile*, %struct._Tile** %prev, align 8
  %14 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next8 = getelementptr inbounds %struct._Tile, %struct._Tile* %14, i32 0, i32 12
  %15 = load %struct._Tile*, %struct._Tile** %next8, align 8
  %prev9 = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 13
  store %struct._Tile* %13, %struct._Tile** %prev9, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %16 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev10 = getelementptr inbounds %struct._Tile, %struct._Tile* %16, i32 0, i32 13
  %17 = load %struct._Tile*, %struct._Tile** %prev10, align 8
  store %struct._Tile* %17, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 1), align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.7
  %18 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev12 = getelementptr inbounds %struct._Tile, %struct._Tile* %18, i32 0, i32 13
  %19 = load %struct._Tile*, %struct._Tile** %prev12, align 8
  %tobool13 = icmp ne %struct._Tile* %19, null
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.end.11
  %20 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next15 = getelementptr inbounds %struct._Tile, %struct._Tile* %20, i32 0, i32 12
  %21 = load %struct._Tile*, %struct._Tile** %next15, align 8
  %22 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev16 = getelementptr inbounds %struct._Tile, %struct._Tile* %22, i32 0, i32 13
  %23 = load %struct._Tile*, %struct._Tile** %prev16, align 8
  %next17 = getelementptr inbounds %struct._Tile, %struct._Tile* %23, i32 0, i32 12
  store %struct._Tile* %21, %struct._Tile** %next17, align 8
  br label %if.end.20

if.else.18:                                       ; preds = %if.end.11
  %24 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next19 = getelementptr inbounds %struct._Tile, %struct._Tile* %24, i32 0, i32 12
  %25 = load %struct._Tile*, %struct._Tile** %next19, align 8
  store %struct._Tile* %25, %struct._Tile** getelementptr inbounds (%struct._TileList, %struct._TileList* @tile_list, i32 0, i32 0), align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.14
  %26 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %27 = load %struct._Tile*, %struct._Tile** @idle_scan_last, align 8
  %cmp21 = icmp eq %struct._Tile* %26, %27
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %28 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next24 = getelementptr inbounds %struct._Tile, %struct._Tile* %28, i32 0, i32 12
  %29 = load %struct._Tile*, %struct._Tile** %next24, align 8
  store %struct._Tile* %29, %struct._Tile** @idle_scan_last, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.20
  %30 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %prev26 = getelementptr inbounds %struct._Tile, %struct._Tile* %30, i32 0, i32 13
  store %struct._Tile* null, %struct._Tile** %prev26, align 8
  %31 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %next27 = getelementptr inbounds %struct._Tile, %struct._Tile* %31, i32 0, i32 12
  store %struct._Tile* null, %struct._Tile** %next27, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @tile_swap_out(%struct._Tile*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_idle_preswap_run(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %tile = alloca %struct._Tile*, align 8
  %count = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* @idle_delay, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @idle_delay, align 4
  %call = call i32 @g_timeout_add_full(i32 300, i32 1000, i32 (i8*)* @tile_idle_preswap, i8* null, void (i8*)* null)
  store i32 %call, i32* @idle_swapper, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %1)
  %2 = load %struct._Tile*, %struct._Tile** @idle_scan_last, align 8
  store %struct._Tile* %2, %struct._Tile** %tile, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %3 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool1 = icmp ne %struct._Tile* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %dirty = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 3
  %bf.load = load i8, i8* %dirty, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %swap_offset = getelementptr inbounds %struct._Tile, %struct._Tile* %5, i32 0, i32 10
  %6 = load i64, i64* %swap_offset, align 8
  %cmp = icmp eq i64 %6, -1
  br i1 %cmp, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %lor.lhs.false, %while.body
  %7 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %next = getelementptr inbounds %struct._Tile, %struct._Tile* %7, i32 0, i32 12
  %8 = load %struct._Tile*, %struct._Tile** %next, align 8
  store %struct._Tile* %8, %struct._Tile** @idle_scan_last, align 8
  %9 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_swap_out(%struct._Tile* %9)
  %10 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %dirty4 = getelementptr inbounds %struct._Tile, %struct._Tile* %10, i32 0, i32 3
  %bf.load5 = load i8, i8* %dirty4, align 8
  %bf.clear6 = and i8 %bf.load5, 1
  %bf.cast7 = zext i8 %bf.clear6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.end.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.then.3
  %11 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %swap_offset10 = getelementptr inbounds %struct._Tile, %struct._Tile* %11, i32 0, i32 10
  %12 = load i64, i64* %swap_offset10, align 8
  %cmp11 = icmp eq i64 %12, -1
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false.9
  %13 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %size = getelementptr inbounds %struct._Tile, %struct._Tile* %13, i32 0, i32 7
  %14 = load i32, i32* %size, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* @cur_cache_dirty, align 8
  %sub = sub i64 %15, %conv
  store i64 %sub, i64* @cur_cache_dirty, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false.9, %if.then.3
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  %17 = load i32, i32* %count, align 4
  %cmp14 = icmp sge i32 %17, 10
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %18 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %18)
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %lor.lhs.false
  %19 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %next19 = getelementptr inbounds %struct._Tile, %struct._Tile* %19, i32 0, i32 12
  %20 = load %struct._Tile*, %struct._Tile** %next19, align 8
  store %struct._Tile* %20, %struct._Tile** %tile, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._Tile* null, %struct._Tile** @idle_scan_last, align 8
  store i32 0, i32* @idle_swapper, align 4
  %21 = load %union._GMutex*, %union._GMutex** @tile_cache_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %21)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
