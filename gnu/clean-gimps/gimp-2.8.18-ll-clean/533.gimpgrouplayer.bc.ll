; ModuleID = './app/core/gimpgrouplayer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGroupLayerClass = type { %struct._GimpLayerClass }
%struct._GimpLayerClass = type { %struct._GimpDrawableClass, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)* }
%struct._GimpDrawableClass = type { %struct._GimpItemClass, void (%struct._GimpDrawable*, i32, i32, i32, i32)*, void (%struct._GimpDrawable*)*, i64 (%struct._GimpDrawable*, i32, i32)*, void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)*, %struct._TileManager* (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._PixelRegion = type opaque
%struct._GimpGroupLayer = type { %struct._GimpLayer }
%struct._GimpGroupLayerPrivate = type { %struct._GimpContainer*, %struct._GimpProjection*, %struct._GeglNode*, %struct._GeglNode*, i32, i32, i32, i32, i32 }
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpProjectableInterface = type { %struct._GTypeInterface, void (%struct._GimpProjectable*, i32, i32, i32, i32)*, void (%struct._GimpProjectable*, i32)*, void (%struct._GimpProjectable*)*, %struct._GimpImage* (%struct._GimpProjectable*)*, i32 (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)*, %struct._GeglNode* (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GimpPickable = type opaque
%struct._GimpUndo = type opaque
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpDrawableStack = type { %struct._GimpItemStack, %struct._GeglNode* }

@gimp_group_layer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpGroupLayer\00", align 1
@gimp_group_layer_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProjectableInterface*)* @gimp_projectable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_group_layer_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_group_layer_new = private unnamed_addr constant [21 x i8] c"gimp_group_layer_new\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_group_layer_get_projection = private unnamed_addr constant [32 x i8] c"gimp_group_layer_get_projection\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GROUP_LAYER (group)\00", align 1
@__func__.gimp_group_layer_suspend_resize = private unnamed_addr constant [32 x i8] c"gimp_group_layer_suspend_resize\00", align 1
@__func__.gimp_group_layer_resume_resize = private unnamed_addr constant [31 x i8] c"gimp_group_layer_resume_resize\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"private->suspend_resize > 0\00", align 1
@gimp_group_layer_parent_class = internal global i8* null, align 8
@GimpGroupLayer_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"gtk-directory\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Layer Group\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"undo-type\04Rename Layer Group\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"undo-type\04Move Layer Group\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"undo-type\04Scale Layer Group\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"undo-type\04Resize Layer Group\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"undo-type\04Flip Layer Group\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"undo-type\04Rotate Layer Group\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"undo-type\04Transform Layer Group\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"gimpgrouplayer.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_group_layer_duplicate = private unnamed_addr constant [27 x i8] c"gimp_group_layer_duplicate\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gegl:translate\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"notify::offset-x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"notify::offset-y\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"size-changed\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_group_layer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_group_layer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_group_layer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_layer_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 712, void (i8*, i8*)* bitcast (void (i8*)* @gimp_group_layer_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGroupLayer*)* @gimp_group_layer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_projectable_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_group_layer_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_pickable_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_group_layer_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_group_layer_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_group_layer_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_group_layer_parent_class, align 8
  %1 = load i32, i32* @GimpGroupLayer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGroupLayer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGroupLayerClass*
  call void @gimp_group_layer_class_init(%struct._GimpGroupLayerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_init(%struct._GimpGroupLayer* %group) #3 {
entry:
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %call2 = call i64 @gimp_layer_get_type() #7
  %call3 = call %struct._GimpContainer* @gimp_drawable_stack_new(i64 %call2)
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  store %struct._GimpContainer* %call3, %struct._GimpContainer** %children, align 8
  %4 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %expanded = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %4, i32 0, i32 5
  store i32 1, i32* %expanded, align 4
  %5 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children4 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %children4, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  %8 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %9 = bitcast %struct._GimpGroupLayer* %8 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpLayer*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_add to void ()*), i8* %9, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children6 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %children6, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %14 = bitcast %struct._GimpGroupLayer* %13 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpLayer*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_remove to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children8 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %children8, align 8
  %17 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %18 = bitcast %struct._GimpGroupLayer* %17 to i8*
  %call9 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GParamSpec*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_move to void ()*), i8* %18)
  %19 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children10 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %19, i32 0, i32 0
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %children10, align 8
  %21 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %22 = bitcast %struct._GimpGroupLayer* %21 to i8*
  %call11 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GParamSpec*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_move to void ()*), i8* %22)
  %23 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children12 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %23, i32 0, i32 0
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %children12, align 8
  %25 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %26 = bitcast %struct._GimpGroupLayer* %25 to i8*
  %call13 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_resize to void ()*), i8* %26)
  %27 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children14 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %27, i32 0, i32 0
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %children14, align 8
  %29 = bitcast %struct._GimpContainer* %28 to i8*
  %30 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %31 = bitcast %struct._GimpGroupLayer* %30 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawableStack*, i32, i32, i32, i32, %struct._GimpGroupLayer*)* @gimp_group_layer_stack_update to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %33 = bitcast %struct._GimpGroupLayer* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_projectable_interface_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpProjectable*
  %call18 = call %struct._GimpProjection* @gimp_projection_new(%struct._GimpProjectable* %34)
  %35 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %35, i32 0, i32 1
  store %struct._GimpProjection* %call18, %struct._GimpProjection** %projection, align 8
  %36 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection19 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %36, i32 0, i32 1
  %37 = load %struct._GimpProjection*, %struct._GimpProjection** %projection19, align 8
  %38 = bitcast %struct._GimpProjection* %37 to i8*
  %39 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %40 = bitcast %struct._GimpGroupLayer* %39 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProjection*, i32, i32, i32, i32, i32, %struct._GimpGroupLayer*)* @gimp_group_layer_proj_update to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projectable_iface_init(%struct._GimpProjectableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProjectableInterface*, align 8
  store %struct._GimpProjectableInterface* %iface, %struct._GimpProjectableInterface** %iface.addr, align 8
  %0 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_image = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %0, i32 0, i32 4
  store %struct._GimpImage* (%struct._GimpProjectable*)* bitcast (%struct._GimpImage* (%struct._GimpItem*)* @gimp_item_get_image to %struct._GimpImage* (%struct._GimpProjectable*)*), %struct._GimpImage* (%struct._GimpProjectable*)** %get_image, align 8
  %1 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_image_type = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %1, i32 0, i32 5
  store i32 (%struct._GimpProjectable*)* bitcast (i32 (%struct._GimpDrawable*)* @gimp_drawable_type to i32 (%struct._GimpProjectable*)*), i32 (%struct._GimpProjectable*)** %get_image_type, align 8
  %2 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_offset = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %2, i32 0, i32 6
  store void (%struct._GimpProjectable*, i32*, i32*)* bitcast (void (%struct._GimpItem*, i32*, i32*)* @gimp_item_get_offset to void (%struct._GimpProjectable*, i32*, i32*)*), void (%struct._GimpProjectable*, i32*, i32*)** %get_offset, align 8
  %3 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_size = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %3, i32 0, i32 7
  store void (%struct._GimpProjectable*, i32*, i32*)* bitcast (i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_viewable_get_size to void (%struct._GimpProjectable*, i32*, i32*)*), void (%struct._GimpProjectable*, i32*, i32*)** %get_size, align 8
  %4 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_graph = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %4, i32 0, i32 8
  store %struct._GeglNode* (%struct._GimpProjectable*)* @gimp_group_layer_get_graph, %struct._GeglNode* (%struct._GimpProjectable*)** %get_graph, align 8
  %5 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %5, i32 0, i32 9
  store void (%struct._GimpProjectable*)* bitcast (void (%struct._GimpViewable*)* @gimp_viewable_invalidate_preview to void (%struct._GimpProjectable*)*), void (%struct._GimpProjectable*)** %invalidate_preview, align 8
  %6 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_layers = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %6, i32 0, i32 10
  store %struct._GList* (%struct._GimpProjectable*)* @gimp_group_layer_get_layers, %struct._GList* (%struct._GimpProjectable*)** %get_layers, align 8
  %7 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %get_channels = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %7, i32 0, i32 11
  store %struct._GList* (%struct._GimpProjectable*)* null, %struct._GList* (%struct._GimpProjectable*)** %get_channels, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_projectable_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_opacity_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 7
  store i32 (%struct._GimpPickable*, i32, i32)* @gimp_group_layer_get_opacity_at, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_group_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %13)
  store i32 %call11, i32* %type, align 4
  %call12 = call i64 @gimp_group_layer_get_type() #7
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = load i32, i32* %type, align 4
  %call13 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call12, %struct._GimpImage* %14, i8* null, i32 0, i32 0, i32 1, i32 1, i32 %15)
  %16 = bitcast %struct._GimpDrawable* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_group_layer_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %17, %struct._GimpGroupLayer** %group, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call16 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %18)
  %use_gegl = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %call16, i32 0, i32 10
  %19 = load i32, i32* %use_gegl, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %do.end
  %20 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %21 = bitcast %struct._GimpGroupLayer* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_group_layer_get_type() #7
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast i8* %call20 to %struct._GimpGroupLayerPrivate*
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %22, i32 0, i32 1
  %23 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %use_gegl21 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %23, i32 0, i32 10
  store i32 1, i32* %use_gegl21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %do.end
  %24 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %25 = bitcast %struct._GimpGroupLayer* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_layer_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpLayer*
  store %struct._GimpLayer* %26, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else.9
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %27
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpProjection* @gimp_group_layer_get_projection(%struct._GimpGroupLayer* %group) #3 {
entry:
  %retval = alloca %struct._GimpProjection*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_group_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_group_layer_get_projection, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpProjection* null, %struct._GimpProjection** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %14 = bitcast %struct._GimpGroupLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_group_layer_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpGroupLayerPrivate*
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  store %struct._GimpProjection* %16, %struct._GimpProjection** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %retval
  ret %struct._GimpProjection* %17
}

