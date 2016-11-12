; ModuleID = './app/actions/context-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpDisplay = type opaque
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }
%struct._GimpColormapEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, i32, %struct._PangoLayout*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpEditorPrivate = type opaque
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPaletteEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GimpPaletteEntry*, float, i32, i32, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpPaletteEntry = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }

@.str = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@paint_modes = internal constant [23 x i32] [i32 0, i32 1, i32 2, i32 22, i32 3, i32 15, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"Paint Mode: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Brush Shape: %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Brush Radius: %2.2f\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"spikes\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Brush Angle: %2.2f\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@__func__.context_get_colormap_editor = private unnamed_addr constant [28 x i8] c"context_get_colormap_editor\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"GIMP_IS_DIALOG_FACTORY (gimp_dialog_factory_get_singleton ())\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gimp-indexed-palette\00", align 1
@__func__.context_get_palette_editor = private unnamed_addr constant [27 x i8] c"context_get_palette_editor\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"gimp-palette-editor\00", align 1

; Function Attrs: nounwind uwtable
define void @context_colors_default_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_default_colors(%struct._GimpContext* %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gimp_context_set_default_colors(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @context_colors_swap_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_swap_colors(%struct._GimpContext* %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_context_swap_colors(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @context_palette_foreground_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 0, i32 1)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @context_select_color(i32 %select_type, %struct._GimpRGB* %color, i32 %use_colormap, i32 %use_palette) #0 {
entry:
  %select_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %use_colormap.addr = alloca i32, align 4
  %use_palette.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %select_type, i32* %select_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %use_colormap, i32* %use_colormap.addr, align 4
  store i32 %use_palette, i32* %use_palette.addr, align 4
  %0 = load i32, i32* %use_colormap.addr, align 4
  %1 = load i32, i32* %use_palette.addr, align 4
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call i32 @context_get_color_index(i32 %0, i32 %1, %struct._GimpRGB* %2)
  store i32 %call, i32* %index, align 4
  %3 = load i32, i32* %use_colormap.addr, align 4
  %4 = load i32, i32* %use_palette.addr, align 4
  %call1 = call i32 @context_max_color_index(i32 %3, i32 %4)
  store i32 %call1, i32* %max, align 4
  %5 = load i32, i32* %select_type.addr, align 4
  %6 = load i32, i32* %index, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %max, align 4
  %conv2 = sitofp i32 %7 to double
  %call3 = call double @action_select_value(i32 %5, double %conv, double 0.000000e+00, double %conv2, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 4.000000e+00, double 0.000000e+00, i32 0)
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %index, align 4
  %8 = load i32, i32* %index, align 4
  %9 = load i32, i32* %use_colormap.addr, align 4
  %10 = load i32, i32* %use_palette.addr, align 4
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call5 = call i32 @context_set_color_index(i32 %8, i32 %9, i32 %10, %struct._GimpRGB* %11)
  ret void
}

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @context_palette_background_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 0, i32 1)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @context_colormap_foreground_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 1, i32 0)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_colormap_background_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 1, i32 0)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_swatch_foreground_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 1, i32 1)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_swatch_background_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  call void @context_select_color(i32 %3, %struct._GimpRGB* %color, i32 1, i32 1)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_foreground_red_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %call1, double* %r2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare double @action_select_value(i32, double, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define void @context_foreground_green_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %call1, double* %g2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_foreground_blue_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %4 = load double, double* %b, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %b2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %call1, double* %b2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_red_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %call1, double* %r2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_green_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %call1, double* %g2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_blue_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  %3 = load i32, i32* %value.addr, align 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %4 = load double, double* %b, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %b2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %call1, double* %b2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_foreground_hue_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %4 = load double, double* %h, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F66C16C16C16C17, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %h2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  store double %call1, double* %h2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @context_foreground_saturation_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %4 = load double, double* %s, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %s2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  store double %call1, double* %s2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_foreground_value_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %4 = load double, double* %v, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %v2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  store double %call1, double* %v2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_hue_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %4 = load double, double* %h, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0x3F66C16C16C16C17, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %h2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  store double %call1, double* %h2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_saturation_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %4 = load double, double* %s, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %s2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  store double %call1, double* %s2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_background_value_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* %color)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color, %struct._GimpHSV* %hsv)
  %3 = load i32, i32* %value.addr, align 4
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %4 = load double, double* %v, align 8
  %call1 = call double @action_select_value(i32 %3, double %4, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, i32 0)
  %v2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  store double %call1, double* %v2, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_opacity_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %2)
  store %struct._GimpToolInfo* %call1, %struct._GimpToolInfo** %tool_info, align 8
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool2 = icmp ne %struct._GimpToolInfo* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 12
  %5 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %6 = bitcast %struct._GimpToolOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_tool_options_get_type() #5
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.10

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.7, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #6
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %value.addr, align 4
  %19 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %19)
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options17 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 12
  %21 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options17, align 8
  %22 = bitcast %struct._GimpToolOptions* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @action_select_property(i32 %18, %struct._GimpDisplay* %call16, %struct._GObject* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), double 0x3F70101010101010, double 1.000000e-02, double 1.000000e-01, double 1.000000e-01, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.15, %if.end.13, %if.end
  ret void
}

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @action_select_property(i32, %struct._GimpDisplay*, %struct._GObject*, i8*, double, double, double, double, i32) #1

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @context_paint_mode_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %paint_mode = alloca i32, align 4
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %value_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.34

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %2)
  store i32 %call1, i32* %paint_mode, align 4
  %3 = load i32, i32* %value.addr, align 4
  %4 = load i32, i32* %paint_mode, align 4
  %call2 = call i32 @context_paint_mode_index(i32 %4)
  %conv = sitofp i32 %call2 to double
  %call3 = call double @action_select_value(i32 %3, double %conv, double 0.000000e+00, double 2.200000e+01, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 0)
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %index, align 4
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [23 x i32], [23 x i32]* @paint_modes, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %5, i32 %7)
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %8)
  store %struct._GimpToolInfo* %call5, %struct._GimpToolInfo** %tool_info, align 8
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool6 = icmp ne %struct._GimpToolInfo* %9, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %10, i32 0, i32 12
  %11 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %12 = bitcast %struct._GimpToolOptions* %11 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %12, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_tool_options_get_type() #5
  store i64 %call7, i64* %__t, align 8
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %13, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %15, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else.15

