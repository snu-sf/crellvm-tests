; ModuleID = './app/core/gimpimagemap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageMapClass = type { %struct._GimpObjectClass, void (%struct._GimpImageMap*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpImageMap = type { %struct._GimpObject, %struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*, %struct._PixelRegion, %struct._PixelRegion, %struct._PixelRegionIterator*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, i32, %struct._GTimer*, i64 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GTimer = type opaque
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpPickable = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_image_map_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpImageMap\00", align 1
@gimp_image_map_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_image_map_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_map_new = private unnamed_addr constant [19 x i8] c"gimp_image_map_new\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"operation == NULL || GEGL_IS_NODE (operation)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"operation != NULL || apply_func != NULL\00", align 1
@__func__.gimp_image_map_apply = private unnamed_addr constant [21 x i8] c"gimp_image_map_apply\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"GIMP_IS_IMAGE_MAP (image_map)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dont-cache\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"gimp:tilemanager-source\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gegl:translate\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"gimp:tilemanager-sink\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"gegl-operation\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"data-written\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gegl:over\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@__func__.gimp_image_map_commit = private unnamed_addr constant [22 x i8] c"gimp_image_map_commit\00", align 1
@__func__.gimp_image_map_clear = private unnamed_addr constant [21 x i8] c"gimp_image_map_clear\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"image depth change, unable to restore original image\00", align 1
@__func__.gimp_image_map_abort = private unnamed_addr constant [21 x i8] c"gimp_image_map_abort\00", align 1
@gimp_image_map_parent_class = internal global i8* null, align 8
@GimpImageMap_private_offset = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@image_map_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"%s: %g MPixels/sec\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_map_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_map_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_map_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_map_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageMap*)* @gimp_image_map_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_pickable_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_image_map_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_map_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_image_map_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_map_parent_class, align 8
  %1 = load i32, i32* @GimpImageMap_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageMap_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageMapClass*
  call void @gimp_image_map_class_init(%struct._GimpImageMapClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_init(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_desc = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %1, i32 0, i32 2
  store i8* null, i8** %undo_desc, align 8
  %2 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %2, i32 0, i32 3
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 4
  store i32 0, i32* %undo_offset_x, align 4
  %4 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %4, i32 0, i32 5
  store i32 0, i32* %undo_offset_y, align 4
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %5, i32 0, i32 6
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* null, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %6, i32 0, i32 7
  store i8* null, i8** %apply_data, align 8
  %7 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %7, i32 0, i32 10
  store %struct._PixelRegionIterator* null, %struct._PixelRegionIterator** %PRI, align 8
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 17
  store i32 0, i32* %idle_id, align 4
  %9 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %9, i32 0, i32 18
  store %struct._GTimer* null, %struct._GTimer** %timer, align 8
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %10, i32 0, i32 19
  store i64 0, i64* %pixel_count, align 8
  %11 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer1 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %11, i32 0, i32 18
  %12 = load %struct._GTimer*, %struct._GTimer** %timer1, align 8
  %tobool = icmp ne %struct._GTimer* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %13, i32 0, i32 18
  %14 = load %struct._GTimer*, %struct._GTimer** %timer2, align 8
  call void @g_timer_stop(%struct._GTimer* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 2
  store %struct._GimpImage* (%struct._GimpPickable*)* @gimp_image_map_get_image, %struct._GimpImage* (%struct._GimpPickable*)** %get_image, align 8
  %1 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image_type = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %1, i32 0, i32 3
  store i32 (%struct._GimpPickable*)* @gimp_image_map_get_image_type, i32 (%struct._GimpPickable*)** %get_image_type, align 8
  %2 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_bytes = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %2, i32 0, i32 4
  store i32 (%struct._GimpPickable*)* @gimp_image_map_get_bytes, i32 (%struct._GimpPickable*)** %get_bytes, align 8
  %3 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_tiles = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %3, i32 0, i32 5
  store %struct._TileManager* (%struct._GimpPickable*)* @gimp_image_map_get_tiles, %struct._TileManager* (%struct._GimpPickable*)** %get_tiles, align 8
  %4 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_pixel_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %4, i32 0, i32 6
  store i32 (%struct._GimpPickable*, i32, i32, i8*)* @gimp_image_map_get_pixel_at, i32 (%struct._GimpPickable*, i32, i32, i8*)** %get_pixel_at, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImageMap* @gimp_image_map_new(%struct._GimpDrawable* %drawable, i8* %undo_desc, %struct._GeglNode* %operation, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %apply_func, i8* %apply_data) #3 {
entry:
  %retval = alloca %struct._GimpImageMap*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %operation.addr = alloca %struct._GeglNode*, align 8
  %apply_func.addr = alloca void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, align 8
  %apply_data.addr = alloca i8*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GeglNode* %operation, %struct._GeglNode** %operation.addr, align 8
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %apply_func, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func.addr, align 8
  store i8* %apply_data, i8** %apply_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_map_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_map_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %cmp21 = icmp eq %struct._GeglNode* %16, null
  br i1 %cmp21, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %17 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %18 = bitcast %struct._GeglNode* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gegl_node_get_type() #6
  store i64 %call26, i64* %__t25, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %lor.lhs.false
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type36, align 8
  %25 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %24, %25
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %27 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %28 = load i32, i32* %__r28, align 4
  store i32 %28, i32* %tmp43
  %29 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %do.body.20
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_map_new, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %30 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %cmp50 = icmp ne %struct._GeglNode* %30, null
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.body.49
  %31 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func.addr, align 8
  %cmp52 = icmp ne void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %31, null
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false.51, %do.body.49
  br label %if.end.55

if.else.54:                                       ; preds = %lor.lhs.false.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_map_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %call57 = call i64 @gimp_image_map_get_type() #6
  %call58 = call i8* (i64, i8*, ...) @g_object_new(i64 %call57, i8* null)
  %32 = bitcast i8* %call58 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %32, %struct._GimpImageMap** %image_map, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to i8*
  %call59 = call i8* @g_object_ref(i8* %34)
  %35 = bitcast i8* %call59 to %struct._GimpDrawable*
  %36 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable60 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %36, i32 0, i32 1
  store %struct._GimpDrawable* %35, %struct._GimpDrawable** %drawable60, align 8
  %37 = load i8*, i8** %undo_desc.addr, align 8
  %call61 = call noalias i8* @g_strdup(i8* %37)
  %38 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_desc62 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %38, i32 0, i32 2
  store i8* %call61, i8** %undo_desc62, align 8
  %39 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %tobool63 = icmp ne %struct._GeglNode* %39, null
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %do.end.56
  %40 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %41 = bitcast %struct._GeglNode* %40 to i8*
  %call65 = call i8* @g_object_ref(i8* %41)
  %42 = bitcast i8* %call65 to %struct._GeglNode*
  %43 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %operation66 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %43, i32 0, i32 14
  store %struct._GeglNode* %42, %struct._GeglNode** %operation66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %do.end.56
  %44 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func.addr, align 8
  %45 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %apply_func68 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %45, i32 0, i32 6
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %44, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func68, align 8
  %46 = load i8*, i8** %apply_data.addr, align 8
  %47 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %apply_data69 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %47, i32 0, i32 7
  store i8* %46, i8** %apply_data69, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = bitcast %struct._GimpDrawable* %48 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_viewable_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call70)
  %50 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpViewable*
  call void @gimp_viewable_preview_freeze(%struct._GimpViewable* %50)
  %51 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  store %struct._GimpImageMap* %51, %struct._GimpImageMap** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.else.54, %if.else.46, %if.else.17, %if.else.9
  %52 = load %struct._GimpImageMap*, %struct._GimpImageMap** %retval
  ret %struct._GimpImageMap* %52
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_ref(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_viewable_preview_freeze(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_image_map_apply(%struct._GimpImageMap* %image_map, %struct._GeglRectangle* %visible) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %visible.addr = alloca %struct._GeglRectangle*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sink_operation = alloca %struct._GObject*, align 8
  %over = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  store %struct._GeglRectangle* %visible, %struct._GeglRectangle** %visible.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %1 = bitcast %struct._GimpImageMap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_map_apply, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_cancel_any_idle_jobs(%struct._GimpImageMap* %13)
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  br label %return

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable17 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %18, i32 0, i32 1
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable17, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %call20 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %21, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.16
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %22 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_update_undo_tiles(%struct._GimpImageMap* %22, %struct._GeglRectangle* %rect)
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %23, i32 0, i32 14
  %24 = load %struct._GeglNode*, %struct._GeglNode** %operation, align 8
  %tobool24 = icmp ne %struct._GeglNode* %24, null
  br i1 %tobool24, label %if.then.25, label %if.else.85

if.then.25:                                       ; preds = %if.end.23
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %25, i32 0, i32 11
  %26 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %tobool26 = icmp ne %struct._GeglNode* %26, null
  br i1 %tobool26, label %if.end.74, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %call28 = call %struct._GeglNode* @gegl_node_new()
  %27 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl29 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %27, i32 0, i32 11
  store %struct._GeglNode* %call28, %struct._GeglNode** %gegl29, align 8
  %28 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl30 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %28, i32 0, i32 11
  %29 = load %struct._GeglNode*, %struct._GeglNode** %gegl30, align 8
  %30 = bitcast %struct._GeglNode* %29 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl31 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %31, i32 0, i32 11
  %32 = load %struct._GeglNode*, %struct._GeglNode** %gegl31, align 8
  %call32 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* null)
  %33 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %input = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %33, i32 0, i32 12
  store %struct._GeglNode* %call32, %struct._GeglNode** %input, align 8
  %34 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl33 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %34, i32 0, i32 11
  %35 = load %struct._GeglNode*, %struct._GeglNode** %gegl33, align 8
  %call34 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %36 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %translate = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %36, i32 0, i32 13
  store %struct._GeglNode* %call34, %struct._GeglNode** %translate, align 8
  %37 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl35 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %37, i32 0, i32 11
  %38 = load %struct._GeglNode*, %struct._GeglNode** %gegl35, align 8
  %39 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation36 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %39, i32 0, i32 14
  %40 = load %struct._GeglNode*, %struct._GeglNode** %operation36, align 8
  %call37 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %38, %struct._GeglNode* %40)
  %41 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl38 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %41, i32 0, i32 11
  %42 = load %struct._GeglNode*, %struct._GeglNode** %gegl38, align 8
  %call39 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* null)
  %43 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %43, i32 0, i32 15
  store %struct._GeglNode* %call39, %struct._GeglNode** %output, align 8
  %44 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output41 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %44, i32 0, i32 15
  %45 = load %struct._GeglNode*, %struct._GeglNode** %output41, align 8
  %46 = bitcast %struct._GeglNode* %45 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._GObject** %sink_operation, i8* null)
  %47 = load %struct._GObject*, %struct._GObject** %sink_operation, align 8
  %48 = bitcast %struct._GObject* %47 to i8*
  %49 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %50 = bitcast %struct._GimpImageMap* %49 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GeglRectangle*, %struct._GimpImageMap*)* @gimp_image_map_data_written to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GObject*, %struct._GObject** %sink_operation, align 8
  %52 = bitcast %struct._GObject* %51 to i8*
  call void @g_object_unref(i8* %52)
  %53 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation43 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %53, i32 0, i32 14
  %54 = load %struct._GeglNode*, %struct._GeglNode** %operation43, align 8
  %call44 = call i32 @gegl_node_has_pad(%struct._GeglNode* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.55

land.lhs.true.46:                                 ; preds = %if.then.27
  %55 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation47 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %55, i32 0, i32 14
  %56 = load %struct._GeglNode*, %struct._GeglNode** %operation47, align 8
  %call48 = call i32 @gegl_node_has_pad(%struct._GeglNode* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %land.lhs.true.46
  %57 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %input51 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %57, i32 0, i32 12
  %58 = load %struct._GeglNode*, %struct._GeglNode** %input51, align 8
  %59 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %translate52 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %59, i32 0, i32 13
  %60 = load %struct._GeglNode*, %struct._GeglNode** %translate52, align 8
  %61 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation53 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %61, i32 0, i32 14
  %62 = load %struct._GeglNode*, %struct._GeglNode** %operation53, align 8
  %63 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output54 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %63, i32 0, i32 15
  %64 = load %struct._GeglNode*, %struct._GeglNode** %output54, align 8
  call void (%struct._GeglNode*, %struct._GeglNode*, ...) @gegl_node_link_many(%struct._GeglNode* %58, %struct._GeglNode* %60, %struct._GeglNode* %62, %struct._GeglNode* %64, i8* null)
  br label %if.end.73

if.else.55:                                       ; preds = %land.lhs.true.46, %if.then.27
  %65 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation56 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %65, i32 0, i32 14
  %66 = load %struct._GeglNode*, %struct._GeglNode** %operation56, align 8
  %call57 = call i32 @gegl_node_has_pad(%struct._GeglNode* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.68

if.then.59:                                       ; preds = %if.else.55
  %67 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl61 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %67, i32 0, i32 11
  %68 = load %struct._GeglNode*, %struct._GeglNode** %gegl61, align 8
  %call62 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store %struct._GeglNode* %call62, %struct._GeglNode** %over, align 8
  %69 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %input63 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %69, i32 0, i32 12
  %70 = load %struct._GeglNode*, %struct._GeglNode** %input63, align 8
  %71 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %translate64 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %71, i32 0, i32 13
  %72 = load %struct._GeglNode*, %struct._GeglNode** %translate64, align 8
  %73 = load %struct._GeglNode*, %struct._GeglNode** %over, align 8
  %74 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output65 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %74, i32 0, i32 15
  %75 = load %struct._GeglNode*, %struct._GeglNode** %output65, align 8
  call void (%struct._GeglNode*, %struct._GeglNode*, ...) @gegl_node_link_many(%struct._GeglNode* %70, %struct._GeglNode* %72, %struct._GeglNode* %73, %struct._GeglNode* %75, i8* null)
  %76 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %operation66 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %76, i32 0, i32 14
  %77 = load %struct._GeglNode*, %struct._GeglNode** %operation66, align 8
  %78 = load %struct._GeglNode*, %struct._GeglNode** %over, align 8
  %call67 = call i32 @gegl_node_connect_to(%struct._GeglNode* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._GeglNode* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.72

if.else.68:                                       ; preds = %if.else.55
  %79 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %input69 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %79, i32 0, i32 12
  %80 = load %struct._GeglNode*, %struct._GeglNode** %input69, align 8
  %81 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %translate70 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %81, i32 0, i32 13
  %82 = load %struct._GeglNode*, %struct._GeglNode** %translate70, align 8
  %83 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output71 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %83, i32 0, i32 15
  %84 = load %struct._GeglNode*, %struct._GeglNode** %output71, align 8
  call void (%struct._GeglNode*, %struct._GeglNode*, ...) @gegl_node_link_many(%struct._GeglNode* %80, %struct._GeglNode* %82, %struct._GeglNode* %84, i8* null)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.68, %if.then.59
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.50
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.25
  %85 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %input75 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %85, i32 0, i32 12
  %86 = load %struct._GeglNode*, %struct._GeglNode** %input75, align 8
  %87 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %87, i32 0, i32 3
  %88 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._TileManager* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* null)
  %89 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %translate76 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %89, i32 0, i32 13
  %90 = load %struct._GeglNode*, %struct._GeglNode** %translate76, align 8
  %x77 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %91 = load i32, i32* %x77, align 4
  %conv = sitofp i32 %91 to double
  %y78 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %92 = load i32, i32* %y78, align 4
  %conv79 = sitofp i32 %92 to double
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), double %conv79, i8* null)
  %93 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output80 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %93, i32 0, i32 15
  %94 = load %struct._GeglNode*, %struct._GeglNode** %output80, align 8
  %95 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable81 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %95, i32 0, i32 1
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable81, align 8
  %call82 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %96)
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._TileManager* %call82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* null)
  %97 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %output83 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %97, i32 0, i32 15
  %98 = load %struct._GeglNode*, %struct._GeglNode** %output83, align 8
  %call84 = call %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode* %98, %struct._GeglRectangle* %rect)
  %99 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %99, i32 0, i32 16
  store %struct._GeglProcessor* %call84, %struct._GeglProcessor** %processor, align 8
  br label %if.end.98

