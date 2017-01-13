; ModuleID = './app/core/gimpdrawable-transform.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._TileManager = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpProgress = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpPickable = type opaque
%struct._GimpLayerMask = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_transform_tiles_affine = private unnamed_addr constant [37 x i8] c"gimp_drawable_transform_tiles_affine\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"orig_tiles != NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"matrix != NULL\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"new_offset_x != NULL\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"new_offset_y != NULL\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@__func__.gimp_drawable_transform_tiles_flip = private unnamed_addr constant [35 x i8] c"gimp_drawable_transform_tiles_flip\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"gimpdrawable-transform.c\00", align 1
@__func__.gimp_drawable_transform_tiles_rotate = private unnamed_addr constant [37 x i8] c"gimp_drawable_transform_tiles_rotate\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"new_height == orig_width\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"new_width == orig_width\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"new_width == orig_height\00", align 1
@__func__.gimp_drawable_transform_affine = private unnamed_addr constant [31 x i8] c"gimp_drawable_transform_affine\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"undo-type\04Transform\00", align 1
@__func__.gimp_drawable_transform_flip = private unnamed_addr constant [29 x i8] c"gimp_drawable_transform_flip\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"undo-type\04Flip\00", align 1
@__func__.gimp_drawable_transform_rotate = private unnamed_addr constant [31 x i8] c"gimp_drawable_transform_rotate\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"undo-type\04Rotate\00", align 1
@__func__.gimp_drawable_transform_cut = private unnamed_addr constant [28 x i8] c"gimp_drawable_transform_cut\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"offset_x != NULL\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"offset_y != NULL\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"new_layer != NULL\00", align 1
@__func__.gimp_drawable_transform_paste = private unnamed_addr constant [30 x i8] c"gimp_drawable_transform_paste\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"undo-type\04Transform Layer\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"undo-type\04Transform Channel\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Transformation\00", align 1
@__func__.gimp_drawable_transform_rotate_point = private unnamed_addr constant [37 x i8] c"gimp_drawable_transform_rotate_point\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"new_x != NULL\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"new_y != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, i32* %new_offset_x, i32* %new_offset_y, %struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32*, align 8
  %new_offset_y.addr = alloca i32*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %m = alloca %struct._GimpMatrix3, align 8
  %inv = alloca %struct._GimpMatrix3, align 8
  %u1 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %u2 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst75 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store i32* %new_offset_x, i32** %new_offset_x.addr, align 8
  store i32* %new_offset_y, i32** %new_offset_y.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %cmp49 = icmp ne %struct._TileManager* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp55 = icmp ne %struct._GimpMatrix3* %30, null
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.54
  br label %if.end.58

if.else.57:                                       ; preds = %do.body.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.58:                                        ; preds = %if.then.56
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %31 = load i32*, i32** %new_offset_x.addr, align 8
  %cmp61 = icmp ne i32* %31, null
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.60
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.64:                                        ; preds = %if.then.62
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %32 = load i32*, i32** %new_offset_y.addr, align 8
  %cmp67 = icmp ne i32* %32, null
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.66
  br label %if.end.70

if.else.69:                                       ; preds = %do.body.66
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.68
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp73 = icmp eq %struct._GimpProgress* %33, null
  br i1 %cmp73, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.72
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %35 = bitcast %struct._GimpProgress* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst75, align 8
  %call78 = call i64 @gimp_progress_interface_get_type() #7
  store i64 %call78, i64* %__t77, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %lor.lhs.false
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type88, align 8
  %42 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %41, %42
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %44 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #8
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %45 = load i32, i32* %__r80, align 4
  store i32 %45, i32* %tmp95
  %46 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %46, 0
  br i1 %tobool96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.end.94, %do.body.72
  br label %if.end.99

if.else.98:                                       ; preds = %if.end.94
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_affine, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.99:                                        ; preds = %if.then.97
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  %47 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %48 = bitcast %struct._GimpMatrix3* %m to i8*
  %49 = bitcast %struct._GimpMatrix3* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 72, i32 8, i1 false)
  %50 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %51 = bitcast %struct._GimpMatrix3* %inv to i8*
  %52 = bitcast %struct._GimpMatrix3* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 72, i32 8, i1 false)
  %53 = load i32, i32* %direction.addr, align 4
  %cmp101 = icmp eq i32 %53, 1
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.end.100
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %inv)
  br label %if.end.104

if.else.103:                                      ; preds = %do.end.100
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %m)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.102
  %54 = load i32, i32* %orig_offset_x.addr, align 4
  store i32 %54, i32* %u1, align 4
  %55 = load i32, i32* %orig_offset_y.addr, align 4
  store i32 %55, i32* %v1, align 4
  %56 = load i32, i32* %u1, align 4
  %57 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call105 = call i32 @tile_manager_width(%struct._TileManager* %57)
  %add = add nsw i32 %56, %call105
  store i32 %add, i32* %u2, align 4
  %58 = load i32, i32* %v1, align 4
  %59 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call106 = call i32 @tile_manager_height(%struct._TileManager* %59)
  %add107 = add nsw i32 %58, %call106
  store i32 %add107, i32* %v2, align 4
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %61 = bitcast %struct._GimpDrawable* %60 to %struct._GTypeInstance*
  %g_class108 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class108, align 8
  %g_type109 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %62, i32 0, i32 0
  %63 = load i64, i64* %g_type109, align 8
  %call110 = call i64 @gimp_channel_get_type() #7
  %cmp111 = icmp eq i64 %63, %call110
  br i1 %cmp111, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %if.end.104
  %64 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call113 = call i32 @tile_manager_bpp(%struct._TileManager* %64)
  %cmp114 = icmp eq i32 %call113, 1
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.112
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %land.lhs.true.112, %if.end.104
  %65 = load i32, i32* %clip_result.addr, align 4
  %66 = load i32, i32* %u1, align 4
  %67 = load i32, i32* %v1, align 4
  %68 = load i32, i32* %u2, align 4
  %69 = load i32, i32* %v2, align 4
  call void @gimp_transform_resize_boundary(%struct._GimpMatrix3* %inv, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %70 = load i32, i32* %x2, align 4
  %71 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %70, %71
  %72 = load i32, i32* %y2, align 4
  %73 = load i32, i32* %y1, align 4
  %sub117 = sub nsw i32 %72, %73
  %74 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call118 = call i32 @tile_manager_bpp(%struct._TileManager* %74)
  %call119 = call %struct._TileManager* @tile_manager_new(i32 %sub, i32 %sub117, i32 %call118)
  store %struct._TileManager* %call119, %struct._TileManager** %new_tiles, align 8
  %75 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %76 = load i32, i32* %x2, align 4
  %77 = load i32, i32* %x1, align 4
  %sub120 = sub nsw i32 %76, %77
  %78 = load i32, i32* %y2, align 4
  %79 = load i32, i32* %y1, align 4
  %sub121 = sub nsw i32 %78, %79
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %75, i32 0, i32 0, i32 %sub120, i32 %sub121, i32 1)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %81 = bitcast %struct._GimpDrawable* %80 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_pickable_interface_get_type() #7
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call122)
  %82 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpPickable*
  %83 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %84 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %85 = load i32, i32* %orig_offset_x.addr, align 4
  %86 = load i32, i32* %orig_offset_y.addr, align 4
  %87 = load i32, i32* %x1, align 4
  %88 = load i32, i32* %y1, align 4
  %89 = load i32, i32* %x2, align 4
  %90 = load i32, i32* %y2, align 4
  %91 = load i32, i32* %interpolation_type.addr, align 4
  %92 = load i32, i32* %recursion_level.addr, align 4
  %93 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_transform_region(%struct._GimpPickable* %82, %struct._GimpContext* %83, %struct._TileManager* %84, i32 %85, i32 %86, %struct._PixelRegion* %destPR, i32 %87, i32 %88, i32 %89, i32 %90, %struct._GimpMatrix3* %inv, i32 %91, i32 %92, %struct._GimpProgress* %93)
  %94 = load i32, i32* %x1, align 4
  %95 = load i32*, i32** %new_offset_x.addr, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %y1, align 4
  %97 = load i32*, i32** %new_offset_y.addr, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %98, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.else.98, %if.else.69, %if.else.63, %if.else.57, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  %99 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %99
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #3

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

