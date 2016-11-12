; ModuleID = './app/text/gimptextlayer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GimpTextLayerClass = type { %struct._GimpLayerClass }
%struct._GimpLayerClass = type { %struct._GimpDrawableClass, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)* }
%struct._GimpDrawableClass = type { %struct._GimpItemClass, void (%struct._GimpDrawable*, i32, i32, i32, i32)*, void (%struct._GimpDrawable*)*, i64 (%struct._GimpDrawable*, i32, i32)*, void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)*, %struct._TileManager* (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type { %struct._GimpObject, %struct._GimpContainer* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._GeglNode = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpTextLayout = type opaque
%struct._GimpUndo = type opaque
%struct._GimpConfig = type opaque
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }

@gimp_text_layer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpTextLayer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_layer_new = private unnamed_addr constant [20 x i8] c"gimp_text_layer_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@__func__.gimp_text_layer_set_text = private unnamed_addr constant [25 x i8] c"gimp_text_layer_set_text\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_IS_TEXT_LAYER (layer)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"text == NULL || GIMP_IS_TEXT (text)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@__func__.gimp_text_layer_get_text = private unnamed_addr constant [25 x i8] c"gimp_text_layer_get_text\00", align 1
@__func__.gimp_text_layer_set = private unnamed_addr constant [20 x i8] c"gimp_text_layer_set\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"gimp_item_is_text_layer (GIMP_ITEM (layer))\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"gimp_item_is_attached (GIMP_ITEM (layer))\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@__func__.gimp_text_layer_discard = private unnamed_addr constant [24 x i8] c"gimp_text_layer_discard\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Discard Text Information\00", align 1
@gimp_text_layer_parent_class = internal global i8* null, align 8
@GimpTextLayer_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"gimp-text-layer\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Text Layer\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Rename Text Layer\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Move Text Layer\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Scale Text Layer\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Resize Text Layer\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Flip Text Layer\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Rotate Text Layer\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Transform Text Layer\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"auto-rename\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"gimptextlayer.c\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_text_layer_duplicate = private unnamed_addr constant [26 x i8] c"gimp_text_layer_duplicate\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"Due to lack of any fonts, text functionality is not available.\00", align 1
@gimp_text_layer_render.unused_eek = internal global %struct._GimpContext* null, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"eek\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Empty Text Layer\00", align 1
@__func__.gimp_text_layer_render_layout = private unnamed_addr constant [30 x i8] c"gimp_text_layer_render_layout\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"gimp_drawable_has_alpha (drawable)\00", align 1
@.str.30 = private unnamed_addr constant [98 x i8] c"Your text cannot be rendered. It is likely too big. Please make it shorter or use a smaller font.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_layer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_layer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_layer_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 712, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_layer_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextLayer*)* @gimp_text_layer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_layer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_layer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_layer_parent_class, align 8
  %1 = load i32, i32* @GimpTextLayer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextLayer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextLayerClass*
  call void @gimp_text_layer_class_init(%struct._GimpTextLayerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_init(%struct._GimpTextLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %0, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text, align 8
  %1 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text_parasite = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %1, i32 0, i32 2
  store i8* null, i8** %text_parasite, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage* %image, %struct._GimpText* %text) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_text_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %14 = bitcast %struct._GimpText* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_text_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text39 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %26, i32 0, i32 1
  %27 = load i8*, i8** %text39, align 8
  %tobool40 = icmp ne i8* %27, null
  br i1 %tobool40, label %if.end.44, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %do.end.38
  %28 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %28, i32 0, i32 2
  %29 = load i8*, i8** %markup, align 8
  %tobool42 = icmp ne i8* %29, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.41, %do.end.38
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call45 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %30)
  store i32 %call45, i32* %type, align 4
  %call46 = call i64 @gimp_text_layer_get_type() #7
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load i32, i32* %type, align 4
  %call47 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call46, %struct._GimpImage* %31, i8* null, i32 0, i32 0, i32 1, i32 1, i32 %32)
  %33 = bitcast %struct._GimpDrawable* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_text_layer_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call48)
  %34 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %34, %struct._GimpTextLayer** %layer, align 8
  %35 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %36 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %35, %struct._GimpText* %36)
  %37 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %call50 = call i32 @gimp_text_layer_render(%struct._GimpTextLayer* %37)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.44
  %38 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %39 = bitcast %struct._GimpTextLayer* %38 to i8*
  call void @g_object_unref(i8* %39)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.44
  %40 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %41 = bitcast %struct._GimpTextLayer* %40 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_layer_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call54)
  %42 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpLayer*
  store %struct._GimpLayer* %42, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.43, %if.else.36, %if.else.9
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %43
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_set_text(%struct._GimpTextLayer* %layer, %struct._GimpText* %text) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_text_layer_set_text, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp12 = icmp eq %struct._GimpText* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %15 = bitcast %struct._GimpText* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_text_get_type() #7
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_text_layer_set_text, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text40 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %27, i32 0, i32 1
  %28 = load %struct._GimpText*, %struct._GimpText** %text40, align 8
  %29 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp41 = icmp eq %struct._GimpText* %28, %29
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  br label %return

