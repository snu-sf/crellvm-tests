; ModuleID = './app/pdb/gimppdb-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GError = type { i32, i32, i8* }
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpFont = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpStroke = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }

@.str = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_pdb_get_brush = private unnamed_addr constant [19 x i8] c"gimp_pdb_get_brush\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid empty brush name\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Brush '%s' not found\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Brush '%s' is not editable\00", align 1
@__func__.gimp_pdb_get_generated_brush = private unnamed_addr constant [29 x i8] c"gimp_pdb_get_generated_brush\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Brush '%s' is not a generated brush\00", align 1
@__func__.gimp_pdb_get_dynamics = private unnamed_addr constant [22 x i8] c"gimp_pdb_get_dynamics\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid empty paint dynamics name\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Paint dynamics '%s' not found\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Paint dynamics '%s' is not editable\00", align 1
@__func__.gimp_pdb_get_pattern = private unnamed_addr constant [21 x i8] c"gimp_pdb_get_pattern\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Invalid empty pattern name\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Pattern '%s' not found\00", align 1
@__func__.gimp_pdb_get_gradient = private unnamed_addr constant [22 x i8] c"gimp_pdb_get_gradient\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid empty gradient name\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Gradient '%s' not found\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Gradient '%s' is not editable\00", align 1
@__func__.gimp_pdb_get_palette = private unnamed_addr constant [21 x i8] c"gimp_pdb_get_palette\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Invalid empty palette name\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Palette '%s' not found\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Palette '%s' is not editable\00", align 1
@__func__.gimp_pdb_get_font = private unnamed_addr constant [18 x i8] c"gimp_pdb_get_font\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Invalid empty font name\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Font '%s' not found\00", align 1
@__func__.gimp_pdb_get_buffer = private unnamed_addr constant [20 x i8] c"gimp_pdb_get_buffer\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Invalid empty buffer name\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Named buffer '%s' not found\00", align 1
@__func__.gimp_pdb_get_paint_info = private unnamed_addr constant [24 x i8] c"gimp_pdb_get_paint_info\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Invalid empty paint method name\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Paint method '%s' does not exist\00", align 1
@__func__.gimp_pdb_item_is_attached = private unnamed_addr constant [26 x i8] c"gimp_pdb_item_is_attached\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"Item '%s' (%d) cannot be used because it has not been added to an image\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Item '%s' (%d) cannot be used because it is attached to another image\00", align 1
@__func__.gimp_pdb_item_is_in_tree = private unnamed_addr constant [25 x i8] c"gimp_pdb_item_is_in_tree\00", align 1
@.str.28 = private unnamed_addr constant [79 x i8] c"Item '%s' (%d) cannot be used because it is not a direct child of an item tree\00", align 1
@__func__.gimp_pdb_item_is_in_same_tree = private unnamed_addr constant [30 x i8] c"gimp_pdb_item_is_in_same_tree\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"GIMP_IS_ITEM (item2)\00", align 1
@.str.30 = private unnamed_addr constant [93 x i8] c"Items '%s' (%d) and '%s' (%d) cannot be used because they are not part of the same item tree\00", align 1
@__func__.gimp_pdb_item_is_not_ancestor = private unnamed_addr constant [30 x i8] c"gimp_pdb_item_is_not_ancestor\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"GIMP_IS_ITEM (not_descendant)\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"Item '%s' (%d) must not be an ancestor of '%s' (%d)\00", align 1
@__func__.gimp_pdb_item_is_floating = private unnamed_addr constant [26 x i8] c"gimp_pdb_item_is_floating\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"GIMP_IS_IMAGE (dest_image)\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Item '%s' (%d) has already been added to an image\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"Trying to add item '%s' (%d) to wrong image\00", align 1
@__func__.gimp_pdb_item_is_writable = private unnamed_addr constant [26 x i8] c"gimp_pdb_item_is_writable\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"Item '%s' (%d) cannot be modified because its contents are locked\00", align 1
@__func__.gimp_pdb_item_is_group = private unnamed_addr constant [23 x i8] c"gimp_pdb_item_is_group\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"Item '%s' (%d) cannot be used because it is not a group item\00", align 1
@__func__.gimp_pdb_item_is_not_group = private unnamed_addr constant [27 x i8] c"gimp_pdb_item_is_not_group\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"Item '%s' (%d) cannot be modified because it is a group item\00", align 1
@__func__.gimp_pdb_layer_is_text_layer = private unnamed_addr constant [29 x i8] c"gimp_pdb_layer_is_text_layer\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"GIMP_IS_LAYER (layer)\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"Layer '%s' (%d) cannot be used because it is not a text layer\00", align 1
@__func__.gimp_pdb_image_is_base_type = private unnamed_addr constant [28 x i8] c"gimp_pdb_image_is_base_type\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Image '%s' (%d) is of type '%s', but an image of type '%s' is expected\00", align 1
@__func__.gimp_pdb_image_is_not_base_type = private unnamed_addr constant [32 x i8] c"gimp_pdb_image_is_not_base_type\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Image '%s' (%d) is already of type '%s'\00", align 1
@__func__.gimp_pdb_get_vectors_stroke = private unnamed_addr constant [28 x i8] c"gimp_pdb_get_vectors_stroke\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"Vectors object %d does not contain stroke with ID %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %gimp, i8* %name, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_pdb_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_pdb_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 37
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpBrush*
  store %struct._GimpBrush* %22, %struct._GimpBrush** %brush, align 8
  %23 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool27 = icmp ne %struct._GimpBrush* %23, null
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.42

