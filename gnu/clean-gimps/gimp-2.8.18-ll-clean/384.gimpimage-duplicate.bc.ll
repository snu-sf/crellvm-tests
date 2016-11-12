; ModuleID = './app/core/gimpimage-duplicate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GimpGrid = type opaque
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_duplicate = private unnamed_addr constant [21 x i8] c"gimp_image_duplicate\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp-image-source-uri\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unknown guide orientation.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_duplicate(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  %active_layer = alloca %struct._GimpLayer*, align 8
  %active_channel = alloca %struct._GimpChannel*, align 8
  %active_vectors = alloca %struct._GimpVectors*, align 8
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
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy_until_idle(%struct._Gimp* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp11 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %18)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i32 @gimp_image_base_type(%struct._GimpImage* %19)
  %call15 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %16, i32 %call12, i32 %call13, i32 %call14, i32 0)
  store %struct._GimpImage* %call15, %struct._GimpImage** %new_image, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call16 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_save_source_uri(%struct._GimpImage* %21, %struct._GimpImage* %22)
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_colormap(%struct._GimpImage* %23, %struct._GimpImage* %24)
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_resolution(%struct._GimpImage* %25, %struct._GimpImage* %26)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call17 = call %struct._GimpLayer* @gimp_image_duplicate_layers(%struct._GimpImage* %27, %struct._GimpImage* %28)
  store %struct._GimpLayer* %call17, %struct._GimpLayer** %active_layer, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call18 = call %struct._GimpChannel* @gimp_image_duplicate_channels(%struct._GimpImage* %29, %struct._GimpImage* %30)
  store %struct._GimpChannel* %call18, %struct._GimpChannel** %active_channel, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call19 = call %struct._GimpVectors* @gimp_image_duplicate_vectors(%struct._GimpImage* %31, %struct._GimpImage* %32)
  store %struct._GimpVectors* %call19, %struct._GimpVectors** %active_vectors, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_floating_sel(%struct._GimpImage* %33, %struct._GimpImage* %34)
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_mask(%struct._GimpImage* %35, %struct._GimpImage* %36)
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %tobool20 = icmp ne %struct._GimpLayer* %37, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end
  %38 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %call22 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %38, %struct._GimpLayer* %39)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  %tobool24 = icmp ne %struct._GimpChannel* %40, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %41 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  %call26 = call %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage* %41, %struct._GimpChannel* %42)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %tobool28 = icmp ne %struct._GimpVectors* %43, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %44 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %45 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %call30 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %44, %struct._GimpVectors* %45)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_components(%struct._GimpImage* %46, %struct._GimpImage* %47)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_guides(%struct._GimpImage* %48, %struct._GimpImage* %49)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_sample_points(%struct._GimpImage* %50, %struct._GimpImage* %51)
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_grid(%struct._GimpImage* %52, %struct._GimpImage* %53)
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %55 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_quick_mask(%struct._GimpImage* %54, %struct._GimpImage* %55)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %57 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_duplicate_parasites(%struct._GimpImage* %56, %struct._GimpImage* %57)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call32 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %58)
  %59 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  store %struct._GimpImage* %59, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else.9
  %60 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %60
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @gimp_set_busy_until_idle(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_create_image(%struct._Gimp*, i32, i32, i32, i32) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare i32 @gimp_image_undo_disable(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_save_source_uri(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i8* @gimp_image_get_uri(%struct._GimpImage* %3)
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  call void @g_object_set_data_full(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* %call2, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_colormap(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call = call i32 @gimp_image_base_type(%struct._GimpImage* %0)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %2)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %3)
  call void @gimp_image_set_colormap(%struct._GimpImage* %1, i8* %call1, i32 %call2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_resolution(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %0, double* %xres, double* %yres)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %2 = load double, double* %xres, align 8
  %3 = load double, double* %yres, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %1, double %2, double %3)
  %4 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_get_unit(%struct._GimpImage* %5)
  call void @gimp_image_set_unit(%struct._GimpImage* %4, i32 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpLayer* @gimp_image_duplicate_layers(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %active_layer = alloca %struct._GimpLayer*, align 8
  %list = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  store %struct._GimpLayer* null, %struct._GimpLayer** %active_layer, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayer*
  store %struct._GimpLayer* %4, %struct._GimpLayer** %layer, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call1 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %9 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call5 = call %struct._GimpItem* @gimp_image_duplicate_item(%struct._GimpItem* %8, %struct._GimpImage* %9)
  %10 = bitcast %struct._GimpItem* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_layer_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpLayer*
  store %struct._GimpLayer* %11, %struct._GimpLayer** %new_layer, align 8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %12, i32 0, i32 4
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool8 = icmp ne %struct._GimpLayerMask* %13, null
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %mask10 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %14, i32 0, i32 4
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask10, align 8
  %16 = bitcast %struct._GimpLayerMask* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask13 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %18, i32 0, i32 4
  %19 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask13, align 8
  %20 = bitcast %struct._GimpLayerMask* %19 to i8*
  %call14 = call i8* @gimp_object_get_name(i8* %20)
  call void @gimp_object_set_name(%struct._GimpObject* %17, i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.end
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call16 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %21)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp = icmp eq %struct._GimpLayer* %call16, %22
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  store %struct._GimpLayer* %23, %struct._GimpLayer** %active_layer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %24 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %26 = load i32, i32* %count, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %count, align 4
  %call19 = call i32 @gimp_image_add_layer(%struct._GimpImage* %24, %struct._GimpLayer* %25, %struct._GimpLayer* null, i32 %26, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.18, %if.then
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %27, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  ret %struct._GimpLayer* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpChannel* @gimp_image_duplicate_channels(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %active_channel = alloca %struct._GimpChannel*, align 8
  %list = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  store %struct._GimpChannel* null, %struct._GimpChannel** %active_channel, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpChannel*
  store %struct._GimpChannel* %4, %struct._GimpChannel** %channel, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %8 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_image_duplicate_item(%struct._GimpItem* %7, %struct._GimpImage* %8)
  %9 = bitcast %struct._GimpItem* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_channel_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpChannel*
  store %struct._GimpChannel* %10, %struct._GimpChannel** %new_channel, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %11)
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %cmp = icmp eq %struct._GimpChannel* %call6, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  store %struct._GimpChannel* %13, %struct._GimpChannel** %active_channel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  %call7 = call i32 @gimp_image_add_channel(%struct._GimpImage* %14, %struct._GimpChannel* %15, %struct._GimpChannel* null, i32 %16, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  ret %struct._GimpChannel* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpVectors* @gimp_image_duplicate_vectors(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %active_vectors = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  store %struct._GimpVectors* null, %struct._GimpVectors** %active_vectors, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectors*
  store %struct._GimpVectors* %4, %struct._GimpVectors** %vectors, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %6 = bitcast %struct._GimpVectors* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %8 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call3 = call %struct._GimpItem* @gimp_image_duplicate_item(%struct._GimpItem* %7, %struct._GimpImage* %8)
  %9 = bitcast %struct._GimpItem* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_vectors_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpVectors*
  store %struct._GimpVectors* %10, %struct._GimpVectors** %new_vectors, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %11)
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %cmp = icmp eq %struct._GimpVectors* %call6, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  store %struct._GimpVectors* %13, %struct._GimpVectors** %active_vectors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  %call7 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %14, %struct._GimpVectors* %15, %struct._GimpVectors* null, i32 %16, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  ret %struct._GimpVectors* %20
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_floating_sel(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %floating_sel_drawable = alloca %struct._GimpDrawable*, align 8
  %floating_sel_path = alloca %struct._GList*, align 8
  %new_item_stack = alloca %struct._GimpItemStack*, align 8
  %new_floating_sel = alloca %struct._GimpLayer*, align 8
  %new_floating_sel_drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst29 = alloca %struct._GTypeInstance*, align 8
  %__t31 = alloca i64, align 8
  %__r34 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %__inst64 = alloca %struct._GTypeInstance*, align 8
  %__t66 = alloca i64, align 8
  %__r69 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  %__inst114 = alloca %struct._GTypeInstance*, align 8
  %__t116 = alloca i64, align 8
  %__r119 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %0)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %floating_sel, align 8
  %1 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool = icmp ne %struct._GimpLayer* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call1 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.else.24

if.then.13:                                       ; preds = %if.end.11
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_layer_mask_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpLayerMask*
  %call17 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %18)
  store %struct._GimpLayer* %call17, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GList* @gimp_item_get_path(%struct._GimpItem* %21)
  store %struct._GList* %call20, %struct._GList** %floating_sel_path, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call21 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %22)
  %23 = bitcast %struct._GimpContainer* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_stack_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItemStack*
  store %struct._GimpItemStack* %24, %struct._GimpItemStack** %new_item_stack, align 8
  br label %if.end.60

if.else.24:                                       ; preds = %if.end.11
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call %struct._GList* @gimp_item_get_path(%struct._GimpItem* %27)
  store %struct._GList* %call27, %struct._GList** %floating_sel_path, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst29, align 8
  %call32 = call i64 @gimp_layer_get_type() #5
  store i64 %call32, i64* %__t31, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %if.else.24
  store i32 0, i32* %__r34, align 4
  br label %if.end.48

if.else.37:                                       ; preds = %if.else.24
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %tobool39 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.45

land.lhs.true.40:                                 ; preds = %if.else.37
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type42, align 8
  %36 = load i64, i64* %__t31, align 8
  %cmp43 = icmp eq i64 %35, %36
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.40
  store i32 1, i32* %__r34, align 4
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.40, %if.else.37
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %38 = load i64, i64* %__t31, align 8
  %call46 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #6
  store i32 %call46, i32* %__r34, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %39 = load i32, i32* %__r34, align 4
  store i32 %39, i32* %tmp49
  %40 = load i32, i32* %tmp49
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.end.48
  %41 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call52 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %41)
  %42 = bitcast %struct._GimpContainer* %call52 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_stack_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call53)
  %43 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItemStack*
  store %struct._GimpItemStack* %43, %struct._GimpItemStack** %new_item_stack, align 8
  br label %if.end.59

if.else.55:                                       ; preds = %if.end.48
  %44 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call56 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %44)
  %45 = bitcast %struct._GimpContainer* %call56 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_stack_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call57)
  %46 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItemStack*
  store %struct._GimpItemStack* %46, %struct._GimpItemStack** %new_item_stack, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.13
  %47 = load %struct._GList*, %struct._GList** %floating_sel_path, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data, align 8
  %49 = ptrtoint i8* %48 to i64
  %conv = trunc i64 %49 to i32
  %sub = sub i32 %conv, 1
  %conv61 = zext i32 %sub to i64
  %50 = inttoptr i64 %conv61 to i8*
  %51 = load %struct._GList*, %struct._GList** %floating_sel_path, align 8
  %data62 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  store i8* %50, i8** %data62, align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %53, %struct._GTypeInstance** %__inst64, align 8
  %call67 = call i64 @gimp_layer_get_type() #5
  store i64 %call67, i64* %__t66, align 8
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %tobool70 = icmp ne %struct._GTypeInstance* %54, null
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.60
  store i32 0, i32* %__r69, align 4
  br label %if.end.84

if.else.72:                                       ; preds = %if.end.60
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %g_class73 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class73, align 8
  %tobool74 = icmp ne %struct._GTypeClass* %56, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.81

land.lhs.true.75:                                 ; preds = %if.else.72
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %g_class76 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class76, align 8
  %g_type77 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type77, align 8
  %60 = load i64, i64* %__t66, align 8
  %cmp78 = icmp eq i64 %59, %60
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.75
  store i32 1, i32* %__r69, align 4
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.75, %if.else.72
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %62 = load i64, i64* %__t66, align 8
  %call82 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %61, i64 %62) #6
  store i32 %call82, i32* %__r69, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.71
  %63 = load i32, i32* %__r69, align 4
  store i32 %63, i32* %tmp85
  %64 = load i32, i32* %tmp85
  %tobool86 = icmp ne i32 %64, 0
  br i1 %tobool86, label %if.then.87, label %if.else.93

