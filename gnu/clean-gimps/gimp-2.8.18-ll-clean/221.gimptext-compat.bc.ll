; ModuleID = './app/text/gimptext-compat.bc'
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
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._PangoFontDescription = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._PangoContext = type opaque
%struct._PangoLayout = type opaque
%struct._PangoFontMap = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._PangoLayoutIter = type opaque
%struct._PangoLayoutLine = type { %struct._PangoLayout*, i32, i32, %struct._GSList*, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._PangoCairoFontMap = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.text_render = private unnamed_addr constant [12 x i8] c"text_render\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"drawable == NULL || gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"fontname != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Add Text Layer\00", align 1
@__func__.text_get_extents = private unnamed_addr constant [17 x i8] c"text_get_extents\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"You are using a Pango that has been built against a cairo that lacks the Freetype font backend\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @text_render(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %text_x, i32 %text_y, i8* %fontname, i8* %text, i32 %border, i32 %antialias) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %text_x.addr = alloca i32, align 4
  %text_y.addr = alloca i32, align 4
  %fontname.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %border.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %desc = alloca %struct._PangoFontDescription*, align 8
  %gtext = alloca %struct._GimpText*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %font = alloca i8*, align 8
  %size = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst53 = alloca %struct._GTypeInstance*, align 8
  %__t55 = alloca i64, align 8
  %__r58 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %text_x, i32* %text_x.addr, align 4
  store i32 %text_y, i32* %text_y.addr, align 4
  store i8* %fontname, i8** %fontname.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %border, i32* %border.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp12 = icmp eq %struct._GimpDrawable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_drawable_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp41 = icmp eq %struct._GimpDrawable* %27, null
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call43)
  %30 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call i32 @gimp_item_is_attached(%struct._GimpItem* %30)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = bitcast %struct._GimpContext* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst53, align 8
  %call56 = call i64 @gimp_context_get_type() #6
  store i64 %call56, i64* %__t55, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %tobool59 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool59, label %if.else.61, label %if.then.60

if.then.60:                                       ; preds = %do.body.51
  store i32 0, i32* %__r58, align 4
  br label %if.end.72

if.else.61:                                       ; preds = %do.body.51
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %tobool63 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.else.69

land.lhs.true.64:                                 ; preds = %if.else.61
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %g_type66 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type66, align 8
  %39 = load i64, i64* %__t55, align 8
  %cmp67 = icmp eq i64 %38, %39
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %__r58, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %land.lhs.true.64, %if.else.61
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %41 = load i64, i64* %__t55, align 8
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #7
  store i32 %call70, i32* %__r58, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.60
  %42 = load i32, i32* %__r58, align 4
  store i32 %42, i32* %tmp73
  %43 = load i32, i32* %tmp73
  %tobool74 = icmp ne i32 %43, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.end.72
  br label %if.end.77

if.else.76:                                       ; preds = %if.end.72
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.77:                                        ; preds = %if.then.75
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %44 = load i8*, i8** %fontname.addr, align 8
  %cmp80 = icmp ne i8* %44, null
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.79
  br label %if.end.83

if.else.82:                                       ; preds = %do.body.79
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.83:                                        ; preds = %if.then.81
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %45 = load i8*, i8** %text.addr, align 8
  %cmp86 = icmp ne i8* %45, null
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.85
  br label %if.end.89