land.lhs.true.11:                                 ; preds = %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %19 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %18, %19
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true.11, %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %21 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %20, i64 %21) #6
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  %22 = load i32, i32* %__r, align 4
  store i32 %22, i32* %tmp
  %23 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %23, 0
  br i1 %tobool19, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %if.end.18
  %call23 = call i64 @gimp_layer_mode_effects_get_type() #5
  %24 = load i32, i32* %index, align 4
  %call24 = call i32 @gimp_enum_get_value(i64 %call23, i32 %24, i8** null, i8** null, i8** %value_desc, i8** null)
  %25 = load i8*, i8** %data.addr, align 8
  %call25 = call %struct._GimpDisplay* @action_data_get_display(i8* %25)
  store %struct._GimpDisplay* %call25, %struct._GimpDisplay** %display, align 8
  %26 = load i8*, i8** %value_desc, align 8
  %tobool26 = icmp ne i8* %26, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %if.then.20
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool28 = icmp ne %struct._GimpDisplay* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %land.lhs.true.27
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options30 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %29, i32 0, i32 12
  %30 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options30, align 8
  %31 = bitcast %struct._GimpToolOptions* %30 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #7
  %33 = load i8*, i8** %value_desc, align 8
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %28, %struct._GObject* %32, i8* %call32, i8* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.then.20
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.end.33, %if.end.18, %if.end
  ret void
}

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal i32 @context_paint_mode_index(i32 %paint_mode) #0 {
entry:
  %paint_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 22
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [23 x i32], [23 x i32]* @paint_modes, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %paint_mode.addr, align 4
  %cmp2 = icmp ne i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  ret i32 %6
}

