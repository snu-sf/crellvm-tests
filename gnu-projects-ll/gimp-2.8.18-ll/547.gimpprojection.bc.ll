; ModuleID = './app/core/gimpprojection.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProjectionClass = type { %struct._GimpObjectClass, void (%struct._GimpProjection*, i32, i32, i32, i32, i32)* }
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
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpPickable = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._TileManager = type opaque
%struct._Tile = type { i16, i16, i32, i8, i8, i16, i16, i32, i8*, i8*, i64, %struct._TileLink*, %struct._Tile*, %struct._Tile* }
%struct._TileLink = type { %struct._TileLink*, i32, %struct._TileManager* }
%struct._GimpArea = type { i32, i32, i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_projection_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpProjection\00", align 1
@gimp_projection_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_projection_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_projection_new = private unnamed_addr constant [20 x i8] c"gimp_projection_new\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PROJECTABLE (projectable)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"invalidate\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"structure-changed\00", align 1
@__func__.gimp_projection_get_sink_node = private unnamed_addr constant [30 x i8] c"gimp_projection_get_sink_node\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PROJECTION (proj)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dont-cache\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"gimp:tilemanager-sink\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@__func__.gimp_projection_get_tiles_at_level = private unnamed_addr constant [35 x i8] c"gimp_projection_get_tiles_at_level\00", align 1
@__func__.gimp_projection_flush = private unnamed_addr constant [22 x i8] c"gimp_projection_flush\00", align 1
@__func__.gimp_projection_flush_now = private unnamed_addr constant [26 x i8] c"gimp_projection_flush_now\00", align 1
@__func__.gimp_projection_finish_draw = private unnamed_addr constant [28 x i8] c"gimp_projection_finish_draw\00", align 1
@gimp_projection_parent_class = internal global i8* null, align 8
@GimpProjection_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@projection_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"gimpprojection.c\00", align 1
@__func__.gimp_projection_get_image_type = private unnamed_addr constant [31 x i8] c"gimp_projection_get_image_type\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%s: wanted to start idle render with no update_areas\00", align 1
@__func__.gimp_projection_idle_render_init = private unnamed_addr constant [33 x i8] c"gimp_projection_idle_render_init\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_projection_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_projection_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_projection_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_projection_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProjection*)* @gimp_projection_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_pickable_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_projection_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_projection_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_projection_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_projection_parent_class, align 8
  %1 = load i32, i32* @GimpProjection_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProjection_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProjectionClass*
  call void @gimp_projection_class_init(%struct._GimpProjectionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_init(%struct._GimpProjection* %proj) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  store %struct._GimpProjectable* null, %struct._GimpProjectable** %projectable, align 8
  %1 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %1, i32 0, i32 2
  store %struct._TilePyramid* null, %struct._TilePyramid** %pyramid, align 8
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %update_areas, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 6
  store i32 0, i32* %idle_id, align 4
  %4 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %4, i32 0, i32 7
  %update_areas2 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render1, i32 0, i32 7
  store %struct._GSList* null, %struct._GSList** %update_areas2, align 8
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %construct_flag = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 8
  store i32 0, i32* %construct_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %flush = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 1
  store void (%struct._GimpPickable*)* @gimp_projection_pickable_flush, void (%struct._GimpPickable*)** %flush, align 8
  %1 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %1, i32 0, i32 2
  store %struct._GimpImage* (%struct._GimpPickable*)* @gimp_projection_get_image, %struct._GimpImage* (%struct._GimpPickable*)** %get_image, align 8
  %2 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image_type = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpPickable*)* @gimp_projection_get_image_type, i32 (%struct._GimpPickable*)** %get_image_type, align 8
  %3 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_bytes = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %3, i32 0, i32 4
  store i32 (%struct._GimpPickable*)* @gimp_projection_get_bytes, i32 (%struct._GimpPickable*)** %get_bytes, align 8
  %4 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_tiles = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %4, i32 0, i32 5
  store %struct._TileManager* (%struct._GimpPickable*)* @gimp_projection_get_tiles, %struct._TileManager* (%struct._GimpPickable*)** %get_tiles, align 8
  %5 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_pixel_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %5, i32 0, i32 6
  store i32 (%struct._GimpPickable*, i32, i32, i8*)* @gimp_projection_get_pixel_at, i32 (%struct._GimpPickable*, i32, i32, i8*)** %get_pixel_at, align 8
  %6 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_opacity_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %6, i32 0, i32 7
  store i32 (%struct._GimpPickable*, i32, i32)* @gimp_projection_get_opacity_at, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_projection_estimate_memsize(i32 %type, i32 %width, i32 %height) #3 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i64 0, i64* %bytes, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i64 4, i64* %bytes, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i64 2, i64* %bytes, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %1 = load i64, i64* %bytes, align 8
  %2 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 %1, %conv
  %3 = load i32, i32* %height.addr, align 4
  %conv2 = sext i32 %3 to i64
  %mul3 = mul nsw i64 %mul, %conv2
  %conv4 = sitofp i64 %mul3 to double
  %mul5 = fmul double %conv4, 1.330000e+00
  %conv6 = fptosi double %mul5 to i64
  ret i64 %conv6
}

; Function Attrs: nounwind uwtable
define %struct._GimpProjection* @gimp_projection_new(%struct._GimpProjectable* %projectable) #3 {
entry:
  %retval = alloca %struct._GimpProjection*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_projection_new, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProjection* null, %struct._GimpProjection** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_projection_get_type() #7
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpProjection*
  store %struct._GimpProjection* %13, %struct._GimpProjection** %proj, align 8
  %14 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %15 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %projectable13 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %15, i32 0, i32 1
  store %struct._GimpProjectable* %14, %struct._GimpProjectable** %projectable13, align 8
  %16 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %17 = bitcast %struct._GimpProjectable* %16 to i8*
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %19 = bitcast %struct._GimpProjection* %18 to i8*
  %call14 = call i64 @g_signal_connect_object(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProjectable*, i32, i32, i32, i32, %struct._GimpProjection*)* @gimp_projection_projectable_invalidate to void ()*), i8* %19, i32 0)
  %20 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %21 = bitcast %struct._GimpProjectable* %20 to i8*
  %22 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %23 = bitcast %struct._GimpProjection* %22 to i8*
  %call15 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProjectable*, i32, %struct._GimpProjection*)* @gimp_projection_projectable_flush to void ()*), i8* %23, i32 0)
  %24 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %25 = bitcast %struct._GimpProjectable* %24 to i8*
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %27 = bitcast %struct._GimpProjection* %26 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProjectable*, %struct._GimpProjection*)* @gimp_projection_projectable_changed to void ()*), i8* %27, i32 0)
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  store %struct._GimpProjection* %28, %struct._GimpProjection** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %29 = load %struct._GimpProjection*, %struct._GimpProjection** %retval
  ret %struct._GimpProjection* %29
}