if.else.31:                                       ; preds = %if.end.25
  %26 = load i32, i32* %writable.addr, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.else.31
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %28 = bitcast %struct._GimpBrush* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  %call36 = call i32 @gimp_data_is_writable(%struct._GimpData* %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_pdb_error_quark() #5
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #7
  %31 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call39, i32 3, i8* %call40, i8* %31)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.33, %if.else.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.28
  %32 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %32, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.38, %if.then.22, %if.else.15, %if.else.9
  %33 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %data_factory, i8* %name) #0 {
entry:
  %data_factory.addr = alloca %struct._GimpDataFactory*, align 8
  %name.addr = alloca i8*, align 8
  %gimp_object = alloca %struct._GimpObject*, align 8
  store %struct._GimpDataFactory* %data_factory, %struct._GimpDataFactory** %data_factory.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory.addr, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %0)
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %call, i8* %1)
  store %struct._GimpObject* %call1, %struct._GimpObject** %gimp_object, align 8
  %2 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %tobool = icmp ne %struct._GimpObject* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %data_factory.addr, align 8
  %call2 = call %struct._GimpContainer* @gimp_data_factory_get_container_obsolete(%struct._GimpDataFactory* %3)
  %4 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %call2, i8* %4)
  store %struct._GimpObject* %call3, %struct._GimpObject** %gimp_object, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  ret %struct._GimpObject* %5
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @gimp_data_is_writable(%struct._GimpData*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_pdb_get_generated_brush(%struct._Gimp* %gimp, i8* %name, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pdb_get_generated_brush, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pdb_get_generated_brush, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* %writable.addr, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call %struct._GimpBrush* @gimp_pdb_get_brush(%struct._Gimp* %16, i8* %17, i32 %18, %struct._GError** %19)
  store %struct._GimpBrush* %call18, %struct._GimpBrush** %brush, align 8
  %20 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool19 = icmp ne %struct._GimpBrush* %20, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_brush_generated_get_type() #5
  store i64 %call26, i64* %__t25, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.21
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %if.end.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type36, align 8
  %29 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %28, %29
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %31 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %32 = load i32, i32* %__r28, align 4
  store i32 %32, i32* %tmp43
  %33 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %33, 0
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call46 = call i32 @gimp_pdb_error_quark() #5
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #7
  %35 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %34, i32 %call46, i32 3, i8* %call47, i8* %35)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  %36 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %36, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.45, %if.then.20, %if.else.15, %if.else.9
  %37 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %37
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpDynamics* @gimp_pdb_get_dynamics(%struct._Gimp* %gimp, i8* %name, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpDynamics*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_get_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_get_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 38
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpDynamics*
  store %struct._GimpDynamics* %22, %struct._GimpDynamics** %dynamics, align 8
  %23 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool27 = icmp ne %struct._GimpDynamics* %23, null
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.42

if.else.31:                                       ; preds = %if.end.25
  %26 = load i32, i32* %writable.addr, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.else.31
  %27 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %28 = bitcast %struct._GimpDynamics* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  %call36 = call i32 @gimp_data_is_writable(%struct._GimpData* %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_pdb_error_quark() #5
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #7
  %31 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call39, i32 3, i8* %call40, i8* %31)
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.33, %if.else.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.28
  %32 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  store %struct._GimpDynamics* %32, %struct._GimpDynamics** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.38, %if.then.22, %if.else.15, %if.else.9
  %33 = load %struct._GimpDynamics*, %struct._GimpDynamics** %retval
  ret %struct._GimpDynamics* %33
}

; Function Attrs: nounwind uwtable
define %struct._GimpPattern* @gimp_pdb_get_pattern(%struct._Gimp* %gimp, i8* %name, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpPattern*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_get_pattern, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_get_pattern, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 39
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpPattern*
  store %struct._GimpPattern* %22, %struct._GimpPattern** %pattern, align 8
  %23 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool27 = icmp ne %struct._GimpPattern* %23, null
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %26 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  store %struct._GimpPattern* %26, %struct._GimpPattern** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.22, %if.else.15, %if.else.9
  %27 = load %struct._GimpPattern*, %struct._GimpPattern** %retval
  ret %struct._GimpPattern* %27
}

; Function Attrs: nounwind uwtable
define %struct._GimpGradient* @gimp_pdb_get_gradient(%struct._Gimp* %gimp, i8* %name, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpGradient*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pdb_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 40
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpGradient*
  store %struct._GimpGradient* %22, %struct._GimpGradient** %gradient, align 8
  %23 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool27 = icmp ne %struct._GimpGradient* %23, null
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.42

if.else.31:                                       ; preds = %if.end.25
  %26 = load i32, i32* %writable.addr, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.else.31
  %27 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %28 = bitcast %struct._GimpGradient* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  %call36 = call i32 @gimp_data_is_writable(%struct._GimpData* %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_pdb_error_quark() #5
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #7
  %31 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call39, i32 3, i8* %call40, i8* %31)
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.33, %if.else.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.28
  %32 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradient* %32, %struct._GimpGradient** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.38, %if.then.22, %if.else.15, %if.else.9
  %33 = load %struct._GimpGradient*, %struct._GimpGradient** %retval
  ret %struct._GimpGradient* %33
}

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_pdb_get_palette(%struct._Gimp* %gimp, i8* %name, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pdb_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 41
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_pdb_get_data_factory_item(%struct._GimpDataFactory* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpPalette*
  store %struct._GimpPalette* %22, %struct._GimpPalette** %palette, align 8
  %23 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool27 = icmp ne %struct._GimpPalette* %23, null
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.42

if.else.31:                                       ; preds = %if.end.25
  %26 = load i32, i32* %writable.addr, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.else.31
  %27 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %28 = bitcast %struct._GimpPalette* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  %call36 = call i32 @gimp_data_is_writable(%struct._GimpData* %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_pdb_error_quark() #5
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0)) #7
  %31 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call39, i32 3, i8* %call40, i8* %31)
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.33, %if.else.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.28
  %32 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %32, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.38, %if.then.22, %if.else.15, %if.else.9
  %33 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %33
}