if.end.43:                                        ; preds = %do.end.39
  %30 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text44 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %30, i32 0, i32 1
  %31 = load %struct._GimpText*, %struct._GimpText** %text44, align 8
  %tobool45 = icmp ne %struct._GimpText* %31, null
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %if.end.43
  %32 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text47 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %32, i32 0, i32 1
  %33 = load %struct._GimpText*, %struct._GimpText** %text47, align 8
  %34 = bitcast %struct._GimpText* %33 to i8*
  %35 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %36 = bitcast %struct._GimpTextLayer* %35 to i8*
  %call48 = call i32 @g_signal_handlers_disconnect_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextLayer*)* @gimp_text_layer_text_changed to i8*), i8* %36)
  %37 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text49 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %37, i32 0, i32 1
  %38 = load %struct._GimpText*, %struct._GimpText** %text49, align 8
  %39 = bitcast %struct._GimpText* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text50 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %40, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %if.end.43
  %41 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %tobool52 = icmp ne %struct._GimpText* %41, null
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.51
  %42 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %43 = bitcast %struct._GimpText* %42 to i8*
  %call54 = call i8* @g_object_ref(i8* %43)
  %44 = bitcast i8* %call54 to %struct._GimpText*
  %45 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text55 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %45, i32 0, i32 1
  store %struct._GimpText* %44, %struct._GimpText** %text55, align 8
  %46 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %47 = bitcast %struct._GimpText* %46 to i8*
  %48 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %49 = bitcast %struct._GimpTextLayer* %48 to i8*
  %call56 = call i64 @g_signal_connect_object(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextLayer*)* @gimp_text_layer_text_changed to void ()*), i8* %49, i32 2)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.51
  %50 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %51 = bitcast %struct._GimpTextLayer* %50 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %53 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %54 = bitcast %struct._GimpTextLayer* %53 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_viewable_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call59)
  %55 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %55)
  br label %return

return:                                           ; preds = %if.end.57, %if.then.42, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_render(%struct._GimpTextLayer* %layer) #3 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layout = alloca %struct._GimpTextLayout*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %item46 = alloca %struct._GimpItem*, align 8
  %name = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %0, i32 0, i32 1
  %1 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %3 = bitcast %struct._GimpTextLayer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpTextLayer* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %7, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %8)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 36
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %call5 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp8 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %13, %struct._GObject* null, i32 2, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %14, double* %xres, double* %yres)
  %15 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text11 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %15, i32 0, i32 1
  %16 = load %struct._GimpText*, %struct._GimpText** %text11, align 8
  %17 = load double, double* %xres, align 8
  %18 = load double, double* %yres, align 8
  %call12 = call %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText* %16, double %17, double %18, %struct._GError** %error)
  store %struct._GimpTextLayout* %call12, %struct._GimpTextLayout** %layout, align 8
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool13 = icmp ne %struct._GError* %19, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %21, %struct._GObject* null, i32 2, i8* %23)
  %24 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %27)
  %28 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %call18 = call i32 @gimp_text_layout_get_size(%struct._GimpTextLayout* %28, i32* %width, i32* %height)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.16
  %29 = load i32, i32* %width, align 4
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %cmp = icmp ne i32 %29, %call20
  br i1 %cmp, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load i32, i32* %height, align 4
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call21 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %cmp22 = icmp ne i32 %31, %call21
  br i1 %cmp22, label %if.then.23, label %if.end.43

if.then.23:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call24 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %35)
  %call25 = call %struct._TileManager* @tile_manager_new(i32 %33, i32 %34, i32 %call24)
  store %struct._TileManager* %call25, %struct._TileManager** %new_tiles, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %37 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call26 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %38)
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %36, i32 0, i8* null, %struct._TileManager* %37, i32 %call26)
  %39 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %39)
  %40 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %41 = bitcast %struct._GimpTextLayer* %40 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_layer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call27)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpLayer*
  %call29 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %42)
  %tobool30 = icmp ne %struct._GimpLayerMask* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.end.42

