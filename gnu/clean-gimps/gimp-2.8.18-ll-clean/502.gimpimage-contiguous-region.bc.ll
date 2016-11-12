; ModuleID = './app/core/gimpimage-contiguous-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpPickable = type opaque
%struct._GimpProjection = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ContinuousRegionData = type { %struct._GimpImage*, i32, i32, i32, i32, i32, i32, i32, [4 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_contiguous_region_by_seed = private unnamed_addr constant [37 x i8] c"gimp_image_contiguous_region_by_seed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_image_contiguous_region_by_color = private unnamed_addr constant [38 x i8] c"gimp_image_contiguous_region_by_color\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, i32 %sample_merged, i32 %antialias, i32 %threshold, i32 %select_transparent, i32 %select_criterion, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %sample_merged.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %src_type = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %bytes = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %start = alloca i8*, align 8
  %start_col = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_contiguous_region_by_seed, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_contiguous_region_by_seed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i32, i32* %sample_merged.addr, align 4
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %do.end.38
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %27)
  %28 = bitcast %struct._GimpProjection* %call41 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_pickable_interface_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call42)
  %29 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpPickable*
  store %struct._GimpPickable* %29, %struct._GimpPickable** %pickable, align 8
  br label %if.end.47

if.else.44:                                       ; preds = %do.end.38
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_pickable_interface_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call45)
  %32 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpPickable*
  store %struct._GimpPickable* %32, %struct._GimpPickable** %pickable, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.40
  %33 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %33)
  %34 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call48 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %34)
  store i32 %call48, i32* %src_type, align 4
  %35 = load i32, i32* %src_type, align 4
  %cmp49 = icmp eq i32 %35, 1
  br i1 %cmp49, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %36 = load i32, i32* %src_type, align 4
  %cmp50 = icmp eq i32 %36, 3
  br i1 %cmp50, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %37 = load i32, i32* %src_type, align 4
  %cmp51 = icmp eq i32 %37, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end.47
  %38 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end.47 ], [ %cmp51, %lor.rhs ]
  %lor.ext = zext i1 %38 to i32
  store i32 %lor.ext, i32* %has_alpha, align 4
  %39 = load i32, i32* %src_type, align 4
  %cmp52 = icmp eq i32 %39, 1
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end.73

cond.false:                                       ; preds = %lor.end
  %40 = load i32, i32* %src_type, align 4
  %cmp53 = icmp eq i32 %40, 0
  br i1 %cmp53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false
  br label %cond.end.71

cond.false.55:                                    ; preds = %cond.false
  %41 = load i32, i32* %src_type, align 4
  %cmp56 = icmp eq i32 %41, 3
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.55
  br label %cond.end.69

cond.false.58:                                    ; preds = %cond.false.55
  %42 = load i32, i32* %src_type, align 4
  %cmp59 = icmp eq i32 %42, 2
  br i1 %cmp59, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.false.58
  br label %cond.end.67

cond.false.61:                                    ; preds = %cond.false.58
  %43 = load i32, i32* %src_type, align 4
  %cmp62 = icmp eq i32 %43, 5
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.61
  br label %cond.end

cond.false.64:                                    ; preds = %cond.false.61
  %44 = load i32, i32* %src_type, align 4
  %cmp65 = icmp eq i32 %44, 4
  %cond = select i1 %cmp65, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi i32 [ 2, %cond.true.63 ], [ %cond, %cond.false.64 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end, %cond.true.60
  %cond68 = phi i32 [ 1, %cond.true.60 ], [ %cond66, %cond.end ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.57
  %cond70 = phi i32 [ 2, %cond.true.57 ], [ %cond68, %cond.end.67 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.54
  %cond72 = phi i32 [ 3, %cond.true.54 ], [ %cond70, %cond.end.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true
  %cond74 = phi i32 [ 4, %cond.true ], [ %cond72, %cond.end.71 ]
  store i32 %cond74, i32* %bytes, align 4
  %45 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call75 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %45)
  store %struct._TileManager* %call75, %struct._TileManager** %tiles, align 8
  %46 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %47 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call76 = call i32 @tile_manager_width(%struct._TileManager* %47)
  %48 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call77 = call i32 @tile_manager_height(%struct._TileManager* %48)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %46, i32 0, i32 0, i32 %call76, i32 %call77, i32 0)
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %50 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %51 = load i32, i32* %h, align 4
  %call78 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %49, i32 %50, i32 %51)
  store %struct._GimpChannel* %call78, %struct._GimpChannel** %mask, align 8
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %53 = bitcast %struct._GimpChannel* %52 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_drawable_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call79)
  %54 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpDrawable*
  %call81 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %54)
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %56 = bitcast %struct._GimpChannel* %55 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_item_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call82)
  %57 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpItem*
  %call84 = call i32 @gimp_item_get_width(%struct._GimpItem* %57)
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %59 = bitcast %struct._GimpChannel* %58 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_item_get_type() #4
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call85)
  %60 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpItem*
  %call87 = call i32 @gimp_item_get_height(%struct._GimpItem* %60)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call81, i32 0, i32 0, i32 %call84, i32 %call87, i32 1)
  %tiles88 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 1
  %61 = load %struct._TileManager*, %struct._TileManager** %tiles88, align 8
  %62 = load i32, i32* %x.addr, align 4
  %63 = load i32, i32* %y.addr, align 4
  %call89 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %61, i32 %62, i32 %63, i32 1, i32 0)
  store %struct._Tile* %call89, %struct._Tile** %tile, align 8
  %64 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %tobool90 = icmp ne %struct._Tile* %64, null
  br i1 %tobool90, label %if.then.91, label %if.end.122

if.then.91:                                       ; preds = %cond.end.73
  %65 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %66 = load i32, i32* %x.addr, align 4
  %67 = load i32, i32* %y.addr, align 4
  %call94 = call i8* @tile_data_pointer(%struct._Tile* %65, i32 %66, i32 %67)
  store i8* %call94, i8** %start, align 8
  %68 = load i32, i32* %has_alpha, align 4
  %tobool95 = icmp ne i32 %68, 0
  br i1 %tobool95, label %if.then.96, label %if.else.104

if.then.96:                                       ; preds = %if.then.91
  %69 = load i32, i32* %select_transparent.addr, align 4
  %tobool97 = icmp ne i32 %69, 0
  br i1 %tobool97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %if.then.96
  %70 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %70, 1
  %idxprom = sext i32 %sub to i64
  %71 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %71, i64 %idxprom
  %72 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %72 to i32
  %cmp99 = icmp sgt i32 %conv, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.98
  store i32 0, i32* %select_transparent.addr, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.then.98
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.96
  br label %if.end.105

