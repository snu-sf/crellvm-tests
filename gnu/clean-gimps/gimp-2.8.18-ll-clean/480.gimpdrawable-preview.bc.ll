; ModuleID = './app/core/gimpdrawable-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_preview_bytes = private unnamed_addr constant [28 x i8] c"gimp_drawable_preview_bytes\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_drawable_get_sub_preview = private unnamed_addr constant [30 x i8] c"gimp_drawable_get_sub_preview\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"src_x >= 0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"src_y >= 0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"src_width > 0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"src_height > 0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dest_width > 0\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dest_height > 0\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"(src_x + src_width) <= gimp_item_get_width (item)\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"(src_y + src_height) <= gimp_item_get_height (item)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_drawable_get_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %tb = alloca %struct._TempBuf*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 1
  %8 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %8, i32 0, i32 42
  %9 = load i32, i32* %layer_previews, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %preview_valid = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %11, i32 0, i32 12
  %12 = load i32, i32* %preview_valid, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp = icmp sle i32 %13, 112
  br i1 %cmp, label %land.lhs.true.6, label %if.end.23

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %height.addr, align 4
  %cmp7 = icmp sle i32 %14, 112
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.23

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool9 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.23

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_get_width(%struct._GimpImage* %16)
  %cmp12 = icmp sgt i32 %call11, 112
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i32 @gimp_image_get_height(%struct._GimpImage* %17)
  %cmp15 = icmp sgt i32 %call14, 112
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %land.lhs.true.13
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call %struct._TempBuf* @gimp_drawable_preview_private(%struct._GimpDrawable* %18, i32 112, i32 112)
  store %struct._TempBuf* %call17, %struct._TempBuf** %tb, align 8
  %19 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp eq i32 %19, 112
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.22

land.lhs.true.19:                                 ; preds = %if.then.16
  %20 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp eq i32 %20, 112
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.19
  %21 = load %struct._TempBuf*, %struct._TempBuf** %tb, align 8
  store %struct._TempBuf* %21, %struct._TempBuf** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.19, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.end
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %height.addr, align 4
  %call24 = call %struct._TempBuf* @gimp_drawable_preview_private(%struct._GimpDrawable* %22, i32 %23, i32 %24)
  store %struct._TempBuf* %call24, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then
  %25 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %25
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_drawable_preview_private(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %ret_buf = alloca %struct._TempBuf*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %preview_valid = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %1, i32 0, i32 12
  %2 = load i32, i32* %preview_valid, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private1, align 8
  %preview_cache = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %4, i32 0, i32 11
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %call = call %struct._TempBuf* @gimp_preview_cache_get(%struct._GSList** %preview_cache, i32 %5, i32 %6)
  store %struct._TempBuf* %call, %struct._TempBuf** %ret_buf, align 8
  %tobool2 = icmp ne %struct._TempBuf* %call, null
  br i1 %tobool2, label %if.end.18, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_height(%struct._GimpItem* %12)
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %height.addr, align 4
  %call7 = call %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable* %10, i32 0, i32 0, i32 %call5, i32 %call6, i32 %13, i32 %14)
  store %struct._TempBuf* %call7, %struct._TempBuf** %ret_buf, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private8, align 8
  %preview_valid9 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %16, i32 0, i32 12
  %17 = load i32, i32* %preview_valid9, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private12, align 8
  %preview_cache13 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %19, i32 0, i32 11
  call void @gimp_preview_cache_invalidate(%struct._GSList** %preview_cache13)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private14, align 8
  %preview_valid15 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %21, i32 0, i32 12
  store i32 1, i32* %preview_valid15, align 4
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 1
  %23 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private16, align 8
  %preview_cache17 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %23, i32 0, i32 11
  %24 = load %struct._TempBuf*, %struct._TempBuf** %ret_buf, align 8
  call void @gimp_preview_cache_add(%struct._GSList** %preview_cache17, %struct._TempBuf* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %lor.lhs.false
  %25 = load %struct._TempBuf*, %struct._TempBuf** %ret_buf, align 8
  ret %struct._TempBuf* %25
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_preview_bytes(%struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %base_type = alloca i32, align 4
  %bytes = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %bytes, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_preview_bytes, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %cond.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %16)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %lor.lhs.false.17
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp23 = icmp eq i32 %call22, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %18)
  %cmp25 = icmp eq i32 %call24, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %19 = phi i1 [ true, %cond.false.21 ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 1, %cond.true.20 ], [ %cond, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 0, %cond.true ], [ %cond26, %cond.end ]
  store i32 %cond28, i32* %base_type, align 4
  %20 = load i32, i32* %base_type, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %cond.end.27, %cond.end.27
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call29 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %21)
  store i32 %call29, i32* %bytes, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %cond.end.27
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call31 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %22)
  %tobool32 = icmp ne i32 %call31, 0
  %cond33 = select i1 %tobool32, i32 4, i32 3
  store i32 %cond33, i32* %bytes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.27, %sw.bb.30, %sw.bb
  %23 = load i32, i32* %bytes, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_drawable_get_sub_preview(%struct._GimpDrawable* %drawable, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %src_x.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %src_y.addr, align 4
  %cmp18 = icmp sge i32 %14, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32, i32* %src_width.addr, align 4
  %cmp24 = icmp sgt i32 %15, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32, i32* %src_height.addr, align 4
  %cmp30 = icmp sgt i32 %16, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %17 = load i32, i32* %dest_width.addr, align 4
  %cmp36 = icmp sgt i32 %17, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %18 = load i32, i32* %dest_height.addr, align 4
  %cmp42 = icmp sgt i32 %18, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call47)
  %21 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  store %struct._GimpItem* %21, %struct._GimpItem** %item, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.46
  %22 = load i32, i32* %src_x.addr, align 4
  %23 = load i32, i32* %src_width.addr, align 4
  %add = add nsw i32 %22, %23
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %cmp51 = icmp sle i32 %add, %call50
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.54