; Function Attrs: nounwind uwtable
define %struct._GimpFont* @gimp_pdb_get_font(%struct._Gimp* %gimp, i8* %name, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpFont*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %font = alloca %struct._GimpFont*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_pdb_get_font, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_pdb_get_font, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 36
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpFont*
  store %struct._GimpFont* %22, %struct._GimpFont** %font, align 8
  %23 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %tobool27 = icmp ne %struct._GimpFont* %23, null
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %26 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  store %struct._GimpFont* %26, %struct._GimpFont** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.22, %if.else.15, %if.else.9
  %27 = load %struct._GimpFont*, %struct._GimpFont** %retval
  ret %struct._GimpFont* %27
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_pdb_get_buffer(%struct._Gimp* %gimp, i8* %name, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pdb_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 35
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %22, %struct._GimpBuffer** %buffer, align 8
  %23 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool27 = icmp ne %struct._GimpBuffer* %23, null
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %26 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %26, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.22, %if.else.15, %if.else.9
  %27 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %27
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaintInfo* @gimp_pdb_get_paint_info(%struct._Gimp* %gimp, i8* %name, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpPaintInfo*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pdb_get_paint_info, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pdb_get_paint_info, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %name.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.22

lor.lhs.false.19:                                 ; preds = %do.end.17
  %17 = load i8*, i8** %name.addr, align 8
  %call20 = call i64 @strlen(i8* %17) #6
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.19, %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %18, i32 %call23, i32 3, i8* %call24)
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 21
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %21 = load i8*, i8** %name.addr, align 8
  %call26 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %20, i8* %21)
  %22 = bitcast %struct._GimpObject* %call26 to %struct._GimpPaintInfo*
  store %struct._GimpPaintInfo* %22, %struct._GimpPaintInfo** %paint_info, align 8
  %23 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool27 = icmp ne %struct._GimpPaintInfo* %23, null
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_pdb_error_quark() #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0)) #7
  %25 = load i8*, i8** %name.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call29, i32 3, i8* %call30, i8* %25)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %26 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  store %struct._GimpPaintInfo* %26, %struct._GimpPaintInfo** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.22, %if.else.15, %if.else.9
  %27 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %retval
  ret %struct._GimpPaintInfo* %27
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %item, %struct._GimpImage* %image, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_attached, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_attached, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp41 = icmp eq %struct._GError** %27, null
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  %cmp43 = icmp eq %struct._GError* %29, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.46