; Function Attrs: nounwind uwtable
define void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %group, i32 %push_undo) #3 {
entry:
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %push_undo.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_group_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_group_layer_suspend_resize, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %14 = bitcast %struct._GimpGroupLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  store %struct._GimpItem* %15, %struct._GimpItem** %item, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %17 = load i32, i32* %push_undo.addr, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call19 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  %19 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %call20 = call %struct._GimpUndo* @gimp_image_undo_push_group_layer_suspend(%struct._GimpImage* %call19, i8* null, %struct._GimpGroupLayer* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %20 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %21 = bitcast %struct._GimpGroupLayer* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_group_layer_get_type() #7
  %call23 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast i8* %call23 to %struct._GimpGroupLayerPrivate*
  %suspend_resize = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %22, i32 0, i32 4
  %23 = load i32, i32* %suspend_resize, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %suspend_resize, align 4
  br label %return

return:                                           ; preds = %if.end.21, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_group_layer_suspend(%struct._GimpImage*, i8*, %struct._GimpGroupLayer*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %group, i32 %push_undo) #3 {
entry:
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_group_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_group_layer_resume_resize, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.34

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %14 = bitcast %struct._GimpGroupLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_group_layer_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %15, %struct._GimpGroupLayerPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %suspend_resize = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %suspend_resize, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_group_layer_resume_resize, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.34

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %19 = bitcast %struct._GimpGroupLayer* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  store %struct._GimpItem* %20, %struct._GimpItem** %item, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %do.end.18
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %do.end.18
  %22 = load i32, i32* %push_undo.addr, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.24
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call27 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %23)
  %24 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %call28 = call %struct._GimpUndo* @gimp_image_undo_push_group_layer_resume(%struct._GimpImage* %call27, i8* null, %struct._GimpGroupLayer* %24)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.24
  %25 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %suspend_resize30 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %25, i32 0, i32 4
  %26 = load i32, i32* %suspend_resize30, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %suspend_resize30, align 4
  %27 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %suspend_resize31 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %27, i32 0, i32 4
  %28 = load i32, i32* %suspend_resize31, align 4
  %cmp32 = icmp eq i32 %28, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  %29 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update_size(%struct._GimpGroupLayer* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.9, %if.else.16, %if.then.33, %if.end.29
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_group_layer_resume(%struct._GimpImage*, i8*, %struct._GimpGroupLayer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_update_size(%struct._GimpGroupLayer* %group) #3 {
entry:
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %old_x = alloca i32, align 4
  %old_y = alloca i32, align 4
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %first = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %3 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %4 = bitcast %struct._GimpGroupLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %5, %struct._GimpItem** %item, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %6)
  store i32 %call4, i32* %old_x, align 4
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %7)
  store i32 %call5, i32* %old_y, align 4
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_width(%struct._GimpItem* %8)
  store i32 %call6, i32* %old_width, align 4
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_height(%struct._GimpItem* %9)
  store i32 %call7, i32* %old_height, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  store i32 1, i32* %width, align 4
  store i32 1, i32* %height, align 4
  store i32 1, i32* %first, align 4
  %10 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %12 = bitcast %struct._GimpContainer* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_stack_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItemStack*
  %call10 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %13)
  store %struct._GList* %call10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %14, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpItem*
  store %struct._GimpItem* %17, %struct._GimpItem** %child, align 8
  %18 = load i32, i32* %first, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call12 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %19)
  store i32 %call12, i32* %x, align 4
  %20 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call13 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %20)
  store i32 %call13, i32* %y, align 4
  %21 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %21)
  store i32 %call14, i32* %width, align 4
  %22 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  store i32 %call15, i32* %height, align 4
  store i32 0, i32* %first, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %27 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call16 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %27)
  %28 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call17 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %28)
  %29 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call18 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  call void @gimp_rectangle_union(i32 %23, i32 %24, i32 %25, i32 %26, i32 %call16, i32 %call17, i32 %call18, i32 %call19, i32* %x, i32* %y, i32* %width, i32* %height)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %31, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %34, i32 0, i32 6
  %35 = load i32, i32* %reallocate_projection, align 4
  %tobool21 = icmp ne i32 %35, 0
  br i1 %tobool21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %old_x, align 4
  %cmp = icmp ne i32 %36, %37
  br i1 %cmp, label %if.then.28, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %old_y, align 4
  %cmp23 = icmp ne i32 %38, %39
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %old_width, align 4
  %cmp25 = icmp ne i32 %40, %41
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %42 = load i32, i32* %height, align 4
  %43 = load i32, i32* %old_height, align 4
  %cmp27 = icmp ne i32 %42, %43
  br i1 %cmp27, label %if.then.28, label %if.end.60