if.else.104:                                      ; preds = %if.then.91
  store i32 0, i32* %select_transparent.addr, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %if.end.103
  %73 = load i32, i32* %src_type, align 4
  %cmp106 = icmp eq i32 %73, 4
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.end.105
  %74 = load i32, i32* %src_type, align 4
  %cmp109 = icmp eq i32 %74, 5
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %lor.lhs.false.108, %if.end.105
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %76 = load i32, i32* %src_type, align 4
  %77 = load i8*, i8** %start, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %start_col, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %75, i32 %76, i8* %77, i8* %arraydecay)
  br label %if.end.120

if.else.112:                                      ; preds = %lor.lhs.false.108
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.112
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %bytes, align 4
  %cmp114 = icmp slt i32 %78, %79
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %80 to i64
  %81 = load i8*, i8** %start, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %81, i64 %idxprom116
  %82 = load i8, i8* %arrayidx117, align 1
  %83 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %83 to i64
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %start_col, i32 0, i64 %idxprom118
  store i8 %82, i8* %arrayidx119, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %i, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.120

if.end.120:                                       ; preds = %for.end, %if.then.111
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %86 = load i32, i32* %src_type, align 4
  %87 = load i32, i32* %has_alpha, align 4
  %88 = load i32, i32* %select_transparent.addr, align 4
  %89 = load i32, i32* %select_criterion.addr, align 4
  %90 = load i32, i32* %antialias.addr, align 4
  %91 = load i32, i32* %threshold.addr, align 4
  %92 = load i32, i32* %x.addr, align 4
  %93 = load i32, i32* %y.addr, align 4
  %arraydecay121 = getelementptr inbounds [4 x i8], [4 x i8]* %start_col, i32 0, i32 0
  call void @find_contiguous_region_helper(%struct._GimpImage* %85, %struct._PixelRegion* %maskPR, %struct._PixelRegion* %srcPR, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i8* %arraydecay121)
  %94 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %94, i32 0)
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.120, %cond.end.73
  %95 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  store %struct._GimpChannel* %95, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.else.36, %if.else.9
  %96 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %96
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #3

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

declare %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage*, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #3

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #3

declare void @gimp_image_get_color(%struct._GimpImage*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @find_contiguous_region_helper(%struct._GimpImage* %image, %struct._PixelRegion* %mask, %struct._PixelRegion* %src, i32 %src_type, i32 %has_alpha, i32 %select_transparent, i32 %select_criterion, i32 %antialias, i32 %threshold, i32 %x, i32 %y, i8* %col) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %mask.addr = alloca %struct._PixelRegion*, align 8
  %src.addr = alloca %struct._PixelRegion*, align 8
  %src_type.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %col.addr = alloca i8*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %new_start = alloca i32, align 4
  %new_end = alloca i32, align 4
  %val = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  %coord_stack = alloca %struct._GQueue*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._PixelRegion* %mask, %struct._PixelRegion** %mask.addr, align 8
  store %struct._PixelRegion* %src, %struct._PixelRegion** %src.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %col, i8** %col.addr, align 8
  %call = call %struct._GQueue* @g_queue_new()
  store %struct._GQueue* %call, %struct._GQueue** %coord_stack, align 8
  %0 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %1 = load i32, i32* %y.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to i8*
  call void @g_queue_push_tail(%struct._GQueue* %0, i8* %2)
  %3 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %4 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %4, 1
  %conv1 = sext i32 %sub to i64
  %5 = inttoptr i64 %conv1 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %3, i8* %5)
  %6 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %7 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %7, 1
  %conv2 = sext i32 %add to i64
  %8 = inttoptr i64 %conv2 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %6, i8* %8)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %9 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %call3 = call i8* @g_queue_pop_head(%struct._GQueue* %9)
  %10 = ptrtoint i8* %call3 to i64
  %conv4 = trunc i64 %10 to i32
  store i32 %conv4, i32* %y.addr, align 4
  %11 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %call5 = call i8* @g_queue_pop_head(%struct._GQueue* %11)
  %12 = ptrtoint i8* %call5 to i64
  %conv6 = trunc i64 %12 to i32
  store i32 %conv6, i32* %start, align 4
  %13 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %call7 = call i8* @g_queue_pop_head(%struct._GQueue* %13)
  %14 = ptrtoint i8* %call7 to i64
  %conv8 = trunc i64 %14 to i32
  store i32 %conv8, i32* %end, align 4
  %15 = load i32, i32* %start, align 4
  %add9 = add nsw i32 %15, 1
  store i32 %add9, i32* %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 1
  %19 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %20 = load i32, i32* %x.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  %call11 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %19, i32 %20, i32 %21, i32 1, i32 0)
  store %struct._Tile* %call11, %struct._Tile** %tile, align 8
  %22 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call12 = call i8* @tile_data_pointer(%struct._Tile* %22, i32 %23, i32 %24)
  %25 = load i8, i8* %call12, align 1
  %conv13 = zext i8 %25 to i32
  store i32 %conv13, i32* %val, align 4
  %26 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %26, i32 0)
  %27 = load i32, i32* %val, align 4
  %cmp14 = icmp ne i32 %27, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %28 = load i32, i32* %x.addr, align 4
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %x16 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %29, i32 0, i32 6
  store i32 %28, i32* %x16, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %y17 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 7
  store i32 %30, i32* %y17, align 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %33 = load i8*, i8** %col.addr, align 8
  %34 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %36 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %36, i32 0, i32 8
  %37 = load i32, i32* %w, align 4
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 10
  %39 = load i32, i32* %bytes, align 4
  %40 = load i32, i32* %src_type.addr, align 4
  %41 = load i32, i32* %has_alpha.addr, align 4
  %42 = load i32, i32* %select_transparent.addr, align 4
  %43 = load i32, i32* %select_criterion.addr, align 4
  %44 = load i32, i32* %antialias.addr, align 4
  %45 = load i32, i32* %threshold.addr, align 4
  %46 = load i32, i32* %x.addr, align 4
  %call18 = call i32 @find_contiguous_segment(%struct._GimpImage* %32, i8* %33, %struct._PixelRegion* %34, %struct._PixelRegion* %35, i32 %37, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32* %new_start, i32* %new_end)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end
  br label %for.inc