if.else.53:                                       ; preds = %do.body.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %25 = load i32, i32* %src_y.addr, align 4
  %26 = load i32, i32* %src_height.addr, align 4
  %add57 = add nsw i32 %25, %26
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call58 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %cmp59 = icmp sle i32 %add57, %call58
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.56
  br label %if.end.62

if.else.61:                                       ; preds = %do.body.56
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_sub_preview, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.62:                                        ; preds = %if.then.60
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call64 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call64, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 1
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 42
  %32 = load i32, i32* %layer_previews, align 4
  %tobool65 = icmp ne i32 %32, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %do.end.63
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.67:                                        ; preds = %do.end.63
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call68 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %33)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.67
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call70 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %34)
  %cmp71 = icmp eq i32 %call70, 1
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.67
  br label %cond.end.84

cond.false:                                       ; preds = %lor.lhs.false
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call72 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %35)
  %cmp73 = icmp eq i32 %call72, 2
  br i1 %cmp73, label %cond.true.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %cond.false
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call75 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %36)
  %cmp76 = icmp eq i32 %call75, 3
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %lor.lhs.false.74, %cond.false
  br label %cond.end

cond.false.78:                                    ; preds = %lor.lhs.false.74
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call79 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %37)
  %cmp80 = icmp eq i32 %call79, 4
  br i1 %cmp80, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.78
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call81 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %38)
  %cmp82 = icmp eq i32 %call81, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.78
  %39 = phi i1 [ true, %cond.false.78 ], [ %cmp82, %lor.rhs ]
  %cond = select i1 %39, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.77
  %cond83 = phi i32 [ 1, %cond.true.77 ], [ %cond, %lor.end ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end, %cond.true
  %cond85 = phi i32 [ 0, %cond.true ], [ %cond83, %cond.end ]
  %cmp86 = icmp eq i32 %cond85, 2
  br i1 %cmp86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %cond.end.84
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call88 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %41)
  %42 = load i32, i32* %src_x.addr, align 4
  %43 = load i32, i32* %src_y.addr, align 4
  %44 = load i32, i32* %src_width.addr, align 4
  %45 = load i32, i32* %src_height.addr, align 4
  %46 = load i32, i32* %dest_width.addr, align 4
  %47 = load i32, i32* %dest_height.addr, align 4
  %call89 = call %struct._TempBuf* @gimp_drawable_indexed_preview(%struct._GimpDrawable* %40, i8* %call88, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct._TempBuf* %call89, %struct._TempBuf** %retval
  br label %return

if.end.90:                                        ; preds = %cond.end.84
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call91 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %48)
  %49 = load i32, i32* %src_x.addr, align 4
  %50 = load i32, i32* %src_y.addr, align 4
  %51 = load i32, i32* %src_width.addr, align 4
  %52 = load i32, i32* %src_height.addr, align 4
  %53 = load i32, i32* %dest_width.addr, align 4
  %54 = load i32, i32* %dest_height.addr, align 4
  %call92 = call %struct._TempBuf* @tile_manager_get_sub_preview(%struct._TileManager* %call91, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store %struct._TempBuf* %call92, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.87, %if.then.66, %if.else.61, %if.else.53, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %55 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %55
}

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_drawable_indexed_preview(%struct._GimpDrawable* %drawable, i8* %cmap, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %cmap.addr = alloca i8*, align 8
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %preview_buf = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %bytes = alloca i32, align 4
  %subsample = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_drawable_preview_bytes(%struct._GimpDrawable* %0)
  store i32 %call, i32* %bytes, align 4
  store i32 1, i32* %subsample, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %dest_width.addr, align 4
  %2 = load i32, i32* %subsample, align 4
  %add = add nsw i32 %2, 1
  %mul = mul nsw i32 %1, %add
  %mul1 = mul nsw i32 %mul, 2
  %3 = load i32, i32* %src_width.addr, align 4
  %cmp = icmp slt i32 %mul1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %dest_height.addr, align 4
  %5 = load i32, i32* %subsample, align 4
  %add2 = add nsw i32 %5, 1
  %mul3 = mul nsw i32 %4, %add2
  %mul4 = mul nsw i32 %mul3, 2
  %6 = load i32, i32* %src_width.addr, align 4
  %cmp5 = icmp slt i32 %mul4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %subsample, align 4
  %add6 = add nsw i32 %8, 1
  store i32 %add6, i32* %subsample, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %9)
  %10 = load i32, i32* %src_x.addr, align 4
  %11 = load i32, i32* %src_y.addr, align 4
  %12 = load i32, i32* %src_width.addr, align 4
  %13 = load i32, i32* %src_height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call7, i32 %10, i32 %11, i32 %12, i32 %13, i32 0)
  %14 = load i32, i32* %dest_width.addr, align 4
  %15 = load i32, i32* %dest_height.addr, align 4
  %16 = load i32, i32* %bytes, align 4
  %call8 = call %struct._TempBuf* @temp_buf_new(i32 %14, i32 %15, i32 %16, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call8, %struct._TempBuf** %preview_buf, align 8
  %17 = load %struct._TempBuf*, %struct._TempBuf** %preview_buf, align 8
  %18 = load i32, i32* %dest_width.addr, align 4
  %19 = load i32, i32* %dest_height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %17, i32 0, i32 0, i32 %18, i32 %19)
  %20 = load i8*, i8** %cmap.addr, align 8
  %21 = load i32, i32* %subsample, align 4
  call void @subsample_indexed_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i8* %20, i32 %21)
  %22 = load %struct._TempBuf*, %struct._TempBuf** %preview_buf, align 8
  ret %struct._TempBuf* %22
}

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #1

declare %struct._TempBuf* @tile_manager_get_sub_preview(%struct._TileManager*, i32, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare %struct._TempBuf* @gimp_preview_cache_get(%struct._GSList**, i32, i32) #1

declare void @gimp_preview_cache_invalidate(%struct._GSList**) #1

declare void @gimp_preview_cache_add(%struct._GSList**, %struct._TempBuf*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @subsample_indexed_region(%struct._PixelRegion*, %struct._PixelRegion*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