if.then.28:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false, %for.end
  %44 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_projection29 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %44, i32 0, i32 6
  %45 = load i32, i32* %reallocate_projection29, align 4
  %tobool30 = icmp ne i32 %45, 0
  br i1 %tobool30, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.28
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %old_width, align 4
  %cmp32 = icmp ne i32 %46, %47
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %48 = load i32, i32* %height, align 4
  %49 = load i32, i32* %old_height, align 4
  %cmp34 = icmp ne i32 %48, %49
  br i1 %cmp34, label %if.then.35, label %if.else.47

if.then.35:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.31, %if.then.28
  %50 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_projection36 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %50, i32 0, i32 6
  store i32 0, i32* %reallocate_projection36, align 4
  %51 = load i32, i32* %width, align 4
  %52 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_width = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %52, i32 0, i32 7
  store i32 %51, i32* %reallocate_width, align 4
  %53 = load i32, i32* %height, align 4
  %54 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_height = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %54, i32 0, i32 8
  store i32 %53, i32* %reallocate_height, align 4
  %55 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %56 = bitcast %struct._GimpGroupLayer* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_projectable_interface_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpProjectable*
  call void @gimp_projectable_structure_changed(%struct._GimpProjectable* %57)
  %58 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %58, i32 0, i32 1
  %59 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %call39 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %59, i32 0, i32* null)
  store %struct._TileManager* %call39, %struct._TileManager** %tiles, align 8
  %60 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_width40 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %60, i32 0, i32 7
  store i32 0, i32* %reallocate_width40, align 4
  %61 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_height41 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %61, i32 0, i32 8
  store i32 0, i32* %reallocate_height41, align 4
  %62 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %63 = bitcast %struct._GimpGroupLayer* %62 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_drawable_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call42)
  %64 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawable*
  %65 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %66 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %67 = bitcast %struct._GimpGroupLayer* %66 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_drawable_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call44)
  %68 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawable*
  %call46 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %68)
  %69 = load i32, i32* %x, align 4
  %70 = load i32, i32* %y, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %64, i32 0, i8* null, %struct._TileManager* %65, i32 %call46, i32 %69, i32 %70)
  br label %if.end.53