if.else.85:                                       ; preds = %if.end.23
  %100 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %srcPR = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %100, i32 0, i32 8
  %101 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles86 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %101, i32 0, i32 3
  %102 = load %struct._TileManager*, %struct._TileManager** %undo_tiles86, align 8
  %width87 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %103 = load i32, i32* %width87, align 4
  %height88 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %104 = load i32, i32* %height88, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %102, i32 0, i32 0, i32 %103, i32 %104, i32 0)
  %105 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %105, i32 0, i32 9
  %106 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable89 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %106, i32 0, i32 1
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable89, align 8
  %call90 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %107)
  %x91 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %108 = load i32, i32* %x91, align 4
  %y92 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %109 = load i32, i32* %y92, align 4
  %width93 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %110 = load i32, i32* %width93, align 4
  %height94 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %111 = load i32, i32* %height94, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call90, i32 %108, i32 %109, i32 %110, i32 %111, i32 1)
  %112 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %srcPR95 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %112, i32 0, i32 8
  %113 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR96 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %113, i32 0, i32 9
  %call97 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR95, %struct._PixelRegion* %destPR96)
  %114 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %114, i32 0, i32 10
  store %struct._PixelRegionIterator* %call97, %struct._PixelRegionIterator** %PRI, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.85, %if.end.74
  %115 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %115, i32 0, i32 18
  %116 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool99 = icmp ne %struct._GTimer* %116, null
  br i1 %tobool99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.end.98
  %117 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %117, i32 0, i32 19
  store i64 0, i64* %pixel_count, align 8
  %118 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer101 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %118, i32 0, i32 18
  %119 = load %struct._GTimer*, %struct._GTimer** %timer101, align 8
  call void @g_timer_start(%struct._GTimer* %119)
  %120 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer102 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %120, i32 0, i32 18
  %121 = load %struct._GTimer*, %struct._GTimer** %timer102, align 8
  call void @g_timer_stop(%struct._GTimer* %121)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.end.98
  %122 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %123 = bitcast %struct._GimpImageMap* %122 to i8*
  %call104 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpImageMap*)* @gimp_image_map_do to i32 (i8*)*), i8* %123)
  %124 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %124, i32 0, i32 17
  store i32 %call104, i32* %idle_id, align 4
  br label %return