; Function Attrs: nounwind readnone
declare i64 @gimp_projectable_interface_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_projectable_invalidate(%struct._GimpProjectable* %projectable, i32 %x, i32 %y, i32 %w, i32 %h, %struct._GimpProjection* %proj) #3 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %proj.addr = alloca %struct._GimpProjection*, align 8
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %w.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  call void @gimp_projection_add_update_area(%struct._GimpProjection* %0, i32 %1, i32 %2, i32 %3, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_projectable_flush(%struct._GimpProjectable* %projectable, i32 %invalidate_preview, %struct._GimpProjection* %proj) #3 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %invalidate_preview.addr = alloca i32, align 4
  %proj.addr = alloca %struct._GimpProjection*, align 8
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32 %invalidate_preview, i32* %invalidate_preview.addr, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load i32, i32* %invalidate_preview.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %invalidate_preview1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %1, i32 0, i32 9
  store i32 1, i32* %invalidate_preview1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  call void @gimp_projection_flush(%struct._GimpProjection* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_projectable_changed(%struct._GimpProjectable* %projectable, %struct._GimpProjection* %proj) #3 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 6
  %1 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 7
  %idle_id2 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render1, i32 0, i32 6
  %3 = load i32, i32* %idle_id2, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render3 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %4, i32 0, i32 7
  %idle_id4 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render3, i32 0, i32 6
  store i32 0, i32* %idle_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 6
  %6 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  call void @gimp_area_list_free(%struct._GSList* %6)
  %7 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas5 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %7, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %update_areas5, align 8
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %8, i32 0, i32 2
  %9 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tobool6 = icmp ne %struct._TilePyramid* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid8 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %10, i32 0, i32 2
  %11 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid8, align 8
  call void @tile_pyramid_destroy(%struct._TilePyramid* %11)
  %12 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid9 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %12, i32 0, i32 2
  store %struct._TilePyramid* null, %struct._TilePyramid** %pyramid9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable11 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 1
  %14 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable11, align 8
  call void @gimp_projectable_get_offset(%struct._GimpProjectable* %14, i32* %off_x, i32* %off_y)
  %15 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  call void @gimp_projectable_get_size(%struct._GimpProjectable* %15, i32* %width, i32* %height)
  %16 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %17 = load i32, i32* %off_x, align 4
  %18 = load i32, i32* %off_y, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  call void @gimp_projection_add_update_area(%struct._GimpProjection* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_projection_get_sink_node(%struct._GimpProjection* %proj) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %graph = alloca %struct._GeglNode*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_projection_get_sink_node, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 4
  %14 = load %struct._GeglNode*, %struct._GeglNode** %sink_node, align 8
  %tobool11 = icmp ne %struct._GeglNode* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node13 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %15, i32 0, i32 4
  %16 = load %struct._GeglNode*, %struct._GeglNode** %sink_node13, align 8
  store %struct._GeglNode* %16, %struct._GeglNode** %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %call15 = call %struct._GeglNode* @gegl_node_new()
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %graph16 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %17, i32 0, i32 3
  store %struct._GeglNode* %call15, %struct._GeglNode** %graph16, align 8
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %graph17 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %18, i32 0, i32 3
  %19 = load %struct._GeglNode*, %struct._GeglNode** %graph17, align 8
  %20 = bitcast %struct._GeglNode* %19 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %21 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %21, i32 0, i32 1
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  %call18 = call %struct._GeglNode* @gimp_projectable_get_graph(%struct._GimpProjectable* %22)
  store %struct._GeglNode* %call18, %struct._GeglNode** %graph, align 8
  %23 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %graph19 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %23, i32 0, i32 3
  %24 = load %struct._GeglNode*, %struct._GeglNode** %graph19, align 8
  %25 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %call20 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %24, %struct._GeglNode* %25)
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %graph21 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %26, i32 0, i32 3
  %27 = load %struct._GeglNode*, %struct._GeglNode** %graph21, align 8
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %29 = bitcast %struct._GimpProjection* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_pickable_interface_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPickable*
  %call24 = call %struct._TileManager* @gimp_projection_get_tiles(%struct._GimpPickable* %30)
  %call25 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._TileManager* %call24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %31 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node26 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %31, i32 0, i32 4
  store %struct._GeglNode* %call25, %struct._GeglNode** %sink_node26, align 8
  %32 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %33 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node27 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %33, i32 0, i32 4
  %34 = load %struct._GeglNode*, %struct._GeglNode** %sink_node27, align 8
  %call28 = call i32 @gegl_node_connect_to(%struct._GeglNode* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._GeglNode* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %35 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node29 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %35, i32 0, i32 4
  %36 = load %struct._GeglNode*, %struct._GeglNode** %sink_node29, align 8
  store %struct._GeglNode* %36, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.else.9
  %37 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %37
}

declare %struct._GeglNode* @gegl_node_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GeglNode* @gimp_projectable_get_graph(%struct._GimpProjectable*) #1

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gimp_projection_get_tiles(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  %call2 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %2, i32 0, i32* null)
  ret %struct._TileManager* %call2
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %proj, i32 %level, i32* %is_premult) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %level.addr = alloca i32, align 4
  %is_premult.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32* %is_premult, i32** %is_premult.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_projection_get_tiles_at_level, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 2
  %14 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tobool11 = icmp ne %struct._TilePyramid* %14, null
  br i1 %tobool11, label %if.end.29, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %16 = bitcast %struct._GimpProjection* %15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_pickable_interface_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call16)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPickable*
  %call18 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %17)
  store i32 %call18, i32* %type, align 4
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %18, i32 0, i32 1
  %19 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_get_size(%struct._GimpProjectable* %19, i32* %width, i32* %height)
  %20 = load i32, i32* %type, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %call19 = call %struct._TilePyramid* @tile_pyramid_new(i32 %20, i32 %21, i32 %22)
  %23 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid20 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %23, i32 0, i32 2
  store %struct._TilePyramid* %call19, %struct._TilePyramid** %pyramid20, align 8
  %24 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid21 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %24, i32 0, i32 2
  %25 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid21, align 8
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %27 = bitcast %struct._GimpProjection* %26 to i8*
  call void @tile_pyramid_set_validate_proc(%struct._TilePyramid* %25, void (%struct._TileManager*, %struct._Tile*, i8*)* bitcast (void (%struct._TileManager*, %struct._Tile*, %struct._GimpProjection*)* @gimp_projection_validate_tile to void (%struct._TileManager*, %struct._Tile*, i8*)*), i8* %27)
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %28, i32 0, i32 4
  %29 = load %struct._GeglNode*, %struct._GeglNode** %sink_node, align 8
  %tobool22 = icmp ne %struct._GeglNode* %29, null
  br i1 %tobool22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.then.12
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid25 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %30, i32 0, i32 2
  %31 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid25, align 8
  %call26 = call %struct._TileManager* @tile_pyramid_get_tiles(%struct._TilePyramid* %31, i32 0, i32* null)
  store %struct._TileManager* %call26, %struct._TileManager** %tiles, align 8
  %32 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %sink_node27 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %32, i32 0, i32 4
  %33 = load %struct._GeglNode*, %struct._GeglNode** %sink_node27, align 8
  %34 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._TileManager* %34, i8* null)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %if.then.12
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.end
  %35 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid30 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %35, i32 0, i32 2
  %36 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid30, align 8
  %37 = load i32, i32* %level.addr, align 4
  %38 = load i32*, i32** %is_premult.addr, align 8
  %call31 = call %struct._TileManager* @tile_pyramid_get_tiles(%struct._TilePyramid* %36, i32 %37, i32* %38)
  store %struct._TileManager* %call31, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.else.9
  %39 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %39
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_get_image_type(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  %type = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  store %struct._GimpProjection* %2, %struct._GimpProjection** %proj, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 1
  %4 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  %call2 = call i32 @gimp_projectable_get_image_type(%struct._GimpProjectable* %4)
  store i32 %call2, i32* %type, align 4
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end.12

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %cond.true.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %cond.false
  %8 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %lor.lhs.false.5, %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %lor.lhs.false.5
  %9 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %9, 4
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.8
  %10 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %10, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.8
  %11 = phi i1 [ true, %cond.false.8 ], [ %cmp10, %lor.rhs ]
  %cond = select i1 %11, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.7
  %cond11 = phi i32 [ 1, %cond.true.7 ], [ %cond, %lor.end ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ 0, %cond.true ], [ %cond11, %cond.end ]
  switch i32 %cond13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %cond.end.12, %cond.end.12
  store i32 1, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %cond.end.12
  store i32 3, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end.12
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 301, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_projection_get_image_type, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %sw.bb.14, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gimp_projectable_get_size(%struct._GimpProjectable*, i32*, i32*) #1

declare %struct._TilePyramid* @tile_pyramid_new(i32, i32, i32) #1

declare void @tile_pyramid_set_validate_proc(%struct._TilePyramid*, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_validate_tile(%struct._TileManager* %tm, %struct._Tile* %tile, %struct._GimpProjection* %proj) #3 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %additional = alloca [7 x %struct._Tile*], align 16
  %n_additional = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 0, i32* %n_additional, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_coordinates(%struct._TileManager* %0, %struct._Tile* %1, i32* %x, i32* %y)
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_ewidth(%struct._Tile* %2)
  store i32 %call, i32* %tile_width, align 4
  store i32 %call, i32* %width, align 4
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i32 @tile_eheight(%struct._Tile* %3)
  store i32 %call1, i32* %tile_height, align 4
  store i32 %call1, i32* %height, align 4
  %4 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %5 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_manager_get_tile_col_row(%struct._TileManager* %4, %struct._Tile* %5, i32* %col, i32* %row)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %tile_width, align 4
  %cmp = icmp eq i32 %6, 64
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %n_additional, align 4
  %cmp2 = icmp slt i32 %7, 7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %col, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %col, align 4
  %10 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %11 = load i32, i32* %col, align 4
  %12 = load i32, i32* %row, align 4
  %call3 = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %10, i32 %11, i32 %12, i32 0, i32 0)
  store %struct._Tile* %call3, %struct._Tile** %t, align 8
  %13 = load %struct._Tile*, %struct._Tile** %t, align 8
  %tobool = icmp ne %struct._Tile* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %14 = load %struct._Tile*, %struct._Tile** %t, align 8
  %call4 = call i32 @tile_is_valid(%struct._Tile* %14)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct._Tile*, %struct._Tile** %t, align 8
  %valid = getelementptr inbounds %struct._Tile, %struct._Tile* %15, i32 0, i32 3
  %bf.load = load i8, i8* %valid, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %valid, align 8
  %16 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %17 = load i32, i32* %col, align 4
  %18 = load i32, i32* %row, align 4
  %call6 = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %16, i32 %17, i32 %18, i32 1, i32 1)
  store %struct._Tile* %call6, %struct._Tile** %t, align 8
  %19 = load %struct._Tile*, %struct._Tile** %t, align 8
  %call7 = call i32 @tile_ewidth(%struct._Tile* %19)
  store i32 %call7, i32* %tile_width, align 4
  %20 = load i32, i32* %tile_width, align 4
  %21 = load i32, i32* %width, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %width, align 4
  %22 = load %struct._Tile*, %struct._Tile** %t, align 8
  %23 = load i32, i32* %n_additional, align 4
  %inc8 = add nsw i32 %23, 1
  store i32 %inc8, i32* %n_additional, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [7 x %struct._Tile*], [7 x %struct._Tile*]* %additional, i32 0, i64 %idxprom
  store %struct._Tile* %22, %struct._Tile** %arrayidx, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  %24 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  call void @gimp_projection_construct(%struct._GimpProjection* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n_additional, align 4
  %cmp9 = icmp slt i32 %29, %30
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %31 to i64
  %arrayidx11 = getelementptr inbounds [7 x %struct._Tile*], [7 x %struct._Tile*]* %additional, i32 0, i64 %idxprom10
  %32 = load %struct._Tile*, %struct._Tile** %arrayidx11, align 8
  %valid12 = getelementptr inbounds %struct._Tile, %struct._Tile* %32, i32 0, i32 3
  %bf.load13 = load i8, i8* %valid12, align 8
  %bf.clear14 = and i8 %bf.load13, -3
  %bf.set15 = or i8 %bf.clear14, 2
  store i8 %bf.set15, i8* %valid12, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds [7 x %struct._Tile*], [7 x %struct._Tile*]* %additional, i32 0, i64 %idxprom16
  %34 = load %struct._Tile*, %struct._Tile** %arrayidx17, align 8
  call void @tile_release(%struct._Tile* %34, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %35, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._TileManager* @tile_pyramid_get_tiles(%struct._TilePyramid*, i32, i32*) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_projection_get_level(%struct._GimpProjection* %proj, double %scale_x, double %scale_y) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  %1 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_get_size(%struct._GimpProjectable* %1, i32* %width, i32* %height)
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* %height, align 4
  %4 = load double, double* %scale_x.addr, align 8
  %5 = load double, double* %scale_y.addr, align 8
  %cmp = fcmp ogt double %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load double, double* %scale_x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load double, double* %scale_y.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %6, %cond.true ], [ %7, %cond.false ]
  %call = call i32 @tile_pyramid_get_level(i32 %2, i32 %3, double %cond)
  ret i32 %call
}