if.else.47:                                       ; preds = %lor.lhs.false.33
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %71, i32 %72, i32 %73)
  %74 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %75 = bitcast %struct._GimpGroupLayer* %74 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_projectable_interface_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call48)
  %76 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpProjectable*
  %77 = load i32, i32* %x, align 4
  %78 = load i32, i32* %y, align 4
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %height, align 4
  call void @gimp_projectable_invalidate(%struct._GimpProjectable* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %81 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection50 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %81, i32 0, i32 1
  %82 = load %struct._GimpProjection*, %struct._GimpProjection** %projection50, align 8
  %83 = bitcast %struct._GimpProjection* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_pickable_interface_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %84)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.47, %if.then.35
  %85 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %offset_node = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %85, i32 0, i32 3
  %86 = load %struct._GeglNode*, %struct._GeglNode** %offset_node, align 8
  %tobool54 = icmp ne %struct._GeglNode* %86, null
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.53
  %87 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %offset_node56 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %87, i32 0, i32 3
  %88 = load %struct._GeglNode*, %struct._GeglNode** %offset_node56, align 8
  %89 = load i32, i32* %x, align 4
  %sub = sub nsw i32 0, %89
  %conv = sitofp i32 %sub to double
  %90 = load i32, i32* %y, align 4
  %sub57 = sub nsw i32 0, %90
  %conv58 = sitofp i32 %sub57 to double
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), double %conv58, i8* null)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %lor.lhs.false.26
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_class_init(%struct._GimpGroupLayerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGroupLayerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  store %struct._GimpGroupLayerClass* %klass, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %0 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGroupLayerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGroupLayerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpGroupLayerClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpGroupLayerClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpGroupLayerClass* %12 to %struct._GTypeClass*
  %call7 = call i64 @gimp_drawable_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call7)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %14, %struct._GimpDrawableClass** %drawable_class, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_group_layer_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_group_layer_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_group_layer_finalize, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_group_layer_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %19 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8** %default_stock_id, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 5
  store i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_group_layer_get_size, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_children = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 13
  store %struct._GimpContainer* (%struct._GimpViewable*)* @gimp_group_layer_get_children, %struct._GimpContainer* (%struct._GimpViewable*)** %get_children, align 8
  %22 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %set_expanded = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %22, i32 0, i32 14
  store void (%struct._GimpViewable*, i32)* @gimp_group_layer_set_expanded, void (%struct._GimpViewable*, i32)** %set_expanded, align 8
  %23 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_expanded = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %23, i32 0, i32 15
  store i32 (%struct._GimpViewable*)* @gimp_group_layer_get_expanded, i32 (%struct._GimpViewable*)** %get_expanded, align 8
  %24 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %24, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_group_layer_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %25 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 10
  store void (%struct._GimpItem*, %struct._GimpImage*)* @gimp_group_layer_convert, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %26 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %26, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_group_layer_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %27 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_group_layer_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_group_layer_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_group_layer_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %30 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_group_layer_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %31 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %31, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_group_layer_transform, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #6
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 21
  store i8* %call9, i8** %default_name, align 8
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i64 10)
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 22
  store i8* %call10, i8** %rename_desc, align 8
  %call11 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i64 10)
  %34 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %34, i32 0, i32 23
  store i8* %call11, i8** %translate_desc, align 8
  %call12 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %35 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %35, i32 0, i32 24
  store i8* %call12, i8** %scale_desc, align 8
  %call13 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 25
  store i8* %call13, i8** %resize_desc, align 8
  %call14 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %37 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %37, i32 0, i32 26
  store i8* %call14, i8** %flip_desc, align 8
  %call15 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i64 10)
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 27
  store i8* %call15, i8** %rotate_desc, align 8
  %call16 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %39 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 28
  store i8* %call16, i8** %transform_desc, align 8
  %40 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %40, i32 0, i32 3
  store i64 (%struct._GimpDrawable*, i32, i32)* @gimp_group_layer_estimate_memsize, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %41 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %convert_type = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %41, i32 0, i32 6
  store void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)* @gimp_group_layer_convert_type, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)** %convert_type, align 8
  %42 = load %struct._GimpGroupLayerClass*, %struct._GimpGroupLayerClass** %klass.addr, align 8
  %43 = bitcast %struct._GimpGroupLayerClass* %42 to i8*
  call void @g_type_class_add_private(i8* %43, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children2 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %children2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpLayer*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_add to i8*), i8* %9)
  %10 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children4 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %children4, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpLayer*, %struct._GimpGroupLayer*)* @gimp_group_layer_child_remove to i8*), i8* %14)
  %15 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children6 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %children6, align 8
  %17 = bitcast %struct._GimpContainer* %16 to i8*
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDrawableStack*, i32, i32, i32, i32, %struct._GimpGroupLayer*)* @gimp_group_layer_stack_update to i8*), i8* %19)
  %20 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children8 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %20, i32 0, i32 0
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %children8, align 8
  %22 = bitcast %struct._GimpContainer* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children9 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %23, i32 0, i32 0
  store %struct._GimpContainer* null, %struct._GimpContainer** %children9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %24, i32 0, i32 1
  %25 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %tobool10 = icmp ne %struct._GimpProjection* %25, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %26 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection12 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %26, i32 0, i32 1
  %27 = load %struct._GimpProjection*, %struct._GimpProjection** %projection12, align 8
  %28 = bitcast %struct._GimpProjection* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection13 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %29, i32 0, i32 1
  store %struct._GimpProjection* null, %struct._GimpProjection** %projection13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %30 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %30, i32 0, i32 2
  %31 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool15 = icmp ne %struct._GeglNode* %31, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %32 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph17 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %32, i32 0, i32 2
  %33 = load %struct._GeglNode*, %struct._GeglNode** %graph17, align 8
  %34 = bitcast %struct._GeglNode* %33 to i8*
  call void @g_object_unref(i8* %34)
  %35 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph18 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %35, i32 0, i32 2
  store %struct._GeglNode* null, %struct._GeglNode** %graph18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %36 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %37 = bitcast i8* %36 to %struct._GTypeClass*
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %37, i64 80)
  %38 = bitcast %struct._GTypeClass* %call20 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %38, i32 0, i32 6
  %39 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %40 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %39(%struct._GObject* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_group_layer_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %11 = bitcast %struct._GimpProjection* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %12, i64* %13)
  %14 = load i64, i64* %memsize, align 8
  %add8 = add nsw i64 %14, %call7
  store i64 %add8, i64* %memsize, align 8
  %15 = load i64, i64* %memsize, align 8
  %16 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call9 = call i64 @gimp_object_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call9)
  %18 = bitcast %struct._GTypeClass* %call10 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  %19 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = load i64*, i64** %gui_size.addr, align 8
  %call11 = call i64 %19(%struct._GimpObject* %20, i64* %21)
  %add12 = add nsw i64 %15, %call11
  ret i64 %add12
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_group_layer_get_size(%struct._GimpViewable* %viewable, i32* %width, i32* %height) #3 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_width = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 7
  %4 = load i32, i32* %reallocate_width, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_height = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %5, i32 0, i32 8
  %6 = load i32, i32* %reallocate_height, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_width3 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %7, i32 0, i32 7
  %8 = load i32, i32* %reallocate_width3, align 4
  %9 = load i32*, i32** %width.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %reallocate_height4 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %10, i32 0, i32 8
  %11 = load i32, i32* %reallocate_height4, align 4
  %12 = load i32*, i32** %height.addr, align 8
  store i32 %11, i32* %12, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call5 = call i64 @gimp_viewable_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call5)
  %15 = bitcast %struct._GTypeClass* %call6 to %struct._GimpViewableClass*
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 5
  %16 = load i32 (%struct._GimpViewable*, i32*, i32*)*, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %18 = load i32*, i32** %width.addr, align 8
  %19 = load i32*, i32** %height.addr, align 8
  %call7 = call i32 %16(%struct._GimpViewable* %17, i32* %18, i32* %19)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpContainer* @gimp_group_layer_get_children(%struct._GimpViewable* %viewable) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %2, i32 0, i32 0
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  ret %struct._GimpContainer* %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_set_expanded(%struct._GimpViewable* %viewable, i32 %expanded) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %expanded.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %expanded, i32* %expanded.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load i32, i32* %expanded.addr, align 4
  %4 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %5 = bitcast %struct._GimpGroupLayer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  %expanded4 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %6, i32 0, i32 5
  store i32 %3, i32* %expanded4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_group_layer_get_expanded(%struct._GimpViewable* %viewable) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %4 = bitcast %struct._GimpGroupLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  %expanded = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %5, i32 0, i32 5
  %6 = load i32, i32* %expanded, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_group_layer_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %new_group = alloca %struct._GimpGroupLayer*, align 8
  %new_private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %position = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  %new_child = alloca %struct._GimpItem*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %new_mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %new_type.addr, align 8
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_group_layer_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call2)
  %3 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %3, i32 0, i32 9
  %4 = load %struct._GimpItem* (%struct._GimpItem*, i64)*, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = load i64, i64* %new_type.addr, align 8
  %call4 = call %struct._GimpItem* %4(%struct._GimpItem* %5, i64 %6)
  store %struct._GimpItem* %call4, %struct._GimpItem** %new_item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_group_layer_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else.8:                                        ; preds = %do.end
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else.8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else.8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.66

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_group_layer_get_type() #7
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast i8* %call20 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %22, %struct._GimpGroupLayerPrivate** %private, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_group_layer_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %25, %struct._GimpGroupLayer** %new_group, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_group_layer_get_type() #7
  %call26 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast i8* %call26 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %28, %struct._GimpGroupLayerPrivate** %new_private, align 8
  store i32 0, i32* %position, align 4
  %29 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %new_group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %29, i32 0)
  %30 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %30, i32 0, i32 0
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %32 = bitcast %struct._GimpContainer* %31 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_stack_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call29)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItemStack*
  %call31 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %33)
  store %struct._GList* %call31, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.17
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %34, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data, align 8
  %37 = bitcast i8* %36 to %struct._GimpItem*
  store %struct._GimpItem* %37, %struct._GimpItem** %child, align 8
  %38 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type37, align 8
  %call38 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %38, i64 %42)
  store %struct._GimpItem* %call38, %struct._GimpItem** %new_child, align 8
  %43 = load %struct._GimpItem*, %struct._GimpItem** %new_child, align 8
  %44 = bitcast %struct._GimpItem* %43 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call39)
  %45 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  %46 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %47 = bitcast %struct._GimpItem* %46 to i8*
  %call41 = call i8* @gimp_object_get_name(i8* %47)
  call void @gimp_object_set_name(%struct._GimpObject* %45, i8* %call41)
  %48 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %49 = bitcast %struct._GimpItem* %48 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_layer_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call42)
  %50 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpLayer*
  %call44 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %50)
  store %struct._GimpLayerMask* %call44, %struct._GimpLayerMask** %mask, align 8
  %51 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool45 = icmp ne %struct._GimpLayerMask* %51, null
  br i1 %tobool45, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %for.body
  %52 = load %struct._GimpItem*, %struct._GimpItem** %new_child, align 8
  %53 = bitcast %struct._GimpItem* %52 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_layer_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call48)
  %54 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpLayer*
  %call50 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %54)
  store %struct._GimpLayerMask* %call50, %struct._GimpLayerMask** %new_mask, align 8
  %55 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %new_mask, align 8
  %56 = bitcast %struct._GimpLayerMask* %55 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_object_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call51)
  %57 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpObject*
  %58 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %59 = bitcast %struct._GimpLayerMask* %58 to i8*
  %call53 = call i8* @gimp_object_get_name(i8* %59)
  call void @gimp_object_set_name(%struct._GimpObject* %57, i8* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %for.body
  %60 = load %struct._GimpItem*, %struct._GimpItem** %new_child, align 8
  %61 = bitcast %struct._GimpItem* %60 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_viewable_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call55)
  %62 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpViewable*
  %63 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %new_group, align 8
  %64 = bitcast %struct._GimpGroupLayer* %63 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_viewable_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call57)
  %65 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpViewable*
  call void @gimp_viewable_set_parent(%struct._GimpViewable* %62, %struct._GimpViewable* %65)
  %66 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %new_private, align 8
  %children59 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %66, i32 0, i32 0
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %children59, align 8
  %68 = load %struct._GimpItem*, %struct._GimpItem** %new_child, align 8
  %69 = bitcast %struct._GimpItem* %68 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call60)
  %70 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  %71 = load i32, i32* %position, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %position, align 4
  %call62 = call i32 @gimp_container_insert(%struct._GimpContainer* %67, %struct._GimpObject* %70, i32 %71)
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool63 = icmp ne %struct._GList* %72, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %73 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 1
  %74 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %74, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %new_group, align 8
  %76 = bitcast %struct._GimpGroupLayer* %75 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_group_layer_get_type() #7
  %call65 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %76, i64 %call64)
  %77 = bitcast i8* %call65 to %struct._GimpGroupLayerPrivate*
  %reallocate_projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %77, i32 0, i32 6
  store i32 1, i32* %reallocate_projection, align 4
  %78 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %new_group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %78, i32 0)
  br label %if.end.66