return:                                           ; preds = %if.end.103, %if.then.22, %if.then.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_cancel_any_idle_jobs(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 17
  %1 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id1 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %2, i32 0, i32 17
  %3 = load i32, i32* %idle_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %4, i32 0, i32 17
  store i32 0, i32* %idle_id2, align 4
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_kill_any_idle_processors(%struct._GimpImageMap* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_update_undo_tiles(%struct._GimpImageMap* %image_map, %struct._GeglRectangle* %rect) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %rect.addr = alloca %struct._GeglRectangle*, align 8
  %undo_offset_x = alloca i32, align 4
  %undo_offset_y = alloca i32, align 4
  %undo_width = alloca i32, align 4
  %undo_height = alloca i32, align 4
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  store %struct._GeglRectangle* %rect, %struct._GeglRectangle** %rect.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 3
  %1 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool = icmp ne %struct._TileManager* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x1 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %2, i32 0, i32 4
  %3 = load i32, i32* %undo_offset_x1, align 4
  store i32 %3, i32* %undo_offset_x, align 4
  %4 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %4, i32 0, i32 5
  %5 = load i32, i32* %undo_offset_y2, align 4
  store i32 %5, i32* %undo_offset_y, align 4
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles3 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %6, i32 0, i32 3
  %7 = load %struct._TileManager*, %struct._TileManager** %undo_tiles3, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %7)
  store i32 %call, i32* %undo_width, align 4
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles4 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 3
  %9 = load %struct._TileManager*, %struct._TileManager** %undo_tiles4, align 8
  %call5 = call i32 @tile_manager_height(%struct._TileManager* %9)
  store i32 %call5, i32* %undo_height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %undo_offset_x, align 4
  store i32 0, i32* %undo_offset_y, align 4
  store i32 0, i32* %undo_width, align 4
  store i32 0, i32* %undo_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles6 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %10, i32 0, i32 3
  %11 = load %struct._TileManager*, %struct._TileManager** %undo_tiles6, align 8
  %tobool7 = icmp ne %struct._TileManager* %11, null
  br i1 %tobool7, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %undo_offset_x, align 4
  %13 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %13, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %cmp = icmp ne i32 %12, %14
  br i1 %cmp, label %if.then.14, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %15 = load i32, i32* %undo_offset_y, align 4
  %16 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %16, i32 0, i32 1
  %17 = load i32, i32* %y, align 4
  %cmp9 = icmp ne i32 %15, %17
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %18 = load i32, i32* %undo_width, align 4
  %19 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %19, i32 0, i32 2
  %20 = load i32, i32* %width, align 4
  %cmp11 = icmp ne i32 %18, %20
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %21 = load i32, i32* %undo_height, align 4
  %22 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %22, i32 0, i32 3
  %23 = load i32, i32* %height, align 4
  %cmp13 = icmp ne i32 %21, %23
  br i1 %cmp13, label %if.then.14, label %if.end.50

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false, %if.end
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles15 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %24, i32 0, i32 3
  %25 = load %struct._TileManager*, %struct._TileManager** %undo_tiles15, align 8
  %tobool16 = icmp ne %struct._TileManager* %25, null
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.23

lor.lhs.false.17:                                 ; preds = %if.then.14
  %26 = load i32, i32* %undo_width, align 4
  %27 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %width18 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %27, i32 0, i32 2
  %28 = load i32, i32* %width18, align 4
  %cmp19 = icmp ne i32 %26, %28
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %29 = load i32, i32* %undo_height, align 4
  %30 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %height21 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %30, i32 0, i32 3
  %31 = load i32, i32* %height21, align 4
  %cmp22 = icmp ne i32 %29, %31
  br i1 %cmp22, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %if.then.14
  %32 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles24 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %32, i32 0, i32 3
  %33 = load %struct._TileManager*, %struct._TileManager** %undo_tiles24, align 8
  %tobool25 = icmp ne %struct._TileManager* %33, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %34 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles27 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %34, i32 0, i32 3
  %35 = load %struct._TileManager*, %struct._TileManager** %undo_tiles27, align 8
  call void @tile_manager_unref(%struct._TileManager* %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  %36 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %width29 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %36, i32 0, i32 2
  %37 = load i32, i32* %width29, align 4
  %38 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %height30 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %38, i32 0, i32 3
  %39 = load i32, i32* %height30, align 4
  %40 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %40, i32 0, i32 1
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %41)
  %call32 = call %struct._TileManager* @tile_manager_new(i32 %37, i32 %39, i32 %call31)
  %42 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles33 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %42, i32 0, i32 3
  store %struct._TileManager* %call32, %struct._TileManager** %undo_tiles33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.28, %lor.lhs.false.20
  %43 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %srcPR = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %43, i32 0, i32 8
  %44 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %44, i32 0, i32 1
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %call36 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %45)
  %46 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %x37 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %46, i32 0, i32 0
  %47 = load i32, i32* %x37, align 4
  %48 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %y38 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %48, i32 0, i32 1
  %49 = load i32, i32* %y38, align 4
  %50 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %width39 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %50, i32 0, i32 2
  %51 = load i32, i32* %width39, align 4
  %52 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %height40 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %52, i32 0, i32 3
  %53 = load i32, i32* %height40, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call36, i32 %47, i32 %49, i32 %51, i32 %53, i32 0)
  %54 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %54, i32 0, i32 9
  %55 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles41 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %55, i32 0, i32 3
  %56 = load %struct._TileManager*, %struct._TileManager** %undo_tiles41, align 8
  %57 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %width42 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %57, i32 0, i32 2
  %58 = load i32, i32* %width42, align 4
  %59 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %height43 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %59, i32 0, i32 3
  %60 = load i32, i32* %height43, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %56, i32 0, i32 0, i32 %58, i32 %60, i32 1)
  %61 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %srcPR44 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %61, i32 0, i32 8
  %62 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR45 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %62, i32 0, i32 9
  call void @copy_region(%struct._PixelRegion* %srcPR44, %struct._PixelRegion* %destPR45)
  %63 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %x46 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %63, i32 0, i32 0
  %64 = load i32, i32* %x46, align 4
  %65 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x47 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %65, i32 0, i32 4
  store i32 %64, i32* %undo_offset_x47, align 4
  %66 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %y48 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %66, i32 0, i32 1
  %67 = load i32, i32* %y48, align 4
  %68 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y49 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %68, i32 0, i32 5
  store i32 %67, i32* %undo_offset_y49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.34, %lor.lhs.false.12
  ret void
}