declare void @gimp_transform_resize_boundary(%struct._GimpMatrix3*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare void @gimp_transform_region(%struct._GimpPickable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, %struct._PixelRegion*, i32, i32, i32, i32, %struct._GimpMatrix3*, i32, i32, %struct._GimpProgress*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, i32 %flip_type, double %axis, i32 %clip_result, i32* %new_offset_x, i32* %new_offset_y) #0 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32*, align 8
  %new_offset_y.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %orig_x = alloca i32, align 4
  %orig_y = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %orig_bpp = alloca i32, align 4
  %new_x = alloca i32, align 4
  %new_y = alloca i32, align 4
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %bg_color = alloca [4 x i8], align 1
  %clip_x = alloca i32, align 4
  %clip_y = alloca i32, align 4
  %clip_width = alloca i32, align 4
  %clip_height = alloca i32, align 4
  %__inst92 = alloca %struct._GTypeInstance*, align 8
  %__t94 = alloca i64, align 8
  %__r97 = alloca i32, align 4
  %tmp113 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store i32* %new_offset_x, i32** %new_offset_x.addr, align 8
  store i32* %new_offset_y, i32** %new_offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_transform_tiles_flip, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_transform_tiles_flip, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_transform_tiles_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %cmp49 = icmp ne %struct._TileManager* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_transform_tiles_flip, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call54)
  %32 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call56, %struct._GimpImage** %image, align 8
  %33 = load i32, i32* %orig_offset_x.addr, align 4
  store i32 %33, i32* %orig_x, align 4
  %34 = load i32, i32* %orig_offset_y.addr, align 4
  store i32 %34, i32* %orig_y, align 4
  %35 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call57 = call i32 @tile_manager_width(%struct._TileManager* %35)
  store i32 %call57, i32* %orig_width, align 4
  %36 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call58 = call i32 @tile_manager_height(%struct._TileManager* %36)
  store i32 %call58, i32* %orig_height, align 4
  %37 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call59 = call i32 @tile_manager_bpp(%struct._TileManager* %37)
  store i32 %call59, i32* %orig_bpp, align 4
  %38 = load i32, i32* %orig_x, align 4
  store i32 %38, i32* %new_x, align 4
  %39 = load i32, i32* %orig_y, align 4
  store i32 %39, i32* %new_y, align 4
  %40 = load i32, i32* %orig_width, align 4
  store i32 %40, i32* %new_width, align 4
  %41 = load i32, i32* %orig_height, align 4
  store i32 %41, i32* %new_height, align 4
  %42 = load i32, i32* %flip_type.addr, align 4
  switch i32 %42, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.65
    i32 2, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %do.end.53
  %43 = load i32, i32* %orig_x, align 4
  %conv = sitofp i32 %43 to double
  %44 = load i32, i32* %orig_width, align 4
  %conv60 = sitofp i32 %44 to double
  %add = fadd double %conv, %conv60
  %45 = load double, double* %axis.addr, align 8
  %sub = fsub double %add, %45
  %sub61 = fsub double -0.000000e+00, %sub
  %46 = load double, double* %axis.addr, align 8
  %add62 = fadd double %sub61, %46
  %call63 = call double @rint(double %add62) #7
  %conv64 = fptosi double %call63 to i32
  store i32 %conv64, i32* %new_x, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %do.end.53
  %47 = load i32, i32* %orig_y, align 4
  %conv66 = sitofp i32 %47 to double
  %48 = load i32, i32* %orig_height, align 4
  %conv67 = sitofp i32 %48 to double
  %add68 = fadd double %conv66, %conv67
  %49 = load double, double* %axis.addr, align 8
  %sub69 = fsub double %add68, %49
  %sub70 = fsub double -0.000000e+00, %sub69
  %50 = load double, double* %axis.addr, align 8
  %add71 = fadd double %sub70, %50
  %call72 = call double @rint(double %add71) #7
  %conv73 = fptosi double %call72 to i32
  store i32 %conv73, i32* %new_y, align 4
  br label %sw.epilog

sw.bb.74:                                         ; preds = %do.end.53
  br label %do.body.75

do.body.75:                                       ; preds = %sw.bb.74
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_drawable_transform_tiles_flip, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

do.end.76:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.53, %do.end.76, %sw.bb.65, %sw.bb
  %51 = load i32, i32* %new_width, align 4
  %52 = load i32, i32* %new_height, align 4
  %53 = load i32, i32* %orig_bpp, align 4
  %call77 = call %struct._TileManager* @tile_manager_new(i32 %51, i32 %52, i32 %53)
  store %struct._TileManager* %call77, %struct._TileManager** %new_tiles, align 8
  %54 = load i32, i32* %clip_result.addr, align 4
  %tobool78 = icmp ne i32 %54, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.124

land.lhs.true.79:                                 ; preds = %sw.epilog
  %55 = load i32, i32* %new_x, align 4
  %56 = load i32, i32* %orig_x, align 4
  %cmp80 = icmp ne i32 %55, %56
  br i1 %cmp80, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.79
  %57 = load i32, i32* %new_y, align 4
  %58 = load i32, i32* %orig_y, align 4
  %cmp82 = icmp ne i32 %57, %58
  br i1 %cmp82, label %if.then.84, label %if.else.124

if.then.84:                                       ; preds = %lor.lhs.false, %land.lhs.true.79
  %59 = load i32, i32* %orig_x, align 4
  %60 = load i32*, i32** %new_offset_x.addr, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %orig_y, align 4
  %62 = load i32*, i32** %new_offset_y.addr, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call90 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %65)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %63, %struct._GimpContext* %64, i32 %call90, i8* %arraydecay)
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %67 = bitcast %struct._GimpDrawable* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst92, align 8
  %call95 = call i64 @gimp_channel_get_type() #7
  store i64 %call95, i64* %__t94, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst92, align 8
  %tobool98 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool98, label %if.else.100, label %if.then.99

if.then.99:                                       ; preds = %if.then.84
  store i32 0, i32* %__r97, align 4
  br label %if.end.112

if.else.100:                                      ; preds = %if.then.84
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst92, align 8
  %g_class101 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class101, align 8
  %tobool102 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool102, label %land.lhs.true.103, label %if.else.109

land.lhs.true.103:                                ; preds = %if.else.100
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst92, align 8
  %g_class104 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class104, align 8
  %g_type105 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type105, align 8
  %74 = load i64, i64* %__t94, align 8
  %cmp106 = icmp eq i64 %73, %74
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %land.lhs.true.103
  store i32 1, i32* %__r97, align 4
  br label %if.end.111

if.else.109:                                      ; preds = %land.lhs.true.103, %if.else.100
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst92, align 8
  %76 = load i64, i64* %__t94, align 8
  %call110 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #8
  store i32 %call110, i32* %__r97, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.99
  %77 = load i32, i32* %__r97, align 4
  store i32 %77, i32* %tmp113
  %78 = load i32, i32* %tmp113
  %tobool114 = icmp ne i32 %78, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.end.112
  %79 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %80 = load i32, i32* %new_width, align 4
  %81 = load i32, i32* %new_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %79, i32 0, i32 0, i32 %80, i32 %81, i32 1)
  %arraydecay117 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay117)
  %82 = load i32, i32* %orig_x, align 4
  %83 = load i32, i32* %orig_y, align 4
  %84 = load i32, i32* %orig_width, align 4
  %85 = load i32, i32* %orig_height, align 4
  %86 = load i32, i32* %new_x, align 4
  %87 = load i32, i32* %new_y, align 4
  %88 = load i32, i32* %new_width, align 4
  %89 = load i32, i32* %new_height, align 4
  %call118 = call i32 @gimp_rectangle_intersect(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32* %clip_x, i32* %clip_y, i32* %clip_width, i32* %clip_height)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.end.116
  %90 = load i32, i32* %clip_x, align 4
  %91 = load i32, i32* %orig_x, align 4
  %sub121 = sub nsw i32 %90, %91
  store i32 %sub121, i32* %new_x, align 4
  store i32 %sub121, i32* %orig_x, align 4
  %92 = load i32, i32* %clip_y, align 4
  %93 = load i32, i32* %orig_y, align 4
  %sub122 = sub nsw i32 %92, %93
  store i32 %sub122, i32* %new_y, align 4
  store i32 %sub122, i32* %orig_y, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.end.116
  %94 = load i32, i32* %clip_width, align 4
  store i32 %94, i32* %new_width, align 4
  store i32 %94, i32* %orig_width, align 4
  %95 = load i32, i32* %clip_height, align 4
  store i32 %95, i32* %new_height, align 4
  store i32 %95, i32* %orig_height, align 4
  br label %if.end.125

if.else.124:                                      ; preds = %lor.lhs.false, %sw.epilog
  %96 = load i32, i32* %new_x, align 4
  %97 = load i32*, i32** %new_offset_x.addr, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %new_y, align 4
  %99 = load i32*, i32** %new_offset_y.addr, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %orig_x, align 4
  store i32 0, i32* %orig_y, align 4
  store i32 0, i32* %new_x, align 4
  store i32 0, i32* %new_y, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.end.123
  %100 = load i32, i32* %new_width, align 4
  %cmp126 = icmp eq i32 %100, 0
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.132

land.lhs.true.128:                                ; preds = %if.end.125
  %101 = load i32, i32* %new_height, align 4
  %cmp129 = icmp eq i32 %101, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %land.lhs.true.128
  %102 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %102, %struct._TileManager** %retval
  br label %return

if.end.132:                                       ; preds = %land.lhs.true.128, %if.end.125
  %103 = load i32, i32* %flip_type.addr, align 4
  switch i32 %103, label %sw.epilog.153 [
    i32 0, label %sw.bb.133
    i32 1, label %sw.bb.140
    i32 2, label %sw.bb.152
  ]

sw.bb.133:                                        ; preds = %if.end.132
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.133
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %orig_width, align 4
  %cmp134 = icmp slt i32 %104, %105
  br i1 %cmp134, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %106 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %orig_x, align 4
  %add136 = add nsw i32 %107, %108
  %109 = load i32, i32* %orig_y, align 4
  %110 = load i32, i32* %orig_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %106, i32 %add136, i32 %109, i32 1, i32 %110, i32 0)
  %111 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %112 = load i32, i32* %new_x, align 4
  %113 = load i32, i32* %new_width, align 4
  %add137 = add nsw i32 %112, %113
  %114 = load i32, i32* %i, align 4
  %sub138 = sub nsw i32 %add137, %114
  %sub139 = sub nsw i32 %sub138, 1
  %115 = load i32, i32* %new_y, align 4
  %116 = load i32, i32* %new_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %111, i32 %sub139, i32 %115, i32 1, i32 %116, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %i, align 4
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.153

sw.bb.140:                                        ; preds = %if.end.132
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.149, %sw.bb.140
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %orig_height, align 4
  %cmp142 = icmp slt i32 %118, %119
  br i1 %cmp142, label %for.body.144, label %for.end.151