if.then.31:                                       ; preds = %if.then.23
  %43 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %44 = bitcast %struct._GimpTextLayer* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_layer_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpLayer*
  %call34 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %45)
  store %struct._GimpLayerMask* %call34, %struct._GimpLayerMask** %mask, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** @gimp_text_layer_render.unused_eek, align 8
  %tobool35 = icmp ne %struct._GimpContext* %46, null
  br i1 %tobool35, label %if.end.39, label %if.then.36

if.then.36:                                       ; preds = %if.then.31
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp37 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %47, i32 0, i32 1
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %call38 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._GimpContext* null)
  store %struct._GimpContext* %call38, %struct._GimpContext** @gimp_text_layer_render.unused_eek, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.31
  %49 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %50 = bitcast %struct._GimpLayerMask* %49 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call40)
  %51 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %52 = load %struct._GimpContext*, %struct._GimpContext** @gimp_text_layer_render.unused_eek, align 8
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  call void @gimp_item_resize(%struct._GimpItem* %51, %struct._GimpContext* %52, i32 %53, i32 %54, i32 0, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %if.then.23
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false, %if.end.16
  %55 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %auto_rename = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %55, i32 0, i32 3
  %56 = load i32, i32* %auto_rename, align 4
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %if.then.45, label %if.end.78

if.then.45:                                       ; preds = %if.end.43
  %57 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %58 = bitcast %struct._GimpTextLayer* %57 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call47)
  %59 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  store %struct._GimpItem* %59, %struct._GimpItem** %item46, align 8
  store i8* null, i8** %name, align 8
  %60 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text49 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %60, i32 0, i32 1
  %61 = load %struct._GimpText*, %struct._GimpText** %text49, align 8
  %text50 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %61, i32 0, i32 1
  %62 = load i8*, i8** %text50, align 8
  %tobool51 = icmp ne i8* %62, null
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.45
  %63 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text53 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %63, i32 0, i32 1
  %64 = load %struct._GimpText*, %struct._GimpText** %text53, align 8
  %text54 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %64, i32 0, i32 1
  %65 = load i8*, i8** %text54, align 8
  %call55 = call noalias i8* @gimp_utf8_strtrim(i8* %65, i32 30)
  store i8* %call55, i8** %name, align 8
  br label %if.end.64

if.else:                                          ; preds = %if.then.45
  %66 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text56 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %66, i32 0, i32 1
  %67 = load %struct._GimpText*, %struct._GimpText** %text56, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %67, i32 0, i32 2
  %68 = load i8*, i8** %markup, align 8
  %tobool57 = icmp ne i8* %68, null
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.else
  %69 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text59 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %69, i32 0, i32 1
  %70 = load %struct._GimpText*, %struct._GimpText** %text59, align 8
  %markup60 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %70, i32 0, i32 2
  %71 = load i8*, i8** %markup60, align 8
  %call61 = call i8* @gimp_markup_extract_text(i8* %71)
  store i8* %call61, i8** %tmp, align 8
  %72 = load i8*, i8** %tmp, align 8
  %call62 = call noalias i8* @gimp_utf8_strtrim(i8* %72, i32 30)
  store i8* %call62, i8** %name, align 8
  %73 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %73)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.52
  %74 = load i8*, i8** %name, align 8
  %tobool65 = icmp ne i8* %74, null
  br i1 %tobool65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %if.end.64
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #5
  %call68 = call noalias i8* @g_strdup(i8* %call67)
  store i8* %call68, i8** %name, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.end.64
  %75 = load %struct._GimpItem*, %struct._GimpItem** %item46, align 8
  %call70 = call i32 @gimp_item_is_attached(%struct._GimpItem* %75)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %if.end.69
  %76 = load %struct._GimpItem*, %struct._GimpItem** %item46, align 8
  %call73 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %76)
  %77 = load %struct._GimpItem*, %struct._GimpItem** %item46, align 8
  %78 = load i8*, i8** %name, align 8
  call void @gimp_item_tree_rename_item(%struct._GimpItemTree* %call73, %struct._GimpItem* %77, i8* %78, i32 0, i8* null)
  %79 = load i8*, i8** %name, align 8
  call void @g_free(i8* %79)
  br label %if.end.77

