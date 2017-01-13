; ModuleID = './app/core/gimplayer-floating-sel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
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
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpUndo = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.floating_sel_attach = private unnamed_addr constant [20 x i8] c"floating_sel_attach\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_LAYER (layer)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"drawable != GIMP_DRAWABLE (layer)\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"gimp_item_get_image (GIMP_ITEM (layer)) == gimp_item_get_image (GIMP_ITEM (drawable))\00", align 1
@__func__.floating_sel_anchor = private unnamed_addr constant [20 x i8] c"floating_sel_anchor\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"gimp_layer_is_floating_sel (layer)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"undo-type\04Anchor Floating Selection\00", align 1
@__func__.floating_sel_to_layer = private unnamed_addr constant [22 x i8] c"floating_sel_to_layer\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.9 = private unnamed_addr constant [101 x i8] c"Cannot create a new layer from the floating selection because it belongs to a layer mask or channel.\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"undo-type\04Floating Selection to Layer\00", align 1
@__func__.floating_sel_activate_drawable = private unnamed_addr constant [31 x i8] c"floating_sel_activate_drawable\00", align 1
@__func__.floating_sel_boundary = private unnamed_addr constant [22 x i8] c"floating_sel_boundary\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"n_segs != NULL\00", align 1
@__func__.floating_sel_invalidate = private unnamed_addr constant [24 x i8] c"floating_sel_invalidate\00", align 1
@__func__.floating_sel_composite = private unnamed_addr constant [23 x i8] c"floating_sel_composite\00", align 1

; Function Attrs: nounwind uwtable
define void @floating_sel_attach(%struct._GimpLayer* %layer, %struct._GimpDrawable* %drawable) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_attach, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_attach, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_attach, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_drawable_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call49)
  %32 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawable*
  %cmp51 = icmp ne %struct._GimpDrawable* %29, %32
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.48
  br label %if.end.54

if.else.53:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_attach, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call57)
  %35 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %call59 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call60)
  %38 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %call62 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %38)
  %cmp63 = icmp eq %struct._GimpImage* %call59, %call62
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.56
  br label %if.end.66

if.else.65:                                       ; preds = %do.body.56
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_attach, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_item_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call68)
  %41 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpItem*
  %call70 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %41)
  store %struct._GimpImage* %call70, %struct._GimpImage** %image, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call71 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %42)
  store %struct._GimpLayer* %call71, %struct._GimpLayer** %floating_sel, align 8
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool72 = icmp ne %struct._GimpLayer* %43, null
  br i1 %tobool72, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %do.end.67
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  call void @floating_sel_anchor(%struct._GimpLayer* %44)
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %47 = bitcast %struct._GimpLayer* %46 to %struct._GimpDrawable*
  %cmp74 = icmp eq %struct._GimpDrawable* %45, %47
  br i1 %cmp74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.73
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call76 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %48)
  store %struct._GimpDrawable* %call76, %struct._GimpDrawable** %drawable.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.73
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %do.end.67
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %49, i32 1, i32 0)
  %50 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_layer_set_floating_sel_drawable(%struct._GimpLayer* %50, %struct._GimpDrawable* %51)
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %53 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call79 = call i32 @gimp_image_add_layer(%struct._GimpImage* %52, %struct._GimpLayer* %53, %struct._GimpLayer* null, i32 0, i32 1)
  br label %return

return:                                           ; preds = %if.end.78, %if.else.65, %if.else.53, %if.else.45, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @floating_sel_anchor(%struct._GimpLayer* %layer) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_anchor, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.floating_sel_anchor, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call18)
  %16 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i64 10)
  %call22 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %17, i32 28, i8* %call21)
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @floating_sel_composite(%struct._GimpLayer* %18)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %19, %struct._GimpLayer* %20, i32 1, %struct._GimpLayer* null)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call24 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %22)
  %23 = bitcast %struct._GimpChannel* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_drawable_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call25)
  %24 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %24)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #3