for.body.144:                                     ; preds = %for.cond.141
  %120 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %121 = load i32, i32* %orig_x, align 4
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %orig_y, align 4
  %add145 = add nsw i32 %122, %123
  %124 = load i32, i32* %orig_width, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %120, i32 %121, i32 %add145, i32 %124, i32 1, i32 0)
  %125 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %126 = load i32, i32* %new_x, align 4
  %127 = load i32, i32* %new_y, align 4
  %128 = load i32, i32* %new_height, align 4
  %add146 = add nsw i32 %127, %128
  %129 = load i32, i32* %i, align 4
  %sub147 = sub nsw i32 %add146, %129
  %sub148 = sub nsw i32 %sub147, 1
  %130 = load i32, i32* %new_width, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %125, i32 %126, i32 %sub148, i32 %130, i32 1, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.144
  %131 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %131, 1
  store i32 %inc150, i32* %i, align 4
  br label %for.cond.141

for.end.151:                                      ; preds = %for.cond.141
  br label %sw.epilog.153

sw.bb.152:                                        ; preds = %if.end.132
  br label %sw.epilog.153

sw.epilog.153:                                    ; preds = %if.end.132, %sw.bb.152, %for.end.151, %for.end
  %132 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %132, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %sw.epilog.153, %if.then.131, %do.body.75, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  %133 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %133
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

declare void @g_log(i8*, i32, i8*, ...) #3

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #3

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_drawable_transform_tiles_rotate(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result, i32* %new_offset_x, i32* %new_offset_y) #0 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32*, align 8
  %new_offset_y.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %buf = alloca i8*, align 8
  %orig_x = alloca i32, align 4
  %orig_y = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %orig_bpp = alloca i32, align 4
  %new_x = alloca i32, align 4
  %new_y = alloca i32, align 4
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %bg_color = alloca [4 x i8], align 1
  %clip_x = alloca i32, align 4
  %clip_y = alloca i32, align 4
  %clip_width = alloca i32, align 4
  %clip_height = alloca i32, align 4
  %__inst84 = alloca %struct._GTypeInstance*, align 8
  %__t86 = alloca i64, align 8
  %__r89 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %saved_orig_x = alloca i32, align 4
  %saved_orig_y = alloca i32, align 4
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %tmp186 = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store i32* %new_offset_x, i32** %new_offset_x.addr, align 8
  store i32* %new_offset_y, i32** %new_offset_y.addr, align 8
  store i8* null, i8** %buf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %cmp49 = icmp ne %struct._TileManager* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call54)
  %32 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call56, %struct._GimpImage** %image, align 8
  %33 = load i32, i32* %orig_offset_x.addr, align 4
  store i32 %33, i32* %orig_x, align 4
  %34 = load i32, i32* %orig_offset_y.addr, align 4
  store i32 %34, i32* %orig_y, align 4
  %35 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call57 = call i32 @tile_manager_width(%struct._TileManager* %35)
  store i32 %call57, i32* %orig_width, align 4
  %36 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call58 = call i32 @tile_manager_height(%struct._TileManager* %36)
  store i32 %call58, i32* %orig_height, align 4
  %37 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call59 = call i32 @tile_manager_bpp(%struct._TileManager* %37)
  store i32 %call59, i32* %orig_bpp, align 4
  %38 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %38, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.60
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %do.end.53
  %39 = load i32, i32* %orig_x, align 4
  %40 = load i32, i32* %orig_y, align 4
  %41 = load i32, i32* %orig_height, align 4
  %add = add nsw i32 %40, %41
  %42 = load i32, i32* %rotate_type.addr, align 4
  %43 = load double, double* %center_x.addr, align 8
  %44 = load double, double* %center_y.addr, align 8
  call void @gimp_drawable_transform_rotate_point(i32 %39, i32 %add, i32 %42, double %43, double %44, i32* %new_x, i32* %new_y)
  %45 = load i32, i32* %orig_height, align 4
  store i32 %45, i32* %new_width, align 4
  %46 = load i32, i32* %orig_width, align 4
  store i32 %46, i32* %new_height, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %do.end.53
  %47 = load i32, i32* %orig_x, align 4
  %48 = load i32, i32* %orig_width, align 4
  %add61 = add nsw i32 %47, %48
  %49 = load i32, i32* %orig_y, align 4
  %50 = load i32, i32* %orig_height, align 4
  %add62 = add nsw i32 %49, %50
  %51 = load i32, i32* %rotate_type.addr, align 4
  %52 = load double, double* %center_x.addr, align 8
  %53 = load double, double* %center_y.addr, align 8
  call void @gimp_drawable_transform_rotate_point(i32 %add61, i32 %add62, i32 %51, double %52, double %53, i32* %new_x, i32* %new_y)
  %54 = load i32, i32* %orig_width, align 4
  store i32 %54, i32* %new_width, align 4
  %55 = load i32, i32* %orig_height, align 4
  store i32 %55, i32* %new_height, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %do.end.53
  %56 = load i32, i32* %orig_x, align 4
  %57 = load i32, i32* %orig_width, align 4
  %add64 = add nsw i32 %56, %57
  %58 = load i32, i32* %orig_y, align 4
  %59 = load i32, i32* %rotate_type.addr, align 4
  %60 = load double, double* %center_x.addr, align 8
  %61 = load double, double* %center_y.addr, align 8
  call void @gimp_drawable_transform_rotate_point(i32 %add64, i32 %58, i32 %59, double %60, double %61, i32* %new_x, i32* %new_y)
  %62 = load i32, i32* %orig_height, align 4
  store i32 %62, i32* %new_width, align 4
  %63 = load i32, i32* %orig_width, align 4
  store i32 %63, i32* %new_height, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.53
  br label %do.body.65

do.body.65:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 396, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

do.end.66:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.66, %sw.bb.63, %sw.bb.60, %sw.bb
  %64 = load i32, i32* %clip_result.addr, align 4
  %tobool67 = icmp ne i32 %64, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.129

land.lhs.true.68:                                 ; preds = %sw.epilog
  %65 = load i32, i32* %new_x, align 4
  %66 = load i32, i32* %orig_x, align 4
  %cmp69 = icmp ne i32 %65, %66
  br i1 %cmp69, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.68
  %67 = load i32, i32* %new_y, align 4
  %68 = load i32, i32* %orig_y, align 4
  %cmp70 = icmp ne i32 %67, %68
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %69 = load i32, i32* %new_width, align 4
  %70 = load i32, i32* %orig_width, align 4
  %cmp72 = icmp ne i32 %69, %70
  br i1 %cmp72, label %if.then.75, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.71
  %71 = load i32, i32* %new_height, align 4
  %72 = load i32, i32* %orig_height, align 4
  %cmp74 = icmp ne i32 %71, %72
  br i1 %cmp74, label %if.then.75, label %if.else.129

if.then.75:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.71, %lor.lhs.false, %land.lhs.true.68
  %73 = load i32, i32* %orig_width, align 4
  %74 = load i32, i32* %orig_height, align 4
  %75 = load i32, i32* %orig_bpp, align 4
  %call81 = call %struct._TileManager* @tile_manager_new(i32 %73, i32 %74, i32 %75)
  store %struct._TileManager* %call81, %struct._TileManager** %new_tiles, align 8
  %76 = load i32, i32* %orig_x, align 4
  %77 = load i32*, i32** %new_offset_x.addr, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %orig_y, align 4
  %79 = load i32*, i32** %new_offset_y.addr, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call82 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %82)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %80, %struct._GimpContext* %81, i32 %call82, i8* %arraydecay)
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %84 = bitcast %struct._GimpDrawable* %83 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %84, %struct._GTypeInstance** %__inst84, align 8
  %call87 = call i64 @gimp_channel_get_type() #7
  store i64 %call87, i64* %__t86, align 8
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %tobool90 = icmp ne %struct._GTypeInstance* %85, null
  br i1 %tobool90, label %if.else.92, label %if.then.91

if.then.91:                                       ; preds = %if.then.75
  store i32 0, i32* %__r89, align 4
  br label %if.end.103

if.else.92:                                       ; preds = %if.then.75
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %g_class93 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class93, align 8
  %tobool94 = icmp ne %struct._GTypeClass* %87, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.100

land.lhs.true.95:                                 ; preds = %if.else.92
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %g_class96 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class96, align 8
  %g_type97 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %89, i32 0, i32 0
  %90 = load i64, i64* %g_type97, align 8
  %91 = load i64, i64* %__t86, align 8
  %cmp98 = icmp eq i64 %90, %91
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %land.lhs.true.95
  store i32 1, i32* %__r89, align 4
  br label %if.end.102

if.else.100:                                      ; preds = %land.lhs.true.95, %if.else.92
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst84, align 8
  %93 = load i64, i64* %__t86, align 8
  %call101 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %92, i64 %93) #8
  store i32 %call101, i32* %__r89, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.then.99
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.91
  %94 = load i32, i32* %__r89, align 4
  store i32 %94, i32* %tmp104
  %95 = load i32, i32* %tmp104
  %tobool105 = icmp ne i32 %95, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.103
  %96 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %97 = load i32, i32* %orig_width, align 4
  %98 = load i32, i32* %orig_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %96, i32 0, i32 0, i32 %97, i32 %98, i32 1)
  %arraydecay108 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay108)
  %99 = load i32, i32* %orig_x, align 4
  %100 = load i32, i32* %orig_y, align 4
  %101 = load i32, i32* %orig_width, align 4
  %102 = load i32, i32* %orig_height, align 4
  %103 = load i32, i32* %new_x, align 4
  %104 = load i32, i32* %new_y, align 4
  %105 = load i32, i32* %new_width, align 4
  %106 = load i32, i32* %new_height, align 4
  %call109 = call i32 @gimp_rectangle_intersect(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32* %clip_x, i32* %clip_y, i32* %clip_width, i32* %clip_height)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.127

