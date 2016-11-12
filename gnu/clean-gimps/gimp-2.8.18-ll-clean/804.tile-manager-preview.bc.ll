; ModuleID = './app/base/tile-manager-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.tile_manager_get_preview = private unnamed_addr constant [25 x i8] c"tile_manager_get_preview\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@__func__.tile_manager_get_sub_preview = private unnamed_addr constant [29 x i8] c"tile_manager_get_sub_preview\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"src_x >= 0 && src_x < tile_manager_width (tiles)\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"src_y >= 0 && src_y < tile_manager_height (tiles)\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"src_width > 0 && src_x + src_width <= tile_manager_width (tiles)\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"src_height > 0 && src_y + src_height <= tile_manager_height (tiles)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"dest_width > 0 && dest_height > 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @tile_manager_get_preview(%struct._TileManager* %tiles, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tile_manager_get_preview, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %height.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tile_manager_get_preview, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %3 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call8 = call i32 @tile_manager_height(%struct._TileManager* %5)
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  %call9 = call %struct._TempBuf* @tile_manager_create_preview(%struct._TileManager* %3, i32 0, i32 0, i32 %call, i32 %call8, i32 %6, i32 %7)
  store %struct._TempBuf* %call9, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %8 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %8
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @tile_manager_create_preview(%struct._TileManager* %tiles, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %tiles.addr = alloca %struct._TileManager*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %preview = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %subsample = alloca i32, align 4
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  store i32 1, i32* %subsample, align 4
  %0 = load i32, i32* %dest_width.addr, align 4
  %1 = load i32, i32* %dest_height.addr, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  %call1 = call %struct._TempBuf* @temp_buf_new(i32 %0, i32 %1, i32 %call, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call1, %struct._TempBuf** %preview, align 8
  %3 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %4 = load i32, i32* %src_x.addr, align 4
  %5 = load i32, i32* %src_y.addr, align 4
  %6 = load i32, i32* %src_width.addr, align 4
  %7 = load i32, i32* %src_height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 0)
  %8 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %9 = load i32, i32* %dest_width.addr, align 4
  %10 = load i32, i32* %dest_height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %8, i32 0, i32 0, i32 %9, i32 %10)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %dest_width.addr, align 4
  %12 = load i32, i32* %subsample, align 4
  %add = add nsw i32 %12, 1
  %mul = mul nsw i32 %11, %add
  %mul2 = mul nsw i32 %mul, 2
  %13 = load i32, i32* %src_width.addr, align 4
  %cmp = icmp slt i32 %mul2, %13
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i32, i32* %dest_height.addr, align 4
  %15 = load i32, i32* %subsample, align 4
  %add3 = add nsw i32 %15, 1
  %mul4 = mul nsw i32 %14, %add3
  %mul5 = mul nsw i32 %mul4, 2
  %16 = load i32, i32* %src_height.addr, align 4
  %cmp6 = icmp slt i32 %mul5, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i32, i32* %subsample, align 4
  %add7 = add nsw i32 %18, 1
  store i32 %add7, i32* %subsample, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %subsample, align 4
  call void @subsample_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %19)
  %20 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  ret %struct._TempBuf* %20
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @tile_manager_get_sub_preview(%struct._TileManager* %tiles, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %src_x.addr, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %src_x.addr, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %3)
  %cmp3 = icmp slt i32 %2, %call
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %src_y.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.14

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %src_y.addr, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call11 = call i32 @tile_manager_height(%struct._TileManager* %6)
  %cmp12 = icmp slt i32 %5, %call11
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.10
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %7 = load i32, i32* %src_width.addr, align 4
  %cmp18 = icmp sgt i32 %7, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %do.body.17
  %8 = load i32, i32* %src_x.addr, align 4
  %9 = load i32, i32* %src_width.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call20 = call i32 @tile_manager_width(%struct._TileManager* %10)
  %cmp21 = icmp sle i32 %add, %call20
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.19
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %11 = load i32, i32* %src_height.addr, align 4
  %cmp27 = icmp sgt i32 %11, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %do.body.26
  %12 = load i32, i32* %src_y.addr, align 4
  %13 = load i32, i32* %src_height.addr, align 4
  %add29 = add nsw i32 %12, %13
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call30 = call i32 @tile_manager_height(%struct._TileManager* %14)
  %cmp31 = icmp sle i32 %add29, %call30
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.28, %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %15 = load i32, i32* %dest_width.addr, align 4
  %cmp37 = icmp sgt i32 %15, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %do.body.36
  %16 = load i32, i32* %dest_height.addr, align 4
  %cmp39 = icmp sgt i32 %16, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.38
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.38, %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tile_manager_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %18 = load i32, i32* %src_x.addr, align 4
  %19 = load i32, i32* %src_y.addr, align 4
  %20 = load i32, i32* %src_width.addr, align 4
  %21 = load i32, i32* %src_height.addr, align 4
  %22 = load i32, i32* %dest_width.addr, align 4
  %23 = load i32, i32* %dest_height.addr, align 4
  %call44 = call %struct._TempBuf* @tile_manager_create_preview(%struct._TileManager* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct._TempBuf* %call44, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.else.41, %if.else.33, %if.else.23, %if.else.14, %if.else.5, %if.else
  %24 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %24
}

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @subsample_region(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
