; ModuleID = './app/core/gimpdrawable-convert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_convert_rgb = private unnamed_addr constant [26 x i8] c"gimp_drawable_convert_rgb\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"! gimp_drawable_is_rgb (drawable)\00", align 1
@__func__.gimp_drawable_convert_grayscale = private unnamed_addr constant [32 x i8] c"gimp_drawable_convert_grayscale\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"! gimp_drawable_is_gray (drawable)\00", align 1
@__func__.gimp_drawable_convert_tiles_rgb = private unnamed_addr constant [32 x i8] c"gimp_drawable_convert_tiles_rgb\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"new_tiles != NULL\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"tile_manager_bpp (new_tiles) == (has_alpha ? 4 : 3)\00", align 1
@__func__.gimp_drawable_convert_tiles_grayscale = private unnamed_addr constant [38 x i8] c"gimp_drawable_convert_tiles_grayscale\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"tile_manager_bpp (new_tiles) == (has_alpha ? 2 : 1)\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_convert_rgb(%struct._GimpDrawable* %drawable, i32 %push_undo) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %type = alloca i32, align 4
  %tiles = alloca %struct._TileManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_convert_rgb, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_convert_rgb, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  store i32 0, i32* %type, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %do.end.17
  %15 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %15, 0
  br i1 %cmp21, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %16 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %16, 1
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.20
  br label %cond.end.31

cond.false:                                       ; preds = %lor.lhs.false
  %17 = load i32, i32* %type, align 4
  %cmp23 = icmp eq i32 %17, 2
  br i1 %cmp23, label %cond.true.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %cond.false
  %18 = load i32, i32* %type, align 4
  %cmp25 = icmp eq i32 %18, 3
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %lor.lhs.false.24, %cond.false
  br label %cond.end

cond.false.27:                                    ; preds = %lor.lhs.false.24
  %19 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 %19, 4
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.27
  %20 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %20, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.27
  %21 = phi i1 [ true, %cond.false.27 ], [ %cmp29, %lor.rhs ]
  %cond = select i1 %21, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.26
  %cond30 = phi i32 [ 3, %cond.true.26 ], [ %cond, %lor.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi i32 [ 1, %cond.true ], [ %cond30, %cond.end ]
  store i32 %cond32, i32* %type, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %do.end.17
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call34)
  %24 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call37)
  %27 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %call39 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %28 = load i32, i32* %type, align 4
  %cmp40 = icmp eq i32 %28, 1
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.33
  br label %cond.end.65

cond.false.42:                                    ; preds = %if.end.33
  %29 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.42
  br label %cond.end.63

cond.false.45:                                    ; preds = %cond.false.42
  %30 = load i32, i32* %type, align 4
  %cmp46 = icmp eq i32 %30, 3
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.45
  br label %cond.end.61

cond.false.48:                                    ; preds = %cond.false.45
  %31 = load i32, i32* %type, align 4
  %cmp49 = icmp eq i32 %31, 2
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.48
  br label %cond.end.59