if.then.111:                                      ; preds = %if.end.107
  %107 = load i32, i32* %orig_x, align 4
  store i32 %107, i32* %saved_orig_x, align 4
  %108 = load i32, i32* %orig_y, align 4
  store i32 %108, i32* %saved_orig_y, align 4
  %109 = load i32, i32* %clip_x, align 4
  %110 = load i32, i32* %orig_x, align 4
  %sub = sub nsw i32 %109, %110
  store i32 %sub, i32* %new_x, align 4
  %111 = load i32, i32* %clip_y, align 4
  %112 = load i32, i32* %orig_y, align 4
  %sub114 = sub nsw i32 %111, %112
  store i32 %sub114, i32* %new_y, align 4
  %113 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %113, label %sw.epilog.126 [
    i32 0, label %sw.bb.115
    i32 1, label %sw.bb.119
    i32 2, label %sw.bb.122
  ]

sw.bb.115:                                        ; preds = %if.then.111
  %114 = load i32, i32* %clip_x, align 4
  %115 = load i32, i32* %clip_width, align 4
  %add116 = add nsw i32 %114, %115
  %116 = load i32, i32* %clip_y, align 4
  %117 = load double, double* %center_x.addr, align 8
  %118 = load double, double* %center_y.addr, align 8
  call void @gimp_drawable_transform_rotate_point(i32 %add116, i32 %116, i32 2, double %117, double %118, i32* %orig_x, i32* %orig_y)
  %119 = load i32, i32* %saved_orig_x, align 4
  %120 = load i32, i32* %orig_x, align 4
  %sub117 = sub nsw i32 %120, %119
  store i32 %sub117, i32* %orig_x, align 4
  %121 = load i32, i32* %saved_orig_y, align 4
  %122 = load i32, i32* %orig_y, align 4
  %sub118 = sub nsw i32 %122, %121
  store i32 %sub118, i32* %orig_y, align 4
  %123 = load i32, i32* %clip_height, align 4
  store i32 %123, i32* %orig_width, align 4
  %124 = load i32, i32* %clip_width, align 4
  store i32 %124, i32* %orig_height, align 4
  br label %sw.epilog.126

sw.bb.119:                                        ; preds = %if.then.111
  %125 = load i32, i32* %clip_x, align 4
  %126 = load i32, i32* %orig_x, align 4
  %sub120 = sub nsw i32 %125, %126
  store i32 %sub120, i32* %orig_x, align 4
  %127 = load i32, i32* %clip_y, align 4
  %128 = load i32, i32* %orig_y, align 4
  %sub121 = sub nsw i32 %127, %128
  store i32 %sub121, i32* %orig_y, align 4
  %129 = load i32, i32* %clip_width, align 4
  store i32 %129, i32* %orig_width, align 4
  %130 = load i32, i32* %clip_height, align 4
  store i32 %130, i32* %orig_height, align 4
  br label %sw.epilog.126

sw.bb.122:                                        ; preds = %if.then.111
  %131 = load i32, i32* %clip_x, align 4
  %132 = load i32, i32* %clip_y, align 4
  %133 = load i32, i32* %clip_height, align 4
  %add123 = add nsw i32 %132, %133
  %134 = load double, double* %center_x.addr, align 8
  %135 = load double, double* %center_y.addr, align 8
  call void @gimp_drawable_transform_rotate_point(i32 %131, i32 %add123, i32 0, double %134, double %135, i32* %orig_x, i32* %orig_y)
  %136 = load i32, i32* %saved_orig_x, align 4
  %137 = load i32, i32* %orig_x, align 4
  %sub124 = sub nsw i32 %137, %136
  store i32 %sub124, i32* %orig_x, align 4
  %138 = load i32, i32* %saved_orig_y, align 4
  %139 = load i32, i32* %orig_y, align 4
  %sub125 = sub nsw i32 %139, %138
  store i32 %sub125, i32* %orig_y, align 4
  %140 = load i32, i32* %clip_height, align 4
  store i32 %140, i32* %orig_width, align 4
  %141 = load i32, i32* %clip_width, align 4
  store i32 %141, i32* %orig_height, align 4
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %if.then.111, %sw.bb.122, %sw.bb.119, %sw.bb.115
  %142 = load i32, i32* %clip_width, align 4
  store i32 %142, i32* %new_width, align 4
  %143 = load i32, i32* %clip_height, align 4
  store i32 %143, i32* %new_height, align 4
  br label %if.end.128

if.else.127:                                      ; preds = %if.end.107
  store i32 0, i32* %new_width, align 4
  store i32 0, i32* %new_height, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %sw.epilog.126
  br label %if.end.131

if.else.129:                                      ; preds = %lor.lhs.false.73, %sw.epilog
  %144 = load i32, i32* %new_width, align 4
  %145 = load i32, i32* %new_height, align 4
  %146 = load i32, i32* %orig_bpp, align 4
  %call130 = call %struct._TileManager* @tile_manager_new(i32 %144, i32 %145, i32 %146)
  store %struct._TileManager* %call130, %struct._TileManager** %new_tiles, align 8
  %147 = load i32, i32* %new_x, align 4
  %148 = load i32*, i32** %new_offset_x.addr, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %new_y, align 4
  %150 = load i32*, i32** %new_offset_y.addr, align 8
  store i32 %149, i32* %150, align 4
  store i32 0, i32* %orig_x, align 4
  store i32 0, i32* %orig_y, align 4
  store i32 0, i32* %new_x, align 4
  store i32 0, i32* %new_y, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.end.128
  %151 = load i32, i32* %new_width, align 4
  %cmp132 = icmp slt i32 %151, 1
  br i1 %cmp132, label %if.then.135, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.131
  %152 = load i32, i32* %new_height, align 4
  %cmp134 = icmp slt i32 %152, 1
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %lor.lhs.false.133, %if.end.131
  %153 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %153, %struct._TileManager** %retval
  br label %return

if.end.136:                                       ; preds = %lor.lhs.false.133
  %154 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %155 = load i32, i32* %orig_x, align 4
  %156 = load i32, i32* %orig_y, align 4
  %157 = load i32, i32* %orig_width, align 4
  %158 = load i32, i32* %orig_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 0)
  %159 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %160 = load i32, i32* %new_x, align 4
  %161 = load i32, i32* %new_y, align 4
  %162 = load i32, i32* %new_width, align 4
  %163 = load i32, i32* %new_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 1)
  %164 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %164, label %sw.epilog.226 [
    i32 0, label %sw.bb.137
    i32 1, label %sw.bb.151
    i32 2, label %sw.bb.204
  ]

sw.bb.137:                                        ; preds = %if.end.136
  br label %do.body.138

do.body.138:                                      ; preds = %sw.bb.137
  %165 = load i32, i32* %new_height, align 4
  %166 = load i32, i32* %orig_width, align 4
  %cmp139 = icmp eq i32 %165, %166
  br i1 %cmp139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.138
  br label %if.end.142

if.else.141:                                      ; preds = %do.body.138
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #9
  unreachable

if.end.142:                                       ; preds = %if.then.140
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  %167 = load i32, i32* %new_height, align 4
  %168 = load i32, i32* %orig_bpp, align 4
  %mul = mul nsw i32 %167, %168
  %conv = sext i32 %mul to i64
  %call144 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call144, i8** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.143
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %orig_height, align 4
  %cmp145 = icmp slt i32 %169, %170
  br i1 %cmp145, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %171 = load i32, i32* %orig_x, align 4
  %172 = load i32, i32* %orig_y, align 4
  %173 = load i32, i32* %orig_height, align 4
  %add147 = add nsw i32 %172, %173
  %sub148 = sub nsw i32 %add147, 1
  %174 = load i32, i32* %i, align 4
  %sub149 = sub nsw i32 %sub148, %174
  %175 = load i32, i32* %orig_width, align 4
  %176 = load i8*, i8** %buf, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %srcPR, i32 %171, i32 %sub149, i32 %175, i8* %176, i32 1)
  %177 = load i32, i32* %new_x, align 4
  %178 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %177, %178
  %179 = load i32, i32* %new_y, align 4
  %180 = load i32, i32* %new_height, align 4
  %181 = load i8*, i8** %buf, align 8
  call void @pixel_region_set_col(%struct._PixelRegion* %destPR, i32 %add150, i32 %179, i32 %180, i8* %181)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %182 = load i32, i32* %i, align 4
  %inc = add nsw i32 %182, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.226

sw.bb.151:                                        ; preds = %if.end.136
  br label %do.body.152

do.body.152:                                      ; preds = %sw.bb.151
  %183 = load i32, i32* %new_width, align 4
  %184 = load i32, i32* %orig_width, align 4
  %cmp153 = icmp eq i32 %183, %184
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.152
  br label %if.end.157

if.else.156:                                      ; preds = %do.body.152
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 518, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #9
  unreachable

if.end.157:                                       ; preds = %if.then.155
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  %185 = load i32, i32* %new_width, align 4
  %186 = load i32, i32* %orig_bpp, align 4
  %mul159 = mul nsw i32 %185, %186
  %conv160 = sext i32 %mul159 to i64
  %call161 = call noalias i8* @g_malloc_n(i64 %conv160, i64 1)
  store i8* %call161, i8** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.201, %do.end.158
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* %orig_height, align 4
  %cmp163 = icmp slt i32 %187, %188
  br i1 %cmp163, label %for.body.165, label %for.end.203

for.body.165:                                     ; preds = %for.cond.162
  %189 = load i32, i32* %orig_x, align 4
  %190 = load i32, i32* %orig_y, align 4
  %191 = load i32, i32* %orig_height, align 4
  %add166 = add nsw i32 %190, %191
  %sub167 = sub nsw i32 %add166, 1
  %192 = load i32, i32* %i, align 4
  %sub168 = sub nsw i32 %sub167, %192
  %193 = load i32, i32* %orig_width, align 4
  %194 = load i8*, i8** %buf, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %srcPR, i32 %189, i32 %sub168, i32 %193, i8* %194, i32 1)
  store i32 0, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.197, %for.body.165
  %195 = load i32, i32* %j, align 4
  %196 = load i32, i32* %orig_width, align 4
  %div = sdiv i32 %196, 2
  %cmp170 = icmp slt i32 %195, %div
  br i1 %cmp170, label %for.body.172, label %for.end.199