declare void @gimp_context_set_paint_mode(%struct._GimpContext*, i32) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare void @action_message(%struct._GimpDisplay*, %struct._GObject*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @context_tool_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 45
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @context_select_object(i32 %select_type, %struct._GimpContext* %context, %struct._GimpContainer* %container) #0 {
entry:
  %select_type.addr = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %current = alloca %struct._GimpObject*, align 8
  store i32 %select_type, i32* %select_type.addr, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %1)
  %call1 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %0, i64 %call)
  store %struct._GimpObject* %call1, %struct._GimpObject** %current, align 8
  %2 = load i32, i32* %select_type.addr, align 4
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %current, align 8
  %call2 = call %struct._GimpObject* @action_select_object(i32 %2, %struct._GimpContainer* %3, %struct._GimpObject* %4)
  store %struct._GimpObject* %call2, %struct._GimpObject** %current, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %current, align 8
  %tobool = icmp ne %struct._GimpObject* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %7)
  %8 = load %struct._GimpObject*, %struct._GimpObject** %current, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %6, i64 %call3, %struct._GimpObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_brush_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 37
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %6)
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

; Function Attrs: nounwind uwtable
define void @context_pattern_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 39
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %6)
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_palette_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 41
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %6)
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_gradient_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 40
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call1 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %6)
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_font_select_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 36
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  call void @context_select_object(i32 %2, %struct._GimpContext* %3, %struct._GimpContainer* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_brush_spacing_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %value.addr, align 4
  %20 = load i8*, i8** %data.addr, align 8
  %call19 = call %struct._GimpDisplay* @action_data_get_display(i8* %20)
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @action_select_property(i32 %19, %struct._GimpDisplay* %call19, %struct._GObject* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double 1.000000e+00, double 5.000000e+00, double 2.000000e+01, double 1.000000e-01, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.18, %land.lhs.true.13, %if.end.11
  ret void
}

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

; Function Attrs: nounwind uwtable
define void @context_brush_shape_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %generated = alloca %struct._GimpBrushGenerated*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %value_desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.35

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %20 = bitcast %struct._GimpBrush* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_brush_generated_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %21, %struct._GimpBrushGenerated** %generated, align 8
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %generated, align 8
  %23 = load i32, i32* %value.addr, align 4
  %call24 = call i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated* %22, i32 %23)
  %call25 = call i64 @gimp_brush_generated_shape_get_type() #5
  %24 = load i32, i32* %value.addr, align 4
  %call26 = call i32 @gimp_enum_get_value(i64 %call25, i32 %24, i8** null, i8** null, i8** %value_desc, i8** null)
  %25 = load i8*, i8** %data.addr, align 8
  %call27 = call %struct._GimpDisplay* @action_data_get_display(i8* %25)
  store %struct._GimpDisplay* %call27, %struct._GimpDisplay** %display, align 8
  %26 = load i8*, i8** %value_desc, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %if.then.18
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool30 = icmp ne %struct._GimpDisplay* %27, null
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %land.lhs.true.29
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %29 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %30 = bitcast %struct._GimpBrush* %29 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #7
  %32 = load i8*, i8** %value_desc, align 8
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %28, %struct._GObject* %31, i8* %call33, i8* %32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true.29, %if.then.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.end.34, %land.lhs.true.13, %if.end.11
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

declare i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

; Function Attrs: nounwind uwtable
define void @context_brush_radius_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %generated = alloca %struct._GimpBrushGenerated*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %radius = alloca double, align 8
  %min_radius = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.40

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.40

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %20 = bitcast %struct._GimpBrush* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_brush_generated_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %21, %struct._GimpBrushGenerated** %generated, align 8
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %generated, align 8
  %call25 = call float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated* %22)
  %conv = fpext float %call25 to double
  store double %conv, double* %radius, align 8
  %23 = load i32, i32* %value.addr, align 4
  switch i32 %23, label %sw.default [
    i32 -4, label %sw.bb
    i32 -5, label %sw.bb
    i32 -10, label %sw.bb
    i32 -11, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.18, %if.then.18, %if.then.18, %if.then.18
  store double 1.000000e-01, double* %min_radius, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.18
  store double 1.000000e+00, double* %min_radius, align 8
  %24 = load double, double* %radius, align 8
  %cmp26 = fcmp olt double %24, 1.000000e+00
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.default
  store double 1.000000e+00, double* %radius, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %sw.bb
  %25 = load i32, i32* %value.addr, align 4
  %26 = load double, double* %radius, align 8
  %27 = load double, double* %min_radius, align 8
  %28 = load double, double* %min_radius, align 8
  %call30 = call double @action_select_value(i32 %25, double %26, double %27, double 4.000000e+03, double %28, double 1.000000e-01, double 1.000000e+00, double 1.000000e+01, double 5.000000e-02, i32 0)
  store double %call30, double* %radius, align 8
  %29 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %generated, align 8
  %30 = load double, double* %radius, align 8
  %conv31 = fptrunc double %30 to float
  %call32 = call float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated* %29, float %conv31)
  %31 = load i8*, i8** %data.addr, align 8
  %call33 = call %struct._GimpDisplay* @action_data_get_display(i8* %31)
  store %struct._GimpDisplay* %call33, %struct._GimpDisplay** %display, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool34 = icmp ne %struct._GimpDisplay* %32, null
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %sw.epilog
  %33 = load i8*, i8** %data.addr, align 8
  %call36 = call %struct._GimpDisplay* @action_data_get_display(i8* %33)
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %35 = bitcast %struct._GimpBrush* %34 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #7
  %37 = load double, double* %radius, align 8
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %call36, %struct._GObject* %36, i8* %call38, double %37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %sw.epilog
  br label %if.end.40