if.end.20:                                        ; preds = %if.end
  %47 = load i32, i32* %y.addr, align 4
  %add21 = add nsw i32 %47, 1
  %48 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %48, i32 0, i32 9
  %49 = load i32, i32* %h, align 4
  %cmp22 = icmp slt i32 %add21, %49
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.20
  %50 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %51 = load i32, i32* %y.addr, align 4
  %add25 = add nsw i32 %51, 1
  %conv26 = sext i32 %add25 to i64
  %52 = inttoptr i64 %conv26 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %50, i8* %52)
  %53 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %54 = load i32, i32* %new_start, align 4
  %conv27 = sext i32 %54 to i64
  %55 = inttoptr i64 %conv27 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %53, i8* %55)
  %56 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %57 = load i32, i32* %new_end, align 4
  %conv28 = sext i32 %57 to i64
  %58 = inttoptr i64 %conv28 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %56, i8* %58)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.20
  %59 = load i32, i32* %y.addr, align 4
  %sub30 = sub nsw i32 %59, 1
  %cmp31 = icmp sge i32 %sub30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.29
  %60 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %61 = load i32, i32* %y.addr, align 4
  %sub34 = sub nsw i32 %61, 1
  %conv35 = sext i32 %sub34 to i64
  %62 = inttoptr i64 %conv35 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %60, i8* %62)
  %63 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %64 = load i32, i32* %new_start, align 4
  %conv36 = sext i32 %64 to i64
  %65 = inttoptr i64 %conv36 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %63, i8* %65)
  %66 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %67 = load i32, i32* %new_end, align 4
  %conv37 = sext i32 %67 to i64
  %68 = inttoptr i64 %conv37 to i8*
  call void @g_queue_push_tail(%struct._GQueue* %66, i8* %68)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.38, %if.then.19, %if.then
  %69 = load i32, i32* %x.addr, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %x.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %70 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  %call39 = call i32 @g_queue_is_empty(%struct._GQueue* %70)
  %tobool40 = icmp ne i32 %call39, 0
  %lnot = xor i1 %tobool40, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load %struct._GQueue*, %struct._GQueue** %coord_stack, align 8
  call void @g_queue_free(%struct._GQueue* %71)
  ret void
}

declare void @tile_release(%struct._Tile*, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_image_contiguous_region_by_color(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, i32 %sample_merged, i32 %antialias, i32 %threshold, i32 %select_transparent, i32 %select_criterion, %struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %sample_merged.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %imagePR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cont = alloca %struct.ContinuousRegionData, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_image_contiguous_region_by_color, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_image_contiguous_region_by_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp40 = icmp ne %struct._GimpRGB* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_image_contiguous_region_by_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %color45 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color45, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 0
  %color46 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 8
  %arraydecay47 = getelementptr inbounds [4 x i8], [4 x i8]* %color46, i32 0, i32 0
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay47, i64 1
  %color49 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 8
  %arraydecay50 = getelementptr inbounds [4 x i8], [4 x i8]* %color49, i32 0, i32 0
  %add.ptr51 = getelementptr inbounds i8, i8* %arraydecay50, i64 2
  %color52 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 8
  %arraydecay53 = getelementptr inbounds [4 x i8], [4 x i8]* %color52, i32 0, i32 0
  %add.ptr54 = getelementptr inbounds i8, i8* %arraydecay53, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %27, i8* %add.ptr, i8* %add.ptr48, i8* %add.ptr51, i8* %add.ptr54)
  %28 = load i32, i32* %sample_merged.addr, align 4
  %tobool55 = icmp ne i32 %28, 0
  br i1 %tobool55, label %if.then.56, label %if.else.60

if.then.56:                                       ; preds = %do.end.44
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call57 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %29)
  %30 = bitcast %struct._GimpProjection* %call57 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_pickable_interface_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call58)
  %31 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpPickable*
  store %struct._GimpPickable* %31, %struct._GimpPickable** %pickable, align 8
  br label %if.end.63

if.else.60:                                       ; preds = %do.end.44
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_pickable_interface_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call61)
  %34 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpPickable*
  store %struct._GimpPickable* %34, %struct._GimpPickable** %pickable, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.56
  %35 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %35)
  %36 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call64 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %36)
  %type = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 1
  store i32 %call64, i32* %type, align 4
  %type65 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 1
  %37 = load i32, i32* %type65, align 4
  %cmp66 = icmp eq i32 %37, 1
  br i1 %cmp66, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.63
  %type67 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 1
  %38 = load i32, i32* %type67, align 4
  %cmp68 = icmp eq i32 %38, 3
  br i1 %cmp68, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %type69 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 1
  %39 = load i32, i32* %type69, align 4
  %cmp70 = icmp eq i32 %39, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end.63
  %40 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end.63 ], [ %cmp70, %lor.rhs ]
  %lor.ext = zext i1 %40 to i32
  %has_alpha = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 7
  store i32 %lor.ext, i32* %has_alpha, align 4
  %41 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call71 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %41)
  store %struct._TileManager* %call71, %struct._TileManager** %tiles, align 8
  %42 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call72 = call i32 @tile_manager_width(%struct._TileManager* %42)
  store i32 %call72, i32* %width, align 4
  %43 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call73 = call i32 @tile_manager_height(%struct._TileManager* %43)
  store i32 %call73, i32* %height, align 4
  %44 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %imagePR, %struct._TileManager* %44, i32 0, i32 0, i32 %45, i32 %46, i32 0)
  %has_alpha74 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 7
  %47 = load i32, i32* %has_alpha74, align 4
  %tobool75 = icmp ne i32 %47, 0
  br i1 %tobool75, label %if.then.76, label %if.else.85

if.then.76:                                       ; preds = %lor.end
  %48 = load i32, i32* %select_transparent.addr, align 4
  %tobool77 = icmp ne i32 %48, 0
  br i1 %tobool77, label %if.then.78, label %if.end.84

if.then.78:                                       ; preds = %if.then.76
  %color79 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color79, i32 0, i64 3
  %49 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %49 to i32
  %cmp80 = icmp sgt i32 %conv, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.78
  store i32 0, i32* %select_transparent.addr, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.then.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.76
  br label %if.end.86