declare %struct._GeglNode* @gegl_node_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_data_written(%struct._GObject* %operation, %struct._GeglRectangle* %extent, %struct._GimpImageMap* %image_map) #3 {
entry:
  %operation.addr = alloca %struct._GObject*, align 8
  %extent.addr = alloca %struct._GeglRectangle*, align 8
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GObject* %operation, %struct._GObject** %operation.addr, align 8
  store %struct._GeglRectangle* %extent, %struct._GeglRectangle** %extent.addr, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 3
  %1 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %2 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %4 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %4, i32 0, i32 4
  %5 = load i32, i32* %undo_offset_x, align 4
  %sub = sub nsw i32 %3, %5
  %6 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 5
  %9 = load i32, i32* %undo_offset_y, align 4
  %sub1 = sub nsw i32 %7, %9
  %10 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %12 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %12, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %1, i32 %sub, i32 %sub1, i32 %11, i32 %13, i32 0)
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %15)
  %16 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %x2 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %16, i32 0, i32 0
  %17 = load i32, i32* %x2, align 4
  %18 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %y3 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %18, i32 0, i32 1
  %19 = load i32, i32* %y3, align 4
  %20 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %width4 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %20, i32 0, i32 2
  %21 = load i32, i32* %width4, align 4
  %22 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %height5 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %22, i32 0, i32 3
  %23 = load i32, i32* %height5, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call, i32 %17, i32 %19, i32 %21, i32 %23, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable6 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %24, i32 0, i32 1
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable6, align 8
  %call7 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %25)
  %26 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %x8 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %26, i32 0, i32 0
  %27 = load i32, i32* %x8, align 4
  %28 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %y9 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %28, i32 0, i32 1
  %29 = load i32, i32* %y9, align 4
  %30 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %width10 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %30, i32 0, i32 2
  %31 = load i32, i32* %width10, align 4
  %32 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %height11 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %32, i32 0, i32 3
  %33 = load i32, i32* %height11, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call7, i32 %27, i32 %29, i32 %31, i32 %33, i32 0)
  %34 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable12 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %34, i32 0, i32 1
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable12, align 8
  %36 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %x13 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %36, i32 0, i32 0
  %37 = load i32, i32* %x13, align 4
  %38 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %y14 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %38, i32 0, i32 1
  %39 = load i32, i32* %y14, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %35, %struct._PixelRegion* %srcPR, i32 0, i8* null, double 1.000000e+00, i32 24, %struct._TileManager* null, %struct._PixelRegion* null, i32 %37, i32 %39)
  %40 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable15 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %40, i32 0, i32 1
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable15, align 8
  %42 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %x16 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %42, i32 0, i32 0
  %43 = load i32, i32* %x16, align 4
  %44 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %y17 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %44, i32 0, i32 1
  %45 = load i32, i32* %y17, align 4
  %46 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %width18 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %46, i32 0, i32 2
  %47 = load i32, i32* %width18, align 4
  %48 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %height19 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %48, i32 0, i32 3
  %49 = load i32, i32* %height19, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %41, i32 %43, i32 %45, i32 %47, i32 %49)
  %50 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %50, i32 0, i32 18
  %51 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool = icmp ne %struct._GTimer* %51, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %52 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %width20 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %52, i32 0, i32 2
  %53 = load i32, i32* %width20, align 4
  %54 = load %struct._GeglRectangle*, %struct._GeglRectangle** %extent.addr, align 8
  %height21 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %54, i32 0, i32 3
  %55 = load i32, i32* %height21, align 4
  %mul = mul nsw i32 %53, %55
  %conv = sext i32 %mul to i64
  %56 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %56, i32 0, i32 19
  %57 = load i64, i64* %pixel_count, align 8
  %add = add i64 %57, %conv
  store i64 %add, i64* %pixel_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