if.else.88:                                       ; preds = %do.body.85
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.text_render, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.89:                                        ; preds = %if.then.87
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %46 = load i32, i32* %border.addr, align 4
  %cmp91 = icmp slt i32 %46, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.90
  store i32 0, i32* %border.addr, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %do.end.90
  %47 = load i8*, i8** %fontname.addr, align 8
  %call94 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %47)
  store %struct._PangoFontDescription* %call94, %struct._PangoFontDescription** %desc, align 8
  %48 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  %call95 = call i32 @pango_font_description_get_size(%struct._PangoFontDescription* %48) #7
  %add = add nsw i32 %call95, 512
  %shr = ashr i32 %add, 10
  %conv = sitofp i32 %shr to double
  store double %conv, double* %size, align 8
  %49 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_unset_fields(%struct._PangoFontDescription* %49, i32 32)
  %50 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  %call96 = call i8* @pango_font_description_to_string(%struct._PangoFontDescription* %50)
  store i8* %call96, i8** %font, align 8
  %51 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %51)
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %52, %struct._GimpRGB* %color)
  %call97 = call i64 @gimp_text_get_type() #6
  %53 = load i8*, i8** %text.addr, align 8
  %54 = load i8*, i8** %font, align 8
  %55 = load double, double* %size, align 8
  %56 = load i32, i32* %antialias.addr, align 4
  %57 = load i32, i32* %border.addr, align 4
  %call98 = call i8* (i64, i8*, ...) @g_object_new(i64 %call97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), double %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  %58 = bitcast i8* %call98 to %struct._GimpText*
  store %struct._GimpText* %58, %struct._GimpText** %gtext, align 8
  %59 = load i8*, i8** %font, align 8
  call void @g_free(i8* %59)
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %61 = load %struct._GimpText*, %struct._GimpText** %gtext, align 8
  %call99 = call %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage* %60, %struct._GimpText* %61)
  store %struct._GimpLayer* %call99, %struct._GimpLayer** %layer, align 8
  %62 = load %struct._GimpText*, %struct._GimpText** %gtext, align 8
  %63 = bitcast %struct._GimpText* %62 to i8*
  call void @g_object_unref(i8* %63)
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool100 = icmp ne %struct._GimpLayer* %64, null
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.end.93
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.102:                                       ; preds = %if.end.93
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #5
  %call104 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %65, i32 31, i8* %call103)
  %66 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %67 = bitcast %struct._GimpLayer* %66 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_item_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call105)
  %68 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpItem*
  %69 = load i32, i32* %text_x.addr, align 4
  %70 = load i32, i32* %text_y.addr, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %68, i32 %69, i32 %70)
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call107 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %71)
  %call108 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call107)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end.112, label %if.then.110

if.then.110:                                      ; preds = %if.end.102
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call111 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %72)
  call void @gimp_channel_clear(%struct._GimpChannel* %call111, i8* null, i32 1)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.102
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp113 = icmp eq %struct._GimpDrawable* %73, null
  br i1 %cmp113, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %if.end.112
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %75 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call116 = call i32 @gimp_image_add_layer(%struct._GimpImage* %74, %struct._GimpLayer* %75, %struct._GimpLayer* null, i32 -1, i32 1)
  br label %if.end.118

if.else.117:                                      ; preds = %if.end.112
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %76, %struct._GimpDrawable* %77)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.115
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call119 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %78)
  %79 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %79, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.118, %if.then.101, %if.else.88, %if.else.82, %if.else.76, %if.else.48, %if.else.37, %if.else.9
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %80
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @pango_font_description_get_size(%struct._PangoFontDescription*) #2

declare void @pango_font_description_unset_fields(%struct._PangoFontDescription*, i32) #3

declare i8* @pango_font_description_to_string(%struct._PangoFontDescription*) #3

declare void @pango_font_description_free(%struct._PangoFontDescription*) #3

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #1

declare void @g_free(i8*) #3

declare %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage*, %struct._GimpText*) #3