if.else.85:                                       ; preds = %lor.end
  store i32 0, i32* %select_transparent.addr, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.end.84
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %image87 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 0
  store %struct._GimpImage* %50, %struct._GimpImage** %image87, align 8
  %51 = load i32, i32* %antialias.addr, align 4
  %antialias88 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 3
  store i32 %51, i32* %antialias88, align 4
  %52 = load i32, i32* %threshold.addr, align 4
  %threshold89 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 4
  store i32 %52, i32* %threshold89, align 4
  %53 = load i32, i32* %select_transparent.addr, align 4
  %select_transparent90 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 5
  store i32 %53, i32* %select_transparent90, align 4
  %54 = load i32, i32* %select_criterion.addr, align 4
  %select_criterion91 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %cont, i32 0, i32 6
  store i32 %54, i32* %select_criterion91, align 4
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  %call92 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %55, i32 %56, i32 %57)
  store %struct._GimpChannel* %call92, %struct._GimpChannel** %mask, align 8
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %59 = bitcast %struct._GimpChannel* %58 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_drawable_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call93)
  %60 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpDrawable*
  %call95 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %60)
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call95, i32 0, i32 0, i32 %61, i32 %62, i32 1)
  %63 = bitcast %struct.ContinuousRegionData* %cont to i8*
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (%struct.ContinuousRegionData*, %struct._PixelRegion*, %struct._PixelRegion*)* @contiguous_region_by_color to void ()*), i8* %63, i32 2, %struct._PixelRegion* %imagePR, %struct._PixelRegion* %maskPR)
  %64 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  store %struct._GimpChannel* %64, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.else.42, %if.else.36, %if.else.9
  %65 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %65
}

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #3

declare void @pixel_regions_process_parallel(void ()*, i8*, i32, ...) #3

; Function Attrs: nounwind uwtable
define internal void @contiguous_region_by_color(%struct.ContinuousRegionData* %cont, %struct._PixelRegion* %imagePR, %struct._PixelRegion* %maskPR) #0 {
entry:
  %cont.addr = alloca %struct.ContinuousRegionData*, align 8
  %imagePR.addr = alloca %struct._PixelRegion*, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %image = alloca i8*, align 8
  %mask = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i8*, align 8
  %m = alloca i8*, align 8
  %rgb = alloca [4 x i8], align 1
  store %struct.ContinuousRegionData* %cont, %struct.ContinuousRegionData** %cont.addr, align 8
  store %struct._PixelRegion* %imagePR, %struct._PixelRegion** %imagePR.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %imagePR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %image, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %mask, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %4 = load i32, i32* %y, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %imagePR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %image, align 8
  store i8* %7, i8** %i, align 8
  %8 = load i8*, i8** %mask, align 8
  store i8* %8, i8** %m, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %imagePR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %12 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %image5 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %12, i32 0, i32 0
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %14 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %type = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %14, i32 0, i32 1
  %15 = load i32, i32* %type, align 4
  %16 = load i8*, i8** %i, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %13, i32 %15, i8* %16, i8* %arraydecay)
  %17 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %color = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %17, i32 0, i32 8
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i32 0
  %18 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %antialias = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %18, i32 0, i32 3
  %19 = load i32, i32* %antialias, align 4
  %20 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %threshold = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %20, i32 0, i32 4
  %21 = load i32, i32* %threshold, align 4
  %22 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %has_alpha = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %22, i32 0, i32 7
  %23 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %23, 0
  %cond = select i1 %tobool, i32 4, i32 3
  %24 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %has_alpha8 = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %24, i32 0, i32 7
  %25 = load i32, i32* %has_alpha8, align 4
  %26 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %select_transparent = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %26, i32 0, i32 5
  %27 = load i32, i32* %select_transparent, align 4
  %28 = load %struct.ContinuousRegionData*, %struct.ContinuousRegionData** %cont.addr, align 8
  %select_criterion = getelementptr inbounds %struct.ContinuousRegionData, %struct.ContinuousRegionData* %28, i32 0, i32 6
  %29 = load i32, i32* %select_criterion, align 4
  %call = call i32 @pixel_difference(i8* %arraydecay6, i8* %arraydecay7, i32 %19, i32 %21, i32 %cond, i32 %25, i32 %27, i32 %29)
  %conv = trunc i32 %call to i8
  %30 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  store i8 %conv, i8* %30, align 1
  %31 = load %struct._PixelRegion*, %struct._PixelRegion** %imagePR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %31, i32 0, i32 10
  %32 = load i32, i32* %bytes, align 4
  %33 = load i8*, i8** %i, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %34 = load i32, i32* %x, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %imagePR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 5
  %36 = load i32, i32* %rowstride, align 4
  %37 = load i8*, i8** %image, align 8
  %idx.ext9 = sext i32 %36 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %37, i64 %idx.ext9
  store i8* %add.ptr10, i8** %image, align 8
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %rowstride11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 5
  %39 = load i32, i32* %rowstride11, align 4
  %40 = load i8*, i8** %mask, align 8
  %idx.ext12 = sext i32 %39 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %40, i64 %idx.ext12
  store i8* %add.ptr13, i8** %mask, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %41 = load i32, i32* %y, align 4
  %inc15 = add nsw i32 %41, 1
  store i32 %inc15, i32* %y, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pixel_difference(i8* %col1, i8* %col2, i32 %antialias, i32 %threshold, i32 %bytes, i32 %has_alpha, i32 %select_transparent, i32 %select_criterion) #0 {
entry:
  %retval = alloca i32, align 4
  %col1.addr = alloca i8*, align 8
  %col2.addr = alloca i8*, align 8
  %antialias.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %max = alloca i32, align 4
  %diff = alloca i32, align 4
  %b = alloca i32, align 4
  %av0 = alloca i32, align 4
  %av1 = alloca i32, align 4
  %av2 = alloca i32, align 4
  %bv0 = alloca i32, align 4
  %bv1 = alloca i32, align 4
  %bv2 = alloca i32, align 4
  %dist1 = alloca i32, align 4
  %dist2 = alloca i32, align 4
  %dist3 = alloca i32, align 4
  %aa = alloca float, align 4
  store i8* %col1, i8** %col1.addr, align 8
  store i8* %col2, i8** %col2.addr, align 8
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 0, i32* %max, align 4
  %0 = load i32, i32* %select_transparent.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %has_alpha.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8*, i8** %col2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %5 = load i32, i32* %select_transparent.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %if.end
  %6 = load i32, i32* %has_alpha.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true.5
  %7 = load i32, i32* %bytes.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %8 = load i8*, i8** %col1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %idxprom9
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load i32, i32* %bytes.addr, align 4
  %sub12 = sub nsw i32 %10, 1
  %idxprom13 = sext i32 %sub12 to i64
  %11 = load i8*, i8** %col2.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %idxprom13
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %sub16 = sub nsw i32 %conv11, %conv15
  %call = call i32 @abs(i32 %sub16) #4
  store i32 %call, i32* %max, align 4
  br label %if.end.111