if.else.45:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_attached, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call48 = call i32 @gimp_item_is_attached(%struct._GimpItem* %30)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.55, label %if.then.50

if.then.50:                                       ; preds = %do.end.47
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call51 = call i32 @gimp_pdb_error_quark() #5
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i32 0, i32 0)) #7
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %33 = bitcast %struct._GimpItem* %32 to i8*
  %call53 = call i8* @gimp_object_get_name(i8* %33)
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call i32 @gimp_item_get_ID(%struct._GimpItem* %34)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %31, i32 %call51, i32 3, i8* %call52, i8* %call53, i32 %call54)
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %do.end.47
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool56 = icmp ne %struct._GimpImage* %35, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.65

land.lhs.true.57:                                 ; preds = %if.end.55
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call58 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %37)
  %cmp59 = icmp ne %struct._GimpImage* %36, %call58
  br i1 %cmp59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %land.lhs.true.57
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call61 = call i32 @gimp_pdb_error_quark() #5
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i32 0, i32 0)) #7
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %40 = bitcast %struct._GimpItem* %39 to i8*
  %call63 = call i8* @gimp_object_get_name(i8* %40)
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call64 = call i32 @gimp_item_get_ID(%struct._GimpItem* %41)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %38, i32 %call61, i32 3, i8* %call62, i8* %call63, i32 %call64)
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.57, %if.end.55
  %42 = load i32, i32* %writable.addr, align 4
  %tobool66 = icmp ne i32 %42, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.65
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call68 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %43, %struct._GError** %44)
  store i32 %call68, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.67, %if.then.60, %if.then.50, %if.else.45, %if.else.37, %if.else.9
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare i8* @gimp_object_get_name(i8*) #3

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %item, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_writable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_writable, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %do.end.17
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_pdb_error_quark() #5
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i32 0, i32 0)) #7
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %19 = bitcast %struct._GimpItem* %18 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %19)
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call24 = call i32 @gimp_item_get_ID(%struct._GimpItem* %20)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %call21, i32 3, i8* %call22, i8* %call23, i32 %call24)
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %do.end.17
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.20, %if.else.15, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %item, %struct._GimpImage* %image, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pdb_item_is_in_tree, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pdb_item_is_in_tree, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp41 = icmp eq %struct._GError** %27, null
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  %cmp43 = icmp eq %struct._GError* %29, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.46