declare void @g_object_unref(i8*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define i32 @text_get_extents(i8* %fontname, i8* %text, i32* %width, i32* %height, i32* %ascent, i32* %descent) #0 {
entry:
  %retval = alloca i32, align 4
  %fontname.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %ascent.addr = alloca i32*, align 8
  %descent.addr = alloca i32*, align 8
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %fontmap = alloca %struct._PangoFontMap*, align 8
  %rect = alloca %struct._PangoRectangle, align 4
  %iter = alloca %struct._PangoLayoutIter*, align 8
  %line = alloca %struct._PangoLayoutLine*, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %ascent, i32** %ascent.addr, align 8
  store i32* %descent, i32** %descent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %fontname.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.text_get_extents, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %text.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.text_get_extents, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32 1)
  store %struct._PangoFontMap* %call, %struct._PangoFontMap** %fontmap, align 8
  %2 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %tobool = icmp ne %struct._PangoFontMap* %2, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end.6
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end.6
  %3 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %4 = bitcast %struct._PangoFontMap* %3 to %struct._GTypeInstance*
  %call9 = call i64 @pango_cairo_font_map_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call9)
  %5 = bitcast %struct._GTypeInstance* %call10 to %struct._PangoCairoFontMap*
  call void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap* %5, double 7.200000e+01)
  %6 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %call11 = call %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap* %6)
  store %struct._PangoContext* %call11, %struct._PangoContext** %context, align 8
  %7 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %8 = bitcast %struct._PangoFontMap* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call12 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %9)
  store %struct._PangoLayout* %call12, %struct._PangoLayout** %layout, align 8
  %10 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %11 = bitcast %struct._PangoContext* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load i8*, i8** %fontname.addr, align 8
  %call13 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %12)
  store %struct._PangoFontDescription* %call13, %struct._PangoFontDescription** %font_desc, align 8
  %13 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %14 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_layout_set_font_description(%struct._PangoLayout* %13, %struct._PangoFontDescription* %14)
  %15 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %15)
  %16 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %17 = load i8*, i8** %text.addr, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %16, i8* %17, i32 -1)
  %18 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %18, %struct._PangoRectangle* null, %struct._PangoRectangle* %rect)
  %19 = load i32*, i32** %width.addr, align 8
  %tobool14 = icmp ne i32* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.8
  %width16 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  %20 = load i32, i32* %width16, align 4
  %21 = load i32*, i32** %width.addr, align 8
  store i32 %20, i32* %21, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.8
  %22 = load i32*, i32** %height.addr, align 8
  %tobool18 = icmp ne i32* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %height20 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  %23 = load i32, i32* %height20, align 4
  %24 = load i32*, i32** %height.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %25 = load i32*, i32** %ascent.addr, align 8
  %tobool22 = icmp ne i32* %25, null
  br i1 %tobool22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %26 = load i32*, i32** %descent.addr, align 8
  %tobool23 = icmp ne i32* %26, null
  br i1 %tobool23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.21
  %27 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %call25 = call %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout* %27)
  store %struct._PangoLayoutIter* %call25, %struct._PangoLayoutIter** %iter, align 8
  %28 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  %call26 = call %struct._PangoLayoutLine* @pango_layout_iter_get_line_readonly(%struct._PangoLayoutIter* %28)
  store %struct._PangoLayoutLine* %call26, %struct._PangoLayoutLine** %line, align 8
  %29 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  call void @pango_layout_iter_free(%struct._PangoLayoutIter* %29)
  %30 = load %struct._PangoLayoutLine*, %struct._PangoLayoutLine** %line, align 8
  call void @pango_layout_line_get_pixel_extents(%struct._PangoLayoutLine* %30, %struct._PangoRectangle* null, %struct._PangoRectangle* %rect)
  %31 = load i32*, i32** %ascent.addr, align 8
  %tobool27 = icmp ne i32* %31, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %32 = load i32, i32* %y, align 4
  %sub = sub nsw i32 0, %32
  %33 = load i32*, i32** %ascent.addr, align 8
  store i32 %sub, i32* %33, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.24
  %34 = load i32*, i32** %descent.addr, align 8
  %tobool30 = icmp ne i32* %34, null
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.29
  %y32 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %35 = load i32, i32* %y32, align 4
  %height33 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  %36 = load i32, i32* %height33, align 4
  %add = add nsw i32 %35, %36
  %sub34 = sub nsw i32 0, %add
  %37 = load i32*, i32** %descent.addr, align 8
  store i32 %sub34, i32* %37, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false
  %38 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %39 = bitcast %struct._PangoLayout* %38 to i8*
  call void @g_object_unref(i8* %39)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.else.4, %if.else
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32) #3

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

declare void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap*, double) #3

; Function Attrs: nounwind readnone
declare i64 @pango_cairo_font_map_get_type() #1

declare %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap*) #3

declare %struct._PangoLayout* @pango_layout_new(%struct._PangoContext*) #3

declare void @pango_layout_set_font_description(%struct._PangoLayout*, %struct._PangoFontDescription*) #3

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #3

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #3

declare %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout*) #3

declare %struct._PangoLayoutLine* @pango_layout_iter_get_line_readonly(%struct._PangoLayoutIter*) #3

declare void @pango_layout_iter_free(%struct._PangoLayoutIter*) #3

declare void @pango_layout_line_get_pixel_extents(%struct._PangoLayoutLine*, %struct._PangoRectangle*, %struct._PangoRectangle*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