if.else:                                          ; preds = %land.lhs.true.5, %if.end
  %13 = load i32, i32* %has_alpha.addr, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  %14 = load i32, i32* %bytes.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %bytes.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else
  %15 = load i32, i32* %select_criterion.addr, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.41
    i32 3, label %sw.bb.48
    i32 4, label %sw.bb.55
    i32 5, label %sw.bb.81
    i32 6, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %if.end.19
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %bytes.addr, align 4
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %b, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load i8*, i8** %col1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 %idxprom22
  %20 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %21 = load i32, i32* %b, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %col2.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %sub28 = sub nsw i32 %conv24, %conv27
  %call29 = call i32 @abs(i32 %sub28) #4
  store i32 %call29, i32* %diff, align 4
  %24 = load i32, i32* %diff, align 4
  %25 = load i32, i32* %max, align 4
  %cmp30 = icmp sgt i32 %24, %25
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  %26 = load i32, i32* %diff, align 4
  store i32 %26, i32* %max, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %27 = load i32, i32* %b, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.19
  %28 = load i8*, i8** %col1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %29 to i32
  %30 = load i8*, i8** %col2.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %31 to i32
  %sub39 = sub nsw i32 %conv36, %conv38
  %call40 = call i32 @abs(i32 %sub39) #4
  store i32 %call40, i32* %max, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.19
  %32 = load i8*, i8** %col1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %33 to i32
  %34 = load i8*, i8** %col2.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %35 to i32
  %sub46 = sub nsw i32 %conv43, %conv45
  %call47 = call i32 @abs(i32 %sub46) #4
  store i32 %call47, i32* %max, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.19
  %36 = load i8*, i8** %col1.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i8*, i8** %col2.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %39 to i32
  %sub53 = sub nsw i32 %conv50, %conv52
  %call54 = call i32 @abs(i32 %sub53) #4
  store i32 %call54, i32* %max, align 4
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.19
  %40 = load i8*, i8** %col1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  store i32 %conv57, i32* %av0, align 4
  %42 = load i8*, i8** %col1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %43 to i32
  store i32 %conv59, i32* %av1, align 4
  %44 = load i8*, i8** %col1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %45 to i32
  store i32 %conv61, i32* %av2, align 4
  %46 = load i8*, i8** %col2.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %47 to i32
  store i32 %conv63, i32* %bv0, align 4
  %48 = load i8*, i8** %col2.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %49 to i32
  store i32 %conv65, i32* %bv1, align 4
  %50 = load i8*, i8** %col2.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %51 to i32
  store i32 %conv67, i32* %bv2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %av0, i32* %av1, i32* %av2)
  call void @gimp_rgb_to_hsv_int(i32* %bv0, i32* %bv1, i32* %bv2)
  %52 = load i32, i32* %av0, align 4
  %53 = load i32, i32* %bv0, align 4
  %sub68 = sub nsw i32 %52, %53
  %call69 = call i32 @abs(i32 %sub68) #4
  store i32 %call69, i32* %dist1, align 4
  %54 = load i32, i32* %av0, align 4
  %sub70 = sub nsw i32 %54, 360
  %55 = load i32, i32* %bv0, align 4
  %sub71 = sub nsw i32 %sub70, %55
  %call72 = call i32 @abs(i32 %sub71) #4
  store i32 %call72, i32* %dist2, align 4
  %56 = load i32, i32* %av0, align 4
  %57 = load i32, i32* %bv0, align 4
  %sub73 = sub nsw i32 %56, %57
  %add = add nsw i32 %sub73, 360
  %call74 = call i32 @abs(i32 %add) #4
  store i32 %call74, i32* %dist3, align 4
  %58 = load i32, i32* %dist1, align 4
  %59 = load i32, i32* %dist2, align 4
  %cmp75 = icmp slt i32 %58, %59
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.55
  %60 = load i32, i32* %dist1, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.55
  %61 = load i32, i32* %dist2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %60, %cond.true ], [ %61, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %62 = load i32, i32* %max, align 4
  %63 = load i32, i32* %dist3, align 4
  %cmp77 = icmp sgt i32 %62, %63
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.end
  %64 = load i32, i32* %dist3, align 4
  store i32 %64, i32* %max, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %cond.end
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.19
  %65 = load i8*, i8** %col1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %66 to i32
  store i32 %conv83, i32* %av0, align 4
  %67 = load i8*, i8** %col1.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %68 to i32
  store i32 %conv85, i32* %av1, align 4
  %69 = load i8*, i8** %col1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %69, i64 2
  %70 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %70 to i32
  store i32 %conv87, i32* %av2, align 4
  %71 = load i8*, i8** %col2.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %72 to i32
  store i32 %conv89, i32* %bv0, align 4
  %73 = load i8*, i8** %col2.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %74 to i32
  store i32 %conv91, i32* %bv1, align 4
  %75 = load i8*, i8** %col2.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %76 to i32
  store i32 %conv93, i32* %bv2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %av0, i32* %av1, i32* %av2)
  call void @gimp_rgb_to_hsv_int(i32* %bv0, i32* %bv1, i32* %bv2)
  %77 = load i32, i32* %av1, align 4
  %78 = load i32, i32* %bv1, align 4
  %sub94 = sub nsw i32 %77, %78
  %call95 = call i32 @abs(i32 %sub94) #4
  store i32 %call95, i32* %max, align 4
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.end.19
  %79 = load i8*, i8** %col1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %80 to i32
  store i32 %conv98, i32* %av0, align 4
  %81 = load i8*, i8** %col1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %82 to i32
  store i32 %conv100, i32* %av1, align 4
  %83 = load i8*, i8** %col1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %83, i64 2
  %84 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %84 to i32
  store i32 %conv102, i32* %av2, align 4
  %85 = load i8*, i8** %col2.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %86 to i32
  store i32 %conv104, i32* %bv0, align 4
  %87 = load i8*, i8** %col2.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %88 to i32
  store i32 %conv106, i32* %bv1, align 4
  %89 = load i8*, i8** %col2.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %89, i64 2
  %90 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %90 to i32
  store i32 %conv108, i32* %bv2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %av0, i32* %av1, i32* %av2)
  call void @gimp_rgb_to_hsv_int(i32* %bv0, i32* %bv1, i32* %bv2)
  %91 = load i32, i32* %av2, align 4
  %92 = load i32, i32* %bv2, align 4
  %sub109 = sub nsw i32 %91, %92
  %call110 = call i32 @abs(i32 %sub109) #4
  store i32 %call110, i32* %max, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.19, %sw.bb.96, %sw.bb.81, %if.end.80, %sw.bb.48, %sw.bb.41, %sw.bb.34, %for.end
  br label %if.end.111

