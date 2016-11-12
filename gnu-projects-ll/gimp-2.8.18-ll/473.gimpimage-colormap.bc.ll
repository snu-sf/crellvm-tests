; ModuleID = './app/core/gimpimage-colormap.bc'
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
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpProjection = type opaque
%struct._GeglNode = type opaque
%struct._GimpGrid = type opaque
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpUndo = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_colormap_init = private unnamed_addr constant [25 x i8] c"gimp_image_colormap_init\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"private->colormap == NULL\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"private->palette == NULL\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Colormap of Image #%d (%s)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gimp-indexed-image-palette-%d\00", align 1
@__func__.gimp_image_colormap_dispose = private unnamed_addr constant [28 x i8] c"gimp_image_colormap_dispose\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"private->colormap != NULL\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"GIMP_IS_PALETTE (private->palette)\00", align 1
@__func__.gimp_image_colormap_free = private unnamed_addr constant [25 x i8] c"gimp_image_colormap_free\00", align 1
@__func__.gimp_image_get_colormap_palette = private unnamed_addr constant [32 x i8] c"gimp_image_get_colormap_palette\00", align 1
@__func__.gimp_image_get_colormap = private unnamed_addr constant [24 x i8] c"gimp_image_get_colormap\00", align 1
@__func__.gimp_image_get_colormap_size = private unnamed_addr constant [29 x i8] c"gimp_image_get_colormap_size\00", align 1
@__func__.gimp_image_set_colormap = private unnamed_addr constant [24 x i8] c"gimp_image_set_colormap\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"colormap != NULL || n_colors == 0\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"n_colors >= 0 && n_colors <= 256\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"undo-type\04Set Colormap\00", align 1
@__func__.gimp_image_unset_colormap = private unnamed_addr constant [26 x i8] c"gimp_image_unset_colormap\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"undo-type\04Unset Colormap\00", align 1
@__func__.gimp_image_get_colormap_entry = private unnamed_addr constant [30 x i8] c"gimp_image_get_colormap_entry\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"color_index >= 0 && color_index < private->n_colors\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_image_set_colormap_entry = private unnamed_addr constant [30 x i8] c"gimp_image_set_colormap_entry\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"undo-type\04Change Colormap entry\00", align 1
@__func__.gimp_image_add_colormap_entry = private unnamed_addr constant [30 x i8] c"gimp_image_add_colormap_entry\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"private->n_colors < 256\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"undo-type\04Add Color to Colormap\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_colormap_init(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %palettes = alloca %struct._GimpContainer*, align 8
  %palette_name = alloca i8*, align 8
  %palette_id = alloca i8*, align 8
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
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_init, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp eq i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_init, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 14
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %cmp20 = icmp eq %struct._GimpPalette* %19, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_init, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #5
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call26 = call i32 @gimp_image_get_ID(%struct._GimpImage* %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %21)
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call25, i32 %call26, i8* %call27)
  store i8* %call28, i8** %palette_name, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call29 = call i32 @gimp_image_get_ID(%struct._GimpImage* %22)
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %call29)
  store i8* %call30, i8** %palette_id, align 8
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 13
  store i32 0, i32* %n_colors, align 4
  %call31 = call noalias i8* @g_malloc0_n(i64 768, i64 1)
  %24 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap32 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %24, i32 0, i32 12
  store i8* %call31, i8** %colormap32, align 8
  %25 = load i8*, i8** %palette_name, align 8
  %call33 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* null, i8* %25)
  %26 = bitcast %struct._GimpData* %call33 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_palette_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call34)
  %27 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpPalette*
  %28 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette36 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %28, i32 0, i32 14
  store %struct._GimpPalette* %27, %struct._GimpPalette** %palette36, align 8
  %29 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette37 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %29, i32 0, i32 14
  %30 = load %struct._GimpPalette*, %struct._GimpPalette** %palette37, align 8
  call void @gimp_palette_set_columns(%struct._GimpPalette* %30, i32 16)
  %31 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette38 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %31, i32 0, i32 14
  %32 = load %struct._GimpPalette*, %struct._GimpPalette** %palette38, align 8
  %33 = bitcast %struct._GimpPalette* %32 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_data_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call39)
  %34 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpData*
  %35 = load i8*, i8** %palette_id, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %34, i8* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 41
  %38 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call41 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %38)
  store %struct._GimpContainer* %call41, %struct._GimpContainer** %palettes, align 8
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %palettes, align 8
  %40 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette42 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %40, i32 0, i32 14
  %41 = load %struct._GimpPalette*, %struct._GimpPalette** %palette42, align 8
  %42 = bitcast %struct._GimpPalette* %41 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_object_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call43)
  %43 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpObject*
  %call45 = call i32 @gimp_container_add(%struct._GimpContainer* %39, %struct._GimpObject* %43)
  %44 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %44)
  %45 = load i8*, i8** %palette_id, align 8
  call void @g_free(i8* %45)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpData* @gimp_palette_new(%struct._GimpContext*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

declare void @gimp_palette_set_columns(%struct._GimpPalette*, i32) #3

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_colormap_dispose(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %palettes = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_colormap_dispose, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_colormap_dispose, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 14
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %20 = bitcast %struct._GimpPalette* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_palette_get_type() #6
  store i64 %call24, i64* %__t23, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type34, align 8
  %27 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %26, %27
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %29 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #7
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %30 = load i32, i32* %__r26, align 4
  store i32 %30, i32* %tmp41
  %31 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %31, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_colormap_dispose, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 41
  %34 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call47 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %34)
  store %struct._GimpContainer* %call47, %struct._GimpContainer** %palettes, align 8
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %palettes, align 8
  %36 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette48 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %36, i32 0, i32 14
  %37 = load %struct._GimpPalette*, %struct._GimpPalette** %palette48, align 8
  %38 = bitcast %struct._GimpPalette* %37 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_object_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call49)
  %39 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpObject*
  %call51 = call i32 @gimp_container_remove(%struct._GimpContainer* %35, %struct._GimpObject* %39)
  br label %return