cond.false.51:                                    ; preds = %cond.false.48
  %32 = load i32, i32* %type, align 4
  %cmp52 = icmp eq i32 %32, 5
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.51
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.false.51
  %33 = load i32, i32* %type, align 4
  %cmp55 = icmp eq i32 %33, 4
  %cond56 = select i1 %cmp55, i32 1, i32 -1
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 2, %cond.true.53 ], [ %cond56, %cond.false.54 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.50
  %cond60 = phi i32 [ 1, %cond.true.50 ], [ %cond58, %cond.end.57 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.47
  %cond62 = phi i32 [ 2, %cond.true.47 ], [ %cond60, %cond.end.59 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.44
  %cond64 = phi i32 [ 3, %cond.true.44 ], [ %cond62, %cond.end.61 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.41
  %cond66 = phi i32 [ 4, %cond.true.41 ], [ %cond64, %cond.end.63 ]
  %call67 = call %struct._TileManager* @tile_manager_new(i32 %call36, i32 %call39, i32 %cond66)
  store %struct._TileManager* %call67, %struct._TileManager** %tiles, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @gimp_drawable_convert_tiles_rgb(%struct._GimpDrawable* %34, %struct._TileManager* %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = load i32, i32* %push_undo.addr, align 4
  %38 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %39 = load i32, i32* %type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %36, i32 %37, i8* null, %struct._TileManager* %38, i32 %39)
  %40 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %40)
  br label %return

return:                                           ; preds = %cond.end.65, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_convert_tiles_rgb(%struct._GimpDrawable* %drawable, %struct._TileManager* %new_tiles) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %offset = alloca i32, align 4
  %type = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_convert_tiles_rgb, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %cmp12 = icmp ne %struct._TileManager* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_convert_tiles_rgb, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call17 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  store i32 %call17, i32* %type, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  store i32 %call18, i32* %has_alpha, align 4
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.16
  %16 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call20 = call i32 @tile_manager_bpp(%struct._TileManager* %16)
  %17 = load i32, i32* %has_alpha, align 4
  %tobool21 = icmp ne i32 %17, 0
  %cond = select i1 %tobool21, i32 4, i32 3
  %cmp22 = icmp eq i32 %call20, %cond
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_convert_tiles_rgb, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call27 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %18)
  store i8* %call27, i8** %cmap, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call28 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %19)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call29)
  %22 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_get_width(%struct._GimpItem* %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call32)
  %25 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_get_height(%struct._GimpItem* %25)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call28, i32 0, i32 0, i32 %call31, i32 %call34, i32 0)
  %26 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call35)
  %29 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call38)
  %32 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %26, i32 0, i32 0, i32 %call37, i32 %call40, i32 1)
  %33 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %33, 0
  br i1 %cmp41, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.26
  %34 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %34, 1
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end.26
  br label %cond.end.52

cond.false:                                       ; preds = %lor.lhs.false
  %35 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %35, 2
  br i1 %cmp43, label %cond.true.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %cond.false
  %36 = load i32, i32* %type, align 4
  %cmp45 = icmp eq i32 %36, 3
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %lor.lhs.false.44, %cond.false
  br label %cond.end

cond.false.47:                                    ; preds = %lor.lhs.false.44
  %37 = load i32, i32* %type, align 4
  %cmp48 = icmp eq i32 %37, 4
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.47
  %38 = load i32, i32* %type, align 4
  %cmp49 = icmp eq i32 %38, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.47
  %39 = phi i1 [ true, %cond.false.47 ], [ %cmp49, %lor.rhs ]
  %cond50 = select i1 %39, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.46
  %cond51 = phi i32 [ 1, %cond.true.46 ], [ %cond50, %lor.end ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true
  %cond53 = phi i32 [ 0, %cond.true ], [ %cond51, %cond.end ]
  switch i32 %cond53, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %cond.end.52
  %call54 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %40 = bitcast %struct._PixelRegionIterator* %call54 to i8*
  store i8* %40, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %sw.bb
  %41 = load i8*, i8** %pr, align 8
  %cmp55 = icmp ne i8* %41, null
  br i1 %cmp55, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  store i8* %42, i8** %src, align 8
  %data56 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %43 = load i8*, i8** %data56, align 8
  store i8* %43, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.74, %for.body
  %44 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %45 = load i32, i32* %h, align 4
  %cmp58 = icmp slt i32 %44, %45
  br i1 %cmp58, label %for.body.59, label %for.end.76

for.body.59:                                      ; preds = %for.cond.57
  %46 = load i8*, i8** %src, align 8
  store i8* %46, i8** %s, align 8
  %47 = load i8*, i8** %dest, align 8
  store i8* %47, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %for.body.59
  %48 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %49 = load i32, i32* %w, align 4
  %cmp61 = icmp slt i32 %48, %49
  br i1 %cmp61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.60
  %50 = load i8*, i8** %s, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %arrayidx, align 1
  %53 = load i8*, i8** %s, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %d, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %arrayidx63, align 1
  %56 = load i8*, i8** %s, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %d, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %57, i8* %arrayidx64, align 1
  %59 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 3
  store i8* %add.ptr, i8** %d, align 8
  %60 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %61 = load i32, i32* %has_alpha, align 4
  %tobool65 = icmp ne i32 %61, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %for.body.62
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr67, i8** %s, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %d, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr68, i8** %d, align 8
  store i8 %63, i8* %64, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %for.body.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %65 = load i32, i32* %col, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %66 = load i32, i32* %rowstride, align 4
  %67 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %66 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr70, i8** %src, align 8
  %rowstride71 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %68 = load i32, i32* %rowstride71, align 4
  %69 = load i8*, i8** %dest, align 8
  %idx.ext72 = sext i32 %68 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %69, i64 %idx.ext72
  store i8* %add.ptr73, i8** %dest, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %70 = load i32, i32* %row, align 4
  %inc75 = add nsw i32 %70, 1
  store i32 %inc75, i32* %row, align 4
  br label %for.cond.57

for.end.76:                                       ; preds = %for.cond.57
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %71 = load i8*, i8** %pr, align 8
  %72 = bitcast i8* %71 to %struct._PixelRegionIterator*
  %call78 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %72)
  %73 = bitcast %struct._PixelRegionIterator* %call78 to i8*
  store i8* %73, i8** %pr, align 8
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.80:                                         ; preds = %cond.end.52
  %call81 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %74 = bitcast %struct._PixelRegionIterator* %call81 to i8*
  store i8* %74, i8** %pr, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.124, %sw.bb.80
  %75 = load i8*, i8** %pr, align 8
  %cmp83 = icmp ne i8* %75, null
  br i1 %cmp83, label %for.body.84, label %for.end.126