if.end.111:                                       ; preds = %sw.epilog, %if.then.7
  %93 = load i32, i32* %antialias.addr, align 4
  %tobool112 = icmp ne i32 %93, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.else.134

land.lhs.true.113:                                ; preds = %if.end.111
  %94 = load i32, i32* %threshold.addr, align 4
  %cmp114 = icmp sgt i32 %94, 0
  br i1 %cmp114, label %if.then.116, label %if.else.134

if.then.116:                                      ; preds = %land.lhs.true.113
  %95 = load i32, i32* %max, align 4
  %conv117 = sitofp i32 %95 to float
  %96 = load i32, i32* %threshold.addr, align 4
  %conv118 = sitofp i32 %96 to float
  %div = fdiv float %conv117, %conv118
  %conv119 = fpext float %div to double
  %sub120 = fsub double 1.500000e+00, %conv119
  %conv121 = fptrunc double %sub120 to float
  store float %conv121, float* %aa, align 4
  %97 = load float, float* %aa, align 4
  %conv122 = fpext float %97 to double
  %cmp123 = fcmp ole double %conv122, 0.000000e+00
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.then.116
  store i32 0, i32* %retval
  br label %return

if.else.126:                                      ; preds = %if.then.116
  %98 = load float, float* %aa, align 4
  %conv127 = fpext float %98 to double
  %cmp128 = fcmp olt double %conv127, 5.000000e-01
  br i1 %cmp128, label %if.then.130, label %if.else.133

if.then.130:                                      ; preds = %if.else.126
  %99 = load float, float* %aa, align 4
  %mul = fmul float %99, 5.120000e+02
  %conv131 = fptoui float %mul to i8
  %conv132 = zext i8 %conv131 to i32
  store i32 %conv132, i32* %retval
  br label %return

if.else.133:                                      ; preds = %if.else.126
  store i32 255, i32* %retval
  br label %return

if.else.134:                                      ; preds = %land.lhs.true.113, %if.end.111
  %100 = load i32, i32* %max, align 4
  %101 = load i32, i32* %threshold.addr, align 4
  %cmp135 = icmp sgt i32 %100, %101
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.else.134
  store i32 0, i32* %retval
  br label %return

if.else.138:                                      ; preds = %if.else.134
  store i32 255, i32* %retval
  br label %return

return:                                           ; preds = %if.else.138, %if.then.137, %if.else.133, %if.then.130, %if.then.125, %if.then
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #3

declare %struct._GQueue* @g_queue_new() #3

declare void @g_queue_push_tail(%struct._GQueue*, i8*) #3