for.body.172:                                     ; preds = %for.cond.169
  %197 = load i8*, i8** %buf, align 8
  %198 = load i32, i32* %j, align 4
  %199 = load i32, i32* %orig_bpp, align 4
  %mul174 = mul nsw i32 %198, %199
  %idx.ext = sext i32 %mul174 to i64
  %add.ptr = getelementptr inbounds i8, i8* %197, i64 %idx.ext
  store i8* %add.ptr, i8** %left, align 8
  %200 = load i8*, i8** %buf, align 8
  %201 = load i32, i32* %orig_width, align 4
  %sub176 = sub nsw i32 %201, 1
  %202 = load i32, i32* %j, align 4
  %sub177 = sub nsw i32 %sub176, %202
  %203 = load i32, i32* %orig_bpp, align 4
  %mul178 = mul nsw i32 %sub177, %203
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %200, i64 %idx.ext179
  store i8* %add.ptr180, i8** %right, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.194, %for.body.172
  %204 = load i32, i32* %k, align 4
  %205 = load i32, i32* %orig_bpp, align 4
  %cmp182 = icmp slt i32 %204, %205
  br i1 %cmp182, label %for.body.184, label %for.end.196

for.body.184:                                     ; preds = %for.cond.181
  %206 = load i32, i32* %k, align 4
  %idxprom = sext i32 %206 to i64
  %207 = load i8*, i8** %left, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %207, i64 %idxprom
  %208 = load i8, i8* %arrayidx187, align 1
  store i8 %208, i8* %tmp186, align 1
  %209 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %209 to i64
  %210 = load i8*, i8** %right, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %210, i64 %idxprom188
  %211 = load i8, i8* %arrayidx189, align 1
  %212 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %212 to i64
  %213 = load i8*, i8** %left, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %213, i64 %idxprom190
  store i8 %211, i8* %arrayidx191, align 1
  %214 = load i8, i8* %tmp186, align 1
  %215 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %215 to i64
  %216 = load i8*, i8** %right, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %216, i64 %idxprom192
  store i8 %214, i8* %arrayidx193, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.184
  %217 = load i32, i32* %k, align 4
  %inc195 = add nsw i32 %217, 1
  store i32 %inc195, i32* %k, align 4
  br label %for.cond.181

for.end.196:                                      ; preds = %for.cond.181
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %218 = load i32, i32* %j, align 4
  %inc198 = add nsw i32 %218, 1
  store i32 %inc198, i32* %j, align 4
  br label %for.cond.169

for.end.199:                                      ; preds = %for.cond.169
  %219 = load i32, i32* %new_x, align 4
  %220 = load i32, i32* %new_y, align 4
  %221 = load i32, i32* %i, align 4
  %add200 = add nsw i32 %220, %221
  %222 = load i32, i32* %new_width, align 4
  %223 = load i8*, i8** %buf, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %destPR, i32 %219, i32 %add200, i32 %222, i8* %223)
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.199
  %224 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %224, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.162

for.end.203:                                      ; preds = %for.cond.162
  br label %sw.epilog.226

sw.bb.204:                                        ; preds = %if.end.136
  br label %do.body.205

do.body.205:                                      ; preds = %sw.bb.204
  %225 = load i32, i32* %new_width, align 4
  %226 = load i32, i32* %orig_height, align 4
  %cmp206 = icmp eq i32 %225, %226
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %do.body.205
  br label %if.end.210

if.else.209:                                      ; preds = %do.body.205
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 544, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_tiles_rotate, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #9
  unreachable

if.end.210:                                       ; preds = %if.then.208
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  %227 = load i32, i32* %new_width, align 4
  %228 = load i32, i32* %orig_bpp, align 4
  %mul212 = mul nsw i32 %227, %228
  %conv213 = sext i32 %mul212 to i64
  %call214 = call noalias i8* @g_malloc_n(i64 %conv213, i64 1)
  store i8* %call214, i8** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.223, %do.end.211
  %229 = load i32, i32* %i, align 4
  %230 = load i32, i32* %orig_width, align 4
  %cmp216 = icmp slt i32 %229, %230
  br i1 %cmp216, label %for.body.218, label %for.end.225

for.body.218:                                     ; preds = %for.cond.215
  %231 = load i32, i32* %orig_x, align 4
  %232 = load i32, i32* %orig_width, align 4
  %add219 = add nsw i32 %231, %232
  %sub220 = sub nsw i32 %add219, 1
  %233 = load i32, i32* %i, align 4
  %sub221 = sub nsw i32 %sub220, %233
  %234 = load i32, i32* %orig_y, align 4
  %235 = load i32, i32* %orig_height, align 4
  %236 = load i8*, i8** %buf, align 8
  call void @pixel_region_get_col(%struct._PixelRegion* %srcPR, i32 %sub221, i32 %234, i32 %235, i8* %236, i32 1)
  %237 = load i32, i32* %new_x, align 4
  %238 = load i32, i32* %new_y, align 4
  %239 = load i32, i32* %i, align 4
  %add222 = add nsw i32 %238, %239
  %240 = load i32, i32* %new_width, align 4
  %241 = load i8*, i8** %buf, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %destPR, i32 %237, i32 %add222, i32 %240, i8* %241)
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.218
  %242 = load i32, i32* %i, align 4
  %inc224 = add nsw i32 %242, 1
  store i32 %inc224, i32* %i, align 4
  br label %for.cond.215

for.end.225:                                      ; preds = %for.cond.215
  br label %sw.epilog.226

sw.epilog.226:                                    ; preds = %if.end.136, %for.end.225, %for.end.203, %for.end
  %243 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %243)
  %244 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  store %struct._TileManager* %244, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %sw.epilog.226, %if.then.135, %do.body.65, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  %245 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %245
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_transform_rotate_point(i32 %x, i32 %y, i32 %rotate_type, double %center_x, double %center_y, i32* %new_x, i32* %new_y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %new_x.addr = alloca i32*, align 8
  %new_y.addr = alloca i32*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32* %new_x, i32** %new_x.addr, align 8
  store i32* %new_y, i32** %new_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %new_x.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_rotate_point, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %new_y.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_rotate_point, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %do.end.6
  %3 = load double, double* %center_x.addr, align 8
  %4 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %4 to double
  %sub = fsub double %3, %conv
  %5 = load double, double* %center_y.addr, align 8
  %add = fadd double %sub, %5
  %call = call double @rint(double %add) #7
  %conv7 = fptosi double %call to i32
  %6 = load i32*, i32** %new_x.addr, align 8
  store i32 %conv7, i32* %6, align 4
  %7 = load double, double* %center_y.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %conv8 = sitofp i32 %8 to double
  %add9 = fadd double %7, %conv8
  %9 = load double, double* %center_x.addr, align 8
  %sub10 = fsub double %add9, %9
  %call11 = call double @rint(double %sub10) #7
  %conv12 = fptosi double %call11 to i32
  %10 = load i32*, i32** %new_y.addr, align 8
  store i32 %conv12, i32* %10, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end.6
  %11 = load double, double* %center_x.addr, align 8
  %12 = load i32, i32* %x.addr, align 4
  %conv14 = sitofp i32 %12 to double
  %13 = load double, double* %center_x.addr, align 8
  %sub15 = fsub double %conv14, %13
  %sub16 = fsub double %11, %sub15
  %call17 = call double @rint(double %sub16) #7
  %conv18 = fptosi double %call17 to i32
  %14 = load i32*, i32** %new_x.addr, align 8
  store i32 %conv18, i32* %14, align 4
  %15 = load double, double* %center_y.addr, align 8
  %16 = load i32, i32* %y.addr, align 4
  %conv19 = sitofp i32 %16 to double
  %17 = load double, double* %center_y.addr, align 8
  %sub20 = fsub double %conv19, %17
  %sub21 = fsub double %15, %sub20
  %call22 = call double @rint(double %sub21) #7
  %conv23 = fptosi double %call22 to i32
  %18 = load i32*, i32** %new_y.addr, align 8
  store i32 %conv23, i32* %18, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %do.end.6
  %19 = load double, double* %center_x.addr, align 8
  %20 = load i32, i32* %y.addr, align 4
  %conv25 = sitofp i32 %20 to double
  %add26 = fadd double %19, %conv25
  %21 = load double, double* %center_y.addr, align 8
  %sub27 = fsub double %add26, %21
  %call28 = call double @rint(double %sub27) #7
  %conv29 = fptosi double %call28 to i32
  %22 = load i32*, i32** %new_x.addr, align 8
  store i32 %conv29, i32* %22, align 4
  %23 = load double, double* %center_y.addr, align 8
  %24 = load i32, i32* %x.addr, align 4
  %conv30 = sitofp i32 %24 to double
  %sub31 = fsub double %23, %conv30
  %25 = load double, double* %center_x.addr, align 8
  %add32 = fadd double %sub31, %25
  %call33 = call double @rint(double %add32) #7
  %conv34 = fptosi double %call33 to i32
  %26 = load i32*, i32** %new_y.addr, align 8
  store i32 %conv34, i32* %26, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.6
  br label %do.body.35

do.body.35:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 325, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_drawable_transform_rotate_point, i32 0, i32 0), i8* null) #9
  unreachable

do.end.36:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.4, %do.end.36, %sw.bb.24, %sw.bb.13, %sw.bb
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare noalias i8* @g_malloc_n(i64, i64) #3