for.body.84:                                      ; preds = %for.cond.82
  %data85 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %76 = load i8*, i8** %data85, align 8
  store i8* %76, i8** %src, align 8
  %data86 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %77 = load i8*, i8** %data86, align 8
  store i8* %77, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.121, %for.body.84
  %78 = load i32, i32* %row, align 4
  %h88 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %79 = load i32, i32* %h88, align 4
  %cmp89 = icmp slt i32 %78, %79
  br i1 %cmp89, label %for.body.90, label %for.end.123

for.body.90:                                      ; preds = %for.cond.87
  %80 = load i8*, i8** %src, align 8
  store i8* %80, i8** %s, align 8
  %81 = load i8*, i8** %dest, align 8
  store i8* %81, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.112, %for.body.90
  %82 = load i32, i32* %col, align 4
  %w92 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %83 = load i32, i32* %w92, align 4
  %cmp93 = icmp slt i32 %82, %83
  br i1 %cmp93, label %for.body.94, label %for.end.114

for.body.94:                                      ; preds = %for.cond.91
  %84 = load i8*, i8** %s, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr95, i8** %s, align 8
  %85 = load i8, i8* %84, align 1
  %conv = zext i8 %85 to i32
  %mul = mul nsw i32 %conv, 3
  store i32 %mul, i32* %offset, align 4
  %86 = load i32, i32* %offset, align 4
  %add = add nsw i32 %86, 0
  %idxprom = sext i32 %add to i64
  %87 = load i8*, i8** %cmap, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %87, i64 %idxprom
  %88 = load i8, i8* %arrayidx96, align 1
  %89 = load i8*, i8** %d, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 %88, i8* %arrayidx97, align 1
  %90 = load i32, i32* %offset, align 4
  %add98 = add nsw i32 %90, 1
  %idxprom99 = sext i32 %add98 to i64
  %91 = load i8*, i8** %cmap, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %91, i64 %idxprom99
  %92 = load i8, i8* %arrayidx100, align 1
  %93 = load i8*, i8** %d, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 %92, i8* %arrayidx101, align 1
  %94 = load i32, i32* %offset, align 4
  %add102 = add nsw i32 %94, 2
  %idxprom103 = sext i32 %add102 to i64
  %95 = load i8*, i8** %cmap, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %95, i64 %idxprom103
  %96 = load i8, i8* %arrayidx104, align 1
  %97 = load i8*, i8** %d, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %97, i64 2
  store i8 %96, i8* %arrayidx105, align 1
  %98 = load i8*, i8** %d, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %98, i64 3
  store i8* %add.ptr106, i8** %d, align 8
  %99 = load i32, i32* %has_alpha, align 4
  %tobool107 = icmp ne i32 %99, 0
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %for.body.94
  %100 = load i8*, i8** %s, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr109, i8** %s, align 8
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %d, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr110, i8** %d, align 8
  store i8 %101, i8* %102, align 1
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %for.body.94
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %103 = load i32, i32* %col, align 4
  %inc113 = add nsw i32 %103, 1
  store i32 %inc113, i32* %col, align 4
  br label %for.cond.91