declare i32 @gegl_node_has_pad(%struct._GeglNode*, i8*) #1

declare void @gegl_node_link_many(%struct._GeglNode*, %struct._GeglNode*, ...) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

declare %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable*) #1

declare %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode*, %struct._GeglRectangle*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare void @g_timer_start(%struct._GTimer*) #1

declare void @g_timer_stop(%struct._GTimer*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_do(%struct._GimpImageMap* %image_map) #3 {
entry:
  %retval = alloca i32, align 4
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %pending = alloca i32, align 4
  %i = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %2 = bitcast %struct._GimpDrawable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call i32 @gimp_item_is_attached(%struct._GimpItem* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %4, i32 0, i32 17
  store i32 0, i32* %idle_id, align 4
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_kill_any_idle_processors(%struct._GimpImageMap* %5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %gegl = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %6, i32 0, i32 11
  %7 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %tobool3 = icmp ne %struct._GeglNode* %7, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 18
  %9 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool5 = icmp ne %struct._GTimer* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer7 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %10, i32 0, i32 18
  %11 = load %struct._GTimer*, %struct._GTimer** %timer7, align 8
  call void @g_timer_continue(%struct._GTimer* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.4
  %12 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %12, i32 0, i32 16
  %13 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %call9 = call i32 @gegl_processor_work(%struct._GeglProcessor* %13, double* null)
  store i32 %call9, i32* %pending, align 4
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer10 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 18
  %15 = load %struct._GTimer*, %struct._GTimer** %timer10, align 8
  %tobool11 = icmp ne %struct._GTimer* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %16 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer13 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %16, i32 0, i32 18
  %17 = load %struct._GTimer*, %struct._GTimer** %timer13, align 8
  call void @g_timer_stop(%struct._GTimer* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.8
  %18 = load i32, i32* %pending, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.end.26, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %19 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer17 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %19, i32 0, i32 18
  %20 = load %struct._GTimer*, %struct._GTimer** %timer17, align 8
  %tobool18 = icmp ne %struct._GTimer* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.16
  %21 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_desc = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %21, i32 0, i32 2
  %22 = load i8*, i8** %undo_desc, align 8
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %23, i32 0, i32 19
  %24 = load i64, i64* %pixel_count, align 8
  %conv = uitofp i64 %24 to double
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer20 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %25, i32 0, i32 18
  %26 = load %struct._GTimer*, %struct._GTimer** %timer20, align 8
  %call21 = call double @g_timer_elapsed(%struct._GTimer* %26, i64* null)
  %mul = fmul double 1.000000e+06, %call21
  %div = fdiv double %conv, %mul
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %22, double %div)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.16
  %27 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor23 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %27, i32 0, i32 16
  %28 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor23, align 8
  %29 = bitcast %struct._GeglProcessor* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor24 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %30, i32 0, i32 16
  store %struct._GeglProcessor* null, %struct._GeglProcessor** %processor24, align 8
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id25 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %31, i32 0, i32 17
  store i32 0, i32* %idle_id25, align 4
  %32 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %33 = bitcast %struct._GimpImageMap* %32 to i8*
  %34 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @image_map_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %33, i32 %34, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.14
  br label %if.end.77

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %35, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer28 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %36, i32 0, i32 18
  %37 = load %struct._GTimer*, %struct._GTimer** %timer28, align 8
  %tobool29 = icmp ne %struct._GTimer* %37, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.body
  %38 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer31 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %38, i32 0, i32 18
  %39 = load %struct._GTimer*, %struct._GTimer** %timer31, align 8
  call void @g_timer_continue(%struct._GTimer* %39)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.body
  %40 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR33 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %40, i32 0, i32 9
  %x34 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR33, i32 0, i32 6
  %41 = load i32, i32* %x34, align 4
  store i32 %41, i32* %x, align 4
  %42 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR35 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %42, i32 0, i32 9
  %y36 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR35, i32 0, i32 7
  %43 = load i32, i32* %y36, align 4
  store i32 %43, i32* %y, align 4
  %44 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR37 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %44, i32 0, i32 9
  %w38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR37, i32 0, i32 8
  %45 = load i32, i32* %w38, align 4
  store i32 %45, i32* %w, align 4
  %46 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR39 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %46, i32 0, i32 9
  %h40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR39, i32 0, i32 9
  %47 = load i32, i32* %h40, align 4
  store i32 %47, i32* %h, align 4
  %48 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %48, i32 0, i32 3
  %49 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %50 = load i32, i32* %x, align 4
  %51 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %51, i32 0, i32 4
  %52 = load i32, i32* %undo_offset_x, align 4
  %sub = sub nsw i32 %50, %52
  %53 = load i32, i32* %y, align 4
  %54 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %54, i32 0, i32 5
  %55 = load i32, i32* %undo_offset_y, align 4
  %sub41 = sub nsw i32 %53, %55
  %56 = load i32, i32* %w, align 4
  %57 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %49, i32 %sub, i32 %sub41, i32 %56, i32 %57, i32 0)
  %58 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable42 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %58, i32 0, i32 1
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable42, align 8
  %call43 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %59)
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %w, align 4
  %63 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call43, i32 %60, i32 %61, i32 %62, i32 %63, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %64 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %64, i32 0, i32 6
  %65 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %66 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %66, i32 0, i32 7
  %67 = load i8*, i8** %apply_data, align 8
  %68 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %srcPR44 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %68, i32 0, i32 8
  %69 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %destPR45 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %69, i32 0, i32 9
  call void %65(i8* %67, %struct._PixelRegion* %srcPR44, %struct._PixelRegion* %destPR45)
  %70 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable46 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %70, i32 0, i32 1
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable46, align 8
  %call47 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %71)
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %y, align 4
  %74 = load i32, i32* %w, align 4
  %75 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call47, i32 %72, i32 %73, i32 %74, i32 %75, i32 0)
  %76 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable48 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %76, i32 0, i32 1
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable48, align 8
  %78 = load i32, i32* %x, align 4
  %79 = load i32, i32* %y, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %77, %struct._PixelRegion* %srcPR, i32 0, i8* null, double 1.000000e+00, i32 24, %struct._TileManager* null, %struct._PixelRegion* null, i32 %78, i32 %79)
  %80 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable49 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %80, i32 0, i32 1
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable49, align 8
  %82 = load i32, i32* %x, align 4
  %83 = load i32, i32* %y, align 4
  %84 = load i32, i32* %w, align 4
  %85 = load i32, i32* %h, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %86 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %86, i32 0, i32 10
  %87 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %call50 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %87)
  %88 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI51 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %88, i32 0, i32 10
  store %struct._PixelRegionIterator* %call50, %struct._PixelRegionIterator** %PRI51, align 8
  %89 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer52 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %89, i32 0, i32 18
  %90 = load %struct._GTimer*, %struct._GTimer** %timer52, align 8
  %tobool53 = icmp ne %struct._GTimer* %90, null
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.32
  %91 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer55 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %91, i32 0, i32 18
  %92 = load %struct._GTimer*, %struct._GTimer** %timer55, align 8
  call void @g_timer_stop(%struct._GTimer* %92)
  %93 = load i32, i32* %w, align 4
  %94 = load i32, i32* %h, align 4
  %mul56 = mul nsw i32 %93, %94
  %conv57 = sext i32 %mul56 to i64
  %95 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count58 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %95, i32 0, i32 19
  %96 = load i64, i64* %pixel_count58, align 8
  %add = add i64 %96, %conv57
  store i64 %add, i64* %pixel_count58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.end.32
  %97 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI60 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %97, i32 0, i32 10
  %98 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI60, align 8
  %cmp61 = icmp eq %struct._PixelRegionIterator* %98, null
  br i1 %cmp61, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %if.end.59
  %99 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer64 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %99, i32 0, i32 18
  %100 = load %struct._GTimer*, %struct._GTimer** %timer64, align 8
  %tobool65 = icmp ne %struct._GTimer* %100, null
  br i1 %tobool65, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.then.63
  %101 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_desc67 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %101, i32 0, i32 2
  %102 = load i8*, i8** %undo_desc67, align 8
  %103 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %pixel_count68 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %103, i32 0, i32 19
  %104 = load i64, i64* %pixel_count68, align 8
  %conv69 = uitofp i64 %104 to double
  %105 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %timer70 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %105, i32 0, i32 18
  %106 = load %struct._GTimer*, %struct._GTimer** %timer70, align 8
  %call71 = call double @g_timer_elapsed(%struct._GTimer* %106, i64* null)
  %mul72 = fmul double 1.000000e+06, %call71
  %div73 = fdiv double %conv69, %mul72
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %102, double %div73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.66, %if.then.63
  %107 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id75 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %107, i32 0, i32 17
  store i32 0, i32* %idle_id75, align 4
  %108 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %109 = bitcast %struct._GimpImageMap* %108 to i8*
  %110 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @image_map_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %109, i32 %110, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %if.end.26
  %112 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %113 = bitcast %struct._GimpImageMap* %112 to i8*
  %114 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @image_map_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %113, i32 %114, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.end.74, %if.end.22, %if.then
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define void @gimp_image_map_commit(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %1 = bitcast %struct._GimpImageMap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_map_commit, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.39

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %13, i32 0, i32 17
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %15, i32 0, i32 17
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %idle_id15 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %17, i32 0, i32 17
  store i32 0, i32* %idle_id15, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %18 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %call16 = call i32 @gimp_image_map_do(%struct._GimpImageMap* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %do.end
  %19 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %22)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  br label %if.end.39

if.end.24:                                        ; preds = %if.end.18
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %23, i32 0, i32 3
  %24 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool25 = icmp ne %struct._TileManager* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.end.24
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %25, i32 0, i32 4
  %26 = load i32, i32* %undo_offset_x, align 4
  store i32 %26, i32* %x, align 4
  %27 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %27, i32 0, i32 5
  %28 = load i32, i32* %undo_offset_y, align 4
  store i32 %28, i32* %y, align 4
  %29 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles30 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %29, i32 0, i32 3
  %30 = load %struct._TileManager*, %struct._TileManager** %undo_tiles30, align 8
  %call31 = call i32 @tile_manager_width(%struct._TileManager* %30)
  store i32 %call31, i32* %width, align 4
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles33 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %31, i32 0, i32 3
  %32 = load %struct._TileManager*, %struct._TileManager** %undo_tiles33, align 8
  %call34 = call i32 @tile_manager_height(%struct._TileManager* %32)
  store i32 %call34, i32* %height, align 4
  %33 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %35 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_desc = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %35, i32 0, i32 2
  %36 = load i8*, i8** %undo_desc, align 8
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %41 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles36 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %41, i32 0, i32 3
  %42 = load %struct._TileManager*, %struct._TileManager** %undo_tiles36, align 8
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %34, i8* %36, i32 %37, i32 %38, i32 %39, i32 %40, %struct._TileManager* %42, i32 0)
  %43 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles37 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %43, i32 0, i32 3
  %44 = load %struct._TileManager*, %struct._TileManager** %undo_tiles37, align 8
  call void @tile_manager_unref(%struct._TileManager* %44)
  %45 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles38 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %45, i32 0, i32 3
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.9, %if.then.23, %if.then.26, %if.end.24
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @gimp_drawable_push_undo(%struct._GimpDrawable*, i8*, i32, i32, i32, i32, %struct._TileManager*, i32) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_map_clear(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %1 = bitcast %struct._GimpImageMap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_map_clear, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.40

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_cancel_any_idle_jobs(%struct._GimpImageMap* %13)
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  br label %if.end.40

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %18, i32 0, i32 3
  %19 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool17 = icmp ne %struct._TileManager* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %if.end.16
  %20 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %20, i32 0, i32 4
  %21 = load i32, i32* %undo_offset_x, align 4
  store i32 %21, i32* %x, align 4
  %22 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %22, i32 0, i32 5
  %23 = load i32, i32* %undo_offset_y, align 4
  store i32 %23, i32* %y, align 4
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles24 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %24, i32 0, i32 3
  %25 = load %struct._TileManager*, %struct._TileManager** %undo_tiles24, align 8
  %call25 = call i32 @tile_manager_width(%struct._TileManager* %25)
  store i32 %call25, i32* %width, align 4
  %26 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles27 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %26, i32 0, i32 3
  %27 = load %struct._TileManager*, %struct._TileManager** %undo_tiles27, align 8
  %call28 = call i32 @tile_manager_height(%struct._TileManager* %27)
  store i32 %call28, i32* %height, align 4
  %28 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles29 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %28, i32 0, i32 3
  %29 = load %struct._TileManager*, %struct._TileManager** %undo_tiles29, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %29, i32 0, i32 0, i32 %30, i32 %31, i32 0)
  %32 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable30 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %32, i32 0, i32 1
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable30, align 8
  %call31 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %33)
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call31, i32 %34, i32 %35, i32 %36, i32 %37, i32 1)
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %38 = load i32, i32* %bytes, align 4
  %bytes32 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %39 = load i32, i32* %bytes32, align 4
  %cmp33 = icmp ne i32 %38, %39
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.then.18
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.37