if.else.74:                                       ; preds = %if.end.69
  %80 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %81 = bitcast %struct._GimpTextLayer* %80 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_object_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call75)
  %82 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpObject*
  %83 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %82, i8* %83)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.43
  %84 = load i32, i32* %width, align 4
  %cmp79 = icmp sgt i32 %84, 0
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.83

land.lhs.true.80:                                 ; preds = %if.end.78
  %85 = load i32, i32* %height, align 4
  %cmp81 = icmp sgt i32 %85, 0
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.80
  %86 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %87 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  call void @gimp_text_layer_render_layout(%struct._GimpTextLayer* %86, %struct._GimpTextLayout* %87)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.80, %if.end.78
  %88 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %89 = bitcast %struct._GimpTextLayout* %88 to i8*
  call void @g_object_unref(i8* %89)
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %91 = bitcast %struct._GimpDrawable* %90 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call84 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %92)
  %93 = load i32, i32* %width, align 4
  %cmp85 = icmp sgt i32 %93, 0
  br i1 %cmp85, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.83
  %94 = load i32, i32* %height, align 4
  %cmp86 = icmp sgt i32 %94, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.83
  %95 = phi i1 [ false, %if.end.83 ], [ %cmp86, %land.rhs ]
  %land.ext = zext i1 %95 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.7, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare void @g_object_unref(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_text_changed(%struct._GimpTextLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text_parasite = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %0, i32 0, i32 2
  %1 = load i8*, i8** %text_parasite, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %3 = bitcast %struct._GimpTextLayer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text_parasite2 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %5, i32 0, i32 2
  %6 = load i8*, i8** %text_parasite2, align 8
  call void @gimp_item_parasite_detach(%struct._GimpItem* %4, i8* %6, i32 0)
  %7 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text_parasite3 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %7, i32 0, i32 2
  store i8* null, i8** %text_parasite3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call4 = call i32 @gimp_text_layer_render(%struct._GimpTextLayer* %8)
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %layer) #3 {
entry:
  %retval = alloca %struct._GimpText*, align 8
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_text_layer_get_text, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %13, i32 0, i32 1
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  store %struct._GimpText* %14, %struct._GimpText** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpText*, %struct._GimpText** %retval
  ret %struct._GimpText* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_set(%struct._GimpTextLayer* %layer, i8* %undo_desc, i8* %first_property_name, ...) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %first_property_name.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca %struct._GimpText*, align 8
  %var_args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i8* %first_property_name, i8** %first_property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_text_layer_set, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %4 = bitcast %struct._GimpTextLayer* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_is_attached(%struct._GimpItem* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.3
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_text_layer_set, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %6 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call12 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %6)
  store %struct._GimpText* %call12, %struct._GimpText** %text, align 8
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool13 = icmp ne %struct._GimpText* %7, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end.11
  br label %return

if.end.15:                                        ; preds = %do.end.11
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpTextLayer* %8 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call16)
  %10 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  store %struct._GimpImage* %call18, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load i8*, i8** %undo_desc.addr, align 8
  %call19 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %11, i32 31, i8* %12)
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpTextLayer* %13 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %16, i32 0, i32 4
  %17 = load i32, i32* %modified, align 4
  %tobool21 = icmp ne i32 %17, 0
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.15
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call23 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage* %18, i8* null, %struct._GimpTextLayer* %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpTextLayer* %21 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_drawable_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call24)
  %23 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDrawable*
  %call26 = call %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage* %20, i8* null, %struct._GimpDrawable* %23, i32 1)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.15
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load i8*, i8** %undo_desc.addr, align 8
  %26 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call28 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer(%struct._GimpImage* %24, i8* %25, %struct._GimpTextLayer* %26, %struct._GParamSpec* null)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %var_args, i32 0, i32 0
  %arraydecay29 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay29)
  %27 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %28 = bitcast %struct._GimpText* %27 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %30 = load i8*, i8** %first_property_name.addr, align 8
  %arraydecay31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %var_args, i32 0, i32 0
  call void @g_object_set_valist(%struct._GObject* %29, i8* %30, %struct.__va_list_tag* %arraydecay31)
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %var_args, i32 0, i32 0
  %arraydecay3233 = bitcast %struct.__va_list_tag* %arraydecay32 to i8*
  call void @llvm.va_end(i8* %arraydecay3233)
  %31 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpTextLayer* %31 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* null)
  %33 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %34 = bitcast %struct._GimpTextLayer* %33 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call35 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %36)
  br label %return