for.end.114:                                      ; preds = %for.cond.91
  %rowstride115 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %104 = load i32, i32* %rowstride115, align 4
  %105 = load i8*, i8** %src, align 8
  %idx.ext116 = sext i32 %104 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %105, i64 %idx.ext116
  store i8* %add.ptr117, i8** %src, align 8
  %rowstride118 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %106 = load i32, i32* %rowstride118, align 4
  %107 = load i8*, i8** %dest, align 8
  %idx.ext119 = sext i32 %106 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %107, i64 %idx.ext119
  store i8* %add.ptr120, i8** %dest, align 8
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.114
  %108 = load i32, i32* %row, align 4
  %inc122 = add nsw i32 %108, 1
  store i32 %inc122, i32* %row, align 4
  br label %for.cond.87

for.end.123:                                      ; preds = %for.cond.87
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.123
  %109 = load i8*, i8** %pr, align 8
  %110 = bitcast i8* %109 to %struct._PixelRegionIterator*
  %call125 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %110)
  %111 = bitcast %struct._PixelRegionIterator* %call125 to i8*
  store i8* %111, i8** %pr, align 8
  br label %for.cond.82

for.end.126:                                      ; preds = %for.cond.82
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.52
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.14, %if.else.24, %sw.default, %for.end.126, %for.end.79
  ret void
}

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_convert_grayscale(%struct._GimpDrawable* %drawable, i32 %push_undo) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %type = alloca i32, align 4
  %tiles = alloca %struct._TileManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_convert_grayscale, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_convert_grayscale, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  store i32 2, i32* %type, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %do.end.17
  %15 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %15, 0
  br i1 %cmp21, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %16 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %16, 1
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.20
  br label %cond.end.31

cond.false:                                       ; preds = %lor.lhs.false
  %17 = load i32, i32* %type, align 4
  %cmp23 = icmp eq i32 %17, 2
  br i1 %cmp23, label %cond.true.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %cond.false
  %18 = load i32, i32* %type, align 4
  %cmp25 = icmp eq i32 %18, 3
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %lor.lhs.false.24, %cond.false
  br label %cond.end

cond.false.27:                                    ; preds = %lor.lhs.false.24
  %19 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 %19, 4
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.27
  %20 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %20, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.27
  %21 = phi i1 [ true, %cond.false.27 ], [ %cmp29, %lor.rhs ]
  %cond = select i1 %21, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.26
  %cond30 = phi i32 [ 3, %cond.true.26 ], [ %cond, %lor.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi i32 [ 1, %cond.true ], [ %cond30, %cond.end ]
  store i32 %cond32, i32* %type, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %do.end.17
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call34)
  %24 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call37)
  %27 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %call39 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %28 = load i32, i32* %type, align 4
  %cmp40 = icmp eq i32 %28, 1
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.33
  br label %cond.end.65

cond.false.42:                                    ; preds = %if.end.33
  %29 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.42
  br label %cond.end.63

cond.false.45:                                    ; preds = %cond.false.42
  %30 = load i32, i32* %type, align 4
  %cmp46 = icmp eq i32 %30, 3
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.45
  br label %cond.end.61

cond.false.48:                                    ; preds = %cond.false.45
  %31 = load i32, i32* %type, align 4
  %cmp49 = icmp eq i32 %31, 2
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.48
  br label %cond.end.59