if.then.87:                                       ; preds = %if.end.84
  %65 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %66 = bitcast %struct._GimpLayer* %65 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_item_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call88)
  %67 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpItem*
  %68 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call90 = call %struct._GimpItem* @gimp_image_duplicate_item(%struct._GimpItem* %67, %struct._GimpImage* %68)
  %69 = bitcast %struct._GimpItem* %call90 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_layer_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call91)
  %70 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpLayer*
  store %struct._GimpLayer* %70, %struct._GimpLayer** %new_floating_sel, align 8
  br label %if.end.106

if.else.93:                                       ; preds = %if.end.84
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %72 = bitcast %struct._GimpLayer* %71 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_item_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call94)
  %73 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpItem*
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %75 = bitcast %struct._GimpLayer* %74 to %struct._GTypeInstance*
  %g_class96 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %75, i32 0, i32 0
  %76 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class96, align 8
  %g_type97 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %76, i32 0, i32 0
  %77 = load i64, i64* %g_type97, align 8
  %call98 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %73, i64 %77)
  %78 = bitcast %struct._GimpItem* %call98 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_layer_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call99)
  %79 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpLayer*
  store %struct._GimpLayer* %79, %struct._GimpLayer** %new_floating_sel, align 8
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %new_floating_sel, align 8
  %81 = bitcast %struct._GimpLayer* %80 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_item_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call101)
  %82 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpItem*
  %83 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  call void @gimp_item_set_image(%struct._GimpItem* %82, %struct._GimpImage* %83)
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %new_floating_sel, align 8
  %85 = bitcast %struct._GimpLayer* %84 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_object_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call103)
  %86 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpObject*
  %87 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %88 = bitcast %struct._GimpLayer* %87 to i8*
  %call105 = call i8* @gimp_object_get_name(i8* %88)
  call void @gimp_object_set_name(%struct._GimpObject* %86, i8* %call105)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.93, %if.then.87
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %new_floating_sel, align 8
  %90 = bitcast %struct._GimpLayer* %89 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_object_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call107)
  %91 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpObject*
  %92 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %93 = bitcast %struct._GimpLayer* %92 to i8*
  %call109 = call i8* @gimp_object_get_name(i8* %93)
  call void @gimp_object_set_name(%struct._GimpObject* %91, i8* %call109)
  %94 = load %struct._GimpItemStack*, %struct._GimpItemStack** %new_item_stack, align 8
  %95 = load %struct._GList*, %struct._GList** %floating_sel_path, align 8
  %call110 = call %struct._GimpItem* @gimp_item_stack_get_item_by_path(%struct._GimpItemStack* %94, %struct._GList* %95)
  %96 = bitcast %struct._GimpItem* %call110 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_drawable_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call111)
  %97 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %97, %struct._GimpDrawable** %new_floating_sel_drawable, align 8
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %99 = bitcast %struct._GimpDrawable* %98 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %99, %struct._GTypeInstance** %__inst114, align 8
  %call117 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call117, i64* %__t116, align 8
  %100 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %tobool120 = icmp ne %struct._GTypeInstance* %100, null
  br i1 %tobool120, label %if.else.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.106
  store i32 0, i32* %__r119, align 4
  br label %if.end.134