if.else.45:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pdb_item_is_in_tree, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load i32, i32* %writable.addr, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call48 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %30, %struct._GimpImage* %31, i32 %32, %struct._GError** %33)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %do.end.47
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %do.end.47
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call52 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %34)
  %tobool53 = icmp ne %struct._GimpItemTree* %call52, null
  br i1 %tobool53, label %if.end.59, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call55 = call i32 @gimp_pdb_error_quark() #5
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.28, i32 0, i32 0)) #7
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to i8*
  %call57 = call i8* @gimp_object_get_name(i8* %37)
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call58 = call i32 @gimp_item_get_ID(%struct._GimpItem* %38)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %35, i32 %call55, i32 3, i8* %call56, i8* %call57, i32 %call58)
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.51
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.54, %if.then.50, %if.else.45, %if.else.37, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_in_same_tree(%struct._GimpItem* %item, %struct._GimpItem* %item2, %struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %item2.addr = alloca %struct._GimpItem*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %item2, %struct._GimpItem** %item2.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_in_same_tree, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item2.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_in_same_tree, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp40 = icmp eq %struct._GimpImage* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = bitcast %struct._GimpImage* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_image_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_in_same_tree, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp69 = icmp eq %struct._GError** %40, null
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  %cmp71 = icmp eq %struct._GError* %42, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %do.body.68
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_in_same_tree, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call76 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %43, %struct._GimpImage* %44, i32 0, %struct._GError** %45)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %lor.lhs.false.78, label %if.then.81

lor.lhs.false.78:                                 ; preds = %do.end.75
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item2.addr, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call79 = call i32 @gimp_pdb_item_is_in_tree(%struct._GimpItem* %46, %struct._GimpImage* %47, i32 0, %struct._GError** %48)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false.78, %do.end.75
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %lor.lhs.false.78
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call83 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item2.addr, align 8
  %call84 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %50)
  %cmp85 = icmp ne %struct._GimpItemTree* %call83, %call84
  br i1 %cmp85, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.82
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call87 = call i32 @gimp_pdb_error_quark() #5
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.30, i32 0, i32 0)) #7
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %53 = bitcast %struct._GimpItem* %52 to i8*
  %call89 = call i8* @gimp_object_get_name(i8* %53)
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call90 = call i32 @gimp_item_get_ID(%struct._GimpItem* %54)
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item2.addr, align 8
  %56 = bitcast %struct._GimpItem* %55 to i8*
  %call91 = call i8* @gimp_object_get_name(i8* %56)
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item2.addr, align 8
  %call92 = call i32 @gimp_item_get_ID(%struct._GimpItem* %57)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %51, i32 %call87, i32 3, i8* %call88, i8* %call89, i32 %call90, i8* %call91, i32 %call92)
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.82
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.86, %if.then.81, %if.else.73, %if.else.65, %if.else.36, %if.else.9
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_not_ancestor(%struct._GimpItem* %item, %struct._GimpItem* %not_descendant, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %not_descendant.addr = alloca %struct._GimpItem*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %not_descendant, %struct._GimpItem** %not_descendant.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_not_ancestor, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %not_descendant.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_not_ancestor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp40 = icmp eq %struct._GError** %26, null
  br i1 %cmp40, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %cmp41 = icmp eq %struct._GError* %28, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false, %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_item_is_not_ancestor, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %30 = bitcast %struct._GimpItem* %29 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_viewable_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call46)
  %31 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpViewable*
  %32 = load %struct._GimpItem*, %struct._GimpItem** %not_descendant.addr, align 8
  %33 = bitcast %struct._GimpItem* %32 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_viewable_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call48)
  %34 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpViewable*
  %call50 = call i32 @gimp_viewable_is_ancestor(%struct._GimpViewable* %31, %struct._GimpViewable* %34)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %do.end.45
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call53 = call i32 @gimp_pdb_error_quark() #5
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0)) #7
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to i8*
  %call55 = call i8* @gimp_object_get_name(i8* %37)
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call56 = call i32 @gimp_item_get_ID(%struct._GimpItem* %38)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %not_descendant.addr, align 8
  %40 = bitcast %struct._GimpItem* %39 to i8*
  %call57 = call i8* @gimp_object_get_name(i8* %40)
  %41 = load %struct._GimpItem*, %struct._GimpItem** %not_descendant.addr, align 8
  %call58 = call i32 @gimp_item_get_ID(%struct._GimpItem* %41)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %35, i32 %call53, i32 3, i8* %call54, i8* %call55, i32 %call56, i8* %call57, i32 %call58)
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %do.end.45
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.52, %if.else.43, %if.else.36, %if.else.9
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gimp_viewable_is_ancestor(%struct._GimpViewable*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_floating(%struct._GimpItem* %item, %struct._GimpImage* %dest_image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_floating, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_floating, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp40 = icmp eq %struct._GError** %26, null
  br i1 %cmp40, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %cmp41 = icmp eq %struct._GError* %28, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false, %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pdb_item_is_floating, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %30 = bitcast %struct._GimpItem* %29 to i8*
  %call46 = call i32 @g_object_is_floating(i8* %30)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.53, label %if.then.48

if.then.48:                                       ; preds = %do.end.45
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call49 = call i32 @gimp_pdb_error_quark() #5
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0)) #7
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %33 = bitcast %struct._GimpItem* %32 to i8*
  %call51 = call i8* @gimp_object_get_name(i8* %33)
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call52 = call i32 @gimp_item_get_ID(%struct._GimpItem* %34)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %31, i32 %call49, i32 3, i8* %call50, i8* %call51, i32 %call52)
  store i32 0, i32* %retval
  br label %return