if.else.35:                                       ; preds = %if.then.18
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %40 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable36 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %40, i32 0, i32 1
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable36, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  %46 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles38 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %46, i32 0, i32 3
  %47 = load %struct._TileManager*, %struct._TileManager** %undo_tiles38, align 8
  call void @tile_manager_unref(%struct._TileManager* %47)
  %48 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %undo_tiles39 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %48, i32 0, i32 3
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.9, %if.then.15, %if.end.37, %if.end.16
  ret void
}

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_map_abort(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %1 = bitcast %struct._GimpImageMap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_map_abort, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_cancel_any_idle_jobs(%struct._GimpImageMap* %13)
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  br label %return

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  call void @gimp_image_map_clear(%struct._GimpImageMap* %18)
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_class_init(%struct._GimpImageMapClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageMapClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpImageMapClass* %klass, %struct._GimpImageMapClass** %klass.addr, align 8
  %0 = load %struct._GimpImageMapClass*, %struct._GimpImageMapClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageMapClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpImageMapClass*, %struct._GimpImageMapClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpImageMapClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i64 %5, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @image_map_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_image_map_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_image_map_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  call void @gimp_viewable_preview_thaw(%struct._GimpViewable* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_image_map_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_desc = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 2
  %4 = load i8*, i8** %undo_desc, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_desc2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %5, i32 0, i32 2
  %6 = load i8*, i8** %undo_desc2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_desc3 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %7, i32 0, i32 2
  store i8* null, i8** %undo_desc3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 3
  %9 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool4 = icmp ne %struct._TileManager* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles6 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %10, i32 0, i32 3
  %11 = load %struct._TileManager*, %struct._TileManager** %undo_tiles6, align 8
  call void @tile_manager_unref(%struct._TileManager* %11)
  %12 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles7 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %12, i32 0, i32 3
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  call void @gimp_image_map_cancel_any_idle_jobs(%struct._GimpImageMap* %13)
  %14 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %gegl = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %14, i32 0, i32 11
  %15 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %tobool9 = icmp ne %struct._GeglNode* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %gegl11 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %16, i32 0, i32 11
  %17 = load %struct._GeglNode*, %struct._GeglNode** %gegl11, align 8
  %18 = bitcast %struct._GeglNode* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %gegl12 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %19, i32 0, i32 11
  store %struct._GeglNode* null, %struct._GeglNode** %gegl12, align 8
  %20 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %input = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %20, i32 0, i32 12
  store %struct._GeglNode* null, %struct._GeglNode** %input, align 8
  %21 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %translate = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %21, i32 0, i32 13
  store %struct._GeglNode* null, %struct._GeglNode** %translate, align 8
  %22 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %output = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %22, i32 0, i32 15
  store %struct._GeglNode* null, %struct._GeglNode** %output, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %operation = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %23, i32 0, i32 14
  %24 = load %struct._GeglNode*, %struct._GeglNode** %operation, align 8
  %tobool14 = icmp ne %struct._GeglNode* %24, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %25 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %operation16 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %25, i32 0, i32 14
  %26 = load %struct._GeglNode*, %struct._GeglNode** %operation16, align 8
  %27 = bitcast %struct._GeglNode* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %operation17 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %28, i32 0, i32 14
  store %struct._GeglNode* null, %struct._GeglNode** %operation17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %29 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %29, i32 0, i32 1
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool19 = icmp ne %struct._GimpDrawable* %30, null
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %31 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable21 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %31, i32 0, i32 1
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable21, align 8
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %32)
  %33 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable22 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable22, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to i8*
  call void @g_object_unref(i8* %35)
  %36 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable23 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %36, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %37 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %timer = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %37, i32 0, i32 18
  %38 = load %struct._GTimer*, %struct._GTimer** %timer, align 8
  %tobool25 = icmp ne %struct._GTimer* %38, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.24
  %39 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %timer27 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %39, i32 0, i32 18
  %40 = load %struct._GTimer*, %struct._GTimer** %timer27, align 8
  call void @g_timer_destroy(%struct._GTimer* %40)
  %41 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %timer28 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %41, i32 0, i32 18
  store %struct._GTimer* null, %struct._GTimer** %timer28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.24
  %42 = load i8*, i8** @gimp_image_map_parent_class, align 8
  %43 = bitcast i8* %42 to %struct._GTypeClass*
  %call30 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %43, i64 80)
  %44 = bitcast %struct._GTypeClass* %call30 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %44, i32 0, i32 6
  %45 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %46 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %45(%struct._GObject* %46)
  ret void
}