cond.false.51:                                    ; preds = %cond.false.48
  %32 = load i32, i32* %type, align 4
  %cmp52 = icmp eq i32 %32, 5
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.51
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.false.51
  %33 = load i32, i32* %type, align 4
  %cmp55 = icmp eq i32 %33, 4
  %cond56 = select i1 %cmp55, i32 1, i32 -1
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 2, %cond.true.53 ], [ %cond56, %cond.false.54 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.50
  %cond60 = phi i32 [ 1, %cond.true.50 ], [ %cond58, %cond.end.57 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.47
  %cond62 = phi i32 [ 2, %cond.true.47 ], [ %cond60, %cond.end.59 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.44
  %cond64 = phi i32 [ 3, %cond.true.44 ], [ %cond62, %cond.end.61 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.41
  %cond66 = phi i32 [ 4, %cond.true.41 ], [ %cond64, %cond.end.63 ]
  %call67 = call %struct._TileManager* @tile_manager_new(i32 %call36, i32 %call39, i32 %cond66)
  store %struct._TileManager* %call67, %struct._TileManager** %tiles, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @gimp_drawable_convert_tiles_grayscale(%struct._GimpDrawable* %34, %struct._TileManager* %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = load i32, i32* %push_undo.addr, align 4
  %38 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %39 = load i32, i32* %type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %36, i32 %37, i8* null, %struct._TileManager* %38, i32 %39)
  %40 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %40)
  br label %return

return:                                           ; preds = %cond.end.65, %if.else.15, %if.else.9
  ret void
}

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_convert_tiles_grayscale(%struct._GimpDrawable* %drawable, %struct._TileManager* %new_tiles) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %offset = alloca i32, align 4
  %val = alloca i32, align 4
  %type = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_convert_tiles_grayscale, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %cmp12 = icmp ne %struct._TileManager* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_convert_tiles_grayscale, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call17 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  store i32 %call17, i32* %type, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  store i32 %call18, i32* %has_alpha, align 4
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.16
  %16 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call20 = call i32 @tile_manager_bpp(%struct._TileManager* %16)
  %17 = load i32, i32* %has_alpha, align 4
  %tobool21 = icmp ne i32 %17, 0
  %cond = select i1 %tobool21, i32 2, i32 1
  %cmp22 = icmp eq i32 %call20, %cond
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_convert_tiles_grayscale, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call27 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %18)
  store i8* %call27, i8** %cmap, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call28 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %19)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call29)
  %22 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_get_width(%struct._GimpItem* %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call32)
  %25 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_get_height(%struct._GimpItem* %25)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call28, i32 0, i32 0, i32 %call31, i32 %call34, i32 0)
  %26 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call35)
  %29 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call38)
  %32 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %26, i32 0, i32 0, i32 %call37, i32 %call40, i32 1)
  %33 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %33, 0
  br i1 %cmp41, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.26
  %34 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %34, 1
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end.26
  br label %cond.end.52

cond.false:                                       ; preds = %lor.lhs.false
  %35 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %35, 2
  br i1 %cmp43, label %cond.true.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %cond.false
  %36 = load i32, i32* %type, align 4
  %cmp45 = icmp eq i32 %36, 3
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %lor.lhs.false.44, %cond.false
  br label %cond.end