if.else.122:                                      ; preds = %if.end.106
  %101 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %g_class123 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %101, i32 0, i32 0
  %102 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class123, align 8
  %tobool124 = icmp ne %struct._GTypeClass* %102, null
  br i1 %tobool124, label %land.lhs.true.125, label %if.else.131

land.lhs.true.125:                                ; preds = %if.else.122
  %103 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %g_class126 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %103, i32 0, i32 0
  %104 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class126, align 8
  %g_type127 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %104, i32 0, i32 0
  %105 = load i64, i64* %g_type127, align 8
  %106 = load i64, i64* %__t116, align 8
  %cmp128 = icmp eq i64 %105, %106
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.125
  store i32 1, i32* %__r119, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %land.lhs.true.125, %if.else.122
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst114, align 8
  %108 = load i64, i64* %__t116, align 8
  %call132 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %107, i64 %108) #6
  store i32 %call132, i32* %__r119, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.121
  %109 = load i32, i32* %__r119, align 4
  store i32 %109, i32* %tmp135
  %110 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %110, 0
  br i1 %tobool136, label %if.then.137, label %if.end.143

if.then.137:                                      ; preds = %if.end.134
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_floating_sel_drawable, align 8
  %112 = bitcast %struct._GimpDrawable* %111 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_layer_get_type() #5
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call138)
  %113 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpLayer*
  %call140 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %113)
  %114 = bitcast %struct._GimpLayerMask* %call140 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_drawable_get_type() #5
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call141)
  %115 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %115, %struct._GimpDrawable** %new_floating_sel_drawable, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.137, %if.end.134
  %116 = load %struct._GimpLayer*, %struct._GimpLayer** %new_floating_sel, align 8
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_floating_sel_drawable, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %116, %struct._GimpDrawable* %117)
  %118 = load %struct._GList*, %struct._GList** %floating_sel_path, align 8
  call void @g_list_free(%struct._GList* %118)
  br label %return