declare void @gimp_viewable_preview_thaw(%struct._GimpViewable*) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable*) #1

declare void @g_timer_destroy(%struct._GTimer*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpImage* @gimp_image_map_get_image(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pickable_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPickable*
  %call4 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %6)
  ret %struct._GimpImage* %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_get_image_type(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pickable_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPickable*
  %call4 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %6)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_get_bytes(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pickable_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPickable*
  %call4 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %6)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gimp_image_map_get_tiles(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 3
  %4 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %5, i32 0, i32 3
  %6 = load %struct._TileManager*, %struct._TileManager** %undo_tiles2, align 8
  store %struct._TileManager* %6, %struct._TileManager** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_pickable_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPickable*
  %call5 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %10)
  store %struct._TileManager* %call5, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_get_pixel_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y, i8* %pixel) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %image_map = alloca %struct._GimpImageMap*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMap*
  store %struct._GimpImageMap* %2, %struct._GimpImageMap** %image_map, align 8
  %3 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %6, %struct._GimpItem** %item, align 8
  %7 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %x.addr, align 4
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call i32 @gimp_item_get_width(%struct._GimpItem* %9)
  %cmp5 = icmp slt i32 %8, %call4
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %y.addr, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call9 = call i32 @gimp_item_get_height(%struct._GimpItem* %12)
  %cmp10 = icmp slt i32 %11, %call9
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  %13 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %13, i32 0, i32 3
  %14 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool = icmp ne %struct._TileManager* %14, null
  br i1 %tobool, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %if.then
  %15 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_offset_x = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %15, i32 0, i32 4
  %16 = load i32, i32* %undo_offset_x, align 4
  store i32 %16, i32* %offset_x, align 4
  %17 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_offset_y = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %17, i32 0, i32 5
  %18 = load i32, i32* %undo_offset_y, align 4
  store i32 %18, i32* %offset_y, align 4
  %19 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles12 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %19, i32 0, i32 3
  %20 = load %struct._TileManager*, %struct._TileManager** %undo_tiles12, align 8
  %call13 = call i32 @tile_manager_width(%struct._TileManager* %20)
  store i32 %call13, i32* %width, align 4
  %21 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles14 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %21, i32 0, i32 3
  %22 = load %struct._TileManager*, %struct._TileManager** %undo_tiles14, align 8
  %call15 = call i32 @tile_manager_height(%struct._TileManager* %22)
  store i32 %call15, i32* %height, align 4
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %offset_x, align 4
  %cmp16 = icmp sge i32 %23, %24
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %if.then.11
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %offset_x, align 4
  %27 = load i32, i32* %width, align 4
  %add = add nsw i32 %26, %27
  %cmp18 = icmp slt i32 %25, %add
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %offset_y, align 4
  %cmp20 = icmp sge i32 %28, %29
  br i1 %cmp20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %offset_y, align 4
  %32 = load i32, i32* %height, align 4
  %add22 = add nsw i32 %31, %32
  %cmp23 = icmp slt i32 %30, %add22
  br i1 %cmp23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true.21
  %33 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %undo_tiles25 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %33, i32 0, i32 3
  %34 = load %struct._TileManager*, %struct._TileManager** %undo_tiles25, align 8
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %35, %36
  %37 = load i32, i32* %y.addr, align 4
  %38 = load i32, i32* %offset_y, align 4
  %sub26 = sub nsw i32 %37, %38
  %39 = load i8*, i8** %pixel.addr, align 8
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %34, i32 %sub, i32 %sub26, i8* %39)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.17, %if.then.11
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %40 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %drawable28 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %40, i32 0, i32 1
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable28, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_pickable_interface_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call29)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpPickable*
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %y.addr, align 4
  %46 = load i8*, i8** %pixel.addr, align 8
  %call31 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %43, i32 %44, i32 %45, i8* %46)
  store i32 %call31, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.27, %if.then.24
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #1

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #1