cond.false.47:                                    ; preds = %lor.lhs.false.44
  %37 = load i32, i32* %type, align 4
  %cmp48 = icmp eq i32 %37, 4
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.47
  %38 = load i32, i32* %type, align 4
  %cmp49 = icmp eq i32 %38, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.47
  %39 = phi i1 [ true, %cond.false.47 ], [ %cmp49, %lor.rhs ]
  %cond50 = select i1 %39, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.46
  %cond51 = phi i32 [ 1, %cond.true.46 ], [ %cond50, %lor.end ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true
  %cond53 = phi i32 [ 0, %cond.true ], [ %cond51, %cond.end ]
  switch i32 %cond53, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %cond.end.52
  %call54 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %40 = bitcast %struct._PixelRegionIterator* %call54 to i8*
  store i8* %40, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %sw.bb
  %41 = load i8*, i8** %pr, align 8
  %cmp55 = icmp ne i8* %41, null
  br i1 %cmp55, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  store i8* %42, i8** %src, align 8
  %data56 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %43 = load i8*, i8** %data56, align 8
  store i8* %43, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.85, %for.body
  %44 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %45 = load i32, i32* %h, align 4
  %cmp58 = icmp slt i32 %44, %45
  br i1 %cmp58, label %for.body.59, label %for.end.87

for.body.59:                                      ; preds = %for.cond.57
  %46 = load i8*, i8** %src, align 8
  store i8* %46, i8** %s, align 8
  %47 = load i8*, i8** %dest, align 8
  store i8* %47, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %for.body.59
  %48 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %49 = load i32, i32* %w, align 4
  %cmp61 = icmp slt i32 %48, %49
  br i1 %cmp61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.60
  %50 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %51 to i32
  %conv63 = sitofp i32 %conv to double
  %mul = fmul double %conv63, 2.126000e-01
  %52 = load i8*, i8** %s, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %conv66 = sitofp i32 %conv65 to double
  %mul67 = fmul double %conv66, 7.152000e-01
  %add = fadd double %mul, %mul67
  %54 = load i8*, i8** %s, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %55 to i32
  %conv70 = sitofp i32 %conv69 to double
  %mul71 = fmul double %conv70, 7.220000e-02
  %add72 = fadd double %add, %mul71
  %add73 = fadd double %add72, 5.000000e-01
  %conv74 = fptosi double %add73 to i32
  store i32 %conv74, i32* %val, align 4
  %56 = load i32, i32* %val, align 4
  %conv75 = trunc i32 %56 to i8
  %57 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv75, i8* %57, align 1
  %58 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %add.ptr, i8** %s, align 8
  %59 = load i32, i32* %has_alpha, align 4
  %tobool76 = icmp ne i32 %59, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %for.body.62
  %60 = load i8*, i8** %s, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr78, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %d, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr79, i8** %d, align 8
  store i8 %61, i8* %62, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %for.body.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %63 = load i32, i32* %col, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %64 = load i32, i32* %rowstride, align 4
  %65 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr81, i8** %src, align 8
  %rowstride82 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %66 = load i32, i32* %rowstride82, align 4
  %67 = load i8*, i8** %dest, align 8
  %idx.ext83 = sext i32 %66 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %67, i64 %idx.ext83
  store i8* %add.ptr84, i8** %dest, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end
  %68 = load i32, i32* %row, align 4
  %inc86 = add nsw i32 %68, 1
  store i32 %inc86, i32* %row, align 4
  br label %for.cond.57

for.end.87:                                       ; preds = %for.cond.57
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %69 = load i8*, i8** %pr, align 8
  %70 = bitcast i8* %69 to %struct._PixelRegionIterator*
  %call89 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %70)
  %71 = bitcast %struct._PixelRegionIterator* %call89 to i8*
  store i8* %71, i8** %pr, align 8
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.91:                                         ; preds = %cond.end.52
  %call92 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %72 = bitcast %struct._PixelRegionIterator* %call92 to i8*
  store i8* %72, i8** %pr, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.152, %sw.bb.91
  %73 = load i8*, i8** %pr, align 8
  %cmp94 = icmp ne i8* %73, null
  br i1 %cmp94, label %for.body.96, label %for.end.154

for.body.96:                                      ; preds = %for.cond.93
  %data97 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %74 = load i8*, i8** %data97, align 8
  store i8* %74, i8** %src, align 8
  %data98 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %75 = load i8*, i8** %data98, align 8
  store i8* %75, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.149, %for.body.96
  %76 = load i32, i32* %row, align 4
  %h100 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %77 = load i32, i32* %h100, align 4
  %cmp101 = icmp slt i32 %76, %77
  br i1 %cmp101, label %for.body.103, label %for.end.151