declare void @pixel_region_get_row(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #3

declare void @pixel_region_set_col(%struct._PixelRegion*, i32, i32, i32, i8*) #3

declare void @pixel_region_set_row(%struct._PixelRegion*, i32, i32, i32, i8*) #3

declare void @pixel_region_get_col(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_transform_affine(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %orig_tiles = alloca %struct._TileManager*, align 8
  %orig_offset_x = alloca i32, align 4
  %orig_offset_y = alloca i32, align 4
  %new_layer = alloca i32, align 4
  %result = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %__inst95 = alloca %struct._GTypeInstance*, align 8
  %__t97 = alloca i64, align 8
  %__r100 = alloca i32, align 4
  %tmp115 = alloca i32, align 4
  %__inst123 = alloca %struct._GTypeInstance*, align 8
  %__t125 = alloca i64, align 8
  %__r128 = alloca i32, align 4
  %tmp143 = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_affine, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_affine, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_affine, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp49 = icmp ne %struct._GimpMatrix3* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_affine, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp55 = icmp eq %struct._GimpProgress* %30, null
  br i1 %cmp55, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.54
  %31 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %32 = bitcast %struct._GimpProgress* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst57, align 8
  %call60 = call i64 @gimp_progress_interface_get_type() #7
  store i64 %call60, i64* %__t59, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %lor.lhs.false
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type70, align 8
  %39 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %38, %39
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %41 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #8
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %42 = load i32, i32* %__r62, align 4
  store i32 %42, i32* %tmp77
  %43 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %43, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76, %do.body.54
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_affine, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_item_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call83)
  %46 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpItem*
  %call85 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  store %struct._GimpImage* %call85, %struct._GimpImage** %image, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call86 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %call87 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %47, i32 32, i8* %call86)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call88 = call %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable* %48, %struct._GimpContext* %49, i32* %orig_offset_x, i32* %orig_offset_y, i32* %new_layer)
  store %struct._TileManager* %call88, %struct._TileManager** %orig_tiles, align 8
  %50 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %tobool89 = icmp ne %struct._TileManager* %50, null
  br i1 %tobool89, label %if.then.90, label %if.end.167

if.then.90:                                       ; preds = %do.end.82
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %52 = bitcast %struct._GimpDrawable* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst95, align 8
  %call98 = call i64 @gimp_channel_get_type() #7
  store i64 %call98, i64* %__t97, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %tobool101 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool101, label %if.else.103, label %if.then.102

if.then.102:                                      ; preds = %if.then.90
  store i32 0, i32* %__r100, align 4
  br label %if.end.114

if.else.103:                                      ; preds = %if.then.90
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class104 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class104, align 8
  %tobool105 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.else.111

land.lhs.true.106:                                ; preds = %if.else.103
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class107 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class107, align 8
  %g_type108 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type108, align 8
  %59 = load i64, i64* %__t97, align 8
  %cmp109 = icmp eq i64 %58, %59
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %land.lhs.true.106
  store i32 1, i32* %__r100, align 4
  br label %if.end.113

if.else.111:                                      ; preds = %land.lhs.true.106, %if.else.103
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %61 = load i64, i64* %__t97, align 8
  %call112 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #8
  store i32 %call112, i32* %__r100, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.102
  %62 = load i32, i32* %__r100, align 4
  store i32 %62, i32* %tmp115
  %63 = load i32, i32* %tmp115
  %tobool116 = icmp ne i32 %63, 0
  br i1 %tobool116, label %land.lhs.true.117, label %if.end.121

land.lhs.true.117:                                ; preds = %if.end.114
  %64 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %call118 = call i32 @tile_manager_bpp(%struct._TileManager* %64)
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.117
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.117, %if.end.114
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = bitcast %struct._GimpDrawable* %65 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %66, %struct._GTypeInstance** %__inst123, align 8
  %call126 = call i64 @gimp_layer_get_type() #7
  store i64 %call126, i64* %__t125, align 8
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %tobool129 = icmp ne %struct._GTypeInstance* %67, null
  br i1 %tobool129, label %if.else.131, label %if.then.130

if.then.130:                                      ; preds = %if.end.121
  store i32 0, i32* %__r128, align 4
  br label %if.end.142

if.else.131:                                      ; preds = %if.end.121
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %g_class132 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class132, align 8
  %tobool133 = icmp ne %struct._GTypeClass* %69, null
  br i1 %tobool133, label %land.lhs.true.134, label %if.else.139

land.lhs.true.134:                                ; preds = %if.else.131
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %g_class135 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class135, align 8
  %g_type136 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type136, align 8
  %73 = load i64, i64* %__t125, align 8
  %cmp137 = icmp eq i64 %72, %73
  br i1 %cmp137, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %land.lhs.true.134
  store i32 1, i32* %__r128, align 4
  br label %if.end.141

if.else.139:                                      ; preds = %land.lhs.true.134, %if.else.131
  %74 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %75 = load i64, i64* %__t125, align 8
  %call140 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %74, i64 %75) #8
  store i32 %call140, i32* %__r128, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.138
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.130
  %76 = load i32, i32* %__r128, align 4
  store i32 %76, i32* %tmp143
  %77 = load i32, i32* %tmp143
  %tobool144 = icmp ne i32 %77, 0
  br i1 %tobool144, label %land.lhs.true.145, label %if.end.161

land.lhs.true.145:                                ; preds = %if.end.142
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %79 = bitcast %struct._GimpDrawable* %78 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_layer_get_type() #7
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call146)
  %80 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpLayer*
  %call148 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %80)
  %tobool149 = icmp ne %struct._GimpLayerMask* %call148, null
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.161

land.lhs.true.150:                                ; preds = %land.lhs.true.145
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call151 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %81)
  %call152 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call151)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.161

if.then.154:                                      ; preds = %land.lhs.true.150
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %83 = bitcast %struct._GimpDrawable* %82 to %struct._GTypeInstance*
  %call156 = call i64 @gimp_layer_get_type() #7
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call156)
  %84 = bitcast %struct._GTypeInstance* %call157 to %struct._GimpLayer*
  %call158 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %84)
  store %struct._GimpLayerMask* %call158, %struct._GimpLayerMask** %mask, align 8
  %85 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %86 = bitcast %struct._GimpLayerMask* %85 to %struct._GTypeInstance*
  %call159 = call i64 @gimp_item_get_type() #7
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call159)
  %87 = bitcast %struct._GTypeInstance* %call160 to %struct._GimpItem*
  %88 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %89 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %90 = load i32, i32* %direction.addr, align 4
  %91 = load i32, i32* %interpolation_type.addr, align 4
  %92 = load i32, i32* %recursion_level.addr, align 4
  %93 = load i32, i32* %clip_result.addr, align 4
  %94 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %87, %struct._GimpContext* %88, %struct._GimpMatrix3* %89, i32 %90, i32 %91, i32 %92, i32 %93, %struct._GimpProgress* %94)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.154, %land.lhs.true.150, %land.lhs.true.145, %if.end.142
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %96 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %97 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %98 = load i32, i32* %orig_offset_x, align 4
  %99 = load i32, i32* %orig_offset_y, align 4
  %100 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %101 = load i32, i32* %direction.addr, align 4
  %102 = load i32, i32* %interpolation_type.addr, align 4
  %103 = load i32, i32* %recursion_level.addr, align 4
  %104 = load i32, i32* %clip_result.addr, align 4
  %105 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call162 = call %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable* %95, %struct._GimpContext* %96, %struct._TileManager* %97, i32 %98, i32 %99, %struct._GimpMatrix3* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32* %new_offset_x, i32* %new_offset_y, %struct._GimpProgress* %105)
  store %struct._TileManager* %call162, %struct._TileManager** %new_tiles, align 8
  %106 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %106)
  %107 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %tobool163 = icmp ne %struct._TileManager* %107, null
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.end.161
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %109 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %110 = load i32, i32* %new_offset_x, align 4
  %111 = load i32, i32* %new_offset_y, align 4
  %112 = load i32, i32* %new_layer, align 4
  %call165 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %108, %struct._TileManager* %109, i32 %110, i32 %111, i32 %112)
  store %struct._GimpDrawable* %call165, %struct._GimpDrawable** %result, align 8
  %113 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %113)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.end.161
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %do.end.82
  %114 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call168 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %114)
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %result, align 8
  store %struct._GimpDrawable* %115, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.167, %if.else.80, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  %116 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %116
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32* %offset_x, i32* %offset_y, i32* %new_layer) #0 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %offset_x.addr = alloca i32*, align 8
  %offset_y.addr = alloca i32*, align 8
  %new_layer.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %__inst98 = alloca %struct._GTypeInstance*, align 8
  %__t100 = alloca i64, align 8
  %__r103 = alloca i32, align 4
  %tmp118 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32* %offset_x, i32** %offset_x.addr, align 8
  store i32* %offset_y, i32** %offset_y.addr, align 8
  store i32* %new_layer, i32** %new_layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load i32*, i32** %offset_x.addr, align 8
  %cmp49 = icmp ne i32* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load i32*, i32** %offset_y.addr, align 8
  %cmp55 = icmp ne i32* %30, null
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.54
  br label %if.end.58

if.else.57:                                       ; preds = %do.body.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.58:                                        ; preds = %if.then.56
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %31 = load i32*, i32** %new_layer.addr, align 8
  %cmp61 = icmp ne i32* %31, null
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.60
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_transform_cut, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.64:                                        ; preds = %if.then.62
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call66)
  %34 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %34)
  store %struct._GimpImage* %call68, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call69 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %35)
  %call70 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call69)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.else.91, label %if.then.72

if.then.72:                                       ; preds = %do.end.65
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_item_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call77)
  %38 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpItem*
  %call79 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %38, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.89