return:                                           ; preds = %do.end.46, %if.else.44, %if.else.16, %if.else.9
  ret void
}

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_colormap_free(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_free, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_free, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 14
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %20 = bitcast %struct._GimpPalette* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_palette_get_type() #6
  store i64 %call24, i64* %__t23, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type34, align 8
  %27 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %26, %27
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %29 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #7
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %30 = load i32, i32* %__r26, align 4
  store i32 %30, i32* %tmp41
  %31 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %31, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_colormap_free, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %32 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap47 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %32, i32 0, i32 12
  %33 = load i8*, i8** %colormap47, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap48 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %34, i32 0, i32 12
  store i8* null, i8** %colormap48, align 8
  %35 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette49 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %35, i32 0, i32 14
  %36 = load %struct._GimpPalette*, %struct._GimpPalette** %palette49, align 8
  %37 = bitcast %struct._GimpPalette* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette50 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %38, i32 0, i32 14
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette50, align 8
  br label %return

return:                                           ; preds = %do.end.46, %if.else.44, %if.else.16, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_image_get_colormap_palette(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
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
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_get_colormap_palette, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 14
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %16, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %17
}

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_colormap(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
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
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_get_colormap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 12
  %16 = load i8*, i8** %colormap, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_colormap_size(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
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
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_get_colormap_size, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 13
  %16 = load i32, i32* %n_colors, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_image_set_colormap(%struct._GimpImage* %image, i8* %colormap, i32 %n_colors, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %colormap.addr = alloca i8*, align 8
  %n_colors.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry50 = alloca %struct._GimpPaletteEntry*, align 8
  %i = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %colormap.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i32, i32* %n_colors.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load i32, i32* %n_colors.addr, align 4
  %cmp19 = icmp sge i32 %15, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.23

land.lhs.true.20:                                 ; preds = %do.body.18
  %16 = load i32, i32* %n_colors.addr, align 4
  %cmp21 = icmp sle i32 %16, 256
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.20
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_image_get_type() #6
  %call27 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %18, i64 %call26)
  %19 = bitcast i8* %call27 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %19, %struct._GimpImagePrivate** %private, align 8
  %20 = load i32, i32* %push_undo.addr, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %do.end.25
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call30 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %call31 = call %struct._GimpUndo* @gimp_image_undo_push_image_colormap(%struct._GimpImage* %21, i8* %call30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %do.end.25
  %22 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap33 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %22, i32 0, i32 12
  %23 = load i8*, i8** %colormap33, align 8
  %tobool34 = icmp ne i8* %23, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %24 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap36 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %24, i32 0, i32 12
  %25 = load i8*, i8** %colormap36, align 8
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 768, i32 1, i1 false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %26 = load i8*, i8** %colormap.addr, align 8
  %tobool38 = icmp ne i8* %26, null
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.37
  %27 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap40 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %27, i32 0, i32 12
  %28 = load i8*, i8** %colormap40, align 8
  %tobool41 = icmp ne i8* %28, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.39
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_init(%struct._GimpImage* %29)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.39
  %30 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap44 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %30, i32 0, i32 12
  %31 = load i8*, i8** %colormap44, align 8
  %32 = load i8*, i8** %colormap.addr, align 8
  %33 = load i32, i32* %n_colors.addr, align 4
  %mul = mul nsw i32 %33, 3
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %conv, i32 1, i1 false)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %if.end.37
  %34 = load i32, i32* %n_colors.addr, align 4
  %35 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors46 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %35, i32 0, i32 13
  store i32 %34, i32* %n_colors46, align 4
  %36 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %36, i32 0, i32 14
  %37 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool47 = icmp ne %struct._GimpPalette* %37, null
  br i1 %tobool47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %if.end.45
  %38 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette52 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %38, i32 0, i32 14
  %39 = load %struct._GimpPalette*, %struct._GimpPalette** %palette52, align 8
  %40 = bitcast %struct._GimpPalette* %39 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_data_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call53)
  %41 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %41)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.48
  %42 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette55 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %42, i32 0, i32 14
  %43 = load %struct._GimpPalette*, %struct._GimpPalette** %palette55, align 8
  %call56 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %43, i32 0)
  store %struct._GimpPaletteEntry* %call56, %struct._GimpPaletteEntry** %entry50, align 8
  %tobool57 = icmp ne %struct._GimpPaletteEntry* %call56, null
  br i1 %tobool57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette58 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %44, i32 0, i32 14
  %45 = load %struct._GimpPalette*, %struct._GimpPalette** %palette58, align 8
  %46 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry50, align 8
  call void @gimp_palette_delete_entry(%struct._GimpPalette* %45, %struct._GimpPaletteEntry* %46)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors59 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %48, i32 0, i32 13
  %49 = load i32, i32* %n_colors59, align 4
  %cmp60 = icmp slt i32 %47, %49
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %51 = load i32, i32* %i, align 4
  call void @gimp_image_colormap_set_palette_entry(%struct._GimpImage* %50, i32 %51)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette62 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %53, i32 0, i32 14
  %54 = load %struct._GimpPalette*, %struct._GimpPalette** %palette62, align 8
  %55 = bitcast %struct._GimpPalette* %54 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_data_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call63)
  %56 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %56)
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %if.end.45
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_changed(%struct._GimpImage* %57, i32 -1)
  br label %return