if.else.53:                                       ; preds = %do.end.45
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %cmp55 = icmp ne %struct._GimpImage* %call54, %36
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.else.53
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call57 = call i32 @gimp_pdb_error_quark() #5
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0)) #7
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %39 = bitcast %struct._GimpItem* %38 to i8*
  %call59 = call i8* @gimp_object_get_name(i8* %39)
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call60 = call i32 @gimp_item_get_ID(%struct._GimpItem* %40)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %37, i32 %call57, i32 3, i8* %call58, i8* %call59, i32 %call60)
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.else.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.56, %if.then.48, %if.else.43, %if.else.36, %if.else.9
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @g_object_is_floating(i8*) #3

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_group(%struct._GimpItem* %item, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pdb_item_is_group, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pdb_item_is_group, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %call20 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %18)
  %tobool21 = icmp ne %struct._GimpContainer* %call20, null
  br i1 %tobool21, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %do.end.17
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i32 0, i32 0)) #7
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to i8*
  %call25 = call i8* @gimp_object_get_name(i8* %21)
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call26 = call i32 @gimp_item_get_ID(%struct._GimpItem* %22)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %call23, i32 3, i8* %call24, i8* %call25, i32 %call26)
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.17
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.22, %if.else.15, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %item, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pdb_item_is_not_group, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pdb_item_is_not_group, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %call20 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %18)
  %tobool21 = icmp ne %struct._GimpContainer* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %do.end.17
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i32 0, i32 0)) #7
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to i8*
  %call25 = call i8* @gimp_object_get_name(i8* %21)
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call26 = call i32 @gimp_item_get_ID(%struct._GimpItem* %22)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %call23, i32 3, i8* %call24, i8* %call25, i32 %call26)
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.17
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.22, %if.else.15, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_layer_is_text_layer(%struct._GimpLayer* %layer, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pdb_layer_is_text_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pdb_layer_is_text_layer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %18)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.29, label %if.then.22