declare i32 @gimp_pickable_get_bytes(%struct._GimpPickable*) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_kill_any_idle_processors(%struct._GimpImageMap* %image_map) #3 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  %0 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %0, i32 0, i32 16
  %1 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %tobool = icmp ne %struct._GeglProcessor* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor1 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %2, i32 0, i32 16
  %3 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor1, align 8
  %4 = bitcast %struct._GeglProcessor* %3 to i8*
  call void @g_object_unref(i8* %4)
  %5 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %processor2 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %5, i32 0, i32 16
  store %struct._GeglProcessor* null, %struct._GeglProcessor** %processor2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %6, i32 0, i32 10
  %7 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %tobool3 = icmp ne %struct._PixelRegionIterator* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI5 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %8, i32 0, i32 10
  %9 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI5, align 8
  call void @pixel_regions_process_stop(%struct._PixelRegionIterator* %9)
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map.addr, align 8
  %PRI6 = getelementptr inbounds %struct._GimpImageMap, %struct._GimpImageMap* %10, i32 0, i32 10
  store %struct._PixelRegionIterator* null, %struct._PixelRegionIterator** %PRI6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  ret void
}

declare void @g_timer_continue(%struct._GTimer*) #1

declare i32 @gegl_processor_work(%struct._GeglProcessor*, double*) #1

declare void @g_printerr(i8*, ...) #1

declare double @g_timer_elapsed(%struct._GTimer*, i64*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare void @pixel_regions_process_stop(%struct._PixelRegionIterator*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