return:                                           ; preds = %if.end.27, %if.then.14, %if.else.9, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_text_layer(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %if.end.6
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_text_layer_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpTextLayer*
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %15, i32 0, i32 1
  %16 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool11 = icmp ne %struct._GimpText* %16, null
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_text_layer_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpTextLayer*
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %19, i32 0, i32 4
  %20 = load i32, i32* %modified, align 4
  %cmp14 = icmp eq i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.8, %if.end.6
  %21 = phi i1 [ false, %land.lhs.true.8 ], [ false, %if.end.6 ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage*, i8*, %struct._GimpTextLayer*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage*, i8*, %struct._GimpDrawable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._GimpUndo* @gimp_image_undo_push_text_layer(%struct._GimpImage*, i8*, %struct._GimpTextLayer*, %struct._GParamSpec*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_object_set_valist(%struct._GObject*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_discard(%struct._GimpTextLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_layer_discard, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpTextLayer* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_layer_discard, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %16, i32 0, i32 1
  %17 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool20 = icmp ne %struct._GimpText* %17, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.19
  br label %return

if.end.22:                                        ; preds = %do.end.19
  %18 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpTextLayer* %18 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call23)
  %20 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %20)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #5
  %21 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call27 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer(%struct._GimpImage* %call25, i8* %call26, %struct._GimpTextLayer* %21, %struct._GParamSpec* null)
  %22 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %22, %struct._GimpText* null)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_class_init(%struct._GimpTextLayerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextLayerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  store %struct._GimpTextLayerClass* %klass, %struct._GimpTextLayerClass** %klass.addr, align 8
  %0 = load %struct._GimpTextLayerClass*, %struct._GimpTextLayerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextLayerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTextLayerClass*, %struct._GimpTextLayerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTextLayerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpTextLayerClass*, %struct._GimpTextLayerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTextLayerClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpTextLayerClass*, %struct._GimpTextLayerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpTextLayerClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpTextLayerClass*, %struct._GimpTextLayerClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpTextLayerClass* %12 to %struct._GTypeClass*
  %call7 = call i64 @gimp_drawable_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call7)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %14, %struct._GimpDrawableClass** %drawable_class, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_layer_finalize, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_layer_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_layer_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %18 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_text_layer_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %19 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8** %default_stock_id, align 8
  %20 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %20, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_text_layer_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %21 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %21, i32 0, i32 11
  store i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)* @gimp_text_layer_rename, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #5
  %22 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 21
  store i8* %call9, i8** %default_name, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #5
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 22
  store i8* %call10, i8** %rename_desc, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #5
  %24 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %24, i32 0, i32 23
  store i8* %call11, i8** %translate_desc, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %25 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 24
  store i8* %call12, i8** %scale_desc, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  %26 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %26, i32 0, i32 25
  store i8* %call13, i8** %resize_desc, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #5
  %27 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 26
  store i8* %call14, i8** %flip_desc, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0)) #5
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 27
  store i8* %call15, i8** %rotate_desc, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)) #5
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 28
  store i8* %call16, i8** %transform_desc, align 8
  %30 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %30, i32 0, i32 11
  store void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)* @gimp_text_layer_set_tiles, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %31 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %push_undo = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %31, i32 0, i32 12
  store void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)* @gimp_text_layer_push_undo, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)** %push_undo, align 8
  %32 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call i64 @gimp_text_get_type() #7
  %call18 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call17, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %32, i32 1, %struct._GParamSpec* %call18)
  %33 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %33, i32 2, %struct._GParamSpec* %call19)
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 3, %struct._GParamSpec* %call20)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %layer, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %3, i32 0, i32 1
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text2 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %text2, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text3 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %8, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_text_layer_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %text_layer, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %auto_rename = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %9, i32 0, i32 3
  %10 = load i32, i32* %auto_rename, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %12, i32 0, i32 4
  %13 = load i32, i32* %modified, align 4
  call void @g_value_set_boolean(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %17, i8* %19, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %text_layer, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpText*
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %4, %struct._GimpText* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %auto_rename = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %8, i32 0, i32 3
  store i32 %call4, i32* %auto_rename, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %9)
  %10 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %10, i32 0, i32 4
  store i32 %call6, i32* %modified, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_text_layer_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %text_layer, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %3, i32 0, i32 1
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %5 = bitcast %struct._GimpText* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_text_layer_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add8 = add nsw i64 %9, %call7
  ret i64 %add8
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_text_layer_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  %new_layer = alloca %struct._GimpTextLayer*, align 8
  %text30 = alloca %struct._GimpText*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_layer_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_text_layer_parent_class, align 8
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
  %call5 = call i64 @gimp_text_layer_get_type() #7
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
  br i1 %tobool16, label %if.then.17, label %if.end.41

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_text_layer_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %22, %struct._GimpTextLayer** %layer, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_text_layer_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %25, %struct._GimpTextLayer** %new_layer, align 8
  %26 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %27 = bitcast %struct._GimpTextLayer* %26 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %29 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %new_layer, align 8
  %30 = bitcast %struct._GimpTextLayer* %29 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %call26 = call i32 @gimp_config_sync(%struct._GObject* %28, %struct._GObject* %31, i32 0)
  %32 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %32, i32 0, i32 1
  %33 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool27 = icmp ne %struct._GimpText* %33, null
  br i1 %tobool27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.then.17
  %34 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text31 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %34, i32 0, i32 1
  %35 = load %struct._GimpText*, %struct._GimpText** %text31, align 8
  %36 = bitcast %struct._GimpText* %35 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_config_interface_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call32)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpConfig*
  %call34 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %37)
  %38 = bitcast i8* %call34 to %struct._GimpText*
  store %struct._GimpText* %38, %struct._GimpText** %text30, align 8
  %39 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %new_layer, align 8
  %40 = load %struct._GimpText*, %struct._GimpText** %text30, align 8
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %39, %struct._GimpText* %40)
  %41 = load %struct._GimpText*, %struct._GimpText** %text30, align 8
  %42 = bitcast %struct._GimpText* %41 to i8*
  call void @g_object_unref(i8* %42)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.then.17
  %43 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text_parasite = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %43, i32 0, i32 2
  %44 = load i8*, i8** %text_parasite, align 8
  %tobool36 = icmp ne i8* %44, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.35
  %45 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text_parasite38 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %45, i32 0, i32 2
  %46 = load i8*, i8** %text_parasite38, align 8
  %47 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %new_layer, align 8
  %text_parasite39 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %47, i32 0, i32 2
  store i8* %46, i8** %text_parasite39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.15
  %48 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %48, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.else
  %49 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %49
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_rename(%struct._GimpItem* %item, i8* %new_name, i8* %undo_desc, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** @gimp_text_layer_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 11
  %3 = load i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load i8*, i8** %new_name.addr, align 8
  %6 = load i8*, i8** %undo_desc.addr, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 %3(%struct._GimpItem* %4, i8* %5, i8* %6, %struct._GError** %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_set_tiles(%struct._GimpDrawable* %drawable, i32 %push_undo, i8* %undo_desc, %struct._TileManager* %tiles, i32 %type, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %layer, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %4 = bitcast %struct._GimpTextLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %7, i32 0, i32 4
  %8 = load i32, i32* %modified, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load i8*, i8** %undo_desc.addr, align 8
  %call6 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %9, i32 15, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i8*, i8** @gimp_text_layer_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call7 = call i64 @gimp_drawable_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call7)
  %13 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDrawableClass*
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %13, i32 0, i32 11
  %14 = load void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %push_undo.addr, align 4
  %17 = load i8*, i8** %undo_desc.addr, align 8
  %18 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %19 = load i32, i32* %type.addr, align 4
  %20 = load i32, i32* %offset_x.addr, align 4
  %21 = load i32, i32* %offset_y.addr, align 4
  call void %14(%struct._GimpDrawable* %15, i32 %16, i8* %17, %struct._TileManager* %18, i32 %19, i32 %20, i32 %21)
  %22 = load i32, i32* %push_undo.addr, align 4
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end
  %23 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified11 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %23, i32 0, i32 4
  %24 = load i32, i32* %modified11, align 4
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.10
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %call14 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage* %25, i8* null, %struct._GimpTextLayer* %26)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* null)
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %29)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_push_undo(%struct._GimpDrawable* %drawable, i8* %undo_desc, %struct._TileManager* %tiles, i32 %sparse, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %layer, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %4 = bitcast %struct._GimpTextLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %6, i32 0, i32 4
  %7 = load i32, i32* %modified, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load i8*, i8** %undo_desc.addr, align 8
  %call5 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %8, i32 14, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_text_layer_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call i64 @gimp_drawable_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call6)
  %12 = bitcast %struct._GTypeClass* %call7 to %struct._GimpDrawableClass*
  %push_undo = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %12, i32 0, i32 12
  %13 = load void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)** %push_undo, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i8*, i8** %undo_desc.addr, align 8
  %16 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %17 = load i32, i32* %sparse.addr, align 4
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* %width.addr, align 4
  %21 = load i32, i32* %height.addr, align 4
  call void %13(%struct._GimpDrawable* %14, i8* %15, %struct._TileManager* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %22 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified8 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %22, i32 0, i32 4
  %23 = load i32, i32* %modified8, align 4
  %tobool9 = icmp ne i32 %23, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %call11 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage* %24, i8* null, %struct._GimpTextLayer* %25)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* null)
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gimp_item_parasite_detach(%struct._GimpItem*, i8*, i32) #1

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText*, double, double, %struct._GError**) #1