if.end.66:                                        ; preds = %for.end, %if.end.15
  %79 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %79, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.else
  %80 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %80
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_stack_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemStack*
  %call4 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %6)
  store %struct._GList* %call4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpItem*
  store %struct._GimpItem* %10, %struct._GimpItem** %child, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %12 = bitcast %struct._GimpItem* %11 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %14 = bitcast %struct._GTypeClass* %13 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %14, i32 0, i32 10
  %15 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %15(%struct._GimpItem* %16, %struct._GimpImage* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %18, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call6 = call i64 @gimp_item_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 %call6)
  %23 = bitcast %struct._GTypeClass* %call7 to %struct._GimpItemClass*
  %convert8 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 10
  %24 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert8, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %24(%struct._GimpItem* %25, %struct._GimpImage* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %6, i32 0)
  %7 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %9 = bitcast %struct._GimpContainer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_stack_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemStack*
  %call6 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %10)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpItem*
  store %struct._GimpItem* %14, %struct._GimpItem** %child, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %16 = load i32, i32* %offset_x.addr, align 4
  %17 = load i32, i32* %offset_y.addr, align 4
  %18 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_item_translate(%struct._GimpItem* %15, i32 %16, i32 %17, i32 %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %19, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %23 = bitcast %struct._GimpGroupLayer* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_layer_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLayer*
  %call10 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %24)
  store %struct._GimpLayerMask* %call10, %struct._GimpLayerMask** %mask, align 8
  %25 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool11 = icmp ne %struct._GimpLayerMask* %25, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %off_x, i32* %off_y)
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %28 = bitcast %struct._GimpLayerMask* %27 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call12)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %30 = load i32, i32* %off_x, align 4
  %31 = load i32, i32* %off_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %29, i32 %30, i32 %31)
  %32 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %33 = bitcast %struct._GimpLayerMask* %32 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_viewable_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call14)
  %34 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %35 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %35, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %width_factor = alloca double, align 8
  %height_factor = alloca double, align 8
  %old_offset_x = alloca i32, align 4
  %old_offset_y = alloca i32, align 4
  %child = alloca %struct._GimpItem*, align 8
  %child_width = alloca i32, align 4
  %child_height = alloca i32, align 4
  %child_offset_x = alloca i32, align 4
  %child_offset_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load i32, i32* %new_width.addr, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call4 = call i32 @gimp_item_get_width(%struct._GimpItem* %7)
  %conv5 = sitofp i32 %call4 to double
  %div = fdiv double %conv, %conv5
  store double %div, double* %width_factor, align 8
  %8 = load i32, i32* %new_height.addr, align 4
  %conv6 = sitofp i32 %8 to double
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call7 = call i32 @gimp_item_get_height(%struct._GimpItem* %9)
  %conv8 = sitofp i32 %call7 to double
  %div9 = fdiv double %conv6, %conv8
  store double %div9, double* %height_factor, align 8
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call10 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %10)
  store i32 %call10, i32* %old_offset_x, align 4
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %11)
  store i32 %call11, i32* %old_offset_y, align 4
  %12 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %12, i32 1)
  %13 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %13, i32 0, i32 0
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_stack_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItemStack*
  %call14 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %16)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %entry
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %17, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpItem*
  store %struct._GimpItem* %20, %struct._GimpItem** %child, align 8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %21, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %24 = load double, double* %width_factor, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  %conv17 = sitofp i32 %call16 to double
  %mul = fmul double %24, %conv17
  %add = fadd double %mul, 5.000000e-01
  %conv18 = fptosi double %add to i32
  store i32 %conv18, i32* %child_width, align 4
  %26 = load double, double* %height_factor, align 8
  %27 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %conv20 = sitofp i32 %call19 to double
  %mul21 = fmul double %26, %conv20
  %add22 = fadd double %mul21, 5.000000e-01
  %conv23 = fptosi double %add22 to i32
  store i32 %conv23, i32* %child_height, align 4
  %28 = load double, double* %width_factor, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call24 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %29)
  %30 = load i32, i32* %old_offset_x, align 4
  %sub = sub nsw i32 %call24, %30
  %conv25 = sitofp i32 %sub to double
  %mul26 = fmul double %28, %conv25
  %add27 = fadd double %mul26, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  store i32 %conv28, i32* %child_offset_x, align 4
  %31 = load double, double* %height_factor, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call29 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %32)
  %33 = load i32, i32* %old_offset_y, align 4
  %sub30 = sub nsw i32 %call29, %33
  %conv31 = sitofp i32 %sub30 to double
  %mul32 = fmul double %31, %conv31
  %add33 = fadd double %mul32, 5.000000e-01
  %conv34 = fptosi double %add33 to i32
  store i32 %conv34, i32* %child_offset_y, align 4
  %34 = load i32, i32* %new_offset_x.addr, align 4
  %35 = load i32, i32* %child_offset_x, align 4
  %add35 = add nsw i32 %35, %34
  store i32 %add35, i32* %child_offset_x, align 4
  %36 = load i32, i32* %new_offset_y.addr, align 4
  %37 = load i32, i32* %child_offset_y, align 4
  %add36 = add nsw i32 %37, %36
  store i32 %add36, i32* %child_offset_y, align 4
  %38 = load i32, i32* %child_width, align 4
  %cmp = icmp sgt i32 %38, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %39 = load i32, i32* %child_height, align 4
  %cmp38 = icmp sgt i32 %39, 0
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %40 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %41 = load i32, i32* %child_width, align 4
  %42 = load i32, i32* %child_height, align 4
  %43 = load i32, i32* %child_offset_x, align 4
  %44 = load i32, i32* %child_offset_y, align 4
  %45 = load i32, i32* %interpolation_type.addr, align 4
  %46 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_scale(%struct._GimpItem* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, %struct._GimpProgress* %46)
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call i32 @gimp_item_is_attached(%struct._GimpItem* %47)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.else
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call43 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %48)
  %49 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %50 = bitcast %struct._GimpItem* %49 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_layer_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call44)
  %51 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %call43, %struct._GimpLayer* %51, i32 1, %struct._GimpLayer* null)
  br label %if.end

if.else.46:                                       ; preds = %if.else
  %52 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children47 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %52, i32 0, i32 0
  %53 = load %struct._GimpContainer*, %struct._GimpContainer** %children47, align 8
  %54 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %55 = bitcast %struct._GimpItem* %54 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call48)
  %56 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  %call50 = call i32 @gimp_container_remove(%struct._GimpContainer* %53, %struct._GimpObject* %56)
  br label %if.end

