; ModuleID = './app/base/pixel-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._TileManager = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PixelRegionHolder = type { %struct._PixelRegion*, i8*, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @pixel_region_init(%struct._PixelRegion* %PR, %struct._TileManager* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i32 %dirty) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dirty.addr = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %dirty, i32* %dirty.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  store i8* null, i8** %data, align 8
  %1 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 1
  store %struct._TileManager* %1, %struct._TileManager** %tiles1, align 8
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 2
  store %struct._Tile* null, %struct._Tile** %curtile, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offx = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 3
  store i32 0, i32* %offx, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offy = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 4
  store i32 0, i32* %offy, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %6)
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 10
  store i32 %call, i32* %bytes, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 10
  %9 = load i32, i32* %bytes2, align 4
  %mul = mul nsw i32 %9, 64
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 5
  store i32 %mul, i32* %rowstride, align 4
  %11 = load i32, i32* %x.addr, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 6
  store i32 %11, i32* %x3, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 7
  store i32 %13, i32* %y4, align 4
  %15 = load i32, i32* %w.addr, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 8
  store i32 %15, i32* %w5, align 4
  %17 = load i32, i32* %h.addr, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 9
  store i32 %17, i32* %h6, align 4
  %19 = load i32, i32* %dirty.addr, align 4
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %dirty7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 11
  store i32 %19, i32* %dirty7, align 4
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 12
  store i32 0, i32* %process_count, align 4
  ret void
}

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define void @pixel_region_init_temp_buf(%struct._PixelRegion* %PR, %struct._TempBuf* %temp_buf, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %temp_buf.addr = alloca %struct._TempBuf*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store %struct._TempBuf* %temp_buf, %struct._TempBuf** %temp_buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %0)
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 0
  store i8* %call, i8** %data, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles, align 8
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 2
  store %struct._Tile* null, %struct._Tile** %curtile, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offx = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 3
  store i32 0, i32* %offx, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offy = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 4
  store i32 0, i32* %offy, align 4
  %6 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 0
  %7 = load i32, i32* %bytes, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 10
  store i32 %7, i32* %bytes1, align 4
  %9 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %11 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf.addr, align 8
  %bytes2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 0
  %12 = load i32, i32* %bytes2, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 5
  store i32 %mul, i32* %rowstride, align 4
  %14 = load i32, i32* %x.addr, align 4
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %15, i32 0, i32 6
  store i32 %14, i32* %x3, align 4
  %16 = load i32, i32* %y.addr, align 4
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %17, i32 0, i32 7
  store i32 %16, i32* %y4, align 4
  %18 = load i32, i32* %w.addr, align 4
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 8
  store i32 %18, i32* %w5, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 9
  store i32 %20, i32* %h6, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 11
  store i32 0, i32* %dirty, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 12
  store i32 0, i32* %process_count, align 4
  ret void
}

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define void @pixel_region_init_data(%struct._PixelRegion* %PR, i8* %data, i32 %bytes, i32 %rowstride, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %data.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 0
  store i8* %0, i8** %data1, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles, align 8
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 2
  store %struct._Tile* null, %struct._Tile** %curtile, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offx = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 3
  store i32 0, i32* %offx, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %offy = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 4
  store i32 0, i32* %offy, align 4
  %6 = load i32, i32* %bytes.addr, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 10
  store i32 %6, i32* %bytes2, align 4
  %8 = load i32, i32* %rowstride.addr, align 4
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %rowstride3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 5
  store i32 %8, i32* %rowstride3, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 6
  store i32 %10, i32* %x4, align 4
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 7
  store i32 %12, i32* %y5, align 4
  %14 = load i32, i32* %w.addr, align 4
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %15, i32 0, i32 8
  store i32 %14, i32* %w6, align 4
  %16 = load i32, i32* %h.addr, align 4
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %17, i32 0, i32 9
  store i32 %16, i32* %h7, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 11
  store i32 0, i32* %dirty, align 4
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 12
  store i32 0, i32* %process_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pixel_region_resize(%struct._PixelRegion* %PR, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 6
  store i32 %0, i32* %x1, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 7
  store i32 %2, i32* %y2, align 4
  %4 = load i32, i32* %w.addr, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 8
  store i32 %4, i32* %w3, align 4
  %6 = load i32, i32* %h.addr, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  store i32 %6, i32* %h4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pixel_region_get_row(%struct._PixelRegion* %PR, i32 %x, i32 %y, i32 %w, i8* %data, i32 %subsample) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %subsample.addr = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %tile_data = alloca i8*, align 8
  %inc = alloca i32, align 4
  %end = alloca i32, align 4
  %boundary = alloca i32, align 4
  %b = alloca i32, align 4
  %npixels = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %subsample, i32* %subsample.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %end, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 10
  %3 = load i32, i32* %bytes, align 4
  store i32 %3, i32* %bpp, align 4
  %4 = load i32, i32* %subsample.addr, align 4
  %5 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %inc, align 4
  %6 = load i32, i32* %subsample.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 1
  %8 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %8, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 1
  %10 = load %struct._TileManager*, %struct._TileManager** %tiles2, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %13 = load i32, i32* %end, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 10
  %17 = load i32, i32* %bytes3, align 4
  call void @tile_manager_read_pixel_data(%struct._TileManager* %10, i32 %11, i32 %12, i32 %sub, i32 %14, i8* %15, i32 %17)
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 0
  %20 = load i8*, i8** %data4, align 8
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %bpp, align 4
  %mul5 = mul nsw i32 %21, %22
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %23 = load i32, i32* %y.addr, align 4
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %24, i32 0, i32 5
  %25 = load i32, i32* %rowstride, align 4
  %mul6 = mul nsw i32 %23, %25
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  %26 = load i32, i32* %w.addr, align 4
  %27 = load i32, i32* %bpp, align 4
  %mul9 = mul nsw i32 %26, %27
  %conv = sext i32 %mul9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %add.ptr8, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.36

if.else.10:                                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end.35, %if.else.10
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %end, align 4
  %cmp11 = icmp slt i32 %28, %29
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles13 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 1
  %31 = load %struct._TileManager*, %struct._TileManager** %tiles13, align 8
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %31, i32 %32, i32 %33, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %34 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %y.addr, align 4
  %call14 = call i8* @tile_data_pointer(%struct._Tile* %34, i32 %35, i32 %36)
  store i8* %call14, i8** %tile_data, align 8
  %37 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call15 = call i32 @tile_ewidth(%struct._Tile* %37)
  %38 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %38, 64
  %sub16 = sub nsw i32 %call15, %rem
  store i32 %sub16, i32* %npixels, align 4
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %npixels, align 4
  %add17 = add nsw i32 %39, %40
  %41 = load i32, i32* %end, align 4
  %cmp18 = icmp sgt i32 %add17, %41
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %while.body
  %42 = load i32, i32* %end, align 4
  %43 = load i32, i32* %x.addr, align 4
  %sub21 = sub nsw i32 %42, %43
  store i32 %sub21, i32* %npixels, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %while.body
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %npixels, align 4
  %add23 = add nsw i32 %44, %45
  store i32 %add23, i32* %boundary, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end.22
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %boundary, align 4
  %cmp24 = icmp slt i32 %46, %47
  br i1 %cmp24, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %b, align 4
  %49 = load i32, i32* %bpp, align 4
  %cmp27 = icmp slt i32 %48, %49
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %50 = load i32, i32* %b, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i8*, i8** %tile_data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 %idxprom
  %52 = load i8, i8* %arrayidx, align 1
  %53 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  store i8 %52, i8* %53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %54 = load i32, i32* %b, align 4
  %inc30 = add nsw i32 %54, 1
  store i32 %inc30, i32* %b, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %55 = load i32, i32* %inc, align 4
  %56 = load i8*, i8** %tile_data, align 8
  %idx.ext31 = sext i32 %55 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %56, i64 %idx.ext31
  store i8* %add.ptr32, i8** %tile_data, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %57 = load i32, i32* %subsample.addr, align 4
  %58 = load i32, i32* %x.addr, align 4
  %add34 = add nsw i32 %58, %57
  store i32 %add34, i32* %x.addr, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %59 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %59, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.36

if.end.36:                                        ; preds = %while.end, %if.end
  ret void
}

declare void @tile_manager_read_pixel_data(%struct._TileManager*, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare void @tile_release(%struct._Tile*, i32) #1

; Function Attrs: nounwind uwtable
define void @pixel_region_set_row(%struct._PixelRegion* %PR, i32 %x, i32 %y, i32 %w, i8* %data) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %end = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 1
  %1 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %end, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 1
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles1, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %end, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 10
  %12 = load i32, i32* %bytes, align 4
  call void @tile_manager_write_pixel_data(%struct._TileManager* %5, i32 %6, i32 %7, i32 %sub, i32 %9, i8* %10, i32 %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 0
  %14 = load i8*, i8** %data2, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 10
  %17 = load i32, i32* %bytes3, align 4
  %mul = mul nsw i32 %15, %17
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 5
  %20 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %18, %20
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext5
  %21 = load i8*, i8** %data.addr, align 8
  %22 = load i32, i32* %w.addr, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 10
  %24 = load i32, i32* %bytes7, align 4
  %mul8 = mul nsw i32 %22, %24
  %conv = sext i32 %mul8 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr6, i8* %21, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @tile_manager_write_pixel_data(%struct._TileManager*, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @pixel_region_get_col(%struct._PixelRegion* %PR, i32 %x, i32 %y, i32 %h, i8* %data, i32 %subsample) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %subsample.addr = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %tile_data = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %inc = alloca i32, align 4
  %end = alloca i32, align 4
  %boundary = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %subsample, i32* %subsample.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %end, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 10
  %3 = load i32, i32* %bytes, align 4
  store i32 %3, i32* %bpp, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.14, %entry
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 1
  %7 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %7, i32 %8, i32 %9, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %10 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %call1 = call i8* @tile_data_pointer(%struct._Tile* %10, i32 %11, i32 %12)
  store i8* %call1, i8** %tile_data, align 8
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call2 = call i32 @tile_eheight(%struct._Tile* %14)
  %15 = load i32, i32* %y.addr, align 4
  %rem = srem i32 %15, 64
  %sub = sub nsw i32 %call2, %rem
  %add3 = add nsw i32 %13, %sub
  store i32 %add3, i32* %boundary, align 4
  %16 = load i32, i32* %boundary, align 4
  %17 = load i32, i32* %end, align 4
  %cmp4 = icmp sgt i32 %16, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load i32, i32* %end, align 4
  store i32 %18, i32* %boundary, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load i32, i32* %subsample.addr, align 4
  %20 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %19, %20
  %21 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call5 = call i32 @tile_ewidth(%struct._Tile* %21)
  %mul6 = mul nsw i32 %mul, %call5
  store i32 %mul6, i32* %inc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.end
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %boundary, align 4
  %cmp7 = icmp slt i32 %22, %23
  br i1 %cmp7, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %bpp, align 4
  %cmp9 = icmp slt i32 %24, %25
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %b, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i8*, i8** %tile_data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %29 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  store i8 %28, i8* %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %30 = load i32, i32* %b, align 4
  %inc11 = add nsw i32 %30, 1
  store i32 %inc11, i32* %b, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %31 = load i32, i32* %inc, align 4
  %32 = load i8*, i8** %tile_data, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %33 = load i32, i32* %subsample.addr, align 4
  %34 = load i32, i32* %y.addr, align 4
  %add13 = add nsw i32 %34, %33
  store i32 %add13, i32* %y.addr, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %35 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %35, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @tile_eheight(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define void @pixel_region_set_col(%struct._PixelRegion* %PR, i32 %x, i32 %y, i32 %h, i8* %data) #0 {
entry:
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %end = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %end, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 10
  %3 = load i32, i32* %bytes, align 4
  store i32 %3, i32* %bpp, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 1
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %end, align 4
  %sub = sub nsw i32 %9, 1
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %bpp, align 4
  call void @tile_manager_write_pixel_data(%struct._TileManager* %5, i32 %6, i32 %7, i32 %8, i32 %sub, i8* %10, i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pixel_region_has_alpha(%struct._PixelRegion* %PR) #0 {
entry:
  %retval = alloca i32, align 4
  %PR.addr = alloca %struct._PixelRegion*, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 10
  %1 = load i32, i32* %bytes, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 10
  %3 = load i32, i32* %bytes1, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define %struct._PixelRegionIterator* @pixel_regions_register(i32 %num_regions, ...) #0 {
entry:
  %retval = alloca %struct._PixelRegionIterator*, align 8
  %num_regions.addr = alloca i32, align 4
  %PRI = alloca %struct._PixelRegionIterator*, align 8
  %found = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  %PR = alloca %struct._PixelRegion*, align 8
  store i32 %num_regions, i32* %num_regions.addr, align 4
  %0 = load i32, i32* %num_regions.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._PixelRegionIterator* null, %struct._PixelRegionIterator** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @g_slice_alloc0(i64 32)
  %1 = bitcast i8* %call to %struct._PixelRegionIterator*
  store %struct._PixelRegionIterator* %1, %struct._PixelRegionIterator** %PRI, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end
  %2 = load i32, i32* %num_regions.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %num_regions.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.body
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to %struct._PixelRegion**
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to %struct._PixelRegion**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._PixelRegion** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %vaarg.addr
  store %struct._PixelRegion* %8, %struct._PixelRegion** %PR, align 8
  %call3 = call noalias i8* @g_slice_alloc0(i64 32)
  %9 = bitcast i8* %call3 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %9, %struct._PixelRegionHolder** %PRH, align 8
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %11 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR4 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %11, i32 0, i32 0
  store %struct._PixelRegion* %10, %struct._PixelRegion** %PR4, align 8
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %cmp5 = icmp ne %struct._PixelRegion* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %vaarg.end
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %tobool7 = icmp ne i8* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %15, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %data10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 0
  %17 = load i8*, i8** %data10, align 8
  %18 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %original_data = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %18, i32 0, i32 1
  store i8* %17, i8** %original_data, align 8
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 6
  %20 = load i32, i32* %x, align 4
  %21 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %21, i32 0, i32 2
  store i32 %20, i32* %startx, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 7
  %23 = load i32, i32* %y, align 4
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %starty = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 3
  store i32 %23, i32* %starty, align 4
  %25 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %25, i32 0, i32 0
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %process_count = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 12
  store i32 0, i32* %process_count, align 4
  %27 = load i32, i32* %found, align 4
  %tobool12 = icmp ne i32 %27, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  store i32 1, i32* %found, align 4
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 8
  %29 = load i32, i32* %w, align 4
  %30 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %region_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %30, i32 0, i32 1
  store i32 %29, i32* %region_width, align 4
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 9
  %32 = load i32, i32* %h, align 4
  %33 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %region_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %33, i32 0, i32 2
  store i32 %32, i32* %region_height, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %vaarg.end
  %34 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %34, i32 0, i32 0
  %35 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  %36 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %37 = bitcast %struct._PixelRegionHolder* %36 to i8*
  %call16 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %35, i8* %37)
  %38 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %pixel_regions17 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %38, i32 0, i32 0
  store %struct._GSList* %call16, %struct._GSList** %pixel_regions17, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1819 = bitcast %struct.__va_list_tag* %arraydecay18 to i8*
  call void @llvm.va_end(i8* %arraydecay1819)
  %39 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %call20 = call %struct._PixelRegionIterator* @pixel_regions_configure(%struct._PixelRegionIterator* %39)
  store %struct._PixelRegionIterator* %call20, %struct._PixelRegionIterator** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %40 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %retval
  ret %struct._PixelRegionIterator* %40
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._PixelRegionIterator* @pixel_regions_configure(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %retval = alloca %struct._PixelRegionIterator*, align 8
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %call = call i32 @get_portion_width(%struct._PixelRegionIterator* %0)
  %1 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %1, i32 0, i32 3
  store i32 %call, i32* %portion_width, align 4
  %2 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %call1 = call i32 @get_portion_height(%struct._PixelRegionIterator* %2)
  %3 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %3, i32 0, i32 4
  store i32 %call1, i32* %portion_height, align 4
  %4 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_width2 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %4, i32 0, i32 3
  %5 = load i32, i32* %portion_width2, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_height3 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %6, i32 0, i32 4
  %7 = load i32, i32* %portion_height3, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  call void @pixel_regions_free(%struct._PixelRegionIterator* %8)
  store %struct._PixelRegionIterator* null, %struct._PixelRegionIterator** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %9, i32 0, i32 5
  %10 = load i32, i32* %process_count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %process_count, align 4
  %11 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %11, i32 0, i32 0
  %12 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %12, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %13 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %16, %struct._PixelRegionHolder** %PRH, align 8
  %17 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %17, i32 0, i32 0
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %cmp5 = icmp ne %struct._PixelRegion* %18, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR6 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %19, i32 0, i32 0
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %PR6, align 8
  %process_count7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 12
  %21 = load i32, i32* %process_count7, align 4
  %22 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count8 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %22, i32 0, i32 5
  %23 = load i32, i32* %process_count8, align 4
  %cmp9 = icmp ne i32 %21, %23
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %process_count12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 12
  %26 = load i32, i32* %process_count12, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %process_count12, align 4
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %28 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  call void @pixel_region_configure(%struct._PixelRegionHolder* %27, %struct._PixelRegionIterator* %28)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool15 = icmp ne %struct._GSList* %29, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1
  %31 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  store %struct._PixelRegionIterator* %32, %struct._PixelRegionIterator** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %33 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %retval
  ret %struct._PixelRegionIterator* %33
}

; Function Attrs: nounwind uwtable
define %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %0, i32 0, i32 5
  %1 = load i32, i32* %process_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %process_count, align 4
  %2 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %3, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %7, %struct._PixelRegionHolder** %PRH, align 8
  %8 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %8, i32 0, i32 0
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %cmp = icmp ne %struct._PixelRegion* %9, null
  br i1 %cmp, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR1 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %10, i32 0, i32 0
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR1, align 8
  %process_count2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 12
  %12 = load i32, i32* %process_count2, align 4
  %13 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count3 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %13, i32 0, i32 5
  %14 = load i32, i32* %process_count3, align 4
  %cmp4 = icmp ne i32 %12, %14
  br i1 %cmp4, label %if.then, label %if.end.26

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR5 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %15, i32 0, i32 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR5, align 8
  %process_count6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 12
  %17 = load i32, i32* %process_count6, align 4
  %inc7 = add nsw i32 %17, 1
  store i32 %inc7, i32* %process_count6, align 4
  %18 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR8 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %18, i32 0, i32 0
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR8, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 1
  %20 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool9 = icmp ne %struct._TileManager* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %21 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %21, i32 0, i32 0
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 2
  %23 = load %struct._Tile*, %struct._Tile** %curtile, align 8
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR12 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %PR12, align 8
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 11
  %26 = load i32, i32* %dirty, align 4
  call void @tile_release(%struct._Tile* %23, i32 %26)
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR13 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %27, i32 0, i32 0
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %PR13, align 8
  %curtile14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 2
  store %struct._Tile* null, %struct._Tile** %curtile14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %29 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %29, i32 0, i32 3
  %30 = load i32, i32* %portion_width, align 4
  %31 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR15 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %31, i32 0, i32 0
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %PR15, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 6
  %33 = load i32, i32* %x, align 4
  %add = add nsw i32 %33, %30
  store i32 %add, i32* %x, align 4
  %34 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR16 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %34, i32 0, i32 0
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %PR16, align 8
  %x17 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 6
  %36 = load i32, i32* %x17, align 4
  %37 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %37, i32 0, i32 2
  %38 = load i32, i32* %startx, align 4
  %sub = sub nsw i32 %36, %38
  %39 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %39, i32 0, i32 1
  %40 = load i32, i32* %region_width, align 4
  %cmp18 = icmp sge i32 %sub, %40
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end
  %41 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx20 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %41, i32 0, i32 2
  %42 = load i32, i32* %startx20, align 4
  %43 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR21 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %43, i32 0, i32 0
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %PR21, align 8
  %x22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %44, i32 0, i32 6
  store i32 %42, i32* %x22, align 4
  %45 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %45, i32 0, i32 4
  %46 = load i32, i32* %portion_height, align 4
  %47 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR23 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %47, i32 0, i32 0
  %48 = load %struct._PixelRegion*, %struct._PixelRegion** %PR23, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %48, i32 0, i32 7
  %49 = load i32, i32* %y, align 4
  %add24 = add nsw i32 %49, %46
  store i32 %add24, i32* %y, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %50 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool27 = icmp ne %struct._GSList* %50, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %51 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1
  %52 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %52, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %call = call %struct._PixelRegionIterator* @pixel_regions_configure(%struct._PixelRegionIterator* %53)
  ret %struct._PixelRegionIterator* %call
}

; Function Attrs: nounwind uwtable
define void @pixel_regions_process_stop(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %0, i32 0, i32 5
  %1 = load i32, i32* %process_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %process_count, align 4
  %2 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %3, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %7, %struct._PixelRegionHolder** %PRH, align 8
  %8 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %8, i32 0, i32 0
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %cmp = icmp ne %struct._PixelRegion* %9, null
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR1 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %10, i32 0, i32 0
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %PR1, align 8
  %process_count2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 12
  %12 = load i32, i32* %process_count2, align 4
  %13 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %process_count3 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %13, i32 0, i32 5
  %14 = load i32, i32* %process_count3, align 4
  %cmp4 = icmp ne i32 %12, %14
  br i1 %cmp4, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR5 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %15, i32 0, i32 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR5, align 8
  %process_count6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 12
  %17 = load i32, i32* %process_count6, align 4
  %inc7 = add nsw i32 %17, 1
  store i32 %inc7, i32* %process_count6, align 4
  %18 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR8 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %18, i32 0, i32 0
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR8, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 1
  %20 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool9 = icmp ne %struct._TileManager* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %21 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %21, i32 0, i32 0
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 2
  %23 = load %struct._Tile*, %struct._Tile** %curtile, align 8
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR12 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %PR12, align 8
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 11
  %26 = load i32, i32* %dirty, align 4
  call void @tile_release(%struct._Tile* %23, i32 %26)
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR13 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %27, i32 0, i32 0
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %PR13, align 8
  %curtile14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 2
  store %struct._Tile* null, %struct._Tile** %curtile14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool16 = icmp ne %struct._GSList* %29, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1
  %31 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  call void @pixel_regions_free(%struct._PixelRegionIterator* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pixel_regions_free(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions1 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %pixel_regions1, align 8
  store %struct._GSList* %3, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool2 = icmp ne %struct._GSList* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 32, i8* %6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool3 = icmp ne %struct._GSList* %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 1
  %9 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions4 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %10, i32 0, i32 0
  %11 = load %struct._GSList*, %struct._GSList** %pixel_regions4, align 8
  call void @g_slist_free(%struct._GSList* %11)
  br label %do.body.5

do.body.5:                                        ; preds = %for.end
  %12 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %13 = bitcast %struct._PixelRegionIterator* %12 to i8*
  call void @g_slice_free1(i64 32, i8* %13)
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  br label %if.end

if.end:                                           ; preds = %do.end.6, %entry
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_portion_width(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %retval = alloca i32, align 4
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %min_width = alloca i32, align 4
  %width = alloca i32, align 4
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  store i32 2147483647, i32* %min_width, align 4
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.42, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %5, %struct._PixelRegionHolder** %PRH, align 8
  %6 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %6, i32 0, i32 0
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %tobool1 = icmp ne %struct._PixelRegion* %7, null
  br i1 %tobool1, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %8 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR2 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %8, i32 0, i32 0
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR2, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 6
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %11, i32 0, i32 2
  %12 = load i32, i32* %startx, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %13, i32 0, i32 1
  %14 = load i32, i32* %region_width, align 4
  %cmp = icmp sge i32 %sub, %14
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR4 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %15, i32 0, i32 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR4, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 1
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool5 = icmp ne %struct._TileManager* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %18 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR7 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %18, i32 0, i32 0
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR7, align 8
  %x8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 6
  %20 = load i32, i32* %x8, align 4
  %rem = srem i32 %20, 64
  %sub9 = sub nsw i32 64, %rem
  store i32 %sub9, i32* %width, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_width10 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %22, i32 0, i32 1
  %23 = load i32, i32* %region_width10, align 4
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %x12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 6
  %26 = load i32, i32* %x12, align 4
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx13 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %27, i32 0, i32 2
  %28 = load i32, i32* %startx13, align 4
  %sub14 = sub nsw i32 %26, %28
  %sub15 = sub nsw i32 %23, %sub14
  %cmp16 = icmp sgt i32 %21, %sub15
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %29 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_width17 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %29, i32 0, i32 1
  %30 = load i32, i32* %region_width17, align 4
  %31 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR18 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %31, i32 0, i32 0
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %PR18, align 8
  %x19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 6
  %33 = load i32, i32* %x19, align 4
  %34 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx20 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %34, i32 0, i32 2
  %35 = load i32, i32* %startx20, align 4
  %sub21 = sub nsw i32 %33, %35
  %sub22 = sub nsw i32 %30, %sub21
  br label %cond.end.26

cond.false:                                       ; preds = %if.then.6
  %36 = load i32, i32* %width, align 4
  %cmp23 = icmp slt i32 %36, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %37 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond = phi i32 [ 0, %cond.true.24 ], [ %37, %cond.false.25 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ %sub22, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond27, i32* %width, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %38 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_width28 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %38, i32 0, i32 1
  %39 = load i32, i32* %region_width28, align 4
  %40 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR29 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %40, i32 0, i32 0
  %41 = load %struct._PixelRegion*, %struct._PixelRegion** %PR29, align 8
  %x30 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %41, i32 0, i32 6
  %42 = load i32, i32* %x30, align 4
  %43 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %startx31 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %43, i32 0, i32 2
  %44 = load i32, i32* %startx31, align 4
  %sub32 = sub nsw i32 %42, %44
  %sub33 = sub nsw i32 %39, %sub32
  store i32 %sub33, i32* %width, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cond.end.26
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %min_width, align 4
  %cmp35 = icmp slt i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %47 = load i32, i32* %width, align 4
  store i32 %47, i32* %min_width, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool39 = icmp ne %struct._GSList* %48, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %for.inc
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1
  %50 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %for.inc
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi %struct._GSList* [ %50, %cond.true.40 ], [ null, %cond.false.41 ]
  store %struct._GSList* %cond43, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %min_width, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @get_portion_height(%struct._PixelRegionIterator* %PRI) #0 {
entry:
  %retval = alloca i32, align 4
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %min_height = alloca i32, align 4
  %height = alloca i32, align 4
  %PRH = alloca %struct._PixelRegionHolder*, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  store i32 2147483647, i32* %min_height, align 4
  %0 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.42, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._PixelRegionHolder*
  store %struct._PixelRegionHolder* %5, %struct._PixelRegionHolder** %PRH, align 8
  %6 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %6, i32 0, i32 0
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %tobool1 = icmp ne %struct._PixelRegion* %7, null
  br i1 %tobool1, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %8 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR2 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %8, i32 0, i32 0
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %PR2, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 7
  %10 = load i32, i32* %y, align 4
  %11 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %starty = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %11, i32 0, i32 3
  %12 = load i32, i32* %starty, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %13, i32 0, i32 2
  %14 = load i32, i32* %region_height, align 4
  %cmp = icmp sge i32 %sub, %14
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR4 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %15, i32 0, i32 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR4, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 1
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool5 = icmp ne %struct._TileManager* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %18 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR7 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %18, i32 0, i32 0
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %PR7, align 8
  %y8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 7
  %20 = load i32, i32* %y8, align 4
  %rem = srem i32 %20, 64
  %sub9 = sub nsw i32 64, %rem
  store i32 %sub9, i32* %height, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_height10 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %22, i32 0, i32 2
  %23 = load i32, i32* %region_height10, align 4
  %24 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR11 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %24, i32 0, i32 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %PR11, align 8
  %y12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 7
  %26 = load i32, i32* %y12, align 4
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %starty13 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %27, i32 0, i32 3
  %28 = load i32, i32* %starty13, align 4
  %sub14 = sub nsw i32 %26, %28
  %sub15 = sub nsw i32 %23, %sub14
  %cmp16 = icmp sgt i32 %21, %sub15
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %29 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_height17 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %29, i32 0, i32 2
  %30 = load i32, i32* %region_height17, align 4
  %31 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR18 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %31, i32 0, i32 0
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %PR18, align 8
  %y19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 7
  %33 = load i32, i32* %y19, align 4
  %34 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %starty20 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %34, i32 0, i32 3
  %35 = load i32, i32* %starty20, align 4
  %sub21 = sub nsw i32 %33, %35
  %sub22 = sub nsw i32 %30, %sub21
  br label %cond.end.26

cond.false:                                       ; preds = %if.then.6
  %36 = load i32, i32* %height, align 4
  %cmp23 = icmp slt i32 %36, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %37 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond = phi i32 [ 0, %cond.true.24 ], [ %37, %cond.false.25 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ %sub22, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond27, i32* %height, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %38 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %region_height28 = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %38, i32 0, i32 2
  %39 = load i32, i32* %region_height28, align 4
  %40 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %PR29 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %40, i32 0, i32 0
  %41 = load %struct._PixelRegion*, %struct._PixelRegion** %PR29, align 8
  %y30 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %41, i32 0, i32 7
  %42 = load i32, i32* %y30, align 4
  %43 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH, align 8
  %starty31 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %43, i32 0, i32 3
  %44 = load i32, i32* %starty31, align 4
  %sub32 = sub nsw i32 %42, %44
  %sub33 = sub nsw i32 %39, %sub32
  store i32 %sub33, i32* %height, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cond.end.26
  %45 = load i32, i32* %height, align 4
  %46 = load i32, i32* %min_height, align 4
  %cmp35 = icmp slt i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %47 = load i32, i32* %height, align 4
  store i32 %47, i32* %min_height, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool39 = icmp ne %struct._GSList* %48, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %for.inc
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1
  %50 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %for.inc
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi %struct._GSList* [ %50, %cond.true.40 ], [ null, %cond.false.41 ]
  store %struct._GSList* %cond43, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %min_height, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal void @pixel_region_configure(%struct._PixelRegionHolder* %PRH, %struct._PixelRegionIterator* %PRI) #0 {
entry:
  %PRH.addr = alloca %struct._PixelRegionHolder*, align 8
  %PRI.addr = alloca %struct._PixelRegionIterator*, align 8
  store %struct._PixelRegionHolder* %PRH, %struct._PixelRegionHolder** %PRH.addr, align 8
  store %struct._PixelRegionIterator* %PRI, %struct._PixelRegionIterator** %PRI.addr, align 8
  %0 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %0, i32 0, i32 0
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 1
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR1 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %3, i32 0, i32 0
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR1, align 8
  %tiles2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 1
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles2, align 8
  %6 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR3 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %6, i32 0, i32 0
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR3, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 6
  %8 = load i32, i32* %x, align 4
  %9 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR4 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %9, i32 0, i32 0
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR4, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 7
  %11 = load i32, i32* %y, align 4
  %12 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR5 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %12, i32 0, i32 0
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %PR5, align 8
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 11
  %14 = load i32, i32* %dirty, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %5, i32 %8, i32 %11, i32 1, i32 %14)
  %15 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR6 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %15, i32 0, i32 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR6, align 8
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 2
  store %struct._Tile* %call, %struct._Tile** %curtile, align 8
  %17 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR7 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %17, i32 0, i32 0
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %PR7, align 8
  %x8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 6
  %19 = load i32, i32* %x8, align 4
  %rem = srem i32 %19, 64
  %20 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR9 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %20, i32 0, i32 0
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %PR9, align 8
  %offx = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 3
  store i32 %rem, i32* %offx, align 4
  %22 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR10 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %22, i32 0, i32 0
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %PR10, align 8
  %y11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 7
  %24 = load i32, i32* %y11, align 4
  %rem12 = srem i32 %24, 64
  %25 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR13 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %25, i32 0, i32 0
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %PR13, align 8
  %offy = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 4
  store i32 %rem12, i32* %offy, align 4
  %27 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR14 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %27, i32 0, i32 0
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %PR14, align 8
  %curtile15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 2
  %29 = load %struct._Tile*, %struct._Tile** %curtile15, align 8
  %call16 = call i32 @tile_ewidth(%struct._Tile* %29)
  %30 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR17 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %30, i32 0, i32 0
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %PR17, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 10
  %32 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %call16, %32
  %33 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR18 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %33, i32 0, i32 0
  %34 = load %struct._PixelRegion*, %struct._PixelRegion** %PR18, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %34, i32 0, i32 5
  store i32 %mul, i32* %rowstride, align 4
  %35 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR19 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %35, i32 0, i32 0
  %36 = load %struct._PixelRegion*, %struct._PixelRegion** %PR19, align 8
  %curtile20 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %36, i32 0, i32 2
  %37 = load %struct._Tile*, %struct._Tile** %curtile20, align 8
  %38 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR21 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %38, i32 0, i32 0
  %39 = load %struct._PixelRegion*, %struct._PixelRegion** %PR21, align 8
  %offx22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %39, i32 0, i32 3
  %40 = load i32, i32* %offx22, align 4
  %41 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR23 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %41, i32 0, i32 0
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %PR23, align 8
  %offy24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %42, i32 0, i32 4
  %43 = load i32, i32* %offy24, align 4
  %call25 = call i8* @tile_data_pointer(%struct._Tile* %37, i32 %40, i32 %43)
  %44 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR26 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %44, i32 0, i32 0
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %PR26, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %45, i32 0, i32 0
  store i8* %call25, i8** %data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %46 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %original_data = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %46, i32 0, i32 1
  %47 = load i8*, i8** %original_data, align 8
  %48 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR27 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %48, i32 0, i32 0
  %49 = load %struct._PixelRegion*, %struct._PixelRegion** %PR27, align 8
  %y28 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %49, i32 0, i32 7
  %50 = load i32, i32* %y28, align 4
  %51 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR29 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %51, i32 0, i32 0
  %52 = load %struct._PixelRegion*, %struct._PixelRegion** %PR29, align 8
  %rowstride30 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %52, i32 0, i32 5
  %53 = load i32, i32* %rowstride30, align 4
  %mul31 = mul nsw i32 %50, %53
  %idx.ext = sext i32 %mul31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %54 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR32 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %54, i32 0, i32 0
  %55 = load %struct._PixelRegion*, %struct._PixelRegion** %PR32, align 8
  %x33 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %55, i32 0, i32 6
  %56 = load i32, i32* %x33, align 4
  %57 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR34 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %57, i32 0, i32 0
  %58 = load %struct._PixelRegion*, %struct._PixelRegion** %PR34, align 8
  %bytes35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %58, i32 0, i32 10
  %59 = load i32, i32* %bytes35, align 4
  %mul36 = mul nsw i32 %56, %59
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext37
  %60 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR39 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %60, i32 0, i32 0
  %61 = load %struct._PixelRegion*, %struct._PixelRegion** %PR39, align 8
  %data40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %61, i32 0, i32 0
  store i8* %add.ptr38, i8** %data40, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %62 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %62, i32 0, i32 3
  %63 = load i32, i32* %portion_width, align 4
  %64 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR41 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %64, i32 0, i32 0
  %65 = load %struct._PixelRegion*, %struct._PixelRegion** %PR41, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %65, i32 0, i32 8
  store i32 %63, i32* %w, align 4
  %66 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI.addr, align 8
  %portion_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %66, i32 0, i32 4
  %67 = load i32, i32* %portion_height, align 4
  %68 = load %struct._PixelRegionHolder*, %struct._PixelRegionHolder** %PRH.addr, align 8
  %PR42 = getelementptr inbounds %struct._PixelRegionHolder, %struct._PixelRegionHolder* %68, i32 0, i32 0
  %69 = load %struct._PixelRegion*, %struct._PixelRegion** %PR42, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %69, i32 0, i32 9
  store i32 %67, i32* %h, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