declare void @g_error_free(%struct._GError*) #1

declare i32 @gimp_text_layout_get_size(%struct._GimpTextLayout*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

declare noalias i8* @gimp_utf8_strtrim(i8*, i32) #1

declare i8* @gimp_markup_extract_text(i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_item_tree_rename_item(%struct._GimpItemTree*, %struct._GimpItem*, i8*, i32, i8*) #1

declare %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layer_render_layout(%struct._GimpTextLayer* %layer, %struct._GimpTextLayout* %layout) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %cr = alloca %struct._cairo*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %layerPR = alloca %struct._PixelRegion, align 8
  %data = alloca i8*, align 8
  %layer_type = alloca i32, align 4
  %layer_alpha_byte = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %status = alloca i32, align 4
  %image11 = alloca %struct._GimpImage*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %rows = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %w = alloca i32, align 4
  %color = alloca [4 x i8], align 1
  %tb = alloca i32, align 4
  %tg = alloca i32, align 4
  %tr = alloca i32, align 4
  %ta = alloca i32, align 4
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %4 = bitcast %struct._GimpTextLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %5, %struct._GimpItem** %item, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %6)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call5 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_layer_render_layout, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_width(%struct._GimpItem* %8)
  store i32 %call6, i32* %width, align 4
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_height(%struct._GimpItem* %9)
  store i32 %call7, i32* %height, align 4
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  %call8 = call %struct._cairo_surface* @cairo_image_surface_create(i32 0, i32 %10, i32 %11)
  store %struct._cairo_surface* %call8, %struct._cairo_surface** %surface, align 8
  %12 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call9 = call i32 @cairo_surface_status(%struct._cairo_surface* %12)
  store i32 %call9, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %13, 0
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %do.end
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image11, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image11, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.30, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* null, i32 2, i8* %call13)
  %17 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %17)
  br label %return