if.end:                                           ; preds = %if.else.46, %if.then.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %58 = bitcast %struct._GimpGroupLayer* %57 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_layer_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call52)
  %59 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpLayer*
  %call54 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %59)
  store %struct._GimpLayerMask* %call54, %struct._GimpLayerMask** %mask, align 8
  %60 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool55 = icmp ne %struct._GimpLayerMask* %60, null
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %while.end
  %61 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %62 = bitcast %struct._GimpLayerMask* %61 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call57)
  %63 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %64 = load i32, i32* %new_width.addr, align 4
  %65 = load i32, i32* %new_height.addr, align 4
  %66 = load i32, i32* %new_offset_x.addr, align 4
  %67 = load i32, i32* %new_offset_y.addr, align 4
  %68 = load i32, i32* %interpolation_type.addr, align 4
  %69 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_scale(%struct._GimpItem* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, %struct._GimpProgress* %69)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %while.end
  %70 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %70, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %child = alloca %struct._GimpItem*, align 8
  %child_width = alloca i32, align 4
  %child_height = alloca i32, align 4
  %child_x = alloca i32, align 4
  %child_y = alloca i32, align 4
  %child_offset_x = alloca i32, align 4
  %child_offset_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call4 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %6)
  %7 = load i32, i32* %offset_x.addr, align 4
  %sub = sub nsw i32 %call4, %7
  store i32 %sub, i32* %x, align 4
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call5 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %8)
  %9 = load i32, i32* %offset_y.addr, align 4
  %sub6 = sub nsw i32 %call5, %9
  store i32 %sub6, i32* %y, align 4
  %10 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %10, i32 1)
  %11 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %13 = bitcast %struct._GimpContainer* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_stack_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItemStack*
  %call9 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %14)
  store %struct._GList* %call9, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %15, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %child, align 8
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %19, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %new_width.addr, align 4
  %25 = load i32, i32* %new_height.addr, align 4
  %26 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call11 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call12 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %27)
  %28 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call13 = call i32 @gimp_item_get_width(%struct._GimpItem* %28)
  %29 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call14 = call i32 @gimp_item_get_height(%struct._GimpItem* %29)
  %call15 = call i32 @gimp_rectangle_intersect(i32 %22, i32 %23, i32 %24, i32 %25, i32 %call11, i32 %call12, i32 %call13, i32 %call14, i32* %child_x, i32* %child_y, i32* %child_width, i32* %child_height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %30 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call17 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %30)
  %31 = load i32, i32* %child_x, align 4
  %sub18 = sub nsw i32 %call17, %31
  store i32 %sub18, i32* %child_offset_x, align 4
  %32 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %call19 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %32)
  %33 = load i32, i32* %child_y, align 4
  %sub20 = sub nsw i32 %call19, %33
  store i32 %sub20, i32* %child_offset_y, align 4
  %34 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load i32, i32* %child_width, align 4
  %37 = load i32, i32* %child_height, align 4
  %38 = load i32, i32* %child_offset_x, align 4
  %39 = load i32, i32* %child_offset_y, align 4
  call void @gimp_item_resize(%struct._GimpItem* %34, %struct._GimpContext* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %if.end.32

if.else:                                          ; preds = %cond.end
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %40)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call24 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %41)
  %42 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %43 = bitcast %struct._GimpItem* %42 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_layer_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call25)
  %44 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %call24, %struct._GimpLayer* %44, i32 1, %struct._GimpLayer* null)
  br label %if.end

if.else.27:                                       ; preds = %if.else
  %45 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children28 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %45, i32 0, i32 0
  %46 = load %struct._GimpContainer*, %struct._GimpContainer** %children28, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %48 = bitcast %struct._GimpItem* %47 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call29)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  %call31 = call i32 @gimp_container_remove(%struct._GimpContainer* %46, %struct._GimpObject* %49)
  br label %if.end

if.end:                                           ; preds = %if.else.27, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %51 = bitcast %struct._GimpGroupLayer* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_layer_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpLayer*
  %call35 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %52)
  store %struct._GimpLayerMask* %call35, %struct._GimpLayerMask** %mask, align 8
  %53 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool36 = icmp ne %struct._GimpLayerMask* %53, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %while.end
  %54 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %55 = bitcast %struct._GimpLayerMask* %54 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call38)
  %56 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %58 = load i32, i32* %new_width.addr, align 4
  %59 = load i32, i32* %new_height.addr, align 4
  %60 = load i32, i32* %offset_x.addr, align 4
  %61 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %56, %struct._GimpContext* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %while.end
  %62 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %62, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %6, i32 1)
  %7 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %9 = bitcast %struct._GimpContainer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_stack_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemStack*
  %call6 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %10)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpItem*
  store %struct._GimpItem* %14, %struct._GimpItem** %child, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load i32, i32* %flip_type.addr, align 4
  %18 = load double, double* %axis.addr, align 8
  %19 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %15, %struct._GimpContext* %16, i32 %17, double %18, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %20, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %24 = bitcast %struct._GimpGroupLayer* %23 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_layer_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call8)
  %25 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLayer*
  %call10 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %25)
  store %struct._GimpLayerMask* %call10, %struct._GimpLayerMask** %mask, align 8
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool11 = icmp ne %struct._GimpLayerMask* %26, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %28 = bitcast %struct._GimpLayerMask* %27 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call12)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load i32, i32* %flip_type.addr, align 4
  %32 = load double, double* %axis.addr, align 8
  %33 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %29, %struct._GimpContext* %30, i32 %31, double %32, i32 %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %34 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %34, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %6, i32 1)
  %7 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %9 = bitcast %struct._GimpContainer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_stack_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemStack*
  %call6 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %10)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpItem*
  store %struct._GimpItem* %14, %struct._GimpItem** %child, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load i32, i32* %rotate_type.addr, align 4
  %18 = load double, double* %center_x.addr, align 8
  %19 = load double, double* %center_y.addr, align 8
  %20 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %15, %struct._GimpContext* %16, i32 %17, double %18, double %19, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %21, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %25 = bitcast %struct._GimpGroupLayer* %24 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_layer_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call8)
  %26 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLayer*
  %call10 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %26)
  store %struct._GimpLayerMask* %call10, %struct._GimpLayerMask** %mask, align 8
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool11 = icmp ne %struct._GimpLayerMask* %27, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %28 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %29 = bitcast %struct._GimpLayerMask* %28 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call12)
  %30 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = load i32, i32* %rotate_type.addr, align 4
  %33 = load double, double* %center_x.addr, align 8
  %34 = load double, double* %center_y.addr, align 8
  %35 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %30, %struct._GimpContext* %31, i32 %32, double %33, double %34, i32 %35)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %36 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %36, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %6, i32 1)
  %7 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %9 = bitcast %struct._GimpContainer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_stack_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemStack*
  %call6 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %10)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpItem*
  store %struct._GimpItem* %14, %struct._GimpItem** %child, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %child, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %18 = load i32, i32* %direction.addr, align 4
  %19 = load i32, i32* %interpolation_type.addr, align 4
  %20 = load i32, i32* %recursion_level.addr, align 4
  %21 = load i32, i32* %clip_result.addr, align 4
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %15, %struct._GimpContext* %16, %struct._GimpMatrix3* %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct._GimpProgress* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %23, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %27 = bitcast %struct._GimpGroupLayer* %26 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_layer_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call8)
  %28 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLayer*
  %call10 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %28)
  store %struct._GimpLayerMask* %call10, %struct._GimpLayerMask** %mask, align 8
  %29 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool11 = icmp ne %struct._GimpLayerMask* %29, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %30 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %31 = bitcast %struct._GimpLayerMask* %30 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call12)
  %32 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %35 = load i32, i32* %direction.addr, align 4
  %36 = load i32, i32* %interpolation_type.addr, align 4
  %37 = load i32, i32* %recursion_level.addr, align 4
  %38 = load i32, i32* %clip_result.addr, align 4
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %32, %struct._GimpContext* %33, %struct._GimpMatrix3* %34, i32 %35, i32 %36, i32 %37, i32 %38, %struct._GimpProgress* %39)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %40 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %40, i32 1)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @gimp_group_layer_estimate_memsize(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %base_type = alloca i32, align 4
  %memsize = alloca i64, align 8
  %child = alloca %struct._GimpDrawable*, align 8
  %child_width = alloca i32, align 4
  %child_height = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_stack_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemStack*
  %call4 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %6)
  store %struct._GList* %call4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %10, %struct._GimpDrawable** %child, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %child, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %13)
  %14 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %call7, %14
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %div = sdiv i32 %mul, %call10
  store i32 %div, i32* %child_width, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %child, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  %21 = load i32, i32* %height.addr, align 4
  %mul14 = mul nsw i32 %call13, %21
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = bitcast %struct._GimpDrawable* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %call17 = call i32 @gimp_item_get_height(%struct._GimpItem* %24)
  %div18 = sdiv i32 %mul14, %call17
  store i32 %div18, i32* %child_height, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %child, align 8
  %26 = load i32, i32* %child_width, align 4
  %27 = load i32, i32* %child_height, align 4
  %call19 = call i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable* %25, i32 %26, i32 %27)
  %28 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %28, %call19
  store i64 %add, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %29, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call21 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %32)
  %cmp = icmp eq i32 %call21, 0
  br i1 %cmp, label %cond.true.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %33)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %lor.lhs.false, %for.end
  br label %cond.end.40