if.end.40:                                        ; preds = %if.then, %if.end.39, %land.lhs.true.13, %if.end.11
  ret void
}

declare float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated*, float) #1

; Function Attrs: nounwind uwtable
define void @context_brush_spikes_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %value.addr, align 4
  %20 = load i8*, i8** %data.addr, align 8
  %call19 = call %struct._GimpDisplay* @action_data_get_display(i8* %20)
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @action_select_property(i32 %19, %struct._GimpDisplay* %call19, %struct._GObject* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 4.000000e+00, double 1.000000e-01, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.18, %land.lhs.true.13, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_brush_hardness_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %value.addr, align 4
  %20 = load i8*, i8** %data.addr, align 8
  %call19 = call %struct._GimpDisplay* @action_data_get_display(i8* %20)
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @action_select_property(i32 %19, %struct._GimpDisplay* %call19, %struct._GObject* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), double 1.000000e-03, double 1.000000e-02, double 1.000000e-01, double 1.000000e-01, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.18, %land.lhs.true.13, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_brush_aspect_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %value.addr, align 4
  %20 = load i8*, i8** %data.addr, align 8
  %call19 = call %struct._GimpDisplay* @action_data_get_display(i8* %20)
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @action_select_property(i32 %19, %struct._GimpDisplay* %call19, %struct._GObject* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), double 1.000000e-01, double 1.000000e+00, double 4.000000e+00, double 1.000000e-01, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.18, %land.lhs.true.13, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define void @context_brush_angle_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %generated = alloca %struct._GimpBrushGenerated*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %angle = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.45

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call1, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #5
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
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.45

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_data_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpData*
  %call16 = call i32 @gimp_data_is_writable(%struct._GimpData* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.45

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %20 = bitcast %struct._GimpBrush* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_brush_generated_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %21, %struct._GimpBrushGenerated** %generated, align 8
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %generated, align 8
  %call24 = call float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated* %22)
  %conv = fpext float %call24 to double
  store double %conv, double* %angle, align 8
  %23 = load i32, i32* %value.addr, align 4
  %cmp25 = icmp eq i32 %23, -2
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.18
  store double 0.000000e+00, double* %angle, align 8
  br label %if.end.35

if.else.28:                                       ; preds = %if.then.18
  %24 = load i32, i32* %value.addr, align 4
  %cmp29 = icmp eq i32 %24, -3
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  store double 9.000000e+01, double* %angle, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %if.else.28
  %25 = load i32, i32* %value.addr, align 4
  %26 = load double, double* %angle, align 8
  %call33 = call double @action_select_value(i32 %25, double %26, double 0.000000e+00, double 1.800000e+02, double 0.000000e+00, double 1.000000e-01, double 1.000000e+00, double 1.500000e+01, double 1.000000e-01, i32 1)
  store double %call33, double* %angle, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  %27 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %generated, align 8
  %28 = load double, double* %angle, align 8
  %conv36 = fptrunc double %28 to float
  %call37 = call float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated* %27, float %conv36)
  %29 = load i8*, i8** %data.addr, align 8
  %call38 = call %struct._GimpDisplay* @action_data_get_display(i8* %29)
  store %struct._GimpDisplay* %call38, %struct._GimpDisplay** %display, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool39 = icmp ne %struct._GimpDisplay* %30, null
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.35
  %31 = load i8*, i8** %data.addr, align 8
  %call41 = call %struct._GimpDisplay* @action_data_get_display(i8* %31)
  %32 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %33 = bitcast %struct._GimpBrush* %32 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #7
  %35 = load double, double* %angle, align 8
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %call41, %struct._GObject* %34, i8* %call43, double %35)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.then, %if.end.44, %land.lhs.true.13, %if.end.11
  ret void
}