declare void @gimp_layer_set_floating_sel_drawable(%struct._GimpLayer*, %struct._GimpDrawable*) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @floating_sel_composite(%struct._GimpLayer* %layer) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %dr_off_x = alloca i32, align 4
  %dr_off_y = alloca i32, align 4
  %combine_x = alloca i32, align 4
  %combine_y = alloca i32, align 4
  %combine_width = alloca i32, align 4
  %combine_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %fsPR = alloca %struct._PixelRegion, align 8
  %lock_alpha = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.floating_sel_composite, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.91

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.floating_sel_composite, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.91

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call18 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %14)
  store %struct._GimpDrawable* %call18, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %17, i32* %off_x, i32* %off_y)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %20, i32* %dr_off_x, i32* %dr_off_y)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_get_visible(%struct._GimpItem* %23)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.91

land.lhs.true.27:                                 ; preds = %do.end.17
  %24 = load i32, i32* %off_x, align 4
  %25 = load i32, i32* %off_y, align 4
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call28)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call i32 @gimp_item_get_width(%struct._GimpItem* %28)
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call31)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_height(%struct._GimpItem* %31)
  %32 = load i32, i32* %dr_off_x, align 4
  %33 = load i32, i32* %dr_off_y, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call34)
  %36 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %call39 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %call40 = call i32 @gimp_rectangle_intersect(i32 %24, i32 %25, i32 %call30, i32 %call33, i32 %32, i32 %33, i32 %call36, i32 %call39, i32* %combine_x, i32* %combine_y, i32* %combine_width, i32* %combine_height)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.91

if.then.42:                                       ; preds = %land.lhs.true.27
  store i32 0, i32* %lock_alpha, align 4
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %41 = bitcast %struct._GimpLayer* %40 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_drawable_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call45)
  %42 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpDrawable*
  %call47 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %42)
  %43 = load i32, i32* %combine_x, align 4
  %44 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %43, %44
  %45 = load i32, i32* %combine_y, align 4
  %46 = load i32, i32* %off_y, align 4
  %sub48 = sub nsw i32 %45, %46
  %47 = load i32, i32* %combine_width, align 4
  %48 = load i32, i32* %combine_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %fsPR, %struct._TileManager* %call47, i32 %sub, i32 %sub48, i32 %47, i32 %48, i32 0)
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %50 = bitcast %struct._GimpDrawable* %49 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %50, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_layer_get_type() #5
  store i64 %call53, i64* %__t52, align 8
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %51, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.42
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %if.then.42
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %53, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type63, align 8
  %57 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %56, %57
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %59 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %58, i64 %59) #6
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %60 = load i32, i32* %__r55, align 4
  store i32 %60, i32* %tmp70
  %61 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %61, 0
  br i1 %tobool71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %if.end.69
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %63 = bitcast %struct._GimpDrawable* %62 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_layer_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call73)
  %64 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpLayer*
  %call75 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %64)
  store i32 %call75, i32* %lock_alpha, align 4
  %65 = load i32, i32* %lock_alpha, align 4
  %tobool76 = icmp ne i32 %65, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.then.72
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %67 = bitcast %struct._GimpDrawable* %66 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_layer_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call78)
  %68 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpLayer*
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %68, i32 0, i32 0)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.then.72
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.69
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %70 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call82 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %70)
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call83 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %71)
  %72 = load i32, i32* %combine_x, align 4
  %73 = load i32, i32* %dr_off_x, align 4
  %sub84 = sub nsw i32 %72, %73
  %74 = load i32, i32* %combine_y, align 4
  %75 = load i32, i32* %dr_off_y, align 4
  %sub85 = sub nsw i32 %74, %75
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %69, %struct._PixelRegion* %fsPR, i32 1, i8* null, double %call82, i32 %call83, %struct._TileManager* null, %struct._PixelRegion* null, i32 %sub84, i32 %sub85)
  %76 = load i32, i32* %lock_alpha, align 4
  %tobool86 = icmp ne i32 %76, 0
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.81
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %78 = bitcast %struct._GimpDrawable* %77 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_layer_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call88)
  %79 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpLayer*
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %79, i32 1, i32 0)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.end.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.9, %if.else.15, %if.end.90, %land.lhs.true.27, %do.end.17
  ret void
}

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define i32 @floating_sel_to_layer(%struct._GimpLayer* %layer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst29 = alloca %struct._GTypeInstance*, align 8
  %__t32 = alloca i64, align 8
  %__r35 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_to_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_to_layer, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp19 = icmp eq %struct._GError** %14, null
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.18
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp20 = icmp eq %struct._GError* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.body.18
  br label %if.end.23

if.else.22:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_to_layer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call25)
  %19 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  store %struct._GimpItem* %19, %struct._GimpItem** %item, align 8
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call27 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %20)
  store %struct._GimpImage* %call27, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call30 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %21)
  %22 = bitcast %struct._GimpDrawable* %call30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst29, align 8
  %call33 = call i64 @gimp_channel_get_type() #5
  store i64 %call33, i64* %__t32, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %do.end.24
  store i32 0, i32* %__r35, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %do.end.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.38
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type43, align 8
  %29 = load i64, i64* %__t32, align 8
  %cmp44 = icmp eq i64 %28, %29
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r35, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.38
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %31 = load i64, i64* %__t32, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call47, i32* %__r35, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %32 = load i32, i32* %__r35, align 4
  store i32 %32, i32* %tmp50
  %33 = load i32, i32* %tmp50
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.49
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call53 = call i32 @gimp_error_quark() #5
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.9, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %34, i32 %call53, i32 0, i8* %call54)
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.49
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call56 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %call57 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %35, i32 26, i8* %call56)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call58 = call %struct._GimpUndo* @gimp_image_undo_push_fs_to_layer(%struct._GimpImage* %36, i8* null, %struct._GimpLayer* %37)
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call59 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %38)
  call void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable* %call59)
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_set_floating_sel_drawable(%struct._GimpLayer* %39, %struct._GimpDrawable* null)
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_set_visible(%struct._GimpItem* %40, i32 1, i32 1)
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %41, i32 0, i32 1)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call60 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %42)
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %44 = bitcast %struct._GimpLayer* %43 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call61)
  %45 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  call void @gimp_object_name_changed(%struct._GimpObject* %45)
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %47 = bitcast %struct._GimpLayer* %46 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_drawable_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call63)
  %48 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpDrawable*
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call65 = call i32 @gimp_item_get_width(%struct._GimpItem* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call66 = call i32 @gimp_item_get_height(%struct._GimpItem* %50)
  call void @gimp_drawable_update(%struct._GimpDrawable* %48, i32 0, i32 0, i32 %call65, i32 %call66)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.52, %if.else.22, %if.else.15, %if.else.9
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpUndo* @gimp_image_undo_push_fs_to_layer(%struct._GimpImage*, i8*, %struct._GimpLayer*) #3

declare void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable*) #3

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #3