if.end.14:                                        ; preds = %do.end
  %18 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call15 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %18)
  store %struct._cairo* %call15, %struct._cairo** %cr, align 8
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %21 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %21, i32 0, i32 1
  %22 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %base_dir = getelementptr inbounds %struct._GimpText, %struct._GimpText* %22, i32 0, i32 10
  %23 = load i32, i32* %base_dir, align 4
  call void @gimp_text_layout_render(%struct._GimpTextLayout* %19, %struct._cairo* %20, i32 %23, i32 0)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call16 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %25)
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %layerPR, %struct._TileManager* %call16, i32 0, i32 0, i32 %26, i32 %27, i32 1)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %28)
  store i32 %call17, i32* %layer_type, align 4
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 10
  %29 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %29, 1
  store i32 %sub, i32* %layer_alpha_byte, align 4
  %30 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %30)
  %31 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call18 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %31)
  store i8* %call18, i8** %data, align 8
  %32 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call19 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %32)
  store i32 %call19, i32* %rowstride, align 4
  %call20 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %layerPR)
  %33 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %33, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %34 = load i8*, i8** %pr, align 8
  %cmp21 = icmp ne i8* %34, null
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i8*, i8** %data, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 7
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %36, %37
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 6
  %38 = load i32, i32* %x, align 4
  %mul22 = mul nsw i32 %38, 4
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext23
  store i8* %add.ptr24, i8** %src, align 8
  %data25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 0
  %39 = load i8*, i8** %data25, align 8
  store i8* %39, i8** %dest, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 9
  %40 = load i32, i32* %h, align 4
  store i32 %40, i32* %rows, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.body
  %41 = load i32, i32* %rows, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %rows, align 4
  %tobool26 = icmp ne i32 %41, 0
  br i1 %tobool26, label %while.body, label %while.end.65

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %src, align 8
  store i8* %42, i8** %s, align 8
  %43 = load i8*, i8** %dest, align 8
  store i8* %43, i8** %d, align 8
  %w27 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 8
  %44 = load i32, i32* %w27, align 4
  store i32 %44, i32* %w, align 4
  br label %while.cond.28