return:                                           ; preds = %if.end.65, %if.else.23, %if.else.15, %if.else.9
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_image_colormap(%struct._GimpImage*, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_data_freeze(%struct._GimpData*) #3

declare %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette*, i32) #3

declare void @gimp_palette_delete_entry(%struct._GimpPalette*, %struct._GimpPaletteEntry*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_colormap_set_palette_entry(%struct._GimpImage* %image, i32 %index) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %index.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %name = alloca [64 x i8], align 16
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load i32, i32* %index.addr, align 4
  %mul = mul nsw i32 3, %3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %4 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %4, i32 0, i32 12
  %5 = load i8*, i8** %colormap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i32, i32* %index.addr, align 4
  %mul2 = mul nsw i32 3, %7
  %add3 = add nsw i32 %mul2, 1
  %idxprom4 = sext i32 %add3 to i64
  %8 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap5 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %8, i32 0, i32 12
  %9 = load i8*, i8** %colormap5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom4
  %10 = load i8, i8* %arrayidx6, align 1
  %11 = load i32, i32* %index.addr, align 4
  %mul7 = mul nsw i32 3, %11
  %add8 = add nsw i32 %mul7, 2
  %idxprom9 = sext i32 %add8 to i64
  %12 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap10 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %12, i32 0, i32 12
  %13 = load i8*, i8** %colormap10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx11, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %6, i8 zeroext %10, i8 zeroext %14, i8 zeroext -1)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %15 = load i32, i32* %index.addr, align 4
  %call12 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %15)
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 14
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call13 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %17)
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 13
  %19 = load i32, i32* %n_colors, align 4
  %cmp = icmp slt i32 %call13, %19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette14 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 14
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette14, align 8
  %22 = load i32, i32* %index.addr, align 4
  %arraydecay15 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %call16 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %21, i32 %22, i8* %arraydecay15, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette17 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 14
  %24 = load %struct._GimpPalette*, %struct._GimpPalette** %palette17, align 8
  %25 = load i32, i32* %index.addr, align 4
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %call19 = call i32 @gimp_palette_set_entry(%struct._GimpPalette* %24, i32 %25, i8* %arraydecay18, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_data_thaw(%struct._GimpData*) #3

declare void @gimp_image_colormap_changed(%struct._GimpImage*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_unset_colormap(%struct._GimpImage* %image, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_unset_colormap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call15 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %call16 = call %struct._GimpUndo* @gimp_image_undo_push_image_colormap(%struct._GimpImage* %17, i8* %call15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.end
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 12
  %19 = load i8*, i8** %colormap, align 8
  %tobool18 = icmp ne i8* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_dispose(%struct._GimpImage* %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_free(%struct._GimpImage* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %22 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %22, i32 0, i32 13
  store i32 0, i32* %n_colors, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_changed(%struct._GimpImage* %23, i32 -1)
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_get_colormap_entry(%struct._GimpImage* %image, i32 %color_index, %struct._GimpRGB* %color) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %color_index.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_get_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_get_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load i32, i32* %color_index.addr, align 4
  %cmp20 = icmp sge i32 %18, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %19 = load i32, i32* %color_index.addr, align 4
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 13
  %21 = load i32, i32* %n_colors, align 4
  %cmp22 = icmp slt i32 %19, %21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_get_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp28 = icmp ne %struct._GimpRGB* %22, null
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_get_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %24 = load i32, i32* %color_index.addr, align 4
  %mul = mul nsw i32 %24, 3
  %idxprom = sext i32 %mul to i64
  %25 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap33 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %25, i32 0, i32 12
  %26 = load i8*, i8** %colormap33, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %28 = load i32, i32* %color_index.addr, align 4
  %mul34 = mul nsw i32 %28, 3
  %add = add nsw i32 %mul34, 1
  %idxprom35 = sext i32 %add to i64
  %29 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap36 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %29, i32 0, i32 12
  %30 = load i8*, i8** %colormap36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %30, i64 %idxprom35
  %31 = load i8, i8* %arrayidx37, align 1
  %32 = load i32, i32* %color_index.addr, align 4
  %mul38 = mul nsw i32 %32, 3
  %add39 = add nsw i32 %mul38, 2
  %idxprom40 = sext i32 %add39 to i64
  %33 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap41 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %33, i32 0, i32 12
  %34 = load i8*, i8** %colormap41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %34, i64 %idxprom40
  %35 = load i8, i8* %arrayidx42, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %23, i8 zeroext %27, i8 zeroext %31, i8 zeroext %35, i8 zeroext -1)
  br label %return

return:                                           ; preds = %do.end.32, %if.else.30, %if.else.24, %if.else.16, %if.else.9
  ret void
}

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_set_colormap_entry(%struct._GimpImage* %image, i32 %color_index, %struct._GimpRGB* %color, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %color_index.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_set_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_set_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load i32, i32* %color_index.addr, align 4
  %cmp20 = icmp sge i32 %18, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %19 = load i32, i32* %color_index.addr, align 4
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 13
  %21 = load i32, i32* %n_colors, align 4
  %cmp22 = icmp slt i32 %19, %21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_set_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp28 = icmp ne %struct._GimpRGB* %22, null
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_set_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %23 = load i32, i32* %push_undo.addr, align 4
  %tobool33 = icmp ne i32 %23, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %do.end.32
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call35 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %call36 = call %struct._GimpUndo* @gimp_image_undo_push_image_colormap(%struct._GimpImage* %24, i8* %call35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %do.end.32
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %26 = load i32, i32* %color_index.addr, align 4
  %mul = mul nsw i32 %26, 3
  %idxprom = sext i32 %mul to i64
  %27 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap38 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %27, i32 0, i32 12
  %28 = load i8*, i8** %colormap38, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i32, i32* %color_index.addr, align 4
  %mul39 = mul nsw i32 %29, 3
  %add = add nsw i32 %mul39, 1
  %idxprom40 = sext i32 %add to i64
  %30 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap41 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %30, i32 0, i32 12
  %31 = load i8*, i8** %colormap41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %31, i64 %idxprom40
  %32 = load i32, i32* %color_index.addr, align 4
  %mul43 = mul nsw i32 %32, 3
  %add44 = add nsw i32 %mul43, 2
  %idxprom45 = sext i32 %add44 to i64
  %33 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap46 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %33, i32 0, i32 12
  %34 = load i8*, i8** %colormap46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %34, i64 %idxprom45
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %25, i8* %arrayidx, i8* %arrayidx42, i8* %arrayidx47)
  %35 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %35, i32 0, i32 14
  %36 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool48 = icmp ne %struct._GimpPalette* %36, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.37
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %38 = load i32, i32* %color_index.addr, align 4
  call void @gimp_image_colormap_set_palette_entry(%struct._GimpImage* %37, i32 %38)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.37
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %40 = load i32, i32* %color_index.addr, align 4
  call void @gimp_image_colormap_changed(%struct._GimpImage* %39, i32 %40)
  br label %return

return:                                           ; preds = %if.end.50, %if.else.30, %if.else.24, %if.else.16, %if.else.9
  ret void
}

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_add_colormap_entry(%struct._GimpImage* %image, %struct._GimpRGB* %color) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_add_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 12
  %17 = load i8*, i8** %colormap, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_add_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 13
  %19 = load i32, i32* %n_colors, align 4
  %cmp20 = icmp slt i32 %19, 256
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_add_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp26 = icmp ne %struct._GimpRGB* %20, null
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.25
  br label %if.end.29

if.else.28:                                       ; preds = %do.body.25
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_add_colormap_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i64 10)
  %call32 = call %struct._GimpUndo* @gimp_image_undo_push_image_colormap(%struct._GimpImage* %21, i8* %call31)
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors33 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 13
  %24 = load i32, i32* %n_colors33, align 4
  %mul = mul nsw i32 %24, 3
  %idxprom = sext i32 %mul to i64
  %25 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap34 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %25, i32 0, i32 12
  %26 = load i8*, i8** %colormap34, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors35 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %27, i32 0, i32 13
  %28 = load i32, i32* %n_colors35, align 4
  %mul36 = mul nsw i32 %28, 3
  %add = add nsw i32 %mul36, 1
  %idxprom37 = sext i32 %add to i64
  %29 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap38 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %29, i32 0, i32 12
  %30 = load i8*, i8** %colormap38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  %31 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors40 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %31, i32 0, i32 13
  %32 = load i32, i32* %n_colors40, align 4
  %mul41 = mul nsw i32 %32, 3
  %add42 = add nsw i32 %mul41, 2
  %idxprom43 = sext i32 %add42 to i64
  %33 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %colormap44 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %33, i32 0, i32 12
  %34 = load i8*, i8** %colormap44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %34, i64 %idxprom43
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %22, i8* %arrayidx, i8* %arrayidx39, i8* %arrayidx45)
  %35 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %palette = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %35, i32 0, i32 14
  %36 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool46 = icmp ne %struct._GimpPalette* %36, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %do.end.30
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %38 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors48 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %38, i32 0, i32 13
  %39 = load i32, i32* %n_colors48, align 4
  %sub = sub nsw i32 %39, 1
  call void @gimp_image_colormap_set_palette_entry(%struct._GimpImage* %37, i32 %sub)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %do.end.30
  %40 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %n_colors50 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %40, i32 0, i32 13
  %41 = load i32, i32* %n_colors50, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %n_colors50, align 4
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_colormap_changed(%struct._GimpImage* %42, i32 -1)
  br label %return

return:                                           ; preds = %if.end.49, %if.else.28, %if.else.22, %if.else.16, %if.else.9
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #3

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #3

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #3

declare i32 @gimp_palette_set_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