declare void @gimp_object_name_changed(%struct._GimpObject*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define void @floating_sel_activate_drawable(%struct._GimpLayer* %layer) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  %__inst53 = alloca %struct._GTypeInstance*, align 8
  %__t55 = alloca i64, align 8
  %__r58 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.floating_sel_activate_drawable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.84

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.floating_sel_activate_drawable, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.84

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call18)
  %16 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call21 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %17)
  store %struct._GimpDrawable* %call21, %struct._GimpDrawable** %drawable, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call26, i64* %__t25, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %do.end.17
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %do.end.17
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type36, align 8
  %26 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %25, %26
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %28 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #6
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %29 = load i32, i32* %__r28, align 4
  store i32 %29, i32* %tmp43
  %30 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %if.end.42
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_layer_mask_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call47)
  %33 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %33, %struct._GimpLayerMask** %mask, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call49 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %35)
  %call50 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %34, %struct._GimpLayer* %call49)
  br label %if.end.84

if.else.51:                                       ; preds = %if.end.42
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst53, align 8
  %call56 = call i64 @gimp_channel_get_type() #5
  store i64 %call56, i64* %__t55, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %tobool59 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool59, label %if.else.61, label %if.then.60

if.then.60:                                       ; preds = %if.else.51
  store i32 0, i32* %__r58, align 4
  br label %if.end.72

if.else.61:                                       ; preds = %if.else.51
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %tobool63 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.else.69