cond.false.25:                                    ; preds = %lor.lhs.false
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call26 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %34)
  %cmp27 = icmp eq i32 %call26, 2
  br i1 %cmp27, label %cond.true.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %cond.false.25
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call29 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %35)
  %cmp30 = icmp eq i32 %call29, 3
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %lor.lhs.false.28, %cond.false.25
  br label %cond.end.38

cond.false.32:                                    ; preds = %lor.lhs.false.28
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call33 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %36)
  %cmp34 = icmp eq i32 %call33, 4
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.32
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call35 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %37)
  %cmp36 = icmp eq i32 %call35, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.32
  %38 = phi i1 [ true, %cond.false.32 ], [ %cmp36, %lor.rhs ]
  %cond37 = select i1 %38, i32 2, i32 -1
  br label %cond.end.38

cond.end.38:                                      ; preds = %lor.end, %cond.true.31
  %cond39 = phi i32 [ 1, %cond.true.31 ], [ %cond37, %lor.end ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.24
  %cond41 = phi i32 [ 0, %cond.true.24 ], [ %cond39, %cond.end.38 ]
  store i32 %cond41, i32* %base_type, align 4
  %39 = load i32, i32* %base_type, align 4
  %40 = load i32, i32* %width.addr, align 4
  %41 = load i32, i32* %height.addr, align 4
  %call42 = call i64 @gimp_projection_estimate_memsize(i32 %39, i32 %40, i32 %41)
  %42 = load i64, i64* %memsize, align 8
  %add43 = add nsw i64 %42, %call42
  store i64 %add43, i64* %memsize, align 8
  %43 = load i64, i64* %memsize, align 8
  %44 = load i8*, i8** @gimp_group_layer_parent_class, align 8
  %45 = bitcast i8* %44 to %struct._GTypeClass*
  %call44 = call i64 @gimp_drawable_get_type() #7
  %call45 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %45, i64 %call44)
  %46 = bitcast %struct._GTypeClass* %call45 to %struct._GimpDrawableClass*
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %46, i32 0, i32 3
  %47 = load i64 (%struct._GimpDrawable*, i32, i32)*, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = load i32, i32* %width.addr, align 4
  %50 = load i32, i32* %height.addr, align 4
  %call46 = call i64 %47(%struct._GimpDrawable* %48, i32 %49, i32 %50)
  %add47 = add nsw i64 %43, %call46
  ret i64 %add47
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_convert_type(%struct._GimpDrawable* %drawable, %struct._GimpImage* %dest_image, i32 %new_base_type, i32 %push_undo) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %new_base_type.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %new_type = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %new_base_type, i32* %new_base_type.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %8 = bitcast %struct._GimpGroupLayer* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %9)
  store %struct._GimpImage* %call6, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %call7 = call %struct._GimpUndo* @gimp_image_undo_push_group_layer_convert(%struct._GimpImage* %10, i8* null, %struct._GimpGroupLayer* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %new_base_type.addr, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.13

cond.false:                                       ; preds = %if.end
  %13 = load i32, i32* %new_base_type.addr, align 4
  %cmp8 = icmp eq i32 %13, 1
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %14 = load i32, i32* %new_base_type.addr, align 4
  %cmp11 = icmp eq i32 %14, 2
  %cond = select i1 %cmp11, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ 2, %cond.true.9 ], [ %cond, %cond.false.10 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 0, %cond.true ], [ %cond12, %cond.end ]
  store i32 %cond14, i32* %new_type, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %cond.end.13
  %16 = load i32, i32* %new_type, align 4
  %cmp18 = icmp eq i32 %16, 0
  br i1 %cmp18, label %cond.true.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %17 = load i32, i32* %new_type, align 4
  %cmp19 = icmp eq i32 %17, 1
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false, %if.then.17
  br label %cond.end.32

cond.false.21:                                    ; preds = %lor.lhs.false
  %18 = load i32, i32* %new_type, align 4
  %cmp22 = icmp eq i32 %18, 2
  br i1 %cmp22, label %cond.true.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %cond.false.21
  %19 = load i32, i32* %new_type, align 4
  %cmp24 = icmp eq i32 %19, 3
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %lor.lhs.false.23, %cond.false.21
  br label %cond.end.30

cond.false.26:                                    ; preds = %lor.lhs.false.23
  %20 = load i32, i32* %new_type, align 4
  %cmp27 = icmp eq i32 %20, 4
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.26
  %21 = load i32, i32* %new_type, align 4
  %cmp28 = icmp eq i32 %21, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.26
  %22 = phi i1 [ true, %cond.false.26 ], [ %cmp28, %lor.rhs ]
  %cond29 = select i1 %22, i32 5, i32 -1
  br label %cond.end.30