declare float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated*, float) #1

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GimpObject* @action_select_object(i32, %struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #1

; Function Attrs: nounwind uwtable
define internal i32 @context_get_color_index(i32 %use_colormap, i32 %use_palette, %struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %use_colormap.addr = alloca i32, align 4
  %use_palette.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  %index = alloca i32, align 4
  %editor9 = alloca %struct._GimpPaletteEditor*, align 8
  %index13 = alloca i32, align 4
  store i32 %use_colormap, i32* %use_colormap.addr, align 4
  store i32 %use_palette, i32* %use_palette.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* %use_colormap.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %call = call %struct._GimpColormapEditor* @context_get_colormap_editor()
  store %struct._GimpColormapEditor* %call, %struct._GimpColormapEditor** %editor, align 8
  %1 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %tobool1 = icmp ne %struct._GimpColormapEditor* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call3 = call i32 @gimp_colormap_editor_get_index(%struct._GimpColormapEditor* %2, %struct._GimpRGB* %3)
  store i32 %call3, i32* %index, align 4
  %4 = load i32, i32* %index, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %5 = load i32, i32* %index, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %6 = load i32, i32* %use_palette.addr, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end.6
  %call10 = call %struct._GimpPaletteEditor* @context_get_palette_editor()
  store %struct._GimpPaletteEditor* %call10, %struct._GimpPaletteEditor** %editor9, align 8
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor9, align 8
  %tobool11 = icmp ne %struct._GimpPaletteEditor* %7, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.8
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor9, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call14 = call i32 @gimp_palette_editor_get_index(%struct._GimpPaletteEditor* %8, %struct._GimpRGB* %9)
  store i32 %call14, i32* %index13, align 4
  %10 = load i32, i32* %index13, align 4
  %cmp15 = icmp ne i32 %10, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.12
  %11 = load i32, i32* %index13, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.then.4
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @context_max_color_index(i32 %use_colormap, i32 %use_palette) #0 {
entry:
  %retval = alloca i32, align 4
  %use_colormap.addr = alloca i32, align 4
  %use_palette.addr = alloca i32, align 4
  %editor = alloca %struct._GimpColormapEditor*, align 8
  %index = alloca i32, align 4
  %editor9 = alloca %struct._GimpPaletteEditor*, align 8
  %index13 = alloca i32, align 4
  store i32 %use_colormap, i32* %use_colormap.addr, align 4
  store i32 %use_palette, i32* %use_palette.addr, align 4
  %0 = load i32, i32* %use_colormap.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %call = call %struct._GimpColormapEditor* @context_get_colormap_editor()
  store %struct._GimpColormapEditor* %call, %struct._GimpColormapEditor** %editor, align 8
  %1 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %tobool1 = icmp ne %struct._GimpColormapEditor* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %call3 = call i32 @gimp_colormap_editor_max_index(%struct._GimpColormapEditor* %2)
  store i32 %call3, i32* %index, align 4
  %3 = load i32, i32* %index, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %4 = load i32, i32* %index, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %5 = load i32, i32* %use_palette.addr, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end.6
  %call10 = call %struct._GimpPaletteEditor* @context_get_palette_editor()
  store %struct._GimpPaletteEditor* %call10, %struct._GimpPaletteEditor** %editor9, align 8
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor9, align 8
  %tobool11 = icmp ne %struct._GimpPaletteEditor* %6, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.8
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor9, align 8
  %call14 = call i32 @gimp_palette_editor_max_index(%struct._GimpPaletteEditor* %7)
  store i32 %call14, i32* %index13, align 4
  %8 = load i32, i32* %index13, align 4
  %cmp15 = icmp ne i32 %8, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.12
  %9 = load i32, i32* %index13, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.then.4
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @context_set_color_index(i32 %index, i32 %use_colormap, i32 %use_palette, %struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %use_colormap.addr = alloca i32, align 4
  %use_palette.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  %editor8 = alloca %struct._GimpPaletteEditor*, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %use_colormap, i32* %use_colormap.addr, align 4
  store i32 %use_palette, i32* %use_palette.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* %use_colormap.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call %struct._GimpColormapEditor* @context_get_colormap_editor()
  store %struct._GimpColormapEditor* %call, %struct._GimpColormapEditor** %editor, align 8
  %1 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %tobool1 = icmp ne %struct._GimpColormapEditor* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %3 = load i32, i32* %index.addr, align 4
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call2 = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %2, i32 %3, %struct._GimpRGB* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %use_palette.addr, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end.5
  %call9 = call %struct._GimpPaletteEditor* @context_get_palette_editor()
  store %struct._GimpPaletteEditor* %call9, %struct._GimpPaletteEditor** %editor8, align 8
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor8, align 8
  %tobool10 = icmp ne %struct._GimpPaletteEditor* %6, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %if.then.7
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor8, align 8
  %8 = load i32, i32* %index.addr, align 4
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call12 = call i32 @gimp_palette_editor_set_index(%struct._GimpPaletteEditor* %7, i32 %8, %struct._GimpRGB* %9)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.11, %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.4
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpColormapEditor* @context_get_colormap_editor() #0 {
entry:
  %retval = alloca %struct._GimpColormapEditor*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = bitcast %struct._GimpDialogFactory* %call to %struct._GTypeInstance*
  store %struct._GTypeInstance* %0, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_dialog_factory_get_type() #5
  store i64 %call1, i64* %__t, align 8
  %1 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %7 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %6, %7
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %9 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %8, i64 %9) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %__r, align 4
  store i32 %10, i32* %tmp
  %11 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.context_get_colormap_editor, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpColormapEditor* null, %struct._GimpColormapEditor** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call13 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_bin_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call16)
  %15 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBin*
  %call18 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %15)
  %16 = bitcast %struct._GtkWidget* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_colormap_editor_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %17, %struct._GimpColormapEditor** %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  store %struct._GimpColormapEditor* null, %struct._GimpColormapEditor** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.else.10
  %18 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %retval
  ret %struct._GimpColormapEditor* %18
}