declare i8* @g_queue_pop_head(%struct._GQueue*) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_contiguous_segment(%struct._GimpImage* %image, i8* %col, %struct._PixelRegion* %src, %struct._PixelRegion* %mask, i32 %width, i32 %bytes, i32 %src_type, i32 %has_alpha, i32 %select_transparent, i32 %select_criterion, i32 %antialias, i32 %threshold, i32 %initial, i32* %start, i32* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %col.addr = alloca i8*, align 8
  %src.addr = alloca %struct._PixelRegion*, align 8
  %mask.addr = alloca %struct._PixelRegion*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %src_type.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %initial.addr = alloca i32, align 4
  %start.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %m = alloca i8*, align 8
  %s_color = alloca [4 x i8], align 1
  %diff = alloca i8, align 1
  %col_bytes = alloca i32, align 4
  %s_tile = alloca %struct._Tile*, align 8
  %m_tile = alloca %struct._Tile*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store %struct._PixelRegion* %src, %struct._PixelRegion** %src.addr, align 8
  store %struct._PixelRegion* %mask, %struct._PixelRegion** %mask.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %src_type, i32* %src_type.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %initial, i32* %initial.addr, align 4
  store i32* %start, i32** %start.addr, align 8
  store i32* %end, i32** %end.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  store i32 %0, i32* %col_bytes, align 4
  store %struct._Tile* null, %struct._Tile** %s_tile, align 8
  store %struct._Tile* null, %struct._Tile** %m_tile, align 8
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 1
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tiles1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles1, align 8
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 6
  %6 = load i32, i32* %x, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 7
  %8 = load i32, i32* %y, align 4
  call void @ref_tiles(%struct._TileManager* %2, %struct._TileManager* %4, %struct._Tile** %s_tile, %struct._Tile** %m_tile, i32 %6, i32 %8, i8** %s, i8** %m)
  %9 = load i32, i32* %src_type.addr, align 4
  %cmp = icmp eq i32 %9, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %src_type.addr, align 4
  %cmp2 = icmp eq i32 %10, 5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 4, i32 3
  store i32 %cond, i32* %col_bytes, align 4
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %13 = load i32, i32* %src_type.addr, align 4
  %14 = load i8*, i8** %s, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %12, i32 %13, i8* %14, i8* %arraydecay)
  %15 = load i8*, i8** %col.addr, align 8
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  %16 = load i32, i32* %antialias.addr, align 4
  %17 = load i32, i32* %threshold.addr, align 4
  %18 = load i32, i32* %col_bytes, align 4
  %19 = load i32, i32* %has_alpha.addr, align 4
  %20 = load i32, i32* %select_transparent.addr, align 4
  %21 = load i32, i32* %select_criterion.addr, align 4
  %call = call i32 @pixel_difference(i8* %15, i8* %arraydecay3, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %diff, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i8*, i8** %col.addr, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i32, i32* %antialias.addr, align 4
  %25 = load i32, i32* %threshold.addr, align 4
  %26 = load i32, i32* %col_bytes, align 4
  %27 = load i32, i32* %has_alpha.addr, align 4
  %28 = load i32, i32* %select_transparent.addr, align 4
  %29 = load i32, i32* %select_criterion.addr, align 4
  %call4 = call i32 @pixel_difference(i8* %22, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, i8* %diff, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load i8, i8* %diff, align 1
  %tobool6 = icmp ne i8 %30, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %31 = load %struct._Tile*, %struct._Tile** %s_tile, align 8
  call void @tile_release(%struct._Tile* %31, i32 0)
  %32 = load %struct._Tile*, %struct._Tile** %m_tile, align 8
  call void @tile_release(%struct._Tile* %32, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %33 = load i8, i8* %diff, align 1
  %34 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr, i8** %m, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %bytes.addr, align 4
  %36 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %35 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.neg
  store i8* %add.ptr, i8** %s, align 8
  %37 = load i32, i32* %initial.addr, align 4
  %sub = sub nsw i32 %37, 1
  %38 = load i32*, i32** %start.addr, align 8
  store i32 %sub, i32* %38, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end.8
  %39 = load i32*, i32** %start.addr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp9 = icmp sge i32 %40, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load i8, i8* %diff, align 1
  %conv11 = zext i8 %41 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load i32*, i32** %start.addr, align 8
  %44 = load i32, i32* %43, align 4
  %add = add nsw i32 %44, 1
  %rem = srem i32 %add, 64
  %tobool13 = icmp ne i32 %rem, 0
  br i1 %tobool13, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %while.body
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %tiles15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %45, i32 0, i32 1
  %46 = load %struct._TileManager*, %struct._TileManager** %tiles15, align 8
  %47 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tiles16 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %47, i32 0, i32 1
  %48 = load %struct._TileManager*, %struct._TileManager** %tiles16, align 8
  %49 = load i32*, i32** %start.addr, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %y17 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %51, i32 0, i32 7
  %52 = load i32, i32* %y17, align 4
  call void @ref_tiles(%struct._TileManager* %46, %struct._TileManager* %48, %struct._Tile** %s_tile, %struct._Tile** %m_tile, i32 %50, i32 %52, i8** %s, i8** %m)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %while.body
  %53 = load i32, i32* %src_type.addr, align 4
  %cmp19 = icmp eq i32 %53, 4
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.18
  %54 = load i32, i32* %src_type.addr, align 4
  %cmp22 = icmp eq i32 %54, 5
  br i1 %cmp22, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end.18
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %56 = load i32, i32* %src_type.addr, align 4
  %57 = load i8*, i8** %s, align 8
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %55, i32 %56, i8* %57, i8* %arraydecay25)
  %58 = load i8*, i8** %col.addr, align 8
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  %59 = load i32, i32* %antialias.addr, align 4
  %60 = load i32, i32* %threshold.addr, align 4
  %61 = load i32, i32* %col_bytes, align 4
  %62 = load i32, i32* %has_alpha.addr, align 4
  %63 = load i32, i32* %select_transparent.addr, align 4
  %64 = load i32, i32* %select_criterion.addr, align 4
  %call27 = call i32 @pixel_difference(i8* %58, i8* %arraydecay26, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %conv28 = trunc i32 %call27 to i8
  store i8 %conv28, i8* %diff, align 1
  br label %if.end.32

if.else.29:                                       ; preds = %lor.lhs.false.21
  %65 = load i8*, i8** %col.addr, align 8
  %66 = load i8*, i8** %s, align 8
  %67 = load i32, i32* %antialias.addr, align 4
  %68 = load i32, i32* %threshold.addr, align 4
  %69 = load i32, i32* %col_bytes, align 4
  %70 = load i32, i32* %has_alpha.addr, align 4
  %71 = load i32, i32* %select_transparent.addr, align 4
  %72 = load i32, i32* %select_criterion.addr, align 4
  %call30 = call i32 @pixel_difference(i8* %65, i8* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %conv31 = trunc i32 %call30 to i8
  store i8 %conv31, i8* %diff, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.24
  %73 = load i8, i8* %diff, align 1
  %74 = load i8*, i8** %m, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr33, i8** %m, align 8
  store i8 %73, i8* %74, align 1
  %tobool34 = icmp ne i8 %73, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %75 = load i32, i32* %bytes.addr, align 4
  %76 = load i8*, i8** %s, align 8
  %idx.ext36 = sext i32 %75 to i64
  %idx.neg37 = sub i64 0, %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, i8* %76, i64 %idx.neg37
  store i8* %add.ptr38, i8** %s, align 8
  %77 = load i32*, i32** %start.addr, align 8
  %78 = load i32, i32* %77, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %77, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8 1, i8* %diff, align 1
  %79 = load i32, i32* %initial.addr, align 4
  %add40 = add nsw i32 %79, 1
  %80 = load i32*, i32** %end.addr, align 8
  store i32 %add40, i32* %80, align 4
  %81 = load i32*, i32** %end.addr, align 8
  %82 = load i32, i32* %81, align 4
  %rem41 = srem i32 %82, 64
  %tobool42 = icmp ne i32 %rem41, 0
  br i1 %tobool42, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %while.end
  %83 = load i32*, i32** %end.addr, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %width.addr, align 4
  %cmp43 = icmp slt i32 %84, %85
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %land.lhs.true
  %86 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %tiles46 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %86, i32 0, i32 1
  %87 = load %struct._TileManager*, %struct._TileManager** %tiles46, align 8
  %88 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tiles47 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %88, i32 0, i32 1
  %89 = load %struct._TileManager*, %struct._TileManager** %tiles47, align 8
  %90 = load i32*, i32** %end.addr, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %y48 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %92, i32 0, i32 7
  %93 = load i32, i32* %y48, align 4
  call void @ref_tiles(%struct._TileManager* %87, %struct._TileManager* %89, %struct._Tile** %s_tile, %struct._Tile** %m_tile, i32 %91, i32 %93, i8** %s, i8** %m)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %land.lhs.true, %while.end
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.84, %if.end.49
  %94 = load i32*, i32** %end.addr, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %width.addr, align 4
  %cmp51 = icmp slt i32 %95, %96
  br i1 %cmp51, label %land.rhs.53, label %land.end.56

land.rhs.53:                                      ; preds = %while.cond.50
  %97 = load i8, i8* %diff, align 1
  %conv54 = zext i8 %97 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br label %land.end.56

land.end.56:                                      ; preds = %land.rhs.53, %while.cond.50
  %98 = phi i1 [ false, %while.cond.50 ], [ %tobool55, %land.rhs.53 ]
  br i1 %98, label %while.body.57, label %while.end.85

while.body.57:                                    ; preds = %land.end.56
  %99 = load i32*, i32** %end.addr, align 8
  %100 = load i32, i32* %99, align 4
  %rem58 = srem i32 %100, 64
  %tobool59 = icmp ne i32 %rem58, 0
  br i1 %tobool59, label %if.end.64, label %if.then.60

if.then.60:                                       ; preds = %while.body.57
  %101 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %tiles61 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %101, i32 0, i32 1
  %102 = load %struct._TileManager*, %struct._TileManager** %tiles61, align 8
  %103 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tiles62 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %103, i32 0, i32 1
  %104 = load %struct._TileManager*, %struct._TileManager** %tiles62, align 8
  %105 = load i32*, i32** %end.addr, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct._PixelRegion*, %struct._PixelRegion** %src.addr, align 8
  %y63 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %107, i32 0, i32 7
  %108 = load i32, i32* %y63, align 4
  call void @ref_tiles(%struct._TileManager* %102, %struct._TileManager* %104, %struct._Tile** %s_tile, %struct._Tile** %m_tile, i32 %106, i32 %108, i8** %s, i8** %m)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %while.body.57
  %109 = load i32, i32* %src_type.addr, align 4
  %cmp65 = icmp eq i32 %109, 4
  br i1 %cmp65, label %if.then.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.64
  %110 = load i32, i32* %src_type.addr, align 4
  %cmp68 = icmp eq i32 %110, 5
  br i1 %cmp68, label %if.then.70, label %if.else.75

if.then.70:                                       ; preds = %lor.lhs.false.67, %if.end.64
  %111 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %112 = load i32, i32* %src_type.addr, align 4
  %113 = load i8*, i8** %s, align 8
  %arraydecay71 = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %111, i32 %112, i8* %113, i8* %arraydecay71)
  %114 = load i8*, i8** %col.addr, align 8
  %arraydecay72 = getelementptr inbounds [4 x i8], [4 x i8]* %s_color, i32 0, i32 0
  %115 = load i32, i32* %antialias.addr, align 4
  %116 = load i32, i32* %threshold.addr, align 4
  %117 = load i32, i32* %col_bytes, align 4
  %118 = load i32, i32* %has_alpha.addr, align 4
  %119 = load i32, i32* %select_transparent.addr, align 4
  %120 = load i32, i32* %select_criterion.addr, align 4
  %call73 = call i32 @pixel_difference(i8* %114, i8* %arraydecay72, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %conv74 = trunc i32 %call73 to i8
  store i8 %conv74, i8* %diff, align 1
  br label %if.end.78

if.else.75:                                       ; preds = %lor.lhs.false.67
  %121 = load i8*, i8** %col.addr, align 8
  %122 = load i8*, i8** %s, align 8
  %123 = load i32, i32* %antialias.addr, align 4
  %124 = load i32, i32* %threshold.addr, align 4
  %125 = load i32, i32* %col_bytes, align 4
  %126 = load i32, i32* %has_alpha.addr, align 4
  %127 = load i32, i32* %select_transparent.addr, align 4
  %128 = load i32, i32* %select_criterion.addr, align 4
  %call76 = call i32 @pixel_difference(i8* %121, i8* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %conv77 = trunc i32 %call76 to i8
  store i8 %conv77, i8* %diff, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.70
  %129 = load i8, i8* %diff, align 1
  %130 = load i8*, i8** %m, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr79, i8** %m, align 8
  store i8 %129, i8* %130, align 1
  %tobool80 = icmp ne i8 %129, 0
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.78
  %131 = load i32, i32* %bytes.addr, align 4
  %132 = load i8*, i8** %s, align 8
  %idx.ext82 = sext i32 %131 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %132, i64 %idx.ext82
  store i8* %add.ptr83, i8** %s, align 8
  %133 = load i32*, i32** %end.addr, align 8
  %134 = load i32, i32* %133, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %133, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.78
  br label %while.cond.50

while.end.85:                                     ; preds = %land.end.56
  %135 = load %struct._Tile*, %struct._Tile** %s_tile, align 8
  call void @tile_release(%struct._Tile* %135, i32 0)
  %136 = load %struct._Tile*, %struct._Tile** %m_tile, align 8
  call void @tile_release(%struct._Tile* %136, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.85, %if.then.7
  %137 = load i32, i32* %retval
  ret i32 %137
}

declare i32 @g_queue_is_empty(%struct._GQueue*) #3

declare void @g_queue_free(%struct._GQueue*) #3

; Function Attrs: nounwind uwtable
define internal void @ref_tiles(%struct._TileManager* %src, %struct._TileManager* %mask, %struct._Tile** %s_tile, %struct._Tile** %m_tile, i32 %x, i32 %y, i8** %s, i8** %m) #0 {
entry:
  %src.addr = alloca %struct._TileManager*, align 8
  %mask.addr = alloca %struct._TileManager*, align 8
  %s_tile.addr = alloca %struct._Tile**, align 8
  %m_tile.addr = alloca %struct._Tile**, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %s.addr = alloca i8**, align 8
  %m.addr = alloca i8**, align 8
  store %struct._TileManager* %src, %struct._TileManager** %src.addr, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store %struct._Tile** %s_tile, %struct._Tile*** %s_tile.addr, align 8
  store %struct._Tile** %m_tile, %struct._Tile*** %m_tile.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8** %s, i8*** %s.addr, align 8
  store i8** %m, i8*** %m.addr, align 8
  %0 = load %struct._Tile**, %struct._Tile*** %s_tile.addr, align 8
  %1 = load %struct._Tile*, %struct._Tile** %0, align 8
  %cmp = icmp ne %struct._Tile* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Tile**, %struct._Tile*** %s_tile.addr, align 8
  %3 = load %struct._Tile*, %struct._Tile** %2, align 8
  call void @tile_release(%struct._Tile* %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._Tile**, %struct._Tile*** %m_tile.addr, align 8
  %5 = load %struct._Tile*, %struct._Tile** %4, align 8
  %cmp1 = icmp ne %struct._Tile* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._Tile**, %struct._Tile*** %m_tile.addr, align 8
  %7 = load %struct._Tile*, %struct._Tile** %6, align 8
  call void @tile_release(%struct._Tile* %7, i32 1)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._TileManager*, %struct._TileManager** %src.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %8, i32 %9, i32 %10, i32 1, i32 0)
  %11 = load %struct._Tile**, %struct._Tile*** %s_tile.addr, align 8
  store %struct._Tile* %call, %struct._Tile** %11, align 8
  %12 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %call4 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %12, i32 %13, i32 %14, i32 1, i32 1)
  %15 = load %struct._Tile**, %struct._Tile*** %m_tile.addr, align 8
  store %struct._Tile* %call4, %struct._Tile** %15, align 8
  %16 = load %struct._Tile**, %struct._Tile*** %s_tile.addr, align 8
  %17 = load %struct._Tile*, %struct._Tile** %16, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %call5 = call i8* @tile_data_pointer(%struct._Tile* %17, i32 %18, i32 %19)
  %20 = load i8**, i8*** %s.addr, align 8
  store i8* %call5, i8** %20, align 8
  %21 = load %struct._Tile**, %struct._Tile*** %m_tile.addr, align 8
  %22 = load %struct._Tile*, %struct._Tile** %21, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call6 = call i8* @tile_data_pointer(%struct._Tile* %22, i32 %23, i32 %24)
  %25 = load i8**, i8*** %m.addr, align 8
  store i8* %call6, i8** %25, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