land.lhs.true.64:                                 ; preds = %if.else.61
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %g_type66 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type66, align 8
  %44 = load i64, i64* %__t55, align 8
  %cmp67 = icmp eq i64 %43, %44
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %__r58, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %land.lhs.true.64, %if.else.61
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %46 = load i64, i64* %__t55, align 8
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #6
  store i32 %call70, i32* %__r58, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.60
  %47 = load i32, i32* %__r58, align 4
  store i32 %47, i32* %tmp73
  %48 = load i32, i32* %tmp73
  %tobool74 = icmp ne i32 %48, 0
  br i1 %tobool74, label %if.then.75, label %if.else.79

if.then.75:                                       ; preds = %if.end.72
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_channel_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call76)
  %52 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpChannel*
  %call78 = call %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage* %49, %struct._GimpChannel* %52)
  br label %if.end.83

if.else.79:                                       ; preds = %if.end.72
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %55 = bitcast %struct._GimpDrawable* %54 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_layer_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call80)
  %56 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpLayer*
  %call82 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %53, %struct._GimpLayer* %56)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.then.75
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.9, %if.else.15, %if.end.83, %if.then.45
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #3

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #3

declare %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage*, %struct._GimpChannel*) #3

; Function Attrs: nounwind uwtable
define %struct._BoundSeg* @floating_sel_boundary(%struct._GimpLayer* %layer, i32* %n_segs) #0 {
entry:
  %retval = alloca %struct._BoundSeg*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %n_segs.addr = alloca i32*, align 8
  %bPR = alloca %struct._PixelRegion, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32* %n_segs, i32** %n_segs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i32*, i32** %n_segs.addr, align 8
  %cmp19 = icmp ne i32* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.floating_sel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  store %struct._BoundSeg* null, %struct._BoundSeg** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 6
  %boundary_known = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 1
  %16 = load i32, i32* %boundary_known, align 4
  %cmp24 = icmp eq i32 %16, 0
  br i1 %cmp24, label %if.then.25, label %if.end.157

if.then.25:                                       ; preds = %do.end.23
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call30)
  %19 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %19)
  store i32 %call32, i32* %width, align 4
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call33)
  %22 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  store i32 %call35, i32* %height, align 4
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %24 = bitcast %struct._GimpLayer* %23 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call36)
  %25 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %25, i32* %off_x, i32* %off_y)
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs38 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %26, i32 0, i32 6
  %segs = getelementptr inbounds %struct.anon, %struct.anon* %fs38, i32 0, i32 2
  %27 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool39 = icmp ne %struct._BoundSeg* %27, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.25
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs41 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %28, i32 0, i32 6
  %segs42 = getelementptr inbounds %struct.anon, %struct.anon* %fs41, i32 0, i32 2
  %29 = load %struct._BoundSeg*, %struct._BoundSeg** %segs42, align 8
  %30 = bitcast %struct._BoundSeg* %29 to i8*
  call void @g_free(i8* %30)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.25
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_drawable_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call44)
  %33 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawable*
  %call46 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %33)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.76