declare i32 @gimp_colormap_editor_get_index(%struct._GimpColormapEditor*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPaletteEditor* @context_get_palette_editor() #0 {
entry:
  %retval = alloca %struct._GimpPaletteEditor*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = bitcast %struct._GimpDialogFactory* %call to %struct._GTypeInstance*
  store %struct._GTypeInstance* %0, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_dialog_factory_get_type() #5
  store i64 %call1, i64* %__t, align 8
  %1 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %7 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %6, %7
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %9 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %8, i64 %9) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %__r, align 4
  store i32 %10, i32* %tmp
  %11 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.context_get_palette_editor, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpPaletteEditor* null, %struct._GimpPaletteEditor** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call13 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_bin_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call16)
  %15 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBin*
  %call18 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %15)
  %16 = bitcast %struct._GtkWidget* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_palette_editor_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %17, %struct._GimpPaletteEditor** %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  store %struct._GimpPaletteEditor* null, %struct._GimpPaletteEditor** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.else.10
  %18 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %retval
  ret %struct._GimpPaletteEditor* %18
}

declare i32 @gimp_palette_editor_get_index(%struct._GimpPaletteEditor*, %struct._GimpRGB*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_colormap_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_editor_get_type() #2

declare i32 @gimp_colormap_editor_max_index(%struct._GimpColormapEditor*) #1

declare i32 @gimp_palette_editor_max_index(%struct._GimpPaletteEditor*) #1

declare i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor*, i32, %struct._GimpRGB*) #1

declare i32 @gimp_palette_editor_set_index(%struct._GimpPaletteEditor*, i32, %struct._GimpRGB*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