while.cond.28:                                    ; preds = %do.end.53, %while.body
  %45 = load i32, i32* %w, align 4
  %dec29 = add nsw i32 %45, -1
  store i32 %dec29, i32* %w, align 4
  %tobool30 = icmp ne i32 %45, 0
  br i1 %tobool30, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.28
  br label %do.body.32

do.body.32:                                       ; preds = %while.body.31
  %46 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %47 to i32
  store i32 %conv, i32* %tb, align 4
  %48 = load i8*, i8** %s, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %49 to i32
  store i32 %conv34, i32* %tg, align 4
  %50 = load i8*, i8** %s, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %51 to i32
  store i32 %conv36, i32* %tr, align 4
  %52 = load i8*, i8** %s, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %52, i64 3
  %53 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %53 to i32
  store i32 %conv38, i32* %ta, align 4
  %54 = load i32, i32* %tr, align 4
  %shl = shl i32 %54, 8
  %55 = load i32, i32* %ta, align 4
  %add = add i32 %55, 1
  %div = udiv i32 %shl, %add
  %conv39 = trunc i32 %div to i8
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  store i8 %conv39, i8* %arrayidx40, align 1
  %56 = load i32, i32* %tg, align 4
  %shl41 = shl i32 %56, 8
  %57 = load i32, i32* %ta, align 4
  %add42 = add i32 %57, 1
  %div43 = udiv i32 %shl41, %add42
  %conv44 = trunc i32 %div43 to i8
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  store i8 %conv44, i8* %arrayidx45, align 1
  %58 = load i32, i32* %tb, align 4
  %shl46 = shl i32 %58, 8
  %59 = load i32, i32* %ta, align 4
  %add47 = add i32 %59, 1
  %div48 = udiv i32 %shl46, %add47
  %conv49 = trunc i32 %div48 to i8
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  store i8 %conv49, i8* %arrayidx50, align 1
  %60 = load i32, i32* %ta, align 4
  %conv51 = trunc i32 %60 to i8
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 3
  store i8 %conv51, i8* %arrayidx52, align 1
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.32
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load i32, i32* %layer_type, align 4
  %63 = load i8*, i8** %d, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %61, i32 %62, i8* %63, i32 0, i8* %arraydecay)
  %arrayidx54 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 3
  %64 = load i8, i8* %arrayidx54, align 1
  %65 = load i32, i32* %layer_alpha_byte, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i8*, i8** %d, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %66, i64 %idxprom
  store i8 %64, i8* %arrayidx55, align 1
  %67 = load i8*, i8** %s, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %add.ptr56, i8** %s, align 8
  %bytes57 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 10
  %68 = load i32, i32* %bytes57, align 4
  %69 = load i8*, i8** %d, align 8
  %idx.ext58 = sext i32 %68 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %69, i64 %idx.ext58
  store i8* %add.ptr59, i8** %d, align 8
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  %70 = load i32, i32* %rowstride, align 4
  %71 = load i8*, i8** %src, align 8
  %idx.ext60 = sext i32 %70 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %71, i64 %idx.ext60
  store i8* %add.ptr61, i8** %src, align 8
  %rowstride62 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %layerPR, i32 0, i32 5
  %72 = load i32, i32* %rowstride62, align 4
  %73 = load i8*, i8** %dest, align 8
  %idx.ext63 = sext i32 %72 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %73, i64 %idx.ext63
  store i8* %add.ptr64, i8** %dest, align 8
  br label %while.cond

while.end.65:                                     ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end.65
  %74 = load i8*, i8** %pr, align 8
  %75 = bitcast i8* %74 to %struct._PixelRegionIterator*
  %call66 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %75)
  %76 = bitcast %struct._PixelRegionIterator* %call66 to i8*
  store i8* %76, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %77)
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %78, i32 0, i32 0, i32 %79, i32 %80)
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.else
  ret void
}

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i32 @cairo_surface_status(%struct._cairo_surface*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @gimp_text_layout_render(%struct._GimpTextLayout*, %struct._cairo*, i32, i32) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