for.body.103:                                     ; preds = %for.cond.99
  %78 = load i8*, i8** %src, align 8
  store i8* %78, i8** %s, align 8
  %79 = load i8*, i8** %dest, align 8
  store i8* %79, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.140, %for.body.103
  %80 = load i32, i32* %col, align 4
  %w105 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %81 = load i32, i32* %w105, align 4
  %cmp106 = icmp slt i32 %80, %81
  br i1 %cmp106, label %for.body.108, label %for.end.142

for.body.108:                                     ; preds = %for.cond.104
  %82 = load i8*, i8** %s, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr109, i8** %s, align 8
  %83 = load i8, i8* %82, align 1
  %conv110 = zext i8 %83 to i32
  %mul111 = mul nsw i32 %conv110, 3
  store i32 %mul111, i32* %offset, align 4
  %84 = load i32, i32* %offset, align 4
  %add112 = add nsw i32 %84, 0
  %idxprom = sext i32 %add112 to i64
  %85 = load i8*, i8** %cmap, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %85, i64 %idxprom
  %86 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %86 to i32
  %conv115 = sitofp i32 %conv114 to double
  %mul116 = fmul double %conv115, 2.126000e-01
  %87 = load i32, i32* %offset, align 4
  %add117 = add nsw i32 %87, 1
  %idxprom118 = sext i32 %add117 to i64
  %88 = load i8*, i8** %cmap, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %88, i64 %idxprom118
  %89 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %89 to i32
  %conv121 = sitofp i32 %conv120 to double
  %mul122 = fmul double %conv121, 7.152000e-01
  %add123 = fadd double %mul116, %mul122
  %90 = load i32, i32* %offset, align 4
  %add124 = add nsw i32 %90, 2
  %idxprom125 = sext i32 %add124 to i64
  %91 = load i8*, i8** %cmap, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %91, i64 %idxprom125
  %92 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %92 to i32
  %conv128 = sitofp i32 %conv127 to double
  %mul129 = fmul double %conv128, 7.220000e-02
  %add130 = fadd double %add123, %mul129
  %add131 = fadd double %add130, 5.000000e-01
  %conv132 = fptosi double %add131 to i32
  store i32 %conv132, i32* %val, align 4
  %93 = load i32, i32* %val, align 4
  %conv133 = trunc i32 %93 to i8
  %94 = load i8*, i8** %d, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr134, i8** %d, align 8
  store i8 %conv133, i8* %94, align 1
  %95 = load i32, i32* %has_alpha, align 4
  %tobool135 = icmp ne i32 %95, 0
  br i1 %tobool135, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %for.body.108
  %96 = load i8*, i8** %s, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr137, i8** %s, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %d, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr138, i8** %d, align 8
  store i8 %97, i8* %98, align 1
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %for.body.108
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %99 = load i32, i32* %col, align 4
  %inc141 = add nsw i32 %99, 1
  store i32 %inc141, i32* %col, align 4
  br label %for.cond.104

for.end.142:                                      ; preds = %for.cond.104
  %rowstride143 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %100 = load i32, i32* %rowstride143, align 4
  %101 = load i8*, i8** %src, align 8
  %idx.ext144 = sext i32 %100 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %101, i64 %idx.ext144
  store i8* %add.ptr145, i8** %src, align 8
  %rowstride146 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %102 = load i32, i32* %rowstride146, align 4
  %103 = load i8*, i8** %dest, align 8
  %idx.ext147 = sext i32 %102 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %103, i64 %idx.ext147
  store i8* %add.ptr148, i8** %dest, align 8
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.142
  %104 = load i32, i32* %row, align 4
  %inc150 = add nsw i32 %104, 1
  store i32 %inc150, i32* %row, align 4
  br label %for.cond.99

for.end.151:                                      ; preds = %for.cond.99
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.end.151
  %105 = load i8*, i8** %pr, align 8
  %106 = bitcast i8* %105 to %struct._PixelRegionIterator*
  %call153 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %106)
  %107 = bitcast %struct._PixelRegionIterator* %call153 to i8*
  store i8* %107, i8** %pr, align 8
  br label %for.cond.93

for.end.154:                                      ; preds = %for.cond.93
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.52
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.14, %if.else.24, %sw.default, %for.end.154, %for.end.90
  ret void
}

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