if.then.48:                                       ; preds = %if.end.43
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_drawable_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call49)
  %36 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawable*
  %call51 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %36)
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call51, i32 0, i32 0, i32 %37, i32 %38, i32 0)
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs52 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %41, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.anon, %struct.anon* %fs52, i32 0, i32 3
  %call53 = call %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %bPR, i32 0, i32 0, i32 0, i32 %39, i32 %40, i8 zeroext 127, i32* %num_segs)
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs54 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %42, i32 0, i32 6
  %segs55 = getelementptr inbounds %struct.anon, %struct.anon* %fs54, i32 0, i32 2
  store %struct._BoundSeg* %call53, %struct._BoundSeg** %segs55, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.48
  %43 = load i32, i32* %i, align 4
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs56 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %44, i32 0, i32 6
  %num_segs57 = getelementptr inbounds %struct.anon, %struct.anon* %fs56, i32 0, i32 3
  %45 = load i32, i32* %num_segs57, align 4
  %cmp58 = icmp slt i32 %43, %45
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %off_x, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs59 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %48, i32 0, i32 6
  %segs60 = getelementptr inbounds %struct.anon, %struct.anon* %fs59, i32 0, i32 2
  %49 = load %struct._BoundSeg*, %struct._BoundSeg** %segs60, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %49, i64 %idxprom
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %50 = load i32, i32* %x1, align 4
  %add = add nsw i32 %50, %46
  store i32 %add, i32* %x1, align 4
  %51 = load i32, i32* %off_y, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs62 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %53, i32 0, i32 6
  %segs63 = getelementptr inbounds %struct.anon, %struct.anon* %fs62, i32 0, i32 2
  %54 = load %struct._BoundSeg*, %struct._BoundSeg** %segs63, align 8
  %arrayidx64 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %54, i64 %idxprom61
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx64, i32 0, i32 1
  %55 = load i32, i32* %y1, align 4
  %add65 = add nsw i32 %55, %51
  store i32 %add65, i32* %y1, align 4
  %56 = load i32, i32* %off_x, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs67 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %58, i32 0, i32 6
  %segs68 = getelementptr inbounds %struct.anon, %struct.anon* %fs67, i32 0, i32 2
  %59 = load %struct._BoundSeg*, %struct._BoundSeg** %segs68, align 8
  %arrayidx69 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %59, i64 %idxprom66
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx69, i32 0, i32 2
  %60 = load i32, i32* %x2, align 4
  %add70 = add nsw i32 %60, %56
  store i32 %add70, i32* %x2, align 4
  %61 = load i32, i32* %off_y, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %62 to i64
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs72 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %63, i32 0, i32 6
  %segs73 = getelementptr inbounds %struct.anon, %struct.anon* %fs72, i32 0, i32 2
  %64 = load %struct._BoundSeg*, %struct._BoundSeg** %segs73, align 8
  %arrayidx74 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %64, i64 %idxprom71
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx74, i32 0, i32 3
  %65 = load i32, i32* %y2, align 4
  %add75 = add nsw i32 %65, %61
  store i32 %add75, i32* %y2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.154