if.then.81:                                       ; preds = %if.then.72
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call82 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %39)
  %40 = bitcast %struct._GimpChannel* %call82 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_selection_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call83)
  %41 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpSelection*
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_pickable_interface_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call85)
  %44 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpPickable*
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %46 = load i32*, i32** %offset_x.addr, align 8
  %47 = load i32*, i32** %offset_y.addr, align 8
  %call87 = call %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection* %41, %struct._GimpPickable* %44, %struct._GimpContext* %45, i32 1, i32 0, i32 1, i32* %46, i32* %47, %struct._GError** null)
  store %struct._TileManager* %call87, %struct._TileManager** %tiles, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call88 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %48)
  call void @gimp_channel_clear(%struct._GimpChannel* %call88, i8* null, i32 1)
  %49 = load i32*, i32** %new_layer.addr, align 8
  store i32 1, i32* %49, align 4
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.72
  store %struct._TileManager* null, %struct._TileManager** %tiles, align 8
  %50 = load i32*, i32** %new_layer.addr, align 8
  store i32 0, i32* %50, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.81
  br label %if.end.120

if.else.91:                                       ; preds = %do.end.65
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call92 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %51)
  %52 = bitcast %struct._GimpChannel* %call92 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_selection_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call93)
  %53 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpSelection*
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %55 = bitcast %struct._GimpDrawable* %54 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_pickable_interface_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call95)
  %56 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpPickable*
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %59 = bitcast %struct._GimpDrawable* %58 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %59, %struct._GTypeInstance** %__inst98, align 8
  %call101 = call i64 @gimp_layer_get_type() #7
  store i64 %call101, i64* %__t100, align 8
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %tobool104 = icmp ne %struct._GTypeInstance* %60, null
  br i1 %tobool104, label %if.else.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.91
  store i32 0, i32* %__r103, align 4
  br label %if.end.117

if.else.106:                                      ; preds = %if.else.91
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %g_class107 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class107, align 8
  %tobool108 = icmp ne %struct._GTypeClass* %62, null
  br i1 %tobool108, label %land.lhs.true.109, label %if.else.114

land.lhs.true.109:                                ; preds = %if.else.106
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %g_type111 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type111, align 8
  %66 = load i64, i64* %__t100, align 8
  %cmp112 = icmp eq i64 %65, %66
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %land.lhs.true.109
  store i32 1, i32* %__r103, align 4
  br label %if.end.116

if.else.114:                                      ; preds = %land.lhs.true.109, %if.else.106
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %68 = load i64, i64* %__t100, align 8
  %call115 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %67, i64 %68) #8
  store i32 %call115, i32* %__r103, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.114, %if.then.113
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.105
  %69 = load i32, i32* %__r103, align 4
  store i32 %69, i32* %tmp118
  %70 = load i32, i32* %tmp118
  %71 = load i32*, i32** %offset_x.addr, align 8
  %72 = load i32*, i32** %offset_y.addr, align 8
  %call119 = call %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection* %53, %struct._GimpPickable* %56, %struct._GimpContext* %57, i32 0, i32 1, i32 %70, i32* %71, i32* %72, %struct._GError** null)
  store %struct._TileManager* %call119, %struct._TileManager** %tiles, align 8
  %73 = load i32*, i32** %new_layer.addr, align 8
  store i32 0, i32* %73, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.117, %if.end.90
  %74 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  store %struct._TileManager* %74, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.else.63, %if.else.57, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  %75 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %75
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %drawable, %struct._TileManager* %tiles, i32 %offset_x, i32 %offset_y, i32 %new_layer) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %new_layer.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %undo_desc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst30 = alloca %struct._GTypeInstance*, align 8
  %__t32 = alloca i64, align 8
  %__r35 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %__inst56 = alloca %struct._GTypeInstance*, align 8
  %__t58 = alloca i64, align 8
  %__r61 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %drawable_type = alloca i32, align 4
  %__inst96 = alloca %struct._GTypeInstance*, align 8
  %__t98 = alloca i64, align 8
  %__r101 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %new_layer, i32* %new_layer.addr, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  store i8* null, i8** %undo_desc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_transform_paste, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_transform_paste, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp21 = icmp ne %struct._TileManager* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_transform_paste, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call26)
  %19 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  store %struct._GimpImage* %call28, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst30, align 8
  %call33 = call i64 @gimp_layer_get_type() #7
  store i64 %call33, i64* %__t32, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %do.end.25
  store i32 0, i32* %__r35, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %do.end.25
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.38
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type43, align 8
  %28 = load i64, i64* %__t32, align 8
  %cmp44 = icmp eq i64 %27, %28
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r35, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.38
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %30 = load i64, i64* %__t32, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #8
  store i32 %call47, i32* %__r35, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %31 = load i32, i32* %__r35, align 4
  store i32 %31, i32* %tmp50
  %32 = load i32, i32* %tmp50
  %tobool51 = icmp ne i32 %32, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.end.49
  %call53 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i64 10)
  store i8* %call53, i8** %undo_desc, align 8
  br label %if.end.82

if.else.54:                                       ; preds = %if.end.49
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst56, align 8
  %call59 = call i64 @gimp_channel_get_type() #7
  store i64 %call59, i64* %__t58, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %tobool62 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %if.else.54
  store i32 0, i32* %__r61, align 4
  br label %if.end.75

if.else.64:                                       ; preds = %if.else.54
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %tobool66 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %if.else.64
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type69, align 8
  %41 = load i64, i64* %__t58, align 8
  %cmp70 = icmp eq i64 %40, %41
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %__r61, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.67, %if.else.64
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %43 = load i64, i64* %__t58, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #8
  store i32 %call73, i32* %__r61, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.63
  %44 = load i32, i32* %__r61, align 4
  store i32 %44, i32* %tmp76
  %45 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %45, 0
  br i1 %tobool77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.end.75
  %call79 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i64 10)
  store i8* %call79, i8** %undo_desc, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.75
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.52
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %47 = load i8*, i8** %undo_desc, align 8
  %call83 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %46, i32 29, i8* %47)
  %48 = load i32, i32* %new_layer.addr, align 4
  %tobool84 = icmp ne i32 %48, 0
  br i1 %tobool84, label %if.then.85, label %if.else.93

if.then.85:                                       ; preds = %if.end.82
  %49 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call86 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %51)
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #4
  %call88 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %49, %struct._GimpImage* %50, i32 %call86, i8* %call87, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call88, %struct._GimpLayer** %layer, align 8
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %53 = bitcast %struct._GimpLayer* %52 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_get_type() #7
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call89)
  %54 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItem*
  %55 = load i32, i32* %offset_x.addr, align 4
  %56 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %54, i32 %55, i32 %56)
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %57, %struct._GimpDrawable* %58)
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %60 = bitcast %struct._GimpLayer* %59 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_drawable_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call91)
  %61 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %61, %struct._GimpDrawable** %drawable.addr, align 8
  br label %if.end.128

if.else.93:                                       ; preds = %if.end.82
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %63 = bitcast %struct._GimpDrawable* %62 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %63, %struct._GTypeInstance** %__inst96, align 8
  %call99 = call i64 @gimp_layer_get_type() #7
  store i64 %call99, i64* %__t98, align 8
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst96, align 8
  %tobool102 = icmp ne %struct._GTypeInstance* %64, null
  br i1 %tobool102, label %if.else.104, label %if.then.103

if.then.103:                                      ; preds = %if.else.93
  store i32 0, i32* %__r101, align 4
  br label %if.end.115

if.else.104:                                      ; preds = %if.else.93
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst96, align 8
  %g_class105 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class105, align 8
  %tobool106 = icmp ne %struct._GTypeClass* %66, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.112

land.lhs.true.107:                                ; preds = %if.else.104
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst96, align 8
  %g_class108 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class108, align 8
  %g_type109 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %68, i32 0, i32 0
  %69 = load i64, i64* %g_type109, align 8
  %70 = load i64, i64* %__t98, align 8
  %cmp110 = icmp eq i64 %69, %70
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %land.lhs.true.107
  store i32 1, i32* %__r101, align 4
  br label %if.end.114

if.else.112:                                      ; preds = %land.lhs.true.107, %if.else.104
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst96, align 8
  %72 = load i64, i64* %__t98, align 8
  %call113 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %71, i64 %72) #8
  store i32 %call113, i32* %__r101, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112, %if.then.111
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.103
  %73 = load i32, i32* %__r101, align 4
  store i32 %73, i32* %tmp116
  %74 = load i32, i32* %tmp116
  %tobool117 = icmp ne i32 %74, 0
  br i1 %tobool117, label %land.lhs.true.118, label %if.else.125

land.lhs.true.118:                                ; preds = %if.end.115
  %75 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call119 = call i32 @tile_manager_bpp(%struct._TileManager* %75)
  %cmp120 = icmp eq i32 %call119, 2
  br i1 %cmp120, label %if.then.123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.118
  %76 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call121 = call i32 @tile_manager_bpp(%struct._TileManager* %76)
  %cmp122 = icmp eq i32 %call121, 4
  br i1 %cmp122, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %lor.lhs.false, %land.lhs.true.118
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call124 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %77)
  store i32 %call124, i32* %drawable_type, align 4
  br label %if.end.127