if.then.22:                                       ; preds = %do.end.17
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_pdb_error_quark() #5
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i32 0, i32 0)) #7
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %21 = bitcast %struct._GimpLayer* %20 to i8*
  %call25 = call i8* @gimp_object_get_name(i8* %21)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_get_ID(%struct._GimpItem* %24)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %call23, i32 3, i8* %call24, i8* %call25, i32 %call28)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.17
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %26 = bitcast %struct._GimpLayer* %25 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call30)
  %27 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %28 = load i32, i32* %writable.addr, align 4
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @gimp_pdb_item_is_attached(%struct._GimpItem* %27, %struct._GimpImage* null, i32 %28, %struct._GError** %29)
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.22, %if.else.15, %if.else.9
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_image_is_base_type(%struct._GimpImage* %image, i32 %type, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_image_is_base_type, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_image_is_base_type, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i32 @gimp_image_base_type(%struct._GimpImage* %16)
  %17 = load i32, i32* %type.addr, align 4
  %cmp19 = icmp eq i32 %call18, %17
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_error_quark() #5
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i32 0, i32 0)) #7
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call24 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call25 = call i32 @gimp_image_get_ID(%struct._GimpImage* %20)
  %call26 = call i64 @gimp_image_base_type_get_type() #5
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call i32 @gimp_image_base_type(%struct._GimpImage* %21)
  %call28 = call i8* @gimp_pdb_enum_value_get_nick(i64 %call26, i32 %call27)
  %call29 = call i64 @gimp_image_base_type_get_type() #5
  %22 = load i32, i32* %type.addr, align 4
  %call30 = call i8* @gimp_pdb_enum_value_get_nick(i64 %call29, i32 %22)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %call22, i32 3, i8* %call23, i8* %call24, i32 %call25, i8* %call28, i8* %call30)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.15, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #3

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pdb_enum_value_get_nick(i64 %enum_type, i32 %value) #0 {
entry:
  %enum_type.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %nick = alloca i8*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i8* @g_type_class_ref(i64 %0)
  %1 = bitcast i8* %call to %struct._GEnumClass*
  store %struct._GEnumClass* %1, %struct._GEnumClass** %enum_class, align 8
  %2 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %3 = load i32, i32* %value.addr, align 4
  %call1 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %2, i32 %3)
  store %struct._GEnumValue* %call1, %struct._GEnumValue** %enum_value, align 8
  %4 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %4, i32 0, i32 2
  %5 = load i8*, i8** %value_nick, align 8
  store i8* %5, i8** %nick, align 8
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %7 = bitcast %struct._GEnumClass* %6 to i8*
  call void @g_type_class_unref(i8* %7)
  %8 = load i8*, i8** %nick, align 8
  ret i8* %8
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_pdb_image_is_not_base_type(%struct._GimpImage* %image, i32 %type, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_pdb_image_is_not_base_type, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_pdb_image_is_not_base_type, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i32 @gimp_image_base_type(%struct._GimpImage* %16)
  %17 = load i32, i32* %type.addr, align 4
  %cmp19 = icmp ne i32 %call18, %17
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_pdb_error_quark() #5
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i32 0, i32 0)) #7
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call24 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call25 = call i32 @gimp_image_get_ID(%struct._GimpImage* %20)
  %call26 = call i64 @gimp_image_base_type_get_type() #5
  %21 = load i32, i32* %type.addr, align 4
  %call27 = call i8* @gimp_pdb_enum_value_get_nick(i64 %call26, i32 %21)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %call22, i32 3, i8* %call23, i8* %call24, i32 %call25, i8* %call27)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.15, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_pdb_get_vectors_stroke(%struct._GimpVectors* %vectors, i32 %stroke_ID, i32 %writable, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke_ID.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %stroke_ID, i32* %stroke_ID.addr, align 4
  store i32 %writable, i32* %writable.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_get_vectors_stroke, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pdb_get_vectors_stroke, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %17 = bitcast %struct._GimpVectors* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call i32 @gimp_pdb_item_is_not_group(%struct._GimpItem* %18, %struct._GError** %19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.end.17
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.17
  %20 = load i32, i32* %writable.addr, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.30

lor.lhs.false.25:                                 ; preds = %if.end.23
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %22 = bitcast %struct._GimpVectors* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_pdb_item_is_writable(%struct._GimpItem* %23, %struct._GError** %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %lor.lhs.false.25, %if.end.23
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %26 = load i32, i32* %stroke_ID.addr, align 4
  %call31 = call %struct._GimpStroke* @gimp_vectors_stroke_get_by_ID(%struct._GimpVectors* %25, i32 %26)
  store %struct._GimpStroke* %call31, %struct._GimpStroke** %stroke, align 8
  %27 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool32 = icmp ne %struct._GimpStroke* %27, null
  br i1 %tobool32, label %if.end.39, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call34 = call i32 @gimp_pdb_error_quark() #5
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.45, i32 0, i32 0)) #7
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %30 = bitcast %struct._GimpVectors* %29 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call36)
  %31 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %31)
  %32 = load i32, i32* %stroke_ID.addr, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %28, i32 %call34, i32 3, i8* %call35, i32 %call38, i32 %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %if.then.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %lor.lhs.false.25
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpStroke* %33, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.22, %if.else.15, %if.else.9
  %34 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %34
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare %struct._GimpStroke* @gimp_vectors_stroke_get_by_ID(%struct._GimpVectors*, i32) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container_obsolete(%struct._GimpDataFactory*) #3

declare i8* @g_type_class_ref(i64) #3

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #3

declare void @g_type_class_unref(i8*) #3

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