if.else.76:                                       ; preds = %if.end.43
  %67 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs77 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %67, i32 0, i32 6
  %num_segs78 = getelementptr inbounds %struct.anon, %struct.anon* %fs77, i32 0, i32 3
  store i32 4, i32* %num_segs78, align 4
  %call79 = call noalias i8* @g_malloc0_n(i64 4, i64 20)
  %68 = bitcast i8* %call79 to %struct._BoundSeg*
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs80 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %69, i32 0, i32 6
  %segs81 = getelementptr inbounds %struct.anon, %struct.anon* %fs80, i32 0, i32 2
  store %struct._BoundSeg* %68, %struct._BoundSeg** %segs81, align 8
  %70 = load i32, i32* %off_x, align 4
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs82 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %71, i32 0, i32 6
  %segs83 = getelementptr inbounds %struct.anon, %struct.anon* %fs82, i32 0, i32 2
  %72 = load %struct._BoundSeg*, %struct._BoundSeg** %segs83, align 8
  %arrayidx84 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %72, i64 0
  %x185 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx84, i32 0, i32 0
  store i32 %70, i32* %x185, align 4
  %73 = load i32, i32* %off_y, align 4
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs86 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %74, i32 0, i32 6
  %segs87 = getelementptr inbounds %struct.anon, %struct.anon* %fs86, i32 0, i32 2
  %75 = load %struct._BoundSeg*, %struct._BoundSeg** %segs87, align 8
  %arrayidx88 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %75, i64 0
  %y189 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx88, i32 0, i32 1
  store i32 %73, i32* %y189, align 4
  %76 = load i32, i32* %off_x, align 4
  %77 = load i32, i32* %width, align 4
  %add90 = add nsw i32 %76, %77
  %78 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs91 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %78, i32 0, i32 6
  %segs92 = getelementptr inbounds %struct.anon, %struct.anon* %fs91, i32 0, i32 2
  %79 = load %struct._BoundSeg*, %struct._BoundSeg** %segs92, align 8
  %arrayidx93 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %79, i64 0
  %x294 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx93, i32 0, i32 2
  store i32 %add90, i32* %x294, align 4
  %80 = load i32, i32* %off_y, align 4
  %81 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs95 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %81, i32 0, i32 6
  %segs96 = getelementptr inbounds %struct.anon, %struct.anon* %fs95, i32 0, i32 2
  %82 = load %struct._BoundSeg*, %struct._BoundSeg** %segs96, align 8
  %arrayidx97 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %82, i64 0
  %y298 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx97, i32 0, i32 3
  store i32 %80, i32* %y298, align 4
  %83 = load i32, i32* %off_x, align 4
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs99 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %84, i32 0, i32 6
  %segs100 = getelementptr inbounds %struct.anon, %struct.anon* %fs99, i32 0, i32 2
  %85 = load %struct._BoundSeg*, %struct._BoundSeg** %segs100, align 8
  %arrayidx101 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %85, i64 1
  %x1102 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx101, i32 0, i32 0
  store i32 %83, i32* %x1102, align 4
  %86 = load i32, i32* %off_y, align 4
  %87 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs103 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %87, i32 0, i32 6
  %segs104 = getelementptr inbounds %struct.anon, %struct.anon* %fs103, i32 0, i32 2
  %88 = load %struct._BoundSeg*, %struct._BoundSeg** %segs104, align 8
  %arrayidx105 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %88, i64 1
  %y1106 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx105, i32 0, i32 1
  store i32 %86, i32* %y1106, align 4
  %89 = load i32, i32* %off_x, align 4
  %90 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs107 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %90, i32 0, i32 6
  %segs108 = getelementptr inbounds %struct.anon, %struct.anon* %fs107, i32 0, i32 2
  %91 = load %struct._BoundSeg*, %struct._BoundSeg** %segs108, align 8
  %arrayidx109 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %91, i64 1
  %x2110 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx109, i32 0, i32 2
  store i32 %89, i32* %x2110, align 4
  %92 = load i32, i32* %off_y, align 4
  %93 = load i32, i32* %height, align 4
  %add111 = add nsw i32 %92, %93
  %94 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs112 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %94, i32 0, i32 6
  %segs113 = getelementptr inbounds %struct.anon, %struct.anon* %fs112, i32 0, i32 2
  %95 = load %struct._BoundSeg*, %struct._BoundSeg** %segs113, align 8
  %arrayidx114 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %95, i64 1
  %y2115 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx114, i32 0, i32 3
  store i32 %add111, i32* %y2115, align 4
  %96 = load i32, i32* %off_x, align 4
  %97 = load i32, i32* %width, align 4
  %add116 = add nsw i32 %96, %97
  %98 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs117 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %98, i32 0, i32 6
  %segs118 = getelementptr inbounds %struct.anon, %struct.anon* %fs117, i32 0, i32 2
  %99 = load %struct._BoundSeg*, %struct._BoundSeg** %segs118, align 8
  %arrayidx119 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %99, i64 2
  %x1120 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx119, i32 0, i32 0
  store i32 %add116, i32* %x1120, align 4
  %100 = load i32, i32* %off_y, align 4
  %101 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs121 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %101, i32 0, i32 6
  %segs122 = getelementptr inbounds %struct.anon, %struct.anon* %fs121, i32 0, i32 2
  %102 = load %struct._BoundSeg*, %struct._BoundSeg** %segs122, align 8
  %arrayidx123 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %102, i64 2
  %y1124 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx123, i32 0, i32 1
  store i32 %100, i32* %y1124, align 4
  %103 = load i32, i32* %off_x, align 4
  %104 = load i32, i32* %width, align 4
  %add125 = add nsw i32 %103, %104
  %105 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs126 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %105, i32 0, i32 6
  %segs127 = getelementptr inbounds %struct.anon, %struct.anon* %fs126, i32 0, i32 2
  %106 = load %struct._BoundSeg*, %struct._BoundSeg** %segs127, align 8
  %arrayidx128 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %106, i64 2
  %x2129 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx128, i32 0, i32 2
  store i32 %add125, i32* %x2129, align 4
  %107 = load i32, i32* %off_y, align 4
  %108 = load i32, i32* %height, align 4
  %add130 = add nsw i32 %107, %108
  %109 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs131 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %109, i32 0, i32 6
  %segs132 = getelementptr inbounds %struct.anon, %struct.anon* %fs131, i32 0, i32 2
  %110 = load %struct._BoundSeg*, %struct._BoundSeg** %segs132, align 8
  %arrayidx133 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %110, i64 2
  %y2134 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx133, i32 0, i32 3
  store i32 %add130, i32* %y2134, align 4
  %111 = load i32, i32* %off_x, align 4
  %112 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs135 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %112, i32 0, i32 6
  %segs136 = getelementptr inbounds %struct.anon, %struct.anon* %fs135, i32 0, i32 2
  %113 = load %struct._BoundSeg*, %struct._BoundSeg** %segs136, align 8
  %arrayidx137 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %113, i64 3
  %x1138 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx137, i32 0, i32 0
  store i32 %111, i32* %x1138, align 4
  %114 = load i32, i32* %off_y, align 4
  %115 = load i32, i32* %height, align 4
  %add139 = add nsw i32 %114, %115
  %116 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs140 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %116, i32 0, i32 6
  %segs141 = getelementptr inbounds %struct.anon, %struct.anon* %fs140, i32 0, i32 2
  %117 = load %struct._BoundSeg*, %struct._BoundSeg** %segs141, align 8
  %arrayidx142 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %117, i64 3
  %y1143 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx142, i32 0, i32 1
  store i32 %add139, i32* %y1143, align 4
  %118 = load i32, i32* %off_x, align 4
  %119 = load i32, i32* %width, align 4
  %add144 = add nsw i32 %118, %119
  %120 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs145 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %120, i32 0, i32 6
  %segs146 = getelementptr inbounds %struct.anon, %struct.anon* %fs145, i32 0, i32 2
  %121 = load %struct._BoundSeg*, %struct._BoundSeg** %segs146, align 8
  %arrayidx147 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %121, i64 3
  %x2148 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx147, i32 0, i32 2
  store i32 %add144, i32* %x2148, align 4
  %122 = load i32, i32* %off_y, align 4
  %123 = load i32, i32* %height, align 4
  %add149 = add nsw i32 %122, %123
  %124 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs150 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %124, i32 0, i32 6
  %segs151 = getelementptr inbounds %struct.anon, %struct.anon* %fs150, i32 0, i32 2
  %125 = load %struct._BoundSeg*, %struct._BoundSeg** %segs151, align 8
  %arrayidx152 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %125, i64 3
  %y2153 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx152, i32 0, i32 3
  store i32 %add149, i32* %y2153, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.76, %for.end
  %126 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs155 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %126, i32 0, i32 6
  %boundary_known156 = getelementptr inbounds %struct.anon, %struct.anon* %fs155, i32 0, i32 1
  store i32 1, i32* %boundary_known156, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.154, %do.end.23
  %127 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs158 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %127, i32 0, i32 6
  %num_segs159 = getelementptr inbounds %struct.anon, %struct.anon* %fs158, i32 0, i32 3
  %128 = load i32, i32* %num_segs159, align 4
  %129 = load i32*, i32** %n_segs.addr, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs160 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %130, i32 0, i32 6
  %segs161 = getelementptr inbounds %struct.anon, %struct.anon* %fs160, i32 0, i32 2
  %131 = load %struct._BoundSeg*, %struct._BoundSeg** %segs161, align 8
  store %struct._BoundSeg* %131, %struct._BoundSeg** %retval
  br label %return

return:                                           ; preds = %if.end.157, %if.else.21, %if.else.15, %if.else.9
  %132 = load %struct._BoundSeg*, %struct._BoundSeg** %retval
  ret %struct._BoundSeg* %132
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @g_free(i8*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._BoundSeg* @boundary_find(%struct._PixelRegion*, i32, i32, i32, i32, i32, i8 zeroext, i32*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define void @floating_sel_invalidate(%struct._GimpLayer* %layer) #0 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.floating_sel_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.floating_sel_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call18 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %14)
  %15 = bitcast %struct._GimpDrawable* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_viewable_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %16)
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %17, i32 0, i32 6
  %boundary_known = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 1
  store i32 0, i32* %boundary_known, align 4
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #3

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #3

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #3

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