if.else.125:                                      ; preds = %lor.lhs.false, %if.end.115
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call126 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %78)
  store i32 %call126, i32* %drawable_type, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.125, %if.then.123
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %80 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %81 = load i32, i32* %drawable_type, align 4
  %82 = load i32, i32* %offset_x.addr, align 4
  %83 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %79, i32 1, i8* null, %struct._TileManager* %80, i32 %81, i32 %82, i32 %83)
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.85
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call129 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %84)
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %85, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.else.80, %if.else.23, %if.else.17, %if.else.9
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %86
}

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_transform_flip(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %orig_tiles = alloca %struct._TileManager*, align 8
  %orig_offset_x = alloca i32, align 4
  %orig_offset_y = alloca i32, align 4
  %new_layer = alloca i32, align 4
  %result = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %__inst88 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_transform_flip, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_transform_flip, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_transform_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call50, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call51 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i64 10)
  %call52 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 32, i8* %call51)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call53 = call %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable* %33, %struct._GimpContext* %34, i32* %orig_offset_x, i32* %orig_offset_y, i32* %new_layer)
  store %struct._TileManager* %call53, %struct._TileManager** %orig_tiles, align 8
  %35 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %tobool54 = icmp ne %struct._TileManager* %35, null
  br i1 %tobool54, label %if.then.55, label %if.end.135

if.then.55:                                       ; preds = %do.end.47
  store %struct._TileManager* null, %struct._TileManager** %new_tiles, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst60, align 8
  %call63 = call i64 @gimp_channel_get_type() #7
  store i64 %call63, i64* %__t62, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.55
  store i32 0, i32* %__r65, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %if.then.55
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.76

land.lhs.true.71:                                 ; preds = %if.else.68
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type73, align 8
  %44 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %43, %44
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %land.lhs.true.71, %if.else.68
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %46 = load i64, i64* %__t62, align 8
  %call77 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #8
  store i32 %call77, i32* %__r65, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %47 = load i32, i32* %__r65, align 4
  store i32 %47, i32* %tmp80
  %48 = load i32, i32* %tmp80
  %tobool81 = icmp ne i32 %48, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.86

land.lhs.true.82:                                 ; preds = %if.end.79
  %49 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %call83 = call i32 @tile_manager_bpp(%struct._TileManager* %49)
  %cmp84 = icmp eq i32 %call83, 1
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.lhs.true.82, %if.end.79
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %51, %struct._GTypeInstance** %__inst88, align 8
  %call91 = call i64 @gimp_layer_get_type() #7
  store i64 %call91, i64* %__t90, align 8
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %52, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.86
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %if.end.86
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %54, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type101, align 8
  %58 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %57, %58
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %60 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %59, i64 %60) #8
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %61 = load i32, i32* %__r93, align 4
  store i32 %61, i32* %tmp108
  %62 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %62, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.126

land.lhs.true.110:                                ; preds = %if.end.107
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %64 = bitcast %struct._GimpDrawable* %63 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_layer_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call111)
  %65 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpLayer*
  %call113 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %65)
  %tobool114 = icmp ne %struct._GimpLayerMask* %call113, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.126

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call116 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %66)
  %call117 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call116)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.126

if.then.119:                                      ; preds = %land.lhs.true.115
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %68 = bitcast %struct._GimpDrawable* %67 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_layer_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call121)
  %69 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpLayer*
  %call123 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %69)
  store %struct._GimpLayerMask* %call123, %struct._GimpLayerMask** %mask, align 8
  %70 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %71 = bitcast %struct._GimpLayerMask* %70 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_item_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call124)
  %72 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpItem*
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %74 = load i32, i32* %flip_type.addr, align 4
  %75 = load double, double* %axis.addr, align 8
  %76 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %72, %struct._GimpContext* %73, i32 %74, double %75, i32 %76)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.119, %land.lhs.true.115, %land.lhs.true.110, %if.end.107
  %77 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %tobool127 = icmp ne %struct._TileManager* %77, null
  br i1 %tobool127, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end.126
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %80 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %81 = load i32, i32* %orig_offset_x, align 4
  %82 = load i32, i32* %orig_offset_y, align 4
  %83 = load i32, i32* %flip_type.addr, align 4
  %84 = load double, double* %axis.addr, align 8
  %85 = load i32, i32* %clip_result.addr, align 4
  %call129 = call %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable* %78, %struct._GimpContext* %79, %struct._TileManager* %80, i32 %81, i32 %82, i32 %83, double %84, i32 %85, i32* %new_offset_x, i32* %new_offset_y)
  store %struct._TileManager* %call129, %struct._TileManager** %new_tiles, align 8
  %86 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %86)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.end.126
  %87 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %tobool131 = icmp ne %struct._TileManager* %87, null
  br i1 %tobool131, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.130
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %89 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %90 = load i32, i32* %new_offset_x, align 4
  %91 = load i32, i32* %new_offset_y, align 4
  %92 = load i32, i32* %new_layer, align 4
  %call133 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %88, %struct._TileManager* %89, i32 %90, i32 %91, i32 %92)
  store %struct._GimpDrawable* %call133, %struct._GimpDrawable** %result, align 8
  %93 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %93)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.130
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %do.end.47
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call136 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %94)
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %result, align 8
  store %struct._GimpDrawable* %95, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.else.45, %if.else.17, %if.else.9
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %96
}

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_transform_rotate(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #0 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %orig_tiles = alloca %struct._TileManager*, align 8
  %orig_offset_x = alloca i32, align 4
  %orig_offset_y = alloca i32, align 4
  %new_layer = alloca i32, align 4
  %result = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %__inst88 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_rotate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_rotate, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_transform_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call50, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call51 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i64 10)
  %call52 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 32, i8* %call51)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call53 = call %struct._TileManager* @gimp_drawable_transform_cut(%struct._GimpDrawable* %33, %struct._GimpContext* %34, i32* %orig_offset_x, i32* %orig_offset_y, i32* %new_layer)
  store %struct._TileManager* %call53, %struct._TileManager** %orig_tiles, align 8
  %35 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %tobool54 = icmp ne %struct._TileManager* %35, null
  br i1 %tobool54, label %if.then.55, label %if.end.132

if.then.55:                                       ; preds = %do.end.47
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst60, align 8
  %call63 = call i64 @gimp_channel_get_type() #7
  store i64 %call63, i64* %__t62, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.55
  store i32 0, i32* %__r65, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %if.then.55
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.76

land.lhs.true.71:                                 ; preds = %if.else.68
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type73, align 8
  %44 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %43, %44
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %land.lhs.true.71, %if.else.68
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %46 = load i64, i64* %__t62, align 8
  %call77 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #8
  store i32 %call77, i32* %__r65, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %47 = load i32, i32* %__r65, align 4
  store i32 %47, i32* %tmp80
  %48 = load i32, i32* %tmp80
  %tobool81 = icmp ne i32 %48, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.86

land.lhs.true.82:                                 ; preds = %if.end.79
  %49 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %call83 = call i32 @tile_manager_bpp(%struct._TileManager* %49)
  %cmp84 = icmp eq i32 %call83, 1
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.lhs.true.82, %if.end.79
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %51, %struct._GTypeInstance** %__inst88, align 8
  %call91 = call i64 @gimp_layer_get_type() #7
  store i64 %call91, i64* %__t90, align 8
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %52, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.86
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %if.end.86
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %54, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type101, align 8
  %58 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %57, %58
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %60 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %59, i64 %60) #8
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %61 = load i32, i32* %__r93, align 4
  store i32 %61, i32* %tmp108
  %62 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %62, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.126

land.lhs.true.110:                                ; preds = %if.end.107
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %64 = bitcast %struct._GimpDrawable* %63 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_layer_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call111)
  %65 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpLayer*
  %call113 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %65)
  %tobool114 = icmp ne %struct._GimpLayerMask* %call113, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.126

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call116 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %66)
  %call117 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call116)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.126

if.then.119:                                      ; preds = %land.lhs.true.115
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %68 = bitcast %struct._GimpDrawable* %67 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_layer_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call121)
  %69 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpLayer*
  %call123 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %69)
  store %struct._GimpLayerMask* %call123, %struct._GimpLayerMask** %mask, align 8
  %70 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %71 = bitcast %struct._GimpLayerMask* %70 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_item_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call124)
  %72 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpItem*
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %74 = load i32, i32* %rotate_type.addr, align 4
  %75 = load double, double* %center_x.addr, align 8
  %76 = load double, double* %center_y.addr, align 8
  %77 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %72, %struct._GimpContext* %73, i32 %74, double %75, double %76, i32 %77)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.119, %land.lhs.true.115, %land.lhs.true.110, %if.end.107
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %80 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %81 = load i32, i32* %orig_offset_x, align 4
  %82 = load i32, i32* %orig_offset_y, align 4
  %83 = load i32, i32* %rotate_type.addr, align 4
  %84 = load double, double* %center_x.addr, align 8
  %85 = load double, double* %center_y.addr, align 8
  %86 = load i32, i32* %clip_result.addr, align 4
  %call127 = call %struct._TileManager* @gimp_drawable_transform_tiles_rotate(%struct._GimpDrawable* %78, %struct._GimpContext* %79, %struct._TileManager* %80, i32 %81, i32 %82, i32 %83, double %84, double %85, i32 %86, i32* %new_offset_x, i32* %new_offset_y)
  store %struct._TileManager* %call127, %struct._TileManager** %new_tiles, align 8
  %87 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %87)
  %88 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %tobool128 = icmp ne %struct._TileManager* %88, null
  br i1 %tobool128, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.126
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %90 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %91 = load i32, i32* %new_offset_x, align 4
  %92 = load i32, i32* %new_offset_y, align 4
  %93 = load i32, i32* %new_layer, align 4
  %call130 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %89, %struct._TileManager* %90, i32 %91, i32 %92, i32 %93)
  store %struct._GimpDrawable* %call130, %struct._GimpDrawable** %result, align 8
  %94 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %94)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.126
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %do.end.47
  %95 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call133 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %95)
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %result, align 8
  store %struct._GimpDrawable* %96, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.else.45, %if.else.17, %if.else.9
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %97
}

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #3

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection*, %struct._GimpPickable*, %struct._GimpContext*, i32, i32, i32, i32*, i32*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #3

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #3

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #3

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #3

declare void @gimp_drawable_set_tiles_full(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