return:                                           ; preds = %if.end.143, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_mask(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %new_mask = alloca %struct._GimpChannel*, align 8
  %src_tiles = alloca %struct._TileManager*, align 8
  %dest_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %0)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %mask, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %1)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %new_mask, align 8
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %4)
  store %struct._TileManager* %call4, %struct._TileManager** %src_tiles, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %new_mask, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %7)
  store %struct._TileManager* %call7, %struct._TileManager** %dest_tiles, align 8
  %8 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call8 = call i32 @gimp_image_get_width(%struct._GimpImage* %9)
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %10)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %8, i32 0, i32 0, i32 %call8, i32 %call9, i32 0)
  %11 = load %struct._TileManager*, %struct._TileManager** %dest_tiles, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call i32 @gimp_image_get_width(%struct._GimpImage* %12)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_get_height(%struct._GimpImage* %13)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %11, i32 0, i32 0, i32 %call10, i32 %call11, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %new_mask, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %new_mask, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %15, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  ret void
}

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #3

declare %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage*, %struct._GimpChannel*) #3

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_components(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %new_private = alloca %struct._GimpImagePrivate*, align 8
  %count = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %4 = bitcast %struct._GimpImage* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %5, %struct._GimpImagePrivate** %new_private, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %count, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %8, i32 0, i32 37
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %visible, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %count, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %visible5 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %11, i32 0, i32 37
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %visible5, i32 0, i64 %idxprom4
  store i32 %9, i32* %arrayidx6, align 4
  %12 = load i32, i32* %count, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %active = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %13, i32 0, i32 38
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %active, i32 0, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %15 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %active10 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 38
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %active10, i32 0, i64 %idxprom9
  store i32 %14, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_guides(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpGuide*
  store %struct._GimpGuide* %4, %struct._GimpGuide** %guide, align 8
  %5 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call1 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %5)
  store i32 %call1, i32* %position, align 4
  %6 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call2 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %6)
  switch i32 %call2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  %7 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %8 = load i32, i32* %position, align 4
  %call3 = call %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage* %7, i32 %8, i32 0)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %9 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %10 = load i32, i32* %position, align 4
  %call5 = call %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage* %9, i32 %10, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %11, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_sample_points(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %4, %struct._GimpSamplePoint** %sample_point, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %6, i32 0, i32 2
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %8, i32 0, i32 3
  %9 = load i32, i32* %y, align 4
  %call1 = call %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage* %5, i32 %7, i32 %9, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_grid(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %0)
  %tobool = icmp ne %struct._GimpGrid* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %2)
  call void @gimp_image_set_grid(%struct._GimpImage* %1, %struct._GimpGrid* %call1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_quick_mask(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %new_private = alloca %struct._GimpImagePrivate*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %4 = bitcast %struct._GimpImage* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %5, %struct._GimpImagePrivate** %new_private, align 8
  %6 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_state = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %6, i32 0, i32 39
  %7 = load i32, i32* %quick_mask_state, align 4
  %8 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %quick_mask_state4 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %8, i32 0, i32 39
  store i32 %7, i32* %quick_mask_state4, align 4
  %9 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_inverted = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %9, i32 0, i32 40
  %10 = load i32, i32* %quick_mask_inverted, align 4
  %11 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %quick_mask_inverted5 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %11, i32 0, i32 40
  store i32 %10, i32* %quick_mask_inverted5, align 4
  %12 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %quick_mask_color = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %12, i32 0, i32 41
  %13 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_color6 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %13, i32 0, i32 41
  %14 = bitcast %struct._GimpRGB* %quick_mask_color to i8*
  %15 = bitcast %struct._GimpRGB* %quick_mask_color6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_duplicate_parasites(%struct._GimpImage* %image, %struct._GimpImage* %new_image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %new_private = alloca %struct._GimpImagePrivate*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %4 = bitcast %struct._GimpImage* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %5, %struct._GimpImagePrivate** %new_private, align 8
  %6 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %6, i32 0, i32 36
  %7 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %tobool = icmp ne %struct._GimpParasiteList* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %parasites4 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %8, i32 0, i32 36
  %9 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites4, align 8
  %10 = bitcast %struct._GimpParasiteList* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites5 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %11, i32 0, i32 36
  %12 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites5, align 8
  %call6 = call %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList* %12)
  %13 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %new_private, align 8
  %parasites7 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %13, i32 0, i32 36
  store %struct._GimpParasiteList* %call6, %struct._GimpParasiteList** %parasites7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_image_undo_enable(%struct._GimpImage*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #3

declare void @gimp_image_set_unit(%struct._GimpImage*, i32) #3

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #3

declare void @g_free(i8*) #3

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #3

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #3

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_image_duplicate_item(%struct._GimpItem* %item, %struct._GimpImage* %new_image) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  %2 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %3 = bitcast %struct._GimpItem* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %0, %struct._GimpImage* %1, i64 %5)
  store %struct._GimpItem* %call, %struct._GimpItem** %new_item, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %10 = bitcast %struct._GimpItem* %9 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %10)
  call void @gimp_object_set_name(%struct._GimpObject* %8, i8* %call3)
  %11 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  ret %struct._GimpItem* %11
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #3

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #3

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #3

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #3

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #3

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #3

declare %struct._GList* @gimp_item_get_path(%struct._GimpItem*) #3

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #1

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #3

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #3

declare void @gimp_item_set_image(%struct._GimpItem*, %struct._GimpImage*) #3

declare %struct._GimpItem* @gimp_item_stack_get_item_by_path(%struct._GimpItemStack*, %struct._GList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #3

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #3

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage*, i32, i32) #3

declare %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage*, i32, i32, i32) #3

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #3

declare void @gimp_image_set_grid(%struct._GimpImage*, %struct._GimpGrid*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @g_object_unref(i8*) #3

declare %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