cond.end.30:                                      ; preds = %lor.end, %cond.true.25
  %cond31 = phi i32 [ 3, %cond.true.25 ], [ %cond29, %lor.end ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.20
  %cond33 = phi i32 [ 1, %cond.true.20 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %new_type, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.32, %cond.end.13
  %23 = load i32, i32* %new_type, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private35, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %25, i32 0, i32 0
  store i32 %23, i32* %type, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_projectable_interface_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call36)
  %28 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpProjectable*
  call void @gimp_projectable_structure_changed(%struct._GimpProjectable* %28)
  %29 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %29, i32 0, i32 1
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %call38 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %30, i32 0, i32* null)
  store %struct._TileManager* %call38, %struct._TileManager** %tiles, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %33 = load i32, i32* %new_type, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call39)
  %36 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %36)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %38 = bitcast %struct._GimpDrawable* %37 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call42)
  %39 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %call44 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %39)
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %31, i32 0, i8* null, %struct._TileManager* %32, i32 %33, i32 %call41, i32 %call44)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_child_add(%struct._GimpContainer* %container, %struct._GimpLayer* %child, %struct._GimpGroupLayer* %group) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %child.addr = alloca %struct._GimpLayer*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpLayer* %child, %struct._GimpLayer** %child.addr, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update(%struct._GimpGroupLayer* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_child_remove(%struct._GimpContainer* %container, %struct._GimpLayer* %child, %struct._GimpGroupLayer* %group) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %child.addr = alloca %struct._GimpLayer*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpLayer* %child, %struct._GimpLayer** %child.addr, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update(%struct._GimpGroupLayer* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_stack_update(%struct._GimpDrawableStack* %stack, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpGroupLayer* %group) #3 {
entry:
  %stack.addr = alloca %struct._GimpDrawableStack*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpDrawableStack* %stack, %struct._GimpDrawableStack** %stack.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projectable_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjectable*
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  call void @gimp_projectable_invalidate(%struct._GimpProjectable* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  %7 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %8 = bitcast %struct._GimpGroupLayer* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  %projection = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %11 = bitcast %struct._GimpProjection* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_pickable_interface_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %12)
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_update(%struct._GimpGroupLayer* %group) #3 {
entry:
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  %suspend_resize = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %2, i32 0, i32 4
  %3 = load i32, i32* %suspend_resize, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update_size(%struct._GimpGroupLayer* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_projectable_invalidate(%struct._GimpProjectable*, i32, i32, i32, i32) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare void @gimp_viewable_set_parent(%struct._GimpViewable*, %struct._GimpViewable*) #1

declare i32 @gimp_container_insert(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #1

declare void @gimp_item_scale(%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable*, i32, i32) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare i64 @gimp_projection_estimate_memsize(i32, i32, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push_group_layer_convert(%struct._GimpImage*, i8*, %struct._GimpGroupLayer*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @gimp_projectable_structure_changed(%struct._GimpProjectable*) #1

declare %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection*, i32, i32*) #1

declare void @gimp_drawable_set_tiles_full(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_group_layer_get_graph(%struct._GimpProjectable* %projectable) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  %layers_node = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %2, %struct._GimpGroupLayer** %group, align 8
  %3 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %4 = bitcast %struct._GimpProjectable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_group_layer_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %5, %struct._GimpGroupLayerPrivate** %private, align 8
  %6 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %6, i32 0, i32 2
  %7 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool = icmp ne %struct._GeglNode* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph4 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %8, i32 0, i32 2
  %9 = load %struct._GeglNode*, %struct._GeglNode** %graph4, align 8
  store %struct._GeglNode* %9, %struct._GeglNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call %struct._GeglNode* @gegl_node_new()
  %10 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph6 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %10, i32 0, i32 2
  store %struct._GeglNode* %call5, %struct._GeglNode** %graph6, align 8
  %11 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %13 = bitcast %struct._GimpContainer* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_drawable_stack_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawableStack*
  %call9 = call %struct._GeglNode* @gimp_drawable_stack_get_graph(%struct._GimpDrawableStack* %14)
  store %struct._GeglNode* %call9, %struct._GeglNode** %layers_node, align 8
  %15 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph10 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %15, i32 0, i32 2
  %16 = load %struct._GeglNode*, %struct._GeglNode** %graph10, align 8
  %17 = load %struct._GeglNode*, %struct._GeglNode** %layers_node, align 8
  %call11 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %16, %struct._GeglNode* %17)
  %18 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %19 = bitcast %struct._GimpGroupLayer* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %20, i32* %off_x, i32* %off_y)
  %21 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph14 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %21, i32 0, i32 2
  %22 = load %struct._GeglNode*, %struct._GeglNode** %graph14, align 8
  %23 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 0, %23
  %conv = sitofp i32 %sub to double
  %24 = load i32, i32* %off_y, align 4
  %sub15 = sub nsw i32 0, %24
  %conv16 = sitofp i32 %sub15 to double
  %call17 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), double %conv16, i8* null)
  %25 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %offset_node = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %25, i32 0, i32 3
  store %struct._GeglNode* %call17, %struct._GeglNode** %offset_node, align 8
  %26 = load %struct._GeglNode*, %struct._GeglNode** %layers_node, align 8
  %27 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %offset_node18 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %27, i32 0, i32 3
  %28 = load %struct._GeglNode*, %struct._GeglNode** %offset_node18, align 8
  %call19 = call i32 @gegl_node_connect_to(%struct._GeglNode* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), %struct._GeglNode* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  %29 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph20 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %29, i32 0, i32 2
  %30 = load %struct._GeglNode*, %struct._GeglNode** %graph20, align 8
  %call21 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GeglNode* %call21, %struct._GeglNode** %output, align 8
  %31 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %offset_node22 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %31, i32 0, i32 3
  %32 = load %struct._GeglNode*, %struct._GeglNode** %offset_node22, align 8
  %33 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call23 = call i32 @gegl_node_connect_to(%struct._GeglNode* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), %struct._GeglNode* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  %34 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %graph24 = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %34, i32 0, i32 2
  %35 = load %struct._GeglNode*, %struct._GeglNode** %graph24, align 8
  store %struct._GeglNode* %35, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_group_layer_get_layers(%struct._GimpProjectable* %projectable) #3 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %private = alloca %struct._GimpGroupLayerPrivate*, align 8
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpGroupLayerPrivate*
  store %struct._GimpGroupLayerPrivate* %2, %struct._GimpGroupLayerPrivate** %private, align 8
  %3 = load %struct._GimpGroupLayerPrivate*, %struct._GimpGroupLayerPrivate** %private, align 8
  %children = getelementptr inbounds %struct._GimpGroupLayerPrivate, %struct._GimpGroupLayerPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_stack_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemStack*
  %call4 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %6)
  ret %struct._GList* %call4
}

declare %struct._GeglNode* @gegl_node_new() #1

declare %struct._GeglNode* @gimp_drawable_stack_get_graph(%struct._GimpDrawableStack*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_stack_get_type() #2

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_group_layer_get_opacity_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  ret i32 0
}

declare %struct._GimpContainer* @gimp_drawable_stack_new(i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_child_move(%struct._GimpLayer* %child, %struct._GParamSpec* %pspec, %struct._GimpGroupLayer* %group) #3 {
entry:
  %child.addr = alloca %struct._GimpLayer*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpLayer* %child, %struct._GimpLayer** %child.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update(%struct._GimpGroupLayer* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_child_resize(%struct._GimpLayer* %child, %struct._GimpGroupLayer* %group) #3 {
entry:
  %child.addr = alloca %struct._GimpLayer*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpLayer* %child, %struct._GimpLayer** %child.addr, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  call void @gimp_group_layer_update(%struct._GimpGroupLayer* %0)
  ret void
}

declare %struct._GimpProjection* @gimp_projection_new(%struct._GimpProjectable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_proj_update(%struct._GimpProjection* %proj, i32 %now, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpGroupLayer* %group) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %now.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
  %0 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %1 = bitcast %struct._GimpGroupLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %3 = load i32, i32* %x.addr, align 4
  %4 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %5 = bitcast %struct._GimpGroupLayer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %6)
  %sub = sub nsw i32 %3, %call4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %9 = bitcast %struct._GimpGroupLayer* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %10)
  %sub8 = sub nsw i32 %7, %call7
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %2, i32 %sub, i32 %sub8, i32 %11, i32 %12)
  ret void
}

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare void @gimp_rectangle_union(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