declare i32 @tile_pyramid_get_level(i32, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_projection_flush(%struct._GimpProjection* %proj) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_projection_flush, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  call void @gimp_projection_flush_whenever(%struct._GimpProjection* %13, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_flush_whenever(%struct._GimpProjection* %proj, i32 %now) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %now.addr = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %area = alloca %struct._GimpArea*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 6
  %1 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %now.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas3 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 6
  %4 = load %struct._GSList*, %struct._GSList** %update_areas3, align 8
  store %struct._GSList* %4, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.2
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool4 = icmp ne %struct._GSList* %5, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpArea*
  store %struct._GimpArea* %8, %struct._GimpArea** %area, align 8
  %9 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %9, i32 0, i32 0
  %10 = load i32, i32* %x1, align 4
  %11 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %11, i32 0, i32 2
  %12 = load i32, i32* %x2, align 4
  %cmp = icmp ne i32 %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %13, i32 0, i32 1
  %14 = load i32, i32* %y1, align 4
  %15 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %15, i32 0, i32 3
  %16 = load i32, i32* %y2, align 4
  %cmp5 = icmp ne i32 %14, %16
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %18 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x17 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %18, i32 0, i32 0
  %19 = load i32, i32* %x17, align 4
  %20 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y18 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %20, i32 0, i32 1
  %21 = load i32, i32* %y18, align 4
  %22 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x29 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %22, i32 0, i32 2
  %23 = load i32, i32* %x29, align 4
  %24 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x110 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %24, i32 0, i32 0
  %25 = load i32, i32* %x110, align 4
  %sub = sub nsw i32 %23, %25
  %26 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y211 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %26, i32 0, i32 3
  %27 = load i32, i32* %y211, align 4
  %28 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y112 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %28, i32 0, i32 1
  %29 = load i32, i32* %y112, align 4
  %sub13 = sub nsw i32 %27, %29
  call void @gimp_projection_paint_area(%struct._GimpProjection* %17, i32 0, i32 %19, i32 %21, i32 %sub, i32 %sub13)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool14 = icmp ne %struct._GSList* %30, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1
  %32 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %33 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  call void @gimp_projection_idle_render_init(%struct._GimpProjection* %33)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %for.end
  %34 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas16 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %34, i32 0, i32 6
  %35 = load %struct._GSList*, %struct._GSList** %update_areas16, align 8
  call void @gimp_area_list_free(%struct._GSList* %35)
  %36 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas17 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %36, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %update_areas17, align 8
  br label %if.end.25

if.else.18:                                       ; preds = %entry
  %37 = load i32, i32* %now.addr, align 4
  %tobool19 = icmp ne i32 %37, 0
  br i1 %tobool19, label %if.end.24, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.else.18
  %38 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %38, i32 0, i32 9
  %39 = load i32, i32* %invalidate_preview, align 4
  %tobool21 = icmp ne i32 %39, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true.20
  %40 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %invalidate_preview23 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %40, i32 0, i32 9
  store i32 0, i32* %invalidate_preview23, align 4
  %41 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %41, i32 0, i32 1
  %42 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_invalidate_preview(%struct._GimpProjectable* %42)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.else.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_projection_flush_now(%struct._GimpProjection* %proj) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_projection_flush_now, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  call void @gimp_projection_flush_whenever(%struct._GimpProjection* %13, i32 1)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_projection_finish_draw(%struct._GimpProjection* %proj) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projection_finish_draw, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 6
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render13 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %15, i32 0, i32 7
  %idle_id14 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render13, i32 0, i32 6
  %16 = load i32, i32* %idle_id14, align 4
  %call15 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render16 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %17, i32 0, i32 7
  %idle_id17 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render16, i32 0, i32 6
  store i32 0, i32* %idle_id17, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %19 = bitcast %struct._GimpProjection* %18 to i8*
  %call18 = call i32 @gimp_projection_idle_render_callback(i8* %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %while.end, %do.end
  ret void
}

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_idle_render_callback(i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  %workx = alloca i32, align 4
  %worky = alloca i32, align 4
  %workw = alloca i32, align 4
  %workh = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpProjection*
  store %struct._GimpProjection* %1, %struct._GimpProjection** %proj, align 8
  store i32 256, i32* %workw, align 4
  store i32 128, i32* %workh, align 4
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 7
  %x = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 2
  %3 = load i32, i32* %x, align 4
  store i32 %3, i32* %workx, align 4
  %4 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %4, i32 0, i32 7
  %y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render1, i32 0, i32 3
  %5 = load i32, i32* %y, align 4
  store i32 %5, i32* %worky, align 4
  %6 = load i32, i32* %workx, align 4
  %7 = load i32, i32* %workw, align 4
  %add = add nsw i32 %6, %7
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render2 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %8, i32 0, i32 7
  %base_x = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render2, i32 0, i32 4
  %9 = load i32, i32* %base_x, align 4
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render3 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %10, i32 0, i32 7
  %width = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render3, i32 0, i32 0
  %11 = load i32, i32* %width, align 4
  %add4 = add nsw i32 %9, %11
  %cmp = icmp sgt i32 %add, %add4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render5 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %12, i32 0, i32 7
  %base_x6 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render5, i32 0, i32 4
  %13 = load i32, i32* %base_x6, align 4
  %14 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render7 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %14, i32 0, i32 7
  %width8 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render7, i32 0, i32 0
  %15 = load i32, i32* %width8, align 4
  %add9 = add nsw i32 %13, %15
  %16 = load i32, i32* %workx, align 4
  %sub = sub nsw i32 %add9, %16
  store i32 %sub, i32* %workw, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %worky, align 4
  %18 = load i32, i32* %workh, align 4
  %add10 = add nsw i32 %17, %18
  %19 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render11 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %19, i32 0, i32 7
  %base_y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render11, i32 0, i32 5
  %20 = load i32, i32* %base_y, align 4
  %21 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render12 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %21, i32 0, i32 7
  %height = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render12, i32 0, i32 1
  %22 = load i32, i32* %height, align 4
  %add13 = add nsw i32 %20, %22
  %cmp14 = icmp sgt i32 %add10, %add13
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end
  %23 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render16 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %23, i32 0, i32 7
  %base_y17 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render16, i32 0, i32 5
  %24 = load i32, i32* %base_y17, align 4
  %25 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render18 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %25, i32 0, i32 7
  %height19 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render18, i32 0, i32 1
  %26 = load i32, i32* %height19, align 4
  %add20 = add nsw i32 %24, %26
  %27 = load i32, i32* %worky, align 4
  %sub21 = sub nsw i32 %add20, %27
  store i32 %sub21, i32* %workh, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.end
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %29 = load i32, i32* %workx, align 4
  %30 = load i32, i32* %worky, align 4
  %31 = load i32, i32* %workw, align 4
  %32 = load i32, i32* %workh, align 4
  call void @gimp_projection_paint_area(%struct._GimpProjection* %28, i32 1, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render23 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %33, i32 0, i32 7
  %x24 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render23, i32 0, i32 2
  %34 = load i32, i32* %x24, align 4
  %add25 = add nsw i32 %34, 256
  store i32 %add25, i32* %x24, align 4
  %35 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render26 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %35, i32 0, i32 7
  %x27 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render26, i32 0, i32 2
  %36 = load i32, i32* %x27, align 4
  %37 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render28 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %37, i32 0, i32 7
  %base_x29 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render28, i32 0, i32 4
  %38 = load i32, i32* %base_x29, align 4
  %39 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render30 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %39, i32 0, i32 7
  %width31 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render30, i32 0, i32 0
  %40 = load i32, i32* %width31, align 4
  %add32 = add nsw i32 %38, %40
  %cmp33 = icmp sge i32 %36, %add32
  br i1 %cmp33, label %if.then.34, label %if.end.59

if.then.34:                                       ; preds = %if.end.22
  %41 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render35 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %41, i32 0, i32 7
  %base_x36 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render35, i32 0, i32 4
  %42 = load i32, i32* %base_x36, align 4
  %43 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render37 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %43, i32 0, i32 7
  %x38 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render37, i32 0, i32 2
  store i32 %42, i32* %x38, align 4
  %44 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render39 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %44, i32 0, i32 7
  %y40 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render39, i32 0, i32 3
  %45 = load i32, i32* %y40, align 4
  %add41 = add nsw i32 %45, 128
  store i32 %add41, i32* %y40, align 4
  %46 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render42 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %46, i32 0, i32 7
  %y43 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render42, i32 0, i32 3
  %47 = load i32, i32* %y43, align 4
  %48 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render44 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %48, i32 0, i32 7
  %base_y45 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render44, i32 0, i32 5
  %49 = load i32, i32* %base_y45, align 4
  %50 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render46 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %50, i32 0, i32 7
  %height47 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render46, i32 0, i32 1
  %51 = load i32, i32* %height47, align 4
  %add48 = add nsw i32 %49, %51
  %cmp49 = icmp sge i32 %47, %add48
  br i1 %cmp49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.then.34
  %52 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %call = call i32 @gimp_projection_idle_render_next_area(%struct._GimpProjection* %52)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.57, label %if.then.51

if.then.51:                                       ; preds = %if.then.50
  %53 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render52 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %53, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render52, i32 0, i32 6
  store i32 0, i32* %idle_id, align 4
  %54 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %54, i32 0, i32 9
  %55 = load i32, i32* %invalidate_preview, align 4
  %tobool53 = icmp ne i32 %55, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.51
  %56 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %invalidate_preview55 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %56, i32 0, i32 9
  store i32 0, i32* %invalidate_preview55, align 4
  %57 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %57, i32 0, i32 1
  %58 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_invalidate_preview(%struct._GimpProjectable* %58)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.51
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.34
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.end.56
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_class_init(%struct._GimpProjectionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProjectionClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpProjectionClass* %klass, %struct._GimpProjectionClass** %klass.addr, align 8
  %0 = load %struct._GimpProjectionClass*, %struct._GimpProjectionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProjectionClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpProjectionClass*, %struct._GimpProjectionClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpProjectionClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpProjectionClass*, %struct._GimpProjectionClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpProjectionClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 %8, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, i64 4, i32 5, i64 20, i64 24, i64 24, i64 24, i64 24)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @projection_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_projection_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_projection_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  store %struct._GimpProjection* %2, %struct._GimpProjection** %proj, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 6
  %4 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render2 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 7
  %idle_id3 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render2, i32 0, i32 6
  %6 = load i32, i32* %idle_id3, align 4
  %call4 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render5 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %7, i32 0, i32 7
  %idle_id6 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render5, i32 0, i32 6
  store i32 0, i32* %idle_id6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %8, i32 0, i32 6
  %9 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  call void @gimp_area_list_free(%struct._GSList* %9)
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %update_areas7 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %10, i32 0, i32 6
  store %struct._GSList* null, %struct._GSList** %update_areas7, align 8
  %11 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render8 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %11, i32 0, i32 7
  %update_areas9 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render8, i32 0, i32 7
  %12 = load %struct._GSList*, %struct._GSList** %update_areas9, align 8
  call void @gimp_area_list_free(%struct._GSList* %12)
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %idle_render10 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 7
  %update_areas11 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render10, i32 0, i32 7
  store %struct._GSList* null, %struct._GSList** %update_areas11, align 8
  %14 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %14, i32 0, i32 2
  %15 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tobool12 = icmp ne %struct._TilePyramid* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %16 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %pyramid14 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %16, i32 0, i32 2
  %17 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid14, align 8
  call void @tile_pyramid_destroy(%struct._TilePyramid* %17)
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %pyramid15 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %18, i32 0, i32 2
  store %struct._TilePyramid* null, %struct._TilePyramid** %pyramid15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %19 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %graph = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %19, i32 0, i32 3
  %20 = load %struct._GeglNode*, %struct._GeglNode** %graph, align 8
  %tobool17 = icmp ne %struct._GeglNode* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %21 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %graph19 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %21, i32 0, i32 3
  %22 = load %struct._GeglNode*, %struct._GeglNode** %graph19, align 8
  %23 = bitcast %struct._GeglNode* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %graph20 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %24, i32 0, i32 3
  store %struct._GeglNode* null, %struct._GeglNode** %graph20, align 8
  %25 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %sink_node = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %25, i32 0, i32 4
  store %struct._GeglNode* null, %struct._GeglNode** %sink_node, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %processor = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %26, i32 0, i32 5
  %27 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %tobool22 = icmp ne %struct._GeglProcessor* %27, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %processor24 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %28, i32 0, i32 5
  %29 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor24, align 8
  %30 = bitcast %struct._GeglProcessor* %29 to i8*
  call void @g_object_unref(i8* %30)
  %31 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %processor25 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %31, i32 0, i32 5
  store %struct._GeglProcessor* null, %struct._GeglProcessor** %processor25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %32 = load i8*, i8** @gimp_projection_parent_class, align 8
  %33 = bitcast i8* %32 to %struct._GTypeClass*
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %33, i64 80)
  %34 = bitcast %struct._GTypeClass* %call27 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %34, i32 0, i32 6
  %35 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %35(%struct._GObject* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_projection_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  store %struct._GimpProjection* %2, %struct._GimpProjection** %projection, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 2
  %4 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tobool = icmp ne %struct._TilePyramid* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %pyramid2 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 2
  %6 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid2, align 8
  %call3 = call i64 @tile_pyramid_get_memsize(%struct._TilePyramid* %6)
  store i64 %call3, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %memsize, align 8
  %8 = load i8*, i8** @gimp_projection_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  %11 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call6 = call i64 %11(%struct._GimpObject* %12, i64* %13)
  %add = add nsw i64 %7, %call6
  ret i64 %add
}

declare void @gimp_area_list_free(%struct._GSList*) #1

declare void @tile_pyramid_destroy(%struct._TilePyramid*) #1

declare void @g_object_unref(i8*) #1

declare i64 @tile_pyramid_get_memsize(%struct._TilePyramid*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_pickable_flush(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  store %struct._GimpProjection* %2, %struct._GimpProjection** %proj, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  call void @gimp_projection_finish_draw(%struct._GimpProjection* %3)
  %4 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  call void @gimp_projection_flush_now(%struct._GimpProjection* %4)
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 9
  %6 = load i32, i32* %invalidate_preview, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %invalidate_preview2 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %7, i32 0, i32 9
  store i32 0, i32* %invalidate_preview2, align 4
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %8, i32 0, i32 1
  %9 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_invalidate_preview(%struct._GimpProjectable* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpImage* @gimp_projection_get_image(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %proj = alloca %struct._GimpProjection*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_projection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProjection*
  store %struct._GimpProjection* %2, %struct._GimpProjection** %proj, align 8
  %3 = load %struct._GimpProjection*, %struct._GimpProjection** %proj, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %3, i32 0, i32 1
  %4 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  %call2 = call %struct._GimpImage* @gimp_projectable_get_image(%struct._GimpProjectable* %4)
  ret %struct._GimpImage* %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_get_bytes(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.26

cond.false:                                       ; preds = %entry
  %1 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call1 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end.24

cond.false.4:                                     ; preds = %cond.false
  %2 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call5 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %2)
  %cmp6 = icmp eq i32 %call5, 3
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false.4
  br label %cond.end.22

cond.false.8:                                     ; preds = %cond.false.4
  %3 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call9 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %3)
  %cmp10 = icmp eq i32 %call9, 2
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false.8
  br label %cond.end.20

cond.false.12:                                    ; preds = %cond.false.8
  %4 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call13 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %4)
  %cmp14 = icmp eq i32 %call13, 5
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.12
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call17 = call i32 @gimp_projection_get_image_type(%struct._GimpPickable* %5)
  %cmp18 = icmp eq i32 %call17, 4
  %cond = select i1 %cmp18, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi i32 [ 2, %cond.true.15 ], [ %cond, %cond.false.16 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true.11
  %cond21 = phi i32 [ 1, %cond.true.11 ], [ %cond19, %cond.end ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.true.7
  %cond23 = phi i32 [ 2, %cond.true.7 ], [ %cond21, %cond.end.20 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.3
  %cond25 = phi i32 [ 3, %cond.true.3 ], [ %cond23, %cond.end.22 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true
  %cond27 = phi i32 [ 4, %cond.true ], [ %cond25, %cond.end.24 ]
  ret i32 %cond27
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_get_pixel_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y, i8* %pixel) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call = call %struct._TileManager* @gimp_projection_get_tiles(%struct._GimpPickable* %0)
  store %struct._TileManager* %call, %struct._TileManager** %tiles, align 8
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %x.addr, align 4
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call3 = call i32 @tile_manager_width(%struct._TileManager* %4)
  %cmp4 = icmp sge i32 %3, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %5 = load i32, i32* %y.addr, align 4
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call6 = call i32 @tile_manager_height(%struct._TileManager* %6)
  %cmp7 = icmp sge i32 %5, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %7 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i8*, i8** %pixel.addr, align 8
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %7, i32 %8, i32 %9, i8* %10)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_get_opacity_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  ret i32 255
}

declare void @gimp_projectable_invalidate_preview(%struct._GimpProjectable*) #1

declare %struct._GimpImage* @gimp_projectable_get_image(%struct._GimpProjectable*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare i32 @gimp_projectable_get_image_type(%struct._GimpProjectable*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_paint_area(%struct._GimpProjection* %proj, i32 %now, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %now.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  %1 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_get_offset(%struct._GimpProjectable* %1, i32* %off_x, i32* %off_y)
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 1
  %3 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable1, align 8
  call void @gimp_projectable_get_size(%struct._GimpProjectable* %3, i32* %width, i32* %height)
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %width, align 4
  br label %cond.end.5

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %8 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ 0, %cond.true.3 ], [ %8, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %6, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond6, i32* %x1, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %height, align 4
  %cmp7 = icmp sgt i32 %9, %10
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end.5
  %11 = load i32, i32* %height, align 4
  br label %cond.end.15

cond.false.9:                                     ; preds = %cond.end.5
  %12 = load i32, i32* %y.addr, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false.9
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.false.9
  %13 = load i32, i32* %y.addr, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 0, %cond.true.11 ], [ %13, %cond.false.12 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end.13, %cond.true.8
  %cond16 = phi i32 [ %11, %cond.true.8 ], [ %cond14, %cond.end.13 ]
  store i32 %cond16, i32* %y1, align 4
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %14, %15
  %16 = load i32, i32* %width, align 4
  %cmp17 = icmp sgt i32 %add, %16
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.15
  %17 = load i32, i32* %width, align 4
  br label %cond.end.27

cond.false.19:                                    ; preds = %cond.end.15
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %add20 = add nsw i32 %18, %19
  %cmp21 = icmp slt i32 %add20, 0
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false.19
  br label %cond.end.25

cond.false.23:                                    ; preds = %cond.false.19
  %20 = load i32, i32* %x.addr, align 4
  %21 = load i32, i32* %w.addr, align 4
  %add24 = add nsw i32 %20, %21
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.22
  %cond26 = phi i32 [ 0, %cond.true.22 ], [ %add24, %cond.false.23 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.18
  %cond28 = phi i32 [ %17, %cond.true.18 ], [ %cond26, %cond.end.25 ]
  store i32 %cond28, i32* %x2, align 4
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %h.addr, align 4
  %add29 = add nsw i32 %22, %23
  %24 = load i32, i32* %height, align 4
  %cmp30 = icmp sgt i32 %add29, %24
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.27
  %25 = load i32, i32* %height, align 4
  br label %cond.end.40

cond.false.32:                                    ; preds = %cond.end.27
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %h.addr, align 4
  %add33 = add nsw i32 %26, %27
  %cmp34 = icmp slt i32 %add33, 0
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.32
  br label %cond.end.38

cond.false.36:                                    ; preds = %cond.false.32
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %h.addr, align 4
  %add37 = add nsw i32 %28, %29
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.35
  %cond39 = phi i32 [ 0, %cond.true.35 ], [ %add37, %cond.false.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.31
  %cond41 = phi i32 [ %25, %cond.true.31 ], [ %cond39, %cond.end.38 ]
  store i32 %cond41, i32* %y2, align 4
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %31 = load i32, i32* %x1, align 4
  %32 = load i32, i32* %y1, align 4
  %33 = load i32, i32* %x2, align 4
  %34 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %33, %34
  %35 = load i32, i32* %y2, align 4
  %36 = load i32, i32* %y1, align 4
  %sub42 = sub nsw i32 %35, %36
  call void @gimp_projection_invalidate(%struct._GimpProjection* %30, i32 %31, i32 %32, i32 %sub, i32 %sub42)
  %37 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %38 = bitcast %struct._GimpProjection* %37 to i8*
  %39 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @projection_signals, i32 0, i64 0), align 4
  %40 = load i32, i32* %now.addr, align 4
  %41 = load i32, i32* %x1, align 4
  %42 = load i32, i32* %off_x, align 4
  %add43 = add nsw i32 %41, %42
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %off_y, align 4
  %add44 = add nsw i32 %43, %44
  %45 = load i32, i32* %x2, align 4
  %46 = load i32, i32* %x1, align 4
  %sub45 = sub nsw i32 %45, %46
  %47 = load i32, i32* %y2, align 4
  %48 = load i32, i32* %y1, align 4
  %sub46 = sub nsw i32 %47, %48
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %38, i32 %39, i32 0, i32 %40, i32 %add43, i32 %add44, i32 %sub45, i32 %sub46)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_idle_render_init(%struct._GimpProjection* %proj) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %list = alloca %struct._GSList*, align 8
  %area = alloca %struct._GimpArea*, align 8
  %area8 = alloca %struct._GimpArea*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 6
  %1 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpArea*
  store %struct._GimpArea* %5, %struct._GimpArea** %area, align 8
  %6 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %6, i32 0, i32 7
  %update_areas1 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 7
  %7 = load %struct._GSList*, %struct._GSList** %update_areas1, align 8
  %8 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %8, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4
  %10 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %10, i32 0, i32 1
  %11 = load i32, i32* %y1, align 4
  %12 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %12, i32 0, i32 2
  %13 = load i32, i32* %x2, align 4
  %14 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %14, i32 0, i32 3
  %15 = load i32, i32* %y2, align 4
  %call = call %struct._GimpArea* @gimp_area_new(i32 %9, i32 %11, i32 %13, i32 %15)
  %call2 = call %struct._GSList* @gimp_area_list_process(%struct._GSList* %7, %struct._GimpArea* %call)
  %16 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render3 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %16, i32 0, i32 7
  %update_areas4 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render3, i32 0, i32 7
  store %struct._GSList* %call2, %struct._GSList** %update_areas4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool5 = icmp ne %struct._GSList* %17, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1
  %19 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render6 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %20, i32 0, i32 7
  %idle_id = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render6, i32 0, i32 6
  %21 = load i32, i32* %idle_id, align 4
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %22 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render9 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %22, i32 0, i32 7
  %base_x = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render9, i32 0, i32 4
  %23 = load i32, i32* %base_x, align 4
  %24 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render10 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %24, i32 0, i32 7
  %y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render10, i32 0, i32 3
  %25 = load i32, i32* %y, align 4
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render11 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %26, i32 0, i32 7
  %base_x12 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render11, i32 0, i32 4
  %27 = load i32, i32* %base_x12, align 4
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render13 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %28, i32 0, i32 7
  %width = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render13, i32 0, i32 0
  %29 = load i32, i32* %width, align 4
  %add = add nsw i32 %27, %29
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render14 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %30, i32 0, i32 7
  %y15 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render14, i32 0, i32 3
  %31 = load i32, i32* %y15, align 4
  %32 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render16 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %32, i32 0, i32 7
  %height = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render16, i32 0, i32 1
  %33 = load i32, i32* %height, align 4
  %34 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render17 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %34, i32 0, i32 7
  %y18 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render17, i32 0, i32 3
  %35 = load i32, i32* %y18, align 4
  %36 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render19 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %36, i32 0, i32 7
  %base_y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render19, i32 0, i32 5
  %37 = load i32, i32* %base_y, align 4
  %sub = sub nsw i32 %35, %37
  %sub20 = sub nsw i32 %33, %sub
  %add21 = add nsw i32 %31, %sub20
  %call22 = call %struct._GimpArea* @gimp_area_new(i32 %23, i32 %25, i32 %add, i32 %add21)
  store %struct._GimpArea* %call22, %struct._GimpArea** %area8, align 8
  %38 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render23 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %38, i32 0, i32 7
  %update_areas24 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render23, i32 0, i32 7
  %39 = load %struct._GSList*, %struct._GSList** %update_areas24, align 8
  %40 = load %struct._GimpArea*, %struct._GimpArea** %area8, align 8
  %call25 = call %struct._GSList* @gimp_area_list_process(%struct._GSList* %39, %struct._GimpArea* %40)
  %41 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render26 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %41, i32 0, i32 7
  %update_areas27 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render26, i32 0, i32 7
  store %struct._GSList* %call25, %struct._GSList** %update_areas27, align 8
  %42 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %call28 = call i32 @gimp_projection_idle_render_next_area(%struct._GimpProjection* %42)
  br label %if.end.36

if.else:                                          ; preds = %for.end
  %43 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render29 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %43, i32 0, i32 7
  %update_areas30 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render29, i32 0, i32 7
  %44 = load %struct._GSList*, %struct._GSList** %update_areas30, align 8
  %cmp = icmp eq %struct._GSList* %44, null
  br i1 %cmp, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.else
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_projection_idle_render_init, i32 0, i32 0))
  br label %if.end.36

if.end:                                           ; preds = %if.else
  %45 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %call32 = call i32 @gimp_projection_idle_render_next_area(%struct._GimpProjection* %45)
  %46 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %47 = bitcast %struct._GimpProjection* %46 to i8*
  %call33 = call i32 @g_idle_add_full(i32 150, i32 (i8*)* @gimp_projection_idle_render_callback, i8* %47, void (i8*)* null)
  %48 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render34 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %48, i32 0, i32 7
  %idle_id35 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render34, i32 0, i32 6
  store i32 %call33, i32* %idle_id35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end, %if.then
  ret void
}

declare void @gimp_projectable_get_offset(%struct._GimpProjectable*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_invalidate(%struct._GimpProjection* %proj, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 2
  %1 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid, align 8
  %tobool = icmp ne %struct._TilePyramid* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %pyramid1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 2
  %3 = load %struct._TilePyramid*, %struct._TilePyramid** %pyramid1, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* %w.addr, align 4
  %7 = load i32, i32* %h.addr, align 4
  call void @tile_pyramid_invalidate_area(%struct._TilePyramid* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @tile_pyramid_invalidate_area(%struct._TilePyramid*, i32, i32, i32, i32) #1

declare %struct._GSList* @gimp_area_list_process(%struct._GSList*, %struct._GimpArea*) #1

declare %struct._GimpArea* @gimp_area_new(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_projection_idle_render_next_area(%struct._GimpProjection* %proj) #3 {
entry:
  %retval = alloca i32, align 4
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %area = alloca %struct._GimpArea*, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 7
  %update_areas = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render, i32 0, i32 7
  %1 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 7
  %update_areas2 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render1, i32 0, i32 7
  %3 = load %struct._GSList*, %struct._GSList** %update_areas2, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpArea*
  store %struct._GimpArea* %5, %struct._GimpArea** %area, align 8
  %6 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render3 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %6, i32 0, i32 7
  %update_areas4 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render3, i32 0, i32 7
  %7 = load %struct._GSList*, %struct._GSList** %update_areas4, align 8
  %8 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %9 = bitcast %struct._GimpArea* %8 to i8*
  %call = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9)
  %10 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render5 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %10, i32 0, i32 7
  %update_areas6 = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render5, i32 0, i32 7
  store %struct._GSList* %call, %struct._GSList** %update_areas6, align 8
  %11 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %11, i32 0, i32 0
  %12 = load i32, i32* %x1, align 4
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render7 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 7
  %base_x = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render7, i32 0, i32 4
  store i32 %12, i32* %base_x, align 4
  %14 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render8 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %14, i32 0, i32 7
  %x = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render8, i32 0, i32 2
  store i32 %12, i32* %x, align 4
  %15 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %15, i32 0, i32 1
  %16 = load i32, i32* %y1, align 4
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render9 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %17, i32 0, i32 7
  %base_y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render9, i32 0, i32 5
  store i32 %16, i32* %base_y, align 4
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render10 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %18, i32 0, i32 7
  %y = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render10, i32 0, i32 3
  store i32 %16, i32* %y, align 4
  %19 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %19, i32 0, i32 2
  %20 = load i32, i32* %x2, align 4
  %21 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x111 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %21, i32 0, i32 0
  %22 = load i32, i32* %x111, align 4
  %sub = sub nsw i32 %20, %22
  %23 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render12 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %23, i32 0, i32 7
  %width = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render12, i32 0, i32 0
  store i32 %sub, i32* %width, align 4
  %24 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %24, i32 0, i32 3
  %25 = load i32, i32* %y2, align 4
  %26 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y113 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %26, i32 0, i32 1
  %27 = load i32, i32* %y113, align 4
  %sub14 = sub nsw i32 %25, %27
  %28 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %idle_render15 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %28, i32 0, i32 7
  %height = getelementptr inbounds %struct._GimpProjectionIdleRender, %struct._GimpProjectionIdleRender* %idle_render15, i32 0, i32 1
  store i32 %sub14, i32* %height, align 4
  %29 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  call void @gimp_area_free(%struct._GimpArea* %29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @gimp_area_free(%struct._GimpArea*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @tile_manager_get_tile_coordinates(%struct._TileManager*, %struct._Tile*, i32*, i32*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare void @tile_manager_get_tile_col_row(%struct._TileManager*, %struct._Tile*, i32*, i32*) #1

declare %struct._Tile* @tile_manager_get_at(%struct._TileManager*, i32, i32, i32, i32) #1

declare i32 @tile_is_valid(%struct._Tile*) #1

declare void @gimp_projection_construct(%struct._GimpProjection*, i32, i32, i32, i32) #1

declare void @tile_release(%struct._Tile*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_add_update_area(%struct._GimpProjection* %proj, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %area = alloca %struct._GimpArea*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  %1 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_get_offset(%struct._GimpProjectable* %1, i32* %off_x, i32* %off_y)
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 1
  %3 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable1, align 8
  call void @gimp_projectable_get_size(%struct._GimpProjectable* %3, i32* %width, i32* %height)
  %4 = load i32, i32* %off_x, align 4
  %5 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, i32* %x.addr, align 4
  %6 = load i32, i32* %off_y, align 4
  %7 = load i32, i32* %y.addr, align 4
  %sub2 = sub nsw i32 %7, %6
  store i32 %sub2, i32* %y.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %width, align 4
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %x.addr, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %12 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 0, %cond.true.4 ], [ %12, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %10, %cond.true ], [ %cond, %cond.end ]
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %height, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.6
  %15 = load i32, i32* %height, align 4
  br label %cond.end.16

cond.false.10:                                    ; preds = %cond.end.6
  %16 = load i32, i32* %y.addr, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false.10
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.false.10
  %17 = load i32, i32* %y.addr, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ 0, %cond.true.12 ], [ %17, %cond.false.13 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end.14, %cond.true.9
  %cond17 = phi i32 [ %15, %cond.true.9 ], [ %cond15, %cond.end.14 ]
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, i32* %width, align 4
  %cmp18 = icmp sgt i32 %add, %20
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.16
  %21 = load i32, i32* %width, align 4
  br label %cond.end.28

cond.false.20:                                    ; preds = %cond.end.16
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %w.addr, align 4
  %add21 = add nsw i32 %22, %23
  %cmp22 = icmp slt i32 %add21, 0
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.20
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.false.20
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %w.addr, align 4
  %add25 = add nsw i32 %24, %25
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i32 [ 0, %cond.true.23 ], [ %add25, %cond.false.24 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.19
  %cond29 = phi i32 [ %21, %cond.true.19 ], [ %cond27, %cond.end.26 ]
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %h.addr, align 4
  %add30 = add nsw i32 %26, %27
  %28 = load i32, i32* %height, align 4
  %cmp31 = icmp sgt i32 %add30, %28
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.28
  %29 = load i32, i32* %height, align 4
  br label %cond.end.41

cond.false.33:                                    ; preds = %cond.end.28
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %add34 = add nsw i32 %30, %31
  %cmp35 = icmp slt i32 %add34, 0
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.33
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.false.33
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %h.addr, align 4
  %add38 = add nsw i32 %32, %33
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.36
  %cond40 = phi i32 [ 0, %cond.true.36 ], [ %add38, %cond.false.37 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.32
  %cond42 = phi i32 [ %29, %cond.true.32 ], [ %cond40, %cond.end.39 ]
  %call = call %struct._GimpArea* @gimp_area_new(i32 %cond7, i32 %cond17, i32 %cond29, i32 %cond42)
  store %struct._GimpArea* %call, %struct._GimpArea** %area, align 8
  %34 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %34, i32 0, i32 6
  %35 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  %36 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %call43 = call %struct._GSList* @gimp_area_list_process(%struct._GSList* %35, %struct._GimpArea* %36)
  %37 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %update_areas44 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %37, i32 0, i32 6
  store %struct._GSList* %call43, %struct._GSList** %update_areas44, align 8
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
